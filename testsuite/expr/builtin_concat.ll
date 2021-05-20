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
%"$ParamDescr_256" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_257" = type { %ParamDescrString, i32, %"$ParamDescr_256"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_256"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_257"] zeroinitializer
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
  %"$execptr_load_101" = load i8*, i8** @_execptr, align 8
  %"$a_102" = load %String, %String* %a, align 8
  %"$b_103" = load %String, %String* %b, align 8
  %"$concat_call_104" = call %String @_concat_String(i8* %"$execptr_load_101", %String %"$a_102", %String %"$b_103")
  store %String %"$concat_call_104", %String* %str, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_99"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store [2 x i8] c"\11\FF", [2 x i8]* %x, align 1
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %y = alloca [2 x i8], align 1
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\11", [2 x i8]* %y, align 1
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %z = alloca [4 x i8], align 1
  %"$execptr_load_130" = load i8*, i8** @_execptr, align 8
  %"$concat_x_131" = alloca [2 x i8], align 1
  %"$x_132" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_132", [2 x i8]* %"$concat_x_131", align 1
  %"$$concat_x_131_133" = bitcast [2 x i8]* %"$concat_x_131" to i8*
  %"$concat_y_134" = alloca [2 x i8], align 1
  %"$y_135" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_135", [2 x i8]* %"$concat_y_134", align 1
  %"$$concat_y_134_136" = bitcast [2 x i8]* %"$concat_y_134" to i8*
  %"$concat_call_137" = call i8* @_concat_ByStrX(i8* %"$execptr_load_130", i32 2, i8* %"$$concat_x_131_133", i32 2, i8* %"$$concat_y_134_136")
  %"$concat_138" = bitcast i8* %"$concat_call_137" to [4 x i8]*
  %"$concat_139" = load [4 x i8], [4 x i8]* %"$concat_138", align 1
  store [4 x i8] %"$concat_139", [4 x i8]* %z, align 1
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_128"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %w = alloca [18 x i8], align 1
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w, align 1
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %bystrx = alloca [22 x i8], align 1
  %"$execptr_load_155" = load i8*, i8** @_execptr, align 8
  %"$concat_w_156" = alloca [18 x i8], align 1
  %"$w_157" = load [18 x i8], [18 x i8]* %w, align 1
  store [18 x i8] %"$w_157", [18 x i8]* %"$concat_w_156", align 1
  %"$$concat_w_156_158" = bitcast [18 x i8]* %"$concat_w_156" to i8*
  %"$concat_z_159" = alloca [4 x i8], align 1
  %"$z_160" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_160", [4 x i8]* %"$concat_z_159", align 1
  %"$$concat_z_159_161" = bitcast [4 x i8]* %"$concat_z_159" to i8*
  %"$concat_call_162" = call i8* @_concat_ByStrX(i8* %"$execptr_load_155", i32 18, i8* %"$$concat_w_156_158", i32 4, i8* %"$$concat_z_159_161")
  %"$concat_163" = bitcast i8* %"$concat_call_162" to [22 x i8]*
  %"$concat_164" = load [22 x i8], [22 x i8]* %"$concat_163", align 1
  store [22 x i8] %"$concat_164", [22 x i8]* %bystrx, align 1
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_153"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$execptr_load_170" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_171" = alloca [2 x i8], align 1
  %"$x_172" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_172", [2 x i8]* %"$to_bystr_x_171", align 1
  %"$$to_bystr_x_171_173" = bitcast [2 x i8]* %"$to_bystr_x_171" to i8*
  %"$to_bystr_call_174" = call %Bystr @_to_bystr(i8* %"$execptr_load_170", i32 2, i8* %"$$to_bystr_x_171_173")
  store %Bystr %"$to_bystr_call_174", %Bystr* %xbs, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_168"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %ybs = alloca %Bystr, align 8
  %"$execptr_load_180" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_y_181" = alloca [2 x i8], align 1
  %"$y_182" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_182", [2 x i8]* %"$to_bystr_y_181", align 1
  %"$$to_bystr_y_181_183" = bitcast [2 x i8]* %"$to_bystr_y_181" to i8*
  %"$to_bystr_call_184" = call %Bystr @_to_bystr(i8* %"$execptr_load_180", i32 2, i8* %"$$to_bystr_y_181_183")
  store %Bystr %"$to_bystr_call_184", %Bystr* %ybs, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_178"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %xybs = alloca %Bystr, align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$xbs_191" = load %Bystr, %Bystr* %xbs, align 8
  %"$ybs_192" = load %Bystr, %Bystr* %ybs, align 8
  %"$concat_call_193" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_190", %Bystr %"$xbs_191", %Bystr %"$ybs_192")
  store %Bystr %"$concat_call_193", %Bystr* %xybs, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_188"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %zbs = alloca %Bystr, align 8
  %"$execptr_load_199" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_z_200" = alloca [4 x i8], align 1
  %"$z_201" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_201", [4 x i8]* %"$to_bystr_z_200", align 1
  %"$$to_bystr_z_200_202" = bitcast [4 x i8]* %"$to_bystr_z_200" to i8*
  %"$to_bystr_call_203" = call %Bystr @_to_bystr(i8* %"$execptr_load_199", i32 4, i8* %"$$to_bystr_z_200_202")
  store %Bystr %"$to_bystr_call_203", %Bystr* %zbs, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_197"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$xybs_210" = load %Bystr, %Bystr* %xybs, align 8
  %"$zbs_211" = load %Bystr, %Bystr* %zbs, align 8
  %"$eq_call_212" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_209", %Bystr %"$xybs_210", %Bystr %"$zbs_211")
  store %TName_Bool* %"$eq_call_212", %TName_Bool** %res1, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_207"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %res2 = alloca %TName_Pair_String_ByStr22*, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$str_223" = load %String, %String* %str, align 8
  %"$bystrx_224" = load [22 x i8], [22 x i8]* %bystrx, align 1
  %"$adtval_225_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_225_salloc" = call i8* @_salloc(i8* %"$adtval_225_load", i64 39)
  %"$adtval_225" = bitcast i8* %"$adtval_225_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_226" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_225", i32 0, i32 0
  store i8 0, i8* %"$adtgep_226", align 1
  %"$adtgep_227" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_225", i32 0, i32 1
  store %String %"$str_223", %String* %"$adtgep_227", align 8
  %"$adtgep_228" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_225", i32 0, i32 2
  store [22 x i8] %"$bystrx_224", [22 x i8]* %"$adtgep_228", align 1
  %"$adtptr_229" = bitcast %CName_Pair_String_ByStr22* %"$adtval_225" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_229", %TName_Pair_String_ByStr22** %res2, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_221"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %res3 = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$res1_240" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$res2_241" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %res2, align 8
  %"$adtval_242_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_242_salloc" = call i8* @_salloc(i8* %"$adtval_242_load", i64 17)
  %"$adtval_242" = bitcast i8* %"$adtval_242_salloc" to %"CName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$adtgep_243" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_242", i32 0, i32 0
  store i8 0, i8* %"$adtgep_243", align 1
  %"$adtgep_244" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_242", i32 0, i32 1
  store %TName_Bool* %"$res1_240", %TName_Bool** %"$adtgep_244", align 8
  %"$adtgep_245" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_242", i32 0, i32 2
  store %TName_Pair_String_ByStr22* %"$res2_241", %TName_Pair_String_ByStr22** %"$adtgep_245", align 8
  %"$adtptr_246" = bitcast %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_242" to %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtptr_246", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_238"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$res3_252" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$res3_252", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_0", align 8
  %"$$expr_0_253" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_0", align 8
  ret %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$$expr_0_253"
}

declare void @_out_of_gas()

declare %String @_concat_String(i8*, %String, %String)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %Bystr @_concat_ByStr(i8*, %Bystr, %Bystr)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_254" = call %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_255" = bitcast %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$exprval_254" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_42", i8* %"$memvoidcast_255")
  ret void
}
