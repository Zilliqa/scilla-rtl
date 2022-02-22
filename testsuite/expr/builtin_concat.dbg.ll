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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_45" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_44"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_44" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_46"**, %"$TyDescrTy_ADTTyp_45"* }
%"$TyDescrTy_ADTTyp_Constr_46" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_356" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_357" = type { %ParamDescrString, i32, %"$ParamDescr_356"* }
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
@"$TyDescr_Bystr18_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 18 }
@"$TyDescr_Bystr18_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr18_Prim_36" to i8*) }
@"$TyDescr_Bystr4_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 4 }
@"$TyDescr_Bystr4_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr4_Prim_38" to i8*) }
@"$TyDescr_Bystr2_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_40" to i8*) }
@"$TyDescr_Bystr22_Prim_42" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 22 }
@"$TyDescr_Bystr22_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr22_Prim_42" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr22_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_ADT_Bool_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_77" to i8*) }
@"$TyDescr_Pair_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_67", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_44"*], [2 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Pair_ADTTyp_m_specls_66", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_43"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_56"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_43"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_46"*], [1 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Pair_ADTTyp_53" }
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_47"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_62"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_47"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_46"*], [1 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Pair_ADTTyp_53" }
@"$TyDescr_Pair_ADTTyp_m_specls_66" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_59", %"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_65"]
@"$TyDescr_ADT_Pair_67" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Bool_ADTTyp_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_79", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Bool_ADTTyp_m_specls_78", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_70" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_70", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_73" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_73", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_75" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_True_ADTTyp_Constr_71", %"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_False_ADTTyp_Constr_74"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_76" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_46"*], [2 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Bool_ADTTyp_68" }
@"$TyDescr_Bool_ADTTyp_m_specls_78" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_77"]
@"$TyDescr_ADT_Bool_79" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_120" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_131" = unnamed_addr constant [5 x i8] c"world"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_49", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_48", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr18_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 21
@_contract_parameters = constant [0 x %"$ParamDescr_356"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_357"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 5, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %entry
  %"$consume_84" = sub i64 %"$gasrem_80", 5
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 8, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 8
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 196, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 196
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 20, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 20
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 12, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 12
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 2, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 2
  store i64 %"$consume_109", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_6" = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %entry
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %a = alloca %String, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_120", i32 0, i32 0), i32 5 }, %String* %a, align 8, !dbg !11
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_118"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %b = alloca %String, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_131", i32 0, i32 0), i32 5 }, %String* %b, align 8, !dbg !12
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_129"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %str = alloca %String, align 8
  %"$_literal_cost_a_137" = alloca %String, align 8
  %"$a_138" = load %String, %String* %a, align 8
  store %String %"$a_138", %String* %"$_literal_cost_a_137", align 8
  %"$$_literal_cost_a_137_139" = bitcast %String* %"$_literal_cost_a_137" to i8*
  %"$_literal_cost_call_140" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_a_137_139")
  %"$_literal_cost_b_141" = alloca %String, align 8
  %"$b_142" = load %String, %String* %b, align 8
  store %String %"$b_142", %String* %"$_literal_cost_b_141", align 8
  %"$$_literal_cost_b_141_143" = bitcast %String* %"$_literal_cost_b_141" to i8*
  %"$_literal_cost_call_144" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_b_141_143")
  %"$gasadd_145" = add i64 %"$_literal_cost_call_140", %"$_literal_cost_call_144"
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 %"$gasadd_145", %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_135"
  %"$consume_150" = sub i64 %"$gasrem_146", %"$gasadd_145"
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$a_152" = load %String, %String* %a, align 8
  %"$b_153" = load %String, %String* %b, align 8
  %"$concat_call_154" = call %String @_concat_String(i8* %"$execptr_load_151", %String %"$a_152", %String %"$b_153"), !dbg !13
  store %String %"$concat_call_154", %String* %str, align 8, !dbg !13
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_149"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store [2 x i8] c"\11\FF", [2 x i8]* %x, align 1, !dbg !14
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %y = alloca [2 x i8], align 1
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\11", [2 x i8]* %y, align 1, !dbg !15
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %z = alloca [4 x i8], align 1
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 4, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 4
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$concat_x_186" = alloca [2 x i8], align 1
  %"$x_187" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_187", [2 x i8]* %"$concat_x_186", align 1
  %"$$concat_x_186_188" = bitcast [2 x i8]* %"$concat_x_186" to i8*
  %"$concat_y_189" = alloca [2 x i8], align 1
  %"$y_190" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_190", [2 x i8]* %"$concat_y_189", align 1
  %"$$concat_y_189_191" = bitcast [2 x i8]* %"$concat_y_189" to i8*
  %"$concat_call_192" = call i8* @_concat_ByStrX(i8* %"$execptr_load_185", i32 2, i8* %"$$concat_x_186_188", i32 2, i8* %"$$concat_y_189_191"), !dbg !16
  %"$concat_193" = bitcast i8* %"$concat_call_192" to [4 x i8]*
  %"$concat_194" = load [4 x i8], [4 x i8]* %"$concat_193", align 1
  store [4 x i8] %"$concat_194", [4 x i8]* %z, align 1, !dbg !16
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_183"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %w = alloca [18 x i8], align 1
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w, align 1, !dbg !17
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %bystrx = alloca [22 x i8], align 1
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 22, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_208"
  %"$consume_214" = sub i64 %"$gasrem_210", 22
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$concat_w_216" = alloca [18 x i8], align 1
  %"$w_217" = load [18 x i8], [18 x i8]* %w, align 1
  store [18 x i8] %"$w_217", [18 x i8]* %"$concat_w_216", align 1
  %"$$concat_w_216_218" = bitcast [18 x i8]* %"$concat_w_216" to i8*
  %"$concat_z_219" = alloca [4 x i8], align 1
  %"$z_220" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_220", [4 x i8]* %"$concat_z_219", align 1
  %"$$concat_z_219_221" = bitcast [4 x i8]* %"$concat_z_219" to i8*
  %"$concat_call_222" = call i8* @_concat_ByStrX(i8* %"$execptr_load_215", i32 18, i8* %"$$concat_w_216_218", i32 4, i8* %"$$concat_z_219_221"), !dbg !18
  %"$concat_223" = bitcast i8* %"$concat_call_222" to [22 x i8]*
  %"$concat_224" = load [22 x i8], [22 x i8]* %"$concat_223", align 1
  store [22 x i8] %"$concat_224", [22 x i8]* %bystrx, align 1, !dbg !18
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_213"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 2, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 2
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$execptr_load_235" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_236" = alloca [2 x i8], align 1
  %"$x_237" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_237", [2 x i8]* %"$to_bystr_x_236", align 1
  %"$$to_bystr_x_236_238" = bitcast [2 x i8]* %"$to_bystr_x_236" to i8*
  %"$to_bystr_call_239" = call %Bystr @_to_bystr(i8* %"$execptr_load_235", i32 2, i8* %"$$to_bystr_x_236_238"), !dbg !19
  store %Bystr %"$to_bystr_call_239", %Bystr* %xbs, align 8, !dbg !19
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_233"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %ybs = alloca %Bystr, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 2, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 2
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$execptr_load_250" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_y_251" = alloca [2 x i8], align 1
  %"$y_252" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_252", [2 x i8]* %"$to_bystr_y_251", align 1
  %"$$to_bystr_y_251_253" = bitcast [2 x i8]* %"$to_bystr_y_251" to i8*
  %"$to_bystr_call_254" = call %Bystr @_to_bystr(i8* %"$execptr_load_250", i32 2, i8* %"$$to_bystr_y_251_253"), !dbg !20
  store %Bystr %"$to_bystr_call_254", %Bystr* %ybs, align 8, !dbg !20
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_248"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %xybs = alloca %Bystr, align 8
  %"$_literal_cost_xbs_260" = alloca %Bystr, align 8
  %"$xbs_261" = load %Bystr, %Bystr* %xbs, align 8
  store %Bystr %"$xbs_261", %Bystr* %"$_literal_cost_xbs_260", align 8
  %"$$_literal_cost_xbs_260_262" = bitcast %Bystr* %"$_literal_cost_xbs_260" to i8*
  %"$_literal_cost_call_263" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_xbs_260_262")
  %"$_literal_cost_ybs_264" = alloca %Bystr, align 8
  %"$ybs_265" = load %Bystr, %Bystr* %ybs, align 8
  store %Bystr %"$ybs_265", %Bystr* %"$_literal_cost_ybs_264", align 8
  %"$$_literal_cost_ybs_264_266" = bitcast %Bystr* %"$_literal_cost_ybs_264" to i8*
  %"$_literal_cost_call_267" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_ybs_264_266")
  %"$gasadd_268" = add i64 %"$_literal_cost_call_263", %"$_literal_cost_call_267"
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 %"$gasadd_268", %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_258"
  %"$consume_273" = sub i64 %"$gasrem_269", %"$gasadd_268"
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$execptr_load_274" = load i8*, i8** @_execptr, align 8
  %"$xbs_275" = load %Bystr, %Bystr* %xbs, align 8
  %"$ybs_276" = load %Bystr, %Bystr* %ybs, align 8
  %"$concat_call_277" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_274", %Bystr %"$xbs_275", %Bystr %"$ybs_276"), !dbg !21
  store %Bystr %"$concat_call_277", %Bystr* %xybs, align 8, !dbg !21
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_272"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %zbs = alloca %Bystr, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 4, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 4
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$execptr_load_288" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_z_289" = alloca [4 x i8], align 1
  %"$z_290" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_290", [4 x i8]* %"$to_bystr_z_289", align 1
  %"$$to_bystr_z_289_291" = bitcast [4 x i8]* %"$to_bystr_z_289" to i8*
  %"$to_bystr_call_292" = call %Bystr @_to_bystr(i8* %"$execptr_load_288", i32 4, i8* %"$$to_bystr_z_289_291"), !dbg !22
  store %Bystr %"$to_bystr_call_292", %Bystr* %zbs, align 8, !dbg !22
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_286"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$_literal_cost_xybs_298" = alloca %Bystr, align 8
  %"$xybs_299" = load %Bystr, %Bystr* %xybs, align 8
  store %Bystr %"$xybs_299", %Bystr* %"$_literal_cost_xybs_298", align 8
  %"$$_literal_cost_xybs_298_300" = bitcast %Bystr* %"$_literal_cost_xybs_298" to i8*
  %"$_literal_cost_call_301" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_xybs_298_300")
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 %"$_literal_cost_call_301", %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_296"
  %"$consume_306" = sub i64 %"$gasrem_302", %"$_literal_cost_call_301"
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$execptr_load_307" = load i8*, i8** @_execptr, align 8
  %"$xybs_308" = load %Bystr, %Bystr* %xybs, align 8
  %"$zbs_309" = load %Bystr, %Bystr* %zbs, align 8
  %"$eq_call_310" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_307", %Bystr %"$xybs_308", %Bystr %"$zbs_309"), !dbg !23
  store %TName_Bool* %"$eq_call_310", %TName_Bool** %res1, align 8, !dbg !23
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_305"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %res2 = alloca %TName_Pair_String_ByStr22*, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$str_322" = load %String, %String* %str, align 8
  %"$bystrx_323" = load [22 x i8], [22 x i8]* %bystrx, align 1
  %"$adtval_324_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_324_salloc" = call i8* @_salloc(i8* %"$adtval_324_load", i64 39)
  %"$adtval_324" = bitcast i8* %"$adtval_324_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_325" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_324", i32 0, i32 0
  store i8 0, i8* %"$adtgep_325", align 1
  %"$adtgep_326" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_324", i32 0, i32 1
  store %String %"$str_322", %String* %"$adtgep_326", align 8
  %"$adtgep_327" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_324", i32 0, i32 2
  store [22 x i8] %"$bystrx_323", [22 x i8]* %"$adtgep_327", align 1
  %"$adtptr_328" = bitcast %CName_Pair_String_ByStr22* %"$adtval_324" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_328", %TName_Pair_String_ByStr22** %res2, align 8, !dbg !24
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_320"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %res3 = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$res1_339" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$res2_340" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %res2, align 8
  %"$adtval_341_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_341_salloc" = call i8* @_salloc(i8* %"$adtval_341_load", i64 17)
  %"$adtval_341" = bitcast i8* %"$adtval_341_salloc" to %"CName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$adtgep_342" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_341", i32 0, i32 0
  store i8 0, i8* %"$adtgep_342", align 1
  %"$adtgep_343" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_341", i32 0, i32 1
  store %TName_Bool* %"$res1_339", %TName_Bool** %"$adtgep_343", align 8
  %"$adtgep_344" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_341", i32 0, i32 2
  store %TName_Pair_String_ByStr22* %"$res2_340", %TName_Pair_String_ByStr22** %"$adtgep_344", align 8
  %"$adtptr_345" = bitcast %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_341" to %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtptr_345", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8, !dbg !25
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_337"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$res3_351" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$res3_351", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_6", align 8, !dbg !26
  %"$$expr_6_352" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_6", align 8
  ret %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$$expr_6_352"
}

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
  %"$exprval_353" = call %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_354" = bitcast %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$exprval_353" to i8*
  %"$execptr_load_355" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_355", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_48", i8* %"$memvoidcast_354")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_concat.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 15, scope: !10)
!12 = !DILocation(line: 2, column: 15, scope: !10)
!13 = !DILocation(line: 3, column: 11, scope: !10)
!14 = !DILocation(line: 5, column: 9, scope: !10)
!15 = !DILocation(line: 6, column: 9, scope: !10)
!16 = !DILocation(line: 7, column: 9, scope: !10)
!17 = !DILocation(line: 8, column: 9, scope: !10)
!18 = !DILocation(line: 9, column: 14, scope: !10)
!19 = !DILocation(line: 11, column: 11, scope: !10)
!20 = !DILocation(line: 12, column: 11, scope: !10)
!21 = !DILocation(line: 13, column: 12, scope: !10)
!22 = !DILocation(line: 14, column: 11, scope: !10)
!23 = !DILocation(line: 15, column: 12, scope: !10)
!24 = !DILocation(line: 17, column: 12, scope: !10)
!25 = !DILocation(line: 19, column: 12, scope: !10)
!26 = !DILocation(line: 20, column: 1, scope: !10)
