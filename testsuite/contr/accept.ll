

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
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_2_env_52" = type {}
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
@accept.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_124" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_129" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_132" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_139" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_197" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_202" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_205" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_212" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 16

define internal %TName_List_Message* @"$fundef_2"(%"$$fundef_2_env_52"* %0, i8* %1) {
entry:
  %"$retval_3" = alloca %TName_List_Message*, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$adtval_63_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_63_salloc" = call i8* @_salloc(i8* %"$adtval_63_load", i64 1)
  %"$adtval_63" = bitcast i8* %"$adtval_63_salloc" to %CName_Nil_Message*
  %"$adtgep_64" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_63", i32 0, i32 0
  store i8 1, i8* %"$adtgep_64", align 1
  %"$adtptr_65" = bitcast %CName_Nil_Message* %"$adtval_63" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_65", %TName_List_Message** %nil_msg, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_61"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$nil_msg_71" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_72_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_72_salloc" = call i8* @_salloc(i8* %"$adtval_72_load", i64 17)
  %"$adtval_72" = bitcast i8* %"$adtval_72_salloc" to %CName_Cons_Message*
  %"$adtgep_73" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_72", i32 0, i32 0
  store i8 0, i8* %"$adtgep_73", align 1
  %"$adtgep_74" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_72", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_74", align 8
  %"$adtgep_75" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_72", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_71", %TName_List_Message** %"$adtgep_75", align 8
  %"$adtptr_76" = bitcast %CName_Cons_Message* %"$adtval_72" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_76", %TName_List_Message** %"$retval_3", align 8
  %"$$retval_3_77" = load %TName_List_Message*, %TName_List_Message** %"$retval_3", align 8
  ret %TName_List_Message* %"$$retval_3_77"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %entry
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_52"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$Accept1_86"(%Uint128 %_amount, [20 x i8]* %"$_sender_87") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_87", align 1
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$execptr_load_93" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_93")
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_91"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$execptr_load_99" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_99")
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) {
entry:
  %"$_amount_101" = getelementptr i8, i8* %0, i32 0
  %"$_amount_102" = bitcast i8* %"$_amount_101" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_102", align 8
  %"$_sender_103" = getelementptr i8, i8* %0, i32 16
  %"$_sender_104" = bitcast i8* %"$_sender_103" to [20 x i8]*
  call void @"$Accept1_86"(%Uint128 %_amount, [20 x i8]* %"$_sender_104")
  ret void
}

define internal void @"$Accept2_105"(%Uint128 %_amount, [20 x i8]* %"$_sender_106") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_106", align 1
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %entry
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_112")
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_110"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$msgobj_123_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_123_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_123_salloc_load", i64 125)
  %"$msgobj_123_salloc" = bitcast i8* %"$msgobj_123_salloc_salloc" to [125 x i8]*
  %"$msgobj_123" = bitcast [125 x i8]* %"$msgobj_123_salloc" to i8*
  store i8 3, i8* %"$msgobj_123", align 1
  %"$msgobj_fname_125" = getelementptr i8, i8* %"$msgobj_123", i32 1
  %"$msgobj_fname_126" = bitcast i8* %"$msgobj_fname_125" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_124", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_126", align 8
  %"$msgobj_td_127" = getelementptr i8, i8* %"$msgobj_123", i32 17
  %"$msgobj_td_128" = bitcast i8* %"$msgobj_td_127" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_128", align 8
  %"$msgobj_v_130" = getelementptr i8, i8* %"$msgobj_123", i32 25
  %"$msgobj_v_131" = bitcast i8* %"$msgobj_v_130" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_129", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_131", align 8
  %"$msgobj_fname_133" = getelementptr i8, i8* %"$msgobj_123", i32 41
  %"$msgobj_fname_134" = bitcast i8* %"$msgobj_fname_133" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_132", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_134", align 8
  %"$msgobj_td_135" = getelementptr i8, i8* %"$msgobj_123", i32 57
  %"$msgobj_td_136" = bitcast i8* %"$msgobj_td_135" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_136", align 8
  %"$msgobj_v_137" = getelementptr i8, i8* %"$msgobj_123", i32 65
  %"$msgobj_v_138" = bitcast i8* %"$msgobj_v_137" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_138", align 1
  %"$msgobj_fname_140" = getelementptr i8, i8* %"$msgobj_123", i32 85
  %"$msgobj_fname_141" = bitcast i8* %"$msgobj_fname_140" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_139", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_141", align 8
  %"$msgobj_td_142" = getelementptr i8, i8* %"$msgobj_123", i32 101
  %"$msgobj_td_143" = bitcast i8* %"$msgobj_td_142" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_143", align 8
  %"$msgobj_v_144" = getelementptr i8, i8* %"$msgobj_123", i32 109
  %"$msgobj_v_145" = bitcast i8* %"$msgobj_v_144" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_145", align 8
  store i8* %"$msgobj_123", i8** %msg1, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_121"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$accept.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_157" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_158" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_157", 0
  %"$accept.one_msg_envptr_159" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_157", 1
  %"$msg1_160" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_161" = call %TName_List_Message* %"$accept.one_msg_fptr_158"(i8* %"$accept.one_msg_envptr_159", i8* %"$msg1_160")
  store %TName_List_Message* %"$accept.one_msg_call_161", %TName_List_Message** %"$accept.one_msg_0", align 8
  %"$$accept.one_msg_0_162" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_0", align 8
  store %TName_List_Message* %"$$accept.one_msg_0_162", %TName_List_Message** %msgs, align 8
  %"$msgs_163" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_163_164" = bitcast %TName_List_Message* %"$msgs_163" to i8*
  %"$_literal_cost_call_165" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs_163_164")
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 %"$_literal_cost_call_165", %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_155"
  %"$consume_170" = sub i64 %"$gasrem_166", %"$_literal_cost_call_165"
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$msgs_172" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_171", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_172")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) {
entry:
  %"$_amount_174" = getelementptr i8, i8* %0, i32 0
  %"$_amount_175" = bitcast i8* %"$_amount_174" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_175", align 8
  %"$_sender_176" = getelementptr i8, i8* %0, i32 16
  %"$_sender_177" = bitcast i8* %"$_sender_176" to [20 x i8]*
  call void @"$Accept2_105"(%Uint128 %_amount, [20 x i8]* %"$_sender_177")
  ret void
}

