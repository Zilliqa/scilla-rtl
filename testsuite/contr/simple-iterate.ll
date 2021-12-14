

; gas_remaining: 4001999
; ModuleID = 'SimpleIterate'
source_filename = "SimpleIterate"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_140" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_141" = type { %ParamDescrString, i32, %"$ParamDescr_140"* }
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
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_List_Int32_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Int32_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_56" to i8*) }
@"$TyDescr_List_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_55", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39"]
@"$TyDescr_ADT_Cons_46" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_49" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_49", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_50"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_List_Int32_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_44" }
@"$TyDescr_List_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Int32_ADTTyp_Specl_53"]
@"$TyDescr_ADT_List_55" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_56" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -1, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_76" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_81" = unnamed_addr constant [4 x i8] c"FooN"
@"$stringlit_84" = unnamed_addr constant [1 x i8] c"n"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_142" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_143" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_144" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_140"] [%"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_142", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_143", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_144", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_145" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_146" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_147" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nlist_148" = unnamed_addr constant [5 x i8] c"nlist"
@"$tparams_NEvents_149" = unnamed_addr constant [4 x %"$ParamDescr_140"] [%"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_145", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_146", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_147", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_140" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_nlist_148", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39" }]
@"$tname_NEvents_150" = unnamed_addr constant [7 x i8] c"NEvents"
@_transition_parameters = constant [1 x %"$TransDescr_141"] [%"$TransDescr_141" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_NEvents_150", i32 0, i32 0), i32 7 }, i32 4, %"$ParamDescr_140"* getelementptr inbounds ([4 x %"$ParamDescr_140"], [4 x %"$ParamDescr_140"]* @"$tparams_NEvents_149", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 5, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 5
  store i64 %"$consume_61", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  ret void
}

define internal void @"$EventN_62"(%Uint128 %_amount, [20 x i8]* %"$_origin_63", [20 x i8]* %"$_sender_64", %Int32 %n) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_63", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_64", align 1
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %entry
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$msgobj_75_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_75_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_75_salloc_load", i64 69)
  %"$msgobj_75_salloc" = bitcast i8* %"$msgobj_75_salloc_salloc" to [69 x i8]*
  %"$msgobj_75" = bitcast [69 x i8]* %"$msgobj_75_salloc" to i8*
  store i8 2, i8* %"$msgobj_75", align 1
  %"$msgobj_fname_77" = getelementptr i8, i8* %"$msgobj_75", i32 1
  %"$msgobj_fname_78" = bitcast i8* %"$msgobj_fname_77" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_76", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_78", align 8
  %"$msgobj_td_79" = getelementptr i8, i8* %"$msgobj_75", i32 17
  %"$msgobj_td_80" = bitcast i8* %"$msgobj_td_79" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_80", align 8
  %"$msgobj_v_82" = getelementptr i8, i8* %"$msgobj_75", i32 25
  %"$msgobj_v_83" = bitcast i8* %"$msgobj_v_82" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_81", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_83", align 8
  %"$msgobj_fname_85" = getelementptr i8, i8* %"$msgobj_75", i32 41
  %"$msgobj_fname_86" = bitcast i8* %"$msgobj_fname_85" to %String*
  store %String { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$stringlit_84", i32 0, i32 0), i32 1 }, %String* %"$msgobj_fname_86", align 8
  %"$msgobj_td_87" = getelementptr i8, i8* %"$msgobj_75", i32 57
  %"$msgobj_td_88" = bitcast i8* %"$msgobj_td_87" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_88", align 8
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_75", i32 65
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %Int32*
  store %Int32 %n, %Int32* %"$msgobj_v_90", align 4
  store i8* %"$msgobj_75", i8** %e, align 8
  %"$e_92" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_94" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_92")
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 %"$_literal_cost_call_94", %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_73"
  %"$consume_99" = sub i64 %"$gasrem_95", %"$_literal_cost_call_94"
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$execptr_load_100" = load i8*, i8** @_execptr, align 8
  %"$e_101" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_100", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_101")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$NEvents_102"(%Uint128 %_amount, [20 x i8]* %"$_origin_103", [20 x i8]* %"$_sender_104", %TName_List_Int32* %nlist) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_103", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_104", align 1
  %"$nlist_105" = bitcast %TName_List_Int32* %nlist to i8*
  %"$_lengthof_call_106" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39", i8* %"$nlist_105")
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 %"$_lengthof_call_106", %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %entry
  %"$consume_111" = sub i64 %"$gasrem_107", %"$_lengthof_call_106"
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$nlist_1" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %nlist, %TName_List_Int32** %"$nlist_1", align 8
  br label %"$loop_header_113"

"$loop_header_113":                               ; preds = %"$Cons_119", %"$have_gas_110"
  %"$$nlist_1_115" = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_1", align 8
  %"$$nlist_1_tag_116" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$nlist_1_115", i32 0, i32 0
  %"$$nlist_1_tag_117" = load i8, i8* %"$$nlist_1_tag_116", align 1
  switch i8 %"$$nlist_1_tag_117", label %"$empty_default_118" [
    i8 0, label %"$Cons_119"
    i8 1, label %"$Nil_129"
  ]

"$Cons_119":                                      ; preds = %"$loop_header_113"
  %"$$nlist_1_120" = bitcast %TName_List_Int32* %"$$nlist_1_115" to %CName_Cons_Int32*
  %"$$list_cur_3_gep_121" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_120", i32 0, i32 1
  %"$$list_cur_3_load_122" = load %Int32, %Int32* %"$$list_cur_3_gep_121", align 4
  %"$list_cur_3" = alloca %Int32, align 8
  store %Int32 %"$$list_cur_3_load_122", %Int32* %"$list_cur_3", align 4
  %"$$list_next_4_gep_123" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_120", i32 0, i32 2
  %"$$list_next_4_load_124" = load %TName_List_Int32*, %TName_List_Int32** %"$$list_next_4_gep_123", align 8
  %"$list_next_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$list_next_4_load_124", %TName_List_Int32** %"$list_next_4", align 8
  %"$EventN__origin_125" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$EventN__origin_125", align 1
  %"$EventN__sender_126" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$EventN__sender_126", align 1
  %"$$list_cur_3_127" = load %Int32, %Int32* %"$list_cur_3", align 4
  call void @"$EventN_62"(%Uint128 %_amount, [20 x i8]* %"$EventN__origin_125", [20 x i8]* %"$EventN__sender_126", %Int32 %"$$list_cur_3_127")
  %"$$list_next_4_128" = load %TName_List_Int32*, %TName_List_Int32** %"$list_next_4", align 8
  store %TName_List_Int32* %"$$list_next_4_128", %TName_List_Int32** %"$nlist_1", align 8
  br label %"$loop_header_113"

"$Nil_129":                                       ; preds = %"$loop_header_113"
  %"$$nlist_1_130" = bitcast %TName_List_Int32* %"$$nlist_1_115" to %CName_Nil_Int32*
  br label %"$matchsucc_114"

"$empty_default_118":                             ; preds = %"$loop_header_113"
  br label %"$matchsucc_114"

"$matchsucc_114":                                 ; preds = %"$Nil_129", %"$empty_default_118"
  br label %"$loop_succ_112"

"$loop_succ_112":                                 ; preds = %"$matchsucc_114"
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

define void @NEvents(i8* %0) {
entry:
  %"$_amount_132" = getelementptr i8, i8* %0, i32 0
  %"$_amount_133" = bitcast i8* %"$_amount_132" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_133", align 8
  %"$_origin_134" = getelementptr i8, i8* %0, i32 16
  %"$_origin_135" = bitcast i8* %"$_origin_134" to [20 x i8]*
  %"$_sender_136" = getelementptr i8, i8* %0, i32 36
  %"$_sender_137" = bitcast i8* %"$_sender_136" to [20 x i8]*
  %"$nlist_138" = getelementptr i8, i8* %0, i32 56
  %"$nlist_139" = bitcast i8* %"$nlist_138" to %TName_List_Int32**
  %nlist = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_139", align 8
  call void @"$NEvents_102"(%Uint128 %_amount, [20 x i8]* %"$_origin_135", [20 x i8]* %"$_sender_137", %TName_List_Int32* %nlist)
  ret void
}
