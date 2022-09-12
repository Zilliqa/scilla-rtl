

; gas_remaining: 4001999
; ModuleID = 'Foo'
source_filename = "Foo"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_425" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_426" = type { %ParamDescrString, i32, %"$ParamDescr_425"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%BCQuery = type { i8*, i32 }
%BNumString = type { i8*, i32 }

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
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_43" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_44" to i8*) }
@"$TyDescr_AddrFields_42" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_38"] zeroinitializer
@"$TyDescr_AddrFields_43" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 0, %"$TyDescr_AddrFieldTyp_38"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_38"], [0 x %"$TyDescr_AddrFieldTyp_38"]* @"$TyDescr_AddrFields_42", i32 0, i32 0) }
@"$TyDescr_AddrFields_44" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -3, %"$TyDescr_AddrFieldTyp_38"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_70" = unnamed_addr constant [19 x i8] c"_replicate_contract"
@"$stringlit_75" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_101" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_106" = unnamed_addr constant [10 x i8] c"Replicated"
@"$stringlit_109" = unnamed_addr constant [8 x i8] c"new_addr"
@"$BNumLit_165" = unnamed_addr constant [3 x i8] c"100"
@"$stringlit_190" = unnamed_addr constant [19 x i8] c"_replicate_contract"
@"$stringlit_195" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_198" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_206" = unnamed_addr constant [9 x i8] c"max_block"
@"$stringlit_214" = unnamed_addr constant [4 x i8] c"goal"
@"$stringlit_245" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_250" = unnamed_addr constant [10 x i8] c"Replicated"
@"$stringlit_253" = unnamed_addr constant [8 x i8] c"new_addr"
@"$stringlit_330" = unnamed_addr constant [19 x i8] c"_replicate_contract"
@"$stringlit_335" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_338" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_346" = unnamed_addr constant [9 x i8] c"max_block"
@"$stringlit_354" = unnamed_addr constant [4 x i8] c"goal"
@"$stringlit_385" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_390" = unnamed_addr constant [10 x i8] c"Replicated"
@"$stringlit_393" = unnamed_addr constant [8 x i8] c"new_addr"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_427" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_428" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_429" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_425"] [%"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_427", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_428", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_429", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_430" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_431" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_432" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_bar_433" = unnamed_addr constant [3 x i8] c"bar"
@"$tparams_rep_434" = unnamed_addr constant [4 x %"$ParamDescr_425"] [%"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_430", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_431", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_432", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_bar_433", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_rep_435" = unnamed_addr constant [3 x i8] c"rep"
@"$tpname__amount_436" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_437" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_438" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_cfaddr_439" = unnamed_addr constant [6 x i8] c"cfaddr"
@"$tparams_cfdeploy_440" = unnamed_addr constant [4 x %"$ParamDescr_425"] [%"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_436", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_437", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_438", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_cfaddr_439", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_cfdeploy_441" = unnamed_addr constant [8 x i8] c"cfdeploy"
@"$tpname__amount_442" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_443" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_444" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_cfaddr_445" = unnamed_addr constant [6 x i8] c"cfaddr"
@"$tparams_cfdeploy_incorrect_446" = unnamed_addr constant [4 x %"$ParamDescr_425"] [%"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_442", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_443", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_444", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_425" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_cfaddr_445", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_cfdeploy_incorrect_447" = unnamed_addr constant [18 x i8] c"cfdeploy_incorrect"
@_transition_parameters = constant [3 x %"$TransDescr_426"] [%"$TransDescr_426" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_rep_435", i32 0, i32 0), i32 3 }, i32 4, %"$ParamDescr_425"* getelementptr inbounds ([4 x %"$ParamDescr_425"], [4 x %"$ParamDescr_425"]* @"$tparams_rep_434", i32 0, i32 0) }, %"$TransDescr_426" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_cfdeploy_441", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_425"* getelementptr inbounds ([4 x %"$ParamDescr_425"], [4 x %"$ParamDescr_425"]* @"$tparams_cfdeploy_440", i32 0, i32 0) }, %"$TransDescr_426" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_cfdeploy_incorrect_447", i32 0, i32 0), i32 18 }, i32 4, %"$ParamDescr_425"* getelementptr inbounds ([4 x %"$ParamDescr_425"], [4 x %"$ParamDescr_425"]* @"$tparams_cfdeploy_incorrect_446", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 5, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %entry
  %"$consume_49" = sub i64 %"$gasrem_45", 5
  store i64 %"$consume_49", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_50" = load i64, i64* @_gasrem, align 8
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %entry
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem, align 8
  ret void
}

define internal void @"$rep_55"(%Uint128 %_amount, [20 x i8]* %"$_origin_56", [20 x i8]* %"$_sender_57", [20 x i8]* %"$bar_58") !dbg !11 {
entry:
  %"$bar_131" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$bar_58", [20 x i8]** %"$bar_131", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$bar_131", metadata !12, metadata !DIExpression()), !dbg !14
  %"$_sender_130" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_57", [20 x i8]** %"$_sender_130", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_130", metadata !15, metadata !DIExpression()), !dbg !17
  %"$_origin_129" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_56", [20 x i8]** %"$_origin_129", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_129", metadata !18, metadata !DIExpression()), !dbg !17
  %"$_amount_128" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_128", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_128", metadata !19, metadata !DIExpression()), !dbg !17
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_56", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_57", align 1
  %bar = load [20 x i8], [20 x i8]* %"$bar_58", align 1
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %foo = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %foo, metadata !21, metadata !DIExpression()), !dbg !24
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_62"
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %"$msgobj_69_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_69_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_69_salloc_load", i64 41)
  %"$msgobj_69_salloc" = bitcast i8* %"$msgobj_69_salloc_salloc" to [41 x i8]*
  %"$msgobj_69" = bitcast [41 x i8]* %"$msgobj_69_salloc" to i8*
  store i8 1, i8* %"$msgobj_69", align 1
  %"$msgobj_fname_71" = getelementptr i8, i8* %"$msgobj_69", i32 1
  %"$msgobj_fname_72" = bitcast i8* %"$msgobj_fname_71" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_70", i32 0, i32 0), i32 19 }, %String* %"$msgobj_fname_72", align 8
  %"$msgobj_td_73" = getelementptr i8, i8* %"$msgobj_69", i32 17
  %"$msgobj_td_74" = bitcast i8* %"$msgobj_td_73" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_74", align 8
  %"$msgobj_v_76" = getelementptr i8, i8* %"$msgobj_69", i32 25
  %"$msgobj_v_77" = bitcast i8* %"$msgobj_v_76" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_75", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_77", align 8
  store i8* %"$msgobj_69", i8** %foo, align 8, !dbg !25
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_67"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %foo_addr = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %foo_addr, metadata !26, metadata !DIExpression()), !dbg !27
  %"$execptr_load_84" = load i8*, i8** @_execptr, align 8
  %"$foo_addr_bar_85" = alloca [20 x i8], align 1
  store [20 x i8] %bar, [20 x i8]* %"$foo_addr_bar_85", align 1
  %"$foo_86" = load i8*, i8** %foo, align 8
  %"$foo_addr_call_87" = call [20 x i8]* @_replicate_contract(i8* %"$execptr_load_84", [20 x i8]* %"$foo_addr_bar_85", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", i8* %"$foo_86"), !dbg !27
  %"$foo_addr_89" = load [20 x i8], [20 x i8]* %"$foo_addr_call_87", align 1
  store [20 x i8] %"$foo_addr_89", [20 x i8]* %foo_addr, align 1
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_82"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !28, metadata !DIExpression()), !dbg !31
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$msgobj_100_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_100_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_100_salloc_load", i64 85)
  %"$msgobj_100_salloc" = bitcast i8* %"$msgobj_100_salloc_salloc" to [85 x i8]*
  %"$msgobj_100" = bitcast [85 x i8]* %"$msgobj_100_salloc" to i8*
  store i8 2, i8* %"$msgobj_100", align 1
  %"$msgobj_fname_102" = getelementptr i8, i8* %"$msgobj_100", i32 1
  %"$msgobj_fname_103" = bitcast i8* %"$msgobj_fname_102" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_101", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_103", align 8
  %"$msgobj_td_104" = getelementptr i8, i8* %"$msgobj_100", i32 17
  %"$msgobj_td_105" = bitcast i8* %"$msgobj_td_104" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_105", align 8
  %"$msgobj_v_107" = getelementptr i8, i8* %"$msgobj_100", i32 25
  %"$msgobj_v_108" = bitcast i8* %"$msgobj_v_107" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_106", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_108", align 8
  %"$msgobj_fname_110" = getelementptr i8, i8* %"$msgobj_100", i32 41
  %"$msgobj_fname_111" = bitcast i8* %"$msgobj_fname_110" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_109", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_111", align 8
  %"$msgobj_td_112" = getelementptr i8, i8* %"$msgobj_100", i32 57
  %"$msgobj_td_113" = bitcast i8* %"$msgobj_td_112" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_113", align 8
  %"$foo_addr_114" = load [20 x i8], [20 x i8]* %foo_addr, align 1
  %"$msgobj_v_115" = getelementptr i8, i8* %"$msgobj_100", i32 65
  %"$msgobj_v_116" = bitcast i8* %"$msgobj_v_115" to [20 x i8]*
  store [20 x i8] %"$foo_addr_114", [20 x i8]* %"$msgobj_v_116", align 1
  store i8* %"$msgobj_100", i8** %e, align 8, !dbg !32
  %"$e_118" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_120" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_118")
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 %"$_literal_cost_call_120", %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_98"
  %"$consume_125" = sub i64 %"$gasrem_121", %"$_literal_cost_call_120"
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$execptr_load_126" = load i8*, i8** @_execptr, align 8
  %"$e_127" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_126", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_127"), !dbg !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i8* @_read_blockchain(i8*, %BCQuery, %String)

