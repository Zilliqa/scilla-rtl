

; gas_remaining: 4001999
; ModuleID = 'Send'
source_filename = "Send"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_294" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_295" = type { %ParamDescrString, i32, %"$ParamDescr_294"* }
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
@"$stringlit_117" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_122" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_125" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_132" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_187" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_192" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_195" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_202" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_221" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_226" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_229" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_236" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_296" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_297" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_298" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_294"] [%"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_296", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_297", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_298", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_299" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_300" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_301" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg_302" = unnamed_addr constant [3 x %"$ParamDescr_294"] [%"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_299", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_300", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_301", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_SendMsg_303" = unnamed_addr constant [7 x i8] c"SendMsg"
@"$tpname__amount_304" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_305" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_306" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg2_307" = unnamed_addr constant [3 x %"$ParamDescr_294"] [%"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_304", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_305", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_306", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_SendMsg2_308" = unnamed_addr constant [8 x i8] c"SendMsg2"
@_transition_parameters = constant [2 x %"$TransDescr_295"] [%"$TransDescr_295" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_SendMsg_303", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_294"* getelementptr inbounds ([3 x %"$ParamDescr_294"], [3 x %"$ParamDescr_294"]* @"$tparams_SendMsg_302", i32 0, i32 0) }, %"$TransDescr_295" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_SendMsg2_308", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_294"* getelementptr inbounds ([3 x %"$ParamDescr_294"], [3 x %"$ParamDescr_294"]* @"$tparams_SendMsg2_307", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_59"* %0, i8* %1) !dbg !4 {
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
  store %TName_List_Message* %"$adtptr_72", %TName_List_Message** %nil_msg, align 8, !dbg !8
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
  store %TName_List_Message* %"$adtptr_83", %TName_List_Message** %"$retval_4", align 8, !dbg !9
  %"$$retval_4_84" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_84"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !12
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_59"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8, !dbg !13
  ret void
}

define void @_deploy_ops() !dbg !14 {
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

define internal void @"$SendMsg_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_104", [20 x i8]* %"$_sender_105") !dbg !15 {
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
  %msg1 = alloca i8*, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$msgobj_116_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_116_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_116_salloc_load", i64 125)
  %"$msgobj_116_salloc" = bitcast i8* %"$msgobj_116_salloc_salloc" to [125 x i8]*
  %"$msgobj_116" = bitcast [125 x i8]* %"$msgobj_116_salloc" to i8*
  store i8 3, i8* %"$msgobj_116", align 1
  %"$msgobj_fname_118" = getelementptr i8, i8* %"$msgobj_116", i32 1
  %"$msgobj_fname_119" = bitcast i8* %"$msgobj_fname_118" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_117", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_119", align 8
  %"$msgobj_td_120" = getelementptr i8, i8* %"$msgobj_116", i32 17
  %"$msgobj_td_121" = bitcast i8* %"$msgobj_td_120" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_121", align 8
  %"$msgobj_v_123" = getelementptr i8, i8* %"$msgobj_116", i32 25
  %"$msgobj_v_124" = bitcast i8* %"$msgobj_v_123" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_122", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_124", align 8
  %"$msgobj_fname_126" = getelementptr i8, i8* %"$msgobj_116", i32 41
  %"$msgobj_fname_127" = bitcast i8* %"$msgobj_fname_126" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_125", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_127", align 8
  %"$msgobj_td_128" = getelementptr i8, i8* %"$msgobj_116", i32 57
  %"$msgobj_td_129" = bitcast i8* %"$msgobj_td_128" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_129", align 8
  %"$msgobj_v_130" = getelementptr i8, i8* %"$msgobj_116", i32 65
  %"$msgobj_v_131" = bitcast i8* %"$msgobj_v_130" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_131", align 1
  %"$msgobj_fname_133" = getelementptr i8, i8* %"$msgobj_116", i32 85
  %"$msgobj_fname_134" = bitcast i8* %"$msgobj_fname_133" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_132", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_134", align 8
  %"$msgobj_td_135" = getelementptr i8, i8* %"$msgobj_116", i32 101
  %"$msgobj_td_136" = bitcast i8* %"$msgobj_td_135" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_136", align 8
  %"$msgobj_v_137" = getelementptr i8, i8* %"$msgobj_116", i32 109
  %"$msgobj_v_138" = bitcast i8* %"$msgobj_v_137" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_138", align 8
  store i8* %"$msgobj_116", i8** %msg1, align 8, !dbg !16
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_114"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_150" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_151" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_150", 0
  %"$send.one_msg_envptr_152" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_150", 1
  %"$msg1_153" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_154" = call %TName_List_Message* %"$send.one_msg_fptr_151"(i8* %"$send.one_msg_envptr_152", i8* %"$msg1_153"), !dbg !17
  store %TName_List_Message* %"$send.one_msg_call_154", %TName_List_Message** %"$send.one_msg_1", align 8, !dbg !17
  %"$$send.one_msg_1_155" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_155", %TName_List_Message** %msgs1, align 8, !dbg !17
  %"$msgs1_156" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_156_157" = bitcast %TName_List_Message* %"$msgs1_156" to i8*
  %"$_literal_cost_call_158" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs1_156_157")
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 %"$_literal_cost_call_158", %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_148"
  %"$consume_163" = sub i64 %"$gasrem_159", %"$_literal_cost_call_158"
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %"$execptr_load_164" = load i8*, i8** @_execptr, align 8
  %"$msgs1_165" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_164", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs1_165"), !dbg !18
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) !dbg !19 {
entry:
  %"$_amount_167" = getelementptr i8, i8* %0, i32 0
  %"$_amount_168" = bitcast i8* %"$_amount_167" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_168", align 8
  %"$_origin_169" = getelementptr i8, i8* %0, i32 16
  %"$_origin_170" = bitcast i8* %"$_origin_169" to [20 x i8]*
  %"$_sender_171" = getelementptr i8, i8* %0, i32 36
  %"$_sender_172" = bitcast i8* %"$_sender_171" to [20 x i8]*
  call void @"$SendMsg_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_170", [20 x i8]* %"$_sender_172"), !dbg !20
  ret void
}

