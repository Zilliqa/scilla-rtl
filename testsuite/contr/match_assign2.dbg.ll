

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_177" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_178" = type { %ParamDescrString, i32, %"$ParamDescr_177"* }
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
@"$pname__scilla_version_179" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_180" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_181" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_177"] [%"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_179", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_180", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_181", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_182" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_183" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_184" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_p_185" = unnamed_addr constant [1 x i8] c"p"
@"$tparams_t1_186" = unnamed_addr constant [4 x %"$ParamDescr_177"] [%"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_182", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_183", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_184", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_177" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_p_185", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_39" }]
@"$tname_t1_187" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_178"] [%"$TransDescr_178" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_187", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_177"* getelementptr inbounds ([4 x %"$ParamDescr_177"], [4 x %"$ParamDescr_177"]* @"$tparams_t1_186", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
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
  %"$m_119" = alloca %Int32, align 8
  store %Int32 %m, %Int32* %"$m_119", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$m_119", metadata !12, metadata !DIExpression()), !dbg !14
  %"$_sender_118" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_78", [20 x i8]** %"$_sender_118", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_118", metadata !15, metadata !DIExpression()), !dbg !17
  %"$_origin_117" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_77", [20 x i8]** %"$_origin_117", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_117", metadata !18, metadata !DIExpression()), !dbg !17
  %"$_amount_116" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_116", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_116", metadata !19, metadata !DIExpression()), !dbg !17
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
  call void @llvm.dbg.declare(metadata i8** %e, metadata !21, metadata !DIExpression()), !dbg !24
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
  store i8* %"$msgobj_89", i8** %e, align 8, !dbg !25
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
  call void @_event(i8* %"$execptr_load_114", %_TyDescrTy_Typ* @"$TyDescr_Event_26", i8* %"$e_115"), !dbg !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_120"(%Uint128 %_amount, [20 x i8]* %"$_origin_121", [20 x i8]* %"$_sender_122", %"TName_Pair_List_(Int32)_Int32"* %p) !dbg !27 {
entry:
  %"$p_167" = alloca %"TName_Pair_List_(Int32)_Int32"*, align 8
  store %"TName_Pair_List_(Int32)_Int32"* %p, %"TName_Pair_List_(Int32)_Int32"** %"$p_167", align 8
  call void @llvm.dbg.declare(metadata %"TName_Pair_List_(Int32)_Int32"** %"$p_167", metadata !28, metadata !DIExpression()), !dbg !31
  %"$_sender_166" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_122", [20 x i8]** %"$_sender_166", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_166", metadata !32, metadata !DIExpression()), !dbg !33
  %"$_origin_165" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_121", [20 x i8]** %"$_origin_165", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_165", metadata !34, metadata !DIExpression()), !dbg !33
  %"$_amount_164" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_164", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_164", metadata !35, metadata !DIExpression()), !dbg !33
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_121", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_122", align 1
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %entry
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %a = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %a, metadata !36, metadata !DIExpression()), !dbg !37
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %a, align 4, !dbg !38
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %"$p_tag_139" = getelementptr inbounds %"TName_Pair_List_(Int32)_Int32", %"TName_Pair_List_(Int32)_Int32"* %p, i32 0, i32 0
  %"$p_tag_140" = load i8, i8* %"$p_tag_139", align 1
  switch i8 %"$p_tag_140", label %"$empty_default_141" [
    i8 0, label %"$Pair_142"
  ], !dbg !39

"$Pair_142":                                      ; preds = %"$have_gas_136"
  %"$p_143" = bitcast %"TName_Pair_List_(Int32)_Int32"* %p to %"CName_Pair_List_(Int32)_Int32"*
  %"$b_gep_144" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_143", i32 0, i32 1
  %"$b_load_145" = load %TName_List_Int32*, %TName_List_Int32** %"$b_gep_144", align 8
  %b = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$b_load_145", %TName_List_Int32** %b, align 8
  %"$$a_1_gep_146" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_143", i32 0, i32 2
  %"$$a_1_load_147" = load %Int32, %Int32* %"$$a_1_gep_146", align 4
  %"$a_1" = alloca %Int32, align 8
  store %Int32 %"$$a_1_load_147", %Int32* %"$a_1", align 4
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$Pair_142"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$Pair_142"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$create_event__origin_153" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_153", align 1
  %"$create_event__sender_154" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_154", align 1
  %"$$a_1_155" = load %Int32, %Int32* %"$a_1", align 4
  call void @"$create_event_76"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_153", [20 x i8]* %"$create_event__sender_154", %Int32 %"$$a_1_155"), !dbg !40
  br label %"$matchsucc_138"

