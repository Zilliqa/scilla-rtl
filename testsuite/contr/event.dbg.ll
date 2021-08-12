

; gas_remaining: 4002000
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_36" = type { i32, %"$TyDescr_AddrFieldTyp_35"* }
%"$TyDescr_AddrFieldTyp_35" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Uint32 = type { i32 }
%"$ParamDescr_95" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_96" = type { %ParamDescrString, i32, %"$ParamDescr_95"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_1" = global %"$TyDescrTy_PrimTyp_0" zeroinitializer
@"$TyDescr_Int32_2" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int32_Prim_1" to i8*) }
@"$TyDescr_Uint32_Prim_3" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 0 }
@"$TyDescr_Uint32_4" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint32_Prim_3" to i8*) }
@"$TyDescr_Int64_Prim_5" = global %"$TyDescrTy_PrimTyp_0" { i32 0, i32 1 }
@"$TyDescr_Int64_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int64_Prim_5" to i8*) }
@"$TyDescr_Uint64_Prim_7" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 1 }
@"$TyDescr_Uint64_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint64_Prim_7" to i8*) }
@"$TyDescr_Int128_Prim_9" = global %"$TyDescrTy_PrimTyp_0" { i32 0, i32 2 }
@"$TyDescr_Int128_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int128_Prim_9" to i8*) }
@"$TyDescr_Uint128_Prim_11" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 2 }
@"$TyDescr_Uint128_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint128_Prim_11" to i8*) }
@"$TyDescr_Int256_Prim_13" = global %"$TyDescrTy_PrimTyp_0" { i32 0, i32 3 }
@"$TyDescr_Int256_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int256_Prim_13" to i8*) }
@"$TyDescr_Uint256_Prim_15" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 3 }
@"$TyDescr_Uint256_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint256_Prim_15" to i8*) }
@"$TyDescr_String_Prim_17" = global %"$TyDescrTy_PrimTyp_0" { i32 2, i32 0 }
@"$TyDescr_String_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_String_Prim_17" to i8*) }
@"$TyDescr_Bnum_Prim_19" = global %"$TyDescrTy_PrimTyp_0" { i32 3, i32 0 }
@"$TyDescr_Bnum_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Bnum_Prim_19" to i8*) }
@"$TyDescr_Message_Prim_21" = global %"$TyDescrTy_PrimTyp_0" { i32 4, i32 0 }
@"$TyDescr_Message_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Message_Prim_21" to i8*) }
@"$TyDescr_Event_Prim_23" = global %"$TyDescrTy_PrimTyp_0" { i32 5, i32 0 }
@"$TyDescr_Event_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Event_Prim_23" to i8*) }
@"$TyDescr_Exception_Prim_25" = global %"$TyDescrTy_PrimTyp_0" { i32 6, i32 0 }
@"$TyDescr_Exception_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Exception_Prim_25" to i8*) }
@"$TyDescr_Bystr_Prim_27" = global %"$TyDescrTy_PrimTyp_0" { i32 7, i32 0 }
@"$TyDescr_Bystr_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Bystr_Prim_27" to i8*) }
@"$TyDescr_Bystr20_Prim_29" = global %"$TyDescrTy_PrimTyp_0" { i32 8, i32 20 }
@"$TyDescr_Bystr20_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Bystr20_Prim_29" to i8*) }
@"$TyDescr_Addr_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_36"* @"$TyDescr_AddrFields_38" to i8*) }
@"$TyDescr_AddrFields_38" = unnamed_addr constant %"$TyDescr_AddrTyp_36" { i32 -1, %"$TyDescr_AddrFieldTyp_35"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_53" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_58" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_61" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_66" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_69" = unnamed_addr constant [8 x i8] c"creation"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Addr_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_97" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_98" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_99" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_95"] [%"$ParamDescr_95" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_97", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_4" }, %"$ParamDescr_95" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_98", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30" }, %"$ParamDescr_95" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_99", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_20" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_100" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_101" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_102" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_EventCreate_103" = unnamed_addr constant [3 x %"$ParamDescr_95"] [%"$ParamDescr_95" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_100", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_12" }, %"$ParamDescr_95" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_101", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_37" }, %"$ParamDescr_95" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_102", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_37" }]
@"$tname_EventCreate_104" = unnamed_addr constant [11 x i8] c"EventCreate"
@_transition_parameters = constant [1 x %"$TransDescr_96"] [%"$TransDescr_96" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_EventCreate_104", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_95"* getelementptr inbounds ([3 x %"$ParamDescr_95"], [3 x %"$ParamDescr_95"]* @"$tparams_EventCreate_103", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  ret void
}

define internal void @"$EventCreate_39"(%Uint128 %_amount, [20 x i8]* %"$_origin_40", [20 x i8]* %"$_sender_41") !dbg !10 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_40", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_41", align 1
  %"$gasrem_42" = load i64, i64* @_gasrem, align 8
  %"$gascmp_43" = icmp ugt i64 1, %"$gasrem_42"
  br i1 %"$gascmp_43", label %"$out_of_gas_44", label %"$have_gas_45"

"$out_of_gas_44":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_45"

"$have_gas_45":                                   ; preds = %"$out_of_gas_44", %entry
  %"$consume_46" = sub i64 %"$gasrem_42", 1
  store i64 %"$consume_46", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_47" = load i64, i64* @_gasrem, align 8
  %"$gascmp_48" = icmp ugt i64 1, %"$gasrem_47"
  br i1 %"$gascmp_48", label %"$out_of_gas_49", label %"$have_gas_50"

"$out_of_gas_49":                                 ; preds = %"$have_gas_45"
  call void @_out_of_gas()
  br label %"$have_gas_50"

"$have_gas_50":                                   ; preds = %"$out_of_gas_49", %"$have_gas_45"
  %"$consume_51" = sub i64 %"$gasrem_47", 1
  store i64 %"$consume_51", i64* @_gasrem, align 8
  %"$msgobj_52_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_52_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_52_salloc_load", i64 113)
  %"$msgobj_52_salloc" = bitcast i8* %"$msgobj_52_salloc_salloc" to [113 x i8]*
  %"$msgobj_52" = bitcast [113 x i8]* %"$msgobj_52_salloc" to i8*
  store i8 3, i8* %"$msgobj_52", align 1
  %"$msgobj_fname_54" = getelementptr i8, i8* %"$msgobj_52", i32 1
  %"$msgobj_fname_55" = bitcast i8* %"$msgobj_fname_54" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_53", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_55", align 8
  %"$msgobj_td_56" = getelementptr i8, i8* %"$msgobj_52", i32 17
  %"$msgobj_td_57" = bitcast i8* %"$msgobj_td_56" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_57", align 8
  %"$msgobj_v_59" = getelementptr i8, i8* %"$msgobj_52", i32 25
  %"$msgobj_v_60" = bitcast i8* %"$msgobj_v_59" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_58", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_60", align 8
  %"$msgobj_fname_62" = getelementptr i8, i8* %"$msgobj_52", i32 41
  %"$msgobj_fname_63" = bitcast i8* %"$msgobj_fname_62" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_61", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_63", align 8
  %"$msgobj_td_64" = getelementptr i8, i8* %"$msgobj_52", i32 57
  %"$msgobj_td_65" = bitcast i8* %"$msgobj_td_64" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_65", align 8
  %"$msgobj_v_67" = getelementptr i8, i8* %"$msgobj_52", i32 65
  %"$msgobj_v_68" = bitcast i8* %"$msgobj_v_67" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_66", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_68", align 8
  %"$msgobj_fname_70" = getelementptr i8, i8* %"$msgobj_52", i32 81
  %"$msgobj_fname_71" = bitcast i8* %"$msgobj_fname_70" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_69", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_71", align 8
  %"$msgobj_td_72" = getelementptr i8, i8* %"$msgobj_52", i32 97
  %"$msgobj_td_73" = bitcast i8* %"$msgobj_td_72" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ** %"$msgobj_td_73", align 8
  %"$_creation_block_74" = load i8*, i8** @_cparam__creation_block, align 8
  %"$msgobj_v_75" = getelementptr i8, i8* %"$msgobj_52", i32 105
  %"$msgobj_v_76" = bitcast i8* %"$msgobj_v_75" to i8**
  store i8* %"$_creation_block_74", i8** %"$msgobj_v_76", align 8
  store i8* %"$msgobj_52", i8** %e, align 8, !dbg !11
  %"$e_78" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_80" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_78")
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 %"$_literal_cost_call_80", %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_50"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_50"
  %"$consume_85" = sub i64 %"$gasrem_81", %"$_literal_cost_call_80"
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %"$execptr_load_86" = load i8*, i8** @_execptr, align 8
  %"$e_87" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_86", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_87"), !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) !dbg !13 {
entry:
  %"$_amount_89" = getelementptr i8, i8* %0, i32 0
  %"$_amount_90" = bitcast i8* %"$_amount_89" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_90", align 8
  %"$_origin_91" = getelementptr i8, i8* %0, i32 16
  %"$_origin_92" = bitcast i8* %"$_origin_91" to [20 x i8]*
  %"$_sender_93" = getelementptr i8, i8* %0, i32 36
  %"$_sender_94" = bitcast i8* %"$_sender_93" to [20 x i8]*
  call void @"$EventCreate_39"(%Uint128 %_amount, [20 x i8]* %"$_origin_92", [20 x i8]* %"$_sender_94"), !dbg !14
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
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 9, column: 9, scope: !10)
!12 = !DILocation(line: 10, column: 5, scope: !10)
!13 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 8, column: 12, scope: !13)
