

; gas_remaining: 4002000
; ModuleID = 'Accept'
source_filename = "Accept"
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
@accept.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_128" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_133" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_136" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_143" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_201" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_206" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_209" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_216" = unnamed_addr constant [7 x i8] c"_amount"
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
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_56"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$Accept1_90"(%Uint128 %_amount, [20 x i8]* %"$_sender_91") {
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
  %"$execptr_load_97" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_97")
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_95"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_103")
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) {
entry:
  %"$_amount_105" = getelementptr i8, i8* %0, i32 0
  %"$_amount_106" = bitcast i8* %"$_amount_105" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_106", align 8
  %"$_sender_107" = getelementptr i8, i8* %0, i32 16
  %"$_sender_108" = bitcast i8* %"$_sender_107" to [20 x i8]*
  call void @"$Accept1_90"(%Uint128 %_amount, [20 x i8]* %"$_sender_108")
  ret void
}

define internal void @"$Accept2_109"(%Uint128 %_amount, [20 x i8]* %"$_sender_110") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_110", align 1
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %entry
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$execptr_load_116" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_116")
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_114"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$msgobj_127_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_127_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_127_salloc_load", i64 125)
  %"$msgobj_127_salloc" = bitcast i8* %"$msgobj_127_salloc_salloc" to [125 x i8]*
  %"$msgobj_127" = bitcast [125 x i8]* %"$msgobj_127_salloc" to i8*
  store i8 3, i8* %"$msgobj_127", align 1
  %"$msgobj_fname_129" = getelementptr i8, i8* %"$msgobj_127", i32 1
  %"$msgobj_fname_130" = bitcast i8* %"$msgobj_fname_129" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_128", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_130", align 8
  %"$msgobj_td_131" = getelementptr i8, i8* %"$msgobj_127", i32 17
  %"$msgobj_td_132" = bitcast i8* %"$msgobj_td_131" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_132", align 8
  %"$msgobj_v_134" = getelementptr i8, i8* %"$msgobj_127", i32 25
  %"$msgobj_v_135" = bitcast i8* %"$msgobj_v_134" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_133", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_135", align 8
  %"$msgobj_fname_137" = getelementptr i8, i8* %"$msgobj_127", i32 41
  %"$msgobj_fname_138" = bitcast i8* %"$msgobj_fname_137" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_136", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_138", align 8
  %"$msgobj_td_139" = getelementptr i8, i8* %"$msgobj_127", i32 57
  %"$msgobj_td_140" = bitcast i8* %"$msgobj_td_139" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_140", align 8
  %"$msgobj_v_141" = getelementptr i8, i8* %"$msgobj_127", i32 65
  %"$msgobj_v_142" = bitcast i8* %"$msgobj_v_141" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_142", align 1
  %"$msgobj_fname_144" = getelementptr i8, i8* %"$msgobj_127", i32 85
  %"$msgobj_fname_145" = bitcast i8* %"$msgobj_fname_144" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_143", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_145", align 8
  %"$msgobj_td_146" = getelementptr i8, i8* %"$msgobj_127", i32 101
  %"$msgobj_td_147" = bitcast i8* %"$msgobj_td_146" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_147", align 8
  %"$msgobj_v_148" = getelementptr i8, i8* %"$msgobj_127", i32 109
  %"$msgobj_v_149" = bitcast i8* %"$msgobj_v_148" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_149", align 8
  store i8* %"$msgobj_127", i8** %msg1, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_125"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$accept.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_161" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_162" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_161", 0
  %"$accept.one_msg_envptr_163" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_161", 1
  %"$msg1_164" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_165" = call %TName_List_Message* %"$accept.one_msg_fptr_162"(i8* %"$accept.one_msg_envptr_163", i8* %"$msg1_164")
  store %TName_List_Message* %"$accept.one_msg_call_165", %TName_List_Message** %"$accept.one_msg_0", align 8
  %"$$accept.one_msg_0_166" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_0", align 8
  store %TName_List_Message* %"$$accept.one_msg_0_166", %TName_List_Message** %msgs, align 8
  %"$msgs_167" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_167_168" = bitcast %TName_List_Message* %"$msgs_167" to i8*
  %"$_literal_cost_call_169" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs_167_168")
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 %"$_literal_cost_call_169", %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_159"
  %"$consume_174" = sub i64 %"$gasrem_170", %"$_literal_cost_call_169"
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$execptr_load_175" = load i8*, i8** @_execptr, align 8
  %"$msgs_176" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_175", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_176")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) {
entry:
  %"$_amount_178" = getelementptr i8, i8* %0, i32 0
  %"$_amount_179" = bitcast i8* %"$_amount_178" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_179", align 8
  %"$_sender_180" = getelementptr i8, i8* %0, i32 16
  %"$_sender_181" = bitcast i8* %"$_sender_180" to [20 x i8]*
  call void @"$Accept2_109"(%Uint128 %_amount, [20 x i8]* %"$_sender_181")
  ret void
}

