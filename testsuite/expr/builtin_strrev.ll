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
%"$TyDescrTy_ADTTyp_45" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_44"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_44" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_46"**, %"$TyDescrTy_ADTTyp_45"* }
%"$TyDescrTy_ADTTyp_Constr_46" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_341" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_342" = type { %ParamDescrString, i32, %"$ParamDescr_341"* }
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
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr7_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 7 }
@"$TyDescr_Bystr7_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr7_Prim_38" to i8*) }
@"$TyDescr_Bystr5_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 5 }
@"$TyDescr_Bystr5_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr5_Prim_40" to i8*) }
@"$TyDescr_Bystr2_Prim_42" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_42" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_String_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_Pair_ADTTyp_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_59", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Pair_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_String_Constr_m_args_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_ADT_Pair_53" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_String_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_53", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_String_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Pair_Pair_ByStr_String_ADTTyp_Constr_54"]
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_46"*], [1 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Pair_ADTTyp_51" }
@"$TyDescr_Pair_ADTTyp_m_specls_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Pair_ByStr_String_ADTTyp_Specl_57"]
@"$TyDescr_ADT_Pair_59" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_226" = unnamed_addr constant [5 x i8] c"Hello"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr5_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr7_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_341"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_342"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 5, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 5
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 8, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 8
  store i64 %"$consume_69", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 196, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 196
  store i64 %"$consume_74", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 20, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 20
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 12, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 12
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 2, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 2
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %TName_Pair_ByStr_String*, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %a = alloca [2 x i8], align 1
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\CC", [2 x i8]* %a, align 1
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %a_ = alloca [2 x i8], align 1
  %"$_literal_cost_a_105" = alloca [2 x i8], align 1
  %"$a_106" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_106", [2 x i8]* %"$_literal_cost_a_105", align 1
  %"$$_literal_cost_a_105_107" = bitcast [2 x i8]* %"$_literal_cost_a_105" to i8*
  %"$_literal_cost_call_108" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr2_43", i8* %"$$_literal_cost_a_105_107")
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 %"$_literal_cost_call_108", %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_103"
  %"$consume_113" = sub i64 %"$gasrem_109", %"$_literal_cost_call_108"
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$execptr_load_114" = load i8*, i8** @_execptr, align 8
  %"$strrev_a_115" = alloca [2 x i8], align 1
  %"$a_116" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_116", [2 x i8]* %"$strrev_a_115", align 1
  %"$$strrev_a_115_117" = bitcast [2 x i8]* %"$strrev_a_115" to i8*
  %"$strrev_call_118" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_114", i32 2, i8* %"$$strrev_a_115_117")
  %"$strrev_119" = bitcast i8* %"$strrev_call_118" to [2 x i8]*
  %"$strrev_120" = load [2 x i8], [2 x i8]* %"$strrev_119", align 1
  store [2 x i8] %"$strrev_120", [2 x i8]* %a_, align 1
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_112"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %aa = alloca [5 x i8], align 1
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store [5 x i8] c"\AA\AA\AA\AA\BB", [5 x i8]* %aa, align 1
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %aa_ = alloca [5 x i8], align 1
  %"$_literal_cost_aa_136" = alloca [5 x i8], align 1
  %"$aa_137" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_137", [5 x i8]* %"$_literal_cost_aa_136", align 1
  %"$$_literal_cost_aa_136_138" = bitcast [5 x i8]* %"$_literal_cost_aa_136" to i8*
  %"$_literal_cost_call_139" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr5_41", i8* %"$$_literal_cost_aa_136_138")
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 %"$_literal_cost_call_139", %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_134"
  %"$consume_144" = sub i64 %"$gasrem_140", %"$_literal_cost_call_139"
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$execptr_load_145" = load i8*, i8** @_execptr, align 8
  %"$strrev_aa_146" = alloca [5 x i8], align 1
  %"$aa_147" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_147", [5 x i8]* %"$strrev_aa_146", align 1
  %"$$strrev_aa_146_148" = bitcast [5 x i8]* %"$strrev_aa_146" to i8*
  %"$strrev_call_149" = call i8* @_strrev_ByStrX(i8* %"$execptr_load_145", i32 5, i8* %"$$strrev_aa_146_148")
  %"$strrev_150" = bitcast i8* %"$strrev_call_149" to [5 x i8]*
  %"$strrev_151" = load [5 x i8], [5 x i8]* %"$strrev_150", align 1
  store [5 x i8] %"$strrev_151", [5 x i8]* %aa_, align 1
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_143"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %ab = alloca %Bystr, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 2, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 2
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$execptr_load_162" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_a_163" = alloca [2 x i8], align 1
  %"$a_164" = load [2 x i8], [2 x i8]* %a, align 1
  store [2 x i8] %"$a_164", [2 x i8]* %"$to_bystr_a_163", align 1
  %"$$to_bystr_a_163_165" = bitcast [2 x i8]* %"$to_bystr_a_163" to i8*
  %"$to_bystr_call_166" = call %Bystr @_to_bystr(i8* %"$execptr_load_162", i32 2, i8* %"$$to_bystr_a_163_165")
  store %Bystr %"$to_bystr_call_166", %Bystr* %ab, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_160"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %ab_ = alloca %Bystr, align 8
  %"$_literal_cost_ab_172" = alloca %Bystr, align 8
  %"$ab_173" = load %Bystr, %Bystr* %ab, align 8
  store %Bystr %"$ab_173", %Bystr* %"$_literal_cost_ab_172", align 8
  %"$$_literal_cost_ab_172_174" = bitcast %Bystr* %"$_literal_cost_ab_172" to i8*
  %"$_literal_cost_call_175" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_ab_172_174")
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 %"$_literal_cost_call_175", %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_170"
  %"$consume_180" = sub i64 %"$gasrem_176", %"$_literal_cost_call_175"
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$execptr_load_181" = load i8*, i8** @_execptr, align 8
  %"$ab_182" = load %Bystr, %Bystr* %ab, align 8
  %"$strrev_call_183" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_181", %Bystr %"$ab_182")
  store %Bystr %"$strrev_call_183", %Bystr* %ab_, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_179"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %aab = alloca %Bystr, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 5, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 5
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_aa_195" = alloca [5 x i8], align 1
  %"$aa_196" = load [5 x i8], [5 x i8]* %aa, align 1
  store [5 x i8] %"$aa_196", [5 x i8]* %"$to_bystr_aa_195", align 1
  %"$$to_bystr_aa_195_197" = bitcast [5 x i8]* %"$to_bystr_aa_195" to i8*
  %"$to_bystr_call_198" = call %Bystr @_to_bystr(i8* %"$execptr_load_194", i32 5, i8* %"$$to_bystr_aa_195_197")
  store %Bystr %"$to_bystr_call_198", %Bystr* %aab, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_192"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %aab_ = alloca %Bystr, align 8
  %"$_literal_cost_aab_204" = alloca %Bystr, align 8
  %"$aab_205" = load %Bystr, %Bystr* %aab, align 8
  store %Bystr %"$aab_205", %Bystr* %"$_literal_cost_aab_204", align 8
  %"$$_literal_cost_aab_204_206" = bitcast %Bystr* %"$_literal_cost_aab_204" to i8*
  %"$_literal_cost_call_207" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_aab_204_206")
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 %"$_literal_cost_call_207", %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_202"
  %"$consume_212" = sub i64 %"$gasrem_208", %"$_literal_cost_call_207"
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  %"$aab_214" = load %Bystr, %Bystr* %aab, align 8
  %"$strrev_call_215" = call %Bystr @_strrev_ByStr(i8* %"$execptr_load_213", %Bystr %"$aab_214")
  store %Bystr %"$strrev_call_215", %Bystr* %aab_, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_211"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_219"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_226", i32 0, i32 0), i32 5 }, %String* %s, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_224"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %s_ = alloca %String, align 8
  %"$_literal_cost_s_232" = alloca %String, align 8
  %"$s_233" = load %String, %String* %s, align 8
  store %String %"$s_233", %String* %"$_literal_cost_s_232", align 8
  %"$$_literal_cost_s_232_234" = bitcast %String* %"$_literal_cost_s_232" to i8*
  %"$_literal_cost_call_235" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_s_232_234")
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 %"$_literal_cost_call_235", %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_230"
  %"$consume_240" = sub i64 %"$gasrem_236", %"$_literal_cost_call_235"
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$execptr_load_241" = load i8*, i8** @_execptr, align 8
  %"$s_242" = load %String, %String* %s, align 8
  %"$strrev_call_243" = call %String @_strrev_String(i8* %"$execptr_load_241", %String %"$s_242")
  store %String %"$strrev_call_243", %String* %s_, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_239"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %res1 = alloca [7 x i8], align 1
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 7, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 7
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$concat_a__255" = alloca [2 x i8], align 1
  %"$a__256" = load [2 x i8], [2 x i8]* %a_, align 1
  store [2 x i8] %"$a__256", [2 x i8]* %"$concat_a__255", align 1
  %"$$concat_a__255_257" = bitcast [2 x i8]* %"$concat_a__255" to i8*
  %"$concat_aa__258" = alloca [5 x i8], align 1
  %"$aa__259" = load [5 x i8], [5 x i8]* %aa_, align 1
  store [5 x i8] %"$aa__259", [5 x i8]* %"$concat_aa__258", align 1
  %"$$concat_aa__258_260" = bitcast [5 x i8]* %"$concat_aa__258" to i8*
  %"$concat_call_261" = call i8* @_concat_ByStrX(i8* %"$execptr_load_254", i32 2, i8* %"$$concat_a__255_257", i32 5, i8* %"$$concat_aa__258_260")
  %"$concat_262" = bitcast i8* %"$concat_call_261" to [7 x i8]*
  %"$concat_263" = load [7 x i8], [7 x i8]* %"$concat_262", align 1
  store [7 x i8] %"$concat_263", [7 x i8]* %res1, align 1
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_252"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %res2 = alloca %Bystr, align 8
  %"$_literal_cost_ab__269" = alloca %Bystr, align 8
  %"$ab__270" = load %Bystr, %Bystr* %ab_, align 8
  store %Bystr %"$ab__270", %Bystr* %"$_literal_cost_ab__269", align 8
  %"$$_literal_cost_ab__269_271" = bitcast %Bystr* %"$_literal_cost_ab__269" to i8*
  %"$_literal_cost_call_272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_ab__269_271")
  %"$_literal_cost_aab__273" = alloca %Bystr, align 8
  %"$aab__274" = load %Bystr, %Bystr* %aab_, align 8
  store %Bystr %"$aab__274", %Bystr* %"$_literal_cost_aab__273", align 8
  %"$$_literal_cost_aab__273_275" = bitcast %Bystr* %"$_literal_cost_aab__273" to i8*
  %"$_literal_cost_call_276" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_aab__273_275")
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
  %"$ab__284" = load %Bystr, %Bystr* %ab_, align 8
  %"$aab__285" = load %Bystr, %Bystr* %aab_, align 8
  %"$concat_call_286" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_283", %Bystr %"$ab__284", %Bystr %"$aab__285")
  store %Bystr %"$concat_call_286", %Bystr* %res2, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_281"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %res1_ = alloca %Bystr, align 8
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 7, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 7
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$execptr_load_297" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_res1_298" = alloca [7 x i8], align 1
  %"$res1_299" = load [7 x i8], [7 x i8]* %res1, align 1
  store [7 x i8] %"$res1_299", [7 x i8]* %"$to_bystr_res1_298", align 1
  %"$$to_bystr_res1_298_300" = bitcast [7 x i8]* %"$to_bystr_res1_298" to i8*
  %"$to_bystr_call_301" = call %Bystr @_to_bystr(i8* %"$execptr_load_297", i32 7, i8* %"$$to_bystr_res1_298_300")
  store %Bystr %"$to_bystr_call_301", %Bystr* %res1_, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_295"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %res3 = alloca %Bystr, align 8
  %"$_literal_cost_res1__307" = alloca %Bystr, align 8
  %"$res1__308" = load %Bystr, %Bystr* %res1_, align 8
  store %Bystr %"$res1__308", %Bystr* %"$_literal_cost_res1__307", align 8
  %"$$_literal_cost_res1__307_309" = bitcast %Bystr* %"$_literal_cost_res1__307" to i8*
  %"$_literal_cost_call_310" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_res1__307_309")
  %"$_literal_cost_res2_311" = alloca %Bystr, align 8
  %"$res2_312" = load %Bystr, %Bystr* %res2, align 8
  store %Bystr %"$res2_312", %Bystr* %"$_literal_cost_res2_311", align 8
  %"$$_literal_cost_res2_311_313" = bitcast %Bystr* %"$_literal_cost_res2_311" to i8*
  %"$_literal_cost_call_314" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_res2_311_313")
  %"$gasadd_315" = add i64 %"$_literal_cost_call_310", %"$_literal_cost_call_314"
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 %"$gasadd_315", %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_305"
  %"$consume_320" = sub i64 %"$gasrem_316", %"$gasadd_315"
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$execptr_load_321" = load i8*, i8** @_execptr, align 8
  %"$res1__322" = load %Bystr, %Bystr* %res1_, align 8
  %"$res2_323" = load %Bystr, %Bystr* %res2, align 8
  %"$concat_call_324" = call %Bystr @_concat_ByStr(i8* %"$execptr_load_321", %Bystr %"$res1__322", %Bystr %"$res2_323")
  store %Bystr %"$concat_call_324", %Bystr* %res3, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_319"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$res3_330" = load %Bystr, %Bystr* %res3, align 8
  %"$s__331" = load %String, %String* %s_, align 8
  %"$adtval_332_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_332_salloc" = call i8* @_salloc(i8* %"$adtval_332_load", i64 33)
  %"$adtval_332" = bitcast i8* %"$adtval_332_salloc" to %CName_Pair_ByStr_String*
  %"$adtgep_333" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_332", i32 0, i32 0
  store i8 0, i8* %"$adtgep_333", align 1
  %"$adtgep_334" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_332", i32 0, i32 1
  store %Bystr %"$res3_330", %Bystr* %"$adtgep_334", align 8
  %"$adtgep_335" = getelementptr inbounds %CName_Pair_ByStr_String, %CName_Pair_ByStr_String* %"$adtval_332", i32 0, i32 2
  store %String %"$s__331", %String* %"$adtgep_335", align 8
  %"$adtptr_336" = bitcast %CName_Pair_ByStr_String* %"$adtval_332" to %TName_Pair_ByStr_String*
  store %TName_Pair_ByStr_String* %"$adtptr_336", %TName_Pair_ByStr_String** %"$expr_6", align 8
  %"$$expr_6_337" = load %TName_Pair_ByStr_String*, %TName_Pair_ByStr_String** %"$expr_6", align 8
  ret %TName_Pair_ByStr_String* %"$$expr_6_337"
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
  %"$exprval_338" = call %TName_Pair_ByStr_String* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_339" = bitcast %TName_Pair_ByStr_String* %"$exprval_338" to i8*
  %"$execptr_load_340" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_340", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_String_47", i8* %"$memvoidcast_339")
  ret void
}
