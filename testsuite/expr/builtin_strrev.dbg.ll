; let a = 0xaacc in
; let a_ = builtin strrev a in
; 
; let aa = 0xaaaaaaaabb in
; let aa_ = builtin strrev aa in
; 
; let ab = builtin to_bystr a in
; let ab_ = builtin strrev ab in
; 
; let aab = builtin to_bystr aa in
; let aab_ = builtin strrev aab in
; 
; let s = "Hello" in
; let s_ = builtin strrev s in
; 
; let res1 = builtin concat a_ aa_ in
; let res2 = builtin concat ab_ aab_ in
; 
; let res1_ = builtin to_bystr res1 in
; let res3 = builtin concat res1_ res2 in
; 
; Pair{ByStr String} res3 s_
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_303" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_304" = type { %ParamDescrString, i32, %"$ParamDescr_303"* }
%TName_Pair_ByStr_String = type { i8, %CName_Pair_ByStr_String* }
%CName_Pair_ByStr_String = type <{ i8, %Bystr, %String }>
%Bystr = type { i8*, i32 }
%String = type { i8*, i32 }

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
@"$TyDescr_Bystr7_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 7 }
@"$TyDescr_Bystr7_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr7_Prim_30" to i8*) }
@"$TyDescr_Bystr5_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 5 }
@"$TyDescr_Bystr5_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr5_Prim_32" to i8*) }
@"$TyDescr_Bystr2_Prim_34" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 2 }
@"$TyDescr_Bystr2_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr2_Prim_34" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_String_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_Pair_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_51", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_String_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_String_19"]
@"$TyDescr_ADT_Pair_45" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_String_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_String_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_ByStr_String_ADTTyp_Constr_46"]
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_String_19"]
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_43" }
@"$TyDescr_Pair_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_49"]
@"$TyDescr_ADT_Pair_51" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_188" = unnamed_addr constant [5 x i8] c"Hello"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Bystr5_33", %_TyDescrTy_Typ* @"$TyDescr_Bystr7_31", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_303"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_304"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_0" = alloca %TName_Pair_ByStr_String*, align 8
  %"$gasrem_52" = load i64, i64* @_gasrem, align 8
  %"$gascmp_53" = icmp ugt i64 1, %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %entry
  %"$consume_56" = sub i64 %"$gasrem_52", 1
  store i64 %"$consume_56", i64* @_gasrem, align 8
  %a = alloca [2 x i8], align 1
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %"$have_gas_55"
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %"$have_gas_55"
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\CC", [2 x i8]* %a, align 1, !dbg !10
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %a_ = alloca [2 x i8], align 1
  %"$_literal_cost_a_67" = alloca [2 x i8], align 1
  %"$a_68" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_68", [2 x i8]* %"$_literal_cost_a_67", align 1
  %"$$_literal_cost_a_67_69" = bitcast [2 x i8]* %"$_literal_cost_a_67" to i8*
  %"$_literal_cost_call_70" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr2_35", i8* %"$$_literal_cost_a_67_69")
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 %"$_literal_cost_call_70", %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_65"
  %"$consume_75" = sub i64 %"$gasrem_71", %"$_literal_cost_call_70"
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %"$execptr_load_76" = load i8*, i8** @_execptr, align 8
  %"$strrev_a_77" = alloca [2 x i8], align 1
  %"$a_78" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_78", [2 x i8]* %"$strrev_a_77", align 1
  %"$$strrev_a_77_79" = bitcast [2 x i8]* %"$strrev_a_77" to i8*
  %"$strrev_call_80" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_76", i32 2, i8* %"$$strrev_a_77_79"), !dbg !11
  %"$strrev_81" = bitcast i8* %"$strrev_call_80" to [2 x i8]*
  %"$strrev_82" = load [2 x i8], [2 x i8]* %"$strrev_81", align 1
  store [2 x i8] %"$strrev_82", [2 x i8]* %a_, align 1, !dbg !11
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_74"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %aa = alloca [5 x i8], align 1
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store [5 x i8] c"\AA\AA\AA\AA\BB", [5 x i8]* %aa, align 1, !dbg !12
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %aa_ = alloca [5 x i8], align 1
  %"$_literal_cost_aa_98" = alloca [5 x i8], align 1
  %"$aa_99" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_99", [5 x i8]* %"$_literal_cost_aa_98", align 1
  %"$$_literal_cost_aa_98_100" = bitcast [5 x i8]* %"$_literal_cost_aa_98" to i8*
  %"$_literal_cost_call_101" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr5_33", i8* %"$$_literal_cost_aa_98_100")
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 %"$_literal_cost_call_101", %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_96"
  %"$consume_106" = sub i64 %"$gasrem_102", %"$_literal_cost_call_101"
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$execptr_load_107" = load i8*, i8** @_execptr, align 8
  %"$strrev_aa_108" = alloca [5 x i8], align 1
  %"$aa_109" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_109", [5 x i8]* %"$strrev_aa_108", align 1
  %"$$strrev_aa_108_110" = bitcast [5 x i8]* %"$strrev_aa_108" to i8*
  %"$strrev_call_111" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_107", i32 5, i8* %"$$strrev_aa_108_110"), !dbg !13
  %"$strrev_112" = bitcast i8* %"$strrev_call_111" to [5 x i8]*
  %"$strrev_113" = load [5 x i8], [5 x i8]* %"$strrev_112", align 1
  store [5 x i8] %"$strrev_113", [5 x i8]* %aa_, align 1, !dbg !13
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_105"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %ab = alloca %Bystr, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 2, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 2
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$execptr_load_124" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_a_125" = alloca [2 x i8], align 1
  %"$a_126" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_126", [2 x i8]* %"$to_bystr_a_125", align 1
  %"$$to_bystr_a_125_127" = bitcast [2 x i8]* %"$to_bystr_a_125" to i8*
  %"$to_bystr_call_128" = call %Bystr @_to_bystr(i8* %"$execptr_load_124", i32 2, i8* %"$$to_bystr_a_125_127"), !dbg !14
  store %Bystr %"$to_bystr_call_128", %Bystr* %ab, align 8, !dbg !14
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_122"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %ab_ = alloca %Bystr, align 8
  %"$_literal_cost_ab_134" = alloca %Bystr, align 8
  %"$ab_135" = load %Bystr, %Bystr* %ab, align 8
  store %Bystr %"$ab_135", %Bystr* %"$_literal_cost_ab_134", align 8
  %"$$_literal_cost_ab_134_136" = bitcast %Bystr* %"$_literal_cost_ab_134" to i8*
  %"$_literal_cost_call_137" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_ab_134_136")
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 %"$_literal_cost_call_137", %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_132"
  %"$consume_142" = sub i64 %"$gasrem_138", %"$_literal_cost_call_137"
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$execptr_load_143" = load i8*, i8** @_execptr, align 8
  %"$ab_144" = load %Bystr, %Bystr* %ab, align 8
  %"$strrev_call_145" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_143", %Bystr %"$ab_144"), !dbg !15
  store %Bystr %"$strrev_call_145", %Bystr* %ab_, align 8, !dbg !15
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_141"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %aab = alloca %Bystr, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 5, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 5
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$execptr_load_156" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_aa_157" = alloca [5 x i8], align 1
  %"$aa_158" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_158", [5 x i8]* %"$to_bystr_aa_157", align 1
  %"$$to_bystr_aa_157_159" = bitcast [5 x i8]* %"$to_bystr_aa_157" to i8*
  %"$to_bystr_call_160" = call %Bystr @_to_bystr(i8* %"$execptr_load_156", i32 5, i8* %"$$to_bystr_aa_157_159"), !dbg !16
  store %Bystr %"$to_bystr_call_160", %Bystr* %aab, align 8, !dbg !16
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_154"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %aab_ = alloca %Bystr, align 8
  %"$_literal_cost_aab_166" = alloca %Bystr, align 8
  %"$aab_167" = load %Bystr, %Bystr* %aab, align 8
  store %Bystr %"$aab_167", %Bystr* %"$_literal_cost_aab_166", align 8
  %"$$_literal_cost_aab_166_168" = bitcast %Bystr* %"$_literal_cost_aab_166" to i8*
  %"$_literal_cost_call_169" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_aab_166_168")
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 %"$_literal_cost_call_169", %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_164"
  %"$consume_174" = sub i64 %"$gasrem_170", %"$_literal_cost_call_169"
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$execptr_load_175" = load i8*, i8** @_execptr, align 8
  %"$aab_176" = load %Bystr, %Bystr* %aab, align 8
  %"$strrev_call_177" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_175", %Bystr %"$aab_176"), !dbg !17
  store %Bystr %"$strrev_call_177", %Bystr* %aab_, align 8, !dbg !17
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_173"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_188", i32 0, i32 0), i32 5 }, %String* %s, align 8, !dbg !18
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_186"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %s_ = alloca %String, align 8
  %"$_literal_cost_s_194" = alloca %String, align 8
  %"$s_195" = load %String, %String* %s, align 8
  store %String %"$s_195", %String* %"$_literal_cost_s_194", align 8
  %"$$_literal_cost_s_194_196" = bitcast %String* %"$_literal_cost_s_194" to i8*
  %"$_literal_cost_call_197" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_s_194_196")
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 %"$_literal_cost_call_197", %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_192"
  %"$consume_202" = sub i64 %"$gasrem_198", %"$_literal_cost_call_197"
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$s_204" = load %String, %String* %s, align 8
  %"$strrev_call_205" = call %String @_strrev_String(i8* %"$execptr_load_203", %String %"$s_204"), !dbg !19
  store %String %"$strrev_call_205", %String* %s_, align 8, !dbg !19
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_201"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %res1 = alloca [7 x i8], align 1
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 7, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_209"
  %"$consume_215" = sub i64 %"$gasrem_211", 7
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %"$execptr_load_216" = load i8*, i8** @_execptr, align 8
  %"$concat_a__217" = alloca [2 x i8], align 1
  %"$a__218" = load [2 x i8], [2 x i8]* %a_, align 1
  store [2 x i8] %"$a__218", [2 x i8]* %"$concat_a__217", align 1
  %"$$concat_a__217_219" = bitcast [2 x i8]* %"$concat_a__217" to i8*
  %"$concat_aa__220" = alloca [5 x i8], align 1
  %"$aa__221" = load [5 x i8], [5 x i8]* %aa_, align 1
  store [5 x i8] %"$aa__221", [5 x i8]* %"$concat_aa__220", align 1
  %"$$concat_aa__220_222" = bitcast [5 x i8]* %"$concat_aa__220" to i8*
  %"$concat_call_223" = call i8* @_concat_ByStrX(i8* %"$execptr_load_216", i32 2, i8* %"$$concat_a__217_219", i32 5, i8* %"$$concat_aa__220_222"), !dbg !20
  %"$concat_224" = bitcast i8* %"$concat_call_223" to [7 x i8]*
  %"$concat_225" = load [7 x i8], [7 x i8]* %"$concat_224", align 1
  store [7 x i8] %"$concat_225", [7 x i8]* %res1, align 1, !dbg !20
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_214"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %res2 = alloca %Bystr, align 8
  %"$_literal_cost_ab__231" = alloca %Bystr, align 8
  %"$ab__232" = load %Bystr, %Bystr* %ab_, align 8
  store %Bystr %"$ab__232", %Bystr* %"$_literal_cost_ab__231", align 8
  %"$$_literal_cost_ab__231_233" = bitcast %Bystr* %"$_literal_cost_ab__231" to i8*
  %"$_literal_cost_call_234" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_ab__231_233")
  %"$_literal_cost_aab__235" = alloca %Bystr, align 8
  %"$aab__236" = load %Bystr, %Bystr* %aab_, align 8
  store %Bystr %"$aab__236", %Bystr* %"$_literal_cost_aab__235", align 8
  %"$$_literal_cost_aab__235_237" = bitcast %Bystr* %"$_literal_cost_aab__235" to i8*
  %"$_literal_cost_call_238" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_aab__235_237")
  %"$gasadd_239" = add i64 %"$_literal_cost_call_234", %"$_literal_cost_call_238"
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 %"$gasadd_239", %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_229"
  %"$consume_244" = sub i64 %"$gasrem_240", %"$gasadd_239"
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$execptr_load_245" = load i8*, i8** @_execptr, align 8
  %"$ab__246" = load %Bystr, %Bystr* %ab_, align 8
  %"$aab__247" = load %Bystr, %Bystr* %aab_, align 8
  %"$concat_call_248" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_245", %Bystr %"$ab__246", %Bystr %"$aab__247"), !dbg !21
  store %Bystr %"$concat_call_248", %Bystr* %res2, align 8, !dbg !21
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_243"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %res1_ = alloca %Bystr, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 7, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 7
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$execptr_load_259" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_res1_260" = alloca [7 x i8], align 1
  %"$res1_261" = load [7 x i8], [7 x i8]* %res1, align 1
  store [7 x i8] %"$res1_261", [7 x i8]* %"$to_bystr_res1_260", align 1
  %"$$to_bystr_res1_260_262" = bitcast [7 x i8]* %"$to_bystr_res1_260" to i8*
  %"$to_bystr_call_263" = call %Bystr @_to_bystr(i8* %"$execptr_load_259", i32 7, i8* %"$$to_bystr_res1_260_262"), !dbg !22
  store %Bystr %"$to_bystr_call_263", %Bystr* %res1_, align 8, !dbg !22
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_257"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %res3 = alloca %Bystr, align 8
  %"$_literal_cost_res1__269" = alloca %Bystr, align 8
  %"$res1__270" = load %Bystr, %Bystr* %res1_, align 8
  store %Bystr %"$res1__270", %Bystr* %"$_literal_cost_res1__269", align 8
  %"$$_literal_cost_res1__269_271" = bitcast %Bystr* %"$_literal_cost_res1__269" to i8*
  %"$_literal_cost_call_272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_res1__269_271")
  %"$_literal_cost_res2_273" = alloca %Bystr, align 8
  %"$res2_274" = load %Bystr, %Bystr* %res2, align 8
  store %Bystr %"$res2_274", %Bystr* %"$_literal_cost_res2_273", align 8
  %"$$_literal_cost_res2_273_275" = bitcast %Bystr* %"$_literal_cost_res2_273" to i8*
  %"$_literal_cost_call_276" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_res2_273_275")
  %"$gasadd_277" = add i64 %"$_literal_cost_call_272", %"$_literal_cost_call_276"
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 %"$gasadd_277", %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_267"
  %"$consume_282" = sub i64 %"$gasrem_278", %"$gasadd_277"
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$execptr_load_283" = load i8*, i8** @_execptr, align 8
  %"$res1__284" = load %Bystr, %Bystr* %res1_, align 8
  %"$res2_285" = load %Bystr, %Bystr* %res2, align 8
  %"$concat_call_286" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_283", %Bystr %"$res1__284", %Bystr %"$res2_285"), !dbg !23
  store %Bystr %"$concat_call_286", %Bystr* %res3, align 8, !dbg !23
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_281"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$res3_292" = load %Bystr, %Bystr* %res3, align 8
  %"$s__293" = load %String, %String* %s_, align 8
  %"$adtval_294_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_294_salloc" = call i8* @_salloc(i8* %"$adtval_294_load", i64 33)
  %"$adtval_294" = bitcast i8* %"$adtval_294_salloc" to %CName_Pair_ByStr_String*
  %"$adtgep_295" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_294", i32 0, i32 0
  store i8 0, i8* %"$adtgep_295", align 1
  %"$adtgep_296" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_294", i32 0, i32 1
  store %Bystr %"$res3_292", %Bystr* %"$adtgep_296", align 8
  %"$adtgep_297" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_294", i32 0, i32 2
  store %String %"$s__293", %String* %"$adtgep_297", align 8
  %"$adtptr_298" = bitcast %CName_Pair_ByStr_String* %"$adtval_294" to %TName_Pair_ByStr_String*
  store %TName_Pair_ByStr_String* %"$adtptr_298", %TName_Pair_ByStr_String** %"$expr_0", align 8, !dbg !24
  %"$$expr_0_299" = load %TName_Pair_ByStr_String*, %TName_Pair_ByStr_String** %"$expr_0", align 8
  ret %TName_Pair_ByStr_String* %"$$expr_0_299"
}

