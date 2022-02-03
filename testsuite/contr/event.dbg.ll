

; gas_remaining: 4001999
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_37" = type { i32, %"$TyDescr_AddrFieldTyp_36"* }
%"$TyDescr_AddrFieldTyp_36" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_106" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_107" = type { %ParamDescrString, i32, %"$ParamDescr_106"* }
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
@"$stringlit_64" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_69" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_72" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_77" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_80" = unnamed_addr constant [8 x i8] c"creation"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_108" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_109" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_110" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_106"] [%"$ParamDescr_106" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_108", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_106" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_109", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_106" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_110", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_111" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_112" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_113" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventCreate_114" = unnamed_addr constant [3 x %"$ParamDescr_106"] [%"$ParamDescr_106" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_111", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_106" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_112", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_38" }, %"$ParamDescr_106" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_113", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_38" }]
@"$tname_EventCreate_115" = unnamed_addr constant [11 x i8] c"EventCreate"
@_transition_parameters = constant [1 x %"$TransDescr_107"] [%"$TransDescr_107" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_EventCreate_115", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_106"* getelementptr inbounds ([3 x %"$ParamDescr_106"], [3 x %"$ParamDescr_106"]* @"$tparams_EventCreate_114", i32 0, i32 0) }]
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

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 1, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %entry
  %"$consume_49" = sub i64 %"$gasrem_45", 1
  store i64 %"$consume_49", i64* @_gasrem, align 8
  ret void
}

define internal void @"$EventCreate_50"(%Uint128 %_amount, [20 x i8]* %"$_origin_51", [20 x i8]* %"$_sender_52") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_51", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_52", align 1
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$msgobj_63_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_63_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_63_salloc_load", i64 113)
  %"$msgobj_63_salloc" = bitcast i8* %"$msgobj_63_salloc_salloc" to [113 x i8]*
  %"$msgobj_63" = bitcast [113 x i8]* %"$msgobj_63_salloc" to i8*
  store i8 3, i8* %"$msgobj_63", align 1
  %"$msgobj_fname_65" = getelementptr i8, i8* %"$msgobj_63", i32 1
  %"$msgobj_fname_66" = bitcast i8* %"$msgobj_fname_65" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_64", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_66", align 8
  %"$msgobj_td_67" = getelementptr i8, i8* %"$msgobj_63", i32 17
  %"$msgobj_td_68" = bitcast i8* %"$msgobj_td_67" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_68", align 8
  %"$msgobj_v_70" = getelementptr i8, i8* %"$msgobj_63", i32 25
  %"$msgobj_v_71" = bitcast i8* %"$msgobj_v_70" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_69", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_71", align 8
  %"$msgobj_fname_73" = getelementptr i8, i8* %"$msgobj_63", i32 41
  %"$msgobj_fname_74" = bitcast i8* %"$msgobj_fname_73" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_72", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_74", align 8
  %"$msgobj_td_75" = getelementptr i8, i8* %"$msgobj_63", i32 57
  %"$msgobj_td_76" = bitcast i8* %"$msgobj_td_75" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_76", align 8
  %"$msgobj_v_78" = getelementptr i8, i8* %"$msgobj_63", i32 65
  %"$msgobj_v_79" = bitcast i8* %"$msgobj_v_78" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_77", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_79", align 8
  %"$msgobj_fname_81" = getelementptr i8, i8* %"$msgobj_63", i32 81
  %"$msgobj_fname_82" = bitcast i8* %"$msgobj_fname_81" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_80", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_82", align 8
  %"$msgobj_td_83" = getelementptr i8, i8* %"$msgobj_63", i32 97
  %"$msgobj_td_84" = bitcast i8* %"$msgobj_td_83" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ** %"$msgobj_td_84", align 8
  %"$_creation_block_85" = load i8*, i8** @_cparam__creation_block, align 8
  %"$msgobj_v_86" = getelementptr i8, i8* %"$msgobj_63", i32 105
  %"$msgobj_v_87" = bitcast i8* %"$msgobj_v_86" to i8**
  store i8* %"$_creation_block_85", i8** %"$msgobj_v_87", align 8
  store i8* %"$msgobj_63", i8** %e, align 8, !dbg !12
  %"$e_89" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_91" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_89")
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 %"$_literal_cost_call_91", %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_61"
  %"$consume_96" = sub i64 %"$gasrem_92", %"$_literal_cost_call_91"
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %"$execptr_load_97" = load i8*, i8** @_execptr, align 8
  %"$e_98" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_97", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_98"), !dbg !13
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) !dbg !14 {
entry:
  %"$_amount_100" = getelementptr i8, i8* %0, i32 0
  %"$_amount_101" = bitcast i8* %"$_amount_100" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_101", align 8
  %"$_origin_102" = getelementptr i8, i8* %0, i32 16
  %"$_origin_103" = bitcast i8* %"$_origin_102" to [20 x i8]*
  %"$_sender_104" = getelementptr i8, i8* %0, i32 36
  %"$_sender_105" = bitcast i8* %"$_sender_104" to [20 x i8]*
  call void @"$EventCreate_50"(%Uint128 %_amount, [20 x i8]* %"$_origin_103", [20 x i8]* %"$_sender_105"), !dbg !15
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
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 9, column: 9, scope: !11)
!13 = !DILocation(line: 10, column: 5, scope: !11)
!14 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 8, column: 12, scope: !14)
