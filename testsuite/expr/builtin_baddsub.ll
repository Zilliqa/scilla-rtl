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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_294" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_295" = type { %ParamDescrString, i32, %"$ParamDescr_294"* }
%"$$fundef_4_env_55" = type { %TName_Bool* }
%"$$fundef_2_env_56" = type {}
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%Uint128 = type { i128 }
%Uint256 = type { i256 }
%Int256 = type { i256 }
%BNumString = type { i8*, i32 }

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
@"$TyDescr_ADT_Bool_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Bool_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_54", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Bool_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_45" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_45", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_48" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_48", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_True_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_False_ADTTyp_Constr_49"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Bool_ADTTyp_43" }
@"$TyDescr_Bool_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Bool_54" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$BNumLit_176" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_294"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_295"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_4"(%"$$fundef_4_env_55"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_4_env_b_68" = getelementptr inbounds %"$$fundef_4_env_55", %"$$fundef_4_env_55"* %0, i32 0, i32 0
  %"$b_envload_69" = load %TName_Bool*, %TName_Bool** %"$$fundef_4_env_b_68", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_69", %TName_Bool** %b, align 8
  %"$retval_5" = alloca %TName_Bool*, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 2, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 2
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$b_76" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_77" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_76", i32 0, i32 0
  %"$b_tag_78" = load i8, i8* %"$b_tag_77", align 1
  switch i8 %"$b_tag_78", label %"$empty_default_79" [
    i8 1, label %"$False_80"
    i8 0, label %"$True_90"
  ]

"$False_80":                                      ; preds = %"$have_gas_73"
  %"$b_81" = bitcast %TName_Bool* %"$b_76" to %CName_False*
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$False_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$False_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$adtval_87_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_87_salloc" = call i8* @_salloc(i8* %"$adtval_87_load", i64 1)
  %"$adtval_87" = bitcast i8* %"$adtval_87_salloc" to %CName_False*
  %"$adtgep_88" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_87", i32 0, i32 0
  store i8 1, i8* %"$adtgep_88", align 1
  %"$adtptr_89" = bitcast %CName_False* %"$adtval_87" to %TName_Bool*
  store %TName_Bool* %"$adtptr_89", %TName_Bool** %"$retval_5", align 8
  br label %"$matchsucc_75"

"$True_90":                                       ; preds = %"$have_gas_73"
  %"$b_91" = bitcast %TName_Bool* %"$b_76" to %CName_True*
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$True_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$True_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_5", align 8
  br label %"$matchsucc_75"

"$empty_default_79":                              ; preds = %"$have_gas_73"
  br label %"$matchsucc_75"

"$matchsucc_75":                                  ; preds = %"$have_gas_95", %"$have_gas_85", %"$empty_default_79"
  %"$$retval_5_97" = load %TName_Bool*, %TName_Bool** %"$retval_5", align 8
  ret %TName_Bool* %"$$retval_5_97"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_2"(%"$$fundef_2_env_56"* %0, %TName_Bool* %1) {
entry:
  %"$retval_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  %"$$fundef_4_envp_62_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_4_envp_62_salloc" = call i8* @_salloc(i8* %"$$fundef_4_envp_62_load", i64 8)
  %"$$fundef_4_envp_62" = bitcast i8* %"$$fundef_4_envp_62_salloc" to %"$$fundef_4_env_55"*
  %"$$fundef_4_env_voidp_64" = bitcast %"$$fundef_4_env_55"* %"$$fundef_4_envp_62" to i8*
  %"$$fundef_4_cloval_65" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_4_env_55"*, %TName_Bool*)* @"$fundef_4" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_4_env_voidp_64", 1
  %"$$fundef_4_env_b_66" = getelementptr inbounds %"$$fundef_4_env_55", %"$$fundef_4_env_55"* %"$$fundef_4_envp_62", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_4_env_b_66", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_4_cloval_65", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_3", align 8
  %"$$retval_3_67" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_3", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_3_67"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_2_env_56"*, %TName_Bool*)* @"$fundef_2" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$expr_6" = alloca %TName_Bool*, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_101"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %i32_1 = alloca %Uint32, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i32_1, align 4
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %i64_1 = alloca %Uint64, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %i64_1, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %i128_1 = alloca %Uint128, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %i128_1, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %i256_1 = alloca %Uint256, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %i256_1, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %i256_4 = alloca %Int256, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store %Int256 { i256 4 }, %Int256* %i256_4, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %i256_m4 = alloca %Int256, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Int256 { i256 -4 }, %Int256* %i256_m4, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %a100 = alloca i8*, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$execptr_load_177" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_178" = call i8* @_new_bnum(i8* %"$execptr_load_177", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_176", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_178", i8** %a100, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_174"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %a101 = alloca i8*, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$a100_186" = load i8*, i8** %a100, align 8
  %"$badd_i32_1_187" = alloca %Uint32, align 8
  %"$i32_1_188" = load %Uint32, %Uint32* %i32_1, align 4
  store %Uint32 %"$i32_1_188", %Uint32* %"$badd_i32_1_187", align 4
  %"$$badd_i32_1_187_189" = bitcast %Uint32* %"$badd_i32_1_187" to i8*
  %"$badd_call_190" = call i8* @_badd(i8* %"$execptr_load_185", i8* %"$a100_186", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", i8* %"$$badd_i32_1_187_189")
  store i8* %"$badd_call_190", i8** %a101, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_183"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %a102 = alloca i8*, align 8
  %"$execptr_load_197" = load i8*, i8** @_execptr, align 8
  %"$a101_198" = load i8*, i8** %a101, align 8
  %"$badd_i64_1_199" = alloca %Uint64, align 8
  %"$i64_1_200" = load %Uint64, %Uint64* %i64_1, align 8
  store %Uint64 %"$i64_1_200", %Uint64* %"$badd_i64_1_199", align 8
  %"$$badd_i64_1_199_201" = bitcast %Uint64* %"$badd_i64_1_199" to i8*
  %"$badd_call_202" = call i8* @_badd(i8* %"$execptr_load_197", i8* %"$a101_198", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", i8* %"$$badd_i64_1_199_201")
  store i8* %"$badd_call_202", i8** %a102, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_195"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %a103 = alloca i8*, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$a102_210" = load i8*, i8** %a102, align 8
  %"$badd_i128_1_211" = alloca %Uint128, align 8
  %"$i128_1_212" = load %Uint128, %Uint128* %i128_1, align 8
  store %Uint128 %"$i128_1_212", %Uint128* %"$badd_i128_1_211", align 8
  %"$$badd_i128_1_211_213" = bitcast %Uint128* %"$badd_i128_1_211" to i8*
  %"$badd_call_214" = call i8* @_badd(i8* %"$execptr_load_209", i8* %"$a102_210", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", i8* %"$$badd_i128_1_211_213")
  store i8* %"$badd_call_214", i8** %a103, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_207"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %a104 = alloca i8*, align 8
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  %"$a103_222" = load i8*, i8** %a103, align 8
  %"$badd_i256_1_223" = alloca %Uint256, align 8
  %"$i256_1_224" = load %Uint256, %Uint256* %i256_1, align 8
  store %Uint256 %"$i256_1_224", %Uint256* %"$badd_i256_1_223", align 8
  %"$$badd_i256_1_223_225" = bitcast %Uint256* %"$badd_i256_1_223" to i8*
  %"$badd_call_226" = call i8* @_badd(i8* %"$execptr_load_221", i8* %"$a103_222", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", i8* %"$$badd_i256_1_223_225")
  store i8* %"$badd_call_226", i8** %a104, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_219"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %sub1 = alloca %Int256, align 8
  %"$execptr_load_233" = load i8*, i8** @_execptr, align 8
  %"$a104_234" = load i8*, i8** %a104, align 8
  %"$a100_235" = load i8*, i8** %a100, align 8
  %"$bsub_call_236" = call %Int256* @_bsub(i8* %"$execptr_load_233", i8* %"$a104_234", i8* %"$a100_235")
  %"$bsub_238" = load %Int256, %Int256* %"$bsub_call_236", align 8
  store %Int256 %"$bsub_238", %Int256* %sub1, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_231"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_4_245" = alloca %Int256, align 8
  %"$i256_4_246" = load %Int256, %Int256* %i256_4, align 8
  store %Int256 %"$i256_4_246", %Int256* %"$eq_i256_4_245", align 8
  %"$eq_sub1_247" = alloca %Int256, align 8
  %"$sub1_248" = load %Int256, %Int256* %sub1, align 8
  store %Int256 %"$sub1_248", %Int256* %"$eq_sub1_247", align 8
  %"$eq_call_249" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_244", %Int256* %"$eq_i256_4_245", %Int256* %"$eq_sub1_247")
  store %TName_Bool* %"$eq_call_249", %TName_Bool** %res1, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_242"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %sub2 = alloca %Int256, align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$a100_257" = load i8*, i8** %a100, align 8
  %"$a104_258" = load i8*, i8** %a104, align 8
  %"$bsub_call_259" = call %Int256* @_bsub(i8* %"$execptr_load_256", i8* %"$a100_257", i8* %"$a104_258")
  %"$bsub_261" = load %Int256, %Int256* %"$bsub_call_259", align 8
  store %Int256 %"$bsub_261", %Int256* %sub2, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_254"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$execptr_load_267" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_m4_268" = alloca %Int256, align 8
  %"$i256_m4_269" = load %Int256, %Int256* %i256_m4, align 8
  store %Int256 %"$i256_m4_269", %Int256* %"$eq_i256_m4_268", align 8
  %"$eq_sub2_270" = alloca %Int256, align 8
  %"$sub2_271" = load %Int256, %Int256* %sub2, align 8
  store %Int256 %"$sub2_271", %Int256* %"$eq_sub2_270", align 8
  %"$eq_call_272" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_267", %Int256* %"$eq_i256_m4_268", %Int256* %"$eq_sub2_270")
  store %TName_Bool* %"$eq_call_272", %TName_Bool** %res2, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_265"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$BoolUtils.andb_0" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_279" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_280" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_279", 0
  %"$BoolUtils.andb_envptr_281" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_279", 1
  %"$res1_282" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_283" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_280"(i8* %"$BoolUtils.andb_envptr_281", %TName_Bool* %"$res1_282")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_283", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8
  %"$BoolUtils.andb_1" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_0_284" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8
  %"$$BoolUtils.andb_0_fptr_285" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_284", 0
  %"$$BoolUtils.andb_0_envptr_286" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_284", 1
  %"$res2_287" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_0_call_288" = call %TName_Bool* %"$$BoolUtils.andb_0_fptr_285"(i8* %"$$BoolUtils.andb_0_envptr_286", %TName_Bool* %"$res2_287")
  store %TName_Bool* %"$$BoolUtils.andb_0_call_288", %TName_Bool** %"$BoolUtils.andb_1", align 8
  %"$$BoolUtils.andb_1_289" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_1", align 8
  store %TName_Bool* %"$$BoolUtils.andb_1_289", %TName_Bool** %"$expr_6", align 8
  %"$$expr_6_290" = load %TName_Bool*, %TName_Bool** %"$expr_6", align 8
  ret %TName_Bool* %"$$expr_6_290"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_badd(i8*, i8*, %_TyDescrTy_Typ*, i8*)

declare %Int256* @_bsub(i8*, i8*, i8*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_291" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_292" = bitcast %TName_Bool* %"$exprval_291" to i8*
  %"$execptr_load_293" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_293", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", i8* %"$memvoidcast_292")
  ret void
}
