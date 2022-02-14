

; gas_remaining: 4001999
; ModuleID = 'Throw'
source_filename = "Throw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_38" = type { i32, %"$TyDescr_AddrFieldTyp_37"* }
%"$TyDescr_AddrFieldTyp_37" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_112" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_113" = type { %ParamDescrString, i32, %"$ParamDescr_112"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }

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
@"$TyDescr_Addr_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_38"* @"$TyDescr_AddrFields_40" to i8*) }
@"$TyDescr_AddrFields_40" = unnamed_addr constant %"$TyDescr_AddrTyp_38" { i32 -3, %"$TyDescr_AddrFieldTyp_37"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accThrow_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_86" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_91" = unnamed_addr constant [3 x i8] c"Foo"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_114" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_115" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_116" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_112"] [%"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_114", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_115", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_116", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_117" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_118" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_119" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ThrowEmpty_120" = unnamed_addr constant [3 x %"$ParamDescr_112"] [%"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_117", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_118", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }, %"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_119", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }]
@"$tname_ThrowEmpty_121" = unnamed_addr constant [10 x i8] c"ThrowEmpty"
@"$tpname__amount_122" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_123" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_124" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ThrowObj_125" = unnamed_addr constant [3 x %"$ParamDescr_112"] [%"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_122", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_123", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }, %"$ParamDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_124", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }]
@"$tname_ThrowObj_126" = unnamed_addr constant [8 x i8] c"ThrowObj"
@_transition_parameters = constant [2 x %"$TransDescr_113"] [%"$TransDescr_113" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_ThrowEmpty_121", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_112"* getelementptr inbounds ([3 x %"$ParamDescr_112"], [3 x %"$ParamDescr_112"]* @"$tparams_ThrowEmpty_120", i32 0, i32 0) }, %"$TransDescr_113" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_ThrowObj_126", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_112"* getelementptr inbounds ([3 x %"$ParamDescr_112"], [3 x %"$ParamDescr_112"]* @"$tparams_ThrowObj_125", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define void @_init_libs() {
entry:
  %"$gasrem_41" = load i64, i64* @_gasrem, align 8
  %"$gascmp_42" = icmp ugt i64 5, %"$gasrem_41"
  br i1 %"$gascmp_42", label %"$out_of_gas_43", label %"$have_gas_44"

"$out_of_gas_43":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_44"

"$have_gas_44":                                   ; preds = %"$out_of_gas_43", %entry
  %"$consume_45" = sub i64 %"$gasrem_41", 5
  store i64 %"$consume_45", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 1, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %"$have_gas_44"
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %"$have_gas_44"
  %"$consume_50" = sub i64 %"$gasrem_46", 1
  store i64 %"$consume_50", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @"$_gas_charge_accThrow_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
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
  ret void
}

define internal void @"$ThrowEmpty_56"(%Uint128 %_amount, [20 x i8]* %"$_origin_57", [20 x i8]* %"$_sender_58") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_57", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_58", align 1
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %"$execptr_load_64" = load i8*, i8** @_execptr, align 8
  call void @_throw(i8* %"$execptr_load_64", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* null)
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ThrowEmpty(i8* %0) {
entry:
  %"$_amount_66" = getelementptr i8, i8* %0, i32 0
  %"$_amount_67" = bitcast i8* %"$_amount_66" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_67", align 8
  %"$_origin_68" = getelementptr i8, i8* %0, i32 16
  %"$_origin_69" = bitcast i8* %"$_origin_68" to [20 x i8]*
  %"$_sender_70" = getelementptr i8, i8* %0, i32 36
  %"$_sender_71" = bitcast i8* %"$_sender_70" to [20 x i8]*
  call void @"$ThrowEmpty_56"(%Uint128 %_amount, [20 x i8]* %"$_origin_69", [20 x i8]* %"$_sender_71")
  ret void
}

define internal void @"$ThrowObj_72"(%Uint128 %_amount, [20 x i8]* %"$_origin_73", [20 x i8]* %"$_sender_74") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_73", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_74", align 1
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %entry
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %t = alloca i8*, align 8
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %"$msgobj_85_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_85_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_85_salloc_load", i64 41)
  %"$msgobj_85_salloc" = bitcast i8* %"$msgobj_85_salloc_salloc" to [41 x i8]*
  %"$msgobj_85" = bitcast [41 x i8]* %"$msgobj_85_salloc" to i8*
  store i8 1, i8* %"$msgobj_85", align 1
  %"$msgobj_fname_87" = getelementptr i8, i8* %"$msgobj_85", i32 1
  %"$msgobj_fname_88" = bitcast i8* %"$msgobj_fname_87" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_86", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_88", align 8
  %"$msgobj_td_89" = getelementptr i8, i8* %"$msgobj_85", i32 17
  %"$msgobj_td_90" = bitcast i8* %"$msgobj_td_89" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_90", align 8
  %"$msgobj_v_92" = getelementptr i8, i8* %"$msgobj_85", i32 25
  %"$msgobj_v_93" = bitcast i8* %"$msgobj_v_92" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_91", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_93", align 8
  store i8* %"$msgobj_85", i8** %t, align 8
  %"$t_95" = load i8*, i8** %t, align 8
  %"$_literal_cost_call_97" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$t_95")
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 %"$_literal_cost_call_97", %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_83"
  %"$consume_102" = sub i64 %"$gasrem_98", %"$_literal_cost_call_97"
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  %"$t_104" = load i8*, i8** %t, align 8
  call void @_throw(i8* %"$execptr_load_103", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$t_104")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @ThrowObj(i8* %0) {
entry:
  %"$_amount_106" = getelementptr i8, i8* %0, i32 0
  %"$_amount_107" = bitcast i8* %"$_amount_106" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_107", align 8
  %"$_origin_108" = getelementptr i8, i8* %0, i32 16
  %"$_origin_109" = bitcast i8* %"$_origin_108" to [20 x i8]*
  %"$_sender_110" = getelementptr i8, i8* %0, i32 36
  %"$_sender_111" = bitcast i8* %"$_sender_110" to [20 x i8]*
  call void @"$ThrowObj_72"(%Uint128 %_amount, [20 x i8]* %"$_origin_109", [20 x i8]* %"$_sender_111")
  ret void
}
