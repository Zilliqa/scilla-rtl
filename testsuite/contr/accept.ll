

; gas_remaining: 4002000
; ModuleID = 'Accept'
source_filename = "Accept"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_2_env_52" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bnum_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 3, i32 0 }
@"$TyDescr_Bnum_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bnum_Prim_23" to i8*) }
@"$TyDescr_Message_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 4, i32 0 }
@"$TyDescr_Message_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Message_Prim_25" to i8*) }
@"$TyDescr_Event_Prim_27" = global %"$TyDescrTy_PrimTyp_4" { i32 5, i32 0 }
@"$TyDescr_Event_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Event_Prim_27" to i8*) }
@"$TyDescr_Exception_Prim_29" = global %"$TyDescrTy_PrimTyp_4" { i32 6, i32 0 }
@"$TyDescr_Exception_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Exception_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_List_Message_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_List_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_51", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_41" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38"]
@"$TyDescr_ADT_Cons_42" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_42", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_45" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_45", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_43", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_46"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26"]
@"$TyDescr_List_Message_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_40" }
@"$TyDescr_List_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_49"]
@"$TyDescr_ADT_List_51" = unnamed_addr constant [4 x i8] c"List"
@one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_79" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_84" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_87" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_94" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_119" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_124" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_127" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_134" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 16

define internal %TName_List_Message* @"$fundef_2"(%"$$fundef_2_env_52"* %0, i8* %1) {
entry:
  %"$retval_3" = alloca %TName_List_Message*
  %nil_msg = alloca %TName_List_Message*
  %"$adtval_53_load" = load i8*, i8** @_execptr
  %"$adtval_53_salloc" = call i8* @_salloc(i8* %"$adtval_53_load", i64 1)
  %"$adtval_53" = bitcast i8* %"$adtval_53_salloc" to %CName_Nil_Message*
  %"$adtgep_54" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_53", i32 0, i32 0
  store i8 1, i8* %"$adtgep_54"
  %"$adtptr_55" = bitcast %CName_Nil_Message* %"$adtval_53" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_55", %TName_List_Message** %nil_msg
  %"$nil_msg_56" = load %TName_List_Message*, %TName_List_Message** %nil_msg
  %"$adtval_57_load" = load i8*, i8** @_execptr
  %"$adtval_57_salloc" = call i8* @_salloc(i8* %"$adtval_57_load", i64 17)
  %"$adtval_57" = bitcast i8* %"$adtval_57_salloc" to %CName_Cons_Message*
  %"$adtgep_58" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_57", i32 0, i32 0
  store i8 0, i8* %"$adtgep_58"
  %"$adtgep_59" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_57", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_59"
  %"$adtgep_60" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_57", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_56", %TName_List_Message** %"$adtgep_60"
  %"$adtptr_61" = bitcast %CName_Cons_Message* %"$adtval_57" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_61", %TName_List_Message** %"$retval_3"
  %"$$retval_3_62" = load %TName_List_Message*, %TName_List_Message** %"$retval_3"
  ret %TName_List_Message* %"$$retval_3_62"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_52"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  ret void
}

define internal void @"$Accept1_66"(%Uint128 %_amount, [20 x i8]* %"$_sender_67") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_67"
  %"$execptr_load_68" = load i8*, i8** @_execptr
  call void @_accept(i8* %"$execptr_load_68")
  %"$execptr_load_69" = load i8*, i8** @_execptr
  call void @_accept(i8* %"$execptr_load_69")
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) {
entry:
  %"$_amount_71" = getelementptr i8, i8* %0, i32 0
  %"$_amount_72" = bitcast i8* %"$_amount_71" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_72"
  %"$_sender_73" = getelementptr i8, i8* %0, i32 16
  %"$_sender_74" = bitcast i8* %"$_sender_73" to [20 x i8]*
  call void @"$Accept1_66"(%Uint128 %_amount, [20 x i8]* %"$_sender_74")
  ret void
}

