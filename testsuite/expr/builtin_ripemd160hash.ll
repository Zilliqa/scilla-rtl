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
%"$ParamDescr_160" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_161" = type { %ParamDescrString, i32, %"$ParamDescr_160"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_160"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_161"] zeroinitializer
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
  %"$execptr_load_71" = load i8*, i8** @_execptr, align 8
  %"$ripemd160hash_s_72" = alloca %String, align 8
  %"$s_73" = load %String, %String* %s, align 8
  store %String %"$s_73", %String* %"$ripemd160hash_s_72", align 8
  %"$$ripemd160hash_s_72_74" = bitcast %String* %"$ripemd160hash_s_72" to i8*
  %"$ripemd160hash_call_75" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_71", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$ripemd160hash_s_72_74")
  %"$ripemd160hash_76" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_75", align 1
  store [20 x i8] %"$ripemd160hash_76", [20 x i8]* %h1, align 1
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_69"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %h2 = alloca [20 x i8], align 1
  %"$execptr_load_82" = load i8*, i8** @_execptr, align 8
  %"$ripemd160hash_h1_83" = alloca [20 x i8], align 1
  %"$h1_84" = load [20 x i8], [20 x i8]* %h1, align 1
  store [20 x i8] %"$h1_84", [20 x i8]* %"$ripemd160hash_h1_83", align 1
  %"$$ripemd160hash_h1_83_85" = bitcast [20 x i8]* %"$ripemd160hash_h1_83" to i8*
  %"$ripemd160hash_call_86" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_82", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", i8* %"$$ripemd160hash_h1_83_85")
  %"$ripemd160hash_87" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_86", align 1
  store [20 x i8] %"$ripemd160hash_87", [20 x i8]* %h2, align 1
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_80"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %sh = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$s_98" = load %String, %String* %s, align 8
  %"$h2_99" = load [20 x i8], [20 x i8]* %h2, align 1
  %"$adtval_100_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_100_salloc" = call i8* @_salloc(i8* %"$adtval_100_load", i64 37)
  %"$adtval_100" = bitcast i8* %"$adtval_100_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_101" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_100", i32 0, i32 0
  store i8 0, i8* %"$adtgep_101", align 1
  %"$adtgep_102" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_100", i32 0, i32 1
  store %String %"$s_98", %String* %"$adtgep_102", align 8
  %"$adtgep_103" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_100", i32 0, i32 2
  store [20 x i8] %"$h2_99", [20 x i8]* %"$adtgep_103", align 1
  %"$adtptr_104" = bitcast %CName_Pair_String_ByStr20* %"$adtval_100" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_104", %TName_Pair_String_ByStr20** %sh, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_96"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %sh2 = alloca [20 x i8], align 1
  %"$execptr_load_110" = load i8*, i8** @_execptr, align 8
  %"$sh_111" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %sh, align 8
  %"$$sh_111_112" = bitcast %TName_Pair_String_ByStr20* %"$sh_111" to i8*
  %"$ripemd160hash_call_113" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_110", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_36", i8* %"$$sh_111_112")
  %"$ripemd160hash_114" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_113", align 1
  store [20 x i8] %"$ripemd160hash_114", [20 x i8]* %sh2, align 1
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_108"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %bystr1 = alloca %Bystr, align 8
  %"$execptr_load_120" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_sh2_121" = alloca [20 x i8], align 1
  %"$sh2_122" = load [20 x i8], [20 x i8]* %sh2, align 1
  store [20 x i8] %"$sh2_122", [20 x i8]* %"$to_bystr_sh2_121", align 1
  %"$$to_bystr_sh2_121_123" = bitcast [20 x i8]* %"$to_bystr_sh2_121" to i8*
  %"$to_bystr_call_124" = call %Bystr @_to_bystr(i8* %"$execptr_load_120", i32 20, i8* %"$$to_bystr_sh2_121_123")
  store %Bystr %"$to_bystr_call_124", %Bystr* %bystr1, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_118"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %i4 = alloca %Int32, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* %i4, align 4
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr_Int32*, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$bystr1_145" = load %Bystr, %Bystr* %bystr1, align 8
  %"$i4_146" = load %Int32, %Int32* %i4, align 4
  %"$adtval_147_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_147_salloc" = call i8* @_salloc(i8* %"$adtval_147_load", i64 21)
  %"$adtval_147" = bitcast i8* %"$adtval_147_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_148" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_147", i32 0, i32 0
  store i8 0, i8* %"$adtgep_148", align 1
  %"$adtgep_149" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_147", i32 0, i32 1
  store %Bystr %"$bystr1_145", %Bystr* %"$adtgep_149", align 8
  %"$adtgep_150" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_147", i32 0, i32 2
  store %Int32 %"$i4_146", %Int32* %"$adtgep_150", align 4
  %"$adtptr_151" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_147" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_151", %TName_Pair_ByStr_Int32** %p2, align 8
  %"$execptr_load_152" = load i8*, i8** @_execptr, align 8
  %"$p2_153" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_153_154" = bitcast %TName_Pair_ByStr_Int32* %"$p2_153" to i8*
  %"$ripemd160hash_call_155" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_152", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_153_154")
  %"$ripemd160hash_156" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_155", align 1
  store [20 x i8] %"$ripemd160hash_156", [20 x i8]* %"$expr_0", align 1
  %"$$expr_0_157" = load [20 x i8], [20 x i8]* %"$expr_0", align 1
  store [20 x i8] %"$$expr_0_157", [20 x i8]* %1, align 1
  ret void
}

declare void @_out_of_gas()

declare [20 x i8]* @_ripemd160hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_158" = alloca [20 x i8], align 1
  %"$memvoidcast_159" = bitcast [20 x i8]* %"$mainval_158" to i8*
  call void @_scilla_expr_fun(i8* null, [20 x i8]* %"$mainval_158")
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", i8* %"$memvoidcast_159")
  ret void
}
