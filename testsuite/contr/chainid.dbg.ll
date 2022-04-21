

; gas_remaining: 4001999
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_111" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_112" = type { %ParamDescrString, i32, %"$ParamDescr_111"* }
%Uint128 = type { i128 }
%BCQuery = type { i8*, i32 }
%String = type { i8*, i32 }

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
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_41" to i8*) }
@"$TyDescr_AddrFields_41" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -3, %"$TyDescr_AddrFieldTyp_38"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$fetchbc_query_name_60" = unnamed_addr constant [7 x i8] c"CHAINID"
@"$fetchbc_query_arg_61" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_77" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_82" = unnamed_addr constant [7 x i8] c"ChainID"
@"$stringlit_85" = unnamed_addr constant [8 x i8] c"chain_id"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_113" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_114" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_115" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_111"] [%"$ParamDescr_111" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_113", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_111" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_114", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_111" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_115", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_116" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_117" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_118" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventChainID_119" = unnamed_addr constant [3 x %"$ParamDescr_111"] [%"$ParamDescr_111" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_116", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_111" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_117", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_111" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_118", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_EventChainID_120" = unnamed_addr constant [12 x i8] c"EventChainID"
@_transition_parameters = constant [1 x %"$TransDescr_112"] [%"$TransDescr_112" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_EventChainID_120", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_111"* getelementptr inbounds ([3 x %"$ParamDescr_111"], [3 x %"$ParamDescr_111"]* @"$tparams_EventChainID_119", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_47" = load i64, i64* @_gasrem, align 8
  %"$gascmp_48" = icmp ugt i64 1, %"$gasrem_47"
  br i1 %"$gascmp_48", label %"$out_of_gas_49", label %"$have_gas_50"

"$out_of_gas_49":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_50"

"$have_gas_50":                                   ; preds = %"$out_of_gas_49", %entry
  %"$consume_51" = sub i64 %"$gasrem_47", 1
  store i64 %"$consume_51", i64* @_gasrem, align 8
  ret void
}

define internal void @"$EventChainID_52"(%Uint128 %_amount, [20 x i8]* %"$_origin_53", [20 x i8]* %"$_sender_54") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_53", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_54", align 1
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  %cid = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %cid, metadata !12, metadata !DIExpression()), !dbg !14
  %"$execptr_load_62" = load i8*, i8** @_execptr, align 8
  %"$cid_call_63" = call i8* @_read_blockchain(i8* %"$execptr_load_62", %BCQuery { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$fetchbc_query_name_60", i32 0, i32 0), i32 7 }, %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$fetchbc_query_arg_61", i32 0, i32 0), i32 0 }), !dbg !14
  %"$cid_64" = bitcast i8* %"$cid_call_63" to %Uint32*
  %"$cid_65" = load %Uint32, %Uint32* %"$cid_64", align 4
  store %Uint32 %"$cid_65", %Uint32* %cid, align 4
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_58"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !15, metadata !DIExpression()), !dbg !18
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %"$msgobj_76_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_76_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_76_salloc_load", i64 69)
  %"$msgobj_76_salloc" = bitcast i8* %"$msgobj_76_salloc_salloc" to [69 x i8]*
  %"$msgobj_76" = bitcast [69 x i8]* %"$msgobj_76_salloc" to i8*
  store i8 2, i8* %"$msgobj_76", align 1
  %"$msgobj_fname_78" = getelementptr i8, i8* %"$msgobj_76", i32 1
  %"$msgobj_fname_79" = bitcast i8* %"$msgobj_fname_78" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_77", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_79", align 8
  %"$msgobj_td_80" = getelementptr i8, i8* %"$msgobj_76", i32 17
  %"$msgobj_td_81" = bitcast i8* %"$msgobj_td_80" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_81", align 8
  %"$msgobj_v_83" = getelementptr i8, i8* %"$msgobj_76", i32 25
  %"$msgobj_v_84" = bitcast i8* %"$msgobj_v_83" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_82", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_84", align 8
  %"$msgobj_fname_86" = getelementptr i8, i8* %"$msgobj_76", i32 41
  %"$msgobj_fname_87" = bitcast i8* %"$msgobj_fname_86" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_85", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_87", align 8
  %"$msgobj_td_88" = getelementptr i8, i8* %"$msgobj_76", i32 57
  %"$msgobj_td_89" = bitcast i8* %"$msgobj_td_88" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ** %"$msgobj_td_89", align 8
  %"$cid_90" = load %Uint32, %Uint32* %cid, align 4
  %"$msgobj_v_91" = getelementptr i8, i8* %"$msgobj_76", i32 65
  %"$msgobj_v_92" = bitcast i8* %"$msgobj_v_91" to %Uint32*
  store %Uint32 %"$cid_90", %Uint32* %"$msgobj_v_92", align 4
  store i8* %"$msgobj_76", i8** %e, align 8, !dbg !19
  %"$e_94" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_96" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_94")
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 %"$_literal_cost_call_96", %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_74"
  %"$consume_101" = sub i64 %"$gasrem_97", %"$_literal_cost_call_96"
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$execptr_load_102" = load i8*, i8** @_execptr, align 8
  %"$e_103" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_102", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_103"), !dbg !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_read_blockchain(i8*, %BCQuery, %String)

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventChainID(i8* %0) !dbg !21 {
entry:
  %"$_amount_105" = getelementptr i8, i8* %0, i32 0
  %"$_amount_106" = bitcast i8* %"$_amount_105" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_106", align 8
  %"$_origin_107" = getelementptr i8, i8* %0, i32 16
  %"$_origin_108" = bitcast i8* %"$_origin_107" to [20 x i8]*
  %"$_sender_109" = getelementptr i8, i8* %0, i32 36
  %"$_sender_110" = bitcast i8* %"$_sender_109" to [20 x i8]*
  call void @"$EventChainID_52"(%Uint128 %_amount, [20 x i8]* %"$_origin_108", [20 x i8]* %"$_sender_110"), !dbg !22
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "chainid.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "EventChainID", linkageName: "EventChainID", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "cid", scope: !11, file: !2, line: 10, type: !13)
!13 = !DIBasicType(name: "Uint32", size: 4)
!14 = !DILocation(line: 10, column: 3, scope: !11)
!15 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 11, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !17, size: 8, align: 8, dwarfAddressSpace: 0)
!17 = !DIBasicType(name: "Event", size: 8)
!18 = !DILocation(line: 11, column: 3, scope: !11)
!19 = !DILocation(line: 11, column: 7, scope: !11)
!20 = !DILocation(line: 12, column: 3, scope: !11)
!21 = distinct !DISubprogram(name: "EventChainID", linkageName: "EventChainID", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!22 = !DILocation(line: 9, column: 12, scope: !21)
