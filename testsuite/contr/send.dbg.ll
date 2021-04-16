

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
@send.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_99" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_104" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_107" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_114" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_166" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_171" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_174" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_181" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_200" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_205" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_208" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_215" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 16

define internal %TName_List_Message* @"$fundef_2"(%"$$fundef_2_env_52"* %0, i8* %1) !dbg !4 {
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
  store %TName_List_Message* %"$adtptr_65", %TName_List_Message** %nil_msg, align 8, !dbg !8
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
  store %TName_List_Message* %"$adtptr_76", %TName_List_Message** %"$retval_3", align 8, !dbg !9
  %"$$retval_3_77" = load %TName_List_Message*, %TName_List_Message** %"$retval_3", align 8
  ret %TName_List_Message* %"$$retval_3_77"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
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
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_52"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8, !dbg !12
  ret void
}

define void @_init_state() !dbg !13 {
entry:
  ret void
}

define internal void @"$SendMsg_86"(%Uint128 %_amount, [20 x i8]* %"$_sender_87") !dbg !14 {
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
  %msg1 = alloca i8*, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$msgobj_98_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_98_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_98_salloc_load", i64 125)
  %"$msgobj_98_salloc" = bitcast i8* %"$msgobj_98_salloc_salloc" to [125 x i8]*
  %"$msgobj_98" = bitcast [125 x i8]* %"$msgobj_98_salloc" to i8*
  store i8 3, i8* %"$msgobj_98", align 1
  %"$msgobj_fname_100" = getelementptr i8, i8* %"$msgobj_98", i32 1
  %"$msgobj_fname_101" = bitcast i8* %"$msgobj_fname_100" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_99", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_101", align 8
  %"$msgobj_td_102" = getelementptr i8, i8* %"$msgobj_98", i32 17
  %"$msgobj_td_103" = bitcast i8* %"$msgobj_td_102" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_103", align 8
  %"$msgobj_v_105" = getelementptr i8, i8* %"$msgobj_98", i32 25
  %"$msgobj_v_106" = bitcast i8* %"$msgobj_v_105" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_104", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_106", align 8
  %"$msgobj_fname_108" = getelementptr i8, i8* %"$msgobj_98", i32 41
  %"$msgobj_fname_109" = bitcast i8* %"$msgobj_fname_108" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_107", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_109", align 8
  %"$msgobj_td_110" = getelementptr i8, i8* %"$msgobj_98", i32 57
  %"$msgobj_td_111" = bitcast i8* %"$msgobj_td_110" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_111", align 8
  %"$msgobj_v_112" = getelementptr i8, i8* %"$msgobj_98", i32 65
  %"$msgobj_v_113" = bitcast i8* %"$msgobj_v_112" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_113", align 1
  %"$msgobj_fname_115" = getelementptr i8, i8* %"$msgobj_98", i32 85
  %"$msgobj_fname_116" = bitcast i8* %"$msgobj_fname_115" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_114", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_116", align 8
  %"$msgobj_td_117" = getelementptr i8, i8* %"$msgobj_98", i32 101
  %"$msgobj_td_118" = bitcast i8* %"$msgobj_td_117" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_118", align 8
  %"$msgobj_v_119" = getelementptr i8, i8* %"$msgobj_98", i32 109
  %"$msgobj_v_120" = bitcast i8* %"$msgobj_v_119" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_120", align 8
  store i8* %"$msgobj_98", i8** %msg1, align 8, !dbg !15
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_96"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$send.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_132" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_133" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_132", 0
  %"$send.one_msg_envptr_134" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_132", 1
  %"$msg1_135" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_136" = call %TName_List_Message* %"$send.one_msg_fptr_133"(i8* %"$send.one_msg_envptr_134", i8* %"$msg1_135"), !dbg !16
  store %TName_List_Message* %"$send.one_msg_call_136", %TName_List_Message** %"$send.one_msg_0", align 8, !dbg !16
  %"$$send.one_msg_0_137" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_0", align 8
  store %TName_List_Message* %"$$send.one_msg_0_137", %TName_List_Message** %msgs1, align 8, !dbg !16
  %"$msgs1_138" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_138_139" = bitcast %TName_List_Message* %"$msgs1_138" to i8*
  %"$_literal_cost_call_140" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs1_138_139")
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 %"$_literal_cost_call_140", %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_130"
  %"$consume_145" = sub i64 %"$gasrem_141", %"$_literal_cost_call_140"
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$execptr_load_146" = load i8*, i8** @_execptr, align 8
  %"$msgs1_147" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_146", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs1_147"), !dbg !17
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) !dbg !18 {
entry:
  %"$_amount_149" = getelementptr i8, i8* %0, i32 0
  %"$_amount_150" = bitcast i8* %"$_amount_149" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_150", align 8
  %"$_sender_151" = getelementptr i8, i8* %0, i32 16
  %"$_sender_152" = bitcast i8* %"$_sender_151" to [20 x i8]*
  call void @"$SendMsg_86"(%Uint128 %_amount, [20 x i8]* %"$_sender_152"), !dbg !19
  ret void
}

