

; gas_remaining: 4002000
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_34" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_33"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_33" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_35"**, %"$TyDescrTy_ADTTyp_34"* }
%"$TyDescrTy_ADTTyp_Constr_35" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%Uint128 = type { i128 }
%Int32 = type { i32 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
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
@"$TyDescr_ADT_Bool_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Bool_ADTTyp_Specl_47" to i8*) }
@"$TyDescr_Bool_ADTTyp_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_49", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_Bool_ADTTyp_m_specls_48", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_39" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_40" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_40", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_42" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_43" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_43", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_45" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Bool_True_ADTTyp_Constr_41", %"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Bool_False_ADTTyp_Constr_44"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_35"*], [2 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_Bool_ADTTyp_38" }
@"$TyDescr_Bool_ADTTyp_m_specls_48" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Bool_ADTTyp_Specl_47"]
@"$TyDescr_ADT_Bool_49" = unnamed_addr constant [4 x i8] c"Bool"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_53" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_58" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_61" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$_sender_51", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_51"
  %e = alloca i8*
  %"$msgobj_52_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_52_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_52_salloc_load", i64 69)
  %"$msgobj_52_salloc" = bitcast i8* %"$msgobj_52_salloc_salloc" to [69 x i8]*
  %"$msgobj_52" = bitcast [69 x i8]* %"$msgobj_52_salloc" to i8*
  store i8 2, i8* %"$msgobj_52"
  %"$msgobj_fname_54" = getelementptr i8, i8* %"$msgobj_52", i32 1
  %"$msgobj_fname_55" = bitcast i8* %"$msgobj_fname_54" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_53", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_55"
  %"$msgobj_td_56" = getelementptr i8, i8* %"$msgobj_52", i32 17
  %"$msgobj_td_57" = bitcast i8* %"$msgobj_td_56" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_57"
  %"$msgobj_v_59" = getelementptr i8, i8* %"$msgobj_52", i32 25
  %"$msgobj_v_60" = bitcast i8* %"$msgobj_v_59" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_58", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_60"
  %"$msgobj_fname_62" = getelementptr i8, i8* %"$msgobj_52", i32 41
  %"$msgobj_fname_63" = bitcast i8* %"$msgobj_fname_62" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_61", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_63"
  %"$msgobj_td_64" = getelementptr i8, i8* %"$msgobj_52", i32 57
  %"$msgobj_td_65" = bitcast i8* %"$msgobj_td_64" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ** %"$msgobj_td_65"
  %"$msgobj_v_66" = getelementptr i8, i8* %"$msgobj_52", i32 65
  %"$msgobj_v_67" = bitcast i8* %"$msgobj_v_66" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_67"
  store i8* %"$msgobj_52", i8** %e
  %"$execptr_load_69" = load i8*, i8** @_execptr
  %"$e_70" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_69", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_70")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_71"(%Uint128 %_amount, [20 x i8]* %"$_sender_72", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_72"
  %x = alloca %Int32
  %"$c_tag_74" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_75" = load i8, i8* %"$c_tag_74"
  switch i8 %"$c_tag_75", label %"$empty_default_76" [
    i8 0, label %"$True_77"
    i8 1, label %"$False_79"
  ]

"$True_77":                                       ; preds = %entry
  %"$c_78" = bitcast %TName_Bool* %c to %CName_True*
  store %Int32 { i32 11 }, %Int32* %x
  br label %"$matchsucc_73"

"$False_79":                                      ; preds = %entry
  %"$c_80" = bitcast %TName_Bool* %c to %CName_False*
  store %Int32 { i32 41 }, %Int32* %x
  br label %"$matchsucc_73"

"$empty_default_76":                              ; preds = %entry
  br label %"$matchsucc_73"

"$matchsucc_73":                                  ; preds = %"$False_79", %"$True_77", %"$empty_default_76"
  %"$create_event__sender_81" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_81"
  %"$x_82" = load %Int32, %Int32* %x
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_81", %Int32 %"$x_82")
  %y = alloca %Int32
  store %Int32 { i32 31 }, %Int32* %y
  %"$c_tag_84" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_85" = load i8, i8* %"$c_tag_84"
  switch i8 %"$c_tag_85", label %"$empty_default_86" [
    i8 0, label %"$True_87"
    i8 1, label %"$False_91"
  ]

"$True_87":                                       ; preds = %"$matchsucc_73"
  %"$c_88" = bitcast %TName_Bool* %c to %CName_True*
  %"$y_0" = alloca %Int32
  store %Int32 { i32 101 }, %Int32* %"$y_0"
  %"$create_event__sender_89" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_89"
  %"$$y_0_90" = load %Int32, %Int32* %"$y_0"
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_89", %Int32 %"$$y_0_90")
  br label %"$matchsucc_83"

"$False_91":                                      ; preds = %"$matchsucc_73"
  %"$c_92" = bitcast %TName_Bool* %c to %CName_False*
  %"$y_1" = alloca %Int32
  store %Int32 { i32 102 }, %Int32* %"$y_1"
  %"$create_event__sender_93" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_93"
  %"$$y_1_94" = load %Int32, %Int32* %"$y_1"
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_93", %Int32 %"$$y_1_94")
  br label %"$matchsucc_83"

"$empty_default_86":                              ; preds = %"$matchsucc_73"
  br label %"$matchsucc_83"

"$matchsucc_83":                                  ; preds = %"$False_91", %"$True_87", %"$empty_default_86"
  %"$create_event__sender_95" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_95"
  %"$y_96" = load %Int32, %Int32* %y
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_95", %Int32 %"$y_96")
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_98" = getelementptr i8, i8* %0, i32 0
  %"$_amount_99" = bitcast i8* %"$_amount_98" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_99"
  %"$_sender_100" = getelementptr i8, i8* %0, i32 16
  %"$_sender_101" = bitcast i8* %"$_sender_100" to [20 x i8]*
  %"$c_102" = getelementptr i8, i8* %0, i32 36
  %"$c_103" = bitcast i8* %"$c_102" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_103"
  call void @"$t1_71"(%Uint128 %_amount, [20 x i8]* %"$_sender_101", %TName_Bool* %c)
  ret void
}
