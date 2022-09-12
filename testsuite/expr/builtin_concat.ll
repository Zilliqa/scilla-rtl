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

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_47" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_46"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_46" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_48"**, %"$TyDescrTy_ADTTyp_47"* }
%"$TyDescrTy_ADTTyp_Constr_48" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_358" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_359" = type { %ParamDescrString, i32, %"$ParamDescr_358"* }
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
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr18_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 18 }
@"$TyDescr_Bystr18_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr18_Prim_38" to i8*) }
@"$TyDescr_Bystr4_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 4 }
@"$TyDescr_Bystr4_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr4_Prim_40" to i8*) }
@"$TyDescr_Bystr2_Prim_42" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_42" to i8*) }
@"$TyDescr_Bystr22_Prim_44" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 22 }
@"$TyDescr_Bystr22_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr22_Prim_44" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr22_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_61" to i8*) }
@"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_67" to i8*) }
@"$TyDescr_ADT_Bool_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Bool_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_Pair_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_69", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_46"*], [2 x %"$TyDescrTy_ADTTyp_Specl_46"*]* @"$TyDescr_Pair_ADTTyp_m_specls_68", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_45"]
@"$TyDescr_ADT_Pair_57" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_57", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_48"*] [%"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_58"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_45"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_46" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_48"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_48"*], [1 x %"$TyDescrTy_ADTTyp_Constr_48"*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_47"* @"$TyDescr_Pair_ADTTyp_55" }
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_62" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_49"]
@"$TyDescr_ADT_Pair_63" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_63", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_48"*] [%"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_64"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_66" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_49"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_46" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_48"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_48"*], [1 x %"$TyDescrTy_ADTTyp_Constr_48"*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_47"* @"$TyDescr_Pair_ADTTyp_55" }
@"$TyDescr_Pair_ADTTyp_m_specls_68" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_46"*] [%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_61", %"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_67"]
@"$TyDescr_ADT_Pair_69" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Bool_ADTTyp_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_81", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_46"*], [1 x %"$TyDescrTy_ADTTyp_Specl_46"*]* @"$TyDescr_Bool_ADTTyp_m_specls_80", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_72" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_72", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_74" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_75" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_75", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_48"*] [%"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Bool_True_ADTTyp_Constr_73", %"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Bool_False_ADTTyp_Constr_76"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_46" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_48"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_48"*], [2 x %"$TyDescrTy_ADTTyp_Constr_48"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_47"* @"$TyDescr_Bool_ADTTyp_70" }
@"$TyDescr_Bool_ADTTyp_m_specls_80" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_46"*] [%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Bool_ADTTyp_Specl_79"]
@"$TyDescr_ADT_Bool_81" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_122" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_133" = unnamed_addr constant [5 x i8] c"world"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_51", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_41", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_50", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr18_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 22
@_contract_parameters = constant [0 x %"$ParamDescr_358"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_359"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 5, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %entry
  %"$consume_86" = sub i64 %"$gasrem_82", 5
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 8, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 8
  store i64 %"$consume_91", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 196, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 196
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 20, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 20
  store i64 %"$consume_101", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 12, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 12
  store i64 %"$consume_106", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 2, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 2
  store i64 %"$consume_111", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %a = alloca %String, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_122", i32 0, i32 0), i32 5 }, %String* %a, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_120"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %b = alloca %String, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_133", i32 0, i32 0), i32 5 }, %String* %b, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_131"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %str = alloca %String, align 8
  %"$_literal_cost_a_139" = alloca %String, align 8
  %"$a_140" = load %String, %String* %a, align 8
  store %String %"$a_140", %String* %"$_literal_cost_a_139", align 8
  %"$$_literal_cost_a_139_141" = bitcast %String* %"$_literal_cost_a_139" to i8*
  %"$_literal_cost_call_142" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_a_139_141")
  %"$_literal_cost_b_143" = alloca %String, align 8
  %"$b_144" = load %String, %String* %b, align 8
  store %String %"$b_144", %String* %"$_literal_cost_b_143", align 8
  %"$$_literal_cost_b_143_145" = bitcast %String* %"$_literal_cost_b_143" to i8*
  %"$_literal_cost_call_146" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_b_143_145")
  %"$gasadd_147" = add i64 %"$_literal_cost_call_142", %"$_literal_cost_call_146"
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 %"$gasadd_147", %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_137"
  %"$consume_152" = sub i64 %"$gasrem_148", %"$gasadd_147"
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$a_154" = load %String, %String* %a, align 8
  %"$b_155" = load %String, %String* %b, align 8
  %"$concat_call_156" = call %String @_concat_String(i8* %"$execptr_load_153", %String %"$a_154", %String %"$b_155")
  store %String %"$concat_call_156", %String* %str, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_151"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  store [2 x i8] c"\11\FF", [2 x i8]* %x, align 1
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %y = alloca [2 x i8], align 1
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\11", [2 x i8]* %y, align 1
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %z = alloca [4 x i8], align 1
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 4, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 4
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$execptr_load_187" = load i8*, i8** @_execptr, align 8
  %"$concat_x_188" = alloca [2 x i8], align 1
  %"$x_189" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_189", [2 x i8]* %"$concat_x_188", align 1
  %"$$concat_x_188_190" = bitcast [2 x i8]* %"$concat_x_188" to i8*
  %"$concat_y_191" = alloca [2 x i8], align 1
  %"$y_192" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_192", [2 x i8]* %"$concat_y_191", align 1
  %"$$concat_y_191_193" = bitcast [2 x i8]* %"$concat_y_191" to i8*
  %"$concat_call_194" = call i8* @_concat_ByStrX(i8* %"$execptr_load_187", i32 2, i8* %"$$concat_x_188_190", i32 2, i8* %"$$concat_y_191_193")
  %"$concat_195" = bitcast i8* %"$concat_call_194" to [4 x i8]*
  %"$concat_196" = load [4 x i8], [4 x i8]* %"$concat_195", align 1
  store [4 x i8] %"$concat_196", [4 x i8]* %z, align 1
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_185"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %w = alloca [18 x i8], align 1
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w, align 1
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %bystrx = alloca [22 x i8], align 1
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 22, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 22
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$execptr_load_217" = load i8*, i8** @_execptr, align 8
  %"$concat_w_218" = alloca [18 x i8], align 1
  %"$w_219" = load [18 x i8], [18 x i8]* %w, align 1
  store [18 x i8] %"$w_219", [18 x i8]* %"$concat_w_218", align 1
  %"$$concat_w_218_220" = bitcast [18 x i8]* %"$concat_w_218" to i8*
  %"$concat_z_221" = alloca [4 x i8], align 1
  %"$z_222" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_222", [4 x i8]* %"$concat_z_221", align 1
  %"$$concat_z_221_223" = bitcast [4 x i8]* %"$concat_z_221" to i8*
  %"$concat_call_224" = call i8* @_concat_ByStrX(i8* %"$execptr_load_217", i32 18, i8* %"$$concat_w_218_220", i32 4, i8* %"$$concat_z_221_223")
  %"$concat_225" = bitcast i8* %"$concat_call_224" to [22 x i8]*
  %"$concat_226" = load [22 x i8], [22 x i8]* %"$concat_225", align 1
  store [22 x i8] %"$concat_226", [22 x i8]* %bystrx, align 1
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_215"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 2, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 2
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_238" = alloca [2 x i8], align 1
  %"$x_239" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_239", [2 x i8]* %"$to_bystr_x_238", align 1
  %"$$to_bystr_x_238_240" = bitcast [2 x i8]* %"$to_bystr_x_238" to i8*
  %"$to_bystr_call_241" = call %Bystr @_to_bystr(i8* %"$execptr_load_237", i32 2, i8* %"$$to_bystr_x_238_240")
  store %Bystr %"$to_bystr_call_241", %Bystr* %xbs, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_235"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %ybs = alloca %Bystr, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 2, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 2
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_y_253" = alloca [2 x i8], align 1
  %"$y_254" = load [2 x i8], [2 x i8]* %y, align 1
  store [2 x i8] %"$y_254", [2 x i8]* %"$to_bystr_y_253", align 1
  %"$$to_bystr_y_253_255" = bitcast [2 x i8]* %"$to_bystr_y_253" to i8*
  %"$to_bystr_call_256" = call %Bystr @_to_bystr(i8* %"$execptr_load_252", i32 2, i8* %"$$to_bystr_y_253_255")
  store %Bystr %"$to_bystr_call_256", %Bystr* %ybs, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_250"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %xybs = alloca %Bystr, align 8
  %"$_literal_cost_xbs_262" = alloca %Bystr, align 8
  %"$xbs_263" = load %Bystr, %Bystr* %xbs, align 8
  store %Bystr %"$xbs_263", %Bystr* %"$_literal_cost_xbs_262", align 8
  %"$$_literal_cost_xbs_262_264" = bitcast %Bystr* %"$_literal_cost_xbs_262" to i8*
  %"$_literal_cost_call_265" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_xbs_262_264")
  %"$_literal_cost_ybs_266" = alloca %Bystr, align 8
  %"$ybs_267" = load %Bystr, %Bystr* %ybs, align 8
  store %Bystr %"$ybs_267", %Bystr* %"$_literal_cost_ybs_266", align 8
  %"$$_literal_cost_ybs_266_268" = bitcast %Bystr* %"$_literal_cost_ybs_266" to i8*
  %"$_literal_cost_call_269" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_ybs_266_268")
  %"$gasadd_270" = add i64 %"$_literal_cost_call_265", %"$_literal_cost_call_269"
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 %"$gasadd_270", %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_260"
  %"$consume_275" = sub i64 %"$gasrem_271", %"$gasadd_270"
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$execptr_load_276" = load i8*, i8** @_execptr, align 8
  %"$xbs_277" = load %Bystr, %Bystr* %xbs, align 8
  %"$ybs_278" = load %Bystr, %Bystr* %ybs, align 8
  %"$concat_call_279" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_276", %Bystr %"$xbs_277", %Bystr %"$ybs_278")
  store %Bystr %"$concat_call_279", %Bystr* %xybs, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_274"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %zbs = alloca %Bystr, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 4, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 4
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_z_291" = alloca [4 x i8], align 1
  %"$z_292" = load [4 x i8], [4 x i8]* %z, align 1
  store [4 x i8] %"$z_292", [4 x i8]* %"$to_bystr_z_291", align 1
  %"$$to_bystr_z_291_293" = bitcast [4 x i8]* %"$to_bystr_z_291" to i8*
  %"$to_bystr_call_294" = call %Bystr @_to_bystr(i8* %"$execptr_load_290", i32 4, i8* %"$$to_bystr_z_291_293")
  store %Bystr %"$to_bystr_call_294", %Bystr* %zbs, align 8
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_288"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$_literal_cost_xybs_300" = alloca %Bystr, align 8
  %"$xybs_301" = load %Bystr, %Bystr* %xybs, align 8
  store %Bystr %"$xybs_301", %Bystr* %"$_literal_cost_xybs_300", align 8
  %"$$_literal_cost_xybs_300_302" = bitcast %Bystr* %"$_literal_cost_xybs_300" to i8*
  %"$_literal_cost_call_303" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_xybs_300_302")
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 %"$_literal_cost_call_303", %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_298"
  %"$consume_308" = sub i64 %"$gasrem_304", %"$_literal_cost_call_303"
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$xybs_310" = load %Bystr, %Bystr* %xybs, align 8
  %"$zbs_311" = load %Bystr, %Bystr* %zbs, align 8
  %"$eq_call_312" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_309", %Bystr %"$xybs_310", %Bystr %"$zbs_311")
  store %TName_Bool* %"$eq_call_312", %TName_Bool** %res1, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_307"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %res2 = alloca %TName_Pair_String_ByStr22*, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$str_324" = load %String, %String* %str, align 8
  %"$bystrx_325" = load [22 x i8], [22 x i8]* %bystrx, align 1
  %"$adtval_326_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_326_salloc" = call i8* @_salloc(i8* %"$adtval_326_load", i64 39)
  %"$adtval_326" = bitcast i8* %"$adtval_326_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_327" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_326", i32 0, i32 0
  store i8 0, i8* %"$adtgep_327", align 1
  %"$adtgep_328" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_326", i32 0, i32 1
  store %String %"$str_324", %String* %"$adtgep_328", align 8
  %"$adtgep_329" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_326", i32 0, i32 2
  store [22 x i8] %"$bystrx_325", [22 x i8]* %"$adtgep_329", align 1
  %"$adtptr_330" = bitcast %CName_Pair_String_ByStr22* %"$adtval_326" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_330", %TName_Pair_String_ByStr22** %res2, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_322"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %res3 = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, align 8
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %"$res1_341" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$res2_342" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %res2, align 8
  %"$adtval_343_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_343_salloc" = call i8* @_salloc(i8* %"$adtval_343_load", i64 17)
  %"$adtval_343" = bitcast i8* %"$adtval_343_salloc" to %"CName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$adtgep_344" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_343", i32 0, i32 0
  store i8 0, i8* %"$adtgep_344", align 1
  %"$adtgep_345" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_343", i32 0, i32 1
  store %TName_Bool* %"$res1_341", %TName_Bool** %"$adtgep_345", align 8
  %"$adtgep_346" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_343", i32 0, i32 2
  store %TName_Pair_String_ByStr22* %"$res2_342", %TName_Pair_String_ByStr22** %"$adtgep_346", align 8
  %"$adtptr_347" = bitcast %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_343" to %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtptr_347", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_339"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$res3_353" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3, align 8
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$res3_353", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_6", align 8
  %"$$expr_6_354" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_6", align 8
  ret %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$$expr_6_354"
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
  %"$exprval_355" = call %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_356" = bitcast %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$exprval_355" to i8*
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_357", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_50", i8* %"$memvoidcast_356")
  ret void
}
