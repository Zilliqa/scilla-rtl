; let i32_1 = Uint32 1 in
; let i64_1 = Uint64 1 in
; let i128_1 = Uint128 1 in
; let i256_1 = Uint256 1 in
; 
; let i256_4 = Int256 4 in
; let i256_m4 = Int256 -4 in
; 
; let a100 = BNum 100 in
; let a101 = builtin badd a100 i32_1 in
; let a102 = builtin badd a101 i64_1 in
; let a103 = builtin badd a102 i128_1 in
; let a104 = builtin badd a103 i256_1 in
; 
; let sub1 = builtin bsub a104 a100 in
; let res1 = builtin eq i256_4 sub1 in
; 
; 
; let sub2 = builtin bsub a100 a104 in
; let res2 = builtin eq i256_m4 sub2 in
; 
; andb res1 res2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_372" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_373" = type { %ParamDescrString, i32, %"$ParamDescr_372"* }
%"$$fundef_10_env_61" = type { %TName_Bool* }
%"$$fundef_8_env_62" = type {}
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%Uint128 = type { i128 }
%Uint256 = type { i256 }
%Int256 = type { i256 }
%BNumString = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_14" = global %"$TyDescrTy_PrimTyp_13" zeroinitializer
@"$TyDescr_Int32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int32_Prim_14" to i8*) }
@"$TyDescr_Uint32_Prim_16" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 0 }
@"$TyDescr_Uint32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint32_Prim_16" to i8*) }
@"$TyDescr_Int64_Prim_18" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 1 }
@"$TyDescr_Int64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int64_Prim_18" to i8*) }
@"$TyDescr_Uint64_Prim_20" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 1 }
@"$TyDescr_Uint64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint64_Prim_20" to i8*) }
@"$TyDescr_Int128_Prim_22" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 2 }
@"$TyDescr_Int128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int128_Prim_22" to i8*) }
@"$TyDescr_Uint128_Prim_24" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 2 }
@"$TyDescr_Uint128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint128_Prim_24" to i8*) }
@"$TyDescr_Int256_Prim_26" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 3 }
@"$TyDescr_Int256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int256_Prim_26" to i8*) }
@"$TyDescr_Uint256_Prim_28" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 3 }
@"$TyDescr_Uint256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint256_Prim_28" to i8*) }
@"$TyDescr_String_Prim_30" = global %"$TyDescrTy_PrimTyp_13" { i32 2, i32 0 }
@"$TyDescr_String_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_String_Prim_30" to i8*) }
@"$TyDescr_Bnum_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 3, i32 0 }
@"$TyDescr_Bnum_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bnum_Prim_32" to i8*) }
@"$TyDescr_Message_Prim_34" = global %"$TyDescrTy_PrimTyp_13" { i32 4, i32 0 }
@"$TyDescr_Message_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Message_Prim_34" to i8*) }
@"$TyDescr_Event_Prim_36" = global %"$TyDescrTy_PrimTyp_13" { i32 5, i32 0 }
@"$TyDescr_Event_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Event_Prim_36" to i8*) }
@"$TyDescr_Exception_Prim_38" = global %"$TyDescrTy_PrimTyp_13" { i32 6, i32 0 }
@"$TyDescr_Exception_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Exception_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_40" to i8*) }
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
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$BNumLit_212" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_372"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_373"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_10"(%"$$fundef_10_env_61"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_10_env_b_74" = getelementptr inbounds %"$$fundef_10_env_61", %"$$fundef_10_env_61"* %0, i32 0, i32 0
  %"$b_envload_75" = load %TName_Bool*, %TName_Bool** %"$$fundef_10_env_b_74", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_75", %TName_Bool** %b, align 8
  %"$retval_11" = alloca %TName_Bool*, align 8
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 2, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 2
  store i64 %"$consume_80", i64* @_gasrem, align 8
  %"$b_82" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_83" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_82", i32 0, i32 0
  %"$b_tag_84" = load i8, i8* %"$b_tag_83", align 1
  switch i8 %"$b_tag_84", label %"$empty_default_85" [
    i8 1, label %"$False_86"
    i8 0, label %"$True_96"
  ]

"$False_86":                                      ; preds = %"$have_gas_79"
  %"$b_87" = bitcast %TName_Bool* %"$b_82" to %CName_False*
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$False_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$False_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$adtval_93_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_93_salloc" = call i8* @_salloc(i8* %"$adtval_93_load", i64 1)
  %"$adtval_93" = bitcast i8* %"$adtval_93_salloc" to %CName_False*
  %"$adtgep_94" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_93", i32 0, i32 0
  store i8 1, i8* %"$adtgep_94", align 1
  %"$adtptr_95" = bitcast %CName_False* %"$adtval_93" to %TName_Bool*
  store %TName_Bool* %"$adtptr_95", %TName_Bool** %"$retval_11", align 8
  br label %"$matchsucc_81"

"$True_96":                                       ; preds = %"$have_gas_79"
  %"$b_97" = bitcast %TName_Bool* %"$b_82" to %CName_True*
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$True_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$True_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_11", align 8
  br label %"$matchsucc_81"

"$empty_default_85":                              ; preds = %"$have_gas_79"
  br label %"$matchsucc_81"

"$matchsucc_81":                                  ; preds = %"$have_gas_101", %"$have_gas_91", %"$empty_default_85"
  %"$$retval_11_103" = load %TName_Bool*, %TName_Bool** %"$retval_11", align 8
  ret %TName_Bool* %"$$retval_11_103"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_8"(%"$$fundef_8_env_62"* %0, %TName_Bool* %1) {
entry:
  %"$retval_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$$fundef_10_envp_68_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_10_envp_68_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_68_load", i64 8)
  %"$$fundef_10_envp_68" = bitcast i8* %"$$fundef_10_envp_68_salloc" to %"$$fundef_10_env_61"*
  %"$$fundef_10_env_voidp_70" = bitcast %"$$fundef_10_env_61"* %"$$fundef_10_envp_68" to i8*
  %"$$fundef_10_cloval_71" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_10_env_61"*, %TName_Bool*)* @"$fundef_10" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_10_env_voidp_70", 1
  %"$$fundef_10_env_b_72" = getelementptr inbounds %"$$fundef_10_env_61", %"$$fundef_10_env_61"* %"$$fundef_10_envp_68", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_10_env_b_72", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_10_cloval_71", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_9", align 8
  %"$$retval_9_73" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_9", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_9_73"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 5, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %entry
  %"$consume_108" = sub i64 %"$gasrem_104", 5
  store i64 %"$consume_108", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 7, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 7
  store i64 %"$consume_113", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_8_env_62"*, %TName_Bool*)* @"$fundef_8" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 196, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_117"
  %"$consume_126" = sub i64 %"$gasrem_122", 196
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 20, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 20
  store i64 %"$consume_131", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 12, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 12
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 2, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 2
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_12" = alloca %TName_Bool*, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %entry
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %i32_1 = alloca %Uint32, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i32_1, align 4
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %i64_1 = alloca %Uint64, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %i64_1, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %i128_1 = alloca %Uint128, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %i128_1, align 8
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %i256_1 = alloca %Uint256, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %i256_1, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %i256_4 = alloca %Int256, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  store %Int256 { i256 4 }, %Int256* %i256_4, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %i256_m4 = alloca %Int256, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  store %Int256 { i256 -4 }, %Int256* %i256_m4, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %a100 = alloca i8*, align 8
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_214" = call i8* @_new_bnum(i8* %"$execptr_load_213", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_212", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_214", i8** %a100, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_210"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %a101 = alloca i8*, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 32, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_219"
  %"$consume_225" = sub i64 %"$gasrem_221", 32
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$a100_227" = load i8*, i8** %a100, align 8
  %"$badd_i32_1_228" = alloca %Uint32, align 8
  %"$i32_1_229" = load %Uint32, %Uint32* %i32_1, align 4
  store %Uint32 %"$i32_1_229", %Uint32* %"$badd_i32_1_228", align 4
  %"$$badd_i32_1_228_230" = bitcast %Uint32* %"$badd_i32_1_228" to i8*
  %"$badd_call_231" = call i8* @_badd(i8* %"$execptr_load_226", i8* %"$a100_227", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", i8* %"$$badd_i32_1_228_230")
  store i8* %"$badd_call_231", i8** %a101, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_224"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %a102 = alloca i8*, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 32, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 32
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$execptr_load_243" = load i8*, i8** @_execptr, align 8
  %"$a101_244" = load i8*, i8** %a101, align 8
  %"$badd_i64_1_245" = alloca %Uint64, align 8
  %"$i64_1_246" = load %Uint64, %Uint64* %i64_1, align 8
  store %Uint64 %"$i64_1_246", %Uint64* %"$badd_i64_1_245", align 8
  %"$$badd_i64_1_245_247" = bitcast %Uint64* %"$badd_i64_1_245" to i8*
  %"$badd_call_248" = call i8* @_badd(i8* %"$execptr_load_243", i8* %"$a101_244", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", i8* %"$$badd_i64_1_245_247")
  store i8* %"$badd_call_248", i8** %a102, align 8
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_241"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %a103 = alloca i8*, align 8
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 32, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 32
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$execptr_load_260" = load i8*, i8** @_execptr, align 8
  %"$a102_261" = load i8*, i8** %a102, align 8
  %"$badd_i128_1_262" = alloca %Uint128, align 8
  %"$i128_1_263" = load %Uint128, %Uint128* %i128_1, align 8
  store %Uint128 %"$i128_1_263", %Uint128* %"$badd_i128_1_262", align 8
  %"$$badd_i128_1_262_264" = bitcast %Uint128* %"$badd_i128_1_262" to i8*
  %"$badd_call_265" = call i8* @_badd(i8* %"$execptr_load_260", i8* %"$a102_261", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", i8* %"$$badd_i128_1_262_264")
  store i8* %"$badd_call_265", i8** %a103, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_258"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %a104 = alloca i8*, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 32, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 32
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$execptr_load_277" = load i8*, i8** @_execptr, align 8
  %"$a103_278" = load i8*, i8** %a103, align 8
  %"$badd_i256_1_279" = alloca %Uint256, align 8
  %"$i256_1_280" = load %Uint256, %Uint256* %i256_1, align 8
  store %Uint256 %"$i256_1_280", %Uint256* %"$badd_i256_1_279", align 8
  %"$$badd_i256_1_279_281" = bitcast %Uint256* %"$badd_i256_1_279" to i8*
  %"$badd_call_282" = call i8* @_badd(i8* %"$execptr_load_277", i8* %"$a103_278", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", i8* %"$$badd_i256_1_279_281")
  store i8* %"$badd_call_282", i8** %a104, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_275"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %sub1 = alloca %Int256, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 32, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 32
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$execptr_load_294" = load i8*, i8** @_execptr, align 8
  %"$a104_295" = load i8*, i8** %a104, align 8
  %"$a100_296" = load i8*, i8** %a100, align 8
  %"$bsub_call_297" = call %Int256* @_bsub(i8* %"$execptr_load_294", i8* %"$a104_295", i8* %"$a100_296")
  %"$bsub_299" = load %Int256, %Int256* %"$bsub_call_297", align 8
  store %Int256 %"$bsub_299", %Int256* %sub1, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_292"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 16, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_303"
  %"$consume_310" = sub i64 %"$gasrem_306", 16
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$execptr_load_311" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_4_312" = alloca %Int256, align 8
  %"$i256_4_313" = load %Int256, %Int256* %i256_4, align 8
  store %Int256 %"$i256_4_313", %Int256* %"$eq_i256_4_312", align 8
  %"$eq_sub1_314" = alloca %Int256, align 8
  %"$sub1_315" = load %Int256, %Int256* %sub1, align 8
  store %Int256 %"$sub1_315", %Int256* %"$eq_sub1_314", align 8
  %"$eq_call_316" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_311", %Int256* %"$eq_i256_4_312", %Int256* %"$eq_sub1_314")
  store %TName_Bool* %"$eq_call_316", %TName_Bool** %res1, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_309"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %sub2 = alloca %Int256, align 8
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 32, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_321"
  %"$consume_327" = sub i64 %"$gasrem_323", 32
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$execptr_load_328" = load i8*, i8** @_execptr, align 8
  %"$a100_329" = load i8*, i8** %a100, align 8
  %"$a104_330" = load i8*, i8** %a104, align 8
  %"$bsub_call_331" = call %Int256* @_bsub(i8* %"$execptr_load_328", i8* %"$a100_329", i8* %"$a104_330")
  %"$bsub_333" = load %Int256, %Int256* %"$bsub_call_331", align 8
  store %Int256 %"$bsub_333", %Int256* %sub2, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_326"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 16, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_337"
  %"$consume_344" = sub i64 %"$gasrem_340", 16
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$execptr_load_345" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_m4_346" = alloca %Int256, align 8
  %"$i256_m4_347" = load %Int256, %Int256* %i256_m4, align 8
  store %Int256 %"$i256_m4_347", %Int256* %"$eq_i256_m4_346", align 8
  %"$eq_sub2_348" = alloca %Int256, align 8
  %"$sub2_349" = load %Int256, %Int256* %sub2, align 8
  store %Int256 %"$sub2_349", %Int256* %"$eq_sub2_348", align 8
  %"$eq_call_350" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_345", %Int256* %"$eq_i256_m4_346", %Int256* %"$eq_sub2_348")
  store %TName_Bool* %"$eq_call_350", %TName_Bool** %res2, align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_343"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %"$BoolUtils.andb_6" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_357" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_358" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_357", 0
  %"$BoolUtils.andb_envptr_359" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_357", 1
  %"$res1_360" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_361" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_358"(i8* %"$BoolUtils.andb_envptr_359", %TName_Bool* %"$res1_360")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_361", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$BoolUtils.andb_7" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_6_362" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_fptr_363" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_362", 0
  %"$$BoolUtils.andb_6_envptr_364" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_362", 1
  %"$res2_365" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_6_call_366" = call %TName_Bool* %"$$BoolUtils.andb_6_fptr_363"(i8* %"$$BoolUtils.andb_6_envptr_364", %TName_Bool* %"$res2_365")
  store %TName_Bool* %"$$BoolUtils.andb_6_call_366", %TName_Bool** %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_367" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_7", align 8
  store %TName_Bool* %"$$BoolUtils.andb_7_367", %TName_Bool** %"$expr_12", align 8
  %"$$expr_12_368" = load %TName_Bool*, %TName_Bool** %"$expr_12", align 8
  ret %TName_Bool* %"$$expr_12_368"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_badd(i8*, i8*, %_TyDescrTy_Typ*, i8*)

declare %Int256* @_bsub(i8*, i8*, i8*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_369" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_370" = bitcast %TName_Bool* %"$exprval_369" to i8*
  %"$execptr_load_371" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_371", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", i8* %"$memvoidcast_370")
  ret void
}
