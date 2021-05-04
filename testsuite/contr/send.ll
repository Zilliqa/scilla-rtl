

; gas_remaining: 4002000
; ModuleID = 'Send'
source_filename = "Send"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_41" = type { i32, %"$TyDescr_AddrFieldTyp_40"* }
%"$TyDescr_AddrFieldTyp_40" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_2_env_56" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_ADT_List_Message_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Addr_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_41"* @"$TyDescr_AddrFields_55" to i8*) }
@"$TyDescr_List_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_54", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38"]
@"$TyDescr_ADT_Cons_45" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_48" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_48", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_49"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26"]
@"$TyDescr_List_Message_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_43" }
@"$TyDescr_List_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_52"]
@"$TyDescr_ADT_List_54" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_55" = unnamed_addr constant %"$TyDescr_AddrTyp_41" { i32 -1, %"$TyDescr_AddrFieldTyp_40"* null }
@send.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_103" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_108" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_111" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_118" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_170" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_175" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_178" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_185" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_204" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_209" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_212" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_219" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17

define internal %TName_List_Message* @"$fundef_2"(%"$$fundef_2_env_56"* %0, i8* %1) {
entry:
  %"$retval_3" = alloca %TName_List_Message*, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %"$adtval_67_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_67_salloc" = call i8* @_salloc(i8* %"$adtval_67_load", i64 1)
  %"$adtval_67" = bitcast i8* %"$adtval_67_salloc" to %CName_Nil_Message*
  %"$adtgep_68" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_67", i32 0, i32 0
  store i8 1, i8* %"$adtgep_68", align 1
  %"$adtptr_69" = bitcast %CName_Nil_Message* %"$adtval_67" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_69", %TName_List_Message** %nil_msg, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_65"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$nil_msg_75" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_76_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_76_salloc" = call i8* @_salloc(i8* %"$adtval_76_load", i64 17)
  %"$adtval_76" = bitcast i8* %"$adtval_76_salloc" to %CName_Cons_Message*
  %"$adtgep_77" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_76", i32 0, i32 0
  store i8 0, i8* %"$adtgep_77", align 1
  %"$adtgep_78" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_76", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_78", align 8
  %"$adtgep_79" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_76", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_75", %TName_List_Message** %"$adtgep_79", align 8
  %"$adtptr_80" = bitcast %CName_Cons_Message* %"$adtval_76" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_80", %TName_List_Message** %"$retval_3", align 8
  %"$$retval_3_81" = load %TName_List_Message*, %TName_List_Message** %"$retval_3", align 8
  ret %TName_List_Message* %"$$retval_3_81"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %entry
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_56"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$SendMsg_90"(%Uint128 %_amount, [20 x i8]* %"$_sender_91") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_91", align 1
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$msgobj_102_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_102_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_102_salloc_load", i64 125)
  %"$msgobj_102_salloc" = bitcast i8* %"$msgobj_102_salloc_salloc" to [125 x i8]*
  %"$msgobj_102" = bitcast [125 x i8]* %"$msgobj_102_salloc" to i8*
  store i8 3, i8* %"$msgobj_102", align 1
  %"$msgobj_fname_104" = getelementptr i8, i8* %"$msgobj_102", i32 1
  %"$msgobj_fname_105" = bitcast i8* %"$msgobj_fname_104" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_103", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_105", align 8
  %"$msgobj_td_106" = getelementptr i8, i8* %"$msgobj_102", i32 17
  %"$msgobj_td_107" = bitcast i8* %"$msgobj_td_106" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_107", align 8
  %"$msgobj_v_109" = getelementptr i8, i8* %"$msgobj_102", i32 25
  %"$msgobj_v_110" = bitcast i8* %"$msgobj_v_109" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_108", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_110", align 8
  %"$msgobj_fname_112" = getelementptr i8, i8* %"$msgobj_102", i32 41
  %"$msgobj_fname_113" = bitcast i8* %"$msgobj_fname_112" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_111", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_113", align 8
  %"$msgobj_td_114" = getelementptr i8, i8* %"$msgobj_102", i32 57
  %"$msgobj_td_115" = bitcast i8* %"$msgobj_td_114" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_115", align 8
  %"$msgobj_v_116" = getelementptr i8, i8* %"$msgobj_102", i32 65
  %"$msgobj_v_117" = bitcast i8* %"$msgobj_v_116" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_117", align 1
  %"$msgobj_fname_119" = getelementptr i8, i8* %"$msgobj_102", i32 85
  %"$msgobj_fname_120" = bitcast i8* %"$msgobj_fname_119" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_118", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_120", align 8
  %"$msgobj_td_121" = getelementptr i8, i8* %"$msgobj_102", i32 101
  %"$msgobj_td_122" = bitcast i8* %"$msgobj_td_121" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_122", align 8
  %"$msgobj_v_123" = getelementptr i8, i8* %"$msgobj_102", i32 109
  %"$msgobj_v_124" = bitcast i8* %"$msgobj_v_123" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_124", align 8
  store i8* %"$msgobj_102", i8** %msg1, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_100"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$send.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_136" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_137" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_136", 0
  %"$send.one_msg_envptr_138" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_136", 1
  %"$msg1_139" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_140" = call %TName_List_Message* %"$send.one_msg_fptr_137"(i8* %"$send.one_msg_envptr_138", i8* %"$msg1_139")
  store %TName_List_Message* %"$send.one_msg_call_140", %TName_List_Message** %"$send.one_msg_0", align 8
  %"$$send.one_msg_0_141" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_0", align 8
  store %TName_List_Message* %"$$send.one_msg_0_141", %TName_List_Message** %msgs1, align 8
  %"$msgs1_142" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_142_143" = bitcast %TName_List_Message* %"$msgs1_142" to i8*
  %"$_literal_cost_call_144" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs1_142_143")
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 %"$_literal_cost_call_144", %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_134"
  %"$consume_149" = sub i64 %"$gasrem_145", %"$_literal_cost_call_144"
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$execptr_load_150" = load i8*, i8** @_execptr, align 8
  %"$msgs1_151" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_150", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs1_151")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) {
entry:
  %"$_amount_153" = getelementptr i8, i8* %0, i32 0
  %"$_amount_154" = bitcast i8* %"$_amount_153" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_154", align 8
  %"$_sender_155" = getelementptr i8, i8* %0, i32 16
  %"$_sender_156" = bitcast i8* %"$_sender_155" to [20 x i8]*
  call void @"$SendMsg_90"(%Uint128 %_amount, [20 x i8]* %"$_sender_156")
  ret void
}

