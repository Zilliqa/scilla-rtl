

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_222" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_223" = type { %ParamDescrString, i32, %"$ParamDescr_222"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_4" = global %"$TyDescrTy_PrimTyp_3" zeroinitializer
@"$TyDescr_Int32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int32_Prim_4" to i8*) }
@"$TyDescr_Uint32_Prim_6" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 0 }
@"$TyDescr_Uint32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint32_Prim_6" to i8*) }
@"$TyDescr_Int64_Prim_8" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 1 }
@"$TyDescr_Int64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int64_Prim_8" to i8*) }
@"$TyDescr_Uint64_Prim_10" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 1 }
@"$TyDescr_Uint64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint64_Prim_10" to i8*) }
@"$TyDescr_Int128_Prim_12" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 2 }
@"$TyDescr_Int128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int128_Prim_12" to i8*) }
@"$TyDescr_Uint128_Prim_14" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 2 }
@"$TyDescr_Uint128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint128_Prim_14" to i8*) }
@"$TyDescr_Int256_Prim_16" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 3 }
@"$TyDescr_Int256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int256_Prim_16" to i8*) }
@"$TyDescr_Uint256_Prim_18" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 3 }
@"$TyDescr_Uint256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint256_Prim_18" to i8*) }
@"$TyDescr_String_Prim_20" = global %"$TyDescrTy_PrimTyp_3" { i32 2, i32 0 }
@"$TyDescr_String_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_String_Prim_20" to i8*) }
@"$TyDescr_Bnum_Prim_22" = global %"$TyDescrTy_PrimTyp_3" { i32 3, i32 0 }
@"$TyDescr_Bnum_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bnum_Prim_22" to i8*) }
@"$TyDescr_Message_Prim_24" = global %"$TyDescrTy_PrimTyp_3" { i32 4, i32 0 }
@"$TyDescr_Message_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Message_Prim_24" to i8*) }
@"$TyDescr_Event_Prim_26" = global %"$TyDescrTy_PrimTyp_3" { i32 5, i32 0 }
@"$TyDescr_Event_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Event_Prim_26" to i8*) }
@"$TyDescr_Exception_Prim_28" = global %"$TyDescrTy_PrimTyp_3" { i32 6, i32 0 }
@"$TyDescr_Exception_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Exception_Prim_28" to i8*) }
@"$TyDescr_ReplicateContr_Prim_30" = global %"$TyDescrTy_PrimTyp_3" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_ReplicateContr_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_3" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_3" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_Bool_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_56" to i8*) }
@"$TyDescr_Bool_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_55", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Bool_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_46" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_49" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_49", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_True_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_False_ADTTyp_Constr_50"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Bool_ADTTyp_44" }
@"$TyDescr_Bool_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Bool_55" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_56" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -3, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_81" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_86" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_89" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_224" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_225" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_226" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_222"] [%"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_224", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_225", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_226", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_227" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_228" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_229" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_230" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_231" = unnamed_addr constant [4 x %"$ParamDescr_222"] [%"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_227", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_228", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_229", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_222" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_230", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39" }]
@"$tname_t1_232" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_223"] [%"$TransDescr_223" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_232", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_222"* getelementptr inbounds ([4 x %"$ParamDescr_222"], [4 x %"$ParamDescr_222"]* @"$tparams_t1_231", i32 0, i32 0) }]
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

define void @_deploy_ops() {
entry:
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %entry
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  ret void
}

define internal void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$_origin_68", [20 x i8]* %"$_sender_69", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_68", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_69", align 1
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %"$msgobj_80_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_80_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_80_salloc_load", i64 69)
  %"$msgobj_80_salloc" = bitcast i8* %"$msgobj_80_salloc_salloc" to [69 x i8]*
  %"$msgobj_80" = bitcast [69 x i8]* %"$msgobj_80_salloc" to i8*
  store i8 2, i8* %"$msgobj_80", align 1
  %"$msgobj_fname_82" = getelementptr i8, i8* %"$msgobj_80", i32 1
  %"$msgobj_fname_83" = bitcast i8* %"$msgobj_fname_82" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_81", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_83", align 8
  %"$msgobj_td_84" = getelementptr i8, i8* %"$msgobj_80", i32 17
  %"$msgobj_td_85" = bitcast i8* %"$msgobj_td_84" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_85", align 8
  %"$msgobj_v_87" = getelementptr i8, i8* %"$msgobj_80", i32 25
  %"$msgobj_v_88" = bitcast i8* %"$msgobj_v_87" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_86", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_88", align 8
  %"$msgobj_fname_90" = getelementptr i8, i8* %"$msgobj_80", i32 41
  %"$msgobj_fname_91" = bitcast i8* %"$msgobj_fname_90" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_89", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_91", align 8
  %"$msgobj_td_92" = getelementptr i8, i8* %"$msgobj_80", i32 57
  %"$msgobj_td_93" = bitcast i8* %"$msgobj_td_92" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ** %"$msgobj_td_93", align 8
  %"$msgobj_v_94" = getelementptr i8, i8* %"$msgobj_80", i32 65
  %"$msgobj_v_95" = bitcast i8* %"$msgobj_v_94" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_95", align 4
  store i8* %"$msgobj_80", i8** %e, align 8
  %"$e_97" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_99" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_97")
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 %"$_literal_cost_call_99", %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_78"
  %"$consume_104" = sub i64 %"$gasrem_100", %"$_literal_cost_call_99"
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$execptr_load_105" = load i8*, i8** @_execptr, align 8
  %"$e_106" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_105", %_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_106")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_107"(%Uint128 %_amount, [20 x i8]* %"$_origin_108", [20 x i8]* %"$_sender_109", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_108", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_109", align 1
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %entry
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 2, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 2
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %"$c_tag_121" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_122" = load i8, i8* %"$c_tag_121", align 1
  switch i8 %"$c_tag_122", label %"$empty_default_123" [
    i8 0, label %"$True_124"
    i8 1, label %"$False_131"
  ]

