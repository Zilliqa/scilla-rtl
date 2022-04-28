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
%"$ParamDescr_376" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_377" = type { %ParamDescrString, i32, %"$ParamDescr_376"* }
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
@"$BNumLit_216" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_47", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_376"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_377"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_10"(%"$$fundef_10_env_63"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_107" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_107", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_107", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_10_env_b_77" = getelementptr inbounds %"$$fundef_10_env_63", %"$$fundef_10_env_63"* %0, i32 0, i32 0
  %"$b_envload_78" = load %TName_Bool*, %TName_Bool** %"$$fundef_10_env_b_77", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_78", %TName_Bool** %b, align 8
  %"$retval_11" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_11", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 2, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 2
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$b_85" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_86" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_85", i32 0, i32 0
  %"$b_tag_87" = load i8, i8* %"$b_tag_86", align 1
  switch i8 %"$b_tag_87", label %"$empty_default_88" [
    i8 1, label %"$False_89"
    i8 0, label %"$True_99"
  ], !dbg !14

"$False_89":                                      ; preds = %"$have_gas_82"
  %"$b_90" = bitcast %TName_Bool* %"$b_85" to %CName_False*
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$False_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$False_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$adtval_96_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_96_salloc" = call i8* @_salloc(i8* %"$adtval_96_load", i64 1)
  %"$adtval_96" = bitcast i8* %"$adtval_96_salloc" to %CName_False*
  %"$adtgep_97" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_96", i32 0, i32 0
  store i8 1, i8* %"$adtgep_97", align 1
  %"$adtptr_98" = bitcast %CName_False* %"$adtval_96" to %TName_Bool*
  store %TName_Bool* %"$adtptr_98", %TName_Bool** %"$retval_11", align 8, !dbg !15
  br label %"$matchsucc_84"

"$True_99":                                       ; preds = %"$have_gas_82"
  %"$b_100" = bitcast %TName_Bool* %"$b_85" to %CName_True*
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$True_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$True_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_11", align 8, !dbg !18
  br label %"$matchsucc_84"

"$empty_default_88":                              ; preds = %"$have_gas_82"
  br label %"$matchsucc_84"

"$matchsucc_84":                                  ; preds = %"$have_gas_104", %"$have_gas_94", %"$empty_default_88"
  %"$$retval_11_106" = load %TName_Bool*, %TName_Bool** %"$retval_11", align 8
  ret %TName_Bool* %"$$retval_11_106"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_8"(%"$$fundef_8_env_64"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_76" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_76", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_76", metadata !21, metadata !DIExpression()), !dbg !22
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_10_cloval_73", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_9", align 8, !dbg !23
  %"$$retval_9_75" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_9", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_9_75"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 5, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 5
  store i64 %"$consume_112", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 7, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 7
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_8_env_64"*, %TName_Bool*)* @"$fundef_8" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 196, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_121"
  %"$consume_130" = sub i64 %"$gasrem_126", 196
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 20, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 20
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 12, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 12
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 2, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 2
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_12", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %entry
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %i32_1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %i32_1, metadata !31, metadata !DIExpression()), !dbg !33
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i32_1, align 4, !dbg !30
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %i64_1 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %i64_1, metadata !34, metadata !DIExpression()), !dbg !36
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %i64_1, align 8, !dbg !37
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %i128_1 = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %i128_1, metadata !38, metadata !DIExpression()), !dbg !40
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %i128_1, align 8, !dbg !41
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %i256_1 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %i256_1, metadata !42, metadata !DIExpression()), !dbg !44
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %i256_1, align 8, !dbg !45
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %i256_4 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %i256_4, metadata !46, metadata !DIExpression()), !dbg !48
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store %Int256 { i256 4 }, %Int256* %i256_4, align 8, !dbg !49
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %i256_m4 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %i256_m4, metadata !50, metadata !DIExpression()), !dbg !51
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_199"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  store %Int256 { i256 -4 }, %Int256* %i256_m4, align 8, !dbg !52
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %a100 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %a100, metadata !53, metadata !DIExpression()), !dbg !56
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_209"
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %"$execptr_load_217" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_218" = call i8* @_new_bnum(i8* %"$execptr_load_217", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_216", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_218", i8** %a100, align 8, !dbg !57
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_214"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %a101 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %a101, metadata !58, metadata !DIExpression()), !dbg !59
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 32, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 32
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$execptr_load_230" = load i8*, i8** @_execptr, align 8
  %"$a100_231" = load i8*, i8** %a100, align 8
  %"$badd_i32_1_232" = alloca %Uint32, align 8
  %"$i32_1_233" = load %Uint32, %Uint32* %i32_1, align 4
  store %Uint32 %"$i32_1_233", %Uint32* %"$badd_i32_1_232", align 4
  %"$$badd_i32_1_232_234" = bitcast %Uint32* %"$badd_i32_1_232" to i8*
  %"$badd_call_235" = call i8* @_badd(i8* %"$execptr_load_230", i8* %"$a100_231", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", i8* %"$$badd_i32_1_232_234"), !dbg !60
  store i8* %"$badd_call_235", i8** %a101, align 8, !dbg !60
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_228"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %a102 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %a102, metadata !61, metadata !DIExpression()), !dbg !62
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 32, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 32
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$execptr_load_247" = load i8*, i8** @_execptr, align 8
  %"$a101_248" = load i8*, i8** %a101, align 8
  %"$badd_i64_1_249" = alloca %Uint64, align 8
  %"$i64_1_250" = load %Uint64, %Uint64* %i64_1, align 8
  store %Uint64 %"$i64_1_250", %Uint64* %"$badd_i64_1_249", align 8
  %"$$badd_i64_1_249_251" = bitcast %Uint64* %"$badd_i64_1_249" to i8*
  %"$badd_call_252" = call i8* @_badd(i8* %"$execptr_load_247", i8* %"$a101_248", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", i8* %"$$badd_i64_1_249_251"), !dbg !63
  store i8* %"$badd_call_252", i8** %a102, align 8, !dbg !63
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_245"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %a103 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %a103, metadata !64, metadata !DIExpression()), !dbg !65
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 32, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 32
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$execptr_load_264" = load i8*, i8** @_execptr, align 8
  %"$a102_265" = load i8*, i8** %a102, align 8
  %"$badd_i128_1_266" = alloca %Uint128, align 8
  %"$i128_1_267" = load %Uint128, %Uint128* %i128_1, align 8
  store %Uint128 %"$i128_1_267", %Uint128* %"$badd_i128_1_266", align 8
  %"$$badd_i128_1_266_268" = bitcast %Uint128* %"$badd_i128_1_266" to i8*
  %"$badd_call_269" = call i8* @_badd(i8* %"$execptr_load_264", i8* %"$a102_265", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", i8* %"$$badd_i128_1_266_268"), !dbg !66
  store i8* %"$badd_call_269", i8** %a103, align 8, !dbg !66
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_262"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %a104 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %a104, metadata !67, metadata !DIExpression()), !dbg !68
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 32, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 32
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$execptr_load_281" = load i8*, i8** @_execptr, align 8
  %"$a103_282" = load i8*, i8** %a103, align 8
  %"$badd_i256_1_283" = alloca %Uint256, align 8
  %"$i256_1_284" = load %Uint256, %Uint256* %i256_1, align 8
  store %Uint256 %"$i256_1_284", %Uint256* %"$badd_i256_1_283", align 8
  %"$$badd_i256_1_283_285" = bitcast %Uint256* %"$badd_i256_1_283" to i8*
  %"$badd_call_286" = call i8* @_badd(i8* %"$execptr_load_281", i8* %"$a103_282", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", i8* %"$$badd_i256_1_283_285"), !dbg !69
  store i8* %"$badd_call_286", i8** %a104, align 8, !dbg !69
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_279"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %sub1 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %sub1, metadata !70, metadata !DIExpression()), !dbg !71
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 32, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 32
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$a104_299" = load i8*, i8** %a104, align 8
  %"$a100_300" = load i8*, i8** %a100, align 8
  %"$bsub_call_301" = call %Int256* @_bsub(i8* %"$execptr_load_298", i8* %"$a104_299", i8* %"$a100_300"), !dbg !72
  %"$bsub_303" = load %Int256, %Int256* %"$bsub_call_301", align 8
  store %Int256 %"$bsub_303", %Int256* %sub1, align 8, !dbg !72
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_296"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res1, metadata !73, metadata !DIExpression()), !dbg !74
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 16, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_307"
  %"$consume_314" = sub i64 %"$gasrem_310", 16
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$execptr_load_315" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_4_316" = alloca %Int256, align 8
  %"$i256_4_317" = load %Int256, %Int256* %i256_4, align 8
  store %Int256 %"$i256_4_317", %Int256* %"$eq_i256_4_316", align 8
  %"$eq_sub1_318" = alloca %Int256, align 8
  %"$sub1_319" = load %Int256, %Int256* %sub1, align 8
  store %Int256 %"$sub1_319", %Int256* %"$eq_sub1_318", align 8
  %"$eq_call_320" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_315", %Int256* %"$eq_i256_4_316", %Int256* %"$eq_sub1_318"), !dbg !75
  store %TName_Bool* %"$eq_call_320", %TName_Bool** %res1, align 8, !dbg !75
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_313"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %sub2 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %sub2, metadata !76, metadata !DIExpression()), !dbg !77
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 32, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 32
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$execptr_load_332" = load i8*, i8** @_execptr, align 8
  %"$a100_333" = load i8*, i8** %a100, align 8
  %"$a104_334" = load i8*, i8** %a104, align 8
  %"$bsub_call_335" = call %Int256* @_bsub(i8* %"$execptr_load_332", i8* %"$a100_333", i8* %"$a104_334"), !dbg !78
  %"$bsub_337" = load %Int256, %Int256* %"$bsub_call_335", align 8
  store %Int256 %"$bsub_337", %Int256* %sub2, align 8, !dbg !78
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_330"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res2, metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 16, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_341"
  %"$consume_348" = sub i64 %"$gasrem_344", 16
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$execptr_load_349" = load i8*, i8** @_execptr, align 8
  %"$eq_i256_m4_350" = alloca %Int256, align 8
  %"$i256_m4_351" = load %Int256, %Int256* %i256_m4, align 8
  store %Int256 %"$i256_m4_351", %Int256* %"$eq_i256_m4_350", align 8
  %"$eq_sub2_352" = alloca %Int256, align 8
  %"$sub2_353" = load %Int256, %Int256* %sub2, align 8
  store %Int256 %"$sub2_353", %Int256* %"$eq_sub2_352", align 8
  %"$eq_call_354" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_349", %Int256* %"$eq_i256_m4_350", %Int256* %"$eq_sub2_352"), !dbg !81
  store %TName_Bool* %"$eq_call_354", %TName_Bool** %res2, align 8, !dbg !81
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_347"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$BoolUtils.andb_6" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_361" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_362" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_361", 0
  %"$BoolUtils.andb_envptr_363" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_361", 1
  %"$res1_364" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_365" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_362"(i8* %"$BoolUtils.andb_envptr_363", %TName_Bool* %"$res1_364"), !dbg !82
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_365", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8, !dbg !82
  %"$BoolUtils.andb_7" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_7", metadata !83, metadata !DIExpression()), !dbg !82
  %"$$BoolUtils.andb_6_366" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_fptr_367" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_366", 0
  %"$$BoolUtils.andb_6_envptr_368" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_366", 1
  %"$res2_369" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_6_call_370" = call %TName_Bool* %"$$BoolUtils.andb_6_fptr_367"(i8* %"$$BoolUtils.andb_6_envptr_368", %TName_Bool* %"$res2_369"), !dbg !82
  store %TName_Bool* %"$$BoolUtils.andb_6_call_370", %TName_Bool** %"$BoolUtils.andb_7", align 8, !dbg !82
  %"$$BoolUtils.andb_7_371" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_7", align 8
  store %TName_Bool* %"$$BoolUtils.andb_7_371", %TName_Bool** %"$expr_12", align 8, !dbg !82
  %"$$expr_12_372" = load %TName_Bool*, %TName_Bool** %"$expr_12", align 8
  ret %TName_Bool* %"$$expr_12_372"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_badd(i8*, i8*, %_TyDescrTy_Typ*, i8*)

declare %Int256* @_bsub(i8*, i8*, i8*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_373" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_374" = bitcast %TName_Bool* %"$exprval_373" to i8*
  %"$execptr_load_375" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_375", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_47", i8* %"$memvoidcast_374")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_baddsub.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_11", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$expr_12", scope: !28, file: !2, line: 1, type: !10)
!30 = !DILocation(line: 1, column: 13, scope: !28)
!31 = !DILocalVariable(name: "i32_1", scope: !28, file: !2, line: 1, type: !32)
!32 = !DIBasicType(name: "Uint32", size: 4)
!33 = !DILocation(line: 1, column: 5, scope: !28)
!34 = !DILocalVariable(name: "i64_1", scope: !28, file: !2, line: 2, type: !35)
!35 = !DIBasicType(name: "Uint64", size: 8)
!36 = !DILocation(line: 2, column: 5, scope: !28)
!37 = !DILocation(line: 2, column: 13, scope: !28)
!38 = !DILocalVariable(name: "i128_1", scope: !28, file: !2, line: 3, type: !39)
!39 = !DIBasicType(name: "Uint128", size: 16)
!40 = !DILocation(line: 3, column: 5, scope: !28)
!41 = !DILocation(line: 3, column: 14, scope: !28)
!42 = !DILocalVariable(name: "i256_1", scope: !28, file: !2, line: 4, type: !43)
!43 = !DIBasicType(name: "Uint256", size: 32)
!44 = !DILocation(line: 4, column: 5, scope: !28)
!45 = !DILocation(line: 4, column: 14, scope: !28)
!46 = !DILocalVariable(name: "i256_4", scope: !28, file: !2, line: 6, type: !47)
!47 = !DIBasicType(name: "Int256", size: 32)
!48 = !DILocation(line: 6, column: 5, scope: !28)
!49 = !DILocation(line: 6, column: 14, scope: !28)
!50 = !DILocalVariable(name: "i256_m4", scope: !28, file: !2, line: 7, type: !47)
!51 = !DILocation(line: 7, column: 5, scope: !28)
!52 = !DILocation(line: 7, column: 15, scope: !28)
!53 = !DILocalVariable(name: "a100", scope: !28, file: !2, line: 9, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "BNum", baseType: !55, size: 8, align: 8, dwarfAddressSpace: 0)
!55 = !DIBasicType(name: "BNum", size: 8)
!56 = !DILocation(line: 9, column: 5, scope: !28)
!57 = !DILocation(line: 9, column: 12, scope: !28)
!58 = !DILocalVariable(name: "a101", scope: !28, file: !2, line: 10, type: !54)
!59 = !DILocation(line: 10, column: 5, scope: !28)
!60 = !DILocation(line: 10, column: 12, scope: !28)
!61 = !DILocalVariable(name: "a102", scope: !28, file: !2, line: 11, type: !54)
!62 = !DILocation(line: 11, column: 5, scope: !28)
!63 = !DILocation(line: 11, column: 12, scope: !28)
!64 = !DILocalVariable(name: "a103", scope: !28, file: !2, line: 12, type: !54)
!65 = !DILocation(line: 12, column: 5, scope: !28)
!66 = !DILocation(line: 12, column: 12, scope: !28)
!67 = !DILocalVariable(name: "a104", scope: !28, file: !2, line: 13, type: !54)
!68 = !DILocation(line: 13, column: 5, scope: !28)
!69 = !DILocation(line: 13, column: 12, scope: !28)
!70 = !DILocalVariable(name: "sub1", scope: !28, file: !2, line: 15, type: !47)
!71 = !DILocation(line: 15, column: 5, scope: !28)
!72 = !DILocation(line: 15, column: 12, scope: !28)
!73 = !DILocalVariable(name: "res1", scope: !28, file: !2, line: 16, type: !10)
!74 = !DILocation(line: 16, column: 5, scope: !28)
!75 = !DILocation(line: 16, column: 12, scope: !28)
!76 = !DILocalVariable(name: "sub2", scope: !28, file: !2, line: 19, type: !47)
!77 = !DILocation(line: 19, column: 5, scope: !28)
!78 = !DILocation(line: 19, column: 12, scope: !28)
!79 = !DILocalVariable(name: "res2", scope: !28, file: !2, line: 20, type: !10)
!80 = !DILocation(line: 20, column: 5, scope: !28)
!81 = !DILocation(line: 20, column: 12, scope: !28)
!82 = !DILocation(line: 22, column: 1, scope: !28)
!83 = !DILocalVariable(name: "$BoolUtils.andb_7", scope: !28, file: !2, line: 22, type: !10)