define internal void @"$SendMsg2_173"(%Uint128 %_amount, [20 x i8]* %"$_origin_174", [20 x i8]* %"$_sender_175") !dbg !21 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_174", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_175", align 1
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$msgobj_186_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_186_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_186_salloc_load", i64 125)
  %"$msgobj_186_salloc" = bitcast i8* %"$msgobj_186_salloc_salloc" to [125 x i8]*
  %"$msgobj_186" = bitcast [125 x i8]* %"$msgobj_186_salloc" to i8*
  store i8 3, i8* %"$msgobj_186", align 1
  %"$msgobj_fname_188" = getelementptr i8, i8* %"$msgobj_186", i32 1
  %"$msgobj_fname_189" = bitcast i8* %"$msgobj_fname_188" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_187", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_189", align 8
  %"$msgobj_td_190" = getelementptr i8, i8* %"$msgobj_186", i32 17
  %"$msgobj_td_191" = bitcast i8* %"$msgobj_td_190" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_191", align 8
  %"$msgobj_v_193" = getelementptr i8, i8* %"$msgobj_186", i32 25
  %"$msgobj_v_194" = bitcast i8* %"$msgobj_v_193" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_192", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_194", align 8
  %"$msgobj_fname_196" = getelementptr i8, i8* %"$msgobj_186", i32 41
  %"$msgobj_fname_197" = bitcast i8* %"$msgobj_fname_196" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_195", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_197", align 8
  %"$msgobj_td_198" = getelementptr i8, i8* %"$msgobj_186", i32 57
  %"$msgobj_td_199" = bitcast i8* %"$msgobj_td_198" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_199", align 8
  %"$msgobj_v_200" = getelementptr i8, i8* %"$msgobj_186", i32 65
  %"$msgobj_v_201" = bitcast i8* %"$msgobj_v_200" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_201", align 1
  %"$msgobj_fname_203" = getelementptr i8, i8* %"$msgobj_186", i32 85
  %"$msgobj_fname_204" = bitcast i8* %"$msgobj_fname_203" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_202", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_204", align 8
  %"$msgobj_td_205" = getelementptr i8, i8* %"$msgobj_186", i32 101
  %"$msgobj_td_206" = bitcast i8* %"$msgobj_td_205" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_206", align 8
  %"$msgobj_v_207" = getelementptr i8, i8* %"$msgobj_186", i32 109
  %"$msgobj_v_208" = bitcast i8* %"$msgobj_v_207" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_208", align 8
  store i8* %"$msgobj_186", i8** %msg1, align 8, !dbg !22
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_184"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
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
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_226", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_228", align 8
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
  store i8* %"$msgobj_220", i8** %msg2, align 8, !dbg !23
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_218"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$send.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_254" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_255" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_254", 0
  %"$send.one_msg_envptr_256" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_254", 1
  %"$msg1_257" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_258" = call %TName_List_Message* %"$send.one_msg_fptr_255"(i8* %"$send.one_msg_envptr_256", i8* %"$msg1_257"), !dbg !24
  store %TName_List_Message* %"$send.one_msg_call_258", %TName_List_Message** %"$send.one_msg_2", align 8, !dbg !24
  %"$$send.one_msg_2_259" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_2", align 8
  store %TName_List_Message* %"$$send.one_msg_2_259", %TName_List_Message** %msgs1, align 8, !dbg !24
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_252"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_263"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %"$msg2_270" = load i8*, i8** %msg2, align 8
  %"$msgs1_271" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_272_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_272_salloc" = call i8* @_salloc(i8* %"$adtval_272_load", i64 17)
  %"$adtval_272" = bitcast i8* %"$adtval_272_salloc" to %CName_Cons_Message*
  %"$adtgep_273" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_272", i32 0, i32 0
  store i8 0, i8* %"$adtgep_273", align 1
  %"$adtgep_274" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_272", i32 0, i32 1
  store i8* %"$msg2_270", i8** %"$adtgep_274", align 8
  %"$adtgep_275" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_272", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_271", %TName_List_Message** %"$adtgep_275", align 8
  %"$adtptr_276" = bitcast %CName_Cons_Message* %"$adtval_272" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_276", %TName_List_Message** %msgs2, align 8, !dbg !25
  %"$msgs2_277" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_277_278" = bitcast %TName_List_Message* %"$msgs2_277" to i8*
  %"$_literal_cost_call_279" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs2_277_278")
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 %"$_literal_cost_call_279", %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_268"
  %"$consume_284" = sub i64 %"$gasrem_280", %"$_literal_cost_call_279"
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$execptr_load_285" = load i8*, i8** @_execptr, align 8
  %"$msgs2_286" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_285", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs2_286"), !dbg !26
  ret void
}

