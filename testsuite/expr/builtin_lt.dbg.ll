; let bn1 = BNum 100 in
; let bn2 = BNum 200 in
; let res1 = builtin blt bn1 bn2 in
; let res2n = builtin blt bn2 bn1 in
; let res2 = negb res2n in
; 
; let n1 = Int32 -100 in
; let n2 = Int32 200 in
; let res3 = builtin lt n1 n2 in
; let res4n = builtin lt n2 n1 in
; let res4 = negb res4n in
; 
; let n1 = Uint256 100 in
; let n2 = Uint256 200 in
; let res5 = builtin lt n1 n2 in
; let res6n = builtin lt n2 n1 in
; let res6 = negb res6n in
; 
; let res7 = andb res1 res2 in
; let res8 = andb res3 res4 in
; let res9 = andb res5 res6 in
; let res10 = andb res7 res8 in
; andb res9 res10
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_28" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_60" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_59"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_59" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_61"**, %"$TyDescrTy_ADTTyp_60"* }
%"$TyDescrTy_ADTTyp_Constr_61" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_514" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_515" = type { %ParamDescrString, i32, %"$ParamDescr_514"* }
%"$$fundef_21_env_78" = type {}
%"$$fundef_25_env_79" = type { %TName_Bool* }
%"$$fundef_23_env_80" = type {}
%BNumString = type { i8*, i32 }
%Uint256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_29" = global %"$TyDescrTy_PrimTyp_28" zeroinitializer
@"$TyDescr_Int32_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Int32_Prim_29" to i8*) }
@"$TyDescr_Uint32_Prim_31" = global %"$TyDescrTy_PrimTyp_28" { i32 1, i32 0 }
@"$TyDescr_Uint32_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Uint32_Prim_31" to i8*) }
@"$TyDescr_Int64_Prim_33" = global %"$TyDescrTy_PrimTyp_28" { i32 0, i32 1 }
@"$TyDescr_Int64_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Int64_Prim_33" to i8*) }
@"$TyDescr_Uint64_Prim_35" = global %"$TyDescrTy_PrimTyp_28" { i32 1, i32 1 }
@"$TyDescr_Uint64_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Uint64_Prim_35" to i8*) }
@"$TyDescr_Int128_Prim_37" = global %"$TyDescrTy_PrimTyp_28" { i32 0, i32 2 }
@"$TyDescr_Int128_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Int128_Prim_37" to i8*) }
@"$TyDescr_Uint128_Prim_39" = global %"$TyDescrTy_PrimTyp_28" { i32 1, i32 2 }
@"$TyDescr_Uint128_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Uint128_Prim_39" to i8*) }
@"$TyDescr_Int256_Prim_41" = global %"$TyDescrTy_PrimTyp_28" { i32 0, i32 3 }
@"$TyDescr_Int256_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Int256_Prim_41" to i8*) }
@"$TyDescr_Uint256_Prim_43" = global %"$TyDescrTy_PrimTyp_28" { i32 1, i32 3 }
@"$TyDescr_Uint256_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Uint256_Prim_43" to i8*) }
@"$TyDescr_String_Prim_45" = global %"$TyDescrTy_PrimTyp_28" { i32 2, i32 0 }
@"$TyDescr_String_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_String_Prim_45" to i8*) }
@"$TyDescr_Bnum_Prim_47" = global %"$TyDescrTy_PrimTyp_28" { i32 3, i32 0 }
@"$TyDescr_Bnum_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Bnum_Prim_47" to i8*) }
@"$TyDescr_Message_Prim_49" = global %"$TyDescrTy_PrimTyp_28" { i32 4, i32 0 }
@"$TyDescr_Message_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Message_Prim_49" to i8*) }
@"$TyDescr_Event_Prim_51" = global %"$TyDescrTy_PrimTyp_28" { i32 5, i32 0 }
@"$TyDescr_Event_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Event_Prim_51" to i8*) }
@"$TyDescr_Exception_Prim_53" = global %"$TyDescrTy_PrimTyp_28" { i32 6, i32 0 }
@"$TyDescr_Exception_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Exception_Prim_53" to i8*) }
@"$TyDescr_ReplicateContr_Prim_55" = global %"$TyDescrTy_PrimTyp_28" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_ReplicateContr_Prim_55" to i8*) }
@"$TyDescr_Bystr_Prim_57" = global %"$TyDescrTy_PrimTyp_28" { i32 7, i32 0 }
@"$TyDescr_Bystr_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Bystr_Prim_57" to i8*) }
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_75" to i8*) }
@"$TyDescr_Bool_ADTTyp_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_77", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_59"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_59"*], [1 x %"$TyDescrTy_ADTTyp_Specl_59"*]* @"$TyDescr_Bool_ADTTyp_m_specls_76", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_67" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_68" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_68", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_71" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_71", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_73" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_61"*] [%"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_True_ADTTyp_Constr_69", %"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_False_ADTTyp_Constr_72"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_74" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_59" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_61"*], [2 x %"$TyDescrTy_ADTTyp_Constr_61"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_60"* @"$TyDescr_Bool_ADTTyp_66" }
@"$TyDescr_Bool_ADTTyp_m_specls_76" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_59"*] [%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_75"]
@"$TyDescr_ADT_Bool_77" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$BNumLit_208" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_222" = unnamed_addr constant [3 x i8] c"200"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_52", %_TyDescrTy_Typ* @"$TyDescr_Int64_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", %_TyDescrTy_Typ* @"$TyDescr_Uint256_44", %_TyDescrTy_Typ* @"$TyDescr_Uint32_32", %_TyDescrTy_Typ* @"$TyDescr_Uint64_36", %_TyDescrTy_Typ* @"$TyDescr_Bnum_48", %_TyDescrTy_Typ* @"$TyDescr_Uint128_40", %_TyDescrTy_Typ* @"$TyDescr_Exception_54", %_TyDescrTy_Typ* @"$TyDescr_String_46", %_TyDescrTy_Typ* @"$TyDescr_Int256_42", %_TyDescrTy_Typ* @"$TyDescr_Int128_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr_58", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_56", %_TyDescrTy_Typ* @"$TyDescr_Message_50", %_TyDescrTy_Typ* @"$TyDescr_Int32_30"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_514"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_515"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_21"(%"$$fundef_21_env_78"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_22" = alloca %TName_Bool*, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 2, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 2
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$b_tag_128" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_129" = load i8, i8* %"$b_tag_128", align 1
  switch i8 %"$b_tag_129", label %"$empty_default_130" [
    i8 0, label %"$True_131"
    i8 1, label %"$False_141"
  ], !dbg !9

