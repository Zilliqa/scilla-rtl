

; gas_remaining: 4001999
; ModuleID = 'MapMisc'
source_filename = "MapMisc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_MapTyp_39" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_43" = type { i32, %"$TyDescr_AddrFieldTyp_42"* }
%"$TyDescr_AddrFieldTyp_42" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_270" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_271" = type { %ParamDescrString, i32, %"$ParamDescr_270"* }
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
@"$TyDescr_ReplicateContr_Prim_30" = global %"$TyDescrTy_PrimTyp_3" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_ReplicateContr_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_3" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_3" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_Map_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_39"* @"$TyDescr_MapTyp_45" to i8*) }
@"$TyDescr_Map_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_39"* @"$TyDescr_MapTyp_46" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_47" to i8*) }
@"$TyDescr_MapTyp_45" = unnamed_addr constant %"$TyDescr_MapTyp_39" { %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ* @"$TyDescr_Map_41" }
@"$TyDescr_MapTyp_46" = unnamed_addr constant %"$TyDescr_MapTyp_39" { %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_5" }
@"$TyDescr_AddrFields_47" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 -3, %"$TyDescr_AddrFieldTyp_42"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$m1_67" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_79" = unnamed_addr constant [3 x i8] c"m2\00"
@"$BNumLit_95" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_109" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_123" = unnamed_addr constant [1 x i8] c"3"
@"$m1_171" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_189" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_207" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m1_231" = unnamed_addr constant [3 x i8] c"m1\00"
@"$m2_260" = unnamed_addr constant [3 x i8] c"m2\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Map_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_272" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_273" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_274" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_272", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_273", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_274", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_275" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_276" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_277" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Push_278" = unnamed_addr constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_275", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_276", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_277", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$tname_Push_279" = unnamed_addr constant [4 x i8] c"Push"
@"$tpname__amount_280" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_281" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_282" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_PullPush_283" = unnamed_addr constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_280", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_281", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_282", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$tname_PullPush_284" = unnamed_addr constant [8 x i8] c"PullPush"
@_transition_parameters = constant [2 x %"$TransDescr_271"] [%"$TransDescr_271" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_Push_279", i32 0, i32 0), i32 4 }, i32 3, %"$ParamDescr_270"* getelementptr inbounds ([3 x %"$ParamDescr_270"], [3 x %"$ParamDescr_270"]* @"$tparams_Push_278", i32 0, i32 0) }, %"$TransDescr_271" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_PullPush_284", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_270"* getelementptr inbounds ([3 x %"$ParamDescr_270"], [3 x %"$ParamDescr_270"]* @"$tparams_PullPush_283", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 5, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 5
  store i64 %"$consume_52", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %"$m1_1" = alloca %Map_BNum_Int32*, align 8
  call void @llvm.dbg.declare(metadata %Map_BNum_Int32** %"$m1_1", metadata !11, metadata !DIExpression()), !dbg !14
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$execptr_load_63" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_64" = call i8* @_new_empty_map(i8* %"$execptr_load_63")
  %"$_new_empty_map_65" = bitcast i8* %"$_new_empty_map_call_64" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_65", %Map_BNum_Int32** %"$m1_1", align 8, !dbg !15
  %"$execptr_load_66" = load i8*, i8** @_execptr, align 8
  %"$$m1_1_68" = load %Map_BNum_Int32*, %Map_BNum_Int32** %"$m1_1", align 8
  %"$update_value_69" = bitcast %Map_BNum_Int32* %"$$m1_1_68" to i8*
  call void @_update_field(i8* %"$execptr_load_66", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_67", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i8* %"$update_value_69"), !dbg !15
  %"$m2_2" = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", metadata !16, metadata !DIExpression()), !dbg !19
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_61"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$execptr_load_75" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_76" = call i8* @_new_empty_map(i8* %"$execptr_load_75")
  %"$_new_empty_map_77" = bitcast i8* %"$_new_empty_map_call_76" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_77", %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", align 8, !dbg !20
  %"$execptr_load_78" = load i8*, i8** @_execptr, align 8
  %"$$m2_2_80" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %"$m2_2", align 8
  %"$update_value_81" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$$m2_2_80" to i8*
  call void @_update_field(i8* %"$execptr_load_78", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_79", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 0, i8* null, i8* %"$update_value_81"), !dbg !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Push_82"(%Uint128 %_amount, [20 x i8]* %"$_origin_83", [20 x i8]* %"$_sender_84") !dbg !21 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_83", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_84", align 1
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %k1, metadata !22, metadata !DIExpression()), !dbg !25
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$execptr_load_96" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_97" = call i8* @_new_bnum(i8* %"$execptr_load_96", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_95", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_97", i8** %k1, align 8, !dbg !26
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_93"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %k2, metadata !27, metadata !DIExpression()), !dbg !28
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$execptr_load_110" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_111" = call i8* @_new_bnum(i8* %"$execptr_load_110", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_109", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_111", i8** %k2, align 8, !dbg !29
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_107"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %k3, metadata !30, metadata !DIExpression()), !dbg !31
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$execptr_load_124" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_125" = call i8* @_new_bnum(i8* %"$execptr_load_124", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_123", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_125", i8** %k3, align 8, !dbg !32
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_121"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %v1, metadata !33, metadata !DIExpression()), !dbg !35
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4, !dbg !36
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %v2, metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4, !dbg !39
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %v3, metadata !40, metadata !DIExpression()), !dbg !41
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4, !dbg !42
  %"$_literal_cost_v1_157" = alloca %Int32, align 8
  %"$v1_158" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_158", %Int32* %"$_literal_cost_v1_157", align 4
  %"$$_literal_cost_v1_157_159" = bitcast %Int32* %"$_literal_cost_v1_157" to i8*
  %"$_literal_cost_call_160" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v1_157_159")
  %"$gasadd_161" = add i64 %"$_literal_cost_call_160", 1
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 %"$gasadd_161", %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_155"
  %"$consume_166" = sub i64 %"$gasrem_162", %"$gasadd_161"
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$indices_buf_167_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_167_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_167_salloc_load", i64 8)
  %"$indices_buf_167_salloc" = bitcast i8* %"$indices_buf_167_salloc_salloc" to [8 x i8]*
  %"$indices_buf_167" = bitcast [8 x i8]* %"$indices_buf_167_salloc" to i8*
  %"$k1_168" = load i8*, i8** %k1, align 8
  %"$indices_gep_169" = getelementptr i8, i8* %"$indices_buf_167", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_169" to i8**
  store i8* %"$k1_168", i8** %indices_cast, align 8
  %"$execptr_load_170" = load i8*, i8** @_execptr, align 8
  %"$v1_172" = load %Int32, %Int32* %v1, align 4
  %"$update_value_173" = alloca %Int32, align 8
  store %Int32 %"$v1_172", %Int32* %"$update_value_173", align 4
  %"$update_value_174" = bitcast %Int32* %"$update_value_173" to i8*
  call void @_update_field(i8* %"$execptr_load_170", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_171", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_167", i8* %"$update_value_174"), !dbg !43
  %"$_literal_cost_v2_175" = alloca %Int32, align 8
  %"$v2_176" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_176", %Int32* %"$_literal_cost_v2_175", align 4
  %"$$_literal_cost_v2_175_177" = bitcast %Int32* %"$_literal_cost_v2_175" to i8*
  %"$_literal_cost_call_178" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v2_175_177")
  %"$gasadd_179" = add i64 %"$_literal_cost_call_178", 1
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 %"$gasadd_179", %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_165"
  %"$consume_184" = sub i64 %"$gasrem_180", %"$gasadd_179"
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$indices_buf_185_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_185_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_185_salloc_load", i64 8)
  %"$indices_buf_185_salloc" = bitcast i8* %"$indices_buf_185_salloc_salloc" to [8 x i8]*
  %"$indices_buf_185" = bitcast [8 x i8]* %"$indices_buf_185_salloc" to i8*
  %"$k2_186" = load i8*, i8** %k2, align 8
  %"$indices_gep_187" = getelementptr i8, i8* %"$indices_buf_185", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_187" to i8**
  store i8* %"$k2_186", i8** %indices_cast1, align 8
  %"$execptr_load_188" = load i8*, i8** @_execptr, align 8
  %"$v2_190" = load %Int32, %Int32* %v2, align 4
  %"$update_value_191" = alloca %Int32, align 8
  store %Int32 %"$v2_190", %Int32* %"$update_value_191", align 4
  %"$update_value_192" = bitcast %Int32* %"$update_value_191" to i8*
  call void @_update_field(i8* %"$execptr_load_188", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_189", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_185", i8* %"$update_value_192"), !dbg !44
  %"$_literal_cost_v3_193" = alloca %Int32, align 8
  %"$v3_194" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_194", %Int32* %"$_literal_cost_v3_193", align 4
  %"$$_literal_cost_v3_193_195" = bitcast %Int32* %"$_literal_cost_v3_193" to i8*
  %"$_literal_cost_call_196" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_v3_193_195")
  %"$gasadd_197" = add i64 %"$_literal_cost_call_196", 1
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 %"$gasadd_197", %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_183"
  %"$consume_202" = sub i64 %"$gasrem_198", %"$gasadd_197"
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$indices_buf_203_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_203_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_203_salloc_load", i64 8)
  %"$indices_buf_203_salloc" = bitcast i8* %"$indices_buf_203_salloc_salloc" to [8 x i8]*
  %"$indices_buf_203" = bitcast [8 x i8]* %"$indices_buf_203_salloc" to i8*
  %"$k3_204" = load i8*, i8** %k3, align 8
  %"$indices_gep_205" = getelementptr i8, i8* %"$indices_buf_203", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_205" to i8**
  store i8* %"$k3_204", i8** %indices_cast2, align 8
  %"$execptr_load_206" = load i8*, i8** @_execptr, align 8
  %"$v3_208" = load %Int32, %Int32* %v3, align 4
  %"$update_value_209" = alloca %Int32, align 8
  store %Int32 %"$v3_208", %Int32* %"$update_value_209", align 4
  %"$update_value_210" = bitcast %Int32* %"$update_value_209" to i8*
  call void @_update_field(i8* %"$execptr_load_206", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_207", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_203", i8* %"$update_value_210"), !dbg !45
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

define void @Push(i8* %0) !dbg !46 {
entry:
  %"$_amount_212" = getelementptr i8, i8* %0, i32 0
  %"$_amount_213" = bitcast i8* %"$_amount_212" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_213", align 8
  %"$_origin_214" = getelementptr i8, i8* %0, i32 16
  %"$_origin_215" = bitcast i8* %"$_origin_214" to [20 x i8]*
  %"$_sender_216" = getelementptr i8, i8* %0, i32 36
  %"$_sender_217" = bitcast i8* %"$_sender_216" to [20 x i8]*
  call void @"$Push_82"(%Uint128 %_amount, [20 x i8]* %"$_origin_215", [20 x i8]* %"$_sender_217"), !dbg !47
  ret void
}

define internal void @"$PullPush_218"(%Uint128 %_amount, [20 x i8]* %"$_origin_219", [20 x i8]* %"$_sender_220") !dbg !48 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_219", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_220", align 1
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %entry
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %k1 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %k1, metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %k1, align 4, !dbg !51
  %v1 = alloca %Map_BNum_Int32*, align 8
  call void @llvm.dbg.declare(metadata %Map_BNum_Int32** %v1, metadata !52, metadata !DIExpression()), !dbg !53
  %"$execptr_load_232" = load i8*, i8** @_execptr, align 8
  %"$v1_call_233" = call i8* @_fetch_field(i8* %"$execptr_load_232", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m1_231", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i32 1), !dbg !53
  %"$v1_234" = bitcast i8* %"$v1_call_233" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$v1_234", %Map_BNum_Int32** %v1, align 8
  %"$v1_235" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_235_236" = bitcast %Map_BNum_Int32* %"$v1_235" to i8*
  %"$_literal_cost_call_237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_41", i8* %"$$v1_235_236")
  %"$v1_238" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_238_239" = bitcast %Map_BNum_Int32* %"$v1_238" to i8*
  %"$_mapsortcost_call_240" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_41", i8* %"$$v1_238_239")
  %"$gasadd_241" = add i64 %"$_literal_cost_call_237", %"$_mapsortcost_call_240"
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 %"$gasadd_241", %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_229"
  %"$consume_246" = sub i64 %"$gasrem_242", %"$gasadd_241"
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$v1_247" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$$v1_247_248" = bitcast %Map_BNum_Int32* %"$v1_247" to i8*
  %"$_literal_cost_call_249" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_41", i8* %"$$v1_247_248")
  %"$gasadd_250" = add i64 %"$_literal_cost_call_249", 1
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 %"$gasadd_250", %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_245"
  %"$consume_255" = sub i64 %"$gasrem_251", %"$gasadd_250"
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$indices_buf_256_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_256_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_256_salloc_load", i64 4)
  %"$indices_buf_256_salloc" = bitcast i8* %"$indices_buf_256_salloc_salloc" to [4 x i8]*
  %"$indices_buf_256" = bitcast [4 x i8]* %"$indices_buf_256_salloc" to i8*
  %"$k1_257" = load %Int32, %Int32* %k1, align 4
  %"$indices_gep_258" = getelementptr i8, i8* %"$indices_buf_256", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_258" to %Int32*
  store %Int32 %"$k1_257", %Int32* %indices_cast, align 4
  %"$execptr_load_259" = load i8*, i8** @_execptr, align 8
  %"$v1_261" = load %Map_BNum_Int32*, %Map_BNum_Int32** %v1, align 8
  %"$update_value_262" = bitcast %Map_BNum_Int32* %"$v1_261" to i8*
  call void @_update_field(i8* %"$execptr_load_259", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$m2_260", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_256", i8* %"$update_value_262"), !dbg !54
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @PullPush(i8* %0) !dbg !55 {
entry:
  %"$_amount_264" = getelementptr i8, i8* %0, i32 0
  %"$_amount_265" = bitcast i8* %"$_amount_264" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_265", align 8
  %"$_origin_266" = getelementptr i8, i8* %0, i32 16
  %"$_origin_267" = bitcast i8* %"$_origin_266" to [20 x i8]*
  %"$_sender_268" = getelementptr i8, i8* %0, i32 36
  %"$_sender_269" = bitcast i8* %"$_sender_268" to [20 x i8]*
  call void @"$PullPush_218"(%Uint128 %_amount, [20 x i8]* %"$_origin_267", [20 x i8]* %"$_sender_269"), !dbg !56
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "map_misc.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$m1_1", scope: !10, file: !2, line: 7, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (BNum) (Int32)", baseType: !13, size: 8, align: 8, dwarfAddressSpace: 0)
!13 = !DIBasicType(name: "Map (BNum) (Int32)", size: 8)
!14 = !DILocation(line: 7, column: 7, scope: !10)
!15 = !DILocation(line: 7, column: 29, scope: !10)
!16 = !DILocalVariable(name: "$m2_2", scope: !10, file: !2, line: 8, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (Int32) (Map (BNum) (Int32))", baseType: !18, size: 8, align: 8, dwarfAddressSpace: 0)
!18 = !DIBasicType(name: "Map (Int32) (Map (BNum) (Int32))", size: 8)
!19 = !DILocation(line: 8, column: 7, scope: !10)
!20 = !DILocation(line: 8, column: 43, scope: !10)
!21 = distinct !DISubprogram(name: "Push", linkageName: "Push", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!22 = !DILocalVariable(name: "k1", scope: !21, file: !2, line: 11, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "BNum", baseType: !24, size: 8, align: 8, dwarfAddressSpace: 0)
!24 = !DIBasicType(name: "BNum", size: 8)
!25 = !DILocation(line: 11, column: 3, scope: !21)
!26 = !DILocation(line: 11, column: 8, scope: !21)
!27 = !DILocalVariable(name: "k2", scope: !21, file: !2, line: 12, type: !23)
!28 = !DILocation(line: 12, column: 3, scope: !21)
!29 = !DILocation(line: 12, column: 8, scope: !21)
!30 = !DILocalVariable(name: "k3", scope: !21, file: !2, line: 13, type: !23)
!31 = !DILocation(line: 13, column: 3, scope: !21)
!32 = !DILocation(line: 13, column: 8, scope: !21)
!33 = !DILocalVariable(name: "v1", scope: !21, file: !2, line: 14, type: !34)
!34 = !DIBasicType(name: "Int32", size: 4)
!35 = !DILocation(line: 14, column: 3, scope: !21)
!36 = !DILocation(line: 14, column: 8, scope: !21)
!37 = !DILocalVariable(name: "v2", scope: !21, file: !2, line: 15, type: !34)
!38 = !DILocation(line: 15, column: 3, scope: !21)
!39 = !DILocation(line: 15, column: 8, scope: !21)
!40 = !DILocalVariable(name: "v3", scope: !21, file: !2, line: 16, type: !34)
!41 = !DILocation(line: 16, column: 3, scope: !21)
!42 = !DILocation(line: 16, column: 8, scope: !21)
!43 = !DILocation(line: 17, column: 3, scope: !21)
!44 = !DILocation(line: 18, column: 3, scope: !21)
!45 = !DILocation(line: 19, column: 3, scope: !21)
!46 = distinct !DISubprogram(name: "Push", linkageName: "Push", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!47 = !DILocation(line: 10, column: 12, scope: !46)
!48 = distinct !DISubprogram(name: "PullPush", linkageName: "PullPush", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!49 = !DILocalVariable(name: "k1", scope: !48, file: !2, line: 23, type: !34)
!50 = !DILocation(line: 23, column: 3, scope: !48)
!51 = !DILocation(line: 23, column: 8, scope: !48)
!52 = !DILocalVariable(name: "v1", scope: !48, file: !2, line: 24, type: !12)
!53 = !DILocation(line: 24, column: 3, scope: !48)
!54 = !DILocation(line: 25, column: 3, scope: !48)
!55 = distinct !DISubprogram(name: "PullPush", linkageName: "PullPush", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!56 = !DILocation(line: 22, column: 12, scope: !55)
