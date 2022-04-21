

; gas_remaining: 4001999
; ModuleID = 'Throw'
source_filename = "Throw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_114" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_115" = type { %ParamDescrString, i32, %"$ParamDescr_114"* }
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
@"$TyDescr_ReplicateContr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_ReplicateContr_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_2" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_42" to i8*) }
@"$TyDescr_AddrFields_42" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -3, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accThrow_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_88" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_93" = unnamed_addr constant [3 x i8] c"Foo"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_116" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_117" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_118" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_114"] [%"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_116", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_117", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_118", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_119" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_120" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_121" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ThrowEmpty_122" = unnamed_addr constant [3 x %"$ParamDescr_114"] [%"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_119", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_120", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_121", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_ThrowEmpty_123" = unnamed_addr constant [10 x i8] c"ThrowEmpty"
@"$tpname__amount_124" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_125" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_126" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ThrowObj_127" = unnamed_addr constant [3 x %"$ParamDescr_114"] [%"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_124", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_125", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_114" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_126", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_ThrowObj_128" = unnamed_addr constant [8 x i8] c"ThrowObj"
@_transition_parameters = constant [2 x %"$TransDescr_115"] [%"$TransDescr_115" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_ThrowEmpty_123", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_114"* getelementptr inbounds ([3 x %"$ParamDescr_114"], [3 x %"$ParamDescr_114"]* @"$tparams_ThrowEmpty_122", i32 0, i32 0) }, %"$TransDescr_115" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_ThrowObj_128", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_114"* getelementptr inbounds ([3 x %"$ParamDescr_114"], [3 x %"$ParamDescr_114"]* @"$tparams_ThrowObj_127", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_43" = load i64, i64* @_gasrem, align 8
  %"$gascmp_44" = icmp ugt i64 5, %"$gasrem_43"
  br i1 %"$gascmp_44", label %"$out_of_gas_45", label %"$have_gas_46"

"$out_of_gas_45":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_46"

"$have_gas_46":                                   ; preds = %"$out_of_gas_45", %entry
  %"$consume_47" = sub i64 %"$gasrem_43", 5
  store i64 %"$consume_47", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4, !dbg !9
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %"$have_gas_46"
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %"$have_gas_46"
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @"$_gas_charge_accThrow_0", align 4, !dbg !9
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
  ret void
}

define internal void @"$ThrowEmpty_58"(%Uint128 %_amount, [20 x i8]* %"$_origin_59", [20 x i8]* %"$_sender_60") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_59", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_60", align 1
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %"$execptr_load_66" = load i8*, i8** @_execptr, align 8
  call void @_throw(i8* %"$execptr_load_66", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* null), !dbg !12
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ThrowEmpty(i8* %0) !dbg !13 {
entry:
  %"$_amount_68" = getelementptr i8, i8* %0, i32 0
  %"$_amount_69" = bitcast i8* %"$_amount_68" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_69", align 8
  %"$_origin_70" = getelementptr i8, i8* %0, i32 16
  %"$_origin_71" = bitcast i8* %"$_origin_70" to [20 x i8]*
  %"$_sender_72" = getelementptr i8, i8* %0, i32 36
  %"$_sender_73" = bitcast i8* %"$_sender_72" to [20 x i8]*
  call void @"$ThrowEmpty_58"(%Uint128 %_amount, [20 x i8]* %"$_origin_71", [20 x i8]* %"$_sender_73"), !dbg !14
  ret void
}

define internal void @"$ThrowObj_74"(%Uint128 %_amount, [20 x i8]* %"$_origin_75", [20 x i8]* %"$_sender_76") !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_75", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_76", align 1
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %t = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %t, metadata !16, metadata !DIExpression()), !dbg !19
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$msgobj_87_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_87_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_87_salloc_load", i64 41)
  %"$msgobj_87_salloc" = bitcast i8* %"$msgobj_87_salloc_salloc" to [41 x i8]*
  %"$msgobj_87" = bitcast [41 x i8]* %"$msgobj_87_salloc" to i8*
  store i8 1, i8* %"$msgobj_87", align 1
  %"$msgobj_fname_89" = getelementptr i8, i8* %"$msgobj_87", i32 1
  %"$msgobj_fname_90" = bitcast i8* %"$msgobj_fname_89" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_88", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_90", align 8
  %"$msgobj_td_91" = getelementptr i8, i8* %"$msgobj_87", i32 17
  %"$msgobj_td_92" = bitcast i8* %"$msgobj_td_91" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_92", align 8
  %"$msgobj_v_94" = getelementptr i8, i8* %"$msgobj_87", i32 25
  %"$msgobj_v_95" = bitcast i8* %"$msgobj_v_94" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_93", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_95", align 8
  store i8* %"$msgobj_87", i8** %t, align 8, !dbg !20
  %"$t_97" = load i8*, i8** %t, align 8
  %"$_literal_cost_call_99" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$t_97")
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 %"$_literal_cost_call_99", %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_85"
  %"$consume_104" = sub i64 %"$gasrem_100", %"$_literal_cost_call_99"
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$execptr_load_105" = load i8*, i8** @_execptr, align 8
  %"$t_106" = load i8*, i8** %t, align 8
  call void @_throw(i8* %"$execptr_load_105", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$t_106"), !dbg !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @ThrowObj(i8* %0) !dbg !22 {
entry:
  %"$_amount_108" = getelementptr i8, i8* %0, i32 0
  %"$_amount_109" = bitcast i8* %"$_amount_108" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_109", align 8
  %"$_origin_110" = getelementptr i8, i8* %0, i32 16
  %"$_origin_111" = bitcast i8* %"$_origin_110" to [20 x i8]*
  %"$_sender_112" = getelementptr i8, i8* %0, i32 36
  %"$_sender_113" = bitcast i8* %"$_sender_112" to [20 x i8]*
  call void @"$ThrowObj_74"(%Uint128 %_amount, [20 x i8]* %"$_origin_111", [20 x i8]* %"$_sender_113"), !dbg !23
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "throw.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "ThrowEmpty", linkageName: "ThrowEmpty", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocation(line: 14, column: 3, scope: !11)
!13 = distinct !DISubprogram(name: "ThrowEmpty", linkageName: "ThrowEmpty", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!14 = !DILocation(line: 13, column: 12, scope: !13)
!15 = distinct !DISubprogram(name: "ThrowObj", linkageName: "ThrowObj", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!16 = !DILocalVariable(name: "t", scope: !15, file: !2, line: 18, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Exception", baseType: !18, size: 8, align: 8, dwarfAddressSpace: 0)
!18 = !DIBasicType(name: "Exception", size: 8)
!19 = !DILocation(line: 18, column: 3, scope: !15)
!20 = !DILocation(line: 18, column: 7, scope: !15)
!21 = !DILocation(line: 19, column: 3, scope: !15)
!22 = distinct !DISubprogram(name: "ThrowObj", linkageName: "ThrowObj", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!23 = !DILocation(line: 17, column: 12, scope: !22)