declare [20 x i8]* @_replicate_contract(i8*, [20 x i8]*, %_TyDescrTy_Typ*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @rep(i8* %0) !dbg !34 {
entry:
  %"$_amount_133" = getelementptr i8, i8* %0, i32 0
  %"$_amount_134" = bitcast i8* %"$_amount_133" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_134", align 8
  %"$_origin_135" = getelementptr i8, i8* %0, i32 16
  %"$_origin_136" = bitcast i8* %"$_origin_135" to [20 x i8]*
  %"$_sender_137" = getelementptr i8, i8* %0, i32 36
  %"$_sender_138" = bitcast i8* %"$_sender_137" to [20 x i8]*
  %"$bar_139" = getelementptr i8, i8* %0, i32 56
  %"$bar_140" = bitcast i8* %"$bar_139" to [20 x i8]*
  call void @"$rep_55"(%Uint128 %_amount, [20 x i8]* %"$_origin_136", [20 x i8]* %"$_sender_138", [20 x i8]* %"$bar_140"), !dbg !35
  ret void
}

define internal void @"$cfdeploy_141"(%Uint128 %_amount, [20 x i8]* %"$_origin_142", [20 x i8]* %"$_sender_143", [20 x i8]* %"$cfaddr_144") !dbg !36 {
entry:
  %"$cfaddr_275" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$cfaddr_144", [20 x i8]** %"$cfaddr_275", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$cfaddr_275", metadata !37, metadata !DIExpression()), !dbg !38
  %"$_sender_274" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_143", [20 x i8]** %"$_sender_274", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_274", metadata !39, metadata !DIExpression()), !dbg !40
  %"$_origin_273" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_142", [20 x i8]** %"$_origin_273", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_273", metadata !41, metadata !DIExpression()), !dbg !40
  %"$_amount_272" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_272", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_272", metadata !42, metadata !DIExpression()), !dbg !40
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_142", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_143", align 1
  %cfaddr = load [20 x i8], [20 x i8]* %"$cfaddr_144", align 1
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %owner = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %owner, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store [20 x i8] %_sender, [20 x i8]* %owner, align 1, !dbg !45
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %max_block = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %max_block, metadata !46, metadata !DIExpression()), !dbg !49
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$execptr_load_166" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_167" = call i8* @_new_bnum(i8* %"$execptr_load_166", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_165", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_167", i8** %max_block, align 8, !dbg !50
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_163"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %goal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %goal, metadata !51, metadata !DIExpression()), !dbg !52
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %goal, align 8, !dbg !53
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m, metadata !54, metadata !DIExpression()), !dbg !55
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$msgobj_189_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_189_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_189_salloc_load", i64 157)
  %"$msgobj_189_salloc" = bitcast i8* %"$msgobj_189_salloc_salloc" to [157 x i8]*
  %"$msgobj_189" = bitcast [157 x i8]* %"$msgobj_189_salloc" to i8*
  store i8 4, i8* %"$msgobj_189", align 1
  %"$msgobj_fname_191" = getelementptr i8, i8* %"$msgobj_189", i32 1
  %"$msgobj_fname_192" = bitcast i8* %"$msgobj_fname_191" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_190", i32 0, i32 0), i32 19 }, %String* %"$msgobj_fname_192", align 8
  %"$msgobj_td_193" = getelementptr i8, i8* %"$msgobj_189", i32 17
  %"$msgobj_td_194" = bitcast i8* %"$msgobj_td_193" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_194", align 8
  %"$msgobj_v_196" = getelementptr i8, i8* %"$msgobj_189", i32 25
  %"$msgobj_v_197" = bitcast i8* %"$msgobj_v_196" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_195", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_197", align 8
  %"$msgobj_fname_199" = getelementptr i8, i8* %"$msgobj_189", i32 41
  %"$msgobj_fname_200" = bitcast i8* %"$msgobj_fname_199" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_198", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_200", align 8
  %"$msgobj_td_201" = getelementptr i8, i8* %"$msgobj_189", i32 57
  %"$msgobj_td_202" = bitcast i8* %"$msgobj_td_201" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_202", align 8
  %"$owner_203" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_204" = getelementptr i8, i8* %"$msgobj_189", i32 65
  %"$msgobj_v_205" = bitcast i8* %"$msgobj_v_204" to [20 x i8]*
  store [20 x i8] %"$owner_203", [20 x i8]* %"$msgobj_v_205", align 1
  %"$msgobj_fname_207" = getelementptr i8, i8* %"$msgobj_189", i32 85
  %"$msgobj_fname_208" = bitcast i8* %"$msgobj_fname_207" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_206", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_208", align 8
  %"$msgobj_td_209" = getelementptr i8, i8* %"$msgobj_189", i32 101
  %"$msgobj_td_210" = bitcast i8* %"$msgobj_td_209" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ** %"$msgobj_td_210", align 8
  %"$max_block_211" = load i8*, i8** %max_block, align 8
  %"$msgobj_v_212" = getelementptr i8, i8* %"$msgobj_189", i32 109
  %"$msgobj_v_213" = bitcast i8* %"$msgobj_v_212" to i8**
  store i8* %"$max_block_211", i8** %"$msgobj_v_213", align 8
  %"$msgobj_fname_215" = getelementptr i8, i8* %"$msgobj_189", i32 117
  %"$msgobj_fname_216" = bitcast i8* %"$msgobj_fname_215" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_214", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_216", align 8
  %"$msgobj_td_217" = getelementptr i8, i8* %"$msgobj_189", i32 133
  %"$msgobj_td_218" = bitcast i8* %"$msgobj_td_217" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_218", align 8
  %"$goal_219" = load %Uint128, %Uint128* %goal, align 8
  %"$msgobj_v_220" = getelementptr i8, i8* %"$msgobj_189", i32 141
  %"$msgobj_v_221" = bitcast i8* %"$msgobj_v_220" to %Uint128*
  store %Uint128 %"$goal_219", %Uint128* %"$msgobj_v_221", align 8
  store i8* %"$msgobj_189", i8** %m, align 8, !dbg !56
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_187"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %newcf_addr = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %newcf_addr, metadata !57, metadata !DIExpression()), !dbg !58
  %"$execptr_load_228" = load i8*, i8** @_execptr, align 8
  %"$newcf_addr_cfaddr_229" = alloca [20 x i8], align 1
  store [20 x i8] %cfaddr, [20 x i8]* %"$newcf_addr_cfaddr_229", align 1
  %"$m_230" = load i8*, i8** %m, align 8
  %"$newcf_addr_call_231" = call [20 x i8]* @_replicate_contract(i8* %"$execptr_load_228", [20 x i8]* %"$newcf_addr_cfaddr_229", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", i8* %"$m_230"), !dbg !58
  %"$newcf_addr_233" = load [20 x i8], [20 x i8]* %"$newcf_addr_call_231", align 1
  store [20 x i8] %"$newcf_addr_233", [20 x i8]* %newcf_addr, align 1
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_226"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !59, metadata !DIExpression()), !dbg !60
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$msgobj_244_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_244_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_244_salloc_load", i64 85)
  %"$msgobj_244_salloc" = bitcast i8* %"$msgobj_244_salloc_salloc" to [85 x i8]*
  %"$msgobj_244" = bitcast [85 x i8]* %"$msgobj_244_salloc" to i8*
  store i8 2, i8* %"$msgobj_244", align 1
  %"$msgobj_fname_246" = getelementptr i8, i8* %"$msgobj_244", i32 1
  %"$msgobj_fname_247" = bitcast i8* %"$msgobj_fname_246" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_245", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_247", align 8
  %"$msgobj_td_248" = getelementptr i8, i8* %"$msgobj_244", i32 17
  %"$msgobj_td_249" = bitcast i8* %"$msgobj_td_248" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_249", align 8
  %"$msgobj_v_251" = getelementptr i8, i8* %"$msgobj_244", i32 25
  %"$msgobj_v_252" = bitcast i8* %"$msgobj_v_251" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_250", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_252", align 8
  %"$msgobj_fname_254" = getelementptr i8, i8* %"$msgobj_244", i32 41
  %"$msgobj_fname_255" = bitcast i8* %"$msgobj_fname_254" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_253", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_255", align 8
  %"$msgobj_td_256" = getelementptr i8, i8* %"$msgobj_244", i32 57
  %"$msgobj_td_257" = bitcast i8* %"$msgobj_td_256" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_257", align 8
  %"$newcf_addr_258" = load [20 x i8], [20 x i8]* %newcf_addr, align 1
  %"$msgobj_v_259" = getelementptr i8, i8* %"$msgobj_244", i32 65
  %"$msgobj_v_260" = bitcast i8* %"$msgobj_v_259" to [20 x i8]*
  store [20 x i8] %"$newcf_addr_258", [20 x i8]* %"$msgobj_v_260", align 1
  store i8* %"$msgobj_244", i8** %e, align 8, !dbg !61
  %"$e_262" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_264" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_262")
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 %"$_literal_cost_call_264", %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_242"
  %"$consume_269" = sub i64 %"$gasrem_265", %"$_literal_cost_call_264"
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %"$execptr_load_270" = load i8*, i8** @_execptr, align 8
  %"$e_271" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_270", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_271"), !dbg !62
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

