

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_209" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_210" = type { %ParamDescrString, i32, %"$ParamDescr_209"* }
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
@"$TyDescr_AddrFields_71" = unnamed_addr constant %"$TyDescr_AddrTyp_45" { i32 -1, %"$TyDescr_AddrFieldTyp_44"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$x_83" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_101" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_106" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_109" = unnamed_addr constant [7 x i8] c"message"
@"$x_130" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_211" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_212" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_213" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_209"] [%"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_211", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_212", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_213", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_214" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_215" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_216" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_217" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_218" = unnamed_addr constant [4 x %"$ParamDescr_209"] [%"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_214", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_215", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_216", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_209" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_217", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_42" }]
@"$tname_t1_219" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_210"] [%"$TransDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_219", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_209"* getelementptr inbounds ([4 x %"$ParamDescr_209"], [4 x %"$ParamDescr_209"]* @"$tparams_t1_218", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  %"$x_6" = alloca %Int32, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_6", align 4
  %"$execptr_load_82" = load i8*, i8** @_execptr, align 8
  %"$$x_6_84" = load %Int32, %Int32* %"$x_6", align 4
  %"$update_value_85" = alloca %Int32, align 8
  store %Int32 %"$$x_6_84", %Int32* %"$update_value_85", align 4
  %"$update_value_86" = bitcast %Int32* %"$update_value_85" to i8*
  call void @_update_field(i8* %"$execptr_load_82", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_83", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i8* %"$update_value_86")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_87"(%Uint128 %_amount, [20 x i8]* %"$_origin_88", [20 x i8]* %"$_sender_89", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_88", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_89", align 1
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$msgobj_100_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_100_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_100_salloc_load", i64 69)
  %"$msgobj_100_salloc" = bitcast i8* %"$msgobj_100_salloc_salloc" to [69 x i8]*
  %"$msgobj_100" = bitcast [69 x i8]* %"$msgobj_100_salloc" to i8*
  store i8 2, i8* %"$msgobj_100", align 1
  %"$msgobj_fname_102" = getelementptr i8, i8* %"$msgobj_100", i32 1
  %"$msgobj_fname_103" = bitcast i8* %"$msgobj_fname_102" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_101", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_103", align 8
  %"$msgobj_td_104" = getelementptr i8, i8* %"$msgobj_100", i32 17
  %"$msgobj_td_105" = bitcast i8* %"$msgobj_td_104" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_105", align 8
  %"$msgobj_v_107" = getelementptr i8, i8* %"$msgobj_100", i32 25
  %"$msgobj_v_108" = bitcast i8* %"$msgobj_v_107" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_106", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_108", align 8
  %"$msgobj_fname_110" = getelementptr i8, i8* %"$msgobj_100", i32 41
  %"$msgobj_fname_111" = bitcast i8* %"$msgobj_fname_110" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_109", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_111", align 8
  %"$msgobj_td_112" = getelementptr i8, i8* %"$msgobj_100", i32 57
  %"$msgobj_td_113" = bitcast i8* %"$msgobj_td_112" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_113", align 8
  %"$msgobj_v_114" = getelementptr i8, i8* %"$msgobj_100", i32 65
  %"$msgobj_v_115" = bitcast i8* %"$msgobj_v_114" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_115", align 4
  store i8* %"$msgobj_100", i8** %e, align 8
  %"$e_117" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_119" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_117")
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 %"$_literal_cost_call_119", %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_98"
  %"$consume_124" = sub i64 %"$gasrem_120", %"$_literal_cost_call_119"
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$execptr_load_125" = load i8*, i8** @_execptr, align 8
  %"$e_126" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_125", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_126")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_127"(%Uint128 %_amount, [20 x i8]* %"$_origin_128", [20 x i8]* %"$_sender_129", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_128", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_129", align 1
  %"$x_1" = alloca %Int32, align 8
  %"$execptr_load_131" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_132" = call i8* @_fetch_field(i8* %"$execptr_load_131", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_130", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i32 1)
  %"$$x_1_133" = bitcast i8* %"$$x_1_call_132" to %Int32*
  %"$$x_1_134" = load %Int32, %Int32* %"$$x_1_133", align 4
  store %Int32 %"$$x_1_134", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_135" = alloca %Int32, align 8
  %"$$x_1_136" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_136", %Int32* %"$_literal_cost_$x_1_135", align 4
  %"$$_literal_cost_$x_1_135_137" = bitcast %Int32* %"$_literal_cost_$x_1_135" to i8*
  %"$_literal_cost_call_138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_9", i8* %"$$_literal_cost_$x_1_135_137")
  %"$gasadd_139" = add i64 %"$_literal_cost_call_138", 0
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 %"$gasadd_139", %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %entry
  %"$consume_144" = sub i64 %"$gasrem_140", %"$gasadd_139"
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_List_Int32*, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$adtval_155_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_155_salloc" = call i8* @_salloc(i8* %"$adtval_155_load", i64 1)
  %"$adtval_155" = bitcast i8* %"$adtval_155_salloc" to %CName_Nil_Int32*
  %"$adtgep_156" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_155", i32 0, i32 0
  store i8 1, i8* %"$adtgep_156", align 1
  %"$adtptr_157" = bitcast %CName_Nil_Int32* %"$adtval_155" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_157", %TName_List_Int32** %"$x_2", align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_153"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$x_4" = alloca %Int32, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 2, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 2
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$$x_2_169" = load %TName_List_Int32*, %TName_List_Int32** %"$x_2", align 8
  %"$$x_2_tag_170" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_2_169", i32 0, i32 0
  %"$$x_2_tag_171" = load i8, i8* %"$$x_2_tag_170", align 1
  switch i8 %"$$x_2_tag_171", label %"$empty_default_172" [
    i8 0, label %"$Cons_173"
    i8 1, label %"$Nil_185"
  ]