"$True_131":                                      ; preds = %"$have_gas_125"
  %"$b_132" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$True_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$True_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %"$adtval_138_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_138_salloc" = call i8* @_salloc(i8* %"$adtval_138_load", i64 1)
  %"$adtval_138" = bitcast i8* %"$adtval_138_salloc" to %CName_False*
  %"$adtgep_139" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_138", i32 0, i32 0
  store i8 1, i8* %"$adtgep_139", align 1
  %"$adtptr_140" = bitcast %CName_False* %"$adtval_138" to %TName_Bool*
  store %TName_Bool* %"$adtptr_140", %TName_Bool** %"$retval_22", align 8, !dbg !10
  br label %"$matchsucc_127"

"$False_141":                                     ; preds = %"$have_gas_125"
  %"$b_142" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$False_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$False_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$adtval_148_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_148_salloc" = call i8* @_salloc(i8* %"$adtval_148_load", i64 1)
  %"$adtval_148" = bitcast i8* %"$adtval_148_salloc" to %CName_True*
  %"$adtgep_149" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_148", i32 0, i32 0
  store i8 0, i8* %"$adtgep_149", align 1
  %"$adtptr_150" = bitcast %CName_True* %"$adtval_148" to %TName_Bool*
  store %TName_Bool* %"$adtptr_150", %TName_Bool** %"$retval_22", align 8, !dbg !13
  br label %"$matchsucc_127"

