

; gas_remaining: 4001999
; ModuleID = 'SimpleIterate'
source_filename = "SimpleIterate"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_44" = type { i32, %"$TyDescr_AddrFieldTyp_43"* }
%"$TyDescr_AddrFieldTyp_43" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_147" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_148" = type { %ParamDescrString, i32, %"$ParamDescr_147"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_ReplicateContr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_ReplicateContr_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_ADT_List_Int32_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Int32_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_58" to i8*) }
@"$TyDescr_List_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_List_Int32_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_46" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Int32_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_58" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -3, %"$TyDescr_AddrFieldTyp_43"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_83" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_88" = unnamed_addr constant [4 x i8] c"FooN"
@"$stringlit_91" = unnamed_addr constant [1 x i8] c"n"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_149" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_150" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_151" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_147"] [%"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_149", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_150", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_151", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_152" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_153" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_154" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nlist_155" = unnamed_addr constant [5 x i8] c"nlist"
@"$tparams_NEvents_156" = unnamed_addr constant [4 x %"$ParamDescr_147"] [%"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_152", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_153", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_154", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_nlist_155", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41" }]
@"$tname_NEvents_157" = unnamed_addr constant [7 x i8] c"NEvents"
@_transition_parameters = constant [1 x %"$TransDescr_148"] [%"$TransDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_NEvents_157", i32 0, i32 0), i32 7 }, i32 4, %"$ParamDescr_147"* getelementptr inbounds ([4 x %"$ParamDescr_147"], [4 x %"$ParamDescr_147"]* @"$tparams_NEvents_156", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 5, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 5
  store i64 %"$consume_63", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  ret void
}

define internal void @"$EventN_69"(%Uint128 %_amount, [20 x i8]* %"$_origin_70", [20 x i8]* %"$_sender_71", %Int32 %n) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_70", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_71", align 1
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$msgobj_82_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_82_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_82_salloc_load", i64 69)
  %"$msgobj_82_salloc" = bitcast i8* %"$msgobj_82_salloc_salloc" to [69 x i8]*
  %"$msgobj_82" = bitcast [69 x i8]* %"$msgobj_82_salloc" to i8*
  store i8 2, i8* %"$msgobj_82", align 1
  %"$msgobj_fname_84" = getelementptr i8, i8* %"$msgobj_82", i32 1
  %"$msgobj_fname_85" = bitcast i8* %"$msgobj_fname_84" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_83", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_85", align 8
  %"$msgobj_td_86" = getelementptr i8, i8* %"$msgobj_82", i32 17
  %"$msgobj_td_87" = bitcast i8* %"$msgobj_td_86" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_87", align 8
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_82", i32 25
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_88", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_90", align 8
  %"$msgobj_fname_92" = getelementptr i8, i8* %"$msgobj_82", i32 41
  %"$msgobj_fname_93" = bitcast i8* %"$msgobj_fname_92" to %String*
  store %String { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$stringlit_91", i32 0, i32 0), i32 1 }, %String* %"$msgobj_fname_93", align 8
  %"$msgobj_td_94" = getelementptr i8, i8* %"$msgobj_82", i32 57
  %"$msgobj_td_95" = bitcast i8* %"$msgobj_td_94" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_95", align 8
  %"$msgobj_v_96" = getelementptr i8, i8* %"$msgobj_82", i32 65
  %"$msgobj_v_97" = bitcast i8* %"$msgobj_v_96" to %Int32*
  store %Int32 %n, %Int32* %"$msgobj_v_97", align 4
  store i8* %"$msgobj_82", i8** %e, align 8
  %"$e_99" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_101" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_99")
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 %"$_literal_cost_call_101", %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_80"
  %"$consume_106" = sub i64 %"$gasrem_102", %"$_literal_cost_call_101"
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$execptr_load_107" = load i8*, i8** @_execptr, align 8
  %"$e_108" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_107", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_108")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$NEvents_109"(%Uint128 %_amount, [20 x i8]* %"$_origin_110", [20 x i8]* %"$_sender_111", %TName_List_Int32* %nlist) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_110", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_111", align 1
  %"$nlist_112" = bitcast %TName_List_Int32* %nlist to i8*
  %"$_lengthof_call_113" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41", i8* %"$nlist_112")
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 %"$_lengthof_call_113", %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %entry
  %"$consume_118" = sub i64 %"$gasrem_114", %"$_lengthof_call_113"
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$nlist_1" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %nlist, %TName_List_Int32** %"$nlist_1", align 8
  br label %"$loop_header_120"

