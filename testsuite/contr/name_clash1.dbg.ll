

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_41" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_40"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_40" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_42"**, %"$TyDescrTy_ADTTyp_41"* }
%"$TyDescrTy_ADTTyp_Constr_42" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_47" = type { i32, %"$TyDescr_AddrFieldTyp_46"* }
%"$TyDescr_AddrFieldTyp_46" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_224" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_225" = type { %ParamDescrString, i32, %"$ParamDescr_224"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_8" = global %"$TyDescrTy_PrimTyp_7" zeroinitializer
@"$TyDescr_Int32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int32_Prim_8" to i8*) }
@"$TyDescr_Uint32_Prim_10" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 0 }
@"$TyDescr_Uint32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint32_Prim_10" to i8*) }
@"$TyDescr_Int64_Prim_12" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 1 }
@"$TyDescr_Int64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int64_Prim_12" to i8*) }
@"$TyDescr_Uint64_Prim_14" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 1 }
@"$TyDescr_Uint64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint64_Prim_14" to i8*) }
@"$TyDescr_Int128_Prim_16" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 2 }
@"$TyDescr_Int128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int128_Prim_16" to i8*) }
@"$TyDescr_Uint128_Prim_18" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 2 }
@"$TyDescr_Uint128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint128_Prim_18" to i8*) }
@"$TyDescr_Int256_Prim_20" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 3 }
@"$TyDescr_Int256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int256_Prim_20" to i8*) }
@"$TyDescr_Uint256_Prim_22" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 3 }
@"$TyDescr_Uint256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint256_Prim_22" to i8*) }
@"$TyDescr_String_Prim_24" = global %"$TyDescrTy_PrimTyp_7" { i32 2, i32 0 }
@"$TyDescr_String_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_String_Prim_24" to i8*) }
@"$TyDescr_Bnum_Prim_26" = global %"$TyDescrTy_PrimTyp_7" { i32 3, i32 0 }
@"$TyDescr_Bnum_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bnum_Prim_26" to i8*) }
@"$TyDescr_Message_Prim_28" = global %"$TyDescrTy_PrimTyp_7" { i32 4, i32 0 }
@"$TyDescr_Message_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Message_Prim_28" to i8*) }
@"$TyDescr_Event_Prim_30" = global %"$TyDescrTy_PrimTyp_7" { i32 5, i32 0 }
@"$TyDescr_Event_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Event_Prim_30" to i8*) }
@"$TyDescr_Exception_Prim_32" = global %"$TyDescrTy_PrimTyp_7" { i32 6, i32 0 }
@"$TyDescr_Exception_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Exception_Prim_32" to i8*) }
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr20_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 20 }
@"$TyDescr_Bystr20_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr20_Prim_38" to i8*) }
@"$TyDescr_ADT_List_Int32_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_List_Int32_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_ADT_Bool_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Bool_ADTTyp_Specl_70" to i8*) }
@"$TyDescr_Addr_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_47"* @"$TyDescr_AddrFields_73" to i8*) }
@"$TyDescr_List_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_60", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_40"*], [1 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_List_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_43"]
@"$TyDescr_ADT_Cons_51" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_51", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_54" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_54", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_55"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_List_Int32_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_List_ADTTyp_49" }
@"$TyDescr_List_ADTTyp_m_specls_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_List_Int32_ADTTyp_Specl_58"]
@"$TyDescr_ADT_List_60" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_72", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_40"*], [1 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_Bool_ADTTyp_m_specls_71", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_63" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_63", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_66" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_66", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_68" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Bool_True_ADTTyp_Constr_64", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Bool_False_ADTTyp_Constr_67"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Bool_ADTTyp_61" }
@"$TyDescr_Bool_ADTTyp_m_specls_71" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Bool_ADTTyp_Specl_70"]
@"$TyDescr_ADT_Bool_72" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_73" = unnamed_addr constant %"$TyDescr_AddrTyp_47" { i32 -3, %"$TyDescr_AddrFieldTyp_46"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$x_90" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_108" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_113" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_116" = unnamed_addr constant [7 x i8] c"message"
@"$x_141" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_226" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_227" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_228" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_224"] [%"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_226", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_227", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_228", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_229" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_230" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_231" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_232" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_233" = unnamed_addr constant [4 x %"$ParamDescr_224"] [%"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_229", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_230", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_231", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_224" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_232", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_44" }]
@"$tname_t1_234" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_225"] [%"$TransDescr_225" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_234", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_224"* getelementptr inbounds ([4 x %"$ParamDescr_224"], [4 x %"$ParamDescr_224"]* @"$tparams_t1_233", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 5, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 5
  store i64 %"$consume_78", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$x_6" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$x_6", metadata !11, metadata !DIExpression()), !dbg !13
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_6", align 4, !dbg !14
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$$x_6_91" = load %Int32, %Int32* %"$x_6", align 4
  %"$update_value_92" = alloca %Int32, align 8
  store %Int32 %"$$x_6_91", %Int32* %"$update_value_92", align 4
  %"$update_value_93" = bitcast %Int32* %"$update_value_92" to i8*
  call void @_update_field(i8* %"$execptr_load_89", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_90", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i8* %"$update_value_93"), !dbg !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_94"(%Uint128 %_amount, [20 x i8]* %"$_origin_95", [20 x i8]* %"$_sender_96", %Int32 %m) !dbg !15 {
entry:
  %"$m_137" = alloca %Int32, align 8
  store %Int32 %m, %Int32* %"$m_137", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$m_137", metadata !16, metadata !DIExpression()), !dbg !17
  %"$_sender_136" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_96", [20 x i8]** %"$_sender_136", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_136", metadata !18, metadata !DIExpression()), !dbg !20
  %"$_origin_135" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_95", [20 x i8]** %"$_origin_135", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_135", metadata !21, metadata !DIExpression()), !dbg !20
  %"$_amount_134" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_134", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_134", metadata !22, metadata !DIExpression()), !dbg !20
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_95", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_96", align 1
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %entry
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !24, metadata !DIExpression()), !dbg !27
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$msgobj_107_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_107_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_107_salloc_load", i64 69)
  %"$msgobj_107_salloc" = bitcast i8* %"$msgobj_107_salloc_salloc" to [69 x i8]*
  %"$msgobj_107" = bitcast [69 x i8]* %"$msgobj_107_salloc" to i8*
  store i8 2, i8* %"$msgobj_107", align 1
  %"$msgobj_fname_109" = getelementptr i8, i8* %"$msgobj_107", i32 1
  %"$msgobj_fname_110" = bitcast i8* %"$msgobj_fname_109" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_108", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_110", align 8
  %"$msgobj_td_111" = getelementptr i8, i8* %"$msgobj_107", i32 17
  %"$msgobj_td_112" = bitcast i8* %"$msgobj_td_111" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_112", align 8
  %"$msgobj_v_114" = getelementptr i8, i8* %"$msgobj_107", i32 25
  %"$msgobj_v_115" = bitcast i8* %"$msgobj_v_114" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_113", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_115", align 8
  %"$msgobj_fname_117" = getelementptr i8, i8* %"$msgobj_107", i32 41
  %"$msgobj_fname_118" = bitcast i8* %"$msgobj_fname_117" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_116", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_118", align 8
  %"$msgobj_td_119" = getelementptr i8, i8* %"$msgobj_107", i32 57
  %"$msgobj_td_120" = bitcast i8* %"$msgobj_td_119" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_120", align 8
  %"$msgobj_v_121" = getelementptr i8, i8* %"$msgobj_107", i32 65
  %"$msgobj_v_122" = bitcast i8* %"$msgobj_v_121" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_122", align 4
  store i8* %"$msgobj_107", i8** %e, align 8, !dbg !28
  %"$e_124" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_126" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_124")
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 %"$_literal_cost_call_126", %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_105"
  %"$consume_131" = sub i64 %"$gasrem_127", %"$_literal_cost_call_126"
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$execptr_load_132" = load i8*, i8** @_execptr, align 8
  %"$e_133" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_132", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_133"), !dbg !29
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_138"(%Uint128 %_amount, [20 x i8]* %"$_origin_139", [20 x i8]* %"$_sender_140", %TName_Bool* %c) !dbg !30 {
entry:
  %"$c_214" = alloca %TName_Bool*, align 8
  store %TName_Bool* %c, %TName_Bool** %"$c_214", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_214", metadata !31, metadata !DIExpression()), !dbg !34
  %"$_sender_213" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_140", [20 x i8]** %"$_sender_213", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_213", metadata !35, metadata !DIExpression()), !dbg !36
  %"$_origin_212" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_139", [20 x i8]** %"$_origin_212", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_212", metadata !37, metadata !DIExpression()), !dbg !36
  %"$_amount_211" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_211", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_211", metadata !38, metadata !DIExpression()), !dbg !36
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_139", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_140", align 1
  %"$x_1" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$x_1", metadata !39, metadata !DIExpression()), !dbg !40
  %"$execptr_load_142" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_143" = call i8* @_fetch_field(i8* %"$execptr_load_142", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_141", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i32 1), !dbg !40
  %"$$x_1_144" = bitcast i8* %"$$x_1_call_143" to %Int32*
  %"$$x_1_145" = load %Int32, %Int32* %"$$x_1_144", align 4
  store %Int32 %"$$x_1_145", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_146" = alloca %Int32, align 8
  %"$$x_1_147" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_147", %Int32* %"$_literal_cost_$x_1_146", align 4
  %"$$_literal_cost_$x_1_146_148" = bitcast %Int32* %"$_literal_cost_$x_1_146" to i8*
  %"$_literal_cost_call_149" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_9", i8* %"$$_literal_cost_$x_1_146_148")
  %"$gasadd_150" = add i64 %"$_literal_cost_call_149", 0
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 %"$gasadd_150", %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", %"$gasadd_150"
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$x_2", metadata !41, metadata !DIExpression()), !dbg !44
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %"$adtval_166_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_166_salloc" = call i8* @_salloc(i8* %"$adtval_166_load", i64 1)
  %"$adtval_166" = bitcast i8* %"$adtval_166_salloc" to %CName_Nil_Int32*
  %"$adtgep_167" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_166", i32 0, i32 0
  store i8 1, i8* %"$adtgep_167", align 1
  %"$adtptr_168" = bitcast %CName_Nil_Int32* %"$adtval_166" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_168", %TName_List_Int32** %"$x_2", align 8, !dbg !45
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_164"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$x_4" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$x_4", metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 2, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 2
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$$x_2_180" = load %TName_List_Int32*, %TName_List_Int32** %"$x_2", align 8
  %"$$x_2_tag_181" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_2_180", i32 0, i32 0
  %"$$x_2_tag_182" = load i8, i8* %"$$x_2_tag_181", align 1
  switch i8 %"$$x_2_tag_182", label %"$empty_default_183" [
    i8 0, label %"$Cons_184"
    i8 1, label %"$Nil_196"
  ], !dbg !48

