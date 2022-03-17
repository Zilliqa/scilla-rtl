

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_169" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_170" = type { %ParamDescrString, i32, %"$ParamDescr_169"* }
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
@"$TyDescr_ReplicateContr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_ReplicateContr_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_2" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_List_Int32_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Int32_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_Int32_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_65" to i8*) }
@"$TyDescr_List_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_55", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38"]
@"$TyDescr_ADT_Cons_46" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_49" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_49", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_50"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@"$TyDescr_List_Int32_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_44" }
@"$TyDescr_List_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Int32_ADTTyp_Specl_53"]
@"$TyDescr_ADT_List_55" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_64", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Pair_ADTTyp_m_specls_63", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_57" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@"$TyDescr_ADT_Pair_58" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_58", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_59"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_37"*], [1 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Pair_ADTTyp_56" }
@"$TyDescr_Pair_ADTTyp_m_specls_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_62"]
@"$TyDescr_ADT_Pair_64" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_AddrFields_65" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -3, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_90" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_95" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_98" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_171" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_172" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_173" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_169"] [%"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_171", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_172", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_173", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_174" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_175" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_176" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_p_177" = unnamed_addr constant [1 x i8] c"p"
@"$tparams_t1_178" = unnamed_addr constant [4 x %"$ParamDescr_169"] [%"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_174", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_175", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_176", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_169" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_p_177", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_39" }]
@"$tname_t1_179" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_170"] [%"$TransDescr_170" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_179", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_169"* getelementptr inbounds ([4 x %"$ParamDescr_169"], [4 x %"$ParamDescr_169"]* @"$tparams_t1_178", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 5, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 5
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %entry
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  ret void
}

define internal void @"$create_event_76"(%Uint128 %_amount, [20 x i8]* %"$_origin_77", [20 x i8]* %"$_sender_78", %Int32 %m) !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_77", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_78", align 1
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$msgobj_89_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_89_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_89_salloc_load", i64 69)
  %"$msgobj_89_salloc" = bitcast i8* %"$msgobj_89_salloc_salloc" to [69 x i8]*
  %"$msgobj_89" = bitcast [69 x i8]* %"$msgobj_89_salloc" to i8*
  store i8 2, i8* %"$msgobj_89", align 1
  %"$msgobj_fname_91" = getelementptr i8, i8* %"$msgobj_89", i32 1
  %"$msgobj_fname_92" = bitcast i8* %"$msgobj_fname_91" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_90", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_92", align 8
  %"$msgobj_td_93" = getelementptr i8, i8* %"$msgobj_89", i32 17
  %"$msgobj_td_94" = bitcast i8* %"$msgobj_td_93" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_94", align 8
  %"$msgobj_v_96" = getelementptr i8, i8* %"$msgobj_89", i32 25
  %"$msgobj_v_97" = bitcast i8* %"$msgobj_v_96" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_95", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_97", align 8
  %"$msgobj_fname_99" = getelementptr i8, i8* %"$msgobj_89", i32 41
  %"$msgobj_fname_100" = bitcast i8* %"$msgobj_fname_99" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_98", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_100", align 8
  %"$msgobj_td_101" = getelementptr i8, i8* %"$msgobj_89", i32 57
  %"$msgobj_td_102" = bitcast i8* %"$msgobj_td_101" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_4", %_TyDescrTy_Typ** %"$msgobj_td_102", align 8
  %"$msgobj_v_103" = getelementptr i8, i8* %"$msgobj_89", i32 65
  %"$msgobj_v_104" = bitcast i8* %"$msgobj_v_103" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_104", align 4
  store i8* %"$msgobj_89", i8** %e, align 8, !dbg !12
  %"$e_106" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_108" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_106")
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 %"$_literal_cost_call_108", %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_87"
  %"$consume_113" = sub i64 %"$gasrem_109", %"$_literal_cost_call_108"
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$execptr_load_114" = load i8*, i8** @_execptr, align 8
  %"$e_115" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_114", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_115"), !dbg !13
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_116"(%Uint128 %_amount, [20 x i8]* %"$_origin_117", [20 x i8]* %"$_sender_118", %"TName_Pair_List_(Int32)_Int32"* %p) !dbg !14 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_117", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_118", align 1
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %entry
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %a = alloca %Int32, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %a, align 4, !dbg !15
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$p_tag_135" = getelementptr inbounds %"TName_Pair_List_(Int32)_Int32", %"TName_Pair_List_(Int32)_Int32"* %p, i32 0, i32 0
  %"$p_tag_136" = load i8, i8* %"$p_tag_135", align 1
  switch i8 %"$p_tag_136", label %"$empty_default_137" [
    i8 0, label %"$Pair_138"
  ], !dbg !16

"$Pair_138":                                      ; preds = %"$have_gas_132"
  %"$p_139" = bitcast %"TName_Pair_List_(Int32)_Int32"* %p to %"CName_Pair_List_(Int32)_Int32"*
  %"$b_gep_140" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_139", i32 0, i32 1
  %"$b_load_141" = load %TName_List_Int32*, %TName_List_Int32** %"$b_gep_140", align 8
  %b = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$b_load_141", %TName_List_Int32** %b, align 8
  %"$$a_1_gep_142" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_139", i32 0, i32 2
  %"$$a_1_load_143" = load %Int32, %Int32* %"$$a_1_gep_142", align 4
  %"$a_1" = alloca %Int32, align 8
  store %Int32 %"$$a_1_load_143", %Int32* %"$a_1", align 4
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$Pair_138"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$Pair_138"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$create_event__origin_149" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_149", align 1
  %"$create_event__sender_150" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_150", align 1
  %"$$a_1_151" = load %Int32, %Int32* %"$a_1", align 4
  call void @"$create_event_76"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_149", [20 x i8]* %"$create_event__sender_150", %Int32 %"$$a_1_151"), !dbg !17
  br label %"$matchsucc_134"

"$empty_default_137":                             ; preds = %"$have_gas_132"
  br label %"$matchsucc_134"

"$matchsucc_134":                                 ; preds = %"$have_gas_147", %"$empty_default_137"
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$matchsucc_134"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$matchsucc_134"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$create_event__origin_157" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_157", align 1
  %"$create_event__sender_158" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_158", align 1
  %"$a_159" = load %Int32, %Int32* %a, align 4
  call void @"$create_event_76"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_157", [20 x i8]* %"$create_event__sender_158", %Int32 %"$a_159"), !dbg !20
  ret void
}

define void @t1(i8* %0) !dbg !21 {
entry:
  %"$_amount_161" = getelementptr i8, i8* %0, i32 0
  %"$_amount_162" = bitcast i8* %"$_amount_161" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_162", align 8
  %"$_origin_163" = getelementptr i8, i8* %0, i32 16
  %"$_origin_164" = bitcast i8* %"$_origin_163" to [20 x i8]*
  %"$_sender_165" = getelementptr i8, i8* %0, i32 36
  %"$_sender_166" = bitcast i8* %"$_sender_165" to [20 x i8]*
  %"$p_167" = getelementptr i8, i8* %0, i32 56
  %"$p_168" = bitcast i8* %"$p_167" to %"TName_Pair_List_(Int32)_Int32"**
  %p = load %"TName_Pair_List_(Int32)_Int32"*, %"TName_Pair_List_(Int32)_Int32"** %"$p_168", align 8
  call void @"$t1_116"(%Uint128 %_amount, [20 x i8]* %"$_origin_164", [20 x i8]* %"$_sender_166", %"TName_Pair_List_(Int32)_Int32"* %p), !dbg !22
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
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
