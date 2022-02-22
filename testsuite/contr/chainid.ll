

; gas_remaining: 4001999
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_37" = type { i32, %"$TyDescr_AddrFieldTyp_36"* }
%"$TyDescr_AddrFieldTyp_36" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_109" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_110" = type { %ParamDescrString, i32, %"$ParamDescr_109"* }
%Uint128 = type { i128 }
%BCQuery = type { i8*, i32 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_Addr_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_37"* @"$TyDescr_AddrFields_39" to i8*) }
@"$TyDescr_AddrFields_39" = unnamed_addr constant %"$TyDescr_AddrTyp_37" { i32 -3, %"$TyDescr_AddrFieldTyp_36"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$fetchbc_query_name_58" = unnamed_addr constant [7 x i8] c"CHAINID"
@"$fetchbc_query_arg_59" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_75" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_80" = unnamed_addr constant [7 x i8] c"ChainID"
@"$stringlit_83" = unnamed_addr constant [8 x i8] c"chain_id"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_111" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_112" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_113" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_109"] [%"$ParamDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_111", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_112", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_113", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_114" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_115" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_116" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventChainID_117" = unnamed_addr constant [3 x %"$ParamDescr_109"] [%"$ParamDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_114", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_115", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_38" }, %"$ParamDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_116", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_38" }]
@"$tname_EventChainID_118" = unnamed_addr constant [12 x i8] c"EventChainID"
@_transition_parameters = constant [1 x %"$TransDescr_110"] [%"$TransDescr_110" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_EventChainID_118", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_109"* getelementptr inbounds ([3 x %"$ParamDescr_109"], [3 x %"$ParamDescr_109"]* @"$tparams_EventChainID_117", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_40" = load i64, i64* @_gasrem, align 8
  %"$gascmp_41" = icmp ugt i64 5, %"$gasrem_40"
  br i1 %"$gascmp_41", label %"$out_of_gas_42", label %"$have_gas_43"

"$out_of_gas_42":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_43"

"$have_gas_43":                                   ; preds = %"$out_of_gas_42", %entry
  %"$consume_44" = sub i64 %"$gasrem_40", 5
  store i64 %"$consume_44", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 1, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %entry
  %"$consume_49" = sub i64 %"$gasrem_45", 1
  store i64 %"$consume_49", i64* @_gasrem, align 8
  ret void
}

define internal void @"$EventChainID_50"(%Uint128 %_amount, [20 x i8]* %"$_origin_51", [20 x i8]* %"$_sender_52") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_51", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_52", align 1
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %cid = alloca %Uint32, align 8
  %"$execptr_load_60" = load i8*, i8** @_execptr, align 8
  %"$cid_call_61" = call i8* @_read_blockchain(i8* %"$execptr_load_60", %BCQuery { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$fetchbc_query_name_58", i32 0, i32 0), i32 7 }, %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$fetchbc_query_arg_59", i32 0, i32 0), i32 0 })
  %"$cid_62" = bitcast i8* %"$cid_call_61" to %Uint32*
  %"$cid_63" = load %Uint32, %Uint32* %"$cid_62", align 4
  store %Uint32 %"$cid_63", %Uint32* %cid, align 4
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_56"
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %"$msgobj_74_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_74_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_74_salloc_load", i64 69)
  %"$msgobj_74_salloc" = bitcast i8* %"$msgobj_74_salloc_salloc" to [69 x i8]*
  %"$msgobj_74" = bitcast [69 x i8]* %"$msgobj_74_salloc" to i8*
  store i8 2, i8* %"$msgobj_74", align 1
  %"$msgobj_fname_76" = getelementptr i8, i8* %"$msgobj_74", i32 1
  %"$msgobj_fname_77" = bitcast i8* %"$msgobj_fname_76" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_75", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_77", align 8
  %"$msgobj_td_78" = getelementptr i8, i8* %"$msgobj_74", i32 17
  %"$msgobj_td_79" = bitcast i8* %"$msgobj_td_78" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_79", align 8
  %"$msgobj_v_81" = getelementptr i8, i8* %"$msgobj_74", i32 25
  %"$msgobj_v_82" = bitcast i8* %"$msgobj_v_81" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_80", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_82", align 8
  %"$msgobj_fname_84" = getelementptr i8, i8* %"$msgobj_74", i32 41
  %"$msgobj_fname_85" = bitcast i8* %"$msgobj_fname_84" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_83", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_85", align 8
  %"$msgobj_td_86" = getelementptr i8, i8* %"$msgobj_74", i32 57
  %"$msgobj_td_87" = bitcast i8* %"$msgobj_td_86" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ** %"$msgobj_td_87", align 8
  %"$cid_88" = load %Uint32, %Uint32* %cid, align 4
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_74", i32 65
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %Uint32*
  store %Uint32 %"$cid_88", %Uint32* %"$msgobj_v_90", align 4
  store i8* %"$msgobj_74", i8** %e, align 8
  %"$e_92" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_94" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_92")
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 %"$_literal_cost_call_94", %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_72"
  %"$consume_99" = sub i64 %"$gasrem_95", %"$_literal_cost_call_94"
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$execptr_load_100" = load i8*, i8** @_execptr, align 8
  %"$e_101" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_100", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_101")
  ret void
}

declare i8* @_read_blockchain(i8*, %BCQuery, %String)

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventChainID(i8* %0) {
entry:
  %"$_amount_103" = getelementptr i8, i8* %0, i32 0
  %"$_amount_104" = bitcast i8* %"$_amount_103" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_104", align 8
  %"$_origin_105" = getelementptr i8, i8* %0, i32 16
  %"$_origin_106" = bitcast i8* %"$_origin_105" to [20 x i8]*
  %"$_sender_107" = getelementptr i8, i8* %0, i32 36
  %"$_sender_108" = bitcast i8* %"$_sender_107" to [20 x i8]*
  call void @"$EventChainID_50"(%Uint128 %_amount, [20 x i8]* %"$_origin_106", [20 x i8]* %"$_sender_108")
  ret void
}
