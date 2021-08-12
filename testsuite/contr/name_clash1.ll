

; gas_remaining: 4002000
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_38" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_37"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_37" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_39"**, %"$TyDescrTy_ADTTyp_38"* }
%"$TyDescrTy_ADTTyp_Constr_39" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_44" = type { i32, %"$TyDescr_AddrFieldTyp_43"* }
%"$TyDescr_AddrFieldTyp_43" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%"$ParamDescr_203" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_204" = type { %ParamDescrString, i32, %"$ParamDescr_203"* }
%Int32 = type { i32 }
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
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr20_Prim_35" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 20 }
@"$TyDescr_Bystr20_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr20_Prim_35" to i8*) }
@"$TyDescr_ADT_List_Int32_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_ADT_Bool_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_67" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_70" to i8*) }
@"$TyDescr_List_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@"$TyDescr_List_Int32_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_List_ADTTyp_46" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_69", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Bool_ADTTyp_m_specls_68", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_60" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_60", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_63" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_63", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_65" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_True_ADTTyp_Constr_61", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_False_ADTTyp_Constr_64"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_66" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Bool_ADTTyp_58" }
@"$TyDescr_Bool_ADTTyp_m_specls_68" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_67"]
@"$TyDescr_ADT_Bool_69" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_70" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -1, %"$TyDescr_AddrFieldTyp_43"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$x_77" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_95" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_100" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_103" = unnamed_addr constant [7 x i8] c"message"
@"$x_124" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_30", %_TyDescrTy_Typ* @"$TyDescr_Int64_12", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22", %_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14", %_TyDescrTy_Typ* @"$TyDescr_Bnum_26", %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Exception_32", %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ* @"$TyDescr_Int256_20", %_TyDescrTy_Typ* @"$TyDescr_Int128_16", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_205" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_206" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_207" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_203"] [%"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_205", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_10" }, %"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_206", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_207", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_26" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_208" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_209" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_210" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_211" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_212" = unnamed_addr constant [4 x %"$ParamDescr_203"] [%"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_208", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_18" }, %"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_209", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_210", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_211", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41" }]
@"$tname_t1_213" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_204"] [%"$TransDescr_204" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_213", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_203"* getelementptr inbounds ([4 x %"$ParamDescr_203"], [4 x %"$ParamDescr_203"]* @"$tparams_t1_212", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$x_5" = alloca %Int32, align 8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %entry
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_5", align 4
  %"$execptr_load_76" = load i8*, i8** @_execptr, align 8
  %"$$x_5_78" = load %Int32, %Int32* %"$x_5", align 4
  %"$update_value_79" = alloca %Int32, align 8
  store %Int32 %"$$x_5_78", %Int32* %"$update_value_79", align 4
  %"$update_value_80" = bitcast %Int32* %"$update_value_79" to i8*
  call void @_update_field(i8* %"$execptr_load_76", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_77", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i8* %"$update_value_80")
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_81"(%Uint128 %_amount, [20 x i8]* %"$_origin_82", [20 x i8]* %"$_sender_83", %Int32 %m) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_82", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_83", align 1
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  %"$msgobj_94_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_94_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_94_salloc_load", i64 69)
  %"$msgobj_94_salloc" = bitcast i8* %"$msgobj_94_salloc_salloc" to [69 x i8]*
  %"$msgobj_94" = bitcast [69 x i8]* %"$msgobj_94_salloc" to i8*
  store i8 2, i8* %"$msgobj_94", align 1
  %"$msgobj_fname_96" = getelementptr i8, i8* %"$msgobj_94", i32 1
  %"$msgobj_fname_97" = bitcast i8* %"$msgobj_fname_96" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_95", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_97", align 8
  %"$msgobj_td_98" = getelementptr i8, i8* %"$msgobj_94", i32 17
  %"$msgobj_td_99" = bitcast i8* %"$msgobj_td_98" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_99", align 8
  %"$msgobj_v_101" = getelementptr i8, i8* %"$msgobj_94", i32 25
  %"$msgobj_v_102" = bitcast i8* %"$msgobj_v_101" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_100", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_102", align 8
  %"$msgobj_fname_104" = getelementptr i8, i8* %"$msgobj_94", i32 41
  %"$msgobj_fname_105" = bitcast i8* %"$msgobj_fname_104" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_103", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_105", align 8
  %"$msgobj_td_106" = getelementptr i8, i8* %"$msgobj_94", i32 57
  %"$msgobj_td_107" = bitcast i8* %"$msgobj_td_106" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ** %"$msgobj_td_107", align 8
  %"$msgobj_v_108" = getelementptr i8, i8* %"$msgobj_94", i32 65
  %"$msgobj_v_109" = bitcast i8* %"$msgobj_v_108" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_109", align 4
  store i8* %"$msgobj_94", i8** %e, align 8
  %"$e_111" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_113" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_111")
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 %"$_literal_cost_call_113", %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_92"
  %"$consume_118" = sub i64 %"$gasrem_114", %"$_literal_cost_call_113"
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$execptr_load_119" = load i8*, i8** @_execptr, align 8
  %"$e_120" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_119", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_120")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_121"(%Uint128 %_amount, [20 x i8]* %"$_origin_122", [20 x i8]* %"$_sender_123", %TName_Bool* %c) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_122", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_123", align 1
  %"$x_0" = alloca %Int32, align 8
  %"$execptr_load_125" = load i8*, i8** @_execptr, align 8
  %"$$x_0_call_126" = call i8* @_fetch_field(i8* %"$execptr_load_125", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_124", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i32 1)
  %"$$x_0_127" = bitcast i8* %"$$x_0_call_126" to %Int32*
  %"$$x_0_128" = load %Int32, %Int32* %"$$x_0_127", align 4
  store %Int32 %"$$x_0_128", %Int32* %"$x_0", align 4
  %"$_literal_cost_$x_0_129" = alloca %Int32, align 8
  %"$$x_0_130" = load %Int32, %Int32* %"$x_0", align 4
  store %Int32 %"$$x_0_130", %Int32* %"$_literal_cost_$x_0_129", align 4
  %"$$_literal_cost_$x_0_129_131" = bitcast %Int32* %"$_literal_cost_$x_0_129" to i8*
  %"$_literal_cost_call_132" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_8", i8* %"$$_literal_cost_$x_0_129_131")
  %"$gasadd_133" = add i64 %"$_literal_cost_call_132", 0
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 %"$gasadd_133", %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %entry
  %"$consume_138" = sub i64 %"$gasrem_134", %"$gasadd_133"
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %"$x_1" = alloca %TName_List_Int32*, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$adtval_149_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_149_salloc" = call i8* @_salloc(i8* %"$adtval_149_load", i64 1)
  %"$adtval_149" = bitcast i8* %"$adtval_149_salloc" to %CName_Nil_Int32*
  %"$adtgep_150" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_149", i32 0, i32 0
  store i8 1, i8* %"$adtgep_150", align 1
  %"$adtptr_151" = bitcast %CName_Nil_Int32* %"$adtval_149" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_151", %TName_List_Int32** %"$x_1", align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_147"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$x_3" = alloca %Int32, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 2, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 2
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$$x_1_163" = load %TName_List_Int32*, %TName_List_Int32** %"$x_1", align 8
  %"$$x_1_tag_164" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_1_163", i32 0, i32 0
  %"$$x_1_tag_165" = load i8, i8* %"$$x_1_tag_164", align 1
  switch i8 %"$$x_1_tag_165", label %"$empty_default_166" [
    i8 0, label %"$Cons_167"
    i8 1, label %"$Nil_179"
  ]

"$Cons_167":                                      ; preds = %"$have_gas_160"
  %"$$x_1_168" = bitcast %TName_List_Int32* %"$$x_1_163" to %CName_Cons_Int32*
  %"$$x_2_gep_169" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_168", i32 0, i32 1
  %"$$x_2_load_170" = load %Int32, %Int32* %"$$x_2_gep_169", align 4
  %"$x_2" = alloca %Int32, align 8
  store %Int32 %"$$x_2_load_170", %Int32* %"$x_2", align 4
  %"$$$x_1_4_gep_171" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_168", i32 0, i32 2
  %"$$$x_1_4_load_172" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_1_4_gep_171", align 8
  %"$$x_1_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_1_4_load_172", %TName_List_Int32** %"$$x_1_4", align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$Cons_167"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$Cons_167"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$$x_2_178" = load %Int32, %Int32* %"$x_2", align 4
  store %Int32 %"$$x_2_178", %Int32* %"$x_3", align 4
  br label %"$matchsucc_162"

"$Nil_179":                                       ; preds = %"$have_gas_160"
  %"$$x_1_180" = bitcast %TName_List_Int32* %"$$x_1_163" to %CName_Nil_Int32*
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$Nil_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$Nil_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_3", align 4
  br label %"$matchsucc_162"

"$empty_default_166":                             ; preds = %"$have_gas_160"
  br label %"$matchsucc_162"

"$matchsucc_162":                                 ; preds = %"$have_gas_184", %"$have_gas_176", %"$empty_default_166"
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$matchsucc_162"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$matchsucc_162"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$create_event__origin_191" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_191", align 1
  %"$create_event__sender_192" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_192", align 1
  %"$$x_3_193" = load %Int32, %Int32* %"$x_3", align 4
  call void @"$create_event_81"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_191", [20 x i8]* %"$create_event__sender_192", %Int32 %"$$x_3_193")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) {
entry:
  %"$_amount_195" = getelementptr i8, i8* %0, i32 0
  %"$_amount_196" = bitcast i8* %"$_amount_195" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_196", align 8
  %"$_origin_197" = getelementptr i8, i8* %0, i32 16
  %"$_origin_198" = bitcast i8* %"$_origin_197" to [20 x i8]*
  %"$_sender_199" = getelementptr i8, i8* %0, i32 36
  %"$_sender_200" = bitcast i8* %"$_sender_199" to [20 x i8]*
  %"$c_201" = getelementptr i8, i8* %0, i32 56
  %"$c_202" = bitcast i8* %"$c_201" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_202", align 8
  call void @"$t1_121"(%Uint128 %_amount, [20 x i8]* %"$_origin_198", [20 x i8]* %"$_sender_200", %TName_Bool* %c)
  ret void
}
