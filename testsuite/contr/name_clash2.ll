

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
@"$x_52" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_59" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_64" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_67" = unnamed_addr constant [7 x i8] c"message"
@"$x_80" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$x_2" = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %"$x_2"
  %"$execptr_load_51" = load i8*, i8** @_execptr
  %"$$x_2_53" = load %Int32, %Int32* %"$x_2"
  %"$update_value_54" = alloca %Int32
  store %Int32 %"$$x_2_53", %Int32* %"$update_value_54"
  %"$update_value_55" = bitcast %Int32* %"$update_value_54" to i8*
  call void @_update_field(i8* %"$execptr_load_51", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_52", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_5", i32 0, i8* null, i8* %"$update_value_55")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_56"(%Uint128 %_amount, [20 x i8]* %"$_sender_57", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_57"
  %e = alloca i8*
  %"$msgobj_58_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_58_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_58_salloc_load", i64 69)
  %"$msgobj_58_salloc" = bitcast i8* %"$msgobj_58_salloc_salloc" to [69 x i8]*
  %"$msgobj_58" = bitcast [69 x i8]* %"$msgobj_58_salloc" to i8*
  store i8 2, i8* %"$msgobj_58"
  %"$msgobj_fname_60" = getelementptr i8, i8* %"$msgobj_58", i32 1
  %"$msgobj_fname_61" = bitcast i8* %"$msgobj_fname_60" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_59", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_61"
  %"$msgobj_td_62" = getelementptr i8, i8* %"$msgobj_58", i32 17
  %"$msgobj_td_63" = bitcast i8* %"$msgobj_td_62" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_63"
  %"$msgobj_v_65" = getelementptr i8, i8* %"$msgobj_58", i32 25
  %"$msgobj_v_66" = bitcast i8* %"$msgobj_v_65" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_64", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_66"
  %"$msgobj_fname_68" = getelementptr i8, i8* %"$msgobj_58", i32 41
  %"$msgobj_fname_69" = bitcast i8* %"$msgobj_fname_68" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_67", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_69"
  %"$msgobj_td_70" = getelementptr i8, i8* %"$msgobj_58", i32 57
  %"$msgobj_td_71" = bitcast i8* %"$msgobj_td_70" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ** %"$msgobj_td_71"
  %"$msgobj_v_72" = getelementptr i8, i8* %"$msgobj_58", i32 65
  %"$msgobj_v_73" = bitcast i8* %"$msgobj_v_72" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_73"
  store i8* %"$msgobj_58", i8** %e
  %"$execptr_load_75" = load i8*, i8** @_execptr
  %"$e_76" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_75", %_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_76")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_77"(%Uint128 %_amount, [20 x i8]* %"$_sender_78", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_78"
  %"$x_0" = alloca %Int32
  %"$execptr_load_79" = load i8*, i8** @_execptr
  %"$$x_0_81" = call i8* @_fetch_field(i8* %"$execptr_load_79", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_80", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_5", i32 0, i8* null, i32 1)
  %"$$x_0_82" = bitcast i8* %"$$x_0_81" to %Int32*
  %"$$x_0_83" = load %Int32, %Int32* %"$$x_0_82"
  store %Int32 %"$$x_0_83", %Int32* %"$x_0"
  %y = alloca %Int32
  %"$x_1" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$x_1"
  %"$$x_1_84" = load %Int32, %Int32* %"$x_1"
  store %Int32 %"$$x_1_84", %Int32* %y
  %z = alloca %Int32
  %"$$x_0_85" = load %Int32, %Int32* %"$x_0"
  %"$y_86" = load %Int32, %Int32* %y
  %"$add_call_87" = call %Int32 @_add_Int32(%Int32 %"$$x_0_85", %Int32 %"$y_86")
  store %Int32 %"$add_call_87", %Int32* %z
  %"$create_event__sender_88" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_88"
  %"$z_89" = load %Int32, %Int32* %z
  call void @"$create_event_56"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_88", %Int32 %"$z_89")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @t1(i8* %0) {
entry:
  %"$_amount_91" = getelementptr i8, i8* %0, i32 0
  %"$_amount_92" = bitcast i8* %"$_amount_91" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_92"
  %"$_sender_93" = getelementptr i8, i8* %0, i32 16
  %"$_sender_94" = bitcast i8* %"$_sender_93" to [20 x i8]*
  %"$c_95" = getelementptr i8, i8* %0, i32 36
  %"$c_96" = bitcast i8* %"$c_95" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_96"
  call void @"$t1_77"(%Uint128 %_amount, [20 x i8]* %"$_sender_94", %TName_Bool* %c)
  ret void
}
