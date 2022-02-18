

; gas_remaining: 4001999
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_34" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_33"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_33" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_35"**, %"$TyDescrTy_ADTTyp_34"* }
%"$TyDescrTy_ADTTyp_Constr_35" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_140" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_141" = type { %ParamDescrString, i32, %"$ParamDescr_140"* }
%Uint128 = type { i128 }
%BNumString = type { i8*, i32 }
%TName_Option_Uint64 = type { i8, %CName_Some_Uint64*, %CName_None_Uint64* }
%CName_Some_Uint64 = type <{ i8, %Uint64 }>
%Uint64 = type { i64 }
%CName_None_Uint64 = type <{ i8 }>
%String = type { i8*, i32 }
%BCQuery = type { i8*, i32 }

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
@"$TyDescr_ADT_Option_Uint64_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_53" to i8*) }
@"$TyDescr_Option_ADTTyp_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_52", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_Option_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint64_Constr_m_args_42" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_10"]
@"$TyDescr_ADT_Some_43" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_43", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint64_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint64_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_46" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint64_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint64_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_44", %"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Option_None_Uint64_ADTTyp_Constr_47"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_10"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_35"*], [2 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_Option_ADTTyp_41" }
@"$TyDescr_Option_ADTTyp_m_specls_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Option_52" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_AddrFields_53" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -3, %"$TyDescr_AddrFieldTyp_38"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$BNumLit_77" = unnamed_addr constant [3 x i8] c"100"
@"$fetchbc_query_name_90" = unnamed_addr constant [9 x i8] c"TIMESTAMP"
@"$stringlit_106" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_111" = unnamed_addr constant [2 x i8] c"TS"
@"$stringlit_114" = unnamed_addr constant [9 x i8] c"timestamp"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_36", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_142" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_143" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_144" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_140"] [%"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_142", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_143", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_144", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_145" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_146" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_147" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventTimestamp_148" = unnamed_addr constant [3 x %"$ParamDescr_140"] [%"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_145", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_146", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_147", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_EventTimestamp_149" = unnamed_addr constant [14 x i8] c"EventTimestamp"
@_transition_parameters = constant [1 x %"$TransDescr_141"] [%"$TransDescr_141" { %ParamDescrString { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$tname_EventTimestamp_149", i32 0, i32 0), i32 14 }, i32 3, %"$ParamDescr_140"* getelementptr inbounds ([3 x %"$ParamDescr_140"], [3 x %"$ParamDescr_140"]* @"$tparams_EventTimestamp_148", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 5, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 5
  store i64 %"$consume_58", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  ret void
}

define internal void @"$EventTimestamp_64"(%Uint128 %_amount, [20 x i8]* %"$_origin_65", [20 x i8]* %"$_sender_66") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_65", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_66", align 1
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  %bnum = alloca i8*, align 8
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$have_gas_70"
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$execptr_load_78" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_79" = call i8* @_new_bnum(i8* %"$execptr_load_78", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_77", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_79", i8** %bnum, align 8
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_75"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %ts = alloca %TName_Option_Uint64*, align 8
  %"$bnum_1" = alloca %String, align 8
  %"$execptr_load_86" = load i8*, i8** @_execptr, align 8
  %"$bnum_87" = load i8*, i8** %bnum, align 8
  %"$to_string_call_89" = call %String @_to_string(i8* %"$execptr_load_86", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", i8* %"$bnum_87")
  store %String %"$to_string_call_89", %String* %"$bnum_1", align 8
  %"$execptr_load_91" = load i8*, i8** @_execptr, align 8
  %"$$bnum_1_92" = load %String, %String* %"$bnum_1", align 8
  %"$ts_call_93" = call i8* @_read_blockchain(i8* %"$execptr_load_91", %BCQuery { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$fetchbc_query_name_90", i32 0, i32 0), i32 9 }, %String %"$$bnum_1_92")
  %"$ts_94" = bitcast i8* %"$ts_call_93" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$ts_94", %TName_Option_Uint64** %ts, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_84"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$msgobj_105_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_105_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_105_salloc_load", i64 73)
  %"$msgobj_105_salloc" = bitcast i8* %"$msgobj_105_salloc_salloc" to [73 x i8]*
  %"$msgobj_105" = bitcast [73 x i8]* %"$msgobj_105_salloc" to i8*
  store i8 2, i8* %"$msgobj_105", align 1
  %"$msgobj_fname_107" = getelementptr i8, i8* %"$msgobj_105", i32 1
  %"$msgobj_fname_108" = bitcast i8* %"$msgobj_fname_107" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_106", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_108", align 8
  %"$msgobj_td_109" = getelementptr i8, i8* %"$msgobj_105", i32 17
  %"$msgobj_td_110" = bitcast i8* %"$msgobj_td_109" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_110", align 8
  %"$msgobj_v_112" = getelementptr i8, i8* %"$msgobj_105", i32 25
  %"$msgobj_v_113" = bitcast i8* %"$msgobj_v_112" to %String*
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_111", i32 0, i32 0), i32 2 }, %String* %"$msgobj_v_113", align 8
  %"$msgobj_fname_115" = getelementptr i8, i8* %"$msgobj_105", i32 41
  %"$msgobj_fname_116" = bitcast i8* %"$msgobj_fname_115" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_114", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_116", align 8
  %"$msgobj_td_117" = getelementptr i8, i8* %"$msgobj_105", i32 57
  %"$msgobj_td_118" = bitcast i8* %"$msgobj_td_117" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_36", %_TyDescrTy_Typ** %"$msgobj_td_118", align 8
  %"$ts_119" = load %TName_Option_Uint64*, %TName_Option_Uint64** %ts, align 8
  %"$msgobj_v_120" = getelementptr i8, i8* %"$msgobj_105", i32 65
  %"$msgobj_v_121" = bitcast i8* %"$msgobj_v_120" to %TName_Option_Uint64**
  store %TName_Option_Uint64* %"$ts_119", %TName_Option_Uint64** %"$msgobj_v_121", align 8
  store i8* %"$msgobj_105", i8** %e, align 8
  %"$e_123" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_125" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_123")
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 %"$_literal_cost_call_125", %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_103"
  %"$consume_130" = sub i64 %"$gasrem_126", %"$_literal_cost_call_125"
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %"$execptr_load_131" = load i8*, i8** @_execptr, align 8
  %"$e_132" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_131", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_132")
  ret void
}

declare i8* @_new_bnum(i8*, %BNumString)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_read_blockchain(i8*, %BCQuery, %String)

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventTimestamp(i8* %0) {
entry:
  %"$_amount_134" = getelementptr i8, i8* %0, i32 0
  %"$_amount_135" = bitcast i8* %"$_amount_134" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_135", align 8
  %"$_origin_136" = getelementptr i8, i8* %0, i32 16
  %"$_origin_137" = bitcast i8* %"$_origin_136" to [20 x i8]*
  %"$_sender_138" = getelementptr i8, i8* %0, i32 36
  %"$_sender_139" = bitcast i8* %"$_sender_138" to [20 x i8]*
  call void @"$EventTimestamp_64"(%Uint128 %_amount, [20 x i8]* %"$_origin_137", [20 x i8]* %"$_sender_139")
  ret void
}
