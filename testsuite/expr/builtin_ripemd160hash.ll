; let s = "hello" in
; let h1 = builtin ripemd160hash s in
; let h2 = builtin ripemd160hash h1 in
; let sh = Pair {String ByStr20} s h2 in
; let sh2 = builtin ripemd160hash sh in
; let bystr1 = builtin to_bystr sh2 in
; let i4 = Int32 4 in
; let p2 = Pair {ByStr Int32} bystr1 i4 in
; builtin ripemd160hash p2
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
%"$ParamDescr_224" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_225" = type { %ParamDescrString, i32, %"$ParamDescr_224"* }
%String = type { i8*, i32 }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
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
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_Int32_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_46" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Pair_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_54", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_32"*], [2 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_41" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_42" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_42", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_44" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_43"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_40" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31"]
@"$TyDescr_ADT_Pair_48" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_49"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_40" }
@"$TyDescr_Pair_ADTTyp_m_specls_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_46", %"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Pair_54" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_65" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_224"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_225"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal void @_scilla_expr_fun(i8* %0, [20 x i8]* %1) {
entry:
  %"$expr_0" = alloca [20 x i8], align 1
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
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_65", i32 0, i32 0), i32 5 }, %String* %s, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_63"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %h1 = alloca [20 x i8], align 1
  %"$_literal_cost_s_71" = alloca %String, align 8
  %"$s_72" = load %String, %String* %s, align 8
  store %String %"$s_72", %String* %"$_literal_cost_s_71", align 8
  %"$$_literal_cost_s_71_73" = bitcast %String* %"$_literal_cost_s_71" to i8*
  %"$_literal_cost_call_74" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_s_71_73")
  %"$gasdivceil_75" = urem i64 %"$_literal_cost_call_74", 640
  %"$gasdivceil_76" = udiv i64 %"$_literal_cost_call_74", 640
  %"$gasdivceil_77" = icmp eq i64 %"$gasdivceil_75", 0
  %"$gasdivceil_78" = add i64 %"$gasdivceil_76", 1
  %"$gasdivceil_79" = select i1 %"$gasdivceil_77", i64 %"$gasdivceil_76", i64 %"$gasdivceil_78"
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 %"$gasdivceil_79", %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_69"
  %"$consume_84" = sub i64 %"$gasrem_80", %"$gasdivceil_79"
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %"$execptr_load_85" = load i8*, i8** @_execptr, align 8
  %"$ripemd160hash_s_86" = alloca %String, align 8
  %"$s_87" = load %String, %String* %s, align 8
  store %String %"$s_87", %String* %"$ripemd160hash_s_86", align 8
  %"$$ripemd160hash_s_86_88" = bitcast %String* %"$ripemd160hash_s_86" to i8*
  %"$ripemd160hash_call_89" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_85", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$ripemd160hash_s_86_88")
  %"$ripemd160hash_91" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_89", align 1
  store [20 x i8] %"$ripemd160hash_91", [20 x i8]* %h1, align 1
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_83"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %h2 = alloca [20 x i8], align 1
  %"$_literal_cost_h1_97" = alloca [20 x i8], align 1
  %"$h1_98" = load [20 x i8], [20 x i8]* %h1, align 1
  store [20 x i8] %"$h1_98", [20 x i8]* %"$_literal_cost_h1_97", align 1
  %"$$_literal_cost_h1_97_99" = bitcast [20 x i8]* %"$_literal_cost_h1_97" to i8*
  %"$_literal_cost_call_100" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", i8* %"$$_literal_cost_h1_97_99")
  %"$gasdivceil_101" = urem i64 %"$_literal_cost_call_100", 640
  %"$gasdivceil_102" = udiv i64 %"$_literal_cost_call_100", 640
  %"$gasdivceil_103" = icmp eq i64 %"$gasdivceil_101", 0
  %"$gasdivceil_104" = add i64 %"$gasdivceil_102", 1
  %"$gasdivceil_105" = select i1 %"$gasdivceil_103", i64 %"$gasdivceil_102", i64 %"$gasdivceil_104"
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 %"$gasdivceil_105", %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_95"
  %"$consume_110" = sub i64 %"$gasrem_106", %"$gasdivceil_105"
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$execptr_load_111" = load i8*, i8** @_execptr, align 8
  %"$ripemd160hash_h1_112" = alloca [20 x i8], align 1
  %"$h1_113" = load [20 x i8], [20 x i8]* %h1, align 1
  store [20 x i8] %"$h1_113", [20 x i8]* %"$ripemd160hash_h1_112", align 1
  %"$$ripemd160hash_h1_112_114" = bitcast [20 x i8]* %"$ripemd160hash_h1_112" to i8*
  %"$ripemd160hash_call_115" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_111", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", i8* %"$$ripemd160hash_h1_112_114")
  %"$ripemd160hash_117" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_115", align 1
  store [20 x i8] %"$ripemd160hash_117", [20 x i8]* %h2, align 1
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_109"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %sh = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$s_128" = load %String, %String* %s, align 8
  %"$h2_129" = load [20 x i8], [20 x i8]* %h2, align 1
  %"$adtval_130_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_130_salloc" = call i8* @_salloc(i8* %"$adtval_130_load", i64 37)
  %"$adtval_130" = bitcast i8* %"$adtval_130_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_131" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_130", i32 0, i32 0
  store i8 0, i8* %"$adtgep_131", align 1
  %"$adtgep_132" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_130", i32 0, i32 1
  store %String %"$s_128", %String* %"$adtgep_132", align 8
  %"$adtgep_133" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_130", i32 0, i32 2
  store [20 x i8] %"$h2_129", [20 x i8]* %"$adtgep_133", align 1
  %"$adtptr_134" = bitcast %CName_Pair_String_ByStr20* %"$adtval_130" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_134", %TName_Pair_String_ByStr20** %sh, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_126"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %sh2 = alloca [20 x i8], align 1
  %"$sh_140" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %sh, align 8
  %"$$sh_140_141" = bitcast %TName_Pair_String_ByStr20* %"$sh_140" to i8*
  %"$_literal_cost_call_142" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_36", i8* %"$$sh_140_141")
  %"$gasdivceil_143" = urem i64 %"$_literal_cost_call_142", 640
  %"$gasdivceil_144" = udiv i64 %"$_literal_cost_call_142", 640
  %"$gasdivceil_145" = icmp eq i64 %"$gasdivceil_143", 0
  %"$gasdivceil_146" = add i64 %"$gasdivceil_144", 1
  %"$gasdivceil_147" = select i1 %"$gasdivceil_145", i64 %"$gasdivceil_144", i64 %"$gasdivceil_146"
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 %"$gasdivceil_147", %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_138"
  %"$consume_152" = sub i64 %"$gasrem_148", %"$gasdivceil_147"
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$sh_154" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %sh, align 8
  %"$$sh_154_155" = bitcast %TName_Pair_String_ByStr20* %"$sh_154" to i8*
  %"$ripemd160hash_call_156" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_153", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_36", i8* %"$$sh_154_155")
  %"$ripemd160hash_158" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_156", align 1
  store [20 x i8] %"$ripemd160hash_158", [20 x i8]* %sh2, align 1
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_151"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %bystr1 = alloca %Bystr, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 20, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 20
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_sh2_170" = alloca [20 x i8], align 1
  %"$sh2_171" = load [20 x i8], [20 x i8]* %sh2, align 1
  store [20 x i8] %"$sh2_171", [20 x i8]* %"$to_bystr_sh2_170", align 1
  %"$$to_bystr_sh2_170_172" = bitcast [20 x i8]* %"$to_bystr_sh2_170" to i8*
  %"$to_bystr_call_173" = call %Bystr @_to_bystr(i8* %"$execptr_load_169", i32 20, i8* %"$$to_bystr_sh2_170_172")
  store %Bystr %"$to_bystr_call_173", %Bystr* %bystr1, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_167"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %i4 = alloca %Int32, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* %i4, align 4
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr_Int32*, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$bystr1_194" = load %Bystr, %Bystr* %bystr1, align 8
  %"$i4_195" = load %Int32, %Int32* %i4, align 4
  %"$adtval_196_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_196_salloc" = call i8* @_salloc(i8* %"$adtval_196_load", i64 21)
  %"$adtval_196" = bitcast i8* %"$adtval_196_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_197" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_196", i32 0, i32 0
  store i8 0, i8* %"$adtgep_197", align 1
  %"$adtgep_198" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_196", i32 0, i32 1
  store %Bystr %"$bystr1_194", %Bystr* %"$adtgep_198", align 8
  %"$adtgep_199" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_196", i32 0, i32 2
  store %Int32 %"$i4_195", %Int32* %"$adtgep_199", align 4
  %"$adtptr_200" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_196" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_200", %TName_Pair_ByStr_Int32** %p2, align 8
  %"$p2_201" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_201_202" = bitcast %TName_Pair_ByStr_Int32* %"$p2_201" to i8*
  %"$_literal_cost_call_203" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_201_202")
  %"$gasdivceil_204" = urem i64 %"$_literal_cost_call_203", 640
  %"$gasdivceil_205" = udiv i64 %"$_literal_cost_call_203", 640
  %"$gasdivceil_206" = icmp eq i64 %"$gasdivceil_204", 0
  %"$gasdivceil_207" = add i64 %"$gasdivceil_205", 1
  %"$gasdivceil_208" = select i1 %"$gasdivceil_206", i64 %"$gasdivceil_205", i64 %"$gasdivceil_207"
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 %"$gasdivceil_208", %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_192"
  %"$consume_213" = sub i64 %"$gasrem_209", %"$gasdivceil_208"
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$p2_215" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_215_216" = bitcast %TName_Pair_ByStr_Int32* %"$p2_215" to i8*
  %"$ripemd160hash_call_217" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_214", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_215_216")
  %"$ripemd160hash_219" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_217", align 1
  store [20 x i8] %"$ripemd160hash_219", [20 x i8]* %"$expr_0", align 1
  %"$$expr_0_220" = load [20 x i8], [20 x i8]* %"$expr_0", align 1
  store [20 x i8] %"$$expr_0_220", [20 x i8]* %1, align 1
  ret void
}

declare void @_out_of_gas()

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [20 x i8]* @_ripemd160hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_221" = alloca [20 x i8], align 1
  %"$memvoidcast_222" = bitcast [20 x i8]* %"$mainval_221" to i8*
  call void @_scilla_expr_fun(i8* null, [20 x i8]* %"$mainval_221")
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_223", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", i8* %"$memvoidcast_222")
  ret void
}
