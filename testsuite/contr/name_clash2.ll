

; gas_remaining: 4002000
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_4" = global %"$TyDescrTy_PrimTyp_3" zeroinitializer
@"$TyDescr_Int32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int32_Prim_4" to i8*) }
@"$TyDescr_Uint32_Prim_6" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 0 }
@"$TyDescr_Uint32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint32_Prim_6" to i8*) }
@"$TyDescr_Int64_Prim_8" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 1 }
@"$TyDescr_Int64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int64_Prim_8" to i8*) }
@"$TyDescr_Uint64_Prim_10" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 1 }
@"$TyDescr_Uint64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint64_Prim_10" to i8*) }
@"$TyDescr_Int128_Prim_12" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 2 }
@"$TyDescr_Int128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int128_Prim_12" to i8*) }
@"$TyDescr_Uint128_Prim_14" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 2 }
@"$TyDescr_Uint128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint128_Prim_14" to i8*) }
@"$TyDescr_Int256_Prim_16" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 3 }
@"$TyDescr_Int256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int256_Prim_16" to i8*) }
@"$TyDescr_Uint256_Prim_18" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 3 }
@"$TyDescr_Uint256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint256_Prim_18" to i8*) }
@"$TyDescr_String_Prim_20" = global %"$TyDescrTy_PrimTyp_3" { i32 2, i32 0 }
@"$TyDescr_String_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_String_Prim_20" to i8*) }
@"$TyDescr_Bnum_Prim_22" = global %"$TyDescrTy_PrimTyp_3" { i32 3, i32 0 }
@"$TyDescr_Bnum_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bnum_Prim_22" to i8*) }
@"$TyDescr_Message_Prim_24" = global %"$TyDescrTy_PrimTyp_3" { i32 4, i32 0 }
@"$TyDescr_Message_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Message_Prim_24" to i8*) }
@"$TyDescr_Event_Prim_26" = global %"$TyDescrTy_PrimTyp_3" { i32 5, i32 0 }
@"$TyDescr_Event_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Event_Prim_26" to i8*) }
@"$TyDescr_Exception_Prim_28" = global %"$TyDescrTy_PrimTyp_3" { i32 6, i32 0 }
@"$TyDescr_Exception_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Exception_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_3" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_3" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
@"$TyDescr_ADT_Bool_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_48" to i8*) }
@"$TyDescr_Bool_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_50", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_34"*], [1 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Bool_ADTTyp_m_specls_49", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_40" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_41" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_41", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_44" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_44", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_46" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_True_ADTTyp_Constr_42", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_False_ADTTyp_Constr_45"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Bool_ADTTyp_39" }
@"$TyDescr_Bool_ADTTyp_m_specls_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_48"]
@"$TyDescr_ADT_Bool_50" = unnamed_addr constant [4 x i8] c"Bool"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$x_57" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_74" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_79" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_82" = unnamed_addr constant [7 x i8] c"message"
@"$x_103" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$x_2" = alloca %Int32
  %"$gasrem_51" = load i64, i64* @_gasrem
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %entry
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem
  store %Int32 { i32 1 }, %Int32* %"$x_2"
  %"$execptr_load_56" = load i8*, i8** @_execptr
  %"$$x_2_58" = load %Int32, %Int32* %"$x_2"
  %"$update_value_59" = alloca %Int32
  store %Int32 %"$$x_2_58", %Int32* %"$update_value_59"
  %"$update_value_60" = bitcast %Int32* %"$update_value_59" to i8*
  call void @_update_field(i8* %"$execptr_load_56", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_57", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_5", i32 0, i8* null, i8* %"$update_value_60")
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_61"(%Uint128 %_amount, [20 x i8]* %"$_sender_62", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_62"
  %"$gasrem_63" = load i64, i64* @_gasrem
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_68" = load i64, i64* @_gasrem
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem
  %"$msgobj_73_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_73_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_73_salloc_load", i64 69)
  %"$msgobj_73_salloc" = bitcast i8* %"$msgobj_73_salloc_salloc" to [69 x i8]*
  %"$msgobj_73" = bitcast [69 x i8]* %"$msgobj_73_salloc" to i8*
  store i8 2, i8* %"$msgobj_73"
  %"$msgobj_fname_75" = getelementptr i8, i8* %"$msgobj_73", i32 1
  %"$msgobj_fname_76" = bitcast i8* %"$msgobj_fname_75" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_74", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_76"
  %"$msgobj_td_77" = getelementptr i8, i8* %"$msgobj_73", i32 17
  %"$msgobj_td_78" = bitcast i8* %"$msgobj_td_77" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_78"
  %"$msgobj_v_80" = getelementptr i8, i8* %"$msgobj_73", i32 25
  %"$msgobj_v_81" = bitcast i8* %"$msgobj_v_80" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_79", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_81"
  %"$msgobj_fname_83" = getelementptr i8, i8* %"$msgobj_73", i32 41
  %"$msgobj_fname_84" = bitcast i8* %"$msgobj_fname_83" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_82", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_84"
  %"$msgobj_td_85" = getelementptr i8, i8* %"$msgobj_73", i32 57
  %"$msgobj_td_86" = bitcast i8* %"$msgobj_td_85" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ** %"$msgobj_td_86"
  %"$msgobj_v_87" = getelementptr i8, i8* %"$msgobj_73", i32 65
  %"$msgobj_v_88" = bitcast i8* %"$msgobj_v_87" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_88"
  store i8* %"$msgobj_73", i8** %e
  %"$e_90" = load i8*, i8** %e
  %"$_literal_cost_call_92" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_90")
  %"$gasrem_93" = load i64, i64* @_gasrem
  %"$gascmp_94" = icmp ugt i64 %"$_literal_cost_call_92", %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_71"
  %"$consume_97" = sub i64 %"$gasrem_93", %"$_literal_cost_call_92"
  store i64 %"$consume_97", i64* @_gasrem
  %"$execptr_load_98" = load i8*, i8** @_execptr
  %"$e_99" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_98", %_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_99")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_100"(%Uint128 %_amount, [20 x i8]* %"$_sender_101", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_101"
  %"$x_0" = alloca %Int32
  %"$execptr_load_102" = load i8*, i8** @_execptr
  %"$$x_0_104" = call i8* @_fetch_field(i8* %"$execptr_load_102", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_103", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_5", i32 0, i8* null, i32 1)
  %"$$x_0_105" = bitcast i8* %"$$x_0_104" to %Int32*
  %"$$x_0_106" = load %Int32, %Int32* %"$$x_0_105"
  store %Int32 %"$$x_0_106", %Int32* %"$x_0"
  %"$_literal_cost_$x_0_107" = alloca %Int32
  %"$$x_0_108" = load %Int32, %Int32* %"$x_0"
  store %Int32 %"$$x_0_108", %Int32* %"$_literal_cost_$x_0_107"
  %"$$_literal_cost_$x_0_107_109" = bitcast %Int32* %"$_literal_cost_$x_0_107" to i8*
  %"$_literal_cost_call_110" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_5", i8* %"$$_literal_cost_$x_0_107_109")
  %"$gasadd_111" = add i64 %"$_literal_cost_call_110", 0
  %"$gasrem_112" = load i64, i64* @_gasrem
  %"$gascmp_113" = icmp ugt i64 %"$gasadd_111", %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", %"$gasadd_111"
  store i64 %"$consume_116", i64* @_gasrem
  %"$gasrem_117" = load i64, i64* @_gasrem
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem
  %y = alloca %Int32
  %"$gasrem_122" = load i64, i64* @_gasrem
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem
  %"$x_1" = alloca %Int32
  %"$gasrem_127" = load i64, i64* @_gasrem
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem
  store %Int32 zeroinitializer, %Int32* %"$x_1"
  %"$gasrem_132" = load i64, i64* @_gasrem
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem
  %"$$x_1_137" = load %Int32, %Int32* %"$x_1"
  store %Int32 %"$$x_1_137", %Int32* %y
  %"$gasrem_138" = load i64, i64* @_gasrem
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_135"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem
  %z = alloca %Int32
  %"$$x_0_143" = load %Int32, %Int32* %"$x_0"
  %"$y_144" = load %Int32, %Int32* %y
  %"$add_call_145" = call %Int32 @_add_Int32(%Int32 %"$$x_0_143", %Int32 %"$y_144")
  store %Int32 %"$add_call_145", %Int32* %z
  %"$gasrem_146" = load i64, i64* @_gasrem
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_141"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem
  %"$create_event__sender_151" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_151"
  %"$z_152" = load %Int32, %Int32* %z
  call void @"$create_event_61"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_151", %Int32 %"$z_152")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @t1(i8* %0) {
entry:
  %"$_amount_154" = getelementptr i8, i8* %0, i32 0
  %"$_amount_155" = bitcast i8* %"$_amount_154" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_155"
  %"$_sender_156" = getelementptr i8, i8* %0, i32 16
  %"$_sender_157" = bitcast i8* %"$_sender_156" to [20 x i8]*
  %"$c_158" = getelementptr i8, i8* %0, i32 36
  %"$c_159" = bitcast i8* %"$c_158" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_159"
  call void @"$t1_100"(%Uint128 %_amount, [20 x i8]* %"$_sender_157", %TName_Bool* %c)
  ret void
}
