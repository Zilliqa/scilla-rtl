

; gas_remaining: 4001999
; ModuleID = 'Foo'
source_filename = "Foo"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_413" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_414" = type { %ParamDescrString, i32, %"$ParamDescr_413"* }
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
@"$BNumLit_161" = unnamed_addr constant [3 x i8] c"100"
@"$stringlit_186" = unnamed_addr constant [19 x i8] c"_replicate_contract"
@"$stringlit_191" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_194" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_202" = unnamed_addr constant [9 x i8] c"max_block"
@"$stringlit_210" = unnamed_addr constant [4 x i8] c"goal"
@"$stringlit_241" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_246" = unnamed_addr constant [10 x i8] c"Replicated"
@"$stringlit_249" = unnamed_addr constant [8 x i8] c"new_addr"
@"$stringlit_322" = unnamed_addr constant [19 x i8] c"_replicate_contract"
@"$stringlit_327" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_330" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_338" = unnamed_addr constant [9 x i8] c"max_block"
@"$stringlit_346" = unnamed_addr constant [4 x i8] c"goal"
@"$stringlit_377" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_382" = unnamed_addr constant [10 x i8] c"Replicated"
@"$stringlit_385" = unnamed_addr constant [8 x i8] c"new_addr"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_415" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_416" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_417" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_413"] [%"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_415", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_416", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_417", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_418" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_419" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_420" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_bar_421" = unnamed_addr constant [3 x i8] c"bar"
@"$tparams_rep_422" = unnamed_addr constant [4 x %"$ParamDescr_413"] [%"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_418", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_419", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_420", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_bar_421", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_rep_423" = unnamed_addr constant [3 x i8] c"rep"
@"$tpname__amount_424" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_425" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_426" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_cfaddr_427" = unnamed_addr constant [6 x i8] c"cfaddr"
@"$tparams_cfdeploy_428" = unnamed_addr constant [4 x %"$ParamDescr_413"] [%"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_424", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_425", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_426", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_cfaddr_427", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_cfdeploy_429" = unnamed_addr constant [8 x i8] c"cfdeploy"
@"$tpname__amount_430" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_431" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_432" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_cfaddr_433" = unnamed_addr constant [6 x i8] c"cfaddr"
@"$tparams_cfdeploy_incorrect_434" = unnamed_addr constant [4 x %"$ParamDescr_413"] [%"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_430", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_431", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_432", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_413" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_cfaddr_433", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_cfdeploy_incorrect_435" = unnamed_addr constant [18 x i8] c"cfdeploy_incorrect"
@_transition_parameters = constant [3 x %"$TransDescr_414"] [%"$TransDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_rep_423", i32 0, i32 0), i32 3 }, i32 4, %"$ParamDescr_413"* getelementptr inbounds ([4 x %"$ParamDescr_413"], [4 x %"$ParamDescr_413"]* @"$tparams_rep_422", i32 0, i32 0) }, %"$TransDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_cfdeploy_429", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_413"* getelementptr inbounds ([4 x %"$ParamDescr_413"], [4 x %"$ParamDescr_413"]* @"$tparams_cfdeploy_428", i32 0, i32 0) }, %"$TransDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_cfdeploy_incorrect_435", i32 0, i32 0), i32 18 }, i32 4, %"$ParamDescr_413"* getelementptr inbounds ([4 x %"$ParamDescr_413"], [4 x %"$ParamDescr_413"]* @"$tparams_cfdeploy_incorrect_434", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
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

define internal void @"$rep_55"(%Uint128 %_amount, [20 x i8]* %"$_origin_56", [20 x i8]* %"$_sender_57", [20 x i8]* %"$bar_58") {
entry:
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
  store i8* %"$msgobj_69", i8** %foo, align 8
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
  %"$execptr_load_84" = load i8*, i8** @_execptr, align 8
  %"$foo_addr_bar_85" = alloca [20 x i8], align 1
  store [20 x i8] %bar, [20 x i8]* %"$foo_addr_bar_85", align 1
  %"$foo_86" = load i8*, i8** %foo, align 8
  %"$foo_addr_call_87" = call [20 x i8]* @_replicate_contract(i8* %"$execptr_load_84", [20 x i8]* %"$foo_addr_bar_85", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", i8* %"$foo_86")
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
  store i8* %"$msgobj_100", i8** %e, align 8
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
  call void @_event(i8* %"$execptr_load_126", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_127")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i8* @_read_blockchain(i8*, %BCQuery, %String)

declare [20 x i8]* @_replicate_contract(i8*, [20 x i8]*, %_TyDescrTy_Typ*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @rep(i8* %0) {
entry:
  %"$_amount_129" = getelementptr i8, i8* %0, i32 0
  %"$_amount_130" = bitcast i8* %"$_amount_129" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_130", align 8
  %"$_origin_131" = getelementptr i8, i8* %0, i32 16
  %"$_origin_132" = bitcast i8* %"$_origin_131" to [20 x i8]*
  %"$_sender_133" = getelementptr i8, i8* %0, i32 36
  %"$_sender_134" = bitcast i8* %"$_sender_133" to [20 x i8]*
  %"$bar_135" = getelementptr i8, i8* %0, i32 56
  %"$bar_136" = bitcast i8* %"$bar_135" to [20 x i8]*
  call void @"$rep_55"(%Uint128 %_amount, [20 x i8]* %"$_origin_132", [20 x i8]* %"$_sender_134", [20 x i8]* %"$bar_136")
  ret void
}

define internal void @"$cfdeploy_137"(%Uint128 %_amount, [20 x i8]* %"$_origin_138", [20 x i8]* %"$_sender_139", [20 x i8]* %"$cfaddr_140") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_138", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_139", align 1
  %cfaddr = load [20 x i8], [20 x i8]* %"$cfaddr_140", align 1
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %entry
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %owner = alloca [20 x i8], align 1
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store [20 x i8] %_sender, [20 x i8]* %owner, align 1
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %max_block = alloca i8*, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$execptr_load_162" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_163" = call i8* @_new_bnum(i8* %"$execptr_load_162", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_161", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_163", i8** %max_block, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_159"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %goal = alloca %Uint128, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %goal, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$msgobj_185_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_185_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_185_salloc_load", i64 157)
  %"$msgobj_185_salloc" = bitcast i8* %"$msgobj_185_salloc_salloc" to [157 x i8]*
  %"$msgobj_185" = bitcast [157 x i8]* %"$msgobj_185_salloc" to i8*
  store i8 4, i8* %"$msgobj_185", align 1
  %"$msgobj_fname_187" = getelementptr i8, i8* %"$msgobj_185", i32 1
  %"$msgobj_fname_188" = bitcast i8* %"$msgobj_fname_187" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_186", i32 0, i32 0), i32 19 }, %String* %"$msgobj_fname_188", align 8
  %"$msgobj_td_189" = getelementptr i8, i8* %"$msgobj_185", i32 17
  %"$msgobj_td_190" = bitcast i8* %"$msgobj_td_189" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_190", align 8
  %"$msgobj_v_192" = getelementptr i8, i8* %"$msgobj_185", i32 25
  %"$msgobj_v_193" = bitcast i8* %"$msgobj_v_192" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_191", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_193", align 8
  %"$msgobj_fname_195" = getelementptr i8, i8* %"$msgobj_185", i32 41
  %"$msgobj_fname_196" = bitcast i8* %"$msgobj_fname_195" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_194", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_196", align 8
  %"$msgobj_td_197" = getelementptr i8, i8* %"$msgobj_185", i32 57
  %"$msgobj_td_198" = bitcast i8* %"$msgobj_td_197" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_198", align 8
  %"$owner_199" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_200" = getelementptr i8, i8* %"$msgobj_185", i32 65
  %"$msgobj_v_201" = bitcast i8* %"$msgobj_v_200" to [20 x i8]*
  store [20 x i8] %"$owner_199", [20 x i8]* %"$msgobj_v_201", align 1
  %"$msgobj_fname_203" = getelementptr i8, i8* %"$msgobj_185", i32 85
  %"$msgobj_fname_204" = bitcast i8* %"$msgobj_fname_203" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_202", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_204", align 8
  %"$msgobj_td_205" = getelementptr i8, i8* %"$msgobj_185", i32 101
  %"$msgobj_td_206" = bitcast i8* %"$msgobj_td_205" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ** %"$msgobj_td_206", align 8
  %"$max_block_207" = load i8*, i8** %max_block, align 8
  %"$msgobj_v_208" = getelementptr i8, i8* %"$msgobj_185", i32 109
  %"$msgobj_v_209" = bitcast i8* %"$msgobj_v_208" to i8**
  store i8* %"$max_block_207", i8** %"$msgobj_v_209", align 8
  %"$msgobj_fname_211" = getelementptr i8, i8* %"$msgobj_185", i32 117
  %"$msgobj_fname_212" = bitcast i8* %"$msgobj_fname_211" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_210", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_212", align 8
  %"$msgobj_td_213" = getelementptr i8, i8* %"$msgobj_185", i32 133
  %"$msgobj_td_214" = bitcast i8* %"$msgobj_td_213" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_214", align 8
  %"$goal_215" = load %Uint128, %Uint128* %goal, align 8
  %"$msgobj_v_216" = getelementptr i8, i8* %"$msgobj_185", i32 141
  %"$msgobj_v_217" = bitcast i8* %"$msgobj_v_216" to %Uint128*
  store %Uint128 %"$goal_215", %Uint128* %"$msgobj_v_217", align 8
  store i8* %"$msgobj_185", i8** %m, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_183"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %newcf_addr = alloca [20 x i8], align 1
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$newcf_addr_cfaddr_225" = alloca [20 x i8], align 1
  store [20 x i8] %cfaddr, [20 x i8]* %"$newcf_addr_cfaddr_225", align 1
  %"$m_226" = load i8*, i8** %m, align 8
  %"$newcf_addr_call_227" = call [20 x i8]* @_replicate_contract(i8* %"$execptr_load_224", [20 x i8]* %"$newcf_addr_cfaddr_225", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", i8* %"$m_226")
  %"$newcf_addr_229" = load [20 x i8], [20 x i8]* %"$newcf_addr_call_227", align 1
  store [20 x i8] %"$newcf_addr_229", [20 x i8]* %newcf_addr, align 1
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_222"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$msgobj_240_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_240_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_240_salloc_load", i64 85)
  %"$msgobj_240_salloc" = bitcast i8* %"$msgobj_240_salloc_salloc" to [85 x i8]*
  %"$msgobj_240" = bitcast [85 x i8]* %"$msgobj_240_salloc" to i8*
  store i8 2, i8* %"$msgobj_240", align 1
  %"$msgobj_fname_242" = getelementptr i8, i8* %"$msgobj_240", i32 1
  %"$msgobj_fname_243" = bitcast i8* %"$msgobj_fname_242" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_241", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_243", align 8
  %"$msgobj_td_244" = getelementptr i8, i8* %"$msgobj_240", i32 17
  %"$msgobj_td_245" = bitcast i8* %"$msgobj_td_244" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_245", align 8
  %"$msgobj_v_247" = getelementptr i8, i8* %"$msgobj_240", i32 25
  %"$msgobj_v_248" = bitcast i8* %"$msgobj_v_247" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_246", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_248", align 8
  %"$msgobj_fname_250" = getelementptr i8, i8* %"$msgobj_240", i32 41
  %"$msgobj_fname_251" = bitcast i8* %"$msgobj_fname_250" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_249", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_251", align 8
  %"$msgobj_td_252" = getelementptr i8, i8* %"$msgobj_240", i32 57
  %"$msgobj_td_253" = bitcast i8* %"$msgobj_td_252" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_253", align 8
  %"$newcf_addr_254" = load [20 x i8], [20 x i8]* %newcf_addr, align 1
  %"$msgobj_v_255" = getelementptr i8, i8* %"$msgobj_240", i32 65
  %"$msgobj_v_256" = bitcast i8* %"$msgobj_v_255" to [20 x i8]*
  store [20 x i8] %"$newcf_addr_254", [20 x i8]* %"$msgobj_v_256", align 1
  store i8* %"$msgobj_240", i8** %e, align 8
  %"$e_258" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_260" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_258")
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 %"$_literal_cost_call_260", %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_238"
  %"$consume_265" = sub i64 %"$gasrem_261", %"$_literal_cost_call_260"
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$execptr_load_266" = load i8*, i8** @_execptr, align 8
  %"$e_267" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_266", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_267")
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

define void @cfdeploy(i8* %0) {
entry:
  %"$_amount_269" = getelementptr i8, i8* %0, i32 0
  %"$_amount_270" = bitcast i8* %"$_amount_269" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_270", align 8
  %"$_origin_271" = getelementptr i8, i8* %0, i32 16
  %"$_origin_272" = bitcast i8* %"$_origin_271" to [20 x i8]*
  %"$_sender_273" = getelementptr i8, i8* %0, i32 36
  %"$_sender_274" = bitcast i8* %"$_sender_273" to [20 x i8]*
  %"$cfaddr_275" = getelementptr i8, i8* %0, i32 56
  %"$cfaddr_276" = bitcast i8* %"$cfaddr_275" to [20 x i8]*
  call void @"$cfdeploy_137"(%Uint128 %_amount, [20 x i8]* %"$_origin_272", [20 x i8]* %"$_sender_274", [20 x i8]* %"$cfaddr_276")
  ret void
}

define internal void @"$cfdeploy_incorrect_277"(%Uint128 %_amount, [20 x i8]* %"$_origin_278", [20 x i8]* %"$_sender_279", [20 x i8]* %"$cfaddr_280") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_278", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_279", align 1
  %cfaddr = load [20 x i8], [20 x i8]* %"$cfaddr_280", align 1
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %entry
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %owner = alloca [20 x i8], align 1
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  store [20 x i8] %_sender, [20 x i8]* %owner, align 1
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %max_block = alloca %Uint32, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %max_block, align 4
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %goal = alloca %Uint128, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %goal, align 8
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_309"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_314"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$msgobj_321_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_321_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_321_salloc_load", i64 153)
  %"$msgobj_321_salloc" = bitcast i8* %"$msgobj_321_salloc_salloc" to [153 x i8]*
  %"$msgobj_321" = bitcast [153 x i8]* %"$msgobj_321_salloc" to i8*
  store i8 4, i8* %"$msgobj_321", align 1
  %"$msgobj_fname_323" = getelementptr i8, i8* %"$msgobj_321", i32 1
  %"$msgobj_fname_324" = bitcast i8* %"$msgobj_fname_323" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_322", i32 0, i32 0), i32 19 }, %String* %"$msgobj_fname_324", align 8
  %"$msgobj_td_325" = getelementptr i8, i8* %"$msgobj_321", i32 17
  %"$msgobj_td_326" = bitcast i8* %"$msgobj_td_325" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_326", align 8
  %"$msgobj_v_328" = getelementptr i8, i8* %"$msgobj_321", i32 25
  %"$msgobj_v_329" = bitcast i8* %"$msgobj_v_328" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_327", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_329", align 8
  %"$msgobj_fname_331" = getelementptr i8, i8* %"$msgobj_321", i32 41
  %"$msgobj_fname_332" = bitcast i8* %"$msgobj_fname_331" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_330", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_332", align 8
  %"$msgobj_td_333" = getelementptr i8, i8* %"$msgobj_321", i32 57
  %"$msgobj_td_334" = bitcast i8* %"$msgobj_td_333" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_334", align 8
  %"$owner_335" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_336" = getelementptr i8, i8* %"$msgobj_321", i32 65
  %"$msgobj_v_337" = bitcast i8* %"$msgobj_v_336" to [20 x i8]*
  store [20 x i8] %"$owner_335", [20 x i8]* %"$msgobj_v_337", align 1
  %"$msgobj_fname_339" = getelementptr i8, i8* %"$msgobj_321", i32 85
  %"$msgobj_fname_340" = bitcast i8* %"$msgobj_fname_339" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_338", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_340", align 8
  %"$msgobj_td_341" = getelementptr i8, i8* %"$msgobj_321", i32 101
  %"$msgobj_td_342" = bitcast i8* %"$msgobj_td_341" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ** %"$msgobj_td_342", align 8
  %"$max_block_343" = load %Uint32, %Uint32* %max_block, align 4
  %"$msgobj_v_344" = getelementptr i8, i8* %"$msgobj_321", i32 109
  %"$msgobj_v_345" = bitcast i8* %"$msgobj_v_344" to %Uint32*
  store %Uint32 %"$max_block_343", %Uint32* %"$msgobj_v_345", align 4
  %"$msgobj_fname_347" = getelementptr i8, i8* %"$msgobj_321", i32 113
  %"$msgobj_fname_348" = bitcast i8* %"$msgobj_fname_347" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_346", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_348", align 8
  %"$msgobj_td_349" = getelementptr i8, i8* %"$msgobj_321", i32 129
  %"$msgobj_td_350" = bitcast i8* %"$msgobj_td_349" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_350", align 8
  %"$goal_351" = load %Uint128, %Uint128* %goal, align 8
  %"$msgobj_v_352" = getelementptr i8, i8* %"$msgobj_321", i32 137
  %"$msgobj_v_353" = bitcast i8* %"$msgobj_v_352" to %Uint128*
  store %Uint128 %"$goal_351", %Uint128* %"$msgobj_v_353", align 8
  store i8* %"$msgobj_321", i8** %m, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_319"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %newcf_addr = alloca [20 x i8], align 1
  %"$execptr_load_360" = load i8*, i8** @_execptr, align 8
  %"$newcf_addr_cfaddr_361" = alloca [20 x i8], align 1
  store [20 x i8] %cfaddr, [20 x i8]* %"$newcf_addr_cfaddr_361", align 1
  %"$m_362" = load i8*, i8** %m, align 8
  %"$newcf_addr_call_363" = call [20 x i8]* @_replicate_contract(i8* %"$execptr_load_360", [20 x i8]* %"$newcf_addr_cfaddr_361", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", i8* %"$m_362")
  %"$newcf_addr_365" = load [20 x i8], [20 x i8]* %"$newcf_addr_call_363", align 1
  store [20 x i8] %"$newcf_addr_365", [20 x i8]* %newcf_addr, align 1
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_358"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$msgobj_376_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_376_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_376_salloc_load", i64 85)
  %"$msgobj_376_salloc" = bitcast i8* %"$msgobj_376_salloc_salloc" to [85 x i8]*
  %"$msgobj_376" = bitcast [85 x i8]* %"$msgobj_376_salloc" to i8*
  store i8 2, i8* %"$msgobj_376", align 1
  %"$msgobj_fname_378" = getelementptr i8, i8* %"$msgobj_376", i32 1
  %"$msgobj_fname_379" = bitcast i8* %"$msgobj_fname_378" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_377", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_379", align 8
  %"$msgobj_td_380" = getelementptr i8, i8* %"$msgobj_376", i32 17
  %"$msgobj_td_381" = bitcast i8* %"$msgobj_td_380" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_381", align 8
  %"$msgobj_v_383" = getelementptr i8, i8* %"$msgobj_376", i32 25
  %"$msgobj_v_384" = bitcast i8* %"$msgobj_v_383" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_382", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_384", align 8
  %"$msgobj_fname_386" = getelementptr i8, i8* %"$msgobj_376", i32 41
  %"$msgobj_fname_387" = bitcast i8* %"$msgobj_fname_386" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_385", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_387", align 8
  %"$msgobj_td_388" = getelementptr i8, i8* %"$msgobj_376", i32 57
  %"$msgobj_td_389" = bitcast i8* %"$msgobj_td_388" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ** %"$msgobj_td_389", align 8
  %"$newcf_addr_390" = load [20 x i8], [20 x i8]* %newcf_addr, align 1
  %"$msgobj_v_391" = getelementptr i8, i8* %"$msgobj_376", i32 65
  %"$msgobj_v_392" = bitcast i8* %"$msgobj_v_391" to [20 x i8]*
  store [20 x i8] %"$newcf_addr_390", [20 x i8]* %"$msgobj_v_392", align 1
  store i8* %"$msgobj_376", i8** %e, align 8
  %"$e_394" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_396" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_394")
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 %"$_literal_cost_call_396", %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_374"
  %"$consume_401" = sub i64 %"$gasrem_397", %"$_literal_cost_call_396"
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$execptr_load_402" = load i8*, i8** @_execptr, align 8
  %"$e_403" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_402", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_403")
  ret void
}

define void @cfdeploy_incorrect(i8* %0) {
entry:
  %"$_amount_405" = getelementptr i8, i8* %0, i32 0
  %"$_amount_406" = bitcast i8* %"$_amount_405" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_406", align 8
  %"$_origin_407" = getelementptr i8, i8* %0, i32 16
  %"$_origin_408" = bitcast i8* %"$_origin_407" to [20 x i8]*
  %"$_sender_409" = getelementptr i8, i8* %0, i32 36
  %"$_sender_410" = bitcast i8* %"$_sender_409" to [20 x i8]*
  %"$cfaddr_411" = getelementptr i8, i8* %0, i32 56
  %"$cfaddr_412" = bitcast i8* %"$cfaddr_411" to [20 x i8]*
  call void @"$cfdeploy_incorrect_277"(%Uint128 %_amount, [20 x i8]* %"$_origin_408", [20 x i8]* %"$_sender_410", [20 x i8]* %"$cfaddr_412")
  ret void
}