"$Cons_184":                                      ; preds = %"$have_gas_177"
  %"$$x_2_185" = bitcast %TName_List_Int32* %"$$x_2_180" to %CName_Cons_Int32*
  %"$$x_3_gep_186" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_185", i32 0, i32 1
  %"$$x_3_load_187" = load %Int32, %Int32* %"$$x_3_gep_186", align 4
  %"$x_3" = alloca %Int32, align 8
  store %Int32 %"$$x_3_load_187", %Int32* %"$x_3", align 4
  %"$$$x_2_5_gep_188" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_185", i32 0, i32 2
  %"$$$x_2_5_load_189" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_2_5_gep_188", align 8
  %"$$x_2_5" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_2_5_load_189", %TName_List_Int32** %"$$x_2_5", align 8
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$Cons_184"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$Cons_184"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$$x_3_195" = load %Int32, %Int32* %"$x_3", align 4
  store %Int32 %"$$x_3_195", %Int32* %"$x_4", align 4, !dbg !49
  br label %"$matchsucc_179"

"$Nil_196":                                       ; preds = %"$have_gas_177"
  %"$$x_2_197" = bitcast %TName_List_Int32* %"$$x_2_180" to %CName_Nil_Int32*
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$Nil_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$Nil_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_4", align 4, !dbg !52
  br label %"$matchsucc_179"

