

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
@"$stringlit_63" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_68" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_71" = unnamed_addr constant [7 x i8] c"message"
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
  %"$gasrem_52" = load i64, i64* @_gasrem
  %"$gascmp_53" = icmp ugt i64 1, %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %entry
  %"$consume_56" = sub i64 %"$gasrem_52", 1
  store i64 %"$consume_56", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_57" = load i64, i64* @_gasrem
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %"$have_gas_55"
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %"$have_gas_55"
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem
  %"$msgobj_62_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_62_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_62_salloc_load", i64 69)
  %"$msgobj_62_salloc" = bitcast i8* %"$msgobj_62_salloc_salloc" to [69 x i8]*
  %"$msgobj_62" = bitcast [69 x i8]* %"$msgobj_62_salloc" to i8*
  store i8 2, i8* %"$msgobj_62"
  %"$msgobj_fname_64" = getelementptr i8, i8* %"$msgobj_62", i32 1
  %"$msgobj_fname_65" = bitcast i8* %"$msgobj_fname_64" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_63", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_65"
  %"$msgobj_td_66" = getelementptr i8, i8* %"$msgobj_62", i32 17
  %"$msgobj_td_67" = bitcast i8* %"$msgobj_td_66" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_67"
  %"$msgobj_v_69" = getelementptr i8, i8* %"$msgobj_62", i32 25
  %"$msgobj_v_70" = bitcast i8* %"$msgobj_v_69" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_68", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_70"
  %"$msgobj_fname_72" = getelementptr i8, i8* %"$msgobj_62", i32 41
  %"$msgobj_fname_73" = bitcast i8* %"$msgobj_fname_72" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_71", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_73"
  %"$msgobj_td_74" = getelementptr i8, i8* %"$msgobj_62", i32 57
  %"$msgobj_td_75" = bitcast i8* %"$msgobj_td_74" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ** %"$msgobj_td_75"
  %"$msgobj_v_76" = getelementptr i8, i8* %"$msgobj_62", i32 65
  %"$msgobj_v_77" = bitcast i8* %"$msgobj_v_76" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_77"
  store i8* %"$msgobj_62", i8** %e
  %"$e_79" = load i8*, i8** %e
  %"$_literal_cost_call_81" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_79")
  %"$gasrem_82" = load i64, i64* @_gasrem
  %"$gascmp_83" = icmp ugt i64 %"$_literal_cost_call_81", %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_60"
  %"$consume_86" = sub i64 %"$gasrem_82", %"$_literal_cost_call_81"
  store i64 %"$consume_86", i64* @_gasrem
  %"$execptr_load_87" = load i8*, i8** @_execptr
  %"$e_88" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_87", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_88")
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_89"(%Uint128 %_amount, [20 x i8]* %"$_sender_90", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_90"
  %"$gasrem_91" = load i64, i64* @_gasrem
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem
  %x = alloca %Int32
  %"$gasrem_96" = load i64, i64* @_gasrem
  %"$gascmp_97" = icmp ugt i64 2, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 2
  store i64 %"$consume_100", i64* @_gasrem
  %"$c_tag_102" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_103" = load i8, i8* %"$c_tag_102"
  switch i8 %"$c_tag_103", label %"$empty_default_104" [
    i8 0, label %"$True_105"
    i8 1, label %"$False_112"
  ]

"$True_105":                                      ; preds = %"$have_gas_99"
  %"$c_106" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_107" = load i64, i64* @_gasrem
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$True_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$True_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem
  store %Int32 { i32 11 }, %Int32* %x
  br label %"$matchsucc_101"

"$False_112":                                     ; preds = %"$have_gas_99"
  %"$c_113" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_114" = load i64, i64* @_gasrem
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$False_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$False_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem
  store %Int32 { i32 41 }, %Int32* %x
  br label %"$matchsucc_101"

"$empty_default_104":                             ; preds = %"$have_gas_99"
  br label %"$matchsucc_101"

"$matchsucc_101":                                 ; preds = %"$have_gas_117", %"$have_gas_110", %"$empty_default_104"
  %"$gasrem_119" = load i64, i64* @_gasrem
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$matchsucc_101"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$matchsucc_101"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem
  %"$create_event__sender_124" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_124"
  %"$x_125" = load %Int32, %Int32* %x
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_124", %Int32 %"$x_125")
  %"$gasrem_126" = load i64, i64* @_gasrem
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_122"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem
  %y = alloca %Int32
  %"$gasrem_131" = load i64, i64* @_gasrem
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem
  store %Int32 { i32 31 }, %Int32* %y
  %"$gasrem_136" = load i64, i64* @_gasrem
  %"$gascmp_137" = icmp ugt i64 2, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 2
  store i64 %"$consume_140", i64* @_gasrem
  %"$c_tag_142" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_143" = load i8, i8* %"$c_tag_142"
  switch i8 %"$c_tag_143", label %"$empty_default_144" [
    i8 0, label %"$True_145"
    i8 1, label %"$False_164"
  ]

"$True_145":                                      ; preds = %"$have_gas_139"
  %"$c_146" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_147" = load i64, i64* @_gasrem
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$True_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$True_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem
  %"$y_0" = alloca %Int32
  %"$gasrem_152" = load i64, i64* @_gasrem
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem
  store %Int32 { i32 101 }, %Int32* %"$y_0"
  %"$gasrem_157" = load i64, i64* @_gasrem
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem
  %"$create_event__sender_162" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_162"
  %"$$y_0_163" = load %Int32, %Int32* %"$y_0"
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_162", %Int32 %"$$y_0_163")
  br label %"$matchsucc_141"

"$False_164":                                     ; preds = %"$have_gas_139"
  %"$c_165" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_166" = load i64, i64* @_gasrem
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$False_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$False_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem
  %"$y_1" = alloca %Int32
  %"$gasrem_171" = load i64, i64* @_gasrem
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem
  store %Int32 { i32 102 }, %Int32* %"$y_1"
  %"$gasrem_176" = load i64, i64* @_gasrem
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem
  %"$create_event__sender_181" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_181"
  %"$$y_1_182" = load %Int32, %Int32* %"$y_1"
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_181", %Int32 %"$$y_1_182")
  br label %"$matchsucc_141"

"$empty_default_144":                             ; preds = %"$have_gas_139"
  br label %"$matchsucc_141"

"$matchsucc_141":                                 ; preds = %"$have_gas_179", %"$have_gas_160", %"$empty_default_144"
  %"$gasrem_183" = load i64, i64* @_gasrem
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$matchsucc_141"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$matchsucc_141"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem
  %"$create_event__sender_188" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_188"
  %"$y_189" = load %Int32, %Int32* %y
  call void @"$create_event_50"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_188", %Int32 %"$y_189")
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_191" = getelementptr i8, i8* %0, i32 0
  %"$_amount_192" = bitcast i8* %"$_amount_191" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_192"
  %"$_sender_193" = getelementptr i8, i8* %0, i32 16
  %"$_sender_194" = bitcast i8* %"$_sender_193" to [20 x i8]*
  %"$c_195" = getelementptr i8, i8* %0, i32 36
  %"$c_196" = bitcast i8* %"$c_195" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_196"
  call void @"$t1_89"(%Uint128 %_amount, [20 x i8]* %"$_sender_194", %TName_Bool* %c)
  ret void
}