"$empty_default_141":                             ; preds = %"$have_gas_136"
  br label %"$matchsucc_138"

"$matchsucc_138":                                 ; preds = %"$have_gas_151", %"$empty_default_141"
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$matchsucc_138"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$matchsucc_138"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$create_event__origin_161" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_161", align 1
  %"$create_event__sender_162" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_162", align 1
  %"$a_163" = load %Int32, %Int32* %a, align 4
  call void @"$create_event_76"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_161", [20 x i8]* %"$create_event__sender_162", %Int32 %"$a_163"), !dbg !43
  ret void
}

define void @t1(i8* %0) !dbg !44 {
entry:
  %"$_amount_169" = getelementptr i8, i8* %0, i32 0
  %"$_amount_170" = bitcast i8* %"$_amount_169" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_170", align 8
  %"$_origin_171" = getelementptr i8, i8* %0, i32 16
  %"$_origin_172" = bitcast i8* %"$_origin_171" to [20 x i8]*
  %"$_sender_173" = getelementptr i8, i8* %0, i32 36
  %"$_sender_174" = bitcast i8* %"$_sender_173" to [20 x i8]*
  %"$p_175" = getelementptr i8, i8* %0, i32 56
  %"$p_176" = bitcast i8* %"$p_175" to %"TName_Pair_List_(Int32)_Int32"**
  %p = load %"TName_Pair_List_(Int32)_Int32"*, %"TName_Pair_List_(Int32)_Int32"** %"$p_176", align 8
  call void @"$t1_120"(%Uint128 %_amount, [20 x i8]* %"$_origin_172", [20 x i8]* %"$_sender_174", %"TName_Pair_List_(Int32)_Int32"* %p), !dbg !45
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "match_assign2.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "m", scope: !11, file: !2, line: 5, type: !13)
!13 = !DIBasicType(name: "Int32", size: 4)
!14 = !DILocation(line: 5, column: 25, scope: !11)
!15 = !DILocalVariable(name: "_sender", scope: !11, file: !2, line: 5, type: !16)
!16 = !DIBasicType(name: "ByStr20 with end", size: 20)
!17 = !DILocation(line: 5, column: 11, scope: !11)
!18 = !DILocalVariable(name: "_origin", scope: !11, file: !2, line: 5, type: !16)
!19 = !DILocalVariable(name: "_amount", scope: !11, file: !2, line: 5, type: !20)
!20 = !DIBasicType(name: "Uint128", size: 16)
!21 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 6, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !23, size: 8, align: 8, dwarfAddressSpace: 0)
!23 = !DIBasicType(name: "Event", size: 8)
!24 = !DILocation(line: 6, column: 3, scope: !11)
!25 = !DILocation(line: 6, column: 7, scope: !11)
!26 = !DILocation(line: 7, column: 3, scope: !11)
!27 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!28 = !DILocalVariable(name: "p", scope: !27, file: !2, line: 10, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (List (Int32)) (Int32)", baseType: !30, size: 8, align: 8, dwarfAddressSpace: 0)
!30 = !DIBasicType(name: "Pair (List (Int32)) (Int32)", size: 8)
!31 = !DILocation(line: 10, column: 15, scope: !27)
!32 = !DILocalVariable(name: "_sender", scope: !27, file: !2, line: 10, type: !16)
!33 = !DILocation(line: 10, column: 12, scope: !27)
!34 = !DILocalVariable(name: "_origin", scope: !27, file: !2, line: 10, type: !16)
!35 = !DILocalVariable(name: "_amount", scope: !27, file: !2, line: 10, type: !20)
!36 = !DILocalVariable(name: "a", scope: !27, file: !2, line: 12, type: !13)
!37 = !DILocation(line: 12, column: 3, scope: !27)
!38 = !DILocation(line: 12, column: 7, scope: !27)
!39 = !DILocation(line: 13, column: 3, scope: !27)
!40 = !DILocation(line: 15, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !2, line: 14, column: 5)
!42 = distinct !DILexicalBlock(scope: !27, file: !2, line: 13, column: 3)
!43 = !DILocation(line: 18, column: 3, scope: !27)
!44 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!45 = !DILocation(line: 10, column: 12, scope: !44)
