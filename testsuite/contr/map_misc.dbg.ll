

; gas_remaining: 4001999
; ModuleID = 'MapMisc'
source_filename = "MapMisc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_MapTyp_37" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_41" = type { i32, %"$TyDescr_AddrFieldTyp_40"* }
%"$TyDescr_AddrFieldTyp_40" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_268" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_269" = type { %ParamDescrString, i32, %"$ParamDescr_268"* }
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
@"$TyDescr_AddrFields_45" = unnamed_addr constant %"$TyDescr_AddrTyp_41" { i32 -3, %"$TyDescr_AddrFieldTyp_40"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$m1_65" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_77" = unnamed_addr constant [3 x i8] c"m2\00"
@"$BNumLit_93" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_107" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_121" = unnamed_addr constant [1 x i8] c"3"
@"$m1_169" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_187" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_205" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_229" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_258" = unnamed_addr constant [3 x i8] c"m2\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Map_38", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Map_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_270" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_271" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_272" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_268"] [%"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_270", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_271", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_272", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_273" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_274" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_275" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Push_276" = unnamed_addr constant [3 x %"$ParamDescr_268"] [%"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_273", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_274", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_275", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_Push_277" = unnamed_addr constant [4 x i8] c"Push"
@"$tpname__amount_278" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_279" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_280" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_PullPush_281" = unnamed_addr constant [3 x %"$ParamDescr_268"] [%"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_278", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_279", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_280", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_PullPush_282" = unnamed_addr constant [8 x i8] c"PullPush"
@_transition_parameters = constant [2 x %"$TransDescr_269"] [%"$TransDescr_269" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_Push_277", i32 0, i32 0), i32 4 }, i32 3, %"$ParamDescr_268"* getelementptr inbounds ([3 x %"$ParamDescr_268"], [3 x %"$ParamDescr_268"]* @"$tparams_Push_276", i32 0, i32 0) }, %"$TransDescr_269" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_PullPush_282", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_268"* getelementptr inbounds ([3 x %"$ParamDescr_268"], [3 x %"$ParamDescr_268"]* @"$tparams_PullPush_281", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define void @_init_libs() !dbg !4 {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %entry
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  %"$m1_1" = alloca %Map_BNum_Int32*, align 8
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 1, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %"$have_gas_54"
  %"$consume_60" = sub i64 %"$gasrem_56", 1
  store i64 %"$consume_60", i64* @_gasrem, align 8
  %"$execptr_load_61" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_62" = call i8* @_new_empty_map(i8* %"$execptr_load_61")
  %"$_new_empty_map_63" = bitcast i8* %"$_new_empty_map_call_62" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_63", %Map_BNum_Int32** %"$m1_1", align 8, !dbg !11
  %"$execptr_load_64" = load i8*, i8** @_execptr, align 8
  %"$$m1_1_66" = load %Map_BNum_Int32*, %Map_BNum_Int32** %"$m1_1", align 8
  %"$update_value_67" = bitcast %Map_BNum_Int32* %"$$m1_1_66" to i8*
  call void @_update_field(i8* %"$execptr_load_64", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_65", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 0, i8* null, i8* %"$update_value_67"), !dbg !11
  %"$m2_2" = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_59"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %"$execptr_load_73" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_74" = call i8* @_new_empty_map(i8* %"$execptr_load_73")
  %"$_new_empty_map_75" = bitcast i8* %"$_new_empty_map_call_74" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_75", %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", align 8, !dbg !12
  %"$execptr_load_76" = load i8*, i8** @_execptr, align 8
  %"$$m2_2_78" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", align 8
  %"$update_value_79" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$$m2_2_78" to i8*
  call void @_update_field(i8* %"$execptr_load_76", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_77", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 0, i8* null, i8* %"$update_value_79"), !dbg !12
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Push_80"(%Uint128 %_amount, [20 x i8]* %"$_origin_81", [20 x i8]* %"$_sender_82") !dbg !13 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_81", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_82", align 1
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$execptr_load_94" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_95" = call i8* @_new_bnum(i8* %"$execptr_load_94", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_93", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_95", i8** %k1, align 8, !dbg !14
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_91"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$execptr_load_108" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_109" = call i8* @_new_bnum(i8* %"$execptr_load_108", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_107", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_109", i8** %k2, align 8, !dbg !15
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_105"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$execptr_load_122" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_123" = call i8* @_new_bnum(i8* %"$execptr_load_122", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_121", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_123", i8** %k3, align 8, !dbg !16
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_119"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4, !dbg !17
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4, !dbg !18
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4, !dbg !19
  %"$_literal_cost_v1_155" = alloca %Int32, align 8
  %"$v1_156" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_156", %Int32* %"$_literal_cost_v1_155", align 4
  %"$$_literal_cost_v1_155_157" = bitcast %Int32* %"$_literal_cost_v1_155" to i8*
  %"$_literal_cost_call_158" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v1_155_157")
  %"$gasadd_159" = add i64 %"$_literal_cost_call_158", 1
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 %"$gasadd_159", %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_153"
  %"$consume_164" = sub i64 %"$gasrem_160", %"$gasadd_159"
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$indices_buf_165_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_165_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_165_salloc_load", i64 8)
  %"$indices_buf_165_salloc" = bitcast i8* %"$indices_buf_165_salloc_salloc" to [8 x i8]*
  %"$indices_buf_165" = bitcast [8 x i8]* %"$indices_buf_165_salloc" to i8*
  %"$k1_166" = load i8*, i8** %k1, align 8
  %"$indices_gep_167" = getelementptr i8, i8* %"$indices_buf_165", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_167" to i8**
  store i8* %"$k1_166", i8** %indices_cast, align 8
  %"$execptr_load_168" = load i8*, i8** @_execptr, align 8
  %"$v1_170" = load %Int32, %Int32* %v1, align 4
  %"$update_value_171" = alloca %Int32, align 8
  store %Int32 %"$v1_170", %Int32* %"$update_value_171", align 4
  %"$update_value_172" = bitcast %Int32* %"$update_value_171" to i8*
  call void @_update_field(i8* %"$execptr_load_168", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_169", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 1, i8* %"$indices_buf_165", i8* %"$update_value_172"), !dbg !20
  %"$_literal_cost_v2_173" = alloca %Int32, align 8
  %"$v2_174" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_174", %Int32* %"$_literal_cost_v2_173", align 4
  %"$$_literal_cost_v2_173_175" = bitcast %Int32* %"$_literal_cost_v2_173" to i8*
  %"$_literal_cost_call_176" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v2_173_175")
  %"$gasadd_177" = add i64 %"$_literal_cost_call_176", 1
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 %"$gasadd_177", %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_163"
  %"$consume_182" = sub i64 %"$gasrem_178", %"$gasadd_177"
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$indices_buf_183_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_183_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_183_salloc_load", i64 8)
  %"$indices_buf_183_salloc" = bitcast i8* %"$indices_buf_183_salloc_salloc" to [8 x i8]*
  %"$indices_buf_183" = bitcast [8 x i8]* %"$indices_buf_183_salloc" to i8*
  %"$k2_184" = load i8*, i8** %k2, align 8
  %"$indices_gep_185" = getelementptr i8, i8* %"$indices_buf_183", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_185" to i8**
  store i8* %"$k2_184", i8** %indices_cast1, align 8
  %"$execptr_load_186" = load i8*, i8** @_execptr, align 8
  %"$v2_188" = load %Int32, %Int32* %v2, align 4
  %"$update_value_189" = alloca %Int32, align 8
  store %Int32 %"$v2_188", %Int32* %"$update_value_189", align 4
  %"$update_value_190" = bitcast %Int32* %"$update_value_189" to i8*
  call void @_update_field(i8* %"$execptr_load_186", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_187", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 1, i8* %"$indices_buf_183", i8* %"$update_value_190"), !dbg !21
  %"$_literal_cost_v3_191" = alloca %Int32, align 8
  %"$v3_192" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_192", %Int32* %"$_literal_cost_v3_191", align 4
  %"$$_literal_cost_v3_191_193" = bitcast %Int32* %"$_literal_cost_v3_191" to i8*
  %"$_literal_cost_call_194" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v3_191_193")
  %"$gasadd_195" = add i64 %"$_literal_cost_call_194", 1
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 %"$gasadd_195", %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_181"
  %"$consume_200" = sub i64 %"$gasrem_196", %"$gasadd_195"
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$indices_buf_201_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_201_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_201_salloc_load", i64 8)
  %"$indices_buf_201_salloc" = bitcast i8* %"$indices_buf_201_salloc_salloc" to [8 x i8]*
  %"$indices_buf_201" = bitcast [8 x i8]* %"$indices_buf_201_salloc" to i8*
  %"$k3_202" = load i8*, i8** %k3, align 8
  %"$indices_gep_203" = getelementptr i8, i8* %"$indices_buf_201", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_203" to i8**
  store i8* %"$k3_202", i8** %indices_cast2, align 8
  %"$execptr_load_204" = load i8*, i8** @_execptr, align 8
  %"$v3_206" = load %Int32, %Int32* %v3, align 4
  %"$update_value_207" = alloca %Int32, align 8
  store %Int32 %"$v3_206", %Int32* %"$update_value_207", align 4
  %"$update_value_208" = bitcast %Int32* %"$update_value_207" to i8*
  call void @_update_field(i8* %"$execptr_load_204", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_205", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 1, i8* %"$indices_buf_201", i8* %"$update_value_208"), !dbg !22
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

define void @Push(i8* %0) !dbg !23 {
entry:
  %"$_amount_210" = getelementptr i8, i8* %0, i32 0
  %"$_amount_211" = bitcast i8* %"$_amount_210" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_211", align 8
  %"$_origin_212" = getelementptr i8, i8* %0, i32 16
  %"$_origin_213" = bitcast i8* %"$_origin_212" to [20 x i8]*
  %"$_sender_214" = getelementptr i8, i8* %0, i32 36
  %"$_sender_215" = bitcast i8* %"$_sender_214" to [20 x i8]*
  call void @"$Push_80"(%Uint128 %_amount, [20 x i8]* %"$_origin_213", [20 x i8]* %"$_sender_215"), !dbg !24
  ret void
}

define internal void @"$PullPush_216"(%Uint128 %_amount, [20 x i8]* %"$_origin_217", [20 x i8]* %"$_sender_218") !dbg !25 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_217", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_218", align 1
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %k1 = alloca %Int32, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %k1, align 4, !dbg !26
  %v1 = alloca %Map_BNum_Int32*, align 8
  %"$execptr_load_230" = load i8*, i8** @_execptr, align 8
  %"$v1_call_231" = call i8* @_fetch_field(i8* %"$execptr_load_230", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_229", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_39", i32 0, i8* null, i32 1), !dbg !27
  %"$v1_232" = bitcast i8* %"$v1_call_231" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$v1_232", %Map_BNum_Int32** %v1, align 8
  %"$v1_233" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_233_234" = bitcast %Map_BNum_Int32* %"$v1_233" to i8*
  %"$_literal_cost_call_235" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_39", i8* %"$$v1_233_234")
  %"$v1_236" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_236_237" = bitcast %Map_BNum_Int32* %"$v1_236" to i8*
  %"$_mapsortcost_call_238" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_39", i8* %"$$v1_236_237")
  %"$gasadd_239" = add i64 %"$_literal_cost_call_235", %"$_mapsortcost_call_238"
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 %"$gasadd_239", %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_227"
  %"$consume_244" = sub i64 %"$gasrem_240", %"$gasadd_239"
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$v1_245" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_245_246" = bitcast %Map_BNum_Int32* %"$v1_245" to i8*
  %"$_literal_cost_call_247" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_39", i8* %"$$v1_245_246")
  %"$gasadd_248" = add i64 %"$_literal_cost_call_247", 1
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 %"$gasadd_248", %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_243"
  %"$consume_253" = sub i64 %"$gasrem_249", %"$gasadd_248"
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$indices_buf_254_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_254_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_254_salloc_load", i64 4)
  %"$indices_buf_254_salloc" = bitcast i8* %"$indices_buf_254_salloc_salloc" to [4 x i8]*
  %"$indices_buf_254" = bitcast [4 x i8]* %"$indices_buf_254_salloc" to i8*
  %"$k1_255" = load %Int32, %Int32* %k1, align 4
  %"$indices_gep_256" = getelementptr i8, i8* %"$indices_buf_254", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_256" to %Int32*
  store %Int32 %"$k1_255", %Int32* %indices_cast, align 4
  %"$execptr_load_257" = load i8*, i8** @_execptr, align 8
  %"$v1_259" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$update_value_260" = bitcast %Map_BNum_Int32* %"$v1_259" to i8*
  call void @_update_field(i8* %"$execptr_load_257", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_258", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 1, i8* %"$indices_buf_254", i8* %"$update_value_260"), !dbg !28
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @PullPush(i8* %0) !dbg !29 {
entry:
  %"$_amount_262" = getelementptr i8, i8* %0, i32 0
  %"$_amount_263" = bitcast i8* %"$_amount_262" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_263", align 8
  %"$_origin_264" = getelementptr i8, i8* %0, i32 16
  %"$_origin_265" = bitcast i8* %"$_origin_264" to [20 x i8]*
  %"$_sender_266" = getelementptr i8, i8* %0, i32 36
  %"$_sender_267" = bitcast i8* %"$_sender_266" to [20 x i8]*
  call void @"$PullPush_216"(%Uint128 %_amount, [20 x i8]* %"$_origin_265", [20 x i8]* %"$_sender_267"), !dbg !30
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "map_misc.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 7, column: 29, scope: !10)
!12 = !DILocation(line: 8, column: 43, scope: !10)
!13 = distinct !DISubprogram(name: "Push", linkageName: "Push", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 11, column: 8, scope: !13)
!15 = !DILocation(line: 12, column: 8, scope: !13)
!16 = !DILocation(line: 13, column: 8, scope: !13)
!17 = !DILocation(line: 14, column: 8, scope: !13)
!18 = !DILocation(line: 15, column: 8, scope: !13)
!19 = !DILocation(line: 16, column: 8, scope: !13)
!20 = !DILocation(line: 17, column: 3, scope: !13)
!21 = !DILocation(line: 18, column: 3, scope: !13)
!22 = !DILocation(line: 19, column: 3, scope: !13)
!23 = distinct !DISubprogram(name: "Push", linkageName: "Push", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 10, column: 12, scope: !23)
!25 = distinct !DISubprogram(name: "PullPush", linkageName: "PullPush", scope: !2, file: !2, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 23, column: 8, scope: !25)
!27 = !DILocation(line: 24, column: 3, scope: !25)
!28 = !DILocation(line: 25, column: 3, scope: !25)
!29 = distinct !DISubprogram(name: "PullPush", linkageName: "PullPush", scope: !2, file: !2, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 22, column: 12, scope: !29)
