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
%"$ParamDescr_210" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_211" = type { %ParamDescrString, i32, %"$ParamDescr_210"* }
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
@"$stringlit_142" = unnamed_addr constant [5 x i8] c"Hello"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Bystr5_33", %_TyDescrTy_Typ* @"$TyDescr_Bystr7_31", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_210"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_211"] zeroinitializer
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
  %"$execptr_load_67" = load i8*, i8** @_execptr, align 8
  %"$strrev_a_68" = alloca [2 x i8], align 1
  %"$a_69" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_69", [2 x i8]* %"$strrev_a_68", align 1
  %"$$strrev_a_68_70" = bitcast [2 x i8]* %"$strrev_a_68" to i8*
  %"$strrev_call_71" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_67", i32 2, i8* %"$$strrev_a_68_70"), !dbg !11
  %"$strrev_72" = bitcast i8* %"$strrev_call_71" to [2 x i8]*
  %"$strrev_73" = load [2 x i8], [2 x i8]* %"$strrev_72", align 1
  store [2 x i8] %"$strrev_73", [2 x i8]* %a_, align 1, !dbg !11
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_65"
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %aa = alloca [5 x i8], align 1
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store [5 x i8] c"\AA\AA\AA\AA\BB", [5 x i8]* %aa, align 1, !dbg !12
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %aa_ = alloca [5 x i8], align 1
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$strrev_aa_90" = alloca [5 x i8], align 1
  %"$aa_91" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_91", [5 x i8]* %"$strrev_aa_90", align 1
  %"$$strrev_aa_90_92" = bitcast [5 x i8]* %"$strrev_aa_90" to i8*
  %"$strrev_call_93" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_89", i32 5, i8* %"$$strrev_aa_90_92"), !dbg !13
  %"$strrev_94" = bitcast i8* %"$strrev_call_93" to [5 x i8]*
  %"$strrev_95" = load [5 x i8], [5 x i8]* %"$strrev_94", align 1
  store [5 x i8] %"$strrev_95", [5 x i8]* %aa_, align 1, !dbg !13
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_87"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %ab = alloca %Bystr, align 8
  %"$execptr_load_101" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_a_102" = alloca [2 x i8], align 1
  %"$a_103" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_103", [2 x i8]* %"$to_bystr_a_102", align 1
  %"$$to_bystr_a_102_104" = bitcast [2 x i8]* %"$to_bystr_a_102" to i8*
  %"$to_bystr_call_105" = call %Bystr @_to_bystr(i8* %"$execptr_load_101", i32 2, i8* %"$$to_bystr_a_102_104"), !dbg !14
  store %Bystr %"$to_bystr_call_105", %Bystr* %ab, align 8, !dbg !14
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_99"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %ab_ = alloca %Bystr, align 8
  %"$execptr_load_111" = load i8*, i8** @_execptr, align 8
  %"$ab_112" = load %Bystr, %Bystr* %ab, align 8
  %"$strrev_call_113" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_111", %Bystr %"$ab_112"), !dbg !15
  store %Bystr %"$strrev_call_113", %Bystr* %ab_, align 8, !dbg !15
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_109"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %aab = alloca %Bystr, align 8
  %"$execptr_load_119" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_aa_120" = alloca [5 x i8], align 1
  %"$aa_121" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_121", [5 x i8]* %"$to_bystr_aa_120", align 1
  %"$$to_bystr_aa_120_122" = bitcast [5 x i8]* %"$to_bystr_aa_120" to i8*
  %"$to_bystr_call_123" = call %Bystr @_to_bystr(i8* %"$execptr_load_119", i32 5, i8* %"$$to_bystr_aa_120_122"), !dbg !16
  store %Bystr %"$to_bystr_call_123", %Bystr* %aab, align 8, !dbg !16
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_117"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %aab_ = alloca %Bystr, align 8
  %"$execptr_load_129" = load i8*, i8** @_execptr, align 8
  %"$aab_130" = load %Bystr, %Bystr* %aab, align 8
  %"$strrev_call_131" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_129", %Bystr %"$aab_130"), !dbg !17
  store %Bystr %"$strrev_call_131", %Bystr* %aab_, align 8, !dbg !17
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_127"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_142", i32 0, i32 0), i32 5 }, %String* %s, align 8, !dbg !18
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_140"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %s_ = alloca %String, align 8
  %"$execptr_load_148" = load i8*, i8** @_execptr, align 8
  %"$s_149" = load %String, %String* %s, align 8
  %"$strrev_call_150" = call %String @_strrev_String(i8* %"$execptr_load_148", %String %"$s_149"), !dbg !19
  store %String %"$strrev_call_150", %String* %s_, align 8, !dbg !19
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_146"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %res1 = alloca [7 x i8], align 1
  %"$execptr_load_156" = load i8*, i8** @_execptr, align 8
  %"$concat_a__157" = alloca [2 x i8], align 1
  %"$a__158" = load [2 x i8], [2 x i8]* %a_, align 1
  store [2 x i8] %"$a__158", [2 x i8]* %"$concat_a__157", align 1
  %"$$concat_a__157_159" = bitcast [2 x i8]* %"$concat_a__157" to i8*
  %"$concat_aa__160" = alloca [5 x i8], align 1
  %"$aa__161" = load [5 x i8], [5 x i8]* %aa_, align 1
  store [5 x i8] %"$aa__161", [5 x i8]* %"$concat_aa__160", align 1
  %"$$concat_aa__160_162" = bitcast [5 x i8]* %"$concat_aa__160" to i8*
  %"$concat_call_163" = call i8* @_concat_ByStrX(i8* %"$execptr_load_156", i32 2, i8* %"$$concat_a__157_159", i32 5, i8* %"$$concat_aa__160_162"), !dbg !20
  %"$concat_164" = bitcast i8* %"$concat_call_163" to [7 x i8]*
  %"$concat_165" = load [7 x i8], [7 x i8]* %"$concat_164", align 1
  store [7 x i8] %"$concat_165", [7 x i8]* %res1, align 1, !dbg !20
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_154"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %res2 = alloca %Bystr, align 8
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$ab__172" = load %Bystr, %Bystr* %ab_, align 8
  %"$aab__173" = load %Bystr, %Bystr* %aab_, align 8
  %"$concat_call_174" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_171", %Bystr %"$ab__172", %Bystr %"$aab__173"), !dbg !21
  store %Bystr %"$concat_call_174", %Bystr* %res2, align 8, !dbg !21
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_169"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %res1_ = alloca %Bystr, align 8
  %"$execptr_load_180" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_res1_181" = alloca [7 x i8], align 1
  %"$res1_182" = load [7 x i8], [7 x i8]* %res1, align 1
  store [7 x i8] %"$res1_182", [7 x i8]* %"$to_bystr_res1_181", align 1
  %"$$to_bystr_res1_181_183" = bitcast [7 x i8]* %"$to_bystr_res1_181" to i8*
  %"$to_bystr_call_184" = call %Bystr @_to_bystr(i8* %"$execptr_load_180", i32 7, i8* %"$$to_bystr_res1_181_183"), !dbg !22
  store %Bystr %"$to_bystr_call_184", %Bystr* %res1_, align 8, !dbg !22
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_178"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %res3 = alloca %Bystr, align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$res1__191" = load %Bystr, %Bystr* %res1_, align 8
  %"$res2_192" = load %Bystr, %Bystr* %res2, align 8
  %"$concat_call_193" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_190", %Bystr %"$res1__191", %Bystr %"$res2_192"), !dbg !23
  store %Bystr %"$concat_call_193", %Bystr* %res3, align 8, !dbg !23
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_188"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$res3_199" = load %Bystr, %Bystr* %res3, align 8
  %"$s__200" = load %String, %String* %s_, align 8
  %"$adtval_201_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_201_salloc" = call i8* @_salloc(i8* %"$adtval_201_load", i64 33)
  %"$adtval_201" = bitcast i8* %"$adtval_201_salloc" to %CName_Pair_ByStr_String*
  %"$adtgep_202" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_201", i32 0, i32 0
  store i8 0, i8* %"$adtgep_202", align 1
  %"$adtgep_203" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_201", i32 0, i32 1
  store %Bystr %"$res3_199", %Bystr* %"$adtgep_203", align 8
  %"$adtgep_204" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_201", i32 0, i32 2
  store %String %"$s__200", %String* %"$adtgep_204", align 8
  %"$adtptr_205" = bitcast %CName_Pair_ByStr_String* %"$adtval_201" to %TName_Pair_ByStr_String*
  store %TName_Pair_ByStr_String* %"$adtptr_205", %TName_Pair_ByStr_String** %"$expr_0", align 8, !dbg !24
  %"$$expr_0_206" = load %TName_Pair_ByStr_String*, %TName_Pair_ByStr_String** %"$expr_0", align 8
  ret %TName_Pair_ByStr_String* %"$$expr_0_206"
}

declare void @_out_of_gas()

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
  %"$exprval_207" = call %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_208" = bitcast %TName_Pair_ByStr_String* %"$exprval_207" to i8*
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_209", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_39", i8* %"$memvoidcast_208")
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
