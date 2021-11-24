

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_34" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_33"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_33" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_35"**, %"$TyDescrTy_ADTTyp_34"* }
%"$TyDescrTy_ADTTyp_Constr_35" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_162" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_163" = type { %ParamDescrString, i32, %"$ParamDescr_162"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%"TName_Pair_List_(Int32)_Int32" = type { i8, %"CName_Pair_List_(Int32)_Int32"* }
%"CName_Pair_List_(Int32)_Int32" = type <{ i8, %TName_List_Int32*, %Int32 }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_3" = global %"$TyDescrTy_PrimTyp_2" zeroinitializer
@"$TyDescr_Int32_4" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int32_Prim_3" to i8*) }
@"$TyDescr_Uint32_Prim_5" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 0 }
@"$TyDescr_Uint32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint32_Prim_5" to i8*) }
@"$TyDescr_Int64_Prim_7" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 1 }
@"$TyDescr_Int64_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int64_Prim_7" to i8*) }
@"$TyDescr_Uint64_Prim_9" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 1 }
@"$TyDescr_Uint64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint64_Prim_9" to i8*) }
@"$TyDescr_Int128_Prim_11" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 2 }
@"$TyDescr_Int128_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int128_Prim_11" to i8*) }
@"$TyDescr_Uint128_Prim_13" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 2 }
@"$TyDescr_Uint128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint128_Prim_13" to i8*) }
@"$TyDescr_Int256_Prim_15" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 3 }
@"$TyDescr_Int256_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int256_Prim_15" to i8*) }
@"$TyDescr_Uint256_Prim_17" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 3 }
@"$TyDescr_Uint256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint256_Prim_17" to i8*) }
@"$TyDescr_String_Prim_19" = global %"$TyDescrTy_PrimTyp_2" { i32 2, i32 0 }
@"$TyDescr_String_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_String_Prim_19" to i8*) }
@"$TyDescr_Bnum_Prim_21" = global %"$TyDescrTy_PrimTyp_2" { i32 3, i32 0 }
@"$TyDescr_Bnum_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bnum_Prim_21" to i8*) }
@"$TyDescr_Message_Prim_23" = global %"$TyDescrTy_PrimTyp_2" { i32 4, i32 0 }
@"$TyDescr_Message_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Message_Prim_23" to i8*) }
@"$TyDescr_Event_Prim_25" = global %"$TyDescrTy_PrimTyp_2" { i32 5, i32 0 }
@"$TyDescr_Event_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Event_Prim_25" to i8*) }
@"$TyDescr_Exception_Prim_27" = global %"$TyDescrTy_PrimTyp_2" { i32 6, i32 0 }
@"$TyDescr_Exception_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Exception_Prim_27" to i8*) }
@"$TyDescr_Bystr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_29" to i8*) }
@"$TyDescr_Bystr20_Prim_31" = global %"$TyDescrTy_PrimTyp_2" { i32 8, i32 20 }
@"$TyDescr_Bystr20_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr20_Prim_31" to i8*) }
@"$TyDescr_ADT_List_Int32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_List_Int32_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_Int32_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_63" to i8*) }
@"$TyDescr_List_ADTTyp_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_53", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_List_ADTTyp_m_specls_52", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_43" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36"]
@"$TyDescr_ADT_Cons_44" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_44", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_47" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_47", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_45", %"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_48"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@"$TyDescr_List_Int32_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_35"*], [2 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_List_ADTTyp_42" }
@"$TyDescr_List_ADTTyp_m_specls_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_List_Int32_ADTTyp_Specl_51"]
@"$TyDescr_ADT_List_53" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_62", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_Pair_ADTTyp_m_specls_61", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@"$TyDescr_ADT_Pair_56" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_56", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_57"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_35"*], [1 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_Pair_ADTTyp_54" }
@"$TyDescr_Pair_ADTTyp_m_specls_61" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_60"]
@"$TyDescr_ADT_Pair_62" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_AddrFields_63" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -1, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_83" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_88" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_91" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_164" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_165" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_166" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_162"] [%"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_164", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_165", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_166", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_167" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_168" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_169" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_p_170" = unnamed_addr constant [1 x i8] c"p"
@"$tparams_t1_171" = unnamed_addr constant [4 x %"$ParamDescr_162"] [%"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_167", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_168", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_169", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_162" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_p_170", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_37" }]
@"$tname_t1_172" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_163"] [%"$TransDescr_163" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_172", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_162"* getelementptr inbounds ([4 x %"$ParamDescr_162"], [4 x %"$ParamDescr_162"]* @"$tparams_t1_171", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 5, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 5
  store i64 %"$consume_68", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_init_state() !dbg !10 {
entry:
  ret void
}

define internal void @"$create_event_69"(%Uint128 %_amount, [20 x i8]* %"$_origin_70", [20 x i8]* %"$_sender_71", %Int32 %m) !dbg !11 {
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
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_87", align 8
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_82", i32 25
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_88", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_90", align 8
  %"$msgobj_fname_92" = getelementptr i8, i8* %"$msgobj_82", i32 41
  %"$msgobj_fname_93" = bitcast i8* %"$msgobj_fname_92" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_91", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_93", align 8
  %"$msgobj_td_94" = getelementptr i8, i8* %"$msgobj_82", i32 57
  %"$msgobj_td_95" = bitcast i8* %"$msgobj_td_94" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ** %"$msgobj_td_95", align 8
  %"$msgobj_v_96" = getelementptr i8, i8* %"$msgobj_82", i32 65
  %"$msgobj_v_97" = bitcast i8* %"$msgobj_v_96" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_97", align 4
  store i8* %"$msgobj_82", i8** %e, align 8, !dbg !12
  %"$e_99" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_101" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_99")
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
  call void @_event(i8* %"$execptr_load_107", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_108"), !dbg !13
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_109"(%Uint128 %_amount, [20 x i8]* %"$_origin_110", [20 x i8]* %"$_sender_111", %"TName_Pair_List_(Int32)_Int32"* %p) !dbg !14 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_110", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_111", align 1
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %a = alloca %Int32, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %a, align 4, !dbg !15
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$p_tag_128" = getelementptr inbounds %"TName_Pair_List_(Int32)_Int32", %"TName_Pair_List_(Int32)_Int32"* %p, i32 0, i32 0
  %"$p_tag_129" = load i8, i8* %"$p_tag_128", align 1
  switch i8 %"$p_tag_129", label %"$empty_default_130" [
    i8 0, label %"$Pair_131"
  ], !dbg !16

"$Pair_131":                                      ; preds = %"$have_gas_125"
  %"$p_132" = bitcast %"TName_Pair_List_(Int32)_Int32"* %p to %"CName_Pair_List_(Int32)_Int32"*
  %"$b_gep_133" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_132", i32 0, i32 1
  %"$b_load_134" = load %TName_List_Int32*, %TName_List_Int32** %"$b_gep_133", align 8
  %b = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$b_load_134", %TName_List_Int32** %b, align 8
  %"$$a_1_gep_135" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_132", i32 0, i32 2
  %"$$a_1_load_136" = load %Int32, %Int32* %"$$a_1_gep_135", align 4
  %"$a_1" = alloca %Int32, align 8
  store %Int32 %"$$a_1_load_136", %Int32* %"$a_1", align 4
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$Pair_131"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$Pair_131"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$create_event__origin_142" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_142", align 1
  %"$create_event__sender_143" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_143", align 1
  %"$$a_1_144" = load %Int32, %Int32* %"$a_1", align 4
  call void @"$create_event_69"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_142", [20 x i8]* %"$create_event__sender_143", %Int32 %"$$a_1_144"), !dbg !17
  br label %"$matchsucc_127"

"$empty_default_130":                             ; preds = %"$have_gas_125"
  br label %"$matchsucc_127"

"$matchsucc_127":                                 ; preds = %"$have_gas_140", %"$empty_default_130"
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$matchsucc_127"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$matchsucc_127"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$create_event__origin_150" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_150", align 1
  %"$create_event__sender_151" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_151", align 1
  %"$a_152" = load %Int32, %Int32* %a, align 4
  call void @"$create_event_69"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_150", [20 x i8]* %"$create_event__sender_151", %Int32 %"$a_152"), !dbg !20
  ret void
}

define void @t1(i8* %0) !dbg !21 {
entry:
  %"$_amount_154" = getelementptr i8, i8* %0, i32 0
  %"$_amount_155" = bitcast i8* %"$_amount_154" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_155", align 8
  %"$_origin_156" = getelementptr i8, i8* %0, i32 16
  %"$_origin_157" = bitcast i8* %"$_origin_156" to [20 x i8]*
  %"$_sender_158" = getelementptr i8, i8* %0, i32 36
  %"$_sender_159" = bitcast i8* %"$_sender_158" to [20 x i8]*
  %"$p_160" = getelementptr i8, i8* %0, i32 56
  %"$p_161" = bitcast i8* %"$p_160" to %"TName_Pair_List_(Int32)_Int32"**
  %p = load %"TName_Pair_List_(Int32)_Int32"*, %"TName_Pair_List_(Int32)_Int32"** %"$p_161", align 8
  call void @"$t1_109"(%Uint128 %_amount, [20 x i8]* %"$_origin_157", [20 x i8]* %"$_sender_159", %"TName_Pair_List_(Int32)_Int32"* %p), !dbg !22
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "match_assign2.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 6, column: 7, scope: !11)
!13 = !DILocation(line: 7, column: 3, scope: !11)
!14 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 12, column: 7, scope: !14)
!16 = !DILocation(line: 13, column: 3, scope: !14)
!17 = !DILocation(line: 15, column: 5, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !2, line: 14, column: 5)
!19 = distinct !DILexicalBlock(scope: !14, file: !2, line: 13, column: 3)
!20 = !DILocation(line: 18, column: 3, scope: !14)
!21 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 10, column: 12, scope: !21)
