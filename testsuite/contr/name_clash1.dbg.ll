

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_45" = type { i32, %"$TyDescr_AddrFieldTyp_44"* }
%"$TyDescr_AddrFieldTyp_44" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_214" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_215" = type { %ParamDescrString, i32, %"$ParamDescr_214"* }
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
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_ADT_List_Int32_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Int32_ADTTyp_Specl_56" to i8*) }
@"$TyDescr_ADT_Bool_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_68" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_45"* @"$TyDescr_AddrFields_71" to i8*) }
@"$TyDescr_List_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_58", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_List_ADTTyp_m_specls_57", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41"]
@"$TyDescr_ADT_Cons_49" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_49", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_52" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_52", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_54" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_50", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_53"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_55" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_List_Int32_ADTTyp_Specl_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_47" }
@"$TyDescr_List_ADTTyp_m_specls_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Int32_ADTTyp_Specl_56"]
@"$TyDescr_ADT_List_58" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_70", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Bool_ADTTyp_m_specls_69", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_60" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_61" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_61", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_64" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_64", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_66" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_True_ADTTyp_Constr_62", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_False_ADTTyp_Constr_65"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_67" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Bool_ADTTyp_59" }
@"$TyDescr_Bool_ADTTyp_m_specls_69" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_68"]
@"$TyDescr_ADT_Bool_70" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_71" = unnamed_addr constant %"$TyDescr_AddrTyp_45" { i32 -3, %"$TyDescr_AddrFieldTyp_44"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$x_88" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_106" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_111" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_114" = unnamed_addr constant [7 x i8] c"message"
@"$x_135" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_216" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_217" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_218" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_214"] [%"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_216", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_217", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_218", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_219" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_220" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_221" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_222" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_223" = unnamed_addr constant [4 x %"$ParamDescr_214"] [%"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_219", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_220", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_221", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_214" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_222", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_42" }]
@"$tname_t1_224" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_215"] [%"$TransDescr_215" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_224", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_214"* getelementptr inbounds ([4 x %"$ParamDescr_214"], [4 x %"$ParamDescr_214"]* @"$tparams_t1_223", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 5, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 5
  store i64 %"$consume_76", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$x_6" = alloca %Int32, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_6", align 4, !dbg !11
  %"$execptr_load_87" = load i8*, i8** @_execptr, align 8
  %"$$x_6_89" = load %Int32, %Int32* %"$x_6", align 4
  %"$update_value_90" = alloca %Int32, align 8
  store %Int32 %"$$x_6_89", %Int32* %"$update_value_90", align 4
  %"$update_value_91" = bitcast %Int32* %"$update_value_90" to i8*
  call void @_update_field(i8* %"$execptr_load_87", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_88", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i8* %"$update_value_91"), !dbg !11
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_92"(%Uint128 %_amount, [20 x i8]* %"$_origin_93", [20 x i8]* %"$_sender_94", %Int32 %m) !dbg !12 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_93", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_94", align 1
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %entry
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$msgobj_105_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_105_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_105_salloc_load", i64 69)
  %"$msgobj_105_salloc" = bitcast i8* %"$msgobj_105_salloc_salloc" to [69 x i8]*
  %"$msgobj_105" = bitcast [69 x i8]* %"$msgobj_105_salloc" to i8*
  store i8 2, i8* %"$msgobj_105", align 1
  %"$msgobj_fname_107" = getelementptr i8, i8* %"$msgobj_105", i32 1
  %"$msgobj_fname_108" = bitcast i8* %"$msgobj_fname_107" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_106", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_108", align 8
  %"$msgobj_td_109" = getelementptr i8, i8* %"$msgobj_105", i32 17
  %"$msgobj_td_110" = bitcast i8* %"$msgobj_td_109" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_110", align 8
  %"$msgobj_v_112" = getelementptr i8, i8* %"$msgobj_105", i32 25
  %"$msgobj_v_113" = bitcast i8* %"$msgobj_v_112" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_111", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_113", align 8
  %"$msgobj_fname_115" = getelementptr i8, i8* %"$msgobj_105", i32 41
  %"$msgobj_fname_116" = bitcast i8* %"$msgobj_fname_115" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_114", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_116", align 8
  %"$msgobj_td_117" = getelementptr i8, i8* %"$msgobj_105", i32 57
  %"$msgobj_td_118" = bitcast i8* %"$msgobj_td_117" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_118", align 8
  %"$msgobj_v_119" = getelementptr i8, i8* %"$msgobj_105", i32 65
  %"$msgobj_v_120" = bitcast i8* %"$msgobj_v_119" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_120", align 4
  store i8* %"$msgobj_105", i8** %e, align 8, !dbg !13
  %"$e_122" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_124" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_122")
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 %"$_literal_cost_call_124", %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_103"
  %"$consume_129" = sub i64 %"$gasrem_125", %"$_literal_cost_call_124"
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$execptr_load_130" = load i8*, i8** @_execptr, align 8
  %"$e_131" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_130", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_131"), !dbg !14
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_132"(%Uint128 %_amount, [20 x i8]* %"$_origin_133", [20 x i8]* %"$_sender_134", %TName_Bool* %c) !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_133", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_134", align 1
  %"$x_1" = alloca %Int32, align 8
  %"$execptr_load_136" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_137" = call i8* @_fetch_field(i8* %"$execptr_load_136", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_135", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i32 1), !dbg !16
  %"$$x_1_138" = bitcast i8* %"$$x_1_call_137" to %Int32*
  %"$$x_1_139" = load %Int32, %Int32* %"$$x_1_138", align 4
  store %Int32 %"$$x_1_139", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_140" = alloca %Int32, align 8
  %"$$x_1_141" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_141", %Int32* %"$_literal_cost_$x_1_140", align 4
  %"$$_literal_cost_$x_1_140_142" = bitcast %Int32* %"$_literal_cost_$x_1_140" to i8*
  %"$_literal_cost_call_143" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_9", i8* %"$$_literal_cost_$x_1_140_142")
  %"$gasadd_144" = add i64 %"$_literal_cost_call_143", 0
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 %"$gasadd_144", %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", %"$gasadd_144"
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_List_Int32*, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$adtval_160_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_160_salloc" = call i8* @_salloc(i8* %"$adtval_160_load", i64 1)
  %"$adtval_160" = bitcast i8* %"$adtval_160_salloc" to %CName_Nil_Int32*
  %"$adtgep_161" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_160", i32 0, i32 0
  store i8 1, i8* %"$adtgep_161", align 1
  %"$adtptr_162" = bitcast %CName_Nil_Int32* %"$adtval_160" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_162", %TName_List_Int32** %"$x_2", align 8, !dbg !17
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_158"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$x_4" = alloca %Int32, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 2, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 2
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$$x_2_174" = load %TName_List_Int32*, %TName_List_Int32** %"$x_2", align 8
  %"$$x_2_tag_175" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_2_174", i32 0, i32 0
  %"$$x_2_tag_176" = load i8, i8* %"$$x_2_tag_175", align 1
  switch i8 %"$$x_2_tag_176", label %"$empty_default_177" [
    i8 0, label %"$Cons_178"
    i8 1, label %"$Nil_190"
  ], !dbg !18

