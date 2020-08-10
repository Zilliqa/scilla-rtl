

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
%Uint128 = type { i128 }
%Int32 = type { i32 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
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
@"$stringlit_54" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_59" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_62" = unnamed_addr constant [7 x i8] c"message"
@"$x_75" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() {
entry:
  ret void
}

define internal void @"$create_event_51"(%Uint128 %_amount, [20 x i8]* %"$_sender_52", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_52"
  %e = alloca i8*
  %"$msgobj_53_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_53_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_53_salloc_load", i64 69)
  %"$msgobj_53_salloc" = bitcast i8* %"$msgobj_53_salloc_salloc" to [69 x i8]*
  %"$msgobj_53" = bitcast [69 x i8]* %"$msgobj_53_salloc" to i8*
  store i8 2, i8* %"$msgobj_53"
  %"$msgobj_fname_55" = getelementptr i8, i8* %"$msgobj_53", i32 1
  %"$msgobj_fname_56" = bitcast i8* %"$msgobj_fname_55" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_54", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_56"
  %"$msgobj_td_57" = getelementptr i8, i8* %"$msgobj_53", i32 17
  %"$msgobj_td_58" = bitcast i8* %"$msgobj_td_57" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_58"
  %"$msgobj_v_60" = getelementptr i8, i8* %"$msgobj_53", i32 25
  %"$msgobj_v_61" = bitcast i8* %"$msgobj_v_60" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_59", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_61"
  %"$msgobj_fname_63" = getelementptr i8, i8* %"$msgobj_53", i32 41
  %"$msgobj_fname_64" = bitcast i8* %"$msgobj_fname_63" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_62", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_64"
  %"$msgobj_td_65" = getelementptr i8, i8* %"$msgobj_53", i32 57
  %"$msgobj_td_66" = bitcast i8* %"$msgobj_td_65" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ** %"$msgobj_td_66"
  %"$msgobj_v_67" = getelementptr i8, i8* %"$msgobj_53", i32 65
  %"$msgobj_v_68" = bitcast i8* %"$msgobj_v_67" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_68"
  store i8* %"$msgobj_53", i8** %e
  %"$execptr_load_70" = load i8*, i8** @_execptr
  %"$e_71" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_70", %_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_71")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_72"(%Uint128 %_amount, [20 x i8]* %"$_sender_73", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_73"
  %"$x_0" = alloca %Int32
  %"$execptr_load_74" = load i8*, i8** @_execptr
  %"$$x_0_76" = call i8* @_fetch_field(i8* %"$execptr_load_74", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_75", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_5", i32 0, i8* null, i32 1)
  %"$$x_0_77" = bitcast i8* %"$$x_0_76" to %Int32*
  %"$$x_0_78" = load %Int32, %Int32* %"$$x_0_77"
  store %Int32 %"$$x_0_78", %Int32* %"$x_0"
  %y = alloca %Int32
  %"$x_1" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$x_1"
  %"$$x_1_79" = load %Int32, %Int32* %"$x_1"
  store %Int32 %"$$x_1_79", %Int32* %y
  %z = alloca %Int32
  %"$$x_0_80" = load %Int32, %Int32* %"$x_0"
  %"$y_81" = load %Int32, %Int32* %y
  %"$add_call_82" = call %Int32 @_add_Int32(%Int32 %"$$x_0_80", %Int32 %"$y_81")
  store %Int32 %"$add_call_82", %Int32* %z
  %"$create_event__sender_83" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_83"
  %"$z_84" = load %Int32, %Int32* %z
  call void @"$create_event_51"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_83", %Int32 %"$z_84")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @t1(i8* %0) {
entry:
  %"$_amount_86" = getelementptr i8, i8* %0, i32 0
  %"$_amount_87" = bitcast i8* %"$_amount_86" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_87"
  %"$_sender_88" = getelementptr i8, i8* %0, i32 16
  %"$_sender_89" = bitcast i8* %"$_sender_88" to [20 x i8]*
  %"$c_90" = getelementptr i8, i8* %0, i32 36
  %"$c_91" = bitcast i8* %"$c_90" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_91"
  call void @"$t1_72"(%Uint128 %_amount, [20 x i8]* %"$_sender_89", %TName_Bool* %c)
  ret void
}
