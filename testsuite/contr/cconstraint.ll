

; gas_remaining: 4001999
; ModuleID = 'TestConstraint'
source_filename = "TestConstraint"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_93" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_94" = type { %ParamDescrString, i32, %"$ParamDescr_93"* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%String = type { i8*, i32 }
%Uint128 = type { i128 }

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
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_41" to i8*) }
@"$TyDescr_AddrFields_41" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -3, %"$TyDescr_AddrFieldTyp_38"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@cconstraint.one = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_ivar = global %Int32 zeroinitializer
@"$stringlit_70" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_75" = unnamed_addr constant [38 x i8] c"Contract constraint evaluated to False"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_95" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_96" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_97" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_ivar_98" = unnamed_addr constant [4 x i8] c"ivar"
@_contract_parameters = constant [4 x %"$ParamDescr_93"] [%"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_95", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_96", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_97", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }, %"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_ivar_98", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_5" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_99" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_100" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_101" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_dummy_102" = unnamed_addr constant [3 x %"$ParamDescr_93"] [%"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_99", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_100", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_93" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_101", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_dummy_103" = unnamed_addr constant [5 x i8] c"dummy"
@_transition_parameters = constant [1 x %"$TransDescr_94"] [%"$TransDescr_94" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_dummy_103", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_93"* getelementptr inbounds ([3 x %"$ParamDescr_93"], [3 x %"$ParamDescr_93"]* @"$tparams_dummy_102", i32 0, i32 0) }]
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
  %"$gasrem_47" = load i64, i64* @_gasrem, align 8
  %"$gascmp_48" = icmp ugt i64 1, %"$gasrem_47"
  br i1 %"$gascmp_48", label %"$out_of_gas_49", label %"$have_gas_50"

"$out_of_gas_49":                                 ; preds = %"$have_gas_45"
  call void @_out_of_gas()
  br label %"$have_gas_50"

"$have_gas_50":                                   ; preds = %"$out_of_gas_49", %"$have_gas_45"
  %"$consume_51" = sub i64 %"$gasrem_47", 1
  store i64 %"$consume_51", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @cconstraint.one, align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$cconstraint_result_1" = alloca %TName_Bool*, align 8
  %"$gasrem_52" = load i64, i64* @_gasrem, align 8
  %"$gascmp_53" = icmp ugt i64 4, %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %entry
  %"$consume_56" = sub i64 %"$gasrem_52", 4
  store i64 %"$consume_56", i64* @_gasrem, align 8
  %"$execptr_load_57" = load i8*, i8** @_execptr, align 8
  %"$ivar_58" = load %Int32, %Int32* @_cparam_ivar, align 4
  %"$cconstraint.one_59" = load %Int32, %Int32* @cconstraint.one, align 4
  %"$eq_call_60" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_57", %Int32 %"$ivar_58", %Int32 %"$cconstraint.one_59")
  store %TName_Bool* %"$eq_call_60", %TName_Bool** %"$cconstraint_result_1", align 8
  %"$$cconstraint_result_1_63" = load %TName_Bool*, %TName_Bool** %"$cconstraint_result_1", align 8
  %"$$cconstraint_result_1_tag_64" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$$cconstraint_result_1_63", i32 0, i32 0
  %"$$cconstraint_result_1_tag_65" = load i8, i8* %"$$cconstraint_result_1_tag_64", align 1
  switch i8 %"$$cconstraint_result_1_tag_65", label %"$empty_default_66" [
    i8 1, label %"$False_67"
    i8 0, label %"$True_81"
  ]

"$False_67":                                      ; preds = %"$have_gas_55"
  %"$$cconstraint_result_1_68" = bitcast %TName_Bool* %"$$cconstraint_result_1_63" to %CName_False*
  %"$cconstraint_fail_2" = alloca i8*, align 8
  %"$msgobj_69_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_69_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_69_salloc_load", i64 41)
  %"$msgobj_69_salloc" = bitcast i8* %"$msgobj_69_salloc_salloc" to [41 x i8]*
  %"$msgobj_69" = bitcast [41 x i8]* %"$msgobj_69_salloc" to i8*
  store i8 1, i8* %"$msgobj_69", align 1
  %"$msgobj_fname_71" = getelementptr i8, i8* %"$msgobj_69", i32 1
  %"$msgobj_fname_72" = bitcast i8* %"$msgobj_fname_71" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_70", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_72", align 8
  %"$msgobj_td_73" = getelementptr i8, i8* %"$msgobj_69", i32 17
  %"$msgobj_td_74" = bitcast i8* %"$msgobj_td_73" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_74", align 8
  %"$msgobj_v_76" = getelementptr i8, i8* %"$msgobj_69", i32 25
  %"$msgobj_v_77" = bitcast i8* %"$msgobj_v_76" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_75", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_77", align 8
  store i8* %"$msgobj_69", i8** %"$cconstraint_fail_2", align 8
  %"$execptr_load_79" = load i8*, i8** @_execptr, align 8
  %"$$cconstraint_fail_2_80" = load i8*, i8** %"$cconstraint_fail_2", align 8
  call void @_throw(i8* %"$execptr_load_79", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", i8* %"$$cconstraint_fail_2_80")
  br label %"$matchsucc_62"

"$True_81":                                       ; preds = %"$have_gas_55"
  %"$$cconstraint_result_1_82" = bitcast %TName_Bool* %"$$cconstraint_result_1_63" to %CName_True*
  br label %"$matchsucc_62"

"$empty_default_66":                              ; preds = %"$have_gas_55"
  br label %"$matchsucc_62"

"$matchsucc_62":                                  ; preds = %"$True_81", %"$False_67", %"$empty_default_66"
  ret void
}

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare i8* @_salloc(i8*, i64)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$dummy_83"(%Uint128 %_amount, [20 x i8]* %"$_origin_84", [20 x i8]* %"$_sender_85") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_84", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_85", align 1
  ret void
}

define void @dummy(i8* %0) {
entry:
  %"$_amount_87" = getelementptr i8, i8* %0, i32 0
  %"$_amount_88" = bitcast i8* %"$_amount_87" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_88", align 8
  %"$_origin_89" = getelementptr i8, i8* %0, i32 16
  %"$_origin_90" = bitcast i8* %"$_origin_89" to [20 x i8]*
  %"$_sender_91" = getelementptr i8, i8* %0, i32 36
  %"$_sender_92" = bitcast i8* %"$_sender_91" to [20 x i8]*
  call void @"$dummy_83"(%Uint128 %_amount, [20 x i8]* %"$_origin_90", [20 x i8]* %"$_sender_92")
  ret void
}