"$empty_default_183":                             ; preds = %"$have_gas_177"
  br label %"$matchsucc_179"

"$matchsucc_179":                                 ; preds = %"$have_gas_201", %"$have_gas_193", %"$empty_default_183"
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$matchsucc_179"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$matchsucc_179"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$create_event__origin_208" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_208", align 1
  %"$create_event__sender_209" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_209", align 1
  %"$$x_4_210" = load %Int32, %Int32* %"$x_4", align 4
  call void @"$create_event_94"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_208", [20 x i8]* %"$create_event__sender_209", %Int32 %"$$x_4_210"), !dbg !54
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) !dbg !55 {
entry:
  %"$_amount_216" = getelementptr i8, i8* %0, i32 0
  %"$_amount_217" = bitcast i8* %"$_amount_216" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_217", align 8
  %"$_origin_218" = getelementptr i8, i8* %0, i32 16
  %"$_origin_219" = bitcast i8* %"$_origin_218" to [20 x i8]*
  %"$_sender_220" = getelementptr i8, i8* %0, i32 36
  %"$_sender_221" = bitcast i8* %"$_sender_220" to [20 x i8]*
  %"$c_222" = getelementptr i8, i8* %0, i32 56
  %"$c_223" = bitcast i8* %"$c_222" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_223", align 8
  call void @"$t1_138"(%Uint128 %_amount, [20 x i8]* %"$_origin_219", [20 x i8]* %"$_sender_221", %TName_Bool* %c), !dbg !56
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash1.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$x_6", scope: !10, file: !2, line: 5, type: !12)
!12 = !DIBasicType(name: "Int32", size: 4)
!13 = !DILocation(line: 5, column: 7, scope: !10)
!14 = !DILocation(line: 5, column: 19, scope: !10)
!15 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!16 = !DILocalVariable(name: "m", scope: !15, file: !2, line: 7, type: !12)
!17 = !DILocation(line: 7, column: 25, scope: !15)
!18 = !DILocalVariable(name: "_sender", scope: !15, file: !2, line: 7, type: !19)
!19 = !DIBasicType(name: "ByStr20 with end", size: 20)
!20 = !DILocation(line: 7, column: 11, scope: !15)
!21 = !DILocalVariable(name: "_origin", scope: !15, file: !2, line: 7, type: !19)
!22 = !DILocalVariable(name: "_amount", scope: !15, file: !2, line: 7, type: !23)
!23 = !DIBasicType(name: "Uint128", size: 16)
!24 = !DILocalVariable(name: "e", scope: !15, file: !2, line: 8, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !26, size: 8, align: 8, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "Event", size: 8)
!27 = !DILocation(line: 8, column: 3, scope: !15)
!28 = !DILocation(line: 8, column: 7, scope: !15)
!29 = !DILocation(line: 9, column: 3, scope: !15)
!30 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!31 = !DILocalVariable(name: "c", scope: !30, file: !2, line: 12, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !33, size: 8, align: 8, dwarfAddressSpace: 0)
!33 = !DIBasicType(name: "Bool", size: 8)
!34 = !DILocation(line: 12, column: 15, scope: !30)
!35 = !DILocalVariable(name: "_sender", scope: !30, file: !2, line: 12, type: !19)
!36 = !DILocation(line: 12, column: 12, scope: !30)
!37 = !DILocalVariable(name: "_origin", scope: !30, file: !2, line: 12, type: !19)
!38 = !DILocalVariable(name: "_amount", scope: !30, file: !2, line: 12, type: !23)
!39 = !DILocalVariable(name: "$x_1", scope: !30, file: !2, line: 13, type: !12)
!40 = !DILocation(line: 13, column: 3, scope: !30)
!41 = !DILocalVariable(name: "$x_2", scope: !30, file: !2, line: 14, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int32)", baseType: !43, size: 8, align: 8, dwarfAddressSpace: 0)
!43 = !DIBasicType(name: "List (Int32)", size: 8)
!44 = !DILocation(line: 14, column: 3, scope: !30)
!45 = !DILocation(line: 14, column: 7, scope: !30)
!46 = !DILocalVariable(name: "$x_4", scope: !30, file: !2, line: 15, type: !12)
!47 = !DILocation(line: 15, column: 3, scope: !30)
!48 = !DILocation(line: 15, column: 7, scope: !30)
!49 = !DILocation(line: 16, column: 21, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !2, line: 16, column: 9)
!51 = distinct !DILexicalBlock(scope: !30, file: !2, line: 15, column: 7)
!52 = !DILocation(line: 17, column: 16, scope: !53)
!53 = distinct !DILexicalBlock(scope: !51, file: !2, line: 17, column: 9)
!54 = !DILocation(line: 19, column: 3, scope: !30)
!55 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!56 = !DILocation(line: 12, column: 12, scope: !55)