define internal void @"$SendMsg2_157"(%Uint128 %_amount, [20 x i8]* %"$_sender_158") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_158", align 1
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %entry
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$msgobj_169_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_169_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_169_salloc_load", i64 125)
  %"$msgobj_169_salloc" = bitcast i8* %"$msgobj_169_salloc_salloc" to [125 x i8]*
  %"$msgobj_169" = bitcast [125 x i8]* %"$msgobj_169_salloc" to i8*
  store i8 3, i8* %"$msgobj_169", align 1
  %"$msgobj_fname_171" = getelementptr i8, i8* %"$msgobj_169", i32 1
  %"$msgobj_fname_172" = bitcast i8* %"$msgobj_fname_171" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_170", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_172", align 8
  %"$msgobj_td_173" = getelementptr i8, i8* %"$msgobj_169", i32 17
  %"$msgobj_td_174" = bitcast i8* %"$msgobj_td_173" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_174", align 8
  %"$msgobj_v_176" = getelementptr i8, i8* %"$msgobj_169", i32 25
  %"$msgobj_v_177" = bitcast i8* %"$msgobj_v_176" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_175", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_177", align 8
  %"$msgobj_fname_179" = getelementptr i8, i8* %"$msgobj_169", i32 41
  %"$msgobj_fname_180" = bitcast i8* %"$msgobj_fname_179" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_178", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_180", align 8
  %"$msgobj_td_181" = getelementptr i8, i8* %"$msgobj_169", i32 57
  %"$msgobj_td_182" = bitcast i8* %"$msgobj_td_181" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_182", align 8
  %"$msgobj_v_183" = getelementptr i8, i8* %"$msgobj_169", i32 65
  %"$msgobj_v_184" = bitcast i8* %"$msgobj_v_183" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_184", align 1
  %"$msgobj_fname_186" = getelementptr i8, i8* %"$msgobj_169", i32 85
  %"$msgobj_fname_187" = bitcast i8* %"$msgobj_fname_186" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_185", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_187", align 8
  %"$msgobj_td_188" = getelementptr i8, i8* %"$msgobj_169", i32 101
  %"$msgobj_td_189" = bitcast i8* %"$msgobj_td_188" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_189", align 8
  %"$msgobj_v_190" = getelementptr i8, i8* %"$msgobj_169", i32 109
  %"$msgobj_v_191" = bitcast i8* %"$msgobj_v_190" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_191", align 8
  store i8* %"$msgobj_169", i8** %msg1, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_167"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$msgobj_203_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_203_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_203_salloc_load", i64 125)
  %"$msgobj_203_salloc" = bitcast i8* %"$msgobj_203_salloc_salloc" to [125 x i8]*
  %"$msgobj_203" = bitcast [125 x i8]* %"$msgobj_203_salloc" to i8*
  store i8 3, i8* %"$msgobj_203", align 1
  %"$msgobj_fname_205" = getelementptr i8, i8* %"$msgobj_203", i32 1
  %"$msgobj_fname_206" = bitcast i8* %"$msgobj_fname_205" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_204", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_206", align 8
  %"$msgobj_td_207" = getelementptr i8, i8* %"$msgobj_203", i32 17
  %"$msgobj_td_208" = bitcast i8* %"$msgobj_td_207" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_208", align 8
  %"$msgobj_v_210" = getelementptr i8, i8* %"$msgobj_203", i32 25
  %"$msgobj_v_211" = bitcast i8* %"$msgobj_v_210" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_209", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_211", align 8
  %"$msgobj_fname_213" = getelementptr i8, i8* %"$msgobj_203", i32 41
  %"$msgobj_fname_214" = bitcast i8* %"$msgobj_fname_213" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_212", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_214", align 8
  %"$msgobj_td_215" = getelementptr i8, i8* %"$msgobj_203", i32 57
  %"$msgobj_td_216" = bitcast i8* %"$msgobj_td_215" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_216", align 8
  %"$msgobj_v_217" = getelementptr i8, i8* %"$msgobj_203", i32 65
  %"$msgobj_v_218" = bitcast i8* %"$msgobj_v_217" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_218", align 1
  %"$msgobj_fname_220" = getelementptr i8, i8* %"$msgobj_203", i32 85
  %"$msgobj_fname_221" = bitcast i8* %"$msgobj_fname_220" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_219", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_221", align 8
  %"$msgobj_td_222" = getelementptr i8, i8* %"$msgobj_203", i32 101
  %"$msgobj_td_223" = bitcast i8* %"$msgobj_td_222" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_223", align 8
  %"$msgobj_v_224" = getelementptr i8, i8* %"$msgobj_203", i32 109
  %"$msgobj_v_225" = bitcast i8* %"$msgobj_v_224" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_225", align 8
  store i8* %"$msgobj_203", i8** %msg2, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_201"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_237" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_238" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_237", 0
  %"$send.one_msg_envptr_239" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_237", 1
  %"$msg1_240" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_241" = call %TName_List_Message* %"$send.one_msg_fptr_238"(i8* %"$send.one_msg_envptr_239", i8* %"$msg1_240")
  store %TName_List_Message* %"$send.one_msg_call_241", %TName_List_Message** %"$send.one_msg_1", align 8
  %"$$send.one_msg_1_242" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_242", %TName_List_Message** %msgs1, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_235"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$msg2_253" = load i8*, i8** %msg2, align 8
  %"$msgs1_254" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_255_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_255_salloc" = call i8* @_salloc(i8* %"$adtval_255_load", i64 17)
  %"$adtval_255" = bitcast i8* %"$adtval_255_salloc" to %CName_Cons_Message*
  %"$adtgep_256" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_255", i32 0, i32 0
  store i8 0, i8* %"$adtgep_256", align 1
  %"$adtgep_257" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_255", i32 0, i32 1
  store i8* %"$msg2_253", i8** %"$adtgep_257", align 8
  %"$adtgep_258" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_255", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_254", %TName_List_Message** %"$adtgep_258", align 8
  %"$adtptr_259" = bitcast %CName_Cons_Message* %"$adtval_255" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_259", %TName_List_Message** %msgs2, align 8
  %"$msgs2_260" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_260_261" = bitcast %TName_List_Message* %"$msgs2_260" to i8*
  %"$_literal_cost_call_262" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs2_260_261")
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 %"$_literal_cost_call_262", %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_251"
  %"$consume_267" = sub i64 %"$gasrem_263", %"$_literal_cost_call_262"
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$execptr_load_268" = load i8*, i8** @_execptr, align 8
  %"$msgs2_269" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_268", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs2_269")
  ret void
}

define void @SendMsg2(i8* %0) {
entry:
  %"$_amount_271" = getelementptr i8, i8* %0, i32 0
  %"$_amount_272" = bitcast i8* %"$_amount_271" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_272", align 8
  %"$_sender_273" = getelementptr i8, i8* %0, i32 16
  %"$_sender_274" = bitcast i8* %"$_sender_273" to [20 x i8]*
  call void @"$SendMsg2_157"(%Uint128 %_amount, [20 x i8]* %"$_sender_274")
  ret void
}
