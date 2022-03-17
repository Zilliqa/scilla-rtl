

; gas_remaining: 4001999
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_108" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_109" = type { %ParamDescrString, i32, %"$ParamDescr_108"* }
%Uint128 = type { i128 }
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
@"$TyDescr_ReplicateContr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_ReplicateContr_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_41" to i8*) }
@"$TyDescr_AddrFields_41" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -3, %"$TyDescr_AddrFieldTyp_38"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_66" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_71" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_74" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_79" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_82" = unnamed_addr constant [8 x i8] c"creation"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_110" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_111" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_112" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_108"] [%"$ParamDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_110", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_111", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_112", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_113" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_114" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_115" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventCreate_116" = unnamed_addr constant [3 x %"$ParamDescr_108"] [%"$ParamDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_113", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_114", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_115", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_EventCreate_117" = unnamed_addr constant [11 x i8] c"EventCreate"
@_transition_parameters = constant [1 x %"$TransDescr_109"] [%"$TransDescr_109" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_EventCreate_117", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_108"* getelementptr inbounds ([3 x %"$ParamDescr_108"], [3 x %"$ParamDescr_108"]* @"$tparams_EventCreate_116", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_42" = load i64, i64* @_gasrem, align 8
  %"$gascmp_43" = icmp ugt i64 5, %"$gasrem_42"
  br i1 %"$gascmp_43", label %"$out_of_gas_44", label %"$have_gas_45"

"$out_of_gas_44":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_45"

"$have_gas_45":                                   ; preds = %"$out_of_gas_44", %entry
  %"$consume_46" = sub i64 %"$gasrem_42", 5
  store i64 %"$consume_46", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_47" = load i64, i64* @_gasrem, align 8
  %"$gascmp_48" = icmp ugt i64 1, %"$gasrem_47"
  br i1 %"$gascmp_48", label %"$out_of_gas_49", label %"$have_gas_50"

"$out_of_gas_49":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_50"

"$have_gas_50":                                   ; preds = %"$out_of_gas_49", %entry
  %"$consume_51" = sub i64 %"$gasrem_47", 1
  store i64 %"$consume_51", i64* @_gasrem, align 8
  ret void
}

define internal void @"$EventCreate_52"(%Uint128 %_amount, [20 x i8]* %"$_origin_53", [20 x i8]* %"$_sender_54") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_53", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_54", align 1
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  %"$msgobj_65_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_65_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_65_salloc_load", i64 113)
  %"$msgobj_65_salloc" = bitcast i8* %"$msgobj_65_salloc_salloc" to [113 x i8]*
  %"$msgobj_65" = bitcast [113 x i8]* %"$msgobj_65_salloc" to i8*
  store i8 3, i8* %"$msgobj_65", align 1
  %"$msgobj_fname_67" = getelementptr i8, i8* %"$msgobj_65", i32 1
  %"$msgobj_fname_68" = bitcast i8* %"$msgobj_fname_67" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_66", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_68", align 8
  %"$msgobj_td_69" = getelementptr i8, i8* %"$msgobj_65", i32 17
  %"$msgobj_td_70" = bitcast i8* %"$msgobj_td_69" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_70", align 8
  %"$msgobj_v_72" = getelementptr i8, i8* %"$msgobj_65", i32 25
  %"$msgobj_v_73" = bitcast i8* %"$msgobj_v_72" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_71", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_73", align 8
  %"$msgobj_fname_75" = getelementptr i8, i8* %"$msgobj_65", i32 41
  %"$msgobj_fname_76" = bitcast i8* %"$msgobj_fname_75" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_74", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_76", align 8
  %"$msgobj_td_77" = getelementptr i8, i8* %"$msgobj_65", i32 57
  %"$msgobj_td_78" = bitcast i8* %"$msgobj_td_77" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_78", align 8
  %"$msgobj_v_80" = getelementptr i8, i8* %"$msgobj_65", i32 65
  %"$msgobj_v_81" = bitcast i8* %"$msgobj_v_80" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_79", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_81", align 8
  %"$msgobj_fname_83" = getelementptr i8, i8* %"$msgobj_65", i32 81
  %"$msgobj_fname_84" = bitcast i8* %"$msgobj_fname_83" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_82", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_84", align 8
  %"$msgobj_td_85" = getelementptr i8, i8* %"$msgobj_65", i32 97
  %"$msgobj_td_86" = bitcast i8* %"$msgobj_td_85" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ** %"$msgobj_td_86", align 8
  %"$_creation_block_87" = load i8*, i8** @_cparam__creation_block, align 8
  %"$msgobj_v_88" = getelementptr i8, i8* %"$msgobj_65", i32 105
  %"$msgobj_v_89" = bitcast i8* %"$msgobj_v_88" to i8**
  store i8* %"$_creation_block_87", i8** %"$msgobj_v_89", align 8
  store i8* %"$msgobj_65", i8** %e, align 8
  %"$e_91" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_93" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_91")
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 %"$_literal_cost_call_93", %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_63"
  %"$consume_98" = sub i64 %"$gasrem_94", %"$_literal_cost_call_93"
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$execptr_load_99" = load i8*, i8** @_execptr, align 8
  %"$e_100" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_99", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_100")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) {
entry:
  %"$_amount_102" = getelementptr i8, i8* %0, i32 0
  %"$_amount_103" = bitcast i8* %"$_amount_102" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_103", align 8
  %"$_origin_104" = getelementptr i8, i8* %0, i32 16
  %"$_origin_105" = bitcast i8* %"$_origin_104" to [20 x i8]*
  %"$_sender_106" = getelementptr i8, i8* %0, i32 36
  %"$_sender_107" = bitcast i8* %"$_sender_106" to [20 x i8]*
  call void @"$EventCreate_52"(%Uint128 %_amount, [20 x i8]* %"$_origin_105", [20 x i8]* %"$_sender_107")
  ret void
}
