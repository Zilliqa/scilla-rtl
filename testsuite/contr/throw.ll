

; gas_remaining: 4001999
; ModuleID = 'Throw'
source_filename = "Throw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_38" = type { i32, %"$TyDescr_AddrFieldTyp_37"* }
%"$TyDescr_AddrFieldTyp_37" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_107" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_108" = type { %ParamDescrString, i32, %"$ParamDescr_107"* }
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
@"$TyDescr_AddrFields_40" = unnamed_addr constant %"$TyDescr_AddrTyp_38" { i32 -1, %"$TyDescr_AddrFieldTyp_37"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accThrow_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_81" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_86" = unnamed_addr constant [3 x i8] c"Foo"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_109" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_110" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_111" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_107"] [%"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_109", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_110", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_111", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_112" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_113" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_114" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ThrowEmpty_115" = unnamed_addr constant [3 x %"$ParamDescr_107"] [%"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_112", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_113", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }, %"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_114", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }]
@"$tname_ThrowEmpty_116" = unnamed_addr constant [10 x i8] c"ThrowEmpty"
@"$tpname__amount_117" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_118" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_119" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ThrowObj_120" = unnamed_addr constant [3 x %"$ParamDescr_107"] [%"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_117", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_118", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }, %"$ParamDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_119", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }]
@"$tname_ThrowObj_121" = unnamed_addr constant [8 x i8] c"ThrowObj"
@_transition_parameters = constant [2 x %"$TransDescr_108"] [%"$TransDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_ThrowEmpty_116", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_107"* getelementptr inbounds ([3 x %"$ParamDescr_107"], [3 x %"$ParamDescr_107"]* @"$tparams_ThrowEmpty_115", i32 0, i32 0) }, %"$TransDescr_108" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_ThrowObj_121", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_107"* getelementptr inbounds ([3 x %"$ParamDescr_107"], [3 x %"$ParamDescr_107"]* @"$tparams_ThrowObj_120", i32 0, i32 0) }]
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

define void @_init_state() {
entry:
  ret void
}

define internal void @"$ThrowEmpty_51"(%Uint128 %_amount, [20 x i8]* %"$_origin_52", [20 x i8]* %"$_sender_53") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_52", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_53", align 1
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  %"$execptr_load_59" = load i8*, i8** @_execptr, align 8
  call void @_throw(i8* %"$execptr_load_59", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* null)
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ThrowEmpty(i8* %0) {
entry:
  %"$_amount_61" = getelementptr i8, i8* %0, i32 0
  %"$_amount_62" = bitcast i8* %"$_amount_61" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_62", align 8
  %"$_origin_63" = getelementptr i8, i8* %0, i32 16
  %"$_origin_64" = bitcast i8* %"$_origin_63" to [20 x i8]*
  %"$_sender_65" = getelementptr i8, i8* %0, i32 36
  %"$_sender_66" = bitcast i8* %"$_sender_65" to [20 x i8]*
  call void @"$ThrowEmpty_51"(%Uint128 %_amount, [20 x i8]* %"$_origin_64", [20 x i8]* %"$_sender_66")
  ret void
}

define internal void @"$ThrowObj_67"(%Uint128 %_amount, [20 x i8]* %"$_origin_68", [20 x i8]* %"$_sender_69") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_68", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_69", align 1
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %t = alloca i8*, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %"$msgobj_80_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_80_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_80_salloc_load", i64 41)
  %"$msgobj_80_salloc" = bitcast i8* %"$msgobj_80_salloc_salloc" to [41 x i8]*
  %"$msgobj_80" = bitcast [41 x i8]* %"$msgobj_80_salloc" to i8*
  store i8 1, i8* %"$msgobj_80", align 1
  %"$msgobj_fname_82" = getelementptr i8, i8* %"$msgobj_80", i32 1
  %"$msgobj_fname_83" = bitcast i8* %"$msgobj_fname_82" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_81", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_83", align 8
  %"$msgobj_td_84" = getelementptr i8, i8* %"$msgobj_80", i32 17
  %"$msgobj_td_85" = bitcast i8* %"$msgobj_td_84" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_85", align 8
  %"$msgobj_v_87" = getelementptr i8, i8* %"$msgobj_80", i32 25
  %"$msgobj_v_88" = bitcast i8* %"$msgobj_v_87" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_86", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_88", align 8
  store i8* %"$msgobj_80", i8** %t, align 8
  %"$t_90" = load i8*, i8** %t, align 8
  %"$_literal_cost_call_92" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$t_90")
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 %"$_literal_cost_call_92", %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_78"
  %"$consume_97" = sub i64 %"$gasrem_93", %"$_literal_cost_call_92"
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$execptr_load_98" = load i8*, i8** @_execptr, align 8
  %"$t_99" = load i8*, i8** %t, align 8
  call void @_throw(i8* %"$execptr_load_98", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$t_99")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @ThrowObj(i8* %0) {
entry:
  %"$_amount_101" = getelementptr i8, i8* %0, i32 0
  %"$_amount_102" = bitcast i8* %"$_amount_101" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_102", align 8
  %"$_origin_103" = getelementptr i8, i8* %0, i32 16
  %"$_origin_104" = bitcast i8* %"$_origin_103" to [20 x i8]*
  %"$_sender_105" = getelementptr i8, i8* %0, i32 36
  %"$_sender_106" = bitcast i8* %"$_sender_105" to [20 x i8]*
  call void @"$ThrowObj_67"(%Uint128 %_amount, [20 x i8]* %"$_origin_104", [20 x i8]* %"$_sender_106")
  ret void
}
