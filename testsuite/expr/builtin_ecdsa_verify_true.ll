; let pk = 0x0301082cfed78124a15892da1887daff084669e7a2ed27119e71c20bda3a2e00dd in
; let msg_bs = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6 in
; let msg = builtin to_bystr msg_bs in
; let sign = 0x7133eff400b84935915c08ecd32e30b206d9e7b88d857a382fd14e10530f3056314970428c402f78ab96140318805bdbc94d87b0744cfba886c580bfcddb985e in
; builtin ecdsa_verify pk msg sign
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_165" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_166" = type { %ParamDescrString, i32, %"$ParamDescr_165"* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
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
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr64_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 64 }
@"$TyDescr_Bystr64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr64_Prim_36" to i8*) }
@"$TyDescr_Bystr32_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 32 }
@"$TyDescr_Bystr32_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr32_Prim_38" to i8*) }
@"$TyDescr_Bystr33_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 33 }
@"$TyDescr_Bystr33_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr33_Prim_40" to i8*) }
@"$TyDescr_ADT_Bool_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Bool_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_Bool_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_60", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_42"*], [1 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Bool_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_51" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_51", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_54" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_54", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Bool_True_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Bool_False_ADTTyp_Constr_55"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Bool_ADTTyp_49" }
@"$TyDescr_Bool_ADTTyp_m_specls_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Bool_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Bool_60" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_41", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_37", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_39", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_165"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_166"] zeroinitializer
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

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %TName_Bool*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %pk = alloca [33 x i8], align 1
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store [33 x i8] c"\03\01\08,\FE\D7\81$\A1X\92\DA\18\87\DA\FF\08Fi\E7\A2\ED'\11\9Eq\C2\0B\DA:.\00\DD", [33 x i8]* %pk, align 1
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %msg_bs = alloca [32 x i8], align 1
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  store [32 x i8] c"\B1\0E-Rv\12\07;&\EE\CD\FDq~j2\0C\F4KJ\FA\C2\B0s-\9F\CB\E2\B7\FA\0C\F6", [32 x i8]* %msg_bs, align 1
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %msg = alloca %Bystr, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 32, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 32
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$execptr_load_121" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_bs_122" = alloca [32 x i8], align 1
  %"$msg_bs_123" = load [32 x i8], [32 x i8]* %msg_bs, align 1
  store [32 x i8] %"$msg_bs_123", [32 x i8]* %"$to_bystr_msg_bs_122", align 1
  %"$$to_bystr_msg_bs_122_124" = bitcast [32 x i8]* %"$to_bystr_msg_bs_122" to i8*
  %"$to_bystr_call_125" = call %Bystr @_to_bystr(i8* %"$execptr_load_121", i32 32, i8* %"$$to_bystr_msg_bs_122_124")
  store %Bystr %"$to_bystr_call_125", %Bystr* %msg, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_119"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %sign = alloca [64 x i8], align 1
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store [64 x i8] c"q3\EF\F4\00\B8I5\91\\\08\EC\D3.0\B2\06\D9\E7\B8\8D\85z8/\D1N\10S\0F0V1IpB\8C@/x\AB\96\14\03\18\80[\DB\C9M\87\B0tL\FB\A8\86\C5\80\BF\CD\DB\98^", [64 x i8]* %sign, align 1
  %"$_literal_cost_msg_136" = alloca %Bystr, align 8
  %"$msg_137" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_137", %Bystr* %"$_literal_cost_msg_136", align 8
  %"$$_literal_cost_msg_136_138" = bitcast %Bystr* %"$_literal_cost_msg_136" to i8*
  %"$_literal_cost_call_139" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_msg_136_138")
  %"$gasadd_140" = add i64 %"$_literal_cost_call_139", 66
  %"$gasdivceil_141" = urem i64 %"$gasadd_140", 64
  %"$gasdivceil_142" = udiv i64 %"$gasadd_140", 64
  %"$gasdivceil_143" = icmp eq i64 %"$gasdivceil_141", 0
  %"$gasdivceil_144" = add i64 %"$gasdivceil_142", 1
  %"$gasdivceil_145" = select i1 %"$gasdivceil_143", i64 %"$gasdivceil_142", i64 %"$gasdivceil_144"
  %"$gasmul_146" = mul i64 15, %"$gasdivceil_145"
  %"$gasadd_147" = add i64 250, %"$gasmul_146"
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 %"$gasadd_147", %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_134"
  %"$consume_152" = sub i64 %"$gasrem_148", %"$gasadd_147"
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$ecdsa_verify_pk_154" = alloca [33 x i8], align 1
  %"$pk_155" = load [33 x i8], [33 x i8]* %pk, align 1
  store [33 x i8] %"$pk_155", [33 x i8]* %"$ecdsa_verify_pk_154", align 1
  %"$msg_156" = load %Bystr, %Bystr* %msg, align 8
  %"$ecdsa_verify_sign_157" = alloca [64 x i8], align 1
  %"$sign_158" = load [64 x i8], [64 x i8]* %sign, align 1
  store [64 x i8] %"$sign_158", [64 x i8]* %"$ecdsa_verify_sign_157", align 1
  %"$ecdsa_verify_call_159" = call %TName_Bool* @_ecdsa_verify(i8* %"$execptr_load_153", [33 x i8]* %"$ecdsa_verify_pk_154", %Bystr %"$msg_156", [64 x i8]* %"$ecdsa_verify_sign_157")
  store %TName_Bool* %"$ecdsa_verify_call_159", %TName_Bool** %"$expr_6", align 8
  %"$$expr_6_161" = load %TName_Bool*, %TName_Bool** %"$expr_6", align 8
  ret %TName_Bool* %"$$expr_6_161"
}

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_ecdsa_verify(i8*, [33 x i8]*, %Bystr, [64 x i8]*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_162" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_163" = bitcast %TName_Bool* %"$exprval_162" to i8*
  %"$execptr_load_164" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_164", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", i8* %"$memvoidcast_163")
  ret void
}
