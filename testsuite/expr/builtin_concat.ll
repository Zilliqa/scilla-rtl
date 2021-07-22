; let a = "hello" in
; let b = "world" in
; let str = builtin concat a b in
; 
; let x = 0x11ff in
; let y = 0xff11 in
; let z = builtin concat x y in
; let w = 0x001100110011001100110011001100110011 in
; let bystrx = builtin concat w z in
; 
; let xbs = builtin to_bystr x in
; let ybs = builtin to_bystr y in
; let xybs = builtin concat xbs ybs in
; let zbs = builtin to_bystr z in
; let res1 = builtin eq xybs zbs in
; 
; let res2 = Pair {String ByStr22} str bystrx in
; 
; let res3 = Pair {Bool (Pair String ByStr22)} res1 res2 in
; res3
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_320" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_321" = type { %ParamDescrString, i32, %"$ParamDescr_320"* }
%"TName_Pair_Bool_Pair_(String)_(ByStr22)" = type { i8, %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* }
%"CName_Pair_Bool_Pair_(String)_(ByStr22)" = type <{ i8, %TName_Bool*, %TName_Pair_String_ByStr22* }>
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_Pair_String_ByStr22 = type { i8, %CName_Pair_String_ByStr22* }
%CName_Pair_String_ByStr22 = type <{ i8, %String, [22 x i8] }>
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }

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
@"$TyDescr_Bystr18_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 18 }
@"$TyDescr_Bystr18_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr18_Prim_30" to i8*) }
@"$TyDescr_Bystr4_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 4 }
@"$TyDescr_Bystr4_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr4_Prim_32" to i8*) }
@"$TyDescr_Bystr2_Prim_34" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 2 }
@"$TyDescr_Bystr2_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr2_Prim_34" to i8*) }
@"$TyDescr_Bystr22_Prim_36" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 22 }
@"$TyDescr_Bystr22_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr22_Prim_36" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr22_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_ADT_Bool_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_71" to i8*) }
@"$TyDescr_Pair_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_38"*], [2 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_60", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_ADT_Pair_49" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_49", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_50"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_56"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_ADTTyp_m_specls_60" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_53", %"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_59"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Bool_ADTTyp_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_73", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Bool_ADTTyp_m_specls_72", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_64" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_64", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_66" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_67" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_67", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_69" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_True_ADTTyp_Constr_65", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_False_ADTTyp_Constr_68"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Bool_ADTTyp_62" }
@"$TyDescr_Bool_ADTTyp_m_specls_72" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_71"]
@"$TyDescr_ADT_Bool_73" = unnamed_addr constant [4 x i8] c"Bool"
@"$stringlit_84" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_95" = unnamed_addr constant [5 x i8] c"world"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_33", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr18_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 21
@_contract_parameters = constant [0 x %"$ParamDescr_320"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_321"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %a = alloca %String, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_84", i32 0, i32 0), i32 5 }, %String* %a, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_82"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %b = alloca %String, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_95", i32 0, i32 0), i32 5 }, %String* %b, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_93"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %str = alloca %String, align 8
  %"$_literal_cost_a_101" = alloca %String, align 8
  %"$a_102" = load %String, %String* %a, align 8
  store %String %"$a_102", %String* %"$_literal_cost_a_101", align 8
  %"$$_literal_cost_a_101_103" = bitcast %String* %"$_literal_cost_a_101" to i8*
  %"$_literal_cost_call_104" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_a_101_103")
  %"$_literal_cost_b_105" = alloca %String, align 8
  %"$b_106" = load %String, %String* %b, align 8
  store %String %"$b_106", %String* %"$_literal_cost_b_105", align 8
  %"$$_literal_cost_b_105_107" = bitcast %String* %"$_literal_cost_b_105" to i8*
  %"$_literal_cost_call_108" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_b_105_107")
  %"$gasadd_109" = add i64 %"$_literal_cost_call_104", %"$_literal_cost_call_108"
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 %"$gasadd_109", %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_99"
  %"$consume_114" = sub i64 %"$gasrem_110", %"$gasadd_109"
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$execptr_load_115" = load i8*, i8** @_execptr, align 8
  %"$a_116" = load %String, %String* %a, align 8
  %"$b_117" = load %String, %String* %b, align 8
  %"$concat_call_118" = call %String @_concat_String(i8* %"$execptr_load_115", %String %"$a_116", %String %"$b_117")
  store %String %"$concat_call_118", %String* %str, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_113"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store [2 x i8] c"\11\FF", [2 x i8]* %x, align 1
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %y = alloca [2 x i8], align 1
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\11", [2 x i8]* %y, align 1
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %z = alloca [4 x i8], align 1
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 4, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 4
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$execptr_load_149" = load i8*, i8** @_execptr, align 8
  %"$concat_x_150" = alloca [2 x i8], align 1
  %"$x_151" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_151", [2 x i8]* %"$concat_x_150", align 1
  %"$$concat_x_150_152" = bitcast [2 x i8]* %"$concat_x_150" to i8*
  %"$concat_y_153" = alloca [2 x i8], align 1
  %"$y_154" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_154", [2 x i8]* %"$concat_y_153", align 1
  %"$$concat_y_153_155" = bitcast [2 x i8]* %"$concat_y_153" to i8*
  %"$concat_call_156" = call i8* @_concat_ByStrX(i8* %"$execptr_load_149", i32 2, i8* %"$$concat_x_150_152", i32 2, i8* %"$$concat_y_153_155")
  %"$concat_157" = bitcast i8* %"$concat_call_156" to [4 x i8]*
  %"$concat_158" = load [4 x i8], [4 x i8]* %"$concat_157", align 1
  store [4 x i8] %"$concat_158", [4 x i8]* %z, align 1
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_147"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %w = alloca [18 x i8], align 1
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w, align 1
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %bystrx = alloca [22 x i8], align 1
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 22, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 22
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$execptr_load_179" = load i8*, i8** @_execptr, align 8
  %"$concat_w_180" = alloca [18 x i8], align 1
  %"$w_181" = load [18 x i8], [18 x i8]* %w, align 1
  store [18 x i8] %"$w_181", [18 x i8]* %"$concat_w_180", align 1
  %"$$concat_w_180_182" = bitcast [18 x i8]* %"$concat_w_180" to i8*
  %"$concat_z_183" = alloca [4 x i8], align 1
  %"$z_184" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_184", [4 x i8]* %"$concat_z_183", align 1
  %"$$concat_z_183_185" = bitcast [4 x i8]* %"$concat_z_183" to i8*
  %"$concat_call_186" = call i8* @_concat_ByStrX(i8* %"$execptr_load_179", i32 18, i8* %"$$concat_w_180_182", i32 4, i8* %"$$concat_z_183_185")
  %"$concat_187" = bitcast i8* %"$concat_call_186" to [22 x i8]*
  %"$concat_188" = load [22 x i8], [22 x i8]* %"$concat_187", align 1
  store [22 x i8] %"$concat_188", [22 x i8]* %bystrx, align 1
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_177"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 2, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 2
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$execptr_load_199" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_200" = alloca [2 x i8], align 1
  %"$x_201" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_201", [2 x i8]* %"$to_bystr_x_200", align 1
  %"$$to_bystr_x_200_202" = bitcast [2 x i8]* %"$to_bystr_x_200" to i8*
  %"$to_bystr_call_203" = call %Bystr @_to_bystr(i8* %"$execptr_load_199", i32 2, i8* %"$$to_bystr_x_200_202")
  store %Bystr %"$to_bystr_call_203", %Bystr* %xbs, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_197"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %ybs = alloca %Bystr, align 8
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 2, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 2
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_y_215" = alloca [2 x i8], align 1
  %"$y_216" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_216", [2 x i8]* %"$to_bystr_y_215", align 1
  %"$$to_bystr_y_215_217" = bitcast [2 x i8]* %"$to_bystr_y_215" to i8*
  %"$to_bystr_call_218" = call %Bystr @_to_bystr(i8* %"$execptr_load_214", i32 2, i8* %"$$to_bystr_y_215_217")
  store %Bystr %"$to_bystr_call_218", %Bystr* %ybs, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_212"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %xybs = alloca %Bystr, align 8
  %"$_literal_cost_xbs_224" = alloca %Bystr, align 8
  %"$xbs_225" = load %Bystr, %Bystr* %xbs, align 8
  store %Bystr %"$xbs_225", %Bystr* %"$_literal_cost_xbs_224", align 8
  %"$$_literal_cost_xbs_224_226" = bitcast %Bystr* %"$_literal_cost_xbs_224" to i8*
  %"$_literal_cost_call_227" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_xbs_224_226")
  %"$_literal_cost_ybs_228" = alloca %Bystr, align 8
  %"$ybs_229" = load %Bystr, %Bystr* %ybs, align 8
  store %Bystr %"$ybs_229", %Bystr* %"$_literal_cost_ybs_228", align 8
  %"$$_literal_cost_ybs_228_230" = bitcast %Bystr* %"$_literal_cost_ybs_228" to i8*
  %"$_literal_cost_call_231" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_ybs_228_230")
  %"$gasadd_232" = add i64 %"$_literal_cost_call_227", %"$_literal_cost_call_231"
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 %"$gasadd_232", %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_222"
  %"$consume_237" = sub i64 %"$gasrem_233", %"$gasadd_232"
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$execptr_load_238" = load i8*, i8** @_execptr, align 8
  %"$xbs_239" = load %Bystr, %Bystr* %xbs, align 8
  %"$ybs_240" = load %Bystr, %Bystr* %ybs, align 8
  %"$concat_call_241" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_238", %Bystr %"$xbs_239", %Bystr %"$ybs_240")
  store %Bystr %"$concat_call_241", %Bystr* %xybs, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_236"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %zbs = alloca %Bystr, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 4, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 4
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_z_253" = alloca [4 x i8], align 1
  %"$z_254" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_254", [4 x i8]* %"$to_bystr_z_253", align 1
  %"$$to_bystr_z_253_255" = bitcast [4 x i8]* %"$to_bystr_z_253" to i8*
  %"$to_bystr_call_256" = call %Bystr @_to_bystr(i8* %"$execptr_load_252", i32 4, i8* %"$$to_bystr_z_253_255")
  store %Bystr %"$to_bystr_call_256", %Bystr* %zbs, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_250"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$_literal_cost_xybs_262" = alloca %Bystr, align 8
  %"$xybs_263" = load %Bystr, %Bystr* %xybs, align 8
  store %Bystr %"$xybs_263", %Bystr* %"$_literal_cost_xybs_262", align 8
  %"$$_literal_cost_xybs_262_264" = bitcast %Bystr* %"$_literal_cost_xybs_262" to i8*
  %"$_literal_cost_call_265" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_xybs_262_264")
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 %"$_literal_cost_call_265", %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_260"
  %"$consume_270" = sub i64 %"$gasrem_266", %"$_literal_cost_call_265"
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$execptr_load_271" = load i8*, i8** @_execptr, align 8
  %"$xybs_272" = load %Bystr, %Bystr* %xybs, align 8
  %"$zbs_273" = load %Bystr, %Bystr* %zbs, align 8
  %"$eq_call_274" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_271", %Bystr %"$xybs_272", %Bystr %"$zbs_273")
  store %TName_Bool* %"$eq_call_274", %TName_Bool** %res1, align 8
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_269"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %res2 = alloca %TName_Pair_String_ByStr22*, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$str_286" = load %String, %String* %str, align 8
  %"$bystrx_287" = load [22 x i8], [22 x i8]* %bystrx, align 1
  %"$adtval_288_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_288_salloc" = call i8* @_salloc(i8* %"$adtval_288_load", i64 39)
  %"$adtval_288" = bitcast i8* %"$adtval_288_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_289" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_288", i32 0, i32 0
  store i8 0, i8* %"$adtgep_289", align 1
  %"$adtgep_290" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_288", i32 0, i32 1
  store %String %"$str_286", %String* %"$adtgep_290", align 8
  %"$adtgep_291" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_288", i32 0, i32 2
  store [22 x i8] %"$bystrx_287", [22 x i8]* %"$adtgep_291", align 1
  %"$adtptr_292" = bitcast %CName_Pair_String_ByStr22* %"$adtval_288" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_292", %TName_Pair_String_ByStr22** %res2, align 8
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_284"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %res3 = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$res1_303" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$res2_304" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %res2, align 8
  %"$adtval_305_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_305_salloc" = call i8* @_salloc(i8* %"$adtval_305_load", i64 17)
  %"$adtval_305" = bitcast i8* %"$adtval_305_salloc" to %"CName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$adtgep_306" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_305", i32 0, i32 0
  store i8 0, i8* %"$adtgep_306", align 1
  %"$adtgep_307" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_305", i32 0, i32 1
  store %TName_Bool* %"$res1_303", %TName_Bool** %"$adtgep_307", align 8
  %"$adtgep_308" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_305", i32 0, i32 2
  store %TName_Pair_String_ByStr22* %"$res2_304", %TName_Pair_String_ByStr22** %"$adtgep_308", align 8
  %"$adtptr_309" = bitcast %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_305" to %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtptr_309", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_301"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$res3_315" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$res3_315", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_0", align 8
  %"$$expr_0_316" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_0", align 8
  ret %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$$expr_0_316"
}

declare void @_out_of_gas()

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %Bystr @_concat_ByStr(i8*, %Bystr, %Bystr)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_317" = call %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_318" = bitcast %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$exprval_317" to i8*
  %"$execptr_load_319" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_319", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_42", i8* %"$memvoidcast_318")
  ret void
}
