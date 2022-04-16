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
%"$TyDescrTy_ADTTyp_45" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_44"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_44" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_46"**, %"$TyDescrTy_ADTTyp_45"* }
%"$TyDescrTy_ADTTyp_Constr_46" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_374" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_375" = type { %ParamDescrString, i32, %"$ParamDescr_374"* }
%"$$fundef_10_env_63" = type { %TName_Bool* }
%"$$fundef_8_env_64" = type {}
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
@"$TyDescr_ReplicateContr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_ReplicateContr_Prim_40" to i8*) }
@"$TyDescr_Bystr_Prim_42" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_42" to i8*) }
@"$TyDescr_ADT_Bool_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_Bool_ADTTyp_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_62", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Bool_ADTTyp_m_specls_61", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_53" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_53", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_55" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_56" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_56", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_True_ADTTyp_Constr_54", %"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_False_ADTTyp_Constr_57"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_46"*], [2 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Bool_ADTTyp_51" }
@"$TyDescr_Bool_ADTTyp_m_specls_61" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_60"]
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$BNumLit_214" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_47", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_374"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_375"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_10"(%"$$fundef_10_env_63"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_10_env_b_76" = getelementptr inbounds %"$$fundef_10_env_63", %"$$fundef_10_env_63"* %0, i32 0, i32 0
  %"$b_envload_77" = load %TName_Bool*, %TName_Bool** %"$$fundef_10_env_b_76", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_77", %TName_Bool** %b, align 8
  %"$retval_11" = alloca %TName_Bool*, align 8
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 2, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %entry
  %"$consume_82" = sub i64 %"$gasrem_78", 2
  store i64 %"$consume_82", i64* @_gasrem, align 8
  %"$b_84" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_85" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_84", i32 0, i32 0
  %"$b_tag_86" = load i8, i8* %"$b_tag_85", align 1
  switch i8 %"$b_tag_86", label %"$empty_default_87" [
    i8 1, label %"$False_88"
    i8 0, label %"$True_98"
  ], !dbg !9

"$False_88":                                      ; preds = %"$have_gas_81"
  %"$b_89" = bitcast %TName_Bool* %"$b_84" to %CName_False*
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$False_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$False_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$adtval_95_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_95_salloc" = call i8* @_salloc(i8* %"$adtval_95_load", i64 1)
  %"$adtval_95" = bitcast i8* %"$adtval_95_salloc" to %CName_False*
  %"$adtgep_96" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_95", i32 0, i32 0
  store i8 1, i8* %"$adtgep_96", align 1
  %"$adtptr_97" = bitcast %CName_False* %"$adtval_95" to %TName_Bool*
  store %TName_Bool* %"$adtptr_97", %TName_Bool** %"$retval_11", align 8, !dbg !10
  br label %"$matchsucc_83"

"$True_98":                                       ; preds = %"$have_gas_81"
  %"$b_99" = bitcast %TName_Bool* %"$b_84" to %CName_True*
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$True_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$True_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_11", align 8, !dbg !13
  br label %"$matchsucc_83"

"$empty_default_87":                              ; preds = %"$have_gas_81"
  br label %"$matchsucc_83"

"$matchsucc_83":                                  ; preds = %"$have_gas_103", %"$have_gas_93", %"$empty_default_87"
  %"$$retval_11_105" = load %TName_Bool*, %TName_Bool** %"$retval_11", align 8
  ret %TName_Bool* %"$$retval_11_105"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_8"(%"$$fundef_8_env_64"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %entry
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %"$$fundef_10_envp_70_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_10_envp_70_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_70_load", i64 8)
  %"$$fundef_10_envp_70" = bitcast i8* %"$$fundef_10_envp_70_salloc" to %"$$fundef_10_env_63"*
  %"$$fundef_10_env_voidp_72" = bitcast %"$$fundef_10_env_63"* %"$$fundef_10_envp_70" to i8*
  %"$$fundef_10_cloval_73" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_10_env_63"*, %TName_Bool*)* @"$fundef_10" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_10_env_voidp_72", 1
  %"$$fundef_10_env_b_74" = getelementptr inbounds %"$$fundef_10_env_63", %"$$fundef_10_env_63"* %"$$fundef_10_envp_70", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_10_env_b_74", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_10_cloval_73", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_9", align 8, !dbg !16
  %"$$retval_9_75" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_9", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_9_75"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 5, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", 5
  store i64 %"$consume_110", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !19
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 7, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 7
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !19
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_8_env_64"*, %TName_Bool*)* @"$fundef_8" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !20
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 196, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_119"
  %"$consume_128" = sub i64 %"$gasrem_124", 196
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !19
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 20, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 20
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !19
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 12, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 12
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !19
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 2, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 2
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_12" = alloca %TName_Bool*, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %entry
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %i32_1 = alloca %Uint32, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i32_1, align 4, !dbg !22
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %i64_1 = alloca %Uint64, align 8
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %i64_1, align 8, !dbg !23
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %i128_1 = alloca %Uint128, align 8
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %i128_1, align 8, !dbg !24
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %i256_1 = alloca %Uint256, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %i256_1, align 8, !dbg !25
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %i256_4 = alloca %Int256, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  store %Int256 { i256 4 }, %Int256* %i256_4, align 8, !dbg !26
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %i256_m4 = alloca %Int256, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_197"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  store %Int256 { i256 -4 }, %Int256* %i256_m4, align 8, !dbg !27
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %a100 = alloca i8*, align 8
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_216" = call i8* @_new_bnum(i8* %"$execptr_load_215", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_214", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_216", i8** %a100, align 8, !dbg !28
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_212"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %a101 = alloca i8*, align 8
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 32, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 32
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %"$execptr_load_228" = load i8*, i8** @_execptr, align 8
  %"$a100_229" = load i8*, i8** %a100, align 8
  %"$badd_i32_1_230" = alloca %Uint32, align 8
  %"$i32_1_231" = load %Uint32, %Uint32* %i32_1, align 4
  store %Uint32 %"$i32_1_231", %Uint32* %"$badd_i32_1_230", align 4
  %"$$badd_i32_1_230_232" = bitcast %Uint32* %"$badd_i32_1_230" to i8*
  %"$badd_call_233" = call i8* @_badd(i8* %"$execptr_load_228", i8* %"$a100_229", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", i8* %"$$badd_i32_1_230_232"), !dbg !29
  store i8* %"$badd_call_233", i8** %a101, align 8, !dbg !29
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_226"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %a102 = alloca i8*, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 32, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 32
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$execptr_load_245" = load i8*, i8** @_execptr, align 8
  %"$a101_246" = load i8*, i8** %a101, align 8
  %"$badd_i64_1_247" = alloca %Uint64, align 8
  %"$i64_1_248" = load %Uint64, %Uint64* %i64_1, align 8
  store %Uint64 %"$i64_1_248", %Uint64* %"$badd_i64_1_247", align 8
  %"$$badd_i64_1_247_249" = bitcast %Uint64* %"$badd_i64_1_247" to i8*
  %"$badd_call_250" = call i8* @_badd(i8* %"$execptr_load_245", i8* %"$a101_246", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", i8* %"$$badd_i64_1_247_249"), !dbg !30
  store i8* %"$badd_call_250", i8** %a102, align 8, !dbg !30
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_243"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %a103 = alloca i8*, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 32, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 32
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$a102_263" = load i8*, i8** %a102, align 8
  %"$badd_i128_1_264" = alloca %Uint128, align 8
  %"$i128_1_265" = load %Uint128, %Uint128* %i128_1, align 8
  store %Uint128 %"$i128_1_265", %Uint128* %"$badd_i128_1_264", align 8
  %"$$badd_i128_1_264_266" = bitcast %Uint128* %"$badd_i128_1_264" to i8*
  %"$badd_call_267" = call i8* @_badd(i8* %"$execptr_load_262", i8* %"$a102_263", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", i8* %"$$badd_i128_1_264_266"), !dbg !31
  store i8* %"$badd_call_267", i8** %a103, align 8, !dbg !31
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_260"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %a104 = alloca i8*, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 32, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 32
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$execptr_load_279" = load i8*, i8** @_execptr, align 8
  %"$a103_280" = load i8*, i8** %a103, align 8
  %"$badd_i256_1_281" = alloca %Uint256, align 8
  %"$i256_1_282" = load %Uint256, %Uint256* %i256_1, align 8
  store %Uint256 %"$i256_1_282", %Uint256* %"$badd_i256_1_281", align 8
  %"$$badd_i256_1_281_283" = bitcast %Uint256* %"$badd_i256_1_281" to i8*
  %"$badd_call_284" = call i8* @_badd(i8* %"$execptr_load_279", i8* %"$a103_280", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", i8* %"$$badd_i256_1_281_283"), !dbg !32
  store i8* %"$badd_call_284", i8** %a104, align 8, !dbg !32
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_277"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %sub1 = alloca %Int256, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 32, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 32
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$a104_297" = load i8*, i8** %a104, align 8
  %"$a100_298" = load i8*, i8** %a100, align 8
  %"$bsub_call_299" = call %Int256* @_bsub(i8* %"$execptr_load_296", i8* %"$a104_297", i8* %"$a100_298"), !dbg !33
  %"$bsub_301" = load %Int256, %Int256* %"$bsub_call_299", align 8
  store %Int256 %"$bsub_301", %Int256* %sub1, align 8, !dbg !33
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_294"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 16, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_305"
  %"$consume_312" = sub i64 %"$gasrem_308", 16
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$execptr_load_313" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_4_314" = alloca %Int256, align 8
  %"$i256_4_315" = load %Int256, %Int256* %i256_4, align 8
  store %Int256 %"$i256_4_315", %Int256* %"$eq_i256_4_314", align 8
  %"$eq_sub1_316" = alloca %Int256, align 8
  %"$sub1_317" = load %Int256, %Int256* %sub1, align 8
  store %Int256 %"$sub1_317", %Int256* %"$eq_sub1_316", align 8
  %"$eq_call_318" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_313", %Int256* %"$eq_i256_4_314", %Int256* %"$eq_sub1_316"), !dbg !34
  store %TName_Bool* %"$eq_call_318", %TName_Bool** %res1, align 8, !dbg !34
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_311"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %sub2 = alloca %Int256, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 32, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 32
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$execptr_load_330" = load i8*, i8** @_execptr, align 8
  %"$a100_331" = load i8*, i8** %a100, align 8
  %"$a104_332" = load i8*, i8** %a104, align 8
  %"$bsub_call_333" = call %Int256* @_bsub(i8* %"$execptr_load_330", i8* %"$a100_331", i8* %"$a104_332"), !dbg !35
  %"$bsub_335" = load %Int256, %Int256* %"$bsub_call_333", align 8
  store %Int256 %"$bsub_335", %Int256* %sub2, align 8, !dbg !35
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_328"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 16, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_339"
  %"$consume_346" = sub i64 %"$gasrem_342", 16
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_m4_348" = alloca %Int256, align 8
  %"$i256_m4_349" = load %Int256, %Int256* %i256_m4, align 8
  store %Int256 %"$i256_m4_349", %Int256* %"$eq_i256_m4_348", align 8
  %"$eq_sub2_350" = alloca %Int256, align 8
  %"$sub2_351" = load %Int256, %Int256* %sub2, align 8
  store %Int256 %"$sub2_351", %Int256* %"$eq_sub2_350", align 8
  %"$eq_call_352" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_347", %Int256* %"$eq_i256_m4_348", %Int256* %"$eq_sub2_350"), !dbg !36
  store %TName_Bool* %"$eq_call_352", %TName_Bool** %res2, align 8, !dbg !36
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_345"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$BoolUtils.andb_6" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_359" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_360" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_359", 0
  %"$BoolUtils.andb_envptr_361" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_359", 1
  %"$res1_362" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_363" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_360"(i8* %"$BoolUtils.andb_envptr_361", %TName_Bool* %"$res1_362"), !dbg !37
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_363", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8, !dbg !37
  %"$BoolUtils.andb_7" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_6_364" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_fptr_365" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_364", 0
  %"$$BoolUtils.andb_6_envptr_366" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_364", 1
  %"$res2_367" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_6_call_368" = call %TName_Bool* %"$$BoolUtils.andb_6_fptr_365"(i8* %"$$BoolUtils.andb_6_envptr_366", %TName_Bool* %"$res2_367"), !dbg !37
  store %TName_Bool* %"$$BoolUtils.andb_6_call_368", %TName_Bool** %"$BoolUtils.andb_7", align 8, !dbg !37
  %"$$BoolUtils.andb_7_369" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_7", align 8
  store %TName_Bool* %"$$BoolUtils.andb_7_369", %TName_Bool** %"$expr_12", align 8, !dbg !37
  %"$$expr_12_370" = load %TName_Bool*, %TName_Bool** %"$expr_12", align 8
  ret %TName_Bool* %"$$expr_12_370"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_badd(i8*, i8*, %_TyDescrTy_Typ*, i8*)

declare %Int256* @_bsub(i8*, i8*, i8*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_371" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_372" = bitcast %TName_Bool* %"$exprval_371" to i8*
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_373", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_47", i8* %"$memvoidcast_372")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_baddsub.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 8, column: 5, scope: !4)
!10 = !DILocation(line: 9, column: 16, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !5, line: 9, column: 7)
!12 = distinct !DILexicalBlock(scope: !4, file: !5, line: 8, column: 5)
!13 = !DILocation(line: 10, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !5, line: 10, column: 7)
!15 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 0, scope: !17)
!20 = !DILocation(line: 7, column: 3, scope: !17)
!21 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 1, column: 13, scope: !21)
!23 = !DILocation(line: 2, column: 13, scope: !21)
!24 = !DILocation(line: 3, column: 14, scope: !21)
!25 = !DILocation(line: 4, column: 14, scope: !21)
!26 = !DILocation(line: 6, column: 14, scope: !21)
!27 = !DILocation(line: 7, column: 15, scope: !21)
!28 = !DILocation(line: 9, column: 12, scope: !21)
!29 = !DILocation(line: 10, column: 12, scope: !21)
!30 = !DILocation(line: 11, column: 12, scope: !21)
!31 = !DILocation(line: 12, column: 12, scope: !21)
!32 = !DILocation(line: 13, column: 12, scope: !21)
!33 = !DILocation(line: 15, column: 12, scope: !21)
!34 = !DILocation(line: 16, column: 12, scope: !21)
!35 = !DILocation(line: 19, column: 12, scope: !21)
!36 = !DILocation(line: 20, column: 12, scope: !21)
!37 = !DILocation(line: 22, column: 1, scope: !21)