"$loop_header_120":                               ; preds = %"$Cons_126", %"$have_gas_117"
  %"$$nlist_1_122" = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_1", align 8
  %"$$nlist_1_tag_123" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$nlist_1_122", i32 0, i32 0
  %"$$nlist_1_tag_124" = load i8, i8* %"$$nlist_1_tag_123", align 1
  switch i8 %"$$nlist_1_tag_124", label %"$empty_default_125" [
    i8 0, label %"$Cons_126"
    i8 1, label %"$Nil_136"
  ]

"$Cons_126":                                      ; preds = %"$loop_header_120"
  %"$$nlist_1_127" = bitcast %TName_List_Int32* %"$$nlist_1_122" to %CName_Cons_Int32*
  %"$$list_cur_3_gep_128" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_127", i32 0, i32 1
  %"$$list_cur_3_load_129" = load %Int32, %Int32* %"$$list_cur_3_gep_128", align 4
  %"$list_cur_3" = alloca %Int32, align 8
  store %Int32 %"$$list_cur_3_load_129", %Int32* %"$list_cur_3", align 4
  %"$$list_next_4_gep_130" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_127", i32 0, i32 2
  %"$$list_next_4_load_131" = load %TName_List_Int32*, %TName_List_Int32** %"$$list_next_4_gep_130", align 8
  %"$list_next_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$list_next_4_load_131", %TName_List_Int32** %"$list_next_4", align 8
  %"$EventN__origin_132" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$EventN__origin_132", align 1
  %"$EventN__sender_133" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$EventN__sender_133", align 1
  %"$$list_cur_3_134" = load %Int32, %Int32* %"$list_cur_3", align 4
  call void @"$EventN_69"(%Uint128 %_amount, [20 x i8]* %"$EventN__origin_132", [20 x i8]* %"$EventN__sender_133", %Int32 %"$$list_cur_3_134")
  %"$$list_next_4_135" = load %TName_List_Int32*, %TName_List_Int32** %"$list_next_4", align 8
  store %TName_List_Int32* %"$$list_next_4_135", %TName_List_Int32** %"$nlist_1", align 8
  br label %"$loop_header_120"

"$Nil_136":                                       ; preds = %"$loop_header_120"
  %"$$nlist_1_137" = bitcast %TName_List_Int32* %"$$nlist_1_122" to %CName_Nil_Int32*
  br label %"$matchsucc_121"

"$empty_default_125":                             ; preds = %"$loop_header_120"
  br label %"$matchsucc_121"

"$matchsucc_121":                                 ; preds = %"$Nil_136", %"$empty_default_125"
  br label %"$loop_succ_119"

"$loop_succ_119":                                 ; preds = %"$matchsucc_121"
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

define void @NEvents(i8* %0) {
entry:
  %"$_amount_139" = getelementptr i8, i8* %0, i32 0
  %"$_amount_140" = bitcast i8* %"$_amount_139" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_140", align 8
  %"$_origin_141" = getelementptr i8, i8* %0, i32 16
  %"$_origin_142" = bitcast i8* %"$_origin_141" to [20 x i8]*
  %"$_sender_143" = getelementptr i8, i8* %0, i32 36
  %"$_sender_144" = bitcast i8* %"$_sender_143" to [20 x i8]*
  %"$nlist_145" = getelementptr i8, i8* %0, i32 56
  %"$nlist_146" = bitcast i8* %"$nlist_145" to %TName_List_Int32**
  %nlist = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_146", align 8
  call void @"$NEvents_109"(%Uint128 %_amount, [20 x i8]* %"$_origin_142", [20 x i8]* %"$_sender_144", %TName_List_Int32* %nlist)
  ret void
}
