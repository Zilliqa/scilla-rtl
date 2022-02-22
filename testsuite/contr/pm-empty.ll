

; gas_remaining: 4001999
; ModuleID = 'PM_empty'
source_filename = "PM_empty"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_38" = type { i32, %"$TyDescr_AddrFieldTyp_37"* }
%"$TyDescr_AddrFieldTyp_37" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_146" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_147" = type { %ParamDescrString, i32, %"$ParamDescr_146"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_ADT_Bool_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Bool_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_Addr_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_38"* @"$TyDescr_AddrFields_52" to i8*) }
@"$TyDescr_Bool_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_51", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Bool_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_41" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_42" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_42", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_45" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_45", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Bool_True_ADTTyp_Constr_43", %"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Bool_False_ADTTyp_Constr_46"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_34"*], [2 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Bool_ADTTyp_40" }
@"$TyDescr_Bool_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Bool_ADTTyp_Specl_49"]
@"$TyDescr_ADT_Bool_51" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_52" = unnamed_addr constant %"$TyDescr_AddrTyp_38" { i32 -3, %"$TyDescr_AddrFieldTyp_37"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_77" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_82" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_85" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_35", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_148" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_149" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_150" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_146"] [%"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_148", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_149", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_150", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_151" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_152" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_153" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_154" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_155" = unnamed_addr constant [4 x %"$ParamDescr_146"] [%"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_151", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_152", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }, %"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_153", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_39" }, %"$ParamDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_154", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_35" }]
@"$tname_t1_156" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_147"] [%"$TransDescr_147" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_156", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_146"* getelementptr inbounds ([4 x %"$ParamDescr_146"], [4 x %"$ParamDescr_146"]* @"$tparams_t1_155", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 5, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 5
  store i64 %"$consume_57", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  ret void
}

define internal void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$_origin_64", [20 x i8]* %"$_sender_65", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_64", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_65", align 1
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %"$msgobj_76_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_76_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_76_salloc_load", i64 69)
  %"$msgobj_76_salloc" = bitcast i8* %"$msgobj_76_salloc_salloc" to [69 x i8]*
  %"$msgobj_76" = bitcast [69 x i8]* %"$msgobj_76_salloc" to i8*
  store i8 2, i8* %"$msgobj_76", align 1
  %"$msgobj_fname_78" = getelementptr i8, i8* %"$msgobj_76", i32 1
  %"$msgobj_fname_79" = bitcast i8* %"$msgobj_fname_78" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_77", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_79", align 8
  %"$msgobj_td_80" = getelementptr i8, i8* %"$msgobj_76", i32 17
  %"$msgobj_td_81" = bitcast i8* %"$msgobj_td_80" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_81", align 8
  %"$msgobj_v_83" = getelementptr i8, i8* %"$msgobj_76", i32 25
  %"$msgobj_v_84" = bitcast i8* %"$msgobj_v_83" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_82", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_84", align 8
  %"$msgobj_fname_86" = getelementptr i8, i8* %"$msgobj_76", i32 41
  %"$msgobj_fname_87" = bitcast i8* %"$msgobj_fname_86" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_85", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_87", align 8
  %"$msgobj_td_88" = getelementptr i8, i8* %"$msgobj_76", i32 57
  %"$msgobj_td_89" = bitcast i8* %"$msgobj_td_88" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ** %"$msgobj_td_89", align 8
  %"$msgobj_v_90" = getelementptr i8, i8* %"$msgobj_76", i32 65
  %"$msgobj_v_91" = bitcast i8* %"$msgobj_v_90" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_91", align 4
  store i8* %"$msgobj_76", i8** %e, align 8
  %"$e_93" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_95" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_93")
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 %"$_literal_cost_call_95", %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_74"
  %"$consume_100" = sub i64 %"$gasrem_96", %"$_literal_cost_call_95"
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$execptr_load_101" = load i8*, i8** @_execptr, align 8
  %"$e_102" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_101", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_102")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_104", [20 x i8]* %"$_sender_105", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_104", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_105", align 1
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 2, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 2
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$c_tag_122" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_123" = load i8, i8* %"$c_tag_122", align 1
  switch i8 %"$c_tag_123", label %"$empty_default_124" [
    i8 0, label %"$True_125"
    i8 1, label %"$False_127"
  ]

"$True_125":                                      ; preds = %"$have_gas_119"
  %"$c_126" = bitcast %TName_Bool* %c to %CName_True*
  br label %"$matchsucc_121"

"$False_127":                                     ; preds = %"$have_gas_119"
  %"$c_128" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$False_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$False_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$create_event__origin_134" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_134", align 1
  %"$create_event__sender_135" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_135", align 1
  %"$x_136" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_134", [20 x i8]* %"$create_event__sender_135", %Int32 %"$x_136")
  br label %"$matchsucc_121"

"$empty_default_124":                             ; preds = %"$have_gas_119"
  br label %"$matchsucc_121"

"$matchsucc_121":                                 ; preds = %"$have_gas_132", %"$True_125", %"$empty_default_124"
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_138" = getelementptr i8, i8* %0, i32 0
  %"$_amount_139" = bitcast i8* %"$_amount_138" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_139", align 8
  %"$_origin_140" = getelementptr i8, i8* %0, i32 16
  %"$_origin_141" = bitcast i8* %"$_origin_140" to [20 x i8]*
  %"$_sender_142" = getelementptr i8, i8* %0, i32 36
  %"$_sender_143" = bitcast i8* %"$_sender_142" to [20 x i8]*
  %"$c_144" = getelementptr i8, i8* %0, i32 56
  %"$c_145" = bitcast i8* %"$c_144" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_145", align 8
  call void @"$t1_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_141", [20 x i8]* %"$_sender_143", %TName_Bool* %c)
  ret void
}
