

; gas_remaining: 4002000
; ModuleID = 'Send'
source_filename = "Send"
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
@"$stringlit_69" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_74" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_77" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_84" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_108" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_113" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_116" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_123" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_132" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_137" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_140" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_147" = unnamed_addr constant [7 x i8] c"_amount"
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

define internal void @"$SendMsg_66"(%Uint128 %_amount, [20 x i8]* %"$_sender_67") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_67"
  %msg1 = alloca i8*
  %"$msgobj_68_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_68_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_68_salloc_load", i64 125)
  %"$msgobj_68_salloc" = bitcast i8* %"$msgobj_68_salloc_salloc" to [125 x i8]*
  %"$msgobj_68" = bitcast [125 x i8]* %"$msgobj_68_salloc" to i8*
  store i8 3, i8* %"$msgobj_68"
  %"$msgobj_fname_70" = getelementptr i8, i8* %"$msgobj_68", i32 1
  %"$msgobj_fname_71" = bitcast i8* %"$msgobj_fname_70" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_69", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_71"
  %"$msgobj_td_72" = getelementptr i8, i8* %"$msgobj_68", i32 17
  %"$msgobj_td_73" = bitcast i8* %"$msgobj_td_72" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_73"
  %"$msgobj_v_75" = getelementptr i8, i8* %"$msgobj_68", i32 25
  %"$msgobj_v_76" = bitcast i8* %"$msgobj_v_75" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_74", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_76"
  %"$msgobj_fname_78" = getelementptr i8, i8* %"$msgobj_68", i32 41
  %"$msgobj_fname_79" = bitcast i8* %"$msgobj_fname_78" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_77", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_79"
  %"$msgobj_td_80" = getelementptr i8, i8* %"$msgobj_68", i32 57
  %"$msgobj_td_81" = bitcast i8* %"$msgobj_td_80" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_81"
  %"$msgobj_v_82" = getelementptr i8, i8* %"$msgobj_68", i32 65
  %"$msgobj_v_83" = bitcast i8* %"$msgobj_v_82" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_83"
  %"$msgobj_fname_85" = getelementptr i8, i8* %"$msgobj_68", i32 85
  %"$msgobj_fname_86" = bitcast i8* %"$msgobj_fname_85" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_84", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_86"
  %"$msgobj_td_87" = getelementptr i8, i8* %"$msgobj_68", i32 101
  %"$msgobj_td_88" = bitcast i8* %"$msgobj_td_87" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_88"
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_68", i32 109
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_90"
  store i8* %"$msgobj_68", i8** %msg1
  %msgs1 = alloca %TName_List_Message*
  %"$one_msg_0" = alloca %TName_List_Message*
  %"$one_msg_92" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_93" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_92", 0
  %"$one_msg_envptr_94" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_92", 1
  %"$msg1_95" = load i8*, i8** %msg1
  %"$one_msg_call_96" = call %TName_List_Message* %"$one_msg_fptr_93"(i8* %"$one_msg_envptr_94", i8* %"$msg1_95")
  store %TName_List_Message* %"$one_msg_call_96", %TName_List_Message** %"$one_msg_0"
  %"$$one_msg_0_97" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_0"
  store %TName_List_Message* %"$$one_msg_0_97", %TName_List_Message** %msgs1
  %"$to_nat_load_98" = load i8*, i8** @_execptr
  %"$msgs1_99" = load %TName_List_Message*, %TName_List_Message** %msgs1
  call void @_send(i8* %"$to_nat_load_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs1_99")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) {
entry:
  %"$_amount_101" = getelementptr i8, i8* %0, i32 0
  %"$_amount_102" = bitcast i8* %"$_amount_101" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_102"
  %"$_sender_103" = getelementptr i8, i8* %0, i32 16
  %"$_sender_104" = bitcast i8* %"$_sender_103" to [20 x i8]*
  call void @"$SendMsg_66"(%Uint128 %_amount, [20 x i8]* %"$_sender_104")
  ret void
}