define void @cfdeploy(i8* %0) !dbg !63 {
entry:
  %"$_amount_277" = getelementptr i8, i8* %0, i32 0
  %"$_amount_278" = bitcast i8* %"$_amount_277" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_278", align 8
  %"$_origin_279" = getelementptr i8, i8* %0, i32 16
  %"$_origin_280" = bitcast i8* %"$_origin_279" to [20 x i8]*
  %"$_sender_281" = getelementptr i8, i8* %0, i32 36
  %"$_sender_282" = bitcast i8* %"$_sender_281" to [20 x i8]*
  %"$cfaddr_283" = getelementptr i8, i8* %0, i32 56
  %"$cfaddr_284" = bitcast i8* %"$cfaddr_283" to [20 x i8]*
  call void @"$cfdeploy_141"(%Uint128 %_amount, [20 x i8]* %"$_origin_280", [20 x i8]* %"$_sender_282", [20 x i8]* %"$cfaddr_284"), !dbg !64
  ret void
}

define internal void @"$cfdeploy_incorrect_285"(%Uint128 %_amount, [20 x i8]* %"$_origin_286", [20 x i8]* %"$_sender_287", [20 x i8]* %"$cfaddr_288") !dbg !65 {
entry:
  %"$cfaddr_415" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$cfaddr_288", [20 x i8]** %"$cfaddr_415", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$cfaddr_415", metadata !66, metadata !DIExpression()), !dbg !67
  %"$_sender_414" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_287", [20 x i8]** %"$_sender_414", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_414", metadata !68, metadata !DIExpression()), !dbg !69
  %"$_origin_413" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_286", [20 x i8]** %"$_origin_413", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_413", metadata !70, metadata !DIExpression()), !dbg !69
  %"$_amount_412" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_412", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_412", metadata !71, metadata !DIExpression()), !dbg !69
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_286", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_287", align 1
  %cfaddr = load [20 x i8], [20 x i8]* %"$cfaddr_288", align 1
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %owner = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %owner, metadata !72, metadata !DIExpression()), !dbg !73
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  store [20 x i8] %_sender, [20 x i8]* %owner, align 1, !dbg !74
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %max_block = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %max_block, metadata !75, metadata !DIExpression()), !dbg !77
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %max_block, align 4, !dbg !78
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %goal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %goal, metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_312"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %goal, align 8, !dbg !81
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m, metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$msgobj_329_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_329_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_329_salloc_load", i64 153)
  %"$msgobj_329_salloc" = bitcast i8* %"$msgobj_329_salloc_salloc" to [153 x i8]*
  %"$msgobj_329" = bitcast [153 x i8]* %"$msgobj_329_salloc" to i8*
  store i8 4, i8* %"$msgobj_329", align 1
  %"$msgobj_fname_331" = getelementptr i8, i8* %"$msgobj_329", i32 1
  %"$msgobj_fname_332" = bitcast i8* %"$msgobj_fname_331" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_330", i32 0, i32 0), i32 19 }, %String* %"$msgobj_fname_332", align 8
  %"$msgobj_td_333" = getelementptr i8, i8* %"$msgobj_329", i32 17
  %"$msgobj_td_334" = bitcast i8* %"$msgobj_td_333" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_334", align 8
  %"$msgobj_v_336" = getelementptr i8, i8* %"$msgobj_329", i32 25
  %"$msgobj_v_337" = bitcast i8* %"$msgobj_v_336" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_335", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_337", align 8
  %"$msgobj_fname_339" = getelementptr i8, i8* %"$msgobj_329", i32 41
  %"$msgobj_fname_340" = bitcast i8* %"$msgobj_fname_339" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_338", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_340", align 8
  %"$msgobj_td_341" = getelementptr i8, i8* %"$msgobj_329", i32 57
  %"$msgobj_td_342" = bitcast i8* %"$msgobj_td_341" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_342", align 8
  %"$owner_343" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_344" = getelementptr i8, i8* %"$msgobj_329", i32 65
  %"$msgobj_v_345" = bitcast i8* %"$msgobj_v_344" to [20 x i8]*
  store [20 x i8] %"$owner_343", [20 x i8]* %"$msgobj_v_345", align 1
  %"$msgobj_fname_347" = getelementptr i8, i8* %"$msgobj_329", i32 85
  %"$msgobj_fname_348" = bitcast i8* %"$msgobj_fname_347" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_346", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_348", align 8
  %"$msgobj_td_349" = getelementptr i8, i8* %"$msgobj_329", i32 101
  %"$msgobj_td_350" = bitcast i8* %"$msgobj_td_349" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ** %"$msgobj_td_350", align 8
  %"$max_block_351" = load %Uint32, %Uint32* %max_block, align 4
  %"$msgobj_v_352" = getelementptr i8, i8* %"$msgobj_329", i32 109
  %"$msgobj_v_353" = bitcast i8* %"$msgobj_v_352" to %Uint32*
  store %Uint32 %"$max_block_351", %Uint32* %"$msgobj_v_353", align 4
  %"$msgobj_fname_355" = getelementptr i8, i8* %"$msgobj_329", i32 113
  %"$msgobj_fname_356" = bitcast i8* %"$msgobj_fname_355" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_354", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_356", align 8
  %"$msgobj_td_357" = getelementptr i8, i8* %"$msgobj_329", i32 129
  %"$msgobj_td_358" = bitcast i8* %"$msgobj_td_357" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_358", align 8
  %"$goal_359" = load %Uint128, %Uint128* %goal, align 8
  %"$msgobj_v_360" = getelementptr i8, i8* %"$msgobj_329", i32 137
  %"$msgobj_v_361" = bitcast i8* %"$msgobj_v_360" to %Uint128*
  store %Uint128 %"$goal_359", %Uint128* %"$msgobj_v_361", align 8
  store i8* %"$msgobj_329", i8** %m, align 8, !dbg !84
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_327"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %newcf_addr = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %newcf_addr, metadata !85, metadata !DIExpression()), !dbg !86
  %"$execptr_load_368" = load i8*, i8** @_execptr, align 8
  %"$newcf_addr_cfaddr_369" = alloca [20 x i8], align 1
  store [20 x i8] %cfaddr, [20 x i8]* %"$newcf_addr_cfaddr_369", align 1
  %"$m_370" = load i8*, i8** %m, align 8
  %"$newcf_addr_call_371" = call [20 x i8]* @_replicate_contract(i8* %"$execptr_load_368", [20 x i8]* %"$newcf_addr_cfaddr_369", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", i8* %"$m_370"), !dbg !86
  %"$newcf_addr_373" = load [20 x i8], [20 x i8]* %"$newcf_addr_call_371", align 1
  store [20 x i8] %"$newcf_addr_373", [20 x i8]* %newcf_addr, align 1
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_366"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !87, metadata !DIExpression()), !dbg !88
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$msgobj_384_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_384_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_384_salloc_load", i64 85)
  %"$msgobj_384_salloc" = bitcast i8* %"$msgobj_384_salloc_salloc" to [85 x i8]*
  %"$msgobj_384" = bitcast [85 x i8]* %"$msgobj_384_salloc" to i8*
  store i8 2, i8* %"$msgobj_384", align 1
  %"$msgobj_fname_386" = getelementptr i8, i8* %"$msgobj_384", i32 1
  %"$msgobj_fname_387" = bitcast i8* %"$msgobj_fname_386" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_385", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_387", align 8
  %"$msgobj_td_388" = getelementptr i8, i8* %"$msgobj_384", i32 17
  %"$msgobj_td_389" = bitcast i8* %"$msgobj_td_388" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_389", align 8
  %"$msgobj_v_391" = getelementptr i8, i8* %"$msgobj_384", i32 25
  %"$msgobj_v_392" = bitcast i8* %"$msgobj_v_391" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_390", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_392", align 8
  %"$msgobj_fname_394" = getelementptr i8, i8* %"$msgobj_384", i32 41
  %"$msgobj_fname_395" = bitcast i8* %"$msgobj_fname_394" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_393", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_395", align 8
  %"$msgobj_td_396" = getelementptr i8, i8* %"$msgobj_384", i32 57
  %"$msgobj_td_397" = bitcast i8* %"$msgobj_td_396" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_397", align 8
  %"$newcf_addr_398" = load [20 x i8], [20 x i8]* %newcf_addr, align 1
  %"$msgobj_v_399" = getelementptr i8, i8* %"$msgobj_384", i32 65
  %"$msgobj_v_400" = bitcast i8* %"$msgobj_v_399" to [20 x i8]*
  store [20 x i8] %"$newcf_addr_398", [20 x i8]* %"$msgobj_v_400", align 1
  store i8* %"$msgobj_384", i8** %e, align 8, !dbg !89
  %"$e_402" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_404" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_402")
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 %"$_literal_cost_call_404", %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_382"
  %"$consume_409" = sub i64 %"$gasrem_405", %"$_literal_cost_call_404"
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$execptr_load_410" = load i8*, i8** @_execptr, align 8
  %"$e_411" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_410", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_411"), !dbg !90
  ret void
}