define internal void @"$SendMsg2_153"(%Uint128 %_amount, [20 x i8]* %"$_sender_154") !dbg !20 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_154", align 1
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %entry
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$msgobj_165_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_165_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_165_salloc_load", i64 125)
  %"$msgobj_165_salloc" = bitcast i8* %"$msgobj_165_salloc_salloc" to [125 x i8]*
  %"$msgobj_165" = bitcast [125 x i8]* %"$msgobj_165_salloc" to i8*
  store i8 3, i8* %"$msgobj_165", align 1
  %"$msgobj_fname_167" = getelementptr i8, i8* %"$msgobj_165", i32 1
  %"$msgobj_fname_168" = bitcast i8* %"$msgobj_fname_167" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_166", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_168", align 8
  %"$msgobj_td_169" = getelementptr i8, i8* %"$msgobj_165", i32 17
  %"$msgobj_td_170" = bitcast i8* %"$msgobj_td_169" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_170", align 8
  %"$msgobj_v_172" = getelementptr i8, i8* %"$msgobj_165", i32 25
  %"$msgobj_v_173" = bitcast i8* %"$msgobj_v_172" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_171", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_173", align 8
  %"$msgobj_fname_175" = getelementptr i8, i8* %"$msgobj_165", i32 41
  %"$msgobj_fname_176" = bitcast i8* %"$msgobj_fname_175" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_174", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_176", align 8
  %"$msgobj_td_177" = getelementptr i8, i8* %"$msgobj_165", i32 57
  %"$msgobj_td_178" = bitcast i8* %"$msgobj_td_177" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_178", align 8
  %"$msgobj_v_179" = getelementptr i8, i8* %"$msgobj_165", i32 65
  %"$msgobj_v_180" = bitcast i8* %"$msgobj_v_179" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_180", align 1
  %"$msgobj_fname_182" = getelementptr i8, i8* %"$msgobj_165", i32 85
  %"$msgobj_fname_183" = bitcast i8* %"$msgobj_fname_182" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_181", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_183", align 8
  %"$msgobj_td_184" = getelementptr i8, i8* %"$msgobj_165", i32 101
  %"$msgobj_td_185" = bitcast i8* %"$msgobj_td_184" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_185", align 8
  %"$msgobj_v_186" = getelementptr i8, i8* %"$msgobj_165", i32 109
  %"$msgobj_v_187" = bitcast i8* %"$msgobj_v_186" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_187", align 8
  store i8* %"$msgobj_165", i8** %msg1, align 8, !dbg !21
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_163"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$msgobj_199_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_199_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_199_salloc_load", i64 125)
  %"$msgobj_199_salloc" = bitcast i8* %"$msgobj_199_salloc_salloc" to [125 x i8]*
  %"$msgobj_199" = bitcast [125 x i8]* %"$msgobj_199_salloc" to i8*
  store i8 3, i8* %"$msgobj_199", align 1
  %"$msgobj_fname_201" = getelementptr i8, i8* %"$msgobj_199", i32 1
  %"$msgobj_fname_202" = bitcast i8* %"$msgobj_fname_201" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_200", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_202", align 8
  %"$msgobj_td_203" = getelementptr i8, i8* %"$msgobj_199", i32 17
  %"$msgobj_td_204" = bitcast i8* %"$msgobj_td_203" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_204", align 8
  %"$msgobj_v_206" = getelementptr i8, i8* %"$msgobj_199", i32 25
  %"$msgobj_v_207" = bitcast i8* %"$msgobj_v_206" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_205", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_207", align 8
  %"$msgobj_fname_209" = getelementptr i8, i8* %"$msgobj_199", i32 41
  %"$msgobj_fname_210" = bitcast i8* %"$msgobj_fname_209" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_208", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_210", align 8
  %"$msgobj_td_211" = getelementptr i8, i8* %"$msgobj_199", i32 57
  %"$msgobj_td_212" = bitcast i8* %"$msgobj_td_211" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_212", align 8
  %"$msgobj_v_213" = getelementptr i8, i8* %"$msgobj_199", i32 65
  %"$msgobj_v_214" = bitcast i8* %"$msgobj_v_213" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_214", align 1
  %"$msgobj_fname_216" = getelementptr i8, i8* %"$msgobj_199", i32 85
  %"$msgobj_fname_217" = bitcast i8* %"$msgobj_fname_216" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_215", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_217", align 8
  %"$msgobj_td_218" = getelementptr i8, i8* %"$msgobj_199", i32 101
  %"$msgobj_td_219" = bitcast i8* %"$msgobj_td_218" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_219", align 8
  %"$msgobj_v_220" = getelementptr i8, i8* %"$msgobj_199", i32 109
  %"$msgobj_v_221" = bitcast i8* %"$msgobj_v_220" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_221", align 8
  store i8* %"$msgobj_199", i8** %msg2, align 8, !dbg !22
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_197"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_233" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_234" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_233", 0
  %"$send.one_msg_envptr_235" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_233", 1
  %"$msg1_236" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_237" = call %TName_List_Message* %"$send.one_msg_fptr_234"(i8* %"$send.one_msg_envptr_235", i8* %"$msg1_236"), !dbg !23
  store %TName_List_Message* %"$send.one_msg_call_237", %TName_List_Message** %"$send.one_msg_1", align 8, !dbg !23
  %"$$send.one_msg_1_238" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_238", %TName_List_Message** %msgs1, align 8, !dbg !23
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_231"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$msg2_249" = load i8*, i8** %msg2, align 8
  %"$msgs1_250" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_251_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_251_salloc" = call i8* @_salloc(i8* %"$adtval_251_load", i64 17)
  %"$adtval_251" = bitcast i8* %"$adtval_251_salloc" to %CName_Cons_Message*
  %"$adtgep_252" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_251", i32 0, i32 0
  store i8 0, i8* %"$adtgep_252", align 1
  %"$adtgep_253" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_251", i32 0, i32 1
  store i8* %"$msg2_249", i8** %"$adtgep_253", align 8
  %"$adtgep_254" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_251", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_250", %TName_List_Message** %"$adtgep_254", align 8
  %"$adtptr_255" = bitcast %CName_Cons_Message* %"$adtval_251" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_255", %TName_List_Message** %msgs2, align 8, !dbg !24
  %"$msgs2_256" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_256_257" = bitcast %TName_List_Message* %"$msgs2_256" to i8*
  %"$_literal_cost_call_258" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs2_256_257")
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 %"$_literal_cost_call_258", %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_247"
  %"$consume_263" = sub i64 %"$gasrem_259", %"$_literal_cost_call_258"
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$execptr_load_264" = load i8*, i8** @_execptr, align 8
  %"$msgs2_265" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_264", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs2_265"), !dbg !25
  ret void
}