define internal void @"$Accept3_182"(%Uint128 %_amount, [20 x i8]* %"$_sender_183") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_183", align 1
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$execptr_load_189" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_189")
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_187"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$msgobj_200_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_200_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_200_salloc_load", i64 125)
  %"$msgobj_200_salloc" = bitcast i8* %"$msgobj_200_salloc_salloc" to [125 x i8]*
  %"$msgobj_200" = bitcast [125 x i8]* %"$msgobj_200_salloc" to i8*
  store i8 3, i8* %"$msgobj_200", align 1
  %"$msgobj_fname_202" = getelementptr i8, i8* %"$msgobj_200", i32 1
  %"$msgobj_fname_203" = bitcast i8* %"$msgobj_fname_202" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_201", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_203", align 8
  %"$msgobj_td_204" = getelementptr i8, i8* %"$msgobj_200", i32 17
  %"$msgobj_td_205" = bitcast i8* %"$msgobj_td_204" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_205", align 8
  %"$msgobj_v_207" = getelementptr i8, i8* %"$msgobj_200", i32 25
  %"$msgobj_v_208" = bitcast i8* %"$msgobj_v_207" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_206", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_208", align 8
  %"$msgobj_fname_210" = getelementptr i8, i8* %"$msgobj_200", i32 41
  %"$msgobj_fname_211" = bitcast i8* %"$msgobj_fname_210" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_209", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_211", align 8
  %"$msgobj_td_212" = getelementptr i8, i8* %"$msgobj_200", i32 57
  %"$msgobj_td_213" = bitcast i8* %"$msgobj_td_212" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_213", align 8
  %"$msgobj_v_214" = getelementptr i8, i8* %"$msgobj_200", i32 65
  %"$msgobj_v_215" = bitcast i8* %"$msgobj_v_214" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_215", align 1
  %"$msgobj_fname_217" = getelementptr i8, i8* %"$msgobj_200", i32 85
  %"$msgobj_fname_218" = bitcast i8* %"$msgobj_fname_217" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_216", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_218", align 8
  %"$msgobj_td_219" = getelementptr i8, i8* %"$msgobj_200", i32 101
  %"$msgobj_td_220" = bitcast i8* %"$msgobj_td_219" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_220", align 8
  %"$msgobj_v_221" = getelementptr i8, i8* %"$msgobj_200", i32 109
  %"$msgobj_v_222" = bitcast i8* %"$msgobj_v_221" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_222", align 8
  store i8* %"$msgobj_200", i8** %msg1, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_198"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_234" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_235" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_234", 0
  %"$accept.one_msg_envptr_236" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_234", 1
  %"$msg1_237" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_238" = call %TName_List_Message* %"$accept.one_msg_fptr_235"(i8* %"$accept.one_msg_envptr_236", i8* %"$msg1_237")
  store %TName_List_Message* %"$accept.one_msg_call_238", %TName_List_Message** %"$accept.one_msg_1", align 8
  %"$$accept.one_msg_1_239" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_239", %TName_List_Message** %msgs, align 8
  %"$msgs_240" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_240_241" = bitcast %TName_List_Message* %"$msgs_240" to i8*
  %"$_literal_cost_call_242" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs_240_241")
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$_literal_cost_call_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_232"
  %"$consume_247" = sub i64 %"$gasrem_243", %"$_literal_cost_call_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$execptr_load_248" = load i8*, i8** @_execptr, align 8
  %"$msgs_249" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_248", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_249")
  ret void
}

define void @Accept3(i8* %0) {
entry:
  %"$_amount_251" = getelementptr i8, i8* %0, i32 0
  %"$_amount_252" = bitcast i8* %"$_amount_251" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_252", align 8
  %"$_sender_253" = getelementptr i8, i8* %0, i32 16
  %"$_sender_254" = bitcast i8* %"$_sender_253" to [20 x i8]*
  call void @"$Accept3_182"(%Uint128 %_amount, [20 x i8]* %"$_sender_254")
  ret void
}