define void @cfdeploy_incorrect(i8* %0) !dbg !91 {
entry:
  %"$_amount_417" = getelementptr i8, i8* %0, i32 0
  %"$_amount_418" = bitcast i8* %"$_amount_417" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_418", align 8
  %"$_origin_419" = getelementptr i8, i8* %0, i32 16
  %"$_origin_420" = bitcast i8* %"$_origin_419" to [20 x i8]*
  %"$_sender_421" = getelementptr i8, i8* %0, i32 36
  %"$_sender_422" = bitcast i8* %"$_sender_421" to [20 x i8]*
  %"$cfaddr_423" = getelementptr i8, i8* %0, i32 56
  %"$cfaddr_424" = bitcast i8* %"$cfaddr_423" to [20 x i8]*
  call void @"$cfdeploy_incorrect_285"(%Uint128 %_amount, [20 x i8]* %"$_origin_420", [20 x i8]* %"$_sender_422", [20 x i8]* %"$cfaddr_424"), !dbg !92
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "replicate.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "rep", linkageName: "rep", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "bar", scope: !11, file: !2, line: 5, type: !13)
!13 = !DIBasicType(name: "ByStr20 with contract end", size: 20)
!14 = !DILocation(line: 5, column: 17, scope: !11)
!15 = !DILocalVariable(name: "_sender", scope: !11, file: !2, line: 5, type: !16)
!16 = !DIBasicType(name: "ByStr20 with end", size: 20)
!17 = !DILocation(line: 5, column: 12, scope: !11)
!18 = !DILocalVariable(name: "_origin", scope: !11, file: !2, line: 5, type: !16)
!19 = !DILocalVariable(name: "_amount", scope: !11, file: !2, line: 5, type: !20)
!20 = !DIBasicType(name: "Uint128", size: 16)
!21 = !DILocalVariable(name: "foo", scope: !11, file: !2, line: 6, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ReplicateContr", baseType: !23, size: 8, align: 8, dwarfAddressSpace: 0)
!23 = !DIBasicType(name: "ReplicateContr", size: 8)
!24 = !DILocation(line: 6, column: 3, scope: !11)
!25 = !DILocation(line: 6, column: 9, scope: !11)
!26 = !DILocalVariable(name: "foo_addr", scope: !11, file: !2, line: 7, type: !13)
!27 = !DILocation(line: 7, column: 3, scope: !11)
!28 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 8, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !30, size: 8, align: 8, dwarfAddressSpace: 0)
!30 = !DIBasicType(name: "Event", size: 8)
!31 = !DILocation(line: 8, column: 3, scope: !11)
!32 = !DILocation(line: 8, column: 7, scope: !11)
!33 = !DILocation(line: 9, column: 3, scope: !11)
!34 = distinct !DISubprogram(name: "rep", linkageName: "rep", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!35 = !DILocation(line: 5, column: 12, scope: !34)
!36 = distinct !DISubprogram(name: "cfdeploy", linkageName: "cfdeploy", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!37 = !DILocalVariable(name: "cfaddr", scope: !36, file: !2, line: 12, type: !13)
!38 = !DILocation(line: 12, column: 22, scope: !36)
!39 = !DILocalVariable(name: "_sender", scope: !36, file: !2, line: 12, type: !16)
!40 = !DILocation(line: 12, column: 12, scope: !36)
!41 = !DILocalVariable(name: "_origin", scope: !36, file: !2, line: 12, type: !16)
!42 = !DILocalVariable(name: "_amount", scope: !36, file: !2, line: 12, type: !20)
!43 = !DILocalVariable(name: "owner", scope: !36, file: !2, line: 13, type: !16)
!44 = !DILocation(line: 13, column: 3, scope: !36)
!45 = !DILocation(line: 13, column: 11, scope: !36)
!46 = !DILocalVariable(name: "max_block", scope: !36, file: !2, line: 14, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "BNum", baseType: !48, size: 8, align: 8, dwarfAddressSpace: 0)
!48 = !DIBasicType(name: "BNum", size: 8)
!49 = !DILocation(line: 14, column: 3, scope: !36)
!50 = !DILocation(line: 14, column: 15, scope: !36)
!51 = !DILocalVariable(name: "goal", scope: !36, file: !2, line: 15, type: !20)
!52 = !DILocation(line: 15, column: 3, scope: !36)
!53 = !DILocation(line: 15, column: 10, scope: !36)
!54 = !DILocalVariable(name: "m", scope: !36, file: !2, line: 16, type: !22)
!55 = !DILocation(line: 16, column: 3, scope: !36)
!56 = !DILocation(line: 16, column: 7, scope: !36)
!57 = !DILocalVariable(name: "newcf_addr", scope: !36, file: !2, line: 17, type: !13)
!58 = !DILocation(line: 17, column: 3, scope: !36)
!59 = !DILocalVariable(name: "e", scope: !36, file: !2, line: 18, type: !29)
!60 = !DILocation(line: 18, column: 3, scope: !36)
!61 = !DILocation(line: 18, column: 7, scope: !36)
!62 = !DILocation(line: 19, column: 3, scope: !36)
!63 = distinct !DISubprogram(name: "cfdeploy", linkageName: "cfdeploy", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!64 = !DILocation(line: 12, column: 12, scope: !63)
!65 = distinct !DISubprogram(name: "cfdeploy_incorrect", linkageName: "cfdeploy_incorrect", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!66 = !DILocalVariable(name: "cfaddr", scope: !65, file: !2, line: 22, type: !13)
!67 = !DILocation(line: 22, column: 32, scope: !65)
!68 = !DILocalVariable(name: "_sender", scope: !65, file: !2, line: 22, type: !16)
!69 = !DILocation(line: 22, column: 12, scope: !65)
!70 = !DILocalVariable(name: "_origin", scope: !65, file: !2, line: 22, type: !16)
!71 = !DILocalVariable(name: "_amount", scope: !65, file: !2, line: 22, type: !20)
!72 = !DILocalVariable(name: "owner", scope: !65, file: !2, line: 23, type: !16)
!73 = !DILocation(line: 23, column: 3, scope: !65)
!74 = !DILocation(line: 23, column: 11, scope: !65)
!75 = !DILocalVariable(name: "max_block", scope: !65, file: !2, line: 25, type: !76)
!76 = !DIBasicType(name: "Uint32", size: 4)
!77 = !DILocation(line: 25, column: 3, scope: !65)
!78 = !DILocation(line: 25, column: 15, scope: !65)
!79 = !DILocalVariable(name: "goal", scope: !65, file: !2, line: 26, type: !20)
!80 = !DILocation(line: 26, column: 3, scope: !65)
!81 = !DILocation(line: 26, column: 10, scope: !65)
!82 = !DILocalVariable(name: "m", scope: !65, file: !2, line: 27, type: !22)
!83 = !DILocation(line: 27, column: 3, scope: !65)
!84 = !DILocation(line: 27, column: 7, scope: !65)
!85 = !DILocalVariable(name: "newcf_addr", scope: !65, file: !2, line: 28, type: !13)
!86 = !DILocation(line: 28, column: 3, scope: !65)
!87 = !DILocalVariable(name: "e", scope: !65, file: !2, line: 29, type: !29)
!88 = !DILocation(line: 29, column: 3, scope: !65)
!89 = !DILocation(line: 29, column: 7, scope: !65)
!90 = !DILocation(line: 30, column: 3, scope: !65)
!91 = distinct !DISubprogram(name: "cfdeploy_incorrect", linkageName: "cfdeploy_incorrect", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!92 = !DILocation(line: 22, column: 12, scope: !91)