define internal void @"$SendMsg2_105"(%Uint128 %_amount, [20 x i8]* %"$_sender_106") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_106"
  %msg1 = alloca i8*
  %"$msgobj_107_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_107_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_107_salloc_load", i64 125)
  %"$msgobj_107_salloc" = bitcast i8* %"$msgobj_107_salloc_salloc" to [125 x i8]*
  %"$msgobj_107" = bitcast [125 x i8]* %"$msgobj_107_salloc" to i8*
  store i8 3, i8* %"$msgobj_107"
  %"$msgobj_fname_109" = getelementptr i8, i8* %"$msgobj_107", i32 1
  %"$msgobj_fname_110" = bitcast i8* %"$msgobj_fname_109" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_108", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_110"
  %"$msgobj_td_111" = getelementptr i8, i8* %"$msgobj_107", i32 17
  %"$msgobj_td_112" = bitcast i8* %"$msgobj_td_111" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_112"
  %"$msgobj_v_114" = getelementptr i8, i8* %"$msgobj_107", i32 25
  %"$msgobj_v_115" = bitcast i8* %"$msgobj_v_114" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_113", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_115"
  %"$msgobj_fname_117" = getelementptr i8, i8* %"$msgobj_107", i32 41
  %"$msgobj_fname_118" = bitcast i8* %"$msgobj_fname_117" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_116", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_118"
  %"$msgobj_td_119" = getelementptr i8, i8* %"$msgobj_107", i32 57
  %"$msgobj_td_120" = bitcast i8* %"$msgobj_td_119" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_120"
  %"$msgobj_v_121" = getelementptr i8, i8* %"$msgobj_107", i32 65
  %"$msgobj_v_122" = bitcast i8* %"$msgobj_v_121" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_122"
  %"$msgobj_fname_124" = getelementptr i8, i8* %"$msgobj_107", i32 85
  %"$msgobj_fname_125" = bitcast i8* %"$msgobj_fname_124" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_123", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_125"
  %"$msgobj_td_126" = getelementptr i8, i8* %"$msgobj_107", i32 101
  %"$msgobj_td_127" = bitcast i8* %"$msgobj_td_126" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_127"
  %"$msgobj_v_128" = getelementptr i8, i8* %"$msgobj_107", i32 109
  %"$msgobj_v_129" = bitcast i8* %"$msgobj_v_128" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_129"
  store i8* %"$msgobj_107", i8** %msg1
  %msg2 = alloca i8*
  %"$msgobj_131_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_131_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_131_salloc_load", i64 125)
  %"$msgobj_131_salloc" = bitcast i8* %"$msgobj_131_salloc_salloc" to [125 x i8]*
  %"$msgobj_131" = bitcast [125 x i8]* %"$msgobj_131_salloc" to i8*
  store i8 3, i8* %"$msgobj_131"
  %"$msgobj_fname_133" = getelementptr i8, i8* %"$msgobj_131", i32 1
  %"$msgobj_fname_134" = bitcast i8* %"$msgobj_fname_133" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_132", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_134"
  %"$msgobj_td_135" = getelementptr i8, i8* %"$msgobj_131", i32 17
  %"$msgobj_td_136" = bitcast i8* %"$msgobj_td_135" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_136"
  %"$msgobj_v_138" = getelementptr i8, i8* %"$msgobj_131", i32 25
  %"$msgobj_v_139" = bitcast i8* %"$msgobj_v_138" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_137", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_139"
  %"$msgobj_fname_141" = getelementptr i8, i8* %"$msgobj_131", i32 41
  %"$msgobj_fname_142" = bitcast i8* %"$msgobj_fname_141" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_140", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_142"
  %"$msgobj_td_143" = getelementptr i8, i8* %"$msgobj_131", i32 57
  %"$msgobj_td_144" = bitcast i8* %"$msgobj_td_143" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_144"
  %"$msgobj_v_145" = getelementptr i8, i8* %"$msgobj_131", i32 65
  %"$msgobj_v_146" = bitcast i8* %"$msgobj_v_145" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_146"
  %"$msgobj_fname_148" = getelementptr i8, i8* %"$msgobj_131", i32 85
  %"$msgobj_fname_149" = bitcast i8* %"$msgobj_fname_148" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_147", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_149"
  %"$msgobj_td_150" = getelementptr i8, i8* %"$msgobj_131", i32 101
  %"$msgobj_td_151" = bitcast i8* %"$msgobj_td_150" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_151"
  %"$msgobj_v_152" = getelementptr i8, i8* %"$msgobj_131", i32 109
  %"$msgobj_v_153" = bitcast i8* %"$msgobj_v_152" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_153"
  store i8* %"$msgobj_131", i8** %msg2
  %msgs1 = alloca %TName_List_Message*
  %"$one_msg_1" = alloca %TName_List_Message*
  %"$one_msg_155" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_156" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_155", 0
  %"$one_msg_envptr_157" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_155", 1
  %"$msg1_158" = load i8*, i8** %msg1
  %"$one_msg_call_159" = call %TName_List_Message* %"$one_msg_fptr_156"(i8* %"$one_msg_envptr_157", i8* %"$msg1_158")
  store %TName_List_Message* %"$one_msg_call_159", %TName_List_Message** %"$one_msg_1"
  %"$$one_msg_1_160" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_1"
  store %TName_List_Message* %"$$one_msg_1_160", %TName_List_Message** %msgs1
  %msgs2 = alloca %TName_List_Message*
  %"$msg2_161" = load i8*, i8** %msg2
  %"$msgs1_162" = load %TName_List_Message*, %TName_List_Message** %msgs1
  %"$adtval_163_load" = load i8*, i8** @_execptr
  %"$adtval_163_salloc" = call i8* @_salloc(i8* %"$adtval_163_load", i64 17)
  %"$adtval_163" = bitcast i8* %"$adtval_163_salloc" to %CName_Cons_Message*
  %"$adtgep_164" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_163", i32 0, i32 0
  store i8 0, i8* %"$adtgep_164"
  %"$adtgep_165" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_163", i32 0, i32 1
  store i8* %"$msg2_161", i8** %"$adtgep_165"
  %"$adtgep_166" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_163", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_162", %TName_List_Message** %"$adtgep_166"
  %"$adtptr_167" = bitcast %CName_Cons_Message* %"$adtval_163" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_167", %TName_List_Message** %msgs2
  %"$to_nat_load_168" = load i8*, i8** @_execptr
  %"$msgs2_169" = load %TName_List_Message*, %TName_List_Message** %msgs2
  call void @_send(i8* %"$to_nat_load_168", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs2_169")
  ret void
}

define void @SendMsg2(i8* %0) {
entry:
  %"$_amount_171" = getelementptr i8, i8* %0, i32 0
  %"$_amount_172" = bitcast i8* %"$_amount_171" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_172"
  %"$_sender_173" = getelementptr i8, i8* %0, i32 16
  %"$_sender_174" = bitcast i8* %"$_sender_173" to [20 x i8]*
  call void @"$SendMsg2_105"(%Uint128 %_amount, [20 x i8]* %"$_sender_174")
  ret void
}