"$empty_default_130":                             ; preds = %"$have_gas_125"
  br label %"$matchsucc_127"

"$matchsucc_127":                                 ; preds = %"$have_gas_146", %"$have_gas_136", %"$empty_default_130"
  %"$$retval_22_151" = load %TName_Bool*, %TName_Bool** %"$retval_22", align 8
  ret %TName_Bool* %"$$retval_22_151"
}

define internal %TName_Bool* @"$fundef_25"(%"$$fundef_25_env_79"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$$fundef_25_env_b_92" = getelementptr inbounds %"$$fundef_25_env_79", %"$$fundef_25_env_79"* %0, i32 0, i32 0
  %"$b_envload_93" = load %TName_Bool*, %TName_Bool** %"$$fundef_25_env_b_92", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_93", %TName_Bool** %b, align 8
  %"$retval_26" = alloca %TName_Bool*, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 2, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 2
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$b_100" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_101" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_100", i32 0, i32 0
  %"$b_tag_102" = load i8, i8* %"$b_tag_101", align 1
  switch i8 %"$b_tag_102", label %"$empty_default_103" [
    i8 1, label %"$False_104"
    i8 0, label %"$True_114"
  ], !dbg !16

"$False_104":                                     ; preds = %"$have_gas_97"
  %"$b_105" = bitcast %TName_Bool* %"$b_100" to %CName_False*
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$False_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$False_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$adtval_111_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_111_salloc" = call i8* @_salloc(i8* %"$adtval_111_load", i64 1)
  %"$adtval_111" = bitcast i8* %"$adtval_111_salloc" to %CName_False*
  %"$adtgep_112" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_111", i32 0, i32 0
  store i8 1, i8* %"$adtgep_112", align 1
  %"$adtptr_113" = bitcast %CName_False* %"$adtval_111" to %TName_Bool*
  store %TName_Bool* %"$adtptr_113", %TName_Bool** %"$retval_26", align 8, !dbg !17
  br label %"$matchsucc_99"

"$True_114":                                      ; preds = %"$have_gas_97"
  %"$b_115" = bitcast %TName_Bool* %"$b_100" to %CName_True*
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$True_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$True_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_26", align 8, !dbg !20
  br label %"$matchsucc_99"

"$empty_default_103":                             ; preds = %"$have_gas_97"
  br label %"$matchsucc_99"

"$matchsucc_99":                                  ; preds = %"$have_gas_119", %"$have_gas_109", %"$empty_default_103"
  %"$$retval_26_121" = load %TName_Bool*, %TName_Bool** %"$retval_26", align 8
  ret %TName_Bool* %"$$retval_26_121"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_80"* %0, %TName_Bool* %1) !dbg !22 {
entry:
  %"$retval_24" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %"$$fundef_25_envp_86_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_86_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_86_load", i64 8)
  %"$$fundef_25_envp_86" = bitcast i8* %"$$fundef_25_envp_86_salloc" to %"$$fundef_25_env_79"*
  %"$$fundef_25_env_voidp_88" = bitcast %"$$fundef_25_env_79"* %"$$fundef_25_envp_86" to i8*
  %"$$fundef_25_cloval_89" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_25_env_79"*, %TName_Bool*)* @"$fundef_25" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_88", 1
  %"$$fundef_25_env_b_90" = getelementptr inbounds %"$$fundef_25_env_79", %"$$fundef_25_env_79"* %"$$fundef_25_envp_86", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_25_env_b_90", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_25_cloval_89", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8, !dbg !23
  %"$$retval_24_91" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_24_91"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 5, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %entry
  %"$consume_156" = sub i64 %"$gasrem_152", 5
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 6, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 6
  store i64 %"$consume_161", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_23_env_80"*, %TName_Bool*)* @"$fundef_23" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_165"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_21_env_78"*, %TName_Bool*)* @"$fundef_21" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !28
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 196, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_173"
  %"$consume_182" = sub i64 %"$gasrem_178", 196
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 20, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 20
  store i64 %"$consume_187", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 12, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 12
  store i64 %"$consume_192", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 2, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_191"
  %"$consume_197" = sub i64 %"$gasrem_193", 2
  store i64 %"$consume_197", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !29 {
entry:
  %"$expr_27" = alloca %TName_Bool*, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %entry
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_201"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_210" = call i8* @_new_bnum(i8* %"$execptr_load_209", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_208", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_210", i8** %bn1, align 8, !dbg !30
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_206"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_224" = call i8* @_new_bnum(i8* %"$execptr_load_223", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_222", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_224", i8** %bn2, align 8, !dbg !31
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_220"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 32, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 32
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$execptr_load_236" = load i8*, i8** @_execptr, align 8
  %"$bn1_237" = load i8*, i8** %bn1, align 8
  %"$bn2_238" = load i8*, i8** %bn2, align 8
  %"$blt_call_239" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_236", i8* %"$bn1_237", i8* %"$bn2_238"), !dbg !32
  store %TName_Bool* %"$blt_call_239", %TName_Bool** %res1, align 8, !dbg !32
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_234"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %res2n = alloca %TName_Bool*, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 32, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_244"
  %"$consume_250" = sub i64 %"$gasrem_246", 32
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$bn2_252" = load i8*, i8** %bn2, align 8
  %"$bn1_253" = load i8*, i8** %bn1, align 8
  %"$blt_call_254" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_251", i8* %"$bn2_252", i8* %"$bn1_253"), !dbg !33
  store %TName_Bool* %"$blt_call_254", %TName_Bool** %res2n, align 8, !dbg !33
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_249"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$BoolUtils.negb_8" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_266" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_267" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_266", 0
  %"$BoolUtils.negb_envptr_268" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_266", 1
  %"$res2n_269" = load %TName_Bool*, %TName_Bool** %res2n, align 8
  %"$BoolUtils.negb_call_270" = call %TName_Bool* %"$BoolUtils.negb_fptr_267"(i8* %"$BoolUtils.negb_envptr_268", %TName_Bool* %"$res2n_269"), !dbg !34
  store %TName_Bool* %"$BoolUtils.negb_call_270", %TName_Bool** %"$BoolUtils.negb_8", align 8, !dbg !34
  %"$$BoolUtils.negb_8_271" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_8", align 8
  store %TName_Bool* %"$$BoolUtils.negb_8_271", %TName_Bool** %res2, align 8, !dbg !34
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_264"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  store %Int32 { i32 -100 }, %Int32* %n1, align 4, !dbg !35
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  store %Int32 { i32 200 }, %Int32* %n2, align 4, !dbg !36
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %res3 = alloca %TName_Bool*, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 4, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 4
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$execptr_load_302" = load i8*, i8** @_execptr, align 8
  %"$n1_303" = load %Int32, %Int32* %n1, align 4
  %"$n2_304" = load %Int32, %Int32* %n2, align 4
  %"$lt_call_305" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_302", %Int32 %"$n1_303", %Int32 %"$n2_304"), !dbg !37
  store %TName_Bool* %"$lt_call_305", %TName_Bool** %res3, align 8, !dbg !37
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_300"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %res4n = alloca %TName_Bool*, align 8
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 4, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 4
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$execptr_load_317" = load i8*, i8** @_execptr, align 8
  %"$n2_318" = load %Int32, %Int32* %n2, align 4
  %"$n1_319" = load %Int32, %Int32* %n1, align 4
  %"$lt_call_320" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_317", %Int32 %"$n2_318", %Int32 %"$n1_319"), !dbg !38
  store %TName_Bool* %"$lt_call_320", %TName_Bool** %res4n, align 8, !dbg !38
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_315"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %res4 = alloca %TName_Bool*, align 8
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_332" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_333" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_332", 0
  %"$BoolUtils.negb_envptr_334" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_332", 1
  %"$res4n_335" = load %TName_Bool*, %TName_Bool** %res4n, align 8
  %"$BoolUtils.negb_call_336" = call %TName_Bool* %"$BoolUtils.negb_fptr_333"(i8* %"$BoolUtils.negb_envptr_334", %TName_Bool* %"$res4n_335"), !dbg !39
  store %TName_Bool* %"$BoolUtils.negb_call_336", %TName_Bool** %"$BoolUtils.negb_9", align 8, !dbg !39
  %"$$BoolUtils.negb_9_337" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_337", %TName_Bool** %res4, align 8, !dbg !39
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_330"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$n1_6" = alloca %Uint256, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_341"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  store %Uint256 { i256 100 }, %Uint256* %"$n1_6", align 8, !dbg !40
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$n2_7" = alloca %Uint256, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  store %Uint256 { i256 200 }, %Uint256* %"$n2_7", align 8, !dbg !41
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %res5 = alloca %TName_Bool*, align 8
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 16, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_361"
  %"$consume_368" = sub i64 %"$gasrem_364", 16
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$execptr_load_369" = load i8*, i8** @_execptr, align 8
  %"$lt_$n1_6_370" = alloca %Uint256, align 8
  %"$$n1_6_371" = load %Uint256, %Uint256* %"$n1_6", align 8
  store %Uint256 %"$$n1_6_371", %Uint256* %"$lt_$n1_6_370", align 8
  %"$lt_$n2_7_372" = alloca %Uint256, align 8
  %"$$n2_7_373" = load %Uint256, %Uint256* %"$n2_7", align 8
  store %Uint256 %"$$n2_7_373", %Uint256* %"$lt_$n2_7_372", align 8
  %"$lt_call_374" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_369", %Uint256* %"$lt_$n1_6_370", %Uint256* %"$lt_$n2_7_372"), !dbg !42
  store %TName_Bool* %"$lt_call_374", %TName_Bool** %res5, align 8, !dbg !42
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_367"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %res6n = alloca %TName_Bool*, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 16, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_379"
  %"$consume_386" = sub i64 %"$gasrem_382", 16
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$execptr_load_387" = load i8*, i8** @_execptr, align 8
  %"$lt_$n2_7_388" = alloca %Uint256, align 8
  %"$$n2_7_389" = load %Uint256, %Uint256* %"$n2_7", align 8
  store %Uint256 %"$$n2_7_389", %Uint256* %"$lt_$n2_7_388", align 8
  %"$lt_$n1_6_390" = alloca %Uint256, align 8
  %"$$n1_6_391" = load %Uint256, %Uint256* %"$n1_6", align 8
  store %Uint256 %"$$n1_6_391", %Uint256* %"$lt_$n1_6_390", align 8
  %"$lt_call_392" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_387", %Uint256* %"$lt_$n2_7_388", %Uint256* %"$lt_$n1_6_390"), !dbg !43
  store %TName_Bool* %"$lt_call_392", %TName_Bool** %res6n, align 8, !dbg !43
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_385"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %res6 = alloca %TName_Bool*, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$BoolUtils.negb_10" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_404" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_405" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_404", 0
  %"$BoolUtils.negb_envptr_406" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_404", 1
  %"$res6n_407" = load %TName_Bool*, %TName_Bool** %res6n, align 8
  %"$BoolUtils.negb_call_408" = call %TName_Bool* %"$BoolUtils.negb_fptr_405"(i8* %"$BoolUtils.negb_envptr_406", %TName_Bool* %"$res6n_407"), !dbg !44
  store %TName_Bool* %"$BoolUtils.negb_call_408", %TName_Bool** %"$BoolUtils.negb_10", align 8, !dbg !44
  %"$$BoolUtils.negb_10_409" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_10", align 8
  store %TName_Bool* %"$$BoolUtils.negb_10_409", %TName_Bool** %res6, align 8, !dbg !44
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_402"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %res7 = alloca %TName_Bool*, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_420" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_421" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_420", 0
  %"$BoolUtils.andb_envptr_422" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_420", 1
  %"$res1_423" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_424" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_421"(i8* %"$BoolUtils.andb_envptr_422", %TName_Bool* %"$res1_423"), !dbg !45
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_424", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8, !dbg !45
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_11_425" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_426" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_425", 0
  %"$$BoolUtils.andb_11_envptr_427" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_425", 1
  %"$res2_428" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_11_call_429" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_426"(i8* %"$$BoolUtils.andb_11_envptr_427", %TName_Bool* %"$res2_428"), !dbg !45
  store %TName_Bool* %"$$BoolUtils.andb_11_call_429", %TName_Bool** %"$BoolUtils.andb_12", align 8, !dbg !45
  %"$$BoolUtils.andb_12_430" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_430", %TName_Bool** %res7, align 8, !dbg !45
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_418"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %res8 = alloca %TName_Bool*, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_441" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_442" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_441", 0
  %"$BoolUtils.andb_envptr_443" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_441", 1
  %"$res3_444" = load %TName_Bool*, %TName_Bool** %res3, align 8
  %"$BoolUtils.andb_call_445" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_442"(i8* %"$BoolUtils.andb_envptr_443", %TName_Bool* %"$res3_444"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_445", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !46
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_446" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_447" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_446", 0
  %"$$BoolUtils.andb_13_envptr_448" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_446", 1
  %"$res4_449" = load %TName_Bool*, %TName_Bool** %res4, align 8
  %"$$BoolUtils.andb_13_call_450" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_447"(i8* %"$$BoolUtils.andb_13_envptr_448", %TName_Bool* %"$res4_449"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_13_call_450", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !46
  %"$$BoolUtils.andb_14_451" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_451", %TName_Bool** %res8, align 8, !dbg !46
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_439"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %res9 = alloca %TName_Bool*, align 8
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$BoolUtils.andb_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_462" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_463" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_462", 0
  %"$BoolUtils.andb_envptr_464" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_462", 1
  %"$res5_465" = load %TName_Bool*, %TName_Bool** %res5, align 8
  %"$BoolUtils.andb_call_466" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_463"(i8* %"$BoolUtils.andb_envptr_464", %TName_Bool* %"$res5_465"), !dbg !47
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_466", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_15", align 8, !dbg !47
  %"$BoolUtils.andb_16" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_15_467" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_15", align 8
  %"$$BoolUtils.andb_15_fptr_468" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_15_467", 0
  %"$$BoolUtils.andb_15_envptr_469" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_15_467", 1
  %"$res6_470" = load %TName_Bool*, %TName_Bool** %res6, align 8
  %"$$BoolUtils.andb_15_call_471" = call %TName_Bool* %"$$BoolUtils.andb_15_fptr_468"(i8* %"$$BoolUtils.andb_15_envptr_469", %TName_Bool* %"$res6_470"), !dbg !47
  store %TName_Bool* %"$$BoolUtils.andb_15_call_471", %TName_Bool** %"$BoolUtils.andb_16", align 8, !dbg !47
  %"$$BoolUtils.andb_16_472" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_16", align 8
  store %TName_Bool* %"$$BoolUtils.andb_16_472", %TName_Bool** %res9, align 8, !dbg !47
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_460"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %res10 = alloca %TName_Bool*, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_483" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_484" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_483", 0
  %"$BoolUtils.andb_envptr_485" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_483", 1
  %"$res7_486" = load %TName_Bool*, %TName_Bool** %res7, align 8
  %"$BoolUtils.andb_call_487" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_484"(i8* %"$BoolUtils.andb_envptr_485", %TName_Bool* %"$res7_486"), !dbg !48
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_487", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8, !dbg !48
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_17_488" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_489" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_488", 0
  %"$$BoolUtils.andb_17_envptr_490" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_488", 1
  %"$res8_491" = load %TName_Bool*, %TName_Bool** %res8, align 8
  %"$$BoolUtils.andb_17_call_492" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_489"(i8* %"$$BoolUtils.andb_17_envptr_490", %TName_Bool* %"$res8_491"), !dbg !48
  store %TName_Bool* %"$$BoolUtils.andb_17_call_492", %TName_Bool** %"$BoolUtils.andb_18", align 8, !dbg !48
  %"$$BoolUtils.andb_18_493" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_493", %TName_Bool** %res10, align 8, !dbg !48
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_481"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_499" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_500" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_499", 0
  %"$BoolUtils.andb_envptr_501" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_499", 1
  %"$res9_502" = load %TName_Bool*, %TName_Bool** %res9, align 8
  %"$BoolUtils.andb_call_503" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_500"(i8* %"$BoolUtils.andb_envptr_501", %TName_Bool* %"$res9_502"), !dbg !49
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_503", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8, !dbg !49
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_19_504" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_505" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_504", 0
  %"$$BoolUtils.andb_19_envptr_506" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_504", 1
  %"$res10_507" = load %TName_Bool*, %TName_Bool** %res10, align 8
  %"$$BoolUtils.andb_19_call_508" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_505"(i8* %"$$BoolUtils.andb_19_envptr_506", %TName_Bool* %"$res10_507"), !dbg !49
  store %TName_Bool* %"$$BoolUtils.andb_19_call_508", %TName_Bool** %"$BoolUtils.andb_20", align 8, !dbg !49
  %"$$BoolUtils.andb_20_509" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_509", %TName_Bool** %"$expr_27", align 8, !dbg !49
  %"$$expr_27_510" = load %TName_Bool*, %TName_Bool** %"$expr_27", align 8
  ret %TName_Bool* %"$$expr_27_510"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_lt_BNum(i8*, i8*, i8*)

declare %TName_Bool* @_lt_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_lt_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_511" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_512" = bitcast %TName_Bool* %"$exprval_511" to i8*
  %"$execptr_load_513" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_513", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_512")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_lt.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !5, file: !5, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 22, column: 5, scope: !4)
!10 = !DILocation(line: 23, column: 15, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !5, line: 23, column: 7)
!12 = distinct !DILexicalBlock(scope: !4, file: !5, line: 22, column: 5)
!13 = !DILocation(line: 24, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !5, line: 24, column: 7)
!15 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = !DILocation(line: 9, column: 16, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !5, line: 9, column: 7)
!19 = distinct !DILexicalBlock(scope: !15, file: !5, line: 8, column: 5)
!20 = !DILocation(line: 10, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !5, line: 10, column: 7)
!22 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 8, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = !DILocation(line: 22, column: 5, scope: !24)
!29 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 1, column: 11, scope: !29)
!31 = !DILocation(line: 2, column: 11, scope: !29)
!32 = !DILocation(line: 3, column: 12, scope: !29)
!33 = !DILocation(line: 4, column: 13, scope: !29)
!34 = !DILocation(line: 5, column: 12, scope: !29)
!35 = !DILocation(line: 7, column: 10, scope: !29)
!36 = !DILocation(line: 8, column: 10, scope: !29)
!37 = !DILocation(line: 9, column: 12, scope: !29)
!38 = !DILocation(line: 10, column: 13, scope: !29)
!39 = !DILocation(line: 11, column: 12, scope: !29)
!40 = !DILocation(line: 13, column: 10, scope: !29)
!41 = !DILocation(line: 14, column: 10, scope: !29)
!42 = !DILocation(line: 15, column: 12, scope: !29)
!43 = !DILocation(line: 16, column: 13, scope: !29)
!44 = !DILocation(line: 17, column: 12, scope: !29)
!45 = !DILocation(line: 19, column: 12, scope: !29)
!46 = !DILocation(line: 20, column: 12, scope: !29)
!47 = !DILocation(line: 21, column: 12, scope: !29)
!48 = !DILocation(line: 22, column: 13, scope: !29)
!49 = !DILocation(line: 23, column: 1, scope: !29)
