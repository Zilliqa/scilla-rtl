

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
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
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_180" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_181" = type { %ParamDescrString, i32, %"$ParamDescr_180"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_ADT_Bool_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Bool_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Addr_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_41"* @"$TyDescr_AddrFields_55" to i8*) }
@"$TyDescr_Bool_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_54", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Bool_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_45" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_45", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_48" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_48", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Bool_True_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Bool_False_ADTTyp_Constr_49"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Bool_ADTTyp_43" }
@"$TyDescr_Bool_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Bool_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Bool_54" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_55" = unnamed_addr constant %"$TyDescr_AddrTyp_41" { i32 -1, %"$TyDescr_AddrFieldTyp_40"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$x_67" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_85" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_90" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_93" = unnamed_addr constant [7 x i8] c"message"
@"$x_114" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_182" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_183" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_184" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_180"] [%"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_182", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_183", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_184", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_185" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_186" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_187" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_188" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_189" = unnamed_addr constant [4 x %"$ParamDescr_180"] [%"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_185", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_186", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_187", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_180" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_188", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_38" }]
@"$tname_t1_190" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_181"] [%"$TransDescr_181" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_190", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_180"* getelementptr inbounds ([4 x %"$ParamDescr_180"], [4 x %"$ParamDescr_180"]* @"$tparams_t1_189", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 5, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %entry
  %"$consume_60" = sub i64 %"$gasrem_56", 5
  store i64 %"$consume_60", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  %"$x_3" = alloca %Int32, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_3", align 4
  %"$execptr_load_66" = load i8*, i8** @_execptr, align 8
  %"$$x_3_68" = load %Int32, %Int32* %"$x_3", align 4
  %"$update_value_69" = alloca %Int32, align 8
  store %Int32 %"$$x_3_68", %Int32* %"$update_value_69", align 4
  %"$update_value_70" = bitcast %Int32* %"$update_value_69" to i8*
  call void @_update_field(i8* %"$execptr_load_66", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_67", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_6", i32 0, i8* null, i8* %"$update_value_70")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_71"(%Uint128 %_amount, [20 x i8]* %"$_origin_72", [20 x i8]* %"$_sender_73", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_72", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_73", align 1
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$msgobj_84_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_84_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_84_salloc_load", i64 69)
  %"$msgobj_84_salloc" = bitcast i8* %"$msgobj_84_salloc_salloc" to [69 x i8]*
  %"$msgobj_84" = bitcast [69 x i8]* %"$msgobj_84_salloc" to i8*
  store i8 2, i8* %"$msgobj_84", align 1
  %"$msgobj_fname_86" = getelementptr i8, i8* %"$msgobj_84", i32 1
  %"$msgobj_fname_87" = bitcast i8* %"$msgobj_fname_86" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_85", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_87", align 8
  %"$msgobj_td_88" = getelementptr i8, i8* %"$msgobj_84", i32 17
  %"$msgobj_td_89" = bitcast i8* %"$msgobj_td_88" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_89", align 8
  %"$msgobj_v_91" = getelementptr i8, i8* %"$msgobj_84", i32 25
  %"$msgobj_v_92" = bitcast i8* %"$msgobj_v_91" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_90", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_92", align 8
  %"$msgobj_fname_94" = getelementptr i8, i8* %"$msgobj_84", i32 41
  %"$msgobj_fname_95" = bitcast i8* %"$msgobj_fname_94" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_93", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_95", align 8
  %"$msgobj_td_96" = getelementptr i8, i8* %"$msgobj_84", i32 57
  %"$msgobj_td_97" = bitcast i8* %"$msgobj_td_96" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ** %"$msgobj_td_97", align 8
  %"$msgobj_v_98" = getelementptr i8, i8* %"$msgobj_84", i32 65
  %"$msgobj_v_99" = bitcast i8* %"$msgobj_v_98" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_99", align 4
  store i8* %"$msgobj_84", i8** %e, align 8
  %"$e_101" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_103" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_101")
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 %"$_literal_cost_call_103", %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_82"
  %"$consume_108" = sub i64 %"$gasrem_104", %"$_literal_cost_call_103"
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$execptr_load_109" = load i8*, i8** @_execptr, align 8
  %"$e_110" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_109", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_110")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_111"(%Uint128 %_amount, [20 x i8]* %"$_origin_112", [20 x i8]* %"$_sender_113", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_112", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_113", align 1
  %"$x_1" = alloca %Int32, align 8
  %"$execptr_load_115" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_116" = call i8* @_fetch_field(i8* %"$execptr_load_115", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_114", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_6", i32 0, i8* null, i32 1)
  %"$$x_1_117" = bitcast i8* %"$$x_1_call_116" to %Int32*
  %"$$x_1_118" = load %Int32, %Int32* %"$$x_1_117", align 4
  store %Int32 %"$$x_1_118", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_119" = alloca %Int32, align 8
  %"$$x_1_120" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_120", %Int32* %"$_literal_cost_$x_1_119", align 4
  %"$$_literal_cost_$x_1_119_121" = bitcast %Int32* %"$_literal_cost_$x_1_119" to i8*
  %"$_literal_cost_call_122" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_$x_1_119_121")
  %"$gasadd_123" = add i64 %"$_literal_cost_call_122", 0
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 %"$gasadd_123", %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", %"$gasadd_123"
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$x_2" = alloca %Int32, align 8
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$x_2", align 4
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$$x_2_149" = load %Int32, %Int32* %"$x_2", align 4
  store %Int32 %"$$x_2_149", %Int32* %y, align 4
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_147"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 4, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 4
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$$x_1_160" = load %Int32, %Int32* %"$x_1", align 4
  %"$y_161" = load %Int32, %Int32* %y, align 4
  %"$add_call_162" = call %Int32 @_add_Int32(%Int32 %"$$x_1_160", %Int32 %"$y_161")
  store %Int32 %"$add_call_162", %Int32* %z, align 4
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_158"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$create_event__origin_168" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_168", align 1
  %"$create_event__sender_169" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_169", align 1
  %"$z_170" = load %Int32, %Int32* %z, align 4
  call void @"$create_event_71"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_168", [20 x i8]* %"$create_event__sender_169", %Int32 %"$z_170")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @t1(i8* %0) {
entry:
  %"$_amount_172" = getelementptr i8, i8* %0, i32 0
  %"$_amount_173" = bitcast i8* %"$_amount_172" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_173", align 8
  %"$_origin_174" = getelementptr i8, i8* %0, i32 16
  %"$_origin_175" = bitcast i8* %"$_origin_174" to [20 x i8]*
  %"$_sender_176" = getelementptr i8, i8* %0, i32 36
  %"$_sender_177" = bitcast i8* %"$_sender_176" to [20 x i8]*
  %"$c_178" = getelementptr i8, i8* %0, i32 56
  %"$c_179" = bitcast i8* %"$c_178" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_179", align 8
  call void @"$t1_111"(%Uint128 %_amount, [20 x i8]* %"$_origin_175", [20 x i8]* %"$_sender_177", %TName_Bool* %c)
  ret void
}