define void @SendMsg2(i8* %0) !dbg !26 {
entry:
  %"$_amount_267" = getelementptr i8, i8* %0, i32 0
  %"$_amount_268" = bitcast i8* %"$_amount_267" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_268", align 8
  %"$_sender_269" = getelementptr i8, i8* %0, i32 16
  %"$_sender_270" = bitcast i8* %"$_sender_269" to [20 x i8]*
  call void @"$SendMsg2_153"(%Uint128 %_amount, [20 x i8]* %"$_sender_270"), !dbg !27
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "send.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_2", linkageName: "$fundef_2", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 7, column: 17, scope: !4)
!9 = !DILocation(line: 8, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 7, column: 3, scope: !10)
!13 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 14, column: 10, scope: !14)
!16 = !DILocation(line: 15, column: 11, scope: !14)
!17 = !DILocation(line: 16, column: 3, scope: !14)
!18 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 13, column: 12, scope: !18)
!20 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 20, column: 10, scope: !20)
!22 = !DILocation(line: 21, column: 10, scope: !20)
!23 = !DILocation(line: 22, column: 11, scope: !20)
!24 = !DILocation(line: 23, column: 11, scope: !20)
!25 = !DILocation(line: 24, column: 3, scope: !20)
!26 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 19, column: 12, scope: !26)
