

; gas_remaining: 4001999
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_37" = type { i32, %"$TyDescr_AddrFieldTyp_36"* }
%"$TyDescr_AddrFieldTyp_36" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_101" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_102" = type { %ParamDescrString, i32, %"$ParamDescr_101"* }
%Uint128 = type { i128 }
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
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_Addr_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_37"* @"$TyDescr_AddrFields_39" to i8*) }
@"$TyDescr_AddrFields_39" = unnamed_addr constant %"$TyDescr_AddrTyp_37" { i32 -1, %"$TyDescr_AddrFieldTyp_36"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_59" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_64" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_67" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_72" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_75" = unnamed_addr constant [8 x i8] c"creation"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_103" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_104" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_105" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_101"] [%"$ParamDescr_101" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_103", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_101" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_104", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_101" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_105", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_106" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_107" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_108" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventCreate_109" = unnamed_addr constant [3 x %"$ParamDescr_101"] [%"$ParamDescr_101" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_106", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_101" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_107", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_38" }, %"$ParamDescr_101" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_108", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_38" }]
@"$tname_EventCreate_110" = unnamed_addr constant [11 x i8] c"EventCreate"
@_transition_parameters = constant [1 x %"$TransDescr_102"] [%"$TransDescr_102" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_EventCreate_110", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_101"* getelementptr inbounds ([3 x %"$ParamDescr_101"], [3 x %"$ParamDescr_101"]* @"$tparams_EventCreate_109", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_40" = load i64, i64* @_gasrem, align 8
  %"$gascmp_41" = icmp ugt i64 5, %"$gasrem_40"
  br i1 %"$gascmp_41", label %"$out_of_gas_42", label %"$have_gas_43"

"$out_of_gas_42":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_43"

"$have_gas_43":                                   ; preds = %"$out_of_gas_42", %entry
  %"$consume_44" = sub i64 %"$gasrem_40", 5
  store i64 %"$consume_44", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_init_state() !dbg !10 {
entry:
  ret void
}

define internal void @"$EventCreate_45"(%Uint128 %_amount, [20 x i8]* %"$_origin_46", [20 x i8]* %"$_sender_47") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_46", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_47", align 1
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %"$have_gas_51"
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %"$have_gas_51"
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %"$msgobj_58_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_58_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_58_salloc_load", i64 113)
  %"$msgobj_58_salloc" = bitcast i8* %"$msgobj_58_salloc_salloc" to [113 x i8]*
  %"$msgobj_58" = bitcast [113 x i8]* %"$msgobj_58_salloc" to i8*
  store i8 3, i8* %"$msgobj_58", align 1
  %"$msgobj_fname_60" = getelementptr i8, i8* %"$msgobj_58", i32 1
  %"$msgobj_fname_61" = bitcast i8* %"$msgobj_fname_60" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_59", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_61", align 8
  %"$msgobj_td_62" = getelementptr i8, i8* %"$msgobj_58", i32 17
  %"$msgobj_td_63" = bitcast i8* %"$msgobj_td_62" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_63", align 8
  %"$msgobj_v_65" = getelementptr i8, i8* %"$msgobj_58", i32 25
  %"$msgobj_v_66" = bitcast i8* %"$msgobj_v_65" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_64", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_66", align 8
  %"$msgobj_fname_68" = getelementptr i8, i8* %"$msgobj_58", i32 41
  %"$msgobj_fname_69" = bitcast i8* %"$msgobj_fname_68" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_67", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_69", align 8
  %"$msgobj_td_70" = getelementptr i8, i8* %"$msgobj_58", i32 57
  %"$msgobj_td_71" = bitcast i8* %"$msgobj_td_70" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_71", align 8
  %"$msgobj_v_73" = getelementptr i8, i8* %"$msgobj_58", i32 65
  %"$msgobj_v_74" = bitcast i8* %"$msgobj_v_73" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_72", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_74", align 8
  %"$msgobj_fname_76" = getelementptr i8, i8* %"$msgobj_58", i32 81
  %"$msgobj_fname_77" = bitcast i8* %"$msgobj_fname_76" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_75", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_77", align 8
  %"$msgobj_td_78" = getelementptr i8, i8* %"$msgobj_58", i32 97
  %"$msgobj_td_79" = bitcast i8* %"$msgobj_td_78" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ** %"$msgobj_td_79", align 8
  %"$_creation_block_80" = load i8*, i8** @_cparam__creation_block, align 8
  %"$msgobj_v_81" = getelementptr i8, i8* %"$msgobj_58", i32 105
  %"$msgobj_v_82" = bitcast i8* %"$msgobj_v_81" to i8**
  store i8* %"$_creation_block_80", i8** %"$msgobj_v_82", align 8
  store i8* %"$msgobj_58", i8** %e, align 8, !dbg !12
  %"$e_84" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_86" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_84")
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 %"$_literal_cost_call_86", %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_56"
  %"$consume_91" = sub i64 %"$gasrem_87", %"$_literal_cost_call_86"
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %"$execptr_load_92" = load i8*, i8** @_execptr, align 8
  %"$e_93" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_92", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_93"), !dbg !13
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) !dbg !14 {
entry:
  %"$_amount_95" = getelementptr i8, i8* %0, i32 0
  %"$_amount_96" = bitcast i8* %"$_amount_95" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_96", align 8
  %"$_origin_97" = getelementptr i8, i8* %0, i32 16
  %"$_origin_98" = bitcast i8* %"$_origin_97" to [20 x i8]*
  %"$_sender_99" = getelementptr i8, i8* %0, i32 36
  %"$_sender_100" = bitcast i8* %"$_sender_99" to [20 x i8]*
  call void @"$EventCreate_45"(%Uint128 %_amount, [20 x i8]* %"$_origin_98", [20 x i8]* %"$_sender_100"), !dbg !15
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "event.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 9, column: 9, scope: !11)
!13 = !DILocation(line: 10, column: 5, scope: !11)
!14 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 8, column: 12, scope: !14)
