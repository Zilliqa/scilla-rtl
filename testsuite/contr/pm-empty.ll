

; gas_remaining: 4001999
; ModuleID = 'PM_empty'
source_filename = "PM_empty"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_148" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_149" = type { %ParamDescrString, i32, %"$ParamDescr_148"* }
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
@"$TyDescr_ReplicateContr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_ReplicateContr_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
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
@"$TyDescr_AddrFields_54" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -3, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_79" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_84" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_87" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_150" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_151" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_152" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_148"] [%"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_150", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_151", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_152", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_153" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_154" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_155" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_156" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_157" = unnamed_addr constant [4 x %"$ParamDescr_148"] [%"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_153", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_154", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_155", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_148" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_156", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37" }]
@"$tname_t1_158" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_149"] [%"$TransDescr_149" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_158", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_148"* getelementptr inbounds ([4 x %"$ParamDescr_148"], [4 x %"$ParamDescr_148"]* @"$tparams_t1_157", i32 0, i32 0) }]
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

define void @_deploy_ops() {
entry:
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  ret void
}

define internal void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$_origin_66", [20 x i8]* %"$_sender_67", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_66", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_67", align 1
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %"$msgobj_78_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_78_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_78_salloc_load", i64 69)
  %"$msgobj_78_salloc" = bitcast i8* %"$msgobj_78_salloc_salloc" to [69 x i8]*
  %"$msgobj_78" = bitcast [69 x i8]* %"$msgobj_78_salloc" to i8*
  store i8 2, i8* %"$msgobj_78", align 1
  %"$msgobj_fname_80" = getelementptr i8, i8* %"$msgobj_78", i32 1
  %"$msgobj_fname_81" = bitcast i8* %"$msgobj_fname_80" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_79", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_81", align 8
  %"$msgobj_td_82" = getelementptr i8, i8* %"$msgobj_78", i32 17
  %"$msgobj_td_83" = bitcast i8* %"$msgobj_td_82" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_83", align 8
  %"$msgobj_v_85" = getelementptr i8, i8* %"$msgobj_78", i32 25
  %"$msgobj_v_86" = bitcast i8* %"$msgobj_v_85" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_84", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_86", align 8
  %"$msgobj_fname_88" = getelementptr i8, i8* %"$msgobj_78", i32 41
  %"$msgobj_fname_89" = bitcast i8* %"$msgobj_fname_88" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_87", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_89", align 8
  %"$msgobj_td_90" = getelementptr i8, i8* %"$msgobj_78", i32 57
  %"$msgobj_td_91" = bitcast i8* %"$msgobj_td_90" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ** %"$msgobj_td_91", align 8
  %"$msgobj_v_92" = getelementptr i8, i8* %"$msgobj_78", i32 65
  %"$msgobj_v_93" = bitcast i8* %"$msgobj_v_92" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_93", align 4
  store i8* %"$msgobj_78", i8** %e, align 8
  %"$e_95" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_97" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_95")
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 %"$_literal_cost_call_97", %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_76"
  %"$consume_102" = sub i64 %"$gasrem_98", %"$_literal_cost_call_97"
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  %"$e_104" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_103", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_104")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_105"(%Uint128 %_amount, [20 x i8]* %"$_origin_106", [20 x i8]* %"$_sender_107", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_106", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_107", align 1
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 2, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 2
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$c_tag_124" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_125" = load i8, i8* %"$c_tag_124", align 1
  switch i8 %"$c_tag_125", label %"$empty_default_126" [
    i8 0, label %"$True_127"
    i8 1, label %"$False_129"
  ]

"$True_127":                                      ; preds = %"$have_gas_121"
  %"$c_128" = bitcast %TName_Bool* %c to %CName_True*
  br label %"$matchsucc_123"

"$False_129":                                     ; preds = %"$have_gas_121"
  %"$c_130" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$False_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$False_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$create_event__origin_136" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_136", align 1
  %"$create_event__sender_137" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_137", align 1
  %"$x_138" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_136", [20 x i8]* %"$create_event__sender_137", %Int32 %"$x_138")
  br label %"$matchsucc_123"

"$empty_default_126":                             ; preds = %"$have_gas_121"
  br label %"$matchsucc_123"

"$matchsucc_123":                                 ; preds = %"$have_gas_134", %"$True_127", %"$empty_default_126"
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_140" = getelementptr i8, i8* %0, i32 0
  %"$_amount_141" = bitcast i8* %"$_amount_140" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_141", align 8
  %"$_origin_142" = getelementptr i8, i8* %0, i32 16
  %"$_origin_143" = bitcast i8* %"$_origin_142" to [20 x i8]*
  %"$_sender_144" = getelementptr i8, i8* %0, i32 36
  %"$_sender_145" = bitcast i8* %"$_sender_144" to [20 x i8]*
  %"$c_146" = getelementptr i8, i8* %0, i32 56
  %"$c_147" = bitcast i8* %"$c_146" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_147", align 8
  call void @"$t1_105"(%Uint128 %_amount, [20 x i8]* %"$_origin_143", [20 x i8]* %"$_sender_145", %TName_Bool* %c)
  ret void
}
