

; gas_remaining: 4002000
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_38" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_37"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_37" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_39"**, %"$TyDescrTy_ADTTyp_38"* }
%"$TyDescrTy_ADTTyp_Constr_39" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr20_Prim_35" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 20 }
@"$TyDescr_Bystr20_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr20_Prim_35" to i8*) }
@"$TyDescr_ADT_List_Int32_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_ADT_Bool_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_List_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_54", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_List_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40"]
@"$TyDescr_ADT_Cons_45" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_48" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_48", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_49"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@"$TyDescr_List_Int32_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_List_ADTTyp_43" }
@"$TyDescr_List_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_52"]
@"$TyDescr_ADT_List_54" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_66", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Bool_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_56" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_57" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_57", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_60" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_60", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_True_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_False_ADTTyp_Constr_61"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Bool_ADTTyp_55" }
@"$TyDescr_Bool_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Bool_66" = unnamed_addr constant [4 x i8] c"Bool"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$x_68" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_75" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_80" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_83" = unnamed_addr constant [7 x i8] c"message"
@"$x_96" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_30", %_TyDescrTy_Typ* @"$TyDescr_Int64_12", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22", %_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14", %_TyDescrTy_Typ* @"$TyDescr_Bnum_26", %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Exception_32", %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ* @"$TyDescr_Int256_20", %_TyDescrTy_Typ* @"$TyDescr_Int128_16", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@_tydescr_table_length = constant i32 17

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$x_5" = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %"$x_5"
  %"$execptr_load_67" = load i8*, i8** @_execptr
  %"$$x_5_69" = load %Int32, %Int32* %"$x_5"
  %"$update_value_70" = alloca %Int32
  store %Int32 %"$$x_5_69", %Int32* %"$update_value_70"
  %"$update_value_71" = bitcast %Int32* %"$update_value_70" to i8*
  call void @_update_field(i8* %"$execptr_load_67", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_68", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i8* %"$update_value_71")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_72"(%Uint128 %_amount, [20 x i8]* %"$_sender_73", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_73"
  %e = alloca i8*
  %"$msgobj_74_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_74_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_74_salloc_load", i64 69)
  %"$msgobj_74_salloc" = bitcast i8* %"$msgobj_74_salloc_salloc" to [69 x i8]*
  %"$msgobj_74" = bitcast [69 x i8]* %"$msgobj_74_salloc" to i8*
  store i8 2, i8* %"$msgobj_74"
  %"$msgobj_fname_76" = getelementptr i8, i8* %"$msgobj_74", i32 1
  %"$msgobj_fname_77" = bitcast i8* %"$msgobj_fname_76" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_75", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_77"
  %"$msgobj_td_78" = getelementptr i8, i8* %"$msgobj_74", i32 17
  %"$msgobj_td_79" = bitcast i8* %"$msgobj_td_78" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_79"
  %"$msgobj_v_81" = getelementptr i8, i8* %"$msgobj_74", i32 25
  %"$msgobj_v_82" = bitcast i8* %"$msgobj_v_81" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_80", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_82"
  %"$msgobj_fname_84" = getelementptr i8, i8* %"$msgobj_74", i32 41
  %"$msgobj_fname_85" = bitcast i8* %"$msgobj_fname_84" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_83", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_85"
  %"$msgobj_td_86" = getelementptr i8, i8* %"$msgobj_74", i32 57
  %"$msgobj_td_87" = bitcast i8* %"$msgobj_td_86" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ** %"$msgobj_td_87"
  %"$msgobj_v_88" = getelementptr i8, i8* %"$msgobj_74", i32 65
  %"$msgobj_v_89" = bitcast i8* %"$msgobj_v_88" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_89"
  store i8* %"$msgobj_74", i8** %e
  %"$execptr_load_91" = load i8*, i8** @_execptr
  %"$e_92" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_91", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_92")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_93"(%Uint128 %_amount, [20 x i8]* %"$_sender_94", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_94"
  %"$x_0" = alloca %Int32
  %"$execptr_load_95" = load i8*, i8** @_execptr
  %"$$x_0_97" = call i8* @_fetch_field(i8* %"$execptr_load_95", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_96", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i32 1)
  %"$$x_0_98" = bitcast i8* %"$$x_0_97" to %Int32*
  %"$$x_0_99" = load %Int32, %Int32* %"$$x_0_98"
  store %Int32 %"$$x_0_99", %Int32* %"$x_0"
  %"$x_1" = alloca %TName_List_Int32*
  %"$adtval_100_load" = load i8*, i8** @_execptr
  %"$adtval_100_salloc" = call i8* @_salloc(i8* %"$adtval_100_load", i64 1)
  %"$adtval_100" = bitcast i8* %"$adtval_100_salloc" to %CName_Nil_Int32*
  %"$adtgep_101" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_100", i32 0, i32 0
  store i8 1, i8* %"$adtgep_101"
  %"$adtptr_102" = bitcast %CName_Nil_Int32* %"$adtval_100" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_102", %TName_List_Int32** %"$x_1"
  %"$x_3" = alloca %Int32
  %"$$x_1_104" = load %TName_List_Int32*, %TName_List_Int32** %"$x_1"
  %"$$x_1_tag_105" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_1_104", i32 0, i32 0
  %"$$x_1_tag_106" = load i8, i8* %"$$x_1_tag_105"
  switch i8 %"$$x_1_tag_106", label %"$empty_default_107" [
    i8 0, label %"$Cons_108"
    i8 1, label %"$Nil_115"
  ]

"$Cons_108":                                      ; preds = %entry
  %"$$x_1_109" = bitcast %TName_List_Int32* %"$$x_1_104" to %CName_Cons_Int32*
  %"$$x_2_gep_110" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_109", i32 0, i32 1
  %"$$x_2_load_111" = load %Int32, %Int32* %"$$x_2_gep_110"
  %"$x_2" = alloca %Int32
  store %Int32 %"$$x_2_load_111", %Int32* %"$x_2"
  %"$$$x_1_4_gep_112" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_109", i32 0, i32 2
  %"$$$x_1_4_load_113" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_1_4_gep_112"
  %"$$x_1_4" = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$$$x_1_4_load_113", %TName_List_Int32** %"$$x_1_4"
  %"$$x_2_114" = load %Int32, %Int32* %"$x_2"
  store %Int32 %"$$x_2_114", %Int32* %"$x_3"
  br label %"$matchsucc_103"

"$Nil_115":                                       ; preds = %entry
  %"$$x_1_116" = bitcast %TName_List_Int32* %"$$x_1_104" to %CName_Nil_Int32*
  store %Int32 { i32 2 }, %Int32* %"$x_3"
  br label %"$matchsucc_103"

"$empty_default_107":                             ; preds = %entry
  br label %"$matchsucc_103"

"$matchsucc_103":                                 ; preds = %"$Nil_115", %"$Cons_108", %"$empty_default_107"
  %"$create_event__sender_117" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_117"
  %"$$x_3_118" = load %Int32, %Int32* %"$x_3"
  call void @"$create_event_72"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_117", %Int32 %"$$x_3_118")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) {
entry:
  %"$_amount_120" = getelementptr i8, i8* %0, i32 0
  %"$_amount_121" = bitcast i8* %"$_amount_120" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_121"
  %"$_sender_122" = getelementptr i8, i8* %0, i32 16
  %"$_sender_123" = bitcast i8* %"$_sender_122" to [20 x i8]*
  %"$c_124" = getelementptr i8, i8* %0, i32 36
  %"$c_125" = bitcast i8* %"$c_124" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_125"
  call void @"$t1_93"(%Uint128 %_amount, [20 x i8]* %"$_sender_123", %TName_Bool* %c)
  ret void
}
