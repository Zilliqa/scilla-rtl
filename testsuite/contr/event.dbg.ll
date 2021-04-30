

; gas_remaining: 4002000
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_36" = type { i32, %"$TyDescr_AddrFieldTyp_35"* }
%"$TyDescr_AddrFieldTyp_35" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
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
@"$TyDescr_Addr_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_36"* @"$TyDescr_AddrFields_38" to i8*) }
@"$TyDescr_AddrFields_38" = unnamed_addr constant %"$TyDescr_AddrTyp_36" { i32 -1, %"$TyDescr_AddrFieldTyp_35"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_52" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_57" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_60" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_65" = unnamed_addr constant [5 x i8] c"World"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Addr_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  ret void
}

define internal void @"$EventCreate_39"(%Uint128 %_amount, [20 x i8]* %"$_sender_40") !dbg !10 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_40", align 1
  %"$gasrem_41" = load i64, i64* @_gasrem, align 8
  %"$gascmp_42" = icmp ugt i64 1, %"$gasrem_41"
  br i1 %"$gascmp_42", label %"$out_of_gas_43", label %"$have_gas_44"

"$out_of_gas_43":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_44"

"$have_gas_44":                                   ; preds = %"$out_of_gas_43", %entry
  %"$consume_45" = sub i64 %"$gasrem_41", 1
  store i64 %"$consume_45", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 1, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %"$have_gas_44"
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %"$have_gas_44"
  %"$consume_50" = sub i64 %"$gasrem_46", 1
  store i64 %"$consume_50", i64* @_gasrem, align 8
  %"$msgobj_51_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_51_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_51_salloc_load", i64 81)
  %"$msgobj_51_salloc" = bitcast i8* %"$msgobj_51_salloc_salloc" to [81 x i8]*
  %"$msgobj_51" = bitcast [81 x i8]* %"$msgobj_51_salloc" to i8*
  store i8 2, i8* %"$msgobj_51", align 1
  %"$msgobj_fname_53" = getelementptr i8, i8* %"$msgobj_51", i32 1
  %"$msgobj_fname_54" = bitcast i8* %"$msgobj_fname_53" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_52", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_54", align 8
  %"$msgobj_td_55" = getelementptr i8, i8* %"$msgobj_51", i32 17
  %"$msgobj_td_56" = bitcast i8* %"$msgobj_td_55" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_56", align 8
  %"$msgobj_v_58" = getelementptr i8, i8* %"$msgobj_51", i32 25
  %"$msgobj_v_59" = bitcast i8* %"$msgobj_v_58" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_57", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_59", align 8
  %"$msgobj_fname_61" = getelementptr i8, i8* %"$msgobj_51", i32 41
  %"$msgobj_fname_62" = bitcast i8* %"$msgobj_fname_61" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_60", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_62", align 8
  %"$msgobj_td_63" = getelementptr i8, i8* %"$msgobj_51", i32 57
  %"$msgobj_td_64" = bitcast i8* %"$msgobj_td_63" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_64", align 8
  %"$msgobj_v_66" = getelementptr i8, i8* %"$msgobj_51", i32 65
  %"$msgobj_v_67" = bitcast i8* %"$msgobj_v_66" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_65", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_67", align 8
  store i8* %"$msgobj_51", i8** %e, align 8, !dbg !11
  %"$e_69" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_71" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_69")
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 %"$_literal_cost_call_71", %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$have_gas_49"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$have_gas_49"
  %"$consume_76" = sub i64 %"$gasrem_72", %"$_literal_cost_call_71"
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$execptr_load_77" = load i8*, i8** @_execptr, align 8
  %"$e_78" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_77", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_78"), !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) !dbg !13 {
entry:
  %"$_amount_80" = getelementptr i8, i8* %0, i32 0
  %"$_amount_81" = bitcast i8* %"$_amount_80" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_81", align 8
  %"$_sender_82" = getelementptr i8, i8* %0, i32 16
  %"$_sender_83" = bitcast i8* %"$_sender_82" to [20 x i8]*
  call void @"$EventCreate_39"(%Uint128 %_amount, [20 x i8]* %"$_sender_83"), !dbg !14
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
