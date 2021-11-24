

; gas_remaining: 4001999
; ModuleID = 'MapMisc'
source_filename = "MapMisc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_MapTyp_37" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_41" = type { i32, %"$TyDescr_AddrFieldTyp_40"* }
%"$TyDescr_AddrFieldTyp_40" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_263" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_264" = type { %ParamDescrString, i32, %"$ParamDescr_263"* }
%Map_BNum_Int32 = type { i8*, %Int32 }
%"Map_Int32_Map_(BNum)_(Int32)" = type { %Int32, %Map_BNum_Int32* }
%Uint128 = type { i128 }
%BNumString = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_4" = global %"$TyDescrTy_PrimTyp_3" zeroinitializer
@"$TyDescr_Int32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int32_Prim_4" to i8*) }
@"$TyDescr_Uint32_Prim_6" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 0 }
@"$TyDescr_Uint32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint32_Prim_6" to i8*) }
@"$TyDescr_Int64_Prim_8" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 1 }
@"$TyDescr_Int64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int64_Prim_8" to i8*) }
@"$TyDescr_Uint64_Prim_10" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 1 }
@"$TyDescr_Uint64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint64_Prim_10" to i8*) }
@"$TyDescr_Int128_Prim_12" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 2 }
@"$TyDescr_Int128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int128_Prim_12" to i8*) }
@"$TyDescr_Uint128_Prim_14" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 2 }
@"$TyDescr_Uint128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint128_Prim_14" to i8*) }
@"$TyDescr_Int256_Prim_16" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 3 }
@"$TyDescr_Int256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int256_Prim_16" to i8*) }
@"$TyDescr_Uint256_Prim_18" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 3 }
@"$TyDescr_Uint256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint256_Prim_18" to i8*) }
@"$TyDescr_String_Prim_20" = global %"$TyDescrTy_PrimTyp_3" { i32 2, i32 0 }
@"$TyDescr_String_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_String_Prim_20" to i8*) }
@"$TyDescr_Bnum_Prim_22" = global %"$TyDescrTy_PrimTyp_3" { i32 3, i32 0 }
@"$TyDescr_Bnum_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bnum_Prim_22" to i8*) }
@"$TyDescr_Message_Prim_24" = global %"$TyDescrTy_PrimTyp_3" { i32 4, i32 0 }
@"$TyDescr_Message_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Message_Prim_24" to i8*) }
@"$TyDescr_Event_Prim_26" = global %"$TyDescrTy_PrimTyp_3" { i32 5, i32 0 }
@"$TyDescr_Event_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Event_Prim_26" to i8*) }
@"$TyDescr_Exception_Prim_28" = global %"$TyDescrTy_PrimTyp_3" { i32 6, i32 0 }
@"$TyDescr_Exception_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Exception_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_3" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_3" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
@"$TyDescr_Map_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_37"* @"$TyDescr_MapTyp_43" to i8*) }
@"$TyDescr_Map_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_37"* @"$TyDescr_MapTyp_44" to i8*) }
@"$TyDescr_Addr_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_41"* @"$TyDescr_AddrFields_45" to i8*) }
@"$TyDescr_MapTyp_43" = unnamed_addr constant %"$TyDescr_MapTyp_37" { %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ* @"$TyDescr_Map_39" }
@"$TyDescr_MapTyp_44" = unnamed_addr constant %"$TyDescr_MapTyp_37" { %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_5" }
@"$TyDescr_AddrFields_45" = unnamed_addr constant %"$TyDescr_AddrTyp_41" { i32 -1, %"$TyDescr_AddrFieldTyp_40"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$m1_60" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_72" = unnamed_addr constant [3 x i8] c"m2\00"
@"$BNumLit_88" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_102" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_116" = unnamed_addr constant [1 x i8] c"3"
@"$m1_164" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_182" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_200" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_224" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_253" = unnamed_addr constant [3 x i8] c"m2\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Map_38", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Map_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_265" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_266" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_267" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_263"] [%"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_265", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_266", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_267", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_268" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_269" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_270" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Push_271" = unnamed_addr constant [3 x %"$ParamDescr_263"] [%"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_268", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_269", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_270", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_Push_272" = unnamed_addr constant [4 x i8] c"Push"
@"$tpname__amount_273" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_274" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_275" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_PullPush_276" = unnamed_addr constant [3 x %"$ParamDescr_263"] [%"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_273", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_274", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_263" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_275", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_PullPush_277" = unnamed_addr constant [8 x i8] c"PullPush"
@_transition_parameters = constant [2 x %"$TransDescr_264"] [%"$TransDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_Push_272", i32 0, i32 0), i32 4 }, i32 3, %"$ParamDescr_263"* getelementptr inbounds ([3 x %"$ParamDescr_263"], [3 x %"$ParamDescr_263"]* @"$tparams_Push_271", i32 0, i32 0) }, %"$TransDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_PullPush_277", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_263"* getelementptr inbounds ([3 x %"$ParamDescr_263"], [3 x %"$ParamDescr_263"]* @"$tparams_PullPush_276", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define void @_init_libs() {
entry:
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 5, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %entry
  %"$consume_50" = sub i64 %"$gasrem_46", 5
  store i64 %"$consume_50", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  %"$m1_1" = alloca %Map_BNum_Int32*, align 8
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %entry
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  %"$execptr_load_56" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_57" = call i8* @_new_empty_map(i8* %"$execptr_load_56")
  %"$_new_empty_map_58" = bitcast i8* %"$_new_empty_map_call_57" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_58", %Map_BNum_Int32** %"$m1_1", align 8
  %"$execptr_load_59" = load i8*, i8** @_execptr, align 8
  %"$$m1_1_61" = load %Map_BNum_Int32*, %Map_BNum_Int32** %"$m1_1", align 8
  %"$update_value_62" = bitcast %Map_BNum_Int32* %"$$m1_1_61" to i8*
  call void @_update_field(i8* %"$execptr_load_59", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_60", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 0, i8* null, i8* %"$update_value_62")
  %"$m2_2" = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_54"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$execptr_load_68" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_69" = call i8* @_new_empty_map(i8* %"$execptr_load_68")
  %"$_new_empty_map_70" = bitcast i8* %"$_new_empty_map_call_69" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_70", %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", align 8
  %"$execptr_load_71" = load i8*, i8** @_execptr, align 8
  %"$$m2_2_73" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", align 8
  %"$update_value_74" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$$m2_2_73" to i8*
  call void @_update_field(i8* %"$execptr_load_71", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_72", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 0, i8* null, i8* %"$update_value_74")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Push_75"(%Uint128 %_amount, [20 x i8]* %"$_origin_76", [20 x i8]* %"$_sender_77") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_76", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_77", align 1
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %entry
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_90" = call i8* @_new_bnum(i8* %"$execptr_load_89", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_88", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_90", i8** %k1, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_86"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_104" = call i8* @_new_bnum(i8* %"$execptr_load_103", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_102", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_104", i8** %k2, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_100"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_118" = call i8* @_new_bnum(i8* %"$execptr_load_117", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_116", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_118", i8** %k3, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_114"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4
  %"$_literal_cost_v1_150" = alloca %Int32, align 8
  %"$v1_151" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_151", %Int32* %"$_literal_cost_v1_150", align 4
  %"$$_literal_cost_v1_150_152" = bitcast %Int32* %"$_literal_cost_v1_150" to i8*
  %"$_literal_cost_call_153" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v1_150_152")
  %"$gasadd_154" = add i64 %"$_literal_cost_call_153", 1
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 %"$gasadd_154", %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_148"
  %"$consume_159" = sub i64 %"$gasrem_155", %"$gasadd_154"
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$indices_buf_160_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_160_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_160_salloc_load", i64 8)
  %"$indices_buf_160_salloc" = bitcast i8* %"$indices_buf_160_salloc_salloc" to [8 x i8]*
  %"$indices_buf_160" = bitcast [8 x i8]* %"$indices_buf_160_salloc" to i8*
  %"$k1_161" = load i8*, i8** %k1, align 8
  %"$indices_gep_162" = getelementptr i8, i8* %"$indices_buf_160", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_162" to i8**
  store i8* %"$k1_161", i8** %indices_cast, align 8
  %"$execptr_load_163" = load i8*, i8** @_execptr, align 8
  %"$v1_165" = load %Int32, %Int32* %v1, align 4
  %"$update_value_166" = alloca %Int32, align 8
  store %Int32 %"$v1_165", %Int32* %"$update_value_166", align 4
  %"$update_value_167" = bitcast %Int32* %"$update_value_166" to i8*
  call void @_update_field(i8* %"$execptr_load_163", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_164", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 1, i8* %"$indices_buf_160", i8* %"$update_value_167")
  %"$_literal_cost_v2_168" = alloca %Int32, align 8
  %"$v2_169" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_169", %Int32* %"$_literal_cost_v2_168", align 4
  %"$$_literal_cost_v2_168_170" = bitcast %Int32* %"$_literal_cost_v2_168" to i8*
  %"$_literal_cost_call_171" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v2_168_170")
  %"$gasadd_172" = add i64 %"$_literal_cost_call_171", 1
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 %"$gasadd_172", %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_158"
  %"$consume_177" = sub i64 %"$gasrem_173", %"$gasadd_172"
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$indices_buf_178_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_178_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_178_salloc_load", i64 8)
  %"$indices_buf_178_salloc" = bitcast i8* %"$indices_buf_178_salloc_salloc" to [8 x i8]*
  %"$indices_buf_178" = bitcast [8 x i8]* %"$indices_buf_178_salloc" to i8*
  %"$k2_179" = load i8*, i8** %k2, align 8
  %"$indices_gep_180" = getelementptr i8, i8* %"$indices_buf_178", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_180" to i8**
  store i8* %"$k2_179", i8** %indices_cast1, align 8
  %"$execptr_load_181" = load i8*, i8** @_execptr, align 8
  %"$v2_183" = load %Int32, %Int32* %v2, align 4
  %"$update_value_184" = alloca %Int32, align 8
  store %Int32 %"$v2_183", %Int32* %"$update_value_184", align 4
  %"$update_value_185" = bitcast %Int32* %"$update_value_184" to i8*
  call void @_update_field(i8* %"$execptr_load_181", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_182", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 1, i8* %"$indices_buf_178", i8* %"$update_value_185")
  %"$_literal_cost_v3_186" = alloca %Int32, align 8
  %"$v3_187" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_187", %Int32* %"$_literal_cost_v3_186", align 4
  %"$$_literal_cost_v3_186_188" = bitcast %Int32* %"$_literal_cost_v3_186" to i8*
  %"$_literal_cost_call_189" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v3_186_188")
  %"$gasadd_190" = add i64 %"$_literal_cost_call_189", 1
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 %"$gasadd_190", %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_176"
  %"$consume_195" = sub i64 %"$gasrem_191", %"$gasadd_190"
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$indices_buf_196_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_196_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_196_salloc_load", i64 8)
  %"$indices_buf_196_salloc" = bitcast i8* %"$indices_buf_196_salloc_salloc" to [8 x i8]*
  %"$indices_buf_196" = bitcast [8 x i8]* %"$indices_buf_196_salloc" to i8*
  %"$k3_197" = load i8*, i8** %k3, align 8
  %"$indices_gep_198" = getelementptr i8, i8* %"$indices_buf_196", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_198" to i8**
  store i8* %"$k3_197", i8** %indices_cast2, align 8
  %"$execptr_load_199" = load i8*, i8** @_execptr, align 8
  %"$v3_201" = load %Int32, %Int32* %v3, align 4
  %"$update_value_202" = alloca %Int32, align 8
  store %Int32 %"$v3_201", %Int32* %"$update_value_202", align 4
  %"$update_value_203" = bitcast %Int32* %"$update_value_202" to i8*
  call void @_update_field(i8* %"$execptr_load_199", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_200", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 1, i8* %"$indices_buf_196", i8* %"$update_value_203")
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

define void @Push(i8* %0) {
entry:
  %"$_amount_205" = getelementptr i8, i8* %0, i32 0
  %"$_amount_206" = bitcast i8* %"$_amount_205" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_206", align 8
  %"$_origin_207" = getelementptr i8, i8* %0, i32 16
  %"$_origin_208" = bitcast i8* %"$_origin_207" to [20 x i8]*
  %"$_sender_209" = getelementptr i8, i8* %0, i32 36
  %"$_sender_210" = bitcast i8* %"$_sender_209" to [20 x i8]*
  call void @"$Push_75"(%Uint128 %_amount, [20 x i8]* %"$_origin_208", [20 x i8]* %"$_sender_210")
  ret void
}

define internal void @"$PullPush_211"(%Uint128 %_amount, [20 x i8]* %"$_origin_212", [20 x i8]* %"$_sender_213") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_212", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_213", align 1
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %entry
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %k1 = alloca %Int32, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %k1, align 4
  %v1 = alloca %Map_BNum_Int32*, align 8
  %"$execptr_load_225" = load i8*, i8** @_execptr, align 8
  %"$v1_call_226" = call i8* @_fetch_field(i8* %"$execptr_load_225", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_224", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 0, i8* null, i32 1)
  %"$v1_227" = bitcast i8* %"$v1_call_226" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$v1_227", %Map_BNum_Int32** %v1, align 8
  %"$v1_228" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_228_229" = bitcast %Map_BNum_Int32* %"$v1_228" to i8*
  %"$_literal_cost_call_230" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_39", i8* %"$$v1_228_229")
  %"$v1_231" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_231_232" = bitcast %Map_BNum_Int32* %"$v1_231" to i8*
  %"$_mapsortcost_call_233" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_39", i8* %"$$v1_231_232")
  %"$gasadd_234" = add i64 %"$_literal_cost_call_230", %"$_mapsortcost_call_233"
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 %"$gasadd_234", %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_222"
  %"$consume_239" = sub i64 %"$gasrem_235", %"$gasadd_234"
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$v1_240" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_240_241" = bitcast %Map_BNum_Int32* %"$v1_240" to i8*
  %"$_literal_cost_call_242" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_39", i8* %"$$v1_240_241")
  %"$gasadd_243" = add i64 %"$_literal_cost_call_242", 1
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 %"$gasadd_243", %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_238"
  %"$consume_248" = sub i64 %"$gasrem_244", %"$gasadd_243"
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$indices_buf_249_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_249_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_249_salloc_load", i64 4)
  %"$indices_buf_249_salloc" = bitcast i8* %"$indices_buf_249_salloc_salloc" to [4 x i8]*
  %"$indices_buf_249" = bitcast [4 x i8]* %"$indices_buf_249_salloc" to i8*
  %"$k1_250" = load %Int32, %Int32* %k1, align 4
  %"$indices_gep_251" = getelementptr i8, i8* %"$indices_buf_249", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_251" to %Int32*
  store %Int32 %"$k1_250", %Int32* %indices_cast, align 4
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$v1_254" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$update_value_255" = bitcast %Map_BNum_Int32* %"$v1_254" to i8*
  call void @_update_field(i8* %"$execptr_load_252", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_253", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 1, i8* %"$indices_buf_249", i8* %"$update_value_255")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @PullPush(i8* %0) {
entry:
  %"$_amount_257" = getelementptr i8, i8* %0, i32 0
  %"$_amount_258" = bitcast i8* %"$_amount_257" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_258", align 8
  %"$_origin_259" = getelementptr i8, i8* %0, i32 16
  %"$_origin_260" = bitcast i8* %"$_origin_259" to [20 x i8]*
  %"$_sender_261" = getelementptr i8, i8* %0, i32 36
  %"$_sender_262" = bitcast i8* %"$_sender_261" to [20 x i8]*
  call void @"$PullPush_211"(%Uint128 %_amount, [20 x i8]* %"$_origin_260", [20 x i8]* %"$_sender_262")
  ret void
}