"$True_124":                                      ; preds = %"$have_gas_118"
  %"$c_125" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$True_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$True_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* %x, align 4
  br label %"$matchsucc_120"

"$False_131":                                     ; preds = %"$have_gas_118"
  %"$c_132" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$False_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$False_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %x, align 4
  br label %"$matchsucc_120"

"$empty_default_123":                             ; preds = %"$have_gas_118"
  br label %"$matchsucc_120"

"$matchsucc_120":                                 ; preds = %"$have_gas_136", %"$have_gas_129", %"$empty_default_123"
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$matchsucc_120"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$matchsucc_120"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$create_event__origin_143" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_143", align 1
  %"$create_event__sender_144" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_144", align 1
  %"$x_145" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_143", [20 x i8]* %"$create_event__sender_144", %Int32 %"$x_145")
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_141"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %y, align 4
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 2, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 2
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$c_tag_162" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_163" = load i8, i8* %"$c_tag_162", align 1
  switch i8 %"$c_tag_163", label %"$empty_default_164" [
    i8 0, label %"$True_165"
    i8 1, label %"$False_185"
  ]

"$True_165":                                      ; preds = %"$have_gas_159"
  %"$c_166" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$True_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$True_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$y_1" = alloca %Int32, align 8
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store %Int32 { i32 101 }, %Int32* %"$y_1", align 4
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$create_event__origin_182" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_182", align 1
  %"$create_event__sender_183" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_183", align 1
  %"$$y_1_184" = load %Int32, %Int32* %"$y_1", align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_182", [20 x i8]* %"$create_event__sender_183", %Int32 %"$$y_1_184")
  br label %"$matchsucc_161"

"$False_185":                                     ; preds = %"$have_gas_159"
  %"$c_186" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$False_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$False_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$y_2" = alloca %Int32, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  store %Int32 { i32 102 }, %Int32* %"$y_2", align 4
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$create_event__origin_202" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_202", align 1
  %"$create_event__sender_203" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_203", align 1
  %"$$y_2_204" = load %Int32, %Int32* %"$y_2", align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_202", [20 x i8]* %"$create_event__sender_203", %Int32 %"$$y_2_204")
  br label %"$matchsucc_161"

"$empty_default_164":                             ; preds = %"$have_gas_159"
  br label %"$matchsucc_161"

"$matchsucc_161":                                 ; preds = %"$have_gas_200", %"$have_gas_180", %"$empty_default_164"
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$matchsucc_161"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$matchsucc_161"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$create_event__origin_210" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_210", align 1
  %"$create_event__sender_211" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_211", align 1
  %"$y_212" = load %Int32, %Int32* %y, align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_210", [20 x i8]* %"$create_event__sender_211", %Int32 %"$y_212")
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_214" = getelementptr i8, i8* %0, i32 0
  %"$_amount_215" = bitcast i8* %"$_amount_214" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_215", align 8
  %"$_origin_216" = getelementptr i8, i8* %0, i32 16
  %"$_origin_217" = bitcast i8* %"$_origin_216" to [20 x i8]*
  %"$_sender_218" = getelementptr i8, i8* %0, i32 36
  %"$_sender_219" = bitcast i8* %"$_sender_218" to [20 x i8]*
  %"$c_220" = getelementptr i8, i8* %0, i32 56
  %"$c_221" = bitcast i8* %"$c_220" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_221", align 8
  call void @"$t1_107"(%Uint128 %_amount, [20 x i8]* %"$_origin_217", [20 x i8]* %"$_sender_219", %TName_Bool* %c)
  ret void
}