define void @SendMsg2(i8* %0) !dbg !27 {
entry:
  %"$_amount_288" = getelementptr i8, i8* %0, i32 0
  %"$_amount_289" = bitcast i8* %"$_amount_288" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_289", align 8
  %"$_origin_290" = getelementptr i8, i8* %0, i32 16
  %"$_origin_291" = bitcast i8* %"$_origin_290" to [20 x i8]*
  %"$_sender_292" = getelementptr i8, i8* %0, i32 36
  %"$_sender_293" = bitcast i8* %"$_sender_292" to [20 x i8]*
  call void @"$SendMsg2_173"(%Uint128 %_amount, [20 x i8]* %"$_origin_291", [20 x i8]* %"$_sender_293"), !dbg !28
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "send.scilla", directory: "codegen/contr")
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
!14 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 14, column: 10, scope: !15)
!17 = !DILocation(line: 15, column: 11, scope: !15)
!18 = !DILocation(line: 16, column: 3, scope: !15)
!19 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 13, column: 12, scope: !19)
!21 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 20, column: 10, scope: !21)
!23 = !DILocation(line: 21, column: 10, scope: !21)
!24 = !DILocation(line: 22, column: 11, scope: !21)
!25 = !DILocation(line: 23, column: 11, scope: !21)
!26 = !DILocation(line: 24, column: 3, scope: !21)
!27 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 19, column: 12, scope: !27)