define internal void @"$Accept2_75"(%Uint128 %_amount, [20 x i8]* %"$_sender_76") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_76"
  %"$execptr_load_77" = load i8*, i8** @_execptr
  call void @_accept(i8* %"$execptr_load_77")
  %msg1 = alloca i8*
  %"$msgobj_78_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_78_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_78_salloc_load", i64 125)
  %"$msgobj_78_salloc" = bitcast i8* %"$msgobj_78_salloc_salloc" to [125 x i8]*
  %"$msgobj_78" = bitcast [125 x i8]* %"$msgobj_78_salloc" to i8*
  store i8 3, i8* %"$msgobj_78"
  %"$msgobj_fname_80" = getelementptr i8, i8* %"$msgobj_78", i32 1
  %"$msgobj_fname_81" = bitcast i8* %"$msgobj_fname_80" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_79", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_81"
  %"$msgobj_td_82" = getelementptr i8, i8* %"$msgobj_78", i32 17
  %"$msgobj_td_83" = bitcast i8* %"$msgobj_td_82" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_83"
  %"$msgobj_v_85" = getelementptr i8, i8* %"$msgobj_78", i32 25
  %"$msgobj_v_86" = bitcast i8* %"$msgobj_v_85" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_84", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_86"
  %"$msgobj_fname_88" = getelementptr i8, i8* %"$msgobj_78", i32 41
  %"$msgobj_fname_89" = bitcast i8* %"$msgobj_fname_88" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_87", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_89"
  %"$msgobj_td_90" = getelementptr i8, i8* %"$msgobj_78", i32 57
  %"$msgobj_td_91" = bitcast i8* %"$msgobj_td_90" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_91"
  %"$msgobj_v_92" = getelementptr i8, i8* %"$msgobj_78", i32 65
  %"$msgobj_v_93" = bitcast i8* %"$msgobj_v_92" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_93"
  %"$msgobj_fname_95" = getelementptr i8, i8* %"$msgobj_78", i32 85
  %"$msgobj_fname_96" = bitcast i8* %"$msgobj_fname_95" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_94", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_96"
  %"$msgobj_td_97" = getelementptr i8, i8* %"$msgobj_78", i32 101
  %"$msgobj_td_98" = bitcast i8* %"$msgobj_td_97" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_98"
  %"$msgobj_v_99" = getelementptr i8, i8* %"$msgobj_78", i32 109
  %"$msgobj_v_100" = bitcast i8* %"$msgobj_v_99" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_100"
  store i8* %"$msgobj_78", i8** %msg1
  %msgs = alloca %TName_List_Message*
  %"$one_msg_0" = alloca %TName_List_Message*
  %"$one_msg_102" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_103" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_102", 0
  %"$one_msg_envptr_104" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_102", 1
  %"$msg1_105" = load i8*, i8** %msg1
  %"$one_msg_call_106" = call %TName_List_Message* %"$one_msg_fptr_103"(i8* %"$one_msg_envptr_104", i8* %"$msg1_105")
  store %TName_List_Message* %"$one_msg_call_106", %TName_List_Message** %"$one_msg_0"
  %"$$one_msg_0_107" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_0"
  store %TName_List_Message* %"$$one_msg_0_107", %TName_List_Message** %msgs
  %"$execptr_load_108" = load i8*, i8** @_execptr
  %"$msgs_109" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_108", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_109")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) {
entry:
  %"$_amount_111" = getelementptr i8, i8* %0, i32 0
  %"$_amount_112" = bitcast i8* %"$_amount_111" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_112"
  %"$_sender_113" = getelementptr i8, i8* %0, i32 16
  %"$_sender_114" = bitcast i8* %"$_sender_113" to [20 x i8]*
  call void @"$Accept2_75"(%Uint128 %_amount, [20 x i8]* %"$_sender_114")
  ret void
}

