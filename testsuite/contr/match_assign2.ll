

; gas_remaining: 4002000
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%"$ParamDescr_156" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_157" = type { %ParamDescrString, i32, %"$ParamDescr_156"* }
%Uint128 = type { i128 }
%Int32 = type { i32 }
%String = type { i8*, i32 }
%"TName_Pair_List_(Int32)_Int32" = type { i8, %"CName_Pair_List_(Int32)_Int32"* }
%"CName_Pair_List_(Int32)_Int32" = type <{ i8, %TName_List_Int32*, %Int32 }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

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
@"$TyDescr_ADT_List_Int32_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_List_Int32_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_Int32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_62" to i8*) }
@"$TyDescr_List_ADTTyp_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_52", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_List_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_42" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35"]
@"$TyDescr_ADT_Cons_43" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_43", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_46" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_46", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_44", %"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_47"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_34"*], [2 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_List_ADTTyp_41" }
@"$TyDescr_List_ADTTyp_m_specls_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_List_Int32_ADTTyp_Specl_50"]
@"$TyDescr_ADT_List_52" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_60", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_56"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_53" }
@"$TyDescr_Pair_ADTTyp_m_specls_60" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_59"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_AddrFields_62" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -1, %"$TyDescr_AddrFieldTyp_38"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_77" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_82" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_85" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_158" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_159" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_160" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_156"] [%"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_158", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_159", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_160", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_161" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_162" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_163" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_p_164" = unnamed_addr constant [1 x i8] c"p"
@"$tparams_t1_165" = unnamed_addr constant [4 x %"$ParamDescr_156"] [%"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_161", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_162", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_163", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_p_164", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_36" }]
@"$tname_t1_166" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_157"] [%"$TransDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_166", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_156"* getelementptr inbounds ([4 x %"$ParamDescr_156"], [4 x %"$ParamDescr_156"]* @"$tparams_t1_165", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
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

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_104", [20 x i8]* %"$_sender_105", %"TName_Pair_List_(Int32)_Int32"* %p) {
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
  %a = alloca %Int32, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %a, align 4
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$p_tag_122" = getelementptr inbounds %"TName_Pair_List_(Int32)_Int32", %"TName_Pair_List_(Int32)_Int32"* %p, i32 0, i32 0
  %"$p_tag_123" = load i8, i8* %"$p_tag_122", align 1
  switch i8 %"$p_tag_123", label %"$empty_default_124" [
    i8 0, label %"$Pair_125"
  ]

"$Pair_125":                                      ; preds = %"$have_gas_119"
  %"$p_126" = bitcast %"TName_Pair_List_(Int32)_Int32"* %p to %"CName_Pair_List_(Int32)_Int32"*
  %"$b_gep_127" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_126", i32 0, i32 1
  %"$b_load_128" = load %TName_List_Int32*, %TName_List_Int32** %"$b_gep_127", align 8
  %b = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$b_load_128", %TName_List_Int32** %b, align 8
  %"$$a_0_gep_129" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_126", i32 0, i32 2
  %"$$a_0_load_130" = load %Int32, %Int32* %"$$a_0_gep_129", align 4
  %"$a_0" = alloca %Int32, align 8
  store %Int32 %"$$a_0_load_130", %Int32* %"$a_0", align 4
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$Pair_125"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$Pair_125"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$create_event__origin_136" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_136", align 1
  %"$create_event__sender_137" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_137", align 1
  %"$$a_0_138" = load %Int32, %Int32* %"$a_0", align 4
  call void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_136", [20 x i8]* %"$create_event__sender_137", %Int32 %"$$a_0_138")
  br label %"$matchsucc_121"

"$empty_default_124":                             ; preds = %"$have_gas_119"
  br label %"$matchsucc_121"

"$matchsucc_121":                                 ; preds = %"$have_gas_134", %"$empty_default_124"
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$matchsucc_121"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$matchsucc_121"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %"$create_event__origin_144" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_144", align 1
  %"$create_event__sender_145" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_145", align 1
  %"$a_146" = load %Int32, %Int32* %a, align 4
  call void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_144", [20 x i8]* %"$create_event__sender_145", %Int32 %"$a_146")
  ret void
}

define void @t1(i8* %0) {
entry:
  %"$_amount_148" = getelementptr i8, i8* %0, i32 0
  %"$_amount_149" = bitcast i8* %"$_amount_148" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_149", align 8
  %"$_origin_150" = getelementptr i8, i8* %0, i32 16
  %"$_origin_151" = bitcast i8* %"$_origin_150" to [20 x i8]*
  %"$_sender_152" = getelementptr i8, i8* %0, i32 36
  %"$_sender_153" = bitcast i8* %"$_sender_152" to [20 x i8]*
  %"$p_154" = getelementptr i8, i8* %0, i32 56
  %"$p_155" = bitcast i8* %"$p_154" to %"TName_Pair_List_(Int32)_Int32"**
  %p = load %"TName_Pair_List_(Int32)_Int32"*, %"TName_Pair_List_(Int32)_Int32"** %"$p_155", align 8
  call void @"$t1_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_151", [20 x i8]* %"$_sender_153", %"TName_Pair_List_(Int32)_Int32"* %p)
  ret void
}