"$Cons_173":                                      ; preds = %"$have_gas_166"
  %"$$x_2_174" = bitcast %TName_List_Int32* %"$$x_2_169" to %CName_Cons_Int32*
  %"$$x_3_gep_175" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_174", i32 0, i32 1
  %"$$x_3_load_176" = load %Int32, %Int32* %"$$x_3_gep_175", align 4
  %"$x_3" = alloca %Int32, align 8
  store %Int32 %"$$x_3_load_176", %Int32* %"$x_3", align 4
  %"$$$x_2_5_gep_177" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_2_174", i32 0, i32 2
  %"$$$x_2_5_load_178" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_2_5_gep_177", align 8
  %"$$x_2_5" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_2_5_load_178", %TName_List_Int32** %"$$x_2_5", align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$Cons_173"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$Cons_173"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$$x_3_184" = load %Int32, %Int32* %"$x_3", align 4
  store %Int32 %"$$x_3_184", %Int32* %"$x_4", align 4
  br label %"$matchsucc_168"

"$Nil_185":                                       ; preds = %"$have_gas_166"
  %"$$x_2_186" = bitcast %TName_List_Int32* %"$$x_2_169" to %CName_Nil_Int32*
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$Nil_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$Nil_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_4", align 4
  br label %"$matchsucc_168"

"$empty_default_172":                             ; preds = %"$have_gas_166"
  br label %"$matchsucc_168"

"$matchsucc_168":                                 ; preds = %"$have_gas_190", %"$have_gas_182", %"$empty_default_172"
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$matchsucc_168"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$matchsucc_168"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$create_event__origin_197" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_197", align 1
  %"$create_event__sender_198" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_198", align 1
  %"$$x_4_199" = load %Int32, %Int32* %"$x_4", align 4
  call void @"$create_event_87"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_197", [20 x i8]* %"$create_event__sender_198", %Int32 %"$$x_4_199")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) {
entry:
  %"$_amount_201" = getelementptr i8, i8* %0, i32 0
  %"$_amount_202" = bitcast i8* %"$_amount_201" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_202", align 8
  %"$_origin_203" = getelementptr i8, i8* %0, i32 16
  %"$_origin_204" = bitcast i8* %"$_origin_203" to [20 x i8]*
  %"$_sender_205" = getelementptr i8, i8* %0, i32 36
  %"$_sender_206" = bitcast i8* %"$_sender_205" to [20 x i8]*
  %"$c_207" = getelementptr i8, i8* %0, i32 56
  %"$c_208" = bitcast i8* %"$c_207" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_208", align 8
  call void @"$t1_127"(%Uint128 %_amount, [20 x i8]* %"$_origin_204", [20 x i8]* %"$_sender_206", %TName_Bool* %c)
  ret void
}
