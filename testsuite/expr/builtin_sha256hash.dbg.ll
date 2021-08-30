; let s = "hello" in
; let h1 = builtin sha256hash s in
; let h2 = builtin sha256hash h1 in
; let sh = Pair {String ByStr32} s h2 in
; let sh2 = builtin sha256hash sh in
; let bystr1 = builtin to_bystr sh2 in
; let i4 = Int32 4 in
; let p2 = Pair {ByStr Int32} bystr1 i4 in
; builtin sha256hash p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_228" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_229" = type { %ParamDescrString, i32, %"$ParamDescr_228"* }
%String = type { i8*, i32 }
%TName_Pair_String_ByStr32 = type { i8, %CName_Pair_String_ByStr32* }
%CName_Pair_String_ByStr32 = type <{ i8, %String, [32 x i8] }>
%Bystr = type { i8*, i32 }
%Int32 = type { i32 }
%TName_Pair_ByStr_Int32 = type { i8, %CName_Pair_ByStr_Int32* }
%CName_Pair_ByStr_Int32 = type <{ i8, %Bystr, %Int32 }>

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
@"$TyDescr_Bystr32_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 32 }
@"$TyDescr_Bystr32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr32_Prim_30" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_Int32_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_46" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Pair_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_54", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_32"*], [2 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_41" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_42" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_42", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_44" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_43"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_40" }
@"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31"]
@"$TyDescr_ADT_Pair_48" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_49"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_40" }
@"$TyDescr_Pair_ADTTyp_m_specls_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_46", %"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Pair_54" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_65" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_36", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_228"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_229"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal void @_scilla_expr_fun(i8* %0, [32 x i8]* %1) !dbg !9 {
entry:
  %"$expr_0" = alloca [32 x i8], align 1
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_65", i32 0, i32 0), i32 5 }, %String* %s, align 8, !dbg !10
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_63"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  %"$_literal_cost_s_71" = alloca %String, align 8
  %"$s_72" = load %String, %String* %s, align 8
  store %String %"$s_72", %String* %"$_literal_cost_s_71", align 8
  %"$$_literal_cost_s_71_73" = bitcast %String* %"$_literal_cost_s_71" to i8*
  %"$_literal_cost_call_74" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_s_71_73")
  %"$gasadd_75" = add i64 %"$_literal_cost_call_74", 0
  %"$gasdivceil_76" = urem i64 %"$gasadd_75", 960
  %"$gasdivceil_77" = udiv i64 %"$gasadd_75", 960
  %"$gasdivceil_78" = icmp eq i64 %"$gasdivceil_76", 0
  %"$gasdivceil_79" = add i64 %"$gasdivceil_77", 1
  %"$gasdivceil_80" = select i1 %"$gasdivceil_78", i64 %"$gasdivceil_77", i64 %"$gasdivceil_79"
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 %"$gasdivceil_80", %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_69"
  %"$consume_85" = sub i64 %"$gasrem_81", %"$gasdivceil_80"
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %"$execptr_load_86" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_s_87" = alloca %String, align 8
  %"$s_88" = load %String, %String* %s, align 8
  store %String %"$s_88", %String* %"$sha256hash_s_87", align 8
  %"$$sha256hash_s_87_89" = bitcast %String* %"$sha256hash_s_87" to i8*
  %"$sha256hash_call_90" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_86", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$sha256hash_s_87_89"), !dbg !11
  %"$sha256hash_92" = load [32 x i8], [32 x i8]* %"$sha256hash_call_90", align 1
  store [32 x i8] %"$sha256hash_92", [32 x i8]* %h1, align 1, !dbg !11
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_84"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  %"$_literal_cost_h1_98" = alloca [32 x i8], align 1
  %"$h1_99" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_99", [32 x i8]* %"$_literal_cost_h1_98", align 1
  %"$$_literal_cost_h1_98_100" = bitcast [32 x i8]* %"$_literal_cost_h1_98" to i8*
  %"$_literal_cost_call_101" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$_literal_cost_h1_98_100")
  %"$gasadd_102" = add i64 %"$_literal_cost_call_101", 0
  %"$gasdivceil_103" = urem i64 %"$gasadd_102", 960
  %"$gasdivceil_104" = udiv i64 %"$gasadd_102", 960
  %"$gasdivceil_105" = icmp eq i64 %"$gasdivceil_103", 0
  %"$gasdivceil_106" = add i64 %"$gasdivceil_104", 1
  %"$gasdivceil_107" = select i1 %"$gasdivceil_105", i64 %"$gasdivceil_104", i64 %"$gasdivceil_106"
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 %"$gasdivceil_107", %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_96"
  %"$consume_112" = sub i64 %"$gasrem_108", %"$gasdivceil_107"
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$execptr_load_113" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_114" = alloca [32 x i8], align 1
  %"$h1_115" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_115", [32 x i8]* %"$sha256hash_h1_114", align 1
  %"$$sha256hash_h1_114_116" = bitcast [32 x i8]* %"$sha256hash_h1_114" to i8*
  %"$sha256hash_call_117" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_113", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$sha256hash_h1_114_116"), !dbg !12
  %"$sha256hash_119" = load [32 x i8], [32 x i8]* %"$sha256hash_call_117", align 1
  store [32 x i8] %"$sha256hash_119", [32 x i8]* %h2, align 1, !dbg !12
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_111"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %sh = alloca %TName_Pair_String_ByStr32*, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$s_130" = load %String, %String* %s, align 8
  %"$h2_131" = load [32 x i8], [32 x i8]* %h2, align 1
  %"$adtval_132_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_132_salloc" = call i8* @_salloc(i8* %"$adtval_132_load", i64 49)
  %"$adtval_132" = bitcast i8* %"$adtval_132_salloc" to %CName_Pair_String_ByStr32*
  %"$adtgep_133" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_132", i32 0, i32 0
  store i8 0, i8* %"$adtgep_133", align 1
  %"$adtgep_134" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_132", i32 0, i32 1
  store %String %"$s_130", %String* %"$adtgep_134", align 8
  %"$adtgep_135" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_132", i32 0, i32 2
  store [32 x i8] %"$h2_131", [32 x i8]* %"$adtgep_135", align 1
  %"$adtptr_136" = bitcast %CName_Pair_String_ByStr32* %"$adtval_132" to %TName_Pair_String_ByStr32*
  store %TName_Pair_String_ByStr32* %"$adtptr_136", %TName_Pair_String_ByStr32** %sh, align 8, !dbg !13
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_128"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %sh2 = alloca [32 x i8], align 1
  %"$sh_142" = load %TName_Pair_String_ByStr32*, %TName_Pair_String_ByStr32** %sh, align 8
  %"$$sh_142_143" = bitcast %TName_Pair_String_ByStr32* %"$sh_142" to i8*
  %"$_literal_cost_call_144" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_36", i8* %"$$sh_142_143")
  %"$gasadd_145" = add i64 %"$_literal_cost_call_144", 0
  %"$gasdivceil_146" = urem i64 %"$gasadd_145", 960
  %"$gasdivceil_147" = udiv i64 %"$gasadd_145", 960
  %"$gasdivceil_148" = icmp eq i64 %"$gasdivceil_146", 0
  %"$gasdivceil_149" = add i64 %"$gasdivceil_147", 1
  %"$gasdivceil_150" = select i1 %"$gasdivceil_148", i64 %"$gasdivceil_147", i64 %"$gasdivceil_149"
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 %"$gasdivceil_150", %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_140"
  %"$consume_155" = sub i64 %"$gasrem_151", %"$gasdivceil_150"
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$execptr_load_156" = load i8*, i8** @_execptr, align 8
  %"$sh_157" = load %TName_Pair_String_ByStr32*, %TName_Pair_String_ByStr32** %sh, align 8
  %"$$sh_157_158" = bitcast %TName_Pair_String_ByStr32* %"$sh_157" to i8*
  %"$sha256hash_call_159" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_156", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_36", i8* %"$$sh_157_158"), !dbg !14
  %"$sha256hash_161" = load [32 x i8], [32 x i8]* %"$sha256hash_call_159", align 1
  store [32 x i8] %"$sha256hash_161", [32 x i8]* %sh2, align 1, !dbg !14
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_154"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %bystr1 = alloca %Bystr, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 32, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 32
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$execptr_load_172" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_sh2_173" = alloca [32 x i8], align 1
  %"$sh2_174" = load [32 x i8], [32 x i8]* %sh2, align 1
  store [32 x i8] %"$sh2_174", [32 x i8]* %"$to_bystr_sh2_173", align 1
  %"$$to_bystr_sh2_173_175" = bitcast [32 x i8]* %"$to_bystr_sh2_173" to i8*
  %"$to_bystr_call_176" = call %Bystr @_to_bystr(i8* %"$execptr_load_172", i32 32, i8* %"$$to_bystr_sh2_173_175"), !dbg !15
  store %Bystr %"$to_bystr_call_176", %Bystr* %bystr1, align 8, !dbg !15
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_170"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %i4 = alloca %Int32, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* %i4, align 4, !dbg !16
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr_Int32*, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$bystr1_197" = load %Bystr, %Bystr* %bystr1, align 8
  %"$i4_198" = load %Int32, %Int32* %i4, align 4
  %"$adtval_199_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_199_salloc" = call i8* @_salloc(i8* %"$adtval_199_load", i64 21)
  %"$adtval_199" = bitcast i8* %"$adtval_199_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_200" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_199", i32 0, i32 0
  store i8 0, i8* %"$adtgep_200", align 1
  %"$adtgep_201" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_199", i32 0, i32 1
  store %Bystr %"$bystr1_197", %Bystr* %"$adtgep_201", align 8
  %"$adtgep_202" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_199", i32 0, i32 2
  store %Int32 %"$i4_198", %Int32* %"$adtgep_202", align 4
  %"$adtptr_203" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_199" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_203", %TName_Pair_ByStr_Int32** %p2, align 8, !dbg !17
  %"$p2_204" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_204_205" = bitcast %TName_Pair_ByStr_Int32* %"$p2_204" to i8*
  %"$_literal_cost_call_206" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_204_205")
  %"$gasadd_207" = add i64 %"$_literal_cost_call_206", 0
  %"$gasdivceil_208" = urem i64 %"$gasadd_207", 960
  %"$gasdivceil_209" = udiv i64 %"$gasadd_207", 960
  %"$gasdivceil_210" = icmp eq i64 %"$gasdivceil_208", 0
  %"$gasdivceil_211" = add i64 %"$gasdivceil_209", 1
  %"$gasdivceil_212" = select i1 %"$gasdivceil_210", i64 %"$gasdivceil_209", i64 %"$gasdivceil_211"
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 %"$gasdivceil_212", %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_195"
  %"$consume_217" = sub i64 %"$gasrem_213", %"$gasdivceil_212"
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$execptr_load_218" = load i8*, i8** @_execptr, align 8
  %"$p2_219" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_219_220" = bitcast %TName_Pair_ByStr_Int32* %"$p2_219" to i8*
  %"$sha256hash_call_221" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_218", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_219_220"), !dbg !18
  %"$sha256hash_223" = load [32 x i8], [32 x i8]* %"$sha256hash_call_221", align 1
  store [32 x i8] %"$sha256hash_223", [32 x i8]* %"$expr_0", align 1, !dbg !18
  %"$$expr_0_224" = load [32 x i8], [32 x i8]* %"$expr_0", align 1
  store [32 x i8] %"$$expr_0_224", [32 x i8]* %1, align 1
  ret void
}

declare void @_out_of_gas()

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_225" = alloca [32 x i8], align 1
  %"$memvoidcast_226" = bitcast [32 x i8]* %"$mainval_225" to i8*
  call void @_scilla_expr_fun(i8* null, [32 x i8]* %"$mainval_225")
  %"$execptr_load_227" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_227", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$memvoidcast_226")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_sha256hash.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 15, scope: !9)
!11 = !DILocation(line: 2, column: 10, scope: !9)
!12 = !DILocation(line: 3, column: 10, scope: !9)
!13 = !DILocation(line: 4, column: 10, scope: !9)
!14 = !DILocation(line: 5, column: 11, scope: !9)
!15 = !DILocation(line: 6, column: 14, scope: !9)
!16 = !DILocation(line: 7, column: 10, scope: !9)
!17 = !DILocation(line: 8, column: 10, scope: !9)
!18 = !DILocation(line: 9, column: 1, scope: !9)
