

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_215" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_216" = type { %ParamDescrString, i32, %"$ParamDescr_215"* }
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
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_3" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_3" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
@"$TyDescr_ADT_Bool_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_54" to i8*) }
@"$TyDescr_Bool_ADTTyp_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_53", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_34"*], [1 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Bool_ADTTyp_m_specls_52", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_44" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_44", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_47" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_47", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_True_ADTTyp_Constr_45", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_False_ADTTyp_Constr_48"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Bool_ADTTyp_42" }
@"$TyDescr_Bool_ADTTyp_m_specls_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_51"]
@"$TyDescr_ADT_Bool_53" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_54" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -1, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_74" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_79" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_82" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_217" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_218" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_219" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_215"] [%"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_217", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_218", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_219", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_220" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_221" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_222" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_223" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_224" = unnamed_addr constant [4 x %"$ParamDescr_215"] [%"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_220", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_221", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_222", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_223", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37" }]
@"$tname_t1_225" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_216"] [%"$TransDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_225", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_215"* getelementptr inbounds ([4 x %"$ParamDescr_215"], [4 x %"$ParamDescr_215"]* @"$tparams_t1_224", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 5, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 5
  store i64 %"$consume_59", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  ret void
}

define internal void @"$create_event_60"(%Uint128 %_amount, [20 x i8]* %"$_origin_61", [20 x i8]* %"$_sender_62", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_61", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_62", align 1
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %"$msgobj_73_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_73_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_73_salloc_load", i64 69)
  %"$msgobj_73_salloc" = bitcast i8* %"$msgobj_73_salloc_salloc" to [69 x i8]*
  %"$msgobj_73" = bitcast [69 x i8]* %"$msgobj_73_salloc" to i8*
  store i8 2, i8* %"$msgobj_73", align 1
  %"$msgobj_fname_75" = getelementptr i8, i8* %"$msgobj_73", i32 1
  %"$msgobj_fname_76" = bitcast i8* %"$msgobj_fname_75" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_74", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_76", align 8
  %"$msgobj_td_77" = getelementptr i8, i8* %"$msgobj_73", i32 17
  %"$msgobj_td_78" = bitcast i8* %"$msgobj_td_77" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_78", align 8
  %"$msgobj_v_80" = getelementptr i8, i8* %"$msgobj_73", i32 25
  %"$msgobj_v_81" = bitcast i8* %"$msgobj_v_80" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_79", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_81", align 8
  %"$msgobj_fname_83" = getelementptr i8, i8* %"$msgobj_73", i32 41
  %"$msgobj_fname_84" = bitcast i8* %"$msgobj_fname_83" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_82", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_84", align 8
  %"$msgobj_td_85" = getelementptr i8, i8* %"$msgobj_73", i32 57
  %"$msgobj_td_86" = bitcast i8* %"$msgobj_td_85" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ** %"$msgobj_td_86", align 8
  %"$msgobj_v_87" = getelementptr i8, i8* %"$msgobj_73", i32 65
  %"$msgobj_v_88" = bitcast i8* %"$msgobj_v_87" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_88", align 4
  store i8* %"$msgobj_73", i8** %e, align 8
  %"$e_90" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_92" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_90")
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 %"$_literal_cost_call_92", %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_71"
  %"$consume_97" = sub i64 %"$gasrem_93", %"$_literal_cost_call_92"
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$execptr_load_98" = load i8*, i8** @_execptr, align 8
  %"$e_99" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_98", %_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_99")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_100"(%Uint128 %_amount, [20 x i8]* %"$_origin_101", [20 x i8]* %"$_sender_102", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_101", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_102", align 1
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %entry
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 2, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 2
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$c_tag_114" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_115" = load i8, i8* %"$c_tag_114", align 1
  switch i8 %"$c_tag_115", label %"$empty_default_116" [
    i8 0, label %"$True_117"
    i8 1, label %"$False_124"
  ]

"$True_117":                                      ; preds = %"$have_gas_111"
  %"$c_118" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$True_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$True_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* %x, align 4
  br label %"$matchsucc_113"

"$False_124":                                     ; preds = %"$have_gas_111"
  %"$c_125" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$False_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$False_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %x, align 4
  br label %"$matchsucc_113"

"$empty_default_116":                             ; preds = %"$have_gas_111"
  br label %"$matchsucc_113"

"$matchsucc_113":                                 ; preds = %"$have_gas_129", %"$have_gas_122", %"$empty_default_116"
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$matchsucc_113"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$matchsucc_113"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$create_event__origin_136" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_136", align 1
  %"$create_event__sender_137" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_137", align 1
  %"$x_138" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_60"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_136", [20 x i8]* %"$create_event__sender_137", %Int32 %"$x_138")
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_134"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %y, align 4
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 2, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 2
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$c_tag_155" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_156" = load i8, i8* %"$c_tag_155", align 1
  switch i8 %"$c_tag_156", label %"$empty_default_157" [
    i8 0, label %"$True_158"
    i8 1, label %"$False_178"
  ]

"$True_158":                                      ; preds = %"$have_gas_152"
  %"$c_159" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$True_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$True_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$y_1" = alloca %Int32, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  store %Int32 { i32 101 }, %Int32* %"$y_1", align 4
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$create_event__origin_175" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_175", align 1
  %"$create_event__sender_176" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_176", align 1
  %"$$y_1_177" = load %Int32, %Int32* %"$y_1", align 4
  call void @"$create_event_60"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_175", [20 x i8]* %"$create_event__sender_176", %Int32 %"$$y_1_177")
  br label %"$matchsucc_154"

"$False_178":                                     ; preds = %"$have_gas_152"
  %"$c_179" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$False_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$False_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$y_2" = alloca %Int32, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  store %Int32 { i32 102 }, %Int32* %"$y_2", align 4
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$create_event__origin_195" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_195", align 1
  %"$create_event__sender_196" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_196", align 1
  %"$$y_2_197" = load %Int32, %Int32* %"$y_2", align 4
  call void @"$create_event_60"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_195", [20 x i8]* %"$create_event__sender_196", %Int32 %"$$y_2_197")
  br label %"$matchsucc_154"

"$empty_default_157":                             ; preds = %"$have_gas_152"
  br label %"$matchsucc_154"

"$matchsucc_154":                                 ; preds = %"$have_gas_193", %"$have_gas_173", %"$empty_default_157"
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$matchsucc_154"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$matchsucc_154"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$create_event__origin_203" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_203", align 1
  %"$create_event__sender_204" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_204", align 1
  %"$y_205" = load %Int32, %Int32* %y, align 4
  call void @"$create_event_60"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_203", [20 x i8]* %"$create_event__sender_204", %Int32 %"$y_205")
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_207" = getelementptr i8, i8* %0, i32 0
  %"$_amount_208" = bitcast i8* %"$_amount_207" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_208", align 8
  %"$_origin_209" = getelementptr i8, i8* %0, i32 16
  %"$_origin_210" = bitcast i8* %"$_origin_209" to [20 x i8]*
  %"$_sender_211" = getelementptr i8, i8* %0, i32 36
  %"$_sender_212" = bitcast i8* %"$_sender_211" to [20 x i8]*
  %"$c_213" = getelementptr i8, i8* %0, i32 56
  %"$c_214" = bitcast i8* %"$c_213" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_214", align 8
  call void @"$t1_100"(%Uint128 %_amount, [20 x i8]* %"$_origin_210", [20 x i8]* %"$_sender_212", %TName_Bool* %c)
  ret void
}
