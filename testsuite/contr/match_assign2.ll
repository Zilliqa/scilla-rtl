

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_167" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_168" = type { %ParamDescrString, i32, %"$ParamDescr_167"* }
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
@"$stringlit_88" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_93" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_96" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_169" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_170" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_171" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_167"] [%"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_169", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_170", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_171", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_172" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_173" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_174" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_p_175" = unnamed_addr constant [1 x i8] c"p"
@"$tparams_t1_176" = unnamed_addr constant [4 x %"$ParamDescr_167"] [%"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_172", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_173", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_174", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_167" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_p_175", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_37" }]
@"$tname_t1_177" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_168"] [%"$TransDescr_168" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_177", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_167"* getelementptr inbounds ([4 x %"$ParamDescr_167"], [4 x %"$ParamDescr_167"]* @"$tparams_t1_176", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  ret void
}

define internal void @"$create_event_74"(%Uint128 %_amount, [20 x i8]* %"$_origin_75", [20 x i8]* %"$_sender_76", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_75", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_76", align 1
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$msgobj_87_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_87_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_87_salloc_load", i64 69)
  %"$msgobj_87_salloc" = bitcast i8* %"$msgobj_87_salloc_salloc" to [69 x i8]*
  %"$msgobj_87" = bitcast [69 x i8]* %"$msgobj_87_salloc" to i8*
  store i8 2, i8* %"$msgobj_87", align 1
  %"$msgobj_fname_89" = getelementptr i8, i8* %"$msgobj_87", i32 1
  %"$msgobj_fname_90" = bitcast i8* %"$msgobj_fname_89" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_88", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_90", align 8
  %"$msgobj_td_91" = getelementptr i8, i8* %"$msgobj_87", i32 17
  %"$msgobj_td_92" = bitcast i8* %"$msgobj_td_91" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_92", align 8
  %"$msgobj_v_94" = getelementptr i8, i8* %"$msgobj_87", i32 25
  %"$msgobj_v_95" = bitcast i8* %"$msgobj_v_94" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_93", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_95", align 8
  %"$msgobj_fname_97" = getelementptr i8, i8* %"$msgobj_87", i32 41
  %"$msgobj_fname_98" = bitcast i8* %"$msgobj_fname_97" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_96", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_98", align 8
  %"$msgobj_td_99" = getelementptr i8, i8* %"$msgobj_87", i32 57
  %"$msgobj_td_100" = bitcast i8* %"$msgobj_td_99" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ** %"$msgobj_td_100", align 8
  %"$msgobj_v_101" = getelementptr i8, i8* %"$msgobj_87", i32 65
  %"$msgobj_v_102" = bitcast i8* %"$msgobj_v_101" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_102", align 4
  store i8* %"$msgobj_87", i8** %e, align 8
  %"$e_104" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_106" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_104")
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 %"$_literal_cost_call_106", %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_85"
  %"$consume_111" = sub i64 %"$gasrem_107", %"$_literal_cost_call_106"
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  %"$e_113" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_112", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_113")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_114"(%Uint128 %_amount, [20 x i8]* %"$_origin_115", [20 x i8]* %"$_sender_116", %"TName_Pair_List_(Int32)_Int32"* %p) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_115", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_116", align 1
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %entry
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %a = alloca %Int32, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %a, align 4
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$p_tag_133" = getelementptr inbounds %"TName_Pair_List_(Int32)_Int32", %"TName_Pair_List_(Int32)_Int32"* %p, i32 0, i32 0
  %"$p_tag_134" = load i8, i8* %"$p_tag_133", align 1
  switch i8 %"$p_tag_134", label %"$empty_default_135" [
    i8 0, label %"$Pair_136"
  ]

"$Pair_136":                                      ; preds = %"$have_gas_130"
  %"$p_137" = bitcast %"TName_Pair_List_(Int32)_Int32"* %p to %"CName_Pair_List_(Int32)_Int32"*
  %"$b_gep_138" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_137", i32 0, i32 1
  %"$b_load_139" = load %TName_List_Int32*, %TName_List_Int32** %"$b_gep_138", align 8
  %b = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$b_load_139", %TName_List_Int32** %b, align 8
  %"$$a_1_gep_140" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_137", i32 0, i32 2
  %"$$a_1_load_141" = load %Int32, %Int32* %"$$a_1_gep_140", align 4
  %"$a_1" = alloca %Int32, align 8
  store %Int32 %"$$a_1_load_141", %Int32* %"$a_1", align 4
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$Pair_136"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$Pair_136"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$create_event__origin_147" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_147", align 1
  %"$create_event__sender_148" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_148", align 1
  %"$$a_1_149" = load %Int32, %Int32* %"$a_1", align 4
  call void @"$create_event_74"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_147", [20 x i8]* %"$create_event__sender_148", %Int32 %"$$a_1_149")
  br label %"$matchsucc_132"

"$empty_default_135":                             ; preds = %"$have_gas_130"
  br label %"$matchsucc_132"

"$matchsucc_132":                                 ; preds = %"$have_gas_145", %"$empty_default_135"
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$matchsucc_132"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$matchsucc_132"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$create_event__origin_155" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_155", align 1
  %"$create_event__sender_156" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_156", align 1
  %"$a_157" = load %Int32, %Int32* %a, align 4
  call void @"$create_event_74"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_155", [20 x i8]* %"$create_event__sender_156", %Int32 %"$a_157")
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_159" = getelementptr i8, i8* %0, i32 0
  %"$_amount_160" = bitcast i8* %"$_amount_159" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_160", align 8
  %"$_origin_161" = getelementptr i8, i8* %0, i32 16
  %"$_origin_162" = bitcast i8* %"$_origin_161" to [20 x i8]*
  %"$_sender_163" = getelementptr i8, i8* %0, i32 36
  %"$_sender_164" = bitcast i8* %"$_sender_163" to [20 x i8]*
  %"$p_165" = getelementptr i8, i8* %0, i32 56
  %"$p_166" = bitcast i8* %"$p_165" to %"TName_Pair_List_(Int32)_Int32"**
  %p = load %"TName_Pair_List_(Int32)_Int32"*, %"TName_Pair_List_(Int32)_Int32"** %"$p_166", align 8
  call void @"$t1_114"(%Uint128 %_amount, [20 x i8]* %"$_origin_162", [20 x i8]* %"$_sender_164", %"TName_Pair_List_(Int32)_Int32"* %p)
  ret void
}
