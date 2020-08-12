

; gas_remaining: 4002000
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
@"$stringlit_51" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_56" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_59" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$create_event_48"(%Uint128 %_amount, [20 x i8]* %"$_sender_49", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_49"
  %e = alloca i8*
  %"$msgobj_50_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_50_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_50_salloc_load", i64 69)
  %"$msgobj_50_salloc" = bitcast i8* %"$msgobj_50_salloc_salloc" to [69 x i8]*
  %"$msgobj_50" = bitcast [69 x i8]* %"$msgobj_50_salloc" to i8*
  store i8 2, i8* %"$msgobj_50"
  %"$msgobj_fname_52" = getelementptr i8, i8* %"$msgobj_50", i32 1
  %"$msgobj_fname_53" = bitcast i8* %"$msgobj_fname_52" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_51", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_53"
  %"$msgobj_td_54" = getelementptr i8, i8* %"$msgobj_50", i32 17
  %"$msgobj_td_55" = bitcast i8* %"$msgobj_td_54" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_55"
  %"$msgobj_v_57" = getelementptr i8, i8* %"$msgobj_50", i32 25
  %"$msgobj_v_58" = bitcast i8* %"$msgobj_v_57" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_56", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_58"
  %"$msgobj_fname_60" = getelementptr i8, i8* %"$msgobj_50", i32 41
  %"$msgobj_fname_61" = bitcast i8* %"$msgobj_fname_60" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_59", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_61"
  %"$msgobj_td_62" = getelementptr i8, i8* %"$msgobj_50", i32 57
  %"$msgobj_td_63" = bitcast i8* %"$msgobj_td_62" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_2", %_TyDescrTy_Typ** %"$msgobj_td_63"
  %"$msgobj_v_64" = getelementptr i8, i8* %"$msgobj_50", i32 65
  %"$msgobj_v_65" = bitcast i8* %"$msgobj_v_64" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_65"
  store i8* %"$msgobj_50", i8** %e
  %"$execptr_load_67" = load i8*, i8** @_execptr
  %"$e_68" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_67", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_68")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_69"(%Uint128 %_amount, [20 x i8]* %"$_sender_70", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_70"
  %x = alloca %Int32
  %"$c_tag_72" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_73" = load i8, i8* %"$c_tag_72"
  switch i8 %"$c_tag_73", label %"$empty_default_74" [
    i8 0, label %"$True_75"
    i8 1, label %"$False_77"
  ]

"$True_75":                                       ; preds = %entry
  %"$c_76" = bitcast %TName_Bool* %c to %CName_True*
  store %Int32 { i32 11 }, %Int32* %x
  br label %"$matchsucc_71"

"$False_77":                                      ; preds = %entry
  %"$c_78" = bitcast %TName_Bool* %c to %CName_False*
  store %Int32 { i32 41 }, %Int32* %x
  br label %"$matchsucc_71"

"$empty_default_74":                              ; preds = %entry
  br label %"$matchsucc_71"

"$matchsucc_71":                                  ; preds = %"$False_77", %"$True_75", %"$empty_default_74"
  %"$create_event__sender_79" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_79"
  %"$x_80" = load %Int32, %Int32* %x
  call void @"$create_event_48"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_79", %Int32 %"$x_80")
  %"$c_tag_82" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_83" = load i8, i8* %"$c_tag_82"
  switch i8 %"$c_tag_83", label %"$empty_default_84" [
    i8 0, label %"$True_85"
    i8 1, label %"$False_89"
  ]

"$True_85":                                       ; preds = %"$matchsucc_71"
  %"$c_86" = bitcast %TName_Bool* %c to %CName_True*
  %y = alloca %Int32
  store %Int32 { i32 101 }, %Int32* %y
  %"$create_event__sender_87" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_87"
  %"$y_88" = load %Int32, %Int32* %y
  call void @"$create_event_48"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_87", %Int32 %"$y_88")
  br label %"$matchsucc_81"

"$False_89":                                      ; preds = %"$matchsucc_71"
  %"$c_90" = bitcast %TName_Bool* %c to %CName_False*
  %y1 = alloca %Int32
  store %Int32 { i32 102 }, %Int32* %y1
  %"$create_event__sender_91" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_91"
  %"$y_92" = load %Int32, %Int32* %y1
  call void @"$create_event_48"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_91", %Int32 %"$y_92")
  br label %"$matchsucc_81"

"$empty_default_84":                              ; preds = %"$matchsucc_71"
  br label %"$matchsucc_81"

"$matchsucc_81":                                  ; preds = %"$False_89", %"$True_85", %"$empty_default_84"
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_94" = getelementptr i8, i8* %0, i32 0
  %"$_amount_95" = bitcast i8* %"$_amount_94" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_95"
  %"$_sender_96" = getelementptr i8, i8* %0, i32 16
  %"$_sender_97" = bitcast i8* %"$_sender_96" to [20 x i8]*
  %"$c_98" = getelementptr i8, i8* %0, i32 36
  %"$c_99" = bitcast i8* %"$c_98" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_99"
  call void @"$t1_69"(%Uint128 %_amount, [20 x i8]* %"$_sender_97", %TName_Bool* %c)
  ret void
}
