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

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
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
@"$TyDescr_ADT_Pair_String_ByStr22_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_ADT_Bool_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_69" to i8*) }
@"$TyDescr_Pair_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_59", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_38"*], [2 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_46" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_48"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_45" }
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41"]
@"$TyDescr_ADT_Pair_53" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_53", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Constr_54"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41"]
@"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_45" }
@"$TyDescr_Pair_ADTTyp_m_specls_58" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_51", %"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Bool_Pair_(String)_(ByStr22)_ADTTyp_Specl_57"]
@"$TyDescr_ADT_Pair_59" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Bool_ADTTyp_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_71", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Bool_ADTTyp_m_specls_70", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_62" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_62", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_64" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_65" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_65", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_67" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_True_ADTTyp_Constr_63", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_False_ADTTyp_Constr_66"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Bool_ADTTyp_60" }
@"$TyDescr_Bool_ADTTyp_m_specls_70" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_69"]
@"$TyDescr_ADT_Bool_71" = unnamed_addr constant [4 x i8] c"Bool"
@"$stringlit_83" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_94" = unnamed_addr constant [5 x i8] c"world"

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @"$scilla_expr_72"(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$gasrem_73" = load i64, i64* @_gasrem
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %entry
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem
  %a = alloca %String
  %"$gasrem_78" = load i64, i64* @_gasrem
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_83", i32 0, i32 0), i32 5 }, %String* %a
  %"$gasrem_84" = load i64, i64* @_gasrem
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_81"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem
  %b = alloca %String
  %"$gasrem_89" = load i64, i64* @_gasrem
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_94", i32 0, i32 0), i32 5 }, %String* %b
  %"$gasrem_95" = load i64, i64* @_gasrem
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_92"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem
  %str = alloca %String
  %"$execptr_load_100" = load i8*, i8** @_execptr
  %"$a_101" = load %String, %String* %a
  %"$b_102" = load %String, %String* %b
  %"$concat_call_103" = call %String @_concat_String(i8* %"$execptr_load_100", %String %"$a_101", %String %"$b_102")
  store %String %"$concat_call_103", %String* %str
  %"$gasrem_104" = load i64, i64* @_gasrem
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_98"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem
  %x = alloca [2 x i8]
  %"$gasrem_109" = load i64, i64* @_gasrem
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem
  store [2 x i8] c"\11\FF", [2 x i8]* %x
  %"$gasrem_114" = load i64, i64* @_gasrem
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem
  %y = alloca [2 x i8]
  %"$gasrem_119" = load i64, i64* @_gasrem
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem
  store [2 x i8] c"\FF\11", [2 x i8]* %y
  %"$gasrem_124" = load i64, i64* @_gasrem
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem
  %z = alloca [4 x i8]
  %"$execptr_load_129" = load i8*, i8** @_execptr
  %"$concat_x_130" = alloca [2 x i8]
  %"$x_131" = load [2 x i8], [2 x i8]* %x
  store [2 x i8] %"$x_131", [2 x i8]* %"$concat_x_130"
  %"$$concat_x_130_132" = bitcast [2 x i8]* %"$concat_x_130" to i8*
  %"$concat_y_133" = alloca [2 x i8]
  %"$y_134" = load [2 x i8], [2 x i8]* %y
  store [2 x i8] %"$y_134", [2 x i8]* %"$concat_y_133"
  %"$$concat_y_133_135" = bitcast [2 x i8]* %"$concat_y_133" to i8*
  %"$concat_call_136" = call i8* @_concat_ByStrX(i8* %"$execptr_load_129", i32 2, i8* %"$$concat_x_130_132", i32 2, i8* %"$$concat_y_133_135")
  %"$concat_137" = bitcast i8* %"$concat_call_136" to [4 x i8]*
  %"$concat_138" = load [4 x i8], [4 x i8]* %"$concat_137"
  store [4 x i8] %"$concat_138", [4 x i8]* %z
  %"$gasrem_139" = load i64, i64* @_gasrem
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_127"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem
  %w = alloca [18 x i8]
  %"$gasrem_144" = load i64, i64* @_gasrem
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w
  %"$gasrem_149" = load i64, i64* @_gasrem
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem
  %bystrx = alloca [22 x i8]
  %"$execptr_load_154" = load i8*, i8** @_execptr
  %"$concat_w_155" = alloca [18 x i8]
  %"$w_156" = load [18 x i8], [18 x i8]* %w
  store [18 x i8] %"$w_156", [18 x i8]* %"$concat_w_155"
  %"$$concat_w_155_157" = bitcast [18 x i8]* %"$concat_w_155" to i8*
  %"$concat_z_158" = alloca [4 x i8]
  %"$z_159" = load [4 x i8], [4 x i8]* %z
  store [4 x i8] %"$z_159", [4 x i8]* %"$concat_z_158"
  %"$$concat_z_158_160" = bitcast [4 x i8]* %"$concat_z_158" to i8*
  %"$concat_call_161" = call i8* @_concat_ByStrX(i8* %"$execptr_load_154", i32 18, i8* %"$$concat_w_155_157", i32 4, i8* %"$$concat_z_158_160")
  %"$concat_162" = bitcast i8* %"$concat_call_161" to [22 x i8]*
  %"$concat_163" = load [22 x i8], [22 x i8]* %"$concat_162"
  store [22 x i8] %"$concat_163", [22 x i8]* %bystrx
  %"$gasrem_164" = load i64, i64* @_gasrem
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_152"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem
  %xbs = alloca %Bystr
  %"$execptr_load_169" = load i8*, i8** @_execptr
  %"$to_bystr_x_170" = alloca [2 x i8]
  %"$x_171" = load [2 x i8], [2 x i8]* %x
  store [2 x i8] %"$x_171", [2 x i8]* %"$to_bystr_x_170"
  %"$$to_bystr_x_170_172" = bitcast [2 x i8]* %"$to_bystr_x_170" to i8*
  %"$to_bystr_call_173" = call %Bystr @_to_bystr(i8* %"$execptr_load_169", i32 2, i8* %"$$to_bystr_x_170_172")
  store %Bystr %"$to_bystr_call_173", %Bystr* %xbs
  %"$gasrem_174" = load i64, i64* @_gasrem
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_167"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem
  %ybs = alloca %Bystr
  %"$execptr_load_179" = load i8*, i8** @_execptr
  %"$to_bystr_y_180" = alloca [2 x i8]
  %"$y_181" = load [2 x i8], [2 x i8]* %y
  store [2 x i8] %"$y_181", [2 x i8]* %"$to_bystr_y_180"
  %"$$to_bystr_y_180_182" = bitcast [2 x i8]* %"$to_bystr_y_180" to i8*
  %"$to_bystr_call_183" = call %Bystr @_to_bystr(i8* %"$execptr_load_179", i32 2, i8* %"$$to_bystr_y_180_182")
  store %Bystr %"$to_bystr_call_183", %Bystr* %ybs
  %"$gasrem_184" = load i64, i64* @_gasrem
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_177"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem
  %xybs = alloca %Bystr
  %"$execptr_load_189" = load i8*, i8** @_execptr
  %"$xbs_190" = load %Bystr, %Bystr* %xbs
  %"$ybs_191" = load %Bystr, %Bystr* %ybs
  %"$concat_call_192" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_189", %Bystr %"$xbs_190", %Bystr %"$ybs_191")
  store %Bystr %"$concat_call_192", %Bystr* %xybs
  %"$gasrem_193" = load i64, i64* @_gasrem
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_187"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem
  %zbs = alloca %Bystr
  %"$execptr_load_198" = load i8*, i8** @_execptr
  %"$to_bystr_z_199" = alloca [4 x i8]
  %"$z_200" = load [4 x i8], [4 x i8]* %z
  store [4 x i8] %"$z_200", [4 x i8]* %"$to_bystr_z_199"
  %"$$to_bystr_z_199_201" = bitcast [4 x i8]* %"$to_bystr_z_199" to i8*
  %"$to_bystr_call_202" = call %Bystr @_to_bystr(i8* %"$execptr_load_198", i32 4, i8* %"$$to_bystr_z_199_201")
  store %Bystr %"$to_bystr_call_202", %Bystr* %zbs
  %"$gasrem_203" = load i64, i64* @_gasrem
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_196"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem
  %res1 = alloca %TName_Bool*
  %"$execptr_load_208" = load i8*, i8** @_execptr
  %"$xybs_209" = load %Bystr, %Bystr* %xybs
  %"$zbs_210" = load %Bystr, %Bystr* %zbs
  %"$eq_call_211" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_208", %Bystr %"$xybs_209", %Bystr %"$zbs_210")
  store %TName_Bool* %"$eq_call_211", %TName_Bool** %res1
  %"$gasrem_212" = load i64, i64* @_gasrem
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_206"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem
  %res2 = alloca %TName_Pair_String_ByStr22*
  %"$gasrem_217" = load i64, i64* @_gasrem
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem
  %"$str_222" = load %String, %String* %str
  %"$bystrx_223" = load [22 x i8], [22 x i8]* %bystrx
  %"$adtval_224_load" = load i8*, i8** @_execptr
  %"$adtval_224_salloc" = call i8* @_salloc(i8* %"$adtval_224_load", i64 39)
  %"$adtval_224" = bitcast i8* %"$adtval_224_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_225" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_224", i32 0, i32 0
  store i8 0, i8* %"$adtgep_225"
  %"$adtgep_226" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_224", i32 0, i32 1
  store %String %"$str_222", %String* %"$adtgep_226"
  %"$adtgep_227" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_224", i32 0, i32 2
  store [22 x i8] %"$bystrx_223", [22 x i8]* %"$adtgep_227"
  %"$adtptr_228" = bitcast %CName_Pair_String_ByStr22* %"$adtval_224" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_228", %TName_Pair_String_ByStr22** %res2
  %"$gasrem_229" = load i64, i64* @_gasrem
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_220"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem
  %res3 = alloca %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$gasrem_234" = load i64, i64* @_gasrem
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem
  %"$res1_239" = load %TName_Bool*, %TName_Bool** %res1
  %"$res2_240" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %res2
  %"$adtval_241_load" = load i8*, i8** @_execptr
  %"$adtval_241_salloc" = call i8* @_salloc(i8* %"$adtval_241_load", i64 17)
  %"$adtval_241" = bitcast i8* %"$adtval_241_salloc" to %"CName_Pair_Bool_Pair_(String)_(ByStr22)"*
  %"$adtgep_242" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_241", i32 0, i32 0
  store i8 0, i8* %"$adtgep_242"
  %"$adtgep_243" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_241", i32 0, i32 1
  store %TName_Bool* %"$res1_239", %TName_Bool** %"$adtgep_243"
  %"$adtgep_244" = getelementptr inbounds %"CName_Pair_Bool_Pair_(String)_(ByStr22)", %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_241", i32 0, i32 2
  store %TName_Pair_String_ByStr22* %"$res2_240", %TName_Pair_String_ByStr22** %"$adtgep_244"
  %"$adtptr_245" = bitcast %"CName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtval_241" to %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$adtptr_245", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3
  %"$gasrem_246" = load i64, i64* @_gasrem
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_237"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem
  %"$res3_251" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %res3
  store %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$res3_251", %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_0"
  %"$$expr_0_252" = load %"TName_Pair_Bool_Pair_(String)_(ByStr22)"*, %"TName_Pair_Bool_Pair_(String)_(ByStr22)"** %"$expr_0"
  ret %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$$expr_0_252"
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
  %"$exprval_253" = call %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* @"$scilla_expr_72"(i8* null)
  %"$memvoidcast_254" = bitcast %"TName_Pair_Bool_Pair_(String)_(ByStr22)"* %"$exprval_253" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Bool_Pair_(String)_(ByStr22)_42", i8* %"$memvoidcast_254")
  ret void
}
