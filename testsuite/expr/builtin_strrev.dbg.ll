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

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_339" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_340" = type { %ParamDescrString, i32, %"$ParamDescr_339"* }
%TName_Pair_ByStr_String = type { i8, %CName_Pair_ByStr_String* }
%CName_Pair_ByStr_String = type <{ i8, %Bystr, %String }>
%Bystr = type { i8*, i32 }
%String = type { i8*, i32 }

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
@"$TyDescr_Bystr7_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 7 }
@"$TyDescr_Bystr7_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr7_Prim_36" to i8*) }
@"$TyDescr_Bystr5_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 5 }
@"$TyDescr_Bystr5_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr5_Prim_38" to i8*) }
@"$TyDescr_Bystr2_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_40" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_String_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_Pair_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_57", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_42"*], [1 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Pair_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_String_Constr_m_args_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_ADT_Pair_51" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_String_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_51", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_String_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_ByStr_String_ADTTyp_Constr_52"]
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_49" }
@"$TyDescr_Pair_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_55"]
@"$TyDescr_ADT_Pair_57" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_224" = unnamed_addr constant [5 x i8] c"Hello"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_45", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr5_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr7_37", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_339"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_340"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 5, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 5
  store i64 %"$consume_62", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 8, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 8
  store i64 %"$consume_67", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 196, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 196
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 20, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 20
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 12, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 12
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 2, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 2
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_6" = alloca %TName_Pair_ByStr_String*, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %a = alloca [2 x i8], align 1
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\CC", [2 x i8]* %a, align 1, !dbg !11
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %a_ = alloca [2 x i8], align 1
  %"$_literal_cost_a_103" = alloca [2 x i8], align 1
  %"$a_104" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_104", [2 x i8]* %"$_literal_cost_a_103", align 1
  %"$$_literal_cost_a_103_105" = bitcast [2 x i8]* %"$_literal_cost_a_103" to i8*
  %"$_literal_cost_call_106" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr2_41", i8* %"$$_literal_cost_a_103_105")
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 %"$_literal_cost_call_106", %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_101"
  %"$consume_111" = sub i64 %"$gasrem_107", %"$_literal_cost_call_106"
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  %"$strrev_a_113" = alloca [2 x i8], align 1
  %"$a_114" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_114", [2 x i8]* %"$strrev_a_113", align 1
  %"$$strrev_a_113_115" = bitcast [2 x i8]* %"$strrev_a_113" to i8*
  %"$strrev_call_116" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_112", i32 2, i8* %"$$strrev_a_113_115"), !dbg !12
  %"$strrev_117" = bitcast i8* %"$strrev_call_116" to [2 x i8]*
  %"$strrev_118" = load [2 x i8], [2 x i8]* %"$strrev_117", align 1
  store [2 x i8] %"$strrev_118", [2 x i8]* %a_, align 1, !dbg !12
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_110"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %aa = alloca [5 x i8], align 1
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store [5 x i8] c"\AA\AA\AA\AA\BB", [5 x i8]* %aa, align 1, !dbg !13
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %aa_ = alloca [5 x i8], align 1
  %"$_literal_cost_aa_134" = alloca [5 x i8], align 1
  %"$aa_135" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_135", [5 x i8]* %"$_literal_cost_aa_134", align 1
  %"$$_literal_cost_aa_134_136" = bitcast [5 x i8]* %"$_literal_cost_aa_134" to i8*
  %"$_literal_cost_call_137" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr5_39", i8* %"$$_literal_cost_aa_134_136")
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
  %"$strrev_aa_144" = alloca [5 x i8], align 1
  %"$aa_145" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_145", [5 x i8]* %"$strrev_aa_144", align 1
  %"$$strrev_aa_144_146" = bitcast [5 x i8]* %"$strrev_aa_144" to i8*
  %"$strrev_call_147" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_143", i32 5, i8* %"$$strrev_aa_144_146"), !dbg !14
  %"$strrev_148" = bitcast i8* %"$strrev_call_147" to [5 x i8]*
  %"$strrev_149" = load [5 x i8], [5 x i8]* %"$strrev_148", align 1
  store [5 x i8] %"$strrev_149", [5 x i8]* %aa_, align 1, !dbg !14
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_141"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %ab = alloca %Bystr, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 2, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 2
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$execptr_load_160" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_a_161" = alloca [2 x i8], align 1
  %"$a_162" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_162", [2 x i8]* %"$to_bystr_a_161", align 1
  %"$$to_bystr_a_161_163" = bitcast [2 x i8]* %"$to_bystr_a_161" to i8*
  %"$to_bystr_call_164" = call %Bystr @_to_bystr(i8* %"$execptr_load_160", i32 2, i8* %"$$to_bystr_a_161_163"), !dbg !15
  store %Bystr %"$to_bystr_call_164", %Bystr* %ab, align 8, !dbg !15
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_158"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %ab_ = alloca %Bystr, align 8
  %"$_literal_cost_ab_170" = alloca %Bystr, align 8
  %"$ab_171" = load %Bystr, %Bystr* %ab, align 8
  store %Bystr %"$ab_171", %Bystr* %"$_literal_cost_ab_170", align 8
  %"$$_literal_cost_ab_170_172" = bitcast %Bystr* %"$_literal_cost_ab_170" to i8*
  %"$_literal_cost_call_173" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_ab_170_172")
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 %"$_literal_cost_call_173", %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_168"
  %"$consume_178" = sub i64 %"$gasrem_174", %"$_literal_cost_call_173"
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$execptr_load_179" = load i8*, i8** @_execptr, align 8
  %"$ab_180" = load %Bystr, %Bystr* %ab, align 8
  %"$strrev_call_181" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_179", %Bystr %"$ab_180"), !dbg !16
  store %Bystr %"$strrev_call_181", %Bystr* %ab_, align 8, !dbg !16
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_177"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %aab = alloca %Bystr, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 5, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 5
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_aa_193" = alloca [5 x i8], align 1
  %"$aa_194" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_194", [5 x i8]* %"$to_bystr_aa_193", align 1
  %"$$to_bystr_aa_193_195" = bitcast [5 x i8]* %"$to_bystr_aa_193" to i8*
  %"$to_bystr_call_196" = call %Bystr @_to_bystr(i8* %"$execptr_load_192", i32 5, i8* %"$$to_bystr_aa_193_195"), !dbg !17
  store %Bystr %"$to_bystr_call_196", %Bystr* %aab, align 8, !dbg !17
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_190"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %aab_ = alloca %Bystr, align 8
  %"$_literal_cost_aab_202" = alloca %Bystr, align 8
  %"$aab_203" = load %Bystr, %Bystr* %aab, align 8
  store %Bystr %"$aab_203", %Bystr* %"$_literal_cost_aab_202", align 8
  %"$$_literal_cost_aab_202_204" = bitcast %Bystr* %"$_literal_cost_aab_202" to i8*
  %"$_literal_cost_call_205" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_aab_202_204")
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 %"$_literal_cost_call_205", %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_200"
  %"$consume_210" = sub i64 %"$gasrem_206", %"$_literal_cost_call_205"
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$aab_212" = load %Bystr, %Bystr* %aab, align 8
  %"$strrev_call_213" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_211", %Bystr %"$aab_212"), !dbg !18
  store %Bystr %"$strrev_call_213", %Bystr* %aab_, align 8, !dbg !18
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_209"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_224", i32 0, i32 0), i32 5 }, %String* %s, align 8, !dbg !19
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_222"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %s_ = alloca %String, align 8
  %"$_literal_cost_s_230" = alloca %String, align 8
  %"$s_231" = load %String, %String* %s, align 8
  store %String %"$s_231", %String* %"$_literal_cost_s_230", align 8
  %"$$_literal_cost_s_230_232" = bitcast %String* %"$_literal_cost_s_230" to i8*
  %"$_literal_cost_call_233" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_s_230_232")
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 %"$_literal_cost_call_233", %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_228"
  %"$consume_238" = sub i64 %"$gasrem_234", %"$_literal_cost_call_233"
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$s_240" = load %String, %String* %s, align 8
  %"$strrev_call_241" = call %String @_strrev_String(i8* %"$execptr_load_239", %String %"$s_240"), !dbg !20
  store %String %"$strrev_call_241", %String* %s_, align 8, !dbg !20
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_237"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %res1 = alloca [7 x i8], align 1
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 7, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 7
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$concat_a__253" = alloca [2 x i8], align 1
  %"$a__254" = load [2 x i8], [2 x i8]* %a_, align 1
  store [2 x i8] %"$a__254", [2 x i8]* %"$concat_a__253", align 1
  %"$$concat_a__253_255" = bitcast [2 x i8]* %"$concat_a__253" to i8*
  %"$concat_aa__256" = alloca [5 x i8], align 1
  %"$aa__257" = load [5 x i8], [5 x i8]* %aa_, align 1
  store [5 x i8] %"$aa__257", [5 x i8]* %"$concat_aa__256", align 1
  %"$$concat_aa__256_258" = bitcast [5 x i8]* %"$concat_aa__256" to i8*
  %"$concat_call_259" = call i8* @_concat_ByStrX(i8* %"$execptr_load_252", i32 2, i8* %"$$concat_a__253_255", i32 5, i8* %"$$concat_aa__256_258"), !dbg !21
  %"$concat_260" = bitcast i8* %"$concat_call_259" to [7 x i8]*
  %"$concat_261" = load [7 x i8], [7 x i8]* %"$concat_260", align 1
  store [7 x i8] %"$concat_261", [7 x i8]* %res1, align 1, !dbg !21
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_250"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %res2 = alloca %Bystr, align 8
  %"$_literal_cost_ab__267" = alloca %Bystr, align 8
  %"$ab__268" = load %Bystr, %Bystr* %ab_, align 8
  store %Bystr %"$ab__268", %Bystr* %"$_literal_cost_ab__267", align 8
  %"$$_literal_cost_ab__267_269" = bitcast %Bystr* %"$_literal_cost_ab__267" to i8*
  %"$_literal_cost_call_270" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_ab__267_269")
  %"$_literal_cost_aab__271" = alloca %Bystr, align 8
  %"$aab__272" = load %Bystr, %Bystr* %aab_, align 8
  store %Bystr %"$aab__272", %Bystr* %"$_literal_cost_aab__271", align 8
  %"$$_literal_cost_aab__271_273" = bitcast %Bystr* %"$_literal_cost_aab__271" to i8*
  %"$_literal_cost_call_274" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_aab__271_273")
  %"$gasadd_275" = add i64 %"$_literal_cost_call_270", %"$_literal_cost_call_274"
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 %"$gasadd_275", %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_265"
  %"$consume_280" = sub i64 %"$gasrem_276", %"$gasadd_275"
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$execptr_load_281" = load i8*, i8** @_execptr, align 8
  %"$ab__282" = load %Bystr, %Bystr* %ab_, align 8
  %"$aab__283" = load %Bystr, %Bystr* %aab_, align 8
  %"$concat_call_284" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_281", %Bystr %"$ab__282", %Bystr %"$aab__283"), !dbg !22
  store %Bystr %"$concat_call_284", %Bystr* %res2, align 8, !dbg !22
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_279"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %res1_ = alloca %Bystr, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 7, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 7
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_res1_296" = alloca [7 x i8], align 1
  %"$res1_297" = load [7 x i8], [7 x i8]* %res1, align 1
  store [7 x i8] %"$res1_297", [7 x i8]* %"$to_bystr_res1_296", align 1
  %"$$to_bystr_res1_296_298" = bitcast [7 x i8]* %"$to_bystr_res1_296" to i8*
  %"$to_bystr_call_299" = call %Bystr @_to_bystr(i8* %"$execptr_load_295", i32 7, i8* %"$$to_bystr_res1_296_298"), !dbg !23
  store %Bystr %"$to_bystr_call_299", %Bystr* %res1_, align 8, !dbg !23
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_293"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %res3 = alloca %Bystr, align 8
  %"$_literal_cost_res1__305" = alloca %Bystr, align 8
  %"$res1__306" = load %Bystr, %Bystr* %res1_, align 8
  store %Bystr %"$res1__306", %Bystr* %"$_literal_cost_res1__305", align 8
  %"$$_literal_cost_res1__305_307" = bitcast %Bystr* %"$_literal_cost_res1__305" to i8*
  %"$_literal_cost_call_308" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_res1__305_307")
  %"$_literal_cost_res2_309" = alloca %Bystr, align 8
  %"$res2_310" = load %Bystr, %Bystr* %res2, align 8
  store %Bystr %"$res2_310", %Bystr* %"$_literal_cost_res2_309", align 8
  %"$$_literal_cost_res2_309_311" = bitcast %Bystr* %"$_literal_cost_res2_309" to i8*
  %"$_literal_cost_call_312" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_res2_309_311")
  %"$gasadd_313" = add i64 %"$_literal_cost_call_308", %"$_literal_cost_call_312"
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 %"$gasadd_313", %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_303"
  %"$consume_318" = sub i64 %"$gasrem_314", %"$gasadd_313"
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$execptr_load_319" = load i8*, i8** @_execptr, align 8
  %"$res1__320" = load %Bystr, %Bystr* %res1_, align 8
  %"$res2_321" = load %Bystr, %Bystr* %res2, align 8
  %"$concat_call_322" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_319", %Bystr %"$res1__320", %Bystr %"$res2_321"), !dbg !24
  store %Bystr %"$concat_call_322", %Bystr* %res3, align 8, !dbg !24
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_317"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$res3_328" = load %Bystr, %Bystr* %res3, align 8
  %"$s__329" = load %String, %String* %s_, align 8
  %"$adtval_330_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_330_salloc" = call i8* @_salloc(i8* %"$adtval_330_load", i64 33)
  %"$adtval_330" = bitcast i8* %"$adtval_330_salloc" to %CName_Pair_ByStr_String*
  %"$adtgep_331" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_330", i32 0, i32 0
  store i8 0, i8* %"$adtgep_331", align 1
  %"$adtgep_332" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_330", i32 0, i32 1
  store %Bystr %"$res3_328", %Bystr* %"$adtgep_332", align 8
  %"$adtgep_333" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_330", i32 0, i32 2
  store %String %"$s__329", %String* %"$adtgep_333", align 8
  %"$adtptr_334" = bitcast %CName_Pair_ByStr_String* %"$adtval_330" to %TName_Pair_ByStr_String*
  store %TName_Pair_ByStr_String* %"$adtptr_334", %TName_Pair_ByStr_String** %"$expr_6", align 8, !dbg !25
  %"$$expr_6_335" = load %TName_Pair_ByStr_String*, %TName_Pair_ByStr_String** %"$expr_6", align 8
  ret %TName_Pair_ByStr_String* %"$$expr_6_335"
}

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
  %"$exprval_336" = call %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_337" = bitcast %TName_Pair_ByStr_String* %"$exprval_336" to i8*
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_338", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_45", i8* %"$memvoidcast_337")
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
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 9, scope: !10)
!12 = !DILocation(line: 2, column: 10, scope: !10)
!13 = !DILocation(line: 4, column: 10, scope: !10)
!14 = !DILocation(line: 5, column: 11, scope: !10)
!15 = !DILocation(line: 7, column: 10, scope: !10)
!16 = !DILocation(line: 8, column: 11, scope: !10)
!17 = !DILocation(line: 10, column: 11, scope: !10)
!18 = !DILocation(line: 11, column: 12, scope: !10)
!19 = !DILocation(line: 13, column: 15, scope: !10)
!20 = !DILocation(line: 14, column: 10, scope: !10)
!21 = !DILocation(line: 16, column: 12, scope: !10)
!22 = !DILocation(line: 17, column: 12, scope: !10)
!23 = !DILocation(line: 19, column: 13, scope: !10)
!24 = !DILocation(line: 20, column: 12, scope: !10)
!25 = !DILocation(line: 22, column: 1, scope: !10)
