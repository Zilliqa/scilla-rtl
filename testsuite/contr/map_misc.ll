

; gas_remaining: 4001999
; ModuleID = 'MapMisc'
source_filename = "MapMisc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_MapTyp_36" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Uint32 = type { i32 }
%"$ParamDescr_257" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_258" = type { %ParamDescrString, i32, %"$ParamDescr_257"* }
%Map_BNum_Int32 = type { i8*, %Int32 }
%Int32 = type { i32 }
%"Map_Int32_Map_(BNum)_(Int32)" = type { %Int32, %Map_BNum_Int32* }
%Uint128 = type { i128 }
%BNumString = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_3" = global %"$TyDescrTy_PrimTyp_2" zeroinitializer
@"$TyDescr_Int32_4" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int32_Prim_3" to i8*) }
@"$TyDescr_Uint32_Prim_5" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 0 }
@"$TyDescr_Uint32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint32_Prim_5" to i8*) }
@"$TyDescr_Int64_Prim_7" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 1 }
@"$TyDescr_Int64_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int64_Prim_7" to i8*) }
@"$TyDescr_Uint64_Prim_9" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 1 }
@"$TyDescr_Uint64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint64_Prim_9" to i8*) }
@"$TyDescr_Int128_Prim_11" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 2 }
@"$TyDescr_Int128_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int128_Prim_11" to i8*) }
@"$TyDescr_Uint128_Prim_13" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 2 }
@"$TyDescr_Uint128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint128_Prim_13" to i8*) }
@"$TyDescr_Int256_Prim_15" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 3 }
@"$TyDescr_Int256_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int256_Prim_15" to i8*) }
@"$TyDescr_Uint256_Prim_17" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 3 }
@"$TyDescr_Uint256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint256_Prim_17" to i8*) }
@"$TyDescr_String_Prim_19" = global %"$TyDescrTy_PrimTyp_2" { i32 2, i32 0 }
@"$TyDescr_String_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_String_Prim_19" to i8*) }
@"$TyDescr_Bnum_Prim_21" = global %"$TyDescrTy_PrimTyp_2" { i32 3, i32 0 }
@"$TyDescr_Bnum_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bnum_Prim_21" to i8*) }
@"$TyDescr_Message_Prim_23" = global %"$TyDescrTy_PrimTyp_2" { i32 4, i32 0 }
@"$TyDescr_Message_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Message_Prim_23" to i8*) }
@"$TyDescr_Event_Prim_25" = global %"$TyDescrTy_PrimTyp_2" { i32 5, i32 0 }
@"$TyDescr_Event_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Event_Prim_25" to i8*) }
@"$TyDescr_Exception_Prim_27" = global %"$TyDescrTy_PrimTyp_2" { i32 6, i32 0 }
@"$TyDescr_Exception_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Exception_Prim_27" to i8*) }
@"$TyDescr_Bystr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_29" to i8*) }
@"$TyDescr_Bystr20_Prim_31" = global %"$TyDescrTy_PrimTyp_2" { i32 8, i32 20 }
@"$TyDescr_Bystr20_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr20_Prim_31" to i8*) }
@"$TyDescr_Map_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_36"* @"$TyDescr_MapTyp_42" to i8*) }
@"$TyDescr_Map_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_36"* @"$TyDescr_MapTyp_43" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_44" to i8*) }
@"$TyDescr_MapTyp_42" = unnamed_addr constant %"$TyDescr_MapTyp_36" { %_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ* @"$TyDescr_Map_38" }
@"$TyDescr_MapTyp_43" = unnamed_addr constant %"$TyDescr_MapTyp_36" { %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_4" }
@"$TyDescr_AddrFields_44" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -1, %"$TyDescr_AddrFieldTyp_39"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$m1_54" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_66" = unnamed_addr constant [3 x i8] c"m2\00"
@"$BNumLit_82" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_96" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_110" = unnamed_addr constant [1 x i8] c"3"
@"$m1_158" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_176" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_194" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_218" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_247" = unnamed_addr constant [3 x i8] c"m2\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Map_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Map_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_259" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_260" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_261" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_257"] [%"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_259", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_260", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_261", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_262" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_263" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_264" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Push_265" = unnamed_addr constant [3 x %"$ParamDescr_257"] [%"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_262", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_263", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_264", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_Push_266" = unnamed_addr constant [4 x i8] c"Push"
@"$tpname__amount_267" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_268" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_269" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_PullPush_270" = unnamed_addr constant [3 x %"$ParamDescr_257"] [%"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_267", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_268", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_257" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_269", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_PullPush_271" = unnamed_addr constant [8 x i8] c"PullPush"
@_transition_parameters = constant [2 x %"$TransDescr_258"] [%"$TransDescr_258" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_Push_266", i32 0, i32 0), i32 4 }, i32 3, %"$ParamDescr_257"* getelementptr inbounds ([3 x %"$ParamDescr_257"], [3 x %"$ParamDescr_257"]* @"$tparams_Push_265", i32 0, i32 0) }, %"$TransDescr_258" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_PullPush_271", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_257"* getelementptr inbounds ([3 x %"$ParamDescr_257"], [3 x %"$ParamDescr_257"]* @"$tparams_PullPush_270", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$m1_0" = alloca %Map_BNum_Int32*, align 8
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 1, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %entry
  %"$consume_49" = sub i64 %"$gasrem_45", 1
  store i64 %"$consume_49", i64* @_gasrem, align 8
  %"$execptr_load_50" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_51" = call i8* @_new_empty_map(i8* %"$execptr_load_50")
  %"$_new_empty_map_52" = bitcast i8* %"$_new_empty_map_call_51" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_52", %Map_BNum_Int32** %"$m1_0", align 8
  %"$execptr_load_53" = load i8*, i8** @_execptr, align 8
  %"$$m1_0_55" = load %Map_BNum_Int32*, %Map_BNum_Int32** %"$m1_0", align 8
  %"$update_value_56" = bitcast %Map_BNum_Int32* %"$$m1_0_55" to i8*
  call void @_update_field(i8* %"$execptr_load_53", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_54", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 0, i8* null, i8* %"$update_value_56")
  %"$m2_1" = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %"$have_gas_48"
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %"$have_gas_48"
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  %"$execptr_load_62" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_63" = call i8* @_new_empty_map(i8* %"$execptr_load_62")
  %"$_new_empty_map_64" = bitcast i8* %"$_new_empty_map_call_63" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_64", %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_1", align 8
  %"$execptr_load_65" = load i8*, i8** @_execptr, align 8
  %"$$m2_1_67" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_1", align 8
  %"$update_value_68" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$$m2_1_67" to i8*
  call void @_update_field(i8* %"$execptr_load_65", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_66", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_37", i32 0, i8* null, i8* %"$update_value_68")
  ret void
}

declare void @_out_of_gas()

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Push_69"(%Uint128 %_amount, [20 x i8]* %"$_origin_70", [20 x i8]* %"$_sender_71") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_70", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_71", align 1
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$execptr_load_83" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_84" = call i8* @_new_bnum(i8* %"$execptr_load_83", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_82", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_84", i8** %k1, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_80"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$execptr_load_97" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_98" = call i8* @_new_bnum(i8* %"$execptr_load_97", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_96", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_98", i8** %k2, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_94"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %"$execptr_load_111" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_112" = call i8* @_new_bnum(i8* %"$execptr_load_111", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_110", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_112", i8** %k3, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_108"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4
  %"$_literal_cost_v1_144" = alloca %Int32, align 8
  %"$v1_145" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_145", %Int32* %"$_literal_cost_v1_144", align 4
  %"$$_literal_cost_v1_144_146" = bitcast %Int32* %"$_literal_cost_v1_144" to i8*
  %"$_literal_cost_call_147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_4", i8* %"$$_literal_cost_v1_144_146")
  %"$gasadd_148" = add i64 %"$_literal_cost_call_147", 1
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 %"$gasadd_148", %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_142"
  %"$consume_153" = sub i64 %"$gasrem_149", %"$gasadd_148"
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$indices_buf_154_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_154_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_154_salloc_load", i64 8)
  %"$indices_buf_154_salloc" = bitcast i8* %"$indices_buf_154_salloc_salloc" to [8 x i8]*
  %"$indices_buf_154" = bitcast [8 x i8]* %"$indices_buf_154_salloc" to i8*
  %"$k1_155" = load i8*, i8** %k1, align 8
  %"$indices_gep_156" = getelementptr i8, i8* %"$indices_buf_154", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_156" to i8**
  store i8* %"$k1_155", i8** %indices_cast, align 8
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$v1_159" = load %Int32, %Int32* %v1, align 4
  %"$update_value_160" = alloca %Int32, align 8
  store %Int32 %"$v1_159", %Int32* %"$update_value_160", align 4
  %"$update_value_161" = bitcast %Int32* %"$update_value_160" to i8*
  call void @_update_field(i8* %"$execptr_load_157", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_158", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 1, i8* %"$indices_buf_154", i8* %"$update_value_161")
  %"$_literal_cost_v2_162" = alloca %Int32, align 8
  %"$v2_163" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_163", %Int32* %"$_literal_cost_v2_162", align 4
  %"$$_literal_cost_v2_162_164" = bitcast %Int32* %"$_literal_cost_v2_162" to i8*
  %"$_literal_cost_call_165" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_4", i8* %"$$_literal_cost_v2_162_164")
  %"$gasadd_166" = add i64 %"$_literal_cost_call_165", 1
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 %"$gasadd_166", %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_152"
  %"$consume_171" = sub i64 %"$gasrem_167", %"$gasadd_166"
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$indices_buf_172_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_172_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_172_salloc_load", i64 8)
  %"$indices_buf_172_salloc" = bitcast i8* %"$indices_buf_172_salloc_salloc" to [8 x i8]*
  %"$indices_buf_172" = bitcast [8 x i8]* %"$indices_buf_172_salloc" to i8*
  %"$k2_173" = load i8*, i8** %k2, align 8
  %"$indices_gep_174" = getelementptr i8, i8* %"$indices_buf_172", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_174" to i8**
  store i8* %"$k2_173", i8** %indices_cast1, align 8
  %"$execptr_load_175" = load i8*, i8** @_execptr, align 8
  %"$v2_177" = load %Int32, %Int32* %v2, align 4
  %"$update_value_178" = alloca %Int32, align 8
  store %Int32 %"$v2_177", %Int32* %"$update_value_178", align 4
  %"$update_value_179" = bitcast %Int32* %"$update_value_178" to i8*
  call void @_update_field(i8* %"$execptr_load_175", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_176", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 1, i8* %"$indices_buf_172", i8* %"$update_value_179")
  %"$_literal_cost_v3_180" = alloca %Int32, align 8
  %"$v3_181" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_181", %Int32* %"$_literal_cost_v3_180", align 4
  %"$$_literal_cost_v3_180_182" = bitcast %Int32* %"$_literal_cost_v3_180" to i8*
  %"$_literal_cost_call_183" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_4", i8* %"$$_literal_cost_v3_180_182")
  %"$gasadd_184" = add i64 %"$_literal_cost_call_183", 1
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 %"$gasadd_184", %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_170"
  %"$consume_189" = sub i64 %"$gasrem_185", %"$gasadd_184"
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$indices_buf_190_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_190_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_190_salloc_load", i64 8)
  %"$indices_buf_190_salloc" = bitcast i8* %"$indices_buf_190_salloc_salloc" to [8 x i8]*
  %"$indices_buf_190" = bitcast [8 x i8]* %"$indices_buf_190_salloc" to i8*
  %"$k3_191" = load i8*, i8** %k3, align 8
  %"$indices_gep_192" = getelementptr i8, i8* %"$indices_buf_190", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_192" to i8**
  store i8* %"$k3_191", i8** %indices_cast2, align 8
  %"$execptr_load_193" = load i8*, i8** @_execptr, align 8
  %"$v3_195" = load %Int32, %Int32* %v3, align 4
  %"$update_value_196" = alloca %Int32, align 8
  store %Int32 %"$v3_195", %Int32* %"$update_value_196", align 4
  %"$update_value_197" = bitcast %Int32* %"$update_value_196" to i8*
  call void @_update_field(i8* %"$execptr_load_193", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_194", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 1, i8* %"$indices_buf_190", i8* %"$update_value_197")
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

define void @Push(i8* %0) {
entry:
  %"$_amount_199" = getelementptr i8, i8* %0, i32 0
  %"$_amount_200" = bitcast i8* %"$_amount_199" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_200", align 8
  %"$_origin_201" = getelementptr i8, i8* %0, i32 16
  %"$_origin_202" = bitcast i8* %"$_origin_201" to [20 x i8]*
  %"$_sender_203" = getelementptr i8, i8* %0, i32 36
  %"$_sender_204" = bitcast i8* %"$_sender_203" to [20 x i8]*
  call void @"$Push_69"(%Uint128 %_amount, [20 x i8]* %"$_origin_202", [20 x i8]* %"$_sender_204")
  ret void
}

define internal void @"$PullPush_205"(%Uint128 %_amount, [20 x i8]* %"$_origin_206", [20 x i8]* %"$_sender_207") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_206", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_207", align 1
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %entry
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %k1 = alloca %Int32, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %k1, align 4
  %v1 = alloca %Map_BNum_Int32*, align 8
  %"$execptr_load_219" = load i8*, i8** @_execptr, align 8
  %"$v1_call_220" = call i8* @_fetch_field(i8* %"$execptr_load_219", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_218", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_38", i32 0, i8* null, i32 1)
  %"$v1_221" = bitcast i8* %"$v1_call_220" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$v1_221", %Map_BNum_Int32** %v1, align 8
  %"$v1_222" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_222_223" = bitcast %Map_BNum_Int32* %"$v1_222" to i8*
  %"$_literal_cost_call_224" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_38", i8* %"$$v1_222_223")
  %"$v1_225" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_225_226" = bitcast %Map_BNum_Int32* %"$v1_225" to i8*
  %"$_mapsortcost_call_227" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_38", i8* %"$$v1_225_226")
  %"$gasadd_228" = add i64 %"$_literal_cost_call_224", %"$_mapsortcost_call_227"
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 %"$gasadd_228", %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_216"
  %"$consume_233" = sub i64 %"$gasrem_229", %"$gasadd_228"
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$v1_234" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_234_235" = bitcast %Map_BNum_Int32* %"$v1_234" to i8*
  %"$_literal_cost_call_236" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_38", i8* %"$$v1_234_235")
  %"$gasadd_237" = add i64 %"$_literal_cost_call_236", 1
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 %"$gasadd_237", %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_232"
  %"$consume_242" = sub i64 %"$gasrem_238", %"$gasadd_237"
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$indices_buf_243_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_243_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_243_salloc_load", i64 4)
  %"$indices_buf_243_salloc" = bitcast i8* %"$indices_buf_243_salloc_salloc" to [4 x i8]*
  %"$indices_buf_243" = bitcast [4 x i8]* %"$indices_buf_243_salloc" to i8*
  %"$k1_244" = load %Int32, %Int32* %k1, align 4
  %"$indices_gep_245" = getelementptr i8, i8* %"$indices_buf_243", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_245" to %Int32*
  store %Int32 %"$k1_244", %Int32* %indices_cast, align 4
  %"$execptr_load_246" = load i8*, i8** @_execptr, align 8
  %"$v1_248" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$update_value_249" = bitcast %Map_BNum_Int32* %"$v1_248" to i8*
  call void @_update_field(i8* %"$execptr_load_246", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_247", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_37", i32 1, i8* %"$indices_buf_243", i8* %"$update_value_249")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @PullPush(i8* %0) {
entry:
  %"$_amount_251" = getelementptr i8, i8* %0, i32 0
  %"$_amount_252" = bitcast i8* %"$_amount_251" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_252", align 8
  %"$_origin_253" = getelementptr i8, i8* %0, i32 16
  %"$_origin_254" = bitcast i8* %"$_origin_253" to [20 x i8]*
  %"$_sender_255" = getelementptr i8, i8* %0, i32 36
  %"$_sender_256" = bitcast i8* %"$_sender_255" to [20 x i8]*
  call void @"$PullPush_205"(%Uint128 %_amount, [20 x i8]* %"$_origin_254", [20 x i8]* %"$_sender_256")
  ret void
}