declare void @_out_of_gas()

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_strrev_ByStrX(i8*, i32, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %Bystr @_strrev_ByStr(i8*, %Bystr)

declare %String @_strrev_String(i8*, %String)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

declare %Bystr @_concat_ByStr(i8*, %Bystr, %Bystr)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_300" = call %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_301" = bitcast %TName_Pair_ByStr_String* %"$exprval_300" to i8*
  %"$execptr_load_302" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_302", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_39", i8* %"$memvoidcast_301")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_strrev.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 9, scope: !9)
!11 = !DILocation(line: 2, column: 10, scope: !9)
!12 = !DILocation(line: 4, column: 10, scope: !9)
!13 = !DILocation(line: 5, column: 11, scope: !9)
!14 = !DILocation(line: 7, column: 10, scope: !9)
!15 = !DILocation(line: 8, column: 11, scope: !9)
!16 = !DILocation(line: 10, column: 11, scope: !9)
!17 = !DILocation(line: 11, column: 12, scope: !9)
!18 = !DILocation(line: 13, column: 15, scope: !9)
!19 = !DILocation(line: 14, column: 10, scope: !9)
!20 = !DILocation(line: 16, column: 12, scope: !9)
!21 = !DILocation(line: 17, column: 12, scope: !9)
!22 = !DILocation(line: 19, column: 13, scope: !9)
!23 = !DILocation(line: 20, column: 12, scope: !9)
!24 = !DILocation(line: 22, column: 1, scope: !9)
