

; gas_remaining: 4002000
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint32 = type { i32 }
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
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_48" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_53" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_56" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_61" = unnamed_addr constant [5 x i8] c"World"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 15

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !8 {
entry:
  ret void
}

define internal void @"$EventCreate_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_36") !dbg !9 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_36", align 1
  %"$gasrem_37" = load i64, i64* @_gasrem, align 8
  %"$gascmp_38" = icmp ugt i64 1, %"$gasrem_37"
  br i1 %"$gascmp_38", label %"$out_of_gas_39", label %"$have_gas_40"

"$out_of_gas_39":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_40"

"$have_gas_40":                                   ; preds = %"$out_of_gas_39", %entry
  %"$consume_41" = sub i64 %"$gasrem_37", 1
  store i64 %"$consume_41", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_42" = load i64, i64* @_gasrem, align 8
  %"$gascmp_43" = icmp ugt i64 1, %"$gasrem_42"
  br i1 %"$gascmp_43", label %"$out_of_gas_44", label %"$have_gas_45"

"$out_of_gas_44":                                 ; preds = %"$have_gas_40"
  call void @_out_of_gas()
  br label %"$have_gas_45"

"$have_gas_45":                                   ; preds = %"$out_of_gas_44", %"$have_gas_40"
  %"$consume_46" = sub i64 %"$gasrem_42", 1
  store i64 %"$consume_46", i64* @_gasrem, align 8
  %"$msgobj_47_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_47_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_47_salloc_load", i64 81)
  %"$msgobj_47_salloc" = bitcast i8* %"$msgobj_47_salloc_salloc" to [81 x i8]*
  %"$msgobj_47" = bitcast [81 x i8]* %"$msgobj_47_salloc" to i8*
  store i8 2, i8* %"$msgobj_47", align 1
  %"$msgobj_fname_49" = getelementptr i8, i8* %"$msgobj_47", i32 1
  %"$msgobj_fname_50" = bitcast i8* %"$msgobj_fname_49" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_48", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_50", align 8
  %"$msgobj_td_51" = getelementptr i8, i8* %"$msgobj_47", i32 17
  %"$msgobj_td_52" = bitcast i8* %"$msgobj_td_51" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_52", align 8
  %"$msgobj_v_54" = getelementptr i8, i8* %"$msgobj_47", i32 25
  %"$msgobj_v_55" = bitcast i8* %"$msgobj_v_54" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_53", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_55", align 8
  %"$msgobj_fname_57" = getelementptr i8, i8* %"$msgobj_47", i32 41
  %"$msgobj_fname_58" = bitcast i8* %"$msgobj_fname_57" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_56", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_58", align 8
  %"$msgobj_td_59" = getelementptr i8, i8* %"$msgobj_47", i32 57
  %"$msgobj_td_60" = bitcast i8* %"$msgobj_td_59" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_60", align 8
  %"$msgobj_v_62" = getelementptr i8, i8* %"$msgobj_47", i32 65
  %"$msgobj_v_63" = bitcast i8* %"$msgobj_v_62" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_61", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_63", align 8
  store i8* %"$msgobj_47", i8** %e, align 8, !dbg !10
  %"$e_65" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_67" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_65")
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 %"$_literal_cost_call_67", %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_45"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_45"
  %"$consume_72" = sub i64 %"$gasrem_68", %"$_literal_cost_call_67"
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %"$execptr_load_73" = load i8*, i8** @_execptr, align 8
  %"$e_74" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_73", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_74"), !dbg !11
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) !dbg !12 {
entry:
  %"$_amount_76" = getelementptr i8, i8* %0, i32 0
  %"$_amount_77" = bitcast i8* %"$_amount_76" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_77", align 8
  %"$_sender_78" = getelementptr i8, i8* %0, i32 16
  %"$_sender_79" = bitcast i8* %"$_sender_78" to [20 x i8]*
  call void @"$EventCreate_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_79"), !dbg !13
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "event.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!9 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 9, column: 9, scope: !9)
!11 = !DILocation(line: 10, column: 5, scope: !9)
!12 = distinct !DISubprogram(name: "EventCreate", linkageName: "EventCreate", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 8, column: 12, scope: !12)
