

; gas_remaining: 4002000
; ModuleID = 'PM_empty'
source_filename = "PM_empty"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_32" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_31"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_31" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_33"**, %"$TyDescrTy_ADTTyp_32"* }
%"$TyDescrTy_ADTTyp_Constr_33" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%Uint128 = type { i128 }
%Int32 = type { i32 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_ADT_Bool_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_31"* @"$TyDescr_Bool_ADTTyp_Specl_45" to i8*) }
@"$TyDescr_Bool_ADTTyp_36" = unnamed_addr constant %"$TyDescrTy_ADTTyp_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_47", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_31"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_31"*], [1 x %"$TyDescrTy_ADTTyp_Specl_31"*]* @"$TyDescr_Bool_ADTTyp_m_specls_46", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_37" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_38" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_38", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_37", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_40" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_41" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_33" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_41", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_43" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_33"*] [%"$TyDescrTy_ADTTyp_Constr_33"* @"$TyDescr_Bool_True_ADTTyp_Constr_39", %"$TyDescrTy_ADTTyp_Constr_33"* @"$TyDescr_Bool_False_ADTTyp_Constr_42"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_31" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_33"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_33"*], [2 x %"$TyDescrTy_ADTTyp_Constr_33"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_32"* @"$TyDescr_Bool_ADTTyp_36" }
@"$TyDescr_Bool_ADTTyp_m_specls_46" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_31"*] [%"$TyDescrTy_ADTTyp_Specl_31"* @"$TyDescr_Bool_ADTTyp_Specl_45"]
@"$TyDescr_ADT_Bool_47" = unnamed_addr constant [4 x i8] c"Bool"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_61" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_66" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_69" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  ret void
}

define internal void @"$create_event_48"(%Uint128 %_amount, [20 x i8]* %"$_sender_49", %Int32 %m) !dbg !10 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_49", align 1
  %"$gasrem_50" = load i64, i64* @_gasrem, align 8
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %entry
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %"$have_gas_53"
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %"$have_gas_53"
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  %"$msgobj_60_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_60_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_60_salloc_load", i64 69)
  %"$msgobj_60_salloc" = bitcast i8* %"$msgobj_60_salloc_salloc" to [69 x i8]*
  %"$msgobj_60" = bitcast [69 x i8]* %"$msgobj_60_salloc" to i8*
  store i8 2, i8* %"$msgobj_60", align 1
  %"$msgobj_fname_62" = getelementptr i8, i8* %"$msgobj_60", i32 1
  %"$msgobj_fname_63" = bitcast i8* %"$msgobj_fname_62" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_61", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_63", align 8
  %"$msgobj_td_64" = getelementptr i8, i8* %"$msgobj_60", i32 17
  %"$msgobj_td_65" = bitcast i8* %"$msgobj_td_64" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_65", align 8
  %"$msgobj_v_67" = getelementptr i8, i8* %"$msgobj_60", i32 25
  %"$msgobj_v_68" = bitcast i8* %"$msgobj_v_67" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_66", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_68", align 8
  %"$msgobj_fname_70" = getelementptr i8, i8* %"$msgobj_60", i32 41
  %"$msgobj_fname_71" = bitcast i8* %"$msgobj_fname_70" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_69", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_71", align 8
  %"$msgobj_td_72" = getelementptr i8, i8* %"$msgobj_60", i32 57
  %"$msgobj_td_73" = bitcast i8* %"$msgobj_td_72" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_2", %_TyDescrTy_Typ** %"$msgobj_td_73", align 8
  %"$msgobj_v_74" = getelementptr i8, i8* %"$msgobj_60", i32 65
  %"$msgobj_v_75" = bitcast i8* %"$msgobj_v_74" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_75", align 4
  store i8* %"$msgobj_60", i8** %e, align 8, !dbg !11
  %"$e_77" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_79" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_77")
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 %"$_literal_cost_call_79", %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_58"
  %"$consume_84" = sub i64 %"$gasrem_80", %"$_literal_cost_call_79"
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %"$execptr_load_85" = load i8*, i8** @_execptr, align 8
  %"$e_86" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_85", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_86"), !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_87"(%Uint128 %_amount, [20 x i8]* %"$_sender_88", %TName_Bool* %c) !dbg !13 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_88", align 1
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %entry
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4, !dbg !14
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 2, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 2
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$c_tag_105" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_106" = load i8, i8* %"$c_tag_105", align 1
  switch i8 %"$c_tag_106", label %"$empty_default_107" [
    i8 0, label %"$True_108"
    i8 1, label %"$False_110"
  ], !dbg !15

"$True_108":                                      ; preds = %"$have_gas_102"
  %"$c_109" = bitcast %TName_Bool* %c to %CName_True*
  br label %"$matchsucc_104"

"$False_110":                                     ; preds = %"$have_gas_102"
  %"$c_111" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$False_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$False_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$create_event__sender_117" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_117", align 1
  %"$x_118" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_48"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_117", %Int32 %"$x_118"), !dbg !16
  br label %"$matchsucc_104"

"$empty_default_107":                             ; preds = %"$have_gas_102"
  br label %"$matchsucc_104"

"$matchsucc_104":                                 ; preds = %"$have_gas_115", %"$True_108", %"$empty_default_107"
  ret void
}

define void @t1(i8* %0) !dbg !19 {
entry:
  %"$_amount_120" = getelementptr i8, i8* %0, i32 0
  %"$_amount_121" = bitcast i8* %"$_amount_120" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_121", align 8
  %"$_sender_122" = getelementptr i8, i8* %0, i32 16
  %"$_sender_123" = bitcast i8* %"$_sender_122" to [20 x i8]*
  %"$c_124" = getelementptr i8, i8* %0, i32 36
  %"$c_125" = bitcast i8* %"$c_124" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_125", align 8
  call void @"$t1_87"(%Uint128 %_amount, [20 x i8]* %"$_sender_123", %TName_Bool* %c), !dbg !20
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "pm-empty.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 6, column: 7, scope: !10)
!12 = !DILocation(line: 7, column: 3, scope: !10)
!13 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 11, column: 7, scope: !13)
!15 = !DILocation(line: 12, column: 3, scope: !13)
!16 = !DILocation(line: 14, column: 14, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !2, line: 14, column: 5)
!18 = distinct !DILexicalBlock(scope: !13, file: !2, line: 12, column: 3)
!19 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 10, column: 12, scope: !19)