define internal void @"$Accept3_115"(%Uint128 %_amount, [20 x i8]* %"$_sender_116") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_116"
  %"$execptr_load_117" = load i8*, i8** @_execptr
  call void @_accept(i8* %"$execptr_load_117")
  %msg1 = alloca i8*
  %"$msgobj_118_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_118_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_118_salloc_load", i64 125)
  %"$msgobj_118_salloc" = bitcast i8* %"$msgobj_118_salloc_salloc" to [125 x i8]*
  %"$msgobj_118" = bitcast [125 x i8]* %"$msgobj_118_salloc" to i8*
  store i8 3, i8* %"$msgobj_118"
  %"$msgobj_fname_120" = getelementptr i8, i8* %"$msgobj_118", i32 1
  %"$msgobj_fname_121" = bitcast i8* %"$msgobj_fname_120" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_119", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_121"
  %"$msgobj_td_122" = getelementptr i8, i8* %"$msgobj_118", i32 17
  %"$msgobj_td_123" = bitcast i8* %"$msgobj_td_122" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_123"
  %"$msgobj_v_125" = getelementptr i8, i8* %"$msgobj_118", i32 25
  %"$msgobj_v_126" = bitcast i8* %"$msgobj_v_125" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_124", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_126"
  %"$msgobj_fname_128" = getelementptr i8, i8* %"$msgobj_118", i32 41
  %"$msgobj_fname_129" = bitcast i8* %"$msgobj_fname_128" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_127", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_129"
  %"$msgobj_td_130" = getelementptr i8, i8* %"$msgobj_118", i32 57
  %"$msgobj_td_131" = bitcast i8* %"$msgobj_td_130" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_131"
  %"$msgobj_v_132" = getelementptr i8, i8* %"$msgobj_118", i32 65
  %"$msgobj_v_133" = bitcast i8* %"$msgobj_v_132" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_133"
  %"$msgobj_fname_135" = getelementptr i8, i8* %"$msgobj_118", i32 85
  %"$msgobj_fname_136" = bitcast i8* %"$msgobj_fname_135" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_134", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_136"
  %"$msgobj_td_137" = getelementptr i8, i8* %"$msgobj_118", i32 101
  %"$msgobj_td_138" = bitcast i8* %"$msgobj_td_137" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_138"
  %"$msgobj_v_139" = getelementptr i8, i8* %"$msgobj_118", i32 109
  %"$msgobj_v_140" = bitcast i8* %"$msgobj_v_139" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_140"
  store i8* %"$msgobj_118", i8** %msg1
  %msgs = alloca %TName_List_Message*
  %"$one_msg_1" = alloca %TName_List_Message*
  %"$one_msg_142" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_143" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_142", 0
  %"$one_msg_envptr_144" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_142", 1
  %"$msg1_145" = load i8*, i8** %msg1
  %"$one_msg_call_146" = call %TName_List_Message* %"$one_msg_fptr_143"(i8* %"$one_msg_envptr_144", i8* %"$msg1_145")
  store %TName_List_Message* %"$one_msg_call_146", %TName_List_Message** %"$one_msg_1"
  %"$$one_msg_1_147" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_1"
  store %TName_List_Message* %"$$one_msg_1_147", %TName_List_Message** %msgs
  %"$execptr_load_148" = load i8*, i8** @_execptr
  %"$msgs_149" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_148", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_149")
  ret void
}

define void @Accept3(i8* %0) {
entry:
  %"$_amount_151" = getelementptr i8, i8* %0, i32 0
  %"$_amount_152" = bitcast i8* %"$_amount_151" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_152"
  %"$_sender_153" = getelementptr i8, i8* %0, i32 16
  %"$_sender_154" = bitcast i8* %"$_sender_153" to [20 x i8]*
  call void @"$Accept3_115"(%Uint128 %_amount, [20 x i8]* %"$_sender_154")
  ret void
}