"$Cons_178":                                      ; preds = %"$have_gas_171"
  %"$$x_2_179" = bitcast %TName_List_Int32* %"$$x_2_174" to %CName_Cons_Int32*
  %"$$x_3_gep_180" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_179", i32 0, i32 1
  %"$$x_3_load_181" = load %Int32, %Int32* %"$$x_3_gep_180", align 4
  %"$x_3" = alloca %Int32, align 8
  store %Int32 %"$$x_3_load_181", %Int32* %"$x_3", align 4
  %"$$$x_2_5_gep_182" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_179", i32 0, i32 2
  %"$$$x_2_5_load_183" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_2_5_gep_182", align 8
  %"$$x_2_5" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_2_5_load_183", %TName_List_Int32** %"$$x_2_5", align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$Cons_178"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$Cons_178"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$$x_3_189" = load %Int32, %Int32* %"$x_3", align 4
  store %Int32 %"$$x_3_189", %Int32* %"$x_4", align 4, !dbg !19
  br label %"$matchsucc_173"

"$Nil_190":                                       ; preds = %"$have_gas_171"
  %"$$x_2_191" = bitcast %TName_List_Int32* %"$$x_2_174" to %CName_Nil_Int32*
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$Nil_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$Nil_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_4", align 4, !dbg !22
  br label %"$matchsucc_173"

"$empty_default_177":                             ; preds = %"$have_gas_171"
  br label %"$matchsucc_173"

"$matchsucc_173":                                 ; preds = %"$have_gas_195", %"$have_gas_187", %"$empty_default_177"
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$matchsucc_173"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$matchsucc_173"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$create_event__origin_202" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_202", align 1
  %"$create_event__sender_203" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_203", align 1
  %"$$x_4_204" = load %Int32, %Int32* %"$x_4", align 4
  call void @"$create_event_92"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_202", [20 x i8]* %"$create_event__sender_203", %Int32 %"$$x_4_204"), !dbg !24
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) !dbg !25 {
entry:
  %"$_amount_206" = getelementptr i8, i8* %0, i32 0
  %"$_amount_207" = bitcast i8* %"$_amount_206" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_207", align 8
  %"$_origin_208" = getelementptr i8, i8* %0, i32 16
  %"$_origin_209" = bitcast i8* %"$_origin_208" to [20 x i8]*
  %"$_sender_210" = getelementptr i8, i8* %0, i32 36
  %"$_sender_211" = bitcast i8* %"$_sender_210" to [20 x i8]*
  %"$c_212" = getelementptr i8, i8* %0, i32 56
  %"$c_213" = bitcast i8* %"$c_212" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_213", align 8
  call void @"$t1_132"(%Uint128 %_amount, [20 x i8]* %"$_origin_209", [20 x i8]* %"$_sender_211", %TName_Bool* %c), !dbg !26
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
