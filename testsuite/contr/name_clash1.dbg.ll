

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_216" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_217" = type { %ParamDescrString, i32, %"$ParamDescr_216"* }
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
@"$x_137" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_218" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_219" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_220" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_216"] [%"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_218", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_219", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_220", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_221" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_222" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_223" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_224" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_225" = unnamed_addr constant [4 x %"$ParamDescr_216"] [%"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_221", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_222", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_223", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_216" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_224", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_44" }]
@"$tname_t1_226" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_217"] [%"$TransDescr_217" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_226", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_216"* getelementptr inbounds ([4 x %"$ParamDescr_216"], [4 x %"$ParamDescr_216"]* @"$tparams_t1_225", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
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
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_6", align 4, !dbg !11
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$$x_6_91" = load %Int32, %Int32* %"$x_6", align 4
  %"$update_value_92" = alloca %Int32, align 8
  store %Int32 %"$$x_6_91", %Int32* %"$update_value_92", align 4
  %"$update_value_93" = bitcast %Int32* %"$update_value_92" to i8*
  call void @_update_field(i8* %"$execptr_load_89", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_90", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i8* %"$update_value_93"), !dbg !11
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_94"(%Uint128 %_amount, [20 x i8]* %"$_origin_95", [20 x i8]* %"$_sender_96", %Int32 %m) !dbg !12 {
entry:
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
  store i8* %"$msgobj_107", i8** %e, align 8, !dbg !13
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
  call void @_event(i8* %"$execptr_load_132", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_133"), !dbg !14
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_134"(%Uint128 %_amount, [20 x i8]* %"$_origin_135", [20 x i8]* %"$_sender_136", %TName_Bool* %c) !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_135", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_136", align 1
  %"$x_1" = alloca %Int32, align 8
  %"$execptr_load_138" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_139" = call i8* @_fetch_field(i8* %"$execptr_load_138", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_137", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i32 1), !dbg !16
  %"$$x_1_140" = bitcast i8* %"$$x_1_call_139" to %Int32*
  %"$$x_1_141" = load %Int32, %Int32* %"$$x_1_140", align 4
  store %Int32 %"$$x_1_141", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_142" = alloca %Int32, align 8
  %"$$x_1_143" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_143", %Int32* %"$_literal_cost_$x_1_142", align 4
  %"$$_literal_cost_$x_1_142_144" = bitcast %Int32* %"$_literal_cost_$x_1_142" to i8*
  %"$_literal_cost_call_145" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_9", i8* %"$$_literal_cost_$x_1_142_144")
  %"$gasadd_146" = add i64 %"$_literal_cost_call_145", 0
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 %"$gasadd_146", %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %entry
  %"$consume_151" = sub i64 %"$gasrem_147", %"$gasadd_146"
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_List_Int32*, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$adtval_162_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_162_salloc" = call i8* @_salloc(i8* %"$adtval_162_load", i64 1)
  %"$adtval_162" = bitcast i8* %"$adtval_162_salloc" to %CName_Nil_Int32*
  %"$adtgep_163" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_162", i32 0, i32 0
  store i8 1, i8* %"$adtgep_163", align 1
  %"$adtptr_164" = bitcast %CName_Nil_Int32* %"$adtval_162" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_164", %TName_List_Int32** %"$x_2", align 8, !dbg !17
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_160"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$x_4" = alloca %Int32, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 2, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 2
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$$x_2_176" = load %TName_List_Int32*, %TName_List_Int32** %"$x_2", align 8
  %"$$x_2_tag_177" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_2_176", i32 0, i32 0
  %"$$x_2_tag_178" = load i8, i8* %"$$x_2_tag_177", align 1
  switch i8 %"$$x_2_tag_178", label %"$empty_default_179" [
    i8 0, label %"$Cons_180"
    i8 1, label %"$Nil_192"
  ], !dbg !18

"$Cons_180":                                      ; preds = %"$have_gas_173"
  %"$$x_2_181" = bitcast %TName_List_Int32* %"$$x_2_176" to %CName_Cons_Int32*
  %"$$x_3_gep_182" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_181", i32 0, i32 1
  %"$$x_3_load_183" = load %Int32, %Int32* %"$$x_3_gep_182", align 4
  %"$x_3" = alloca %Int32, align 8
  store %Int32 %"$$x_3_load_183", %Int32* %"$x_3", align 4
  %"$$$x_2_5_gep_184" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_181", i32 0, i32 2
  %"$$$x_2_5_load_185" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_2_5_gep_184", align 8
  %"$$x_2_5" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_2_5_load_185", %TName_List_Int32** %"$$x_2_5", align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$Cons_180"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$Cons_180"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$$x_3_191" = load %Int32, %Int32* %"$x_3", align 4
  store %Int32 %"$$x_3_191", %Int32* %"$x_4", align 4, !dbg !19
  br label %"$matchsucc_175"

"$Nil_192":                                       ; preds = %"$have_gas_173"
  %"$$x_2_193" = bitcast %TName_List_Int32* %"$$x_2_176" to %CName_Nil_Int32*
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$Nil_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$Nil_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_4", align 4, !dbg !22
  br label %"$matchsucc_175"

"$empty_default_179":                             ; preds = %"$have_gas_173"
  br label %"$matchsucc_175"

"$matchsucc_175":                                 ; preds = %"$have_gas_197", %"$have_gas_189", %"$empty_default_179"
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$matchsucc_175"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$matchsucc_175"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$create_event__origin_204" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_204", align 1
  %"$create_event__sender_205" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_205", align 1
  %"$$x_4_206" = load %Int32, %Int32* %"$x_4", align 4
  call void @"$create_event_94"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_204", [20 x i8]* %"$create_event__sender_205", %Int32 %"$$x_4_206"), !dbg !24
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) !dbg !25 {
entry:
  %"$_amount_208" = getelementptr i8, i8* %0, i32 0
  %"$_amount_209" = bitcast i8* %"$_amount_208" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_209", align 8
  %"$_origin_210" = getelementptr i8, i8* %0, i32 16
  %"$_origin_211" = bitcast i8* %"$_origin_210" to [20 x i8]*
  %"$_sender_212" = getelementptr i8, i8* %0, i32 36
  %"$_sender_213" = bitcast i8* %"$_sender_212" to [20 x i8]*
  %"$c_214" = getelementptr i8, i8* %0, i32 56
  %"$c_215" = bitcast i8* %"$c_214" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_215", align 8
  call void @"$t1_134"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_213", %TName_Bool* %c), !dbg !26
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash1.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 5, column: 19, scope: !10)
!12 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 8, column: 7, scope: !12)
!14 = !DILocation(line: 9, column: 3, scope: !12)
!15 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 13, column: 3, scope: !15)
!17 = !DILocation(line: 14, column: 7, scope: !15)
!18 = !DILocation(line: 15, column: 7, scope: !15)
!19 = !DILocation(line: 16, column: 21, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !2, line: 16, column: 9)
!21 = distinct !DILexicalBlock(scope: !15, file: !2, line: 15, column: 7)
!22 = !DILocation(line: 17, column: 16, scope: !23)
!23 = distinct !DILexicalBlock(scope: !21, file: !2, line: 17, column: 9)
!24 = !DILocation(line: 19, column: 3, scope: !15)
!25 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 12, column: 12, scope: !25)
