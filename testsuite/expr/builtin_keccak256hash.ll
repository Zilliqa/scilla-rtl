; let s = "hello" in
; let h1 = builtin keccak256hash s in
; let h2 = builtin keccak256hash h1 in
; let sh = Pair {String ByStr32} s h2 in
; let sh2 = builtin keccak256hash sh in
; let bystr1 = builtin to_bystr sh2 in
; let i4 = Int32 4 in
; let p2 = Pair {ByStr Int32} bystr1 i4 in
; builtin keccak256hash p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_264" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_265" = type { %ParamDescrString, i32, %"$ParamDescr_264"* }
%String = type { i8*, i32 }
%TName_Pair_String_ByStr32 = type { i8, %CName_Pair_String_ByStr32* }
%CName_Pair_String_ByStr32 = type <{ i8, %String, [32 x i8] }>
%Bystr = type { i8*, i32 }
%TName_Pair_ByStr_Int32 = type { i8, %CName_Pair_ByStr_Int32* }
%CName_Pair_ByStr_Int32 = type <{ i8, %Bystr, %Int32 }>

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
@"$TyDescr_Bystr32_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 32 }
@"$TyDescr_Bystr32_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr32_Prim_36" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_Int32_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr32_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_Pair_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_60", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_38"*], [2 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_ADT_Pair_48" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_49"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_46" }
@"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_53" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_37"]
@"$TyDescr_ADT_Pair_54" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_54", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_55"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_37"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_46" }
@"$TyDescr_Pair_ADTTyp_m_specls_59" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_52", %"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Pair_60" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_101" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_42", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_264"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_265"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 5, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 5
  store i64 %"$consume_65", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 8, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 8
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 196, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 196
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 20, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 20
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 12, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 12
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 2, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 2
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal void @_scilla_expr_fun(i8* %0, [32 x i8]* %1) {
entry:
  %"$expr_6" = alloca [32 x i8], align 1
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_101", i32 0, i32 0), i32 5 }, %String* %s, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_99"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  %"$_literal_cost_s_107" = alloca %String, align 8
  %"$s_108" = load %String, %String* %s, align 8
  store %String %"$s_108", %String* %"$_literal_cost_s_107", align 8
  %"$$_literal_cost_s_107_109" = bitcast %String* %"$_literal_cost_s_107" to i8*
  %"$_literal_cost_call_110" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_s_107_109")
  %"$gasadd_111" = add i64 %"$_literal_cost_call_110", 0
  %"$gasdivceil_112" = urem i64 %"$gasadd_111", 2040
  %"$gasdivceil_113" = udiv i64 %"$gasadd_111", 2040
  %"$gasdivceil_114" = icmp eq i64 %"$gasdivceil_112", 0
  %"$gasdivceil_115" = add i64 %"$gasdivceil_113", 1
  %"$gasdivceil_116" = select i1 %"$gasdivceil_114", i64 %"$gasdivceil_113", i64 %"$gasdivceil_115"
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 %"$gasdivceil_116", %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_105"
  %"$consume_121" = sub i64 %"$gasrem_117", %"$gasdivceil_116"
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$execptr_load_122" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_s_123" = alloca %String, align 8
  %"$s_124" = load %String, %String* %s, align 8
  store %String %"$s_124", %String* %"$keccak256hash_s_123", align 8
  %"$$keccak256hash_s_123_125" = bitcast %String* %"$keccak256hash_s_123" to i8*
  %"$keccak256hash_call_126" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_122", %_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$keccak256hash_s_123_125")
  %"$keccak256hash_128" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_126", align 1
  store [32 x i8] %"$keccak256hash_128", [32 x i8]* %h1, align 1
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_120"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  %"$_literal_cost_h1_134" = alloca [32 x i8], align 1
  %"$h1_135" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_135", [32 x i8]* %"$_literal_cost_h1_134", align 1
  %"$$_literal_cost_h1_134_136" = bitcast [32 x i8]* %"$_literal_cost_h1_134" to i8*
  %"$_literal_cost_call_137" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_37", i8* %"$$_literal_cost_h1_134_136")
  %"$gasadd_138" = add i64 %"$_literal_cost_call_137", 0
  %"$gasdivceil_139" = urem i64 %"$gasadd_138", 2040
  %"$gasdivceil_140" = udiv i64 %"$gasadd_138", 2040
  %"$gasdivceil_141" = icmp eq i64 %"$gasdivceil_139", 0
  %"$gasdivceil_142" = add i64 %"$gasdivceil_140", 1
  %"$gasdivceil_143" = select i1 %"$gasdivceil_141", i64 %"$gasdivceil_140", i64 %"$gasdivceil_142"
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 %"$gasdivceil_143", %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_132"
  %"$consume_148" = sub i64 %"$gasrem_144", %"$gasdivceil_143"
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$execptr_load_149" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_h1_150" = alloca [32 x i8], align 1
  %"$h1_151" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_151", [32 x i8]* %"$keccak256hash_h1_150", align 1
  %"$$keccak256hash_h1_150_152" = bitcast [32 x i8]* %"$keccak256hash_h1_150" to i8*
  %"$keccak256hash_call_153" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_149", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_37", i8* %"$$keccak256hash_h1_150_152")
  %"$keccak256hash_155" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_153", align 1
  store [32 x i8] %"$keccak256hash_155", [32 x i8]* %h2, align 1
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_147"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %sh = alloca %TName_Pair_String_ByStr32*, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %"$s_166" = load %String, %String* %s, align 8
  %"$h2_167" = load [32 x i8], [32 x i8]* %h2, align 1
  %"$adtval_168_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_168_salloc" = call i8* @_salloc(i8* %"$adtval_168_load", i64 49)
  %"$adtval_168" = bitcast i8* %"$adtval_168_salloc" to %CName_Pair_String_ByStr32*
  %"$adtgep_169" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_168", i32 0, i32 0
  store i8 0, i8* %"$adtgep_169", align 1
  %"$adtgep_170" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_168", i32 0, i32 1
  store %String %"$s_166", %String* %"$adtgep_170", align 8
  %"$adtgep_171" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_168", i32 0, i32 2
  store [32 x i8] %"$h2_167", [32 x i8]* %"$adtgep_171", align 1
  %"$adtptr_172" = bitcast %CName_Pair_String_ByStr32* %"$adtval_168" to %TName_Pair_String_ByStr32*
  store %TName_Pair_String_ByStr32* %"$adtptr_172", %TName_Pair_String_ByStr32** %sh, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_164"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %sh2 = alloca [32 x i8], align 1
  %"$sh_178" = load %TName_Pair_String_ByStr32*, %TName_Pair_String_ByStr32** %sh, align 8
  %"$$sh_178_179" = bitcast %TName_Pair_String_ByStr32* %"$sh_178" to i8*
  %"$_literal_cost_call_180" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_42", i8* %"$$sh_178_179")
  %"$gasadd_181" = add i64 %"$_literal_cost_call_180", 0
  %"$gasdivceil_182" = urem i64 %"$gasadd_181", 2040
  %"$gasdivceil_183" = udiv i64 %"$gasadd_181", 2040
  %"$gasdivceil_184" = icmp eq i64 %"$gasdivceil_182", 0
  %"$gasdivceil_185" = add i64 %"$gasdivceil_183", 1
  %"$gasdivceil_186" = select i1 %"$gasdivceil_184", i64 %"$gasdivceil_183", i64 %"$gasdivceil_185"
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 %"$gasdivceil_186", %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_176"
  %"$consume_191" = sub i64 %"$gasrem_187", %"$gasdivceil_186"
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$sh_193" = load %TName_Pair_String_ByStr32*, %TName_Pair_String_ByStr32** %sh, align 8
  %"$$sh_193_194" = bitcast %TName_Pair_String_ByStr32* %"$sh_193" to i8*
  %"$keccak256hash_call_195" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_192", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_42", i8* %"$$sh_193_194")
  %"$keccak256hash_197" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_195", align 1
  store [32 x i8] %"$keccak256hash_197", [32 x i8]* %sh2, align 1
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_190"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %bystr1 = alloca %Bystr, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 32, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_201"
  %"$consume_207" = sub i64 %"$gasrem_203", 32
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$execptr_load_208" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_sh2_209" = alloca [32 x i8], align 1
  %"$sh2_210" = load [32 x i8], [32 x i8]* %sh2, align 1
  store [32 x i8] %"$sh2_210", [32 x i8]* %"$to_bystr_sh2_209", align 1
  %"$$to_bystr_sh2_209_211" = bitcast [32 x i8]* %"$to_bystr_sh2_209" to i8*
  %"$to_bystr_call_212" = call %Bystr @_to_bystr(i8* %"$execptr_load_208", i32 32, i8* %"$$to_bystr_sh2_209_211")
  store %Bystr %"$to_bystr_call_212", %Bystr* %bystr1, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_206"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %i4 = alloca %Int32, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* %i4, align 4
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr_Int32*, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$bystr1_233" = load %Bystr, %Bystr* %bystr1, align 8
  %"$i4_234" = load %Int32, %Int32* %i4, align 4
  %"$adtval_235_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_235_salloc" = call i8* @_salloc(i8* %"$adtval_235_load", i64 21)
  %"$adtval_235" = bitcast i8* %"$adtval_235_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_236" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_235", i32 0, i32 0
  store i8 0, i8* %"$adtgep_236", align 1
  %"$adtgep_237" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_235", i32 0, i32 1
  store %Bystr %"$bystr1_233", %Bystr* %"$adtgep_237", align 8
  %"$adtgep_238" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_235", i32 0, i32 2
  store %Int32 %"$i4_234", %Int32* %"$adtgep_238", align 4
  %"$adtptr_239" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_235" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_239", %TName_Pair_ByStr_Int32** %p2, align 8
  %"$p2_240" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_240_241" = bitcast %TName_Pair_ByStr_Int32* %"$p2_240" to i8*
  %"$_literal_cost_call_242" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_41", i8* %"$$p2_240_241")
  %"$gasadd_243" = add i64 %"$_literal_cost_call_242", 0
  %"$gasdivceil_244" = urem i64 %"$gasadd_243", 2040
  %"$gasdivceil_245" = udiv i64 %"$gasadd_243", 2040
  %"$gasdivceil_246" = icmp eq i64 %"$gasdivceil_244", 0
  %"$gasdivceil_247" = add i64 %"$gasdivceil_245", 1
  %"$gasdivceil_248" = select i1 %"$gasdivceil_246", i64 %"$gasdivceil_245", i64 %"$gasdivceil_247"
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 %"$gasdivceil_248", %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_231"
  %"$consume_253" = sub i64 %"$gasrem_249", %"$gasdivceil_248"
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$p2_255" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_255_256" = bitcast %TName_Pair_ByStr_Int32* %"$p2_255" to i8*
  %"$keccak256hash_call_257" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_254", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_41", i8* %"$$p2_255_256")
  %"$keccak256hash_259" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_257", align 1
  store [32 x i8] %"$keccak256hash_259", [32 x i8]* %"$expr_6", align 1
  %"$$expr_6_260" = load [32 x i8], [32 x i8]* %"$expr_6", align 1
  store [32 x i8] %"$$expr_6_260", [32 x i8]* %1, align 1
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [32 x i8]* @_keccak256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_261" = alloca [32 x i8], align 1
  %"$memvoidcast_262" = bitcast [32 x i8]* %"$mainval_261" to i8*
  call void @_scilla_expr_fun(i8* null, [32 x i8]* %"$mainval_261")
  %"$execptr_load_263" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_263", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_37", i8* %"$memvoidcast_262")
  ret void
}