define internal void @"$Accept3_178"(%Uint128 %_amount, [20 x i8]* %"$_sender_179") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_179", align 1
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_185")
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_183"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$msgobj_196_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_196_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_196_salloc_load", i64 125)
  %"$msgobj_196_salloc" = bitcast i8* %"$msgobj_196_salloc_salloc" to [125 x i8]*
  %"$msgobj_196" = bitcast [125 x i8]* %"$msgobj_196_salloc" to i8*
  store i8 3, i8* %"$msgobj_196", align 1
  %"$msgobj_fname_198" = getelementptr i8, i8* %"$msgobj_196", i32 1
  %"$msgobj_fname_199" = bitcast i8* %"$msgobj_fname_198" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_197", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_199", align 8
  %"$msgobj_td_200" = getelementptr i8, i8* %"$msgobj_196", i32 17
  %"$msgobj_td_201" = bitcast i8* %"$msgobj_td_200" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_201", align 8
  %"$msgobj_v_203" = getelementptr i8, i8* %"$msgobj_196", i32 25
  %"$msgobj_v_204" = bitcast i8* %"$msgobj_v_203" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_202", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_204", align 8
  %"$msgobj_fname_206" = getelementptr i8, i8* %"$msgobj_196", i32 41
  %"$msgobj_fname_207" = bitcast i8* %"$msgobj_fname_206" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_205", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_207", align 8
  %"$msgobj_td_208" = getelementptr i8, i8* %"$msgobj_196", i32 57
  %"$msgobj_td_209" = bitcast i8* %"$msgobj_td_208" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_209", align 8
  %"$msgobj_v_210" = getelementptr i8, i8* %"$msgobj_196", i32 65
  %"$msgobj_v_211" = bitcast i8* %"$msgobj_v_210" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_211", align 1
  %"$msgobj_fname_213" = getelementptr i8, i8* %"$msgobj_196", i32 85
  %"$msgobj_fname_214" = bitcast i8* %"$msgobj_fname_213" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_212", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_214", align 8
  %"$msgobj_td_215" = getelementptr i8, i8* %"$msgobj_196", i32 101
  %"$msgobj_td_216" = bitcast i8* %"$msgobj_td_215" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_216", align 8
  %"$msgobj_v_217" = getelementptr i8, i8* %"$msgobj_196", i32 109
  %"$msgobj_v_218" = bitcast i8* %"$msgobj_v_217" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_218", align 8
  store i8* %"$msgobj_196", i8** %msg1, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_194"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_230" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_231" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_230", 0
  %"$accept.one_msg_envptr_232" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_230", 1
  %"$msg1_233" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_234" = call %TName_List_Message* %"$accept.one_msg_fptr_231"(i8* %"$accept.one_msg_envptr_232", i8* %"$msg1_233")
  store %TName_List_Message* %"$accept.one_msg_call_234", %TName_List_Message** %"$accept.one_msg_1", align 8
  %"$$accept.one_msg_1_235" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_235", %TName_List_Message** %msgs, align 8
  %"$msgs_236" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_236_237" = bitcast %TName_List_Message* %"$msgs_236" to i8*
  %"$_literal_cost_call_238" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs_236_237")
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 %"$_literal_cost_call_238", %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_228"
  %"$consume_243" = sub i64 %"$gasrem_239", %"$_literal_cost_call_238"
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$msgs_245" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_244", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_245")
  ret void
}

define void @Accept3(i8* %0) {
entry:
  %"$_amount_247" = getelementptr i8, i8* %0, i32 0
  %"$_amount_248" = bitcast i8* %"$_amount_247" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_248", align 8
  %"$_sender_249" = getelementptr i8, i8* %0, i32 16
  %"$_sender_250" = bitcast i8* %"$_sender_249" to [20 x i8]*
  call void @"$Accept3_178"(%Uint128 %_amount, [20 x i8]* %"$_sender_250")
  ret void
}
