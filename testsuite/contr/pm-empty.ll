

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
%"$TyDescr_AddrTyp_37" = type { i32, %"$TyDescr_AddrFieldTyp_36"* }
%"$TyDescr_AddrFieldTyp_36" = type { %TyDescrString, %_TyDescrTy_Typ* }
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
@"$TyDescr_ADT_Bool_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_31"* @"$TyDescr_Bool_ADTTyp_Specl_48" to i8*) }
@"$TyDescr_Addr_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_37"* @"$TyDescr_AddrFields_51" to i8*) }
@"$TyDescr_Bool_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_50", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_31"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_31"*], [1 x %"$TyDescrTy_ADTTyp_Specl_31"*]* @"$TyDescr_Bool_ADTTyp_m_specls_49", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_40" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_41" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_41", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_44" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_33" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_44", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_46" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_33"*] [%"$TyDescrTy_ADTTyp_Constr_33"* @"$TyDescr_Bool_True_ADTTyp_Constr_42", %"$TyDescrTy_ADTTyp_Constr_33"* @"$TyDescr_Bool_False_ADTTyp_Constr_45"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_31" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_33"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_33"*], [2 x %"$TyDescrTy_ADTTyp_Constr_33"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_32"* @"$TyDescr_Bool_ADTTyp_39" }
@"$TyDescr_Bool_ADTTyp_m_specls_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_31"*] [%"$TyDescrTy_ADTTyp_Specl_31"* @"$TyDescr_Bool_ADTTyp_Specl_48"]
@"$TyDescr_ADT_Bool_50" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_51" = unnamed_addr constant %"$TyDescr_AddrTyp_37" { i32 -1, %"$TyDescr_AddrFieldTyp_36"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_65" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_70" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_73" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Addr_38", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 17

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$create_event_52"(%Uint128 %_amount, [20 x i8]* %"$_sender_53", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_53", align 1
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_57"
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %"$msgobj_64_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_64_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_64_salloc_load", i64 69)
  %"$msgobj_64_salloc" = bitcast i8* %"$msgobj_64_salloc_salloc" to [69 x i8]*
  %"$msgobj_64" = bitcast [69 x i8]* %"$msgobj_64_salloc" to i8*
  store i8 2, i8* %"$msgobj_64", align 1
  %"$msgobj_fname_66" = getelementptr i8, i8* %"$msgobj_64", i32 1
  %"$msgobj_fname_67" = bitcast i8* %"$msgobj_fname_66" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_65", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_67", align 8
  %"$msgobj_td_68" = getelementptr i8, i8* %"$msgobj_64", i32 17
  %"$msgobj_td_69" = bitcast i8* %"$msgobj_td_68" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_69", align 8
  %"$msgobj_v_71" = getelementptr i8, i8* %"$msgobj_64", i32 25
  %"$msgobj_v_72" = bitcast i8* %"$msgobj_v_71" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_70", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_72", align 8
  %"$msgobj_fname_74" = getelementptr i8, i8* %"$msgobj_64", i32 41
  %"$msgobj_fname_75" = bitcast i8* %"$msgobj_fname_74" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_73", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_75", align 8
  %"$msgobj_td_76" = getelementptr i8, i8* %"$msgobj_64", i32 57
  %"$msgobj_td_77" = bitcast i8* %"$msgobj_td_76" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_2", %_TyDescrTy_Typ** %"$msgobj_td_77", align 8
  %"$msgobj_v_78" = getelementptr i8, i8* %"$msgobj_64", i32 65
  %"$msgobj_v_79" = bitcast i8* %"$msgobj_v_78" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_79", align 4
  store i8* %"$msgobj_64", i8** %e, align 8
  %"$e_81" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_83" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_81")
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 %"$_literal_cost_call_83", %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_62"
  %"$consume_88" = sub i64 %"$gasrem_84", %"$_literal_cost_call_83"
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$e_90" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_89", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_90")
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_91"(%Uint128 %_amount, [20 x i8]* %"$_sender_92", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_92", align 1
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 2, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 2
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$c_tag_109" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_110" = load i8, i8* %"$c_tag_109", align 1
  switch i8 %"$c_tag_110", label %"$empty_default_111" [
    i8 0, label %"$True_112"
    i8 1, label %"$False_114"
  ]

"$True_112":                                      ; preds = %"$have_gas_106"
  %"$c_113" = bitcast %TName_Bool* %c to %CName_True*
  br label %"$matchsucc_108"

"$False_114":                                     ; preds = %"$have_gas_106"
  %"$c_115" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$False_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$False_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$create_event__sender_121" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_121", align 1
  %"$x_122" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_52"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_121", %Int32 %"$x_122")
  br label %"$matchsucc_108"

"$empty_default_111":                             ; preds = %"$have_gas_106"
  br label %"$matchsucc_108"

"$matchsucc_108":                                 ; preds = %"$have_gas_119", %"$True_112", %"$empty_default_111"
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_124" = getelementptr i8, i8* %0, i32 0
  %"$_amount_125" = bitcast i8* %"$_amount_124" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_125", align 8
  %"$_sender_126" = getelementptr i8, i8* %0, i32 16
  %"$_sender_127" = bitcast i8* %"$_sender_126" to [20 x i8]*
  %"$c_128" = getelementptr i8, i8* %0, i32 36
  %"$c_129" = bitcast i8* %"$c_128" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_129", align 8
  call void @"$t1_91"(%Uint128 %_amount, [20 x i8]* %"$_sender_127", %TName_Bool* %c)
  ret void
}
