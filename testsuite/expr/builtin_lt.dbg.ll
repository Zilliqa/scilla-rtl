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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_28" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_58" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_57"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_57" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_59"**, %"$TyDescrTy_ADTTyp_58"* }
%"$TyDescrTy_ADTTyp_Constr_59" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_512" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_513" = type { %ParamDescrString, i32, %"$ParamDescr_512"* }
%"$$fundef_21_env_76" = type {}
%"$$fundef_25_env_77" = type { %TName_Bool* }
%"$$fundef_23_env_78" = type {}
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
@"$TyDescr_Bystr_Prim_55" = global %"$TyDescrTy_PrimTyp_28" { i32 7, i32 0 }
@"$TyDescr_Bystr_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_28"* @"$TyDescr_Bystr_Prim_55" to i8*) }
@"$TyDescr_ADT_Bool_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_57"* @"$TyDescr_Bool_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_Bool_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_58" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_75", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_57"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_57"*], [1 x %"$TyDescrTy_ADTTyp_Specl_57"*]* @"$TyDescr_Bool_ADTTyp_m_specls_74", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_66" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_59" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_66", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_69" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_59" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_69", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_59"*] [%"$TyDescrTy_ADTTyp_Constr_59"* @"$TyDescr_Bool_True_ADTTyp_Constr_67", %"$TyDescrTy_ADTTyp_Constr_59"* @"$TyDescr_Bool_False_ADTTyp_Constr_70"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_57" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_59"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_59"*], [2 x %"$TyDescrTy_ADTTyp_Constr_59"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_58"* @"$TyDescr_Bool_ADTTyp_64" }
@"$TyDescr_Bool_ADTTyp_m_specls_74" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_57"*] [%"$TyDescrTy_ADTTyp_Specl_57"* @"$TyDescr_Bool_ADTTyp_Specl_73"]
@"$TyDescr_ADT_Bool_75" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$BNumLit_206" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_220" = unnamed_addr constant [3 x i8] c"200"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_52", %_TyDescrTy_Typ* @"$TyDescr_Int64_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_60", %_TyDescrTy_Typ* @"$TyDescr_Uint256_44", %_TyDescrTy_Typ* @"$TyDescr_Uint32_32", %_TyDescrTy_Typ* @"$TyDescr_Uint64_36", %_TyDescrTy_Typ* @"$TyDescr_Bnum_48", %_TyDescrTy_Typ* @"$TyDescr_Uint128_40", %_TyDescrTy_Typ* @"$TyDescr_Exception_54", %_TyDescrTy_Typ* @"$TyDescr_String_46", %_TyDescrTy_Typ* @"$TyDescr_Int256_42", %_TyDescrTy_Typ* @"$TyDescr_Int128_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr_56", %_TyDescrTy_Typ* @"$TyDescr_Message_50", %_TyDescrTy_Typ* @"$TyDescr_Int32_30"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_512"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_513"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_21"(%"$$fundef_21_env_76"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_22" = alloca %TName_Bool*, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 2, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 2
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$b_tag_126" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_127" = load i8, i8* %"$b_tag_126", align 1
  switch i8 %"$b_tag_127", label %"$empty_default_128" [
    i8 0, label %"$True_129"
    i8 1, label %"$False_139"
  ], !dbg !9

"$True_129":                                      ; preds = %"$have_gas_123"
  %"$b_130" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$True_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$True_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$adtval_136_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_136_salloc" = call i8* @_salloc(i8* %"$adtval_136_load", i64 1)
  %"$adtval_136" = bitcast i8* %"$adtval_136_salloc" to %CName_False*
  %"$adtgep_137" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_136", i32 0, i32 0
  store i8 1, i8* %"$adtgep_137", align 1
  %"$adtptr_138" = bitcast %CName_False* %"$adtval_136" to %TName_Bool*
  store %TName_Bool* %"$adtptr_138", %TName_Bool** %"$retval_22", align 8, !dbg !10
  br label %"$matchsucc_125"

"$False_139":                                     ; preds = %"$have_gas_123"
  %"$b_140" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$False_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$False_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$adtval_146_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_146_salloc" = call i8* @_salloc(i8* %"$adtval_146_load", i64 1)
  %"$adtval_146" = bitcast i8* %"$adtval_146_salloc" to %CName_True*
  %"$adtgep_147" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_146", i32 0, i32 0
  store i8 0, i8* %"$adtgep_147", align 1
  %"$adtptr_148" = bitcast %CName_True* %"$adtval_146" to %TName_Bool*
  store %TName_Bool* %"$adtptr_148", %TName_Bool** %"$retval_22", align 8, !dbg !13
  br label %"$matchsucc_125"

"$empty_default_128":                             ; preds = %"$have_gas_123"
  br label %"$matchsucc_125"

"$matchsucc_125":                                 ; preds = %"$have_gas_144", %"$have_gas_134", %"$empty_default_128"
  %"$$retval_22_149" = load %TName_Bool*, %TName_Bool** %"$retval_22", align 8
  ret %TName_Bool* %"$$retval_22_149"
}

define internal %TName_Bool* @"$fundef_25"(%"$$fundef_25_env_77"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$$fundef_25_env_b_90" = getelementptr inbounds %"$$fundef_25_env_77", %"$$fundef_25_env_77"* %0, i32 0, i32 0
  %"$b_envload_91" = load %TName_Bool*, %TName_Bool** %"$$fundef_25_env_b_90", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_91", %TName_Bool** %b, align 8
  %"$retval_26" = alloca %TName_Bool*, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 2, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 2
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %"$b_98" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_99" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_98", i32 0, i32 0
  %"$b_tag_100" = load i8, i8* %"$b_tag_99", align 1
  switch i8 %"$b_tag_100", label %"$empty_default_101" [
    i8 1, label %"$False_102"
    i8 0, label %"$True_112"
  ], !dbg !16

"$False_102":                                     ; preds = %"$have_gas_95"
  %"$b_103" = bitcast %TName_Bool* %"$b_98" to %CName_False*
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$False_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$False_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$adtval_109_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_109_salloc" = call i8* @_salloc(i8* %"$adtval_109_load", i64 1)
  %"$adtval_109" = bitcast i8* %"$adtval_109_salloc" to %CName_False*
  %"$adtgep_110" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_109", i32 0, i32 0
  store i8 1, i8* %"$adtgep_110", align 1
  %"$adtptr_111" = bitcast %CName_False* %"$adtval_109" to %TName_Bool*
  store %TName_Bool* %"$adtptr_111", %TName_Bool** %"$retval_26", align 8, !dbg !17
  br label %"$matchsucc_97"

"$True_112":                                      ; preds = %"$have_gas_95"
  %"$b_113" = bitcast %TName_Bool* %"$b_98" to %CName_True*
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$True_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$True_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_26", align 8, !dbg !20
  br label %"$matchsucc_97"

"$empty_default_101":                             ; preds = %"$have_gas_95"
  br label %"$matchsucc_97"

"$matchsucc_97":                                  ; preds = %"$have_gas_117", %"$have_gas_107", %"$empty_default_101"
  %"$$retval_26_119" = load %TName_Bool*, %TName_Bool** %"$retval_26", align 8
  ret %TName_Bool* %"$$retval_26_119"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_78"* %0, %TName_Bool* %1) !dbg !22 {
entry:
  %"$retval_24" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$$fundef_25_envp_84_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_84_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_84_load", i64 8)
  %"$$fundef_25_envp_84" = bitcast i8* %"$$fundef_25_envp_84_salloc" to %"$$fundef_25_env_77"*
  %"$$fundef_25_env_voidp_86" = bitcast %"$$fundef_25_env_77"* %"$$fundef_25_envp_84" to i8*
  %"$$fundef_25_cloval_87" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_25_env_77"*, %TName_Bool*)* @"$fundef_25" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_86", 1
  %"$$fundef_25_env_b_88" = getelementptr inbounds %"$$fundef_25_env_77", %"$$fundef_25_env_77"* %"$$fundef_25_envp_84", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_25_env_b_88", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_25_cloval_87", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8, !dbg !23
  %"$$retval_24_89" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_24_89"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 5, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %entry
  %"$consume_154" = sub i64 %"$gasrem_150", 5
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 6, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 6
  store i64 %"$consume_159", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_23_env_78"*, %TName_Bool*)* @"$fundef_23" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_163"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_21_env_76"*, %TName_Bool*)* @"$fundef_21" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !28
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 196, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_171"
  %"$consume_180" = sub i64 %"$gasrem_176", 196
  store i64 %"$consume_180", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 20, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 20
  store i64 %"$consume_185", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 12, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 12
  store i64 %"$consume_190", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 2, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 2
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !29 {
entry:
  %"$expr_27" = alloca %TName_Bool*, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %entry
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_199"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %"$execptr_load_207" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_208" = call i8* @_new_bnum(i8* %"$execptr_load_207", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_206", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_208", i8** %bn1, align 8, !dbg !30
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_204"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_222" = call i8* @_new_bnum(i8* %"$execptr_load_221", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_220", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_222", i8** %bn2, align 8, !dbg !31
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_218"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 32, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 32
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$execptr_load_234" = load i8*, i8** @_execptr, align 8
  %"$bn1_235" = load i8*, i8** %bn1, align 8
  %"$bn2_236" = load i8*, i8** %bn2, align 8
  %"$blt_call_237" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_234", i8* %"$bn1_235", i8* %"$bn2_236"), !dbg !32
  store %TName_Bool* %"$blt_call_237", %TName_Bool** %res1, align 8, !dbg !32
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_232"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %res2n = alloca %TName_Bool*, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 32, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 32
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$execptr_load_249" = load i8*, i8** @_execptr, align 8
  %"$bn2_250" = load i8*, i8** %bn2, align 8
  %"$bn1_251" = load i8*, i8** %bn1, align 8
  %"$blt_call_252" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_249", i8* %"$bn2_250", i8* %"$bn1_251"), !dbg !33
  store %TName_Bool* %"$blt_call_252", %TName_Bool** %res2n, align 8, !dbg !33
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_247"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$BoolUtils.negb_8" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_264" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_265" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_264", 0
  %"$BoolUtils.negb_envptr_266" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_264", 1
  %"$res2n_267" = load %TName_Bool*, %TName_Bool** %res2n, align 8
  %"$BoolUtils.negb_call_268" = call %TName_Bool* %"$BoolUtils.negb_fptr_265"(i8* %"$BoolUtils.negb_envptr_266", %TName_Bool* %"$res2n_267"), !dbg !34
  store %TName_Bool* %"$BoolUtils.negb_call_268", %TName_Bool** %"$BoolUtils.negb_8", align 8, !dbg !34
  %"$$BoolUtils.negb_8_269" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_8", align 8
  store %TName_Bool* %"$$BoolUtils.negb_8_269", %TName_Bool** %res2, align 8, !dbg !34
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_262"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  store %Int32 { i32 -100 }, %Int32* %n1, align 4, !dbg !35
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  store %Int32 { i32 200 }, %Int32* %n2, align 4, !dbg !36
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %res3 = alloca %TName_Bool*, align 8
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 4, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 4
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$execptr_load_300" = load i8*, i8** @_execptr, align 8
  %"$n1_301" = load %Int32, %Int32* %n1, align 4
  %"$n2_302" = load %Int32, %Int32* %n2, align 4
  %"$lt_call_303" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_300", %Int32 %"$n1_301", %Int32 %"$n2_302"), !dbg !37
  store %TName_Bool* %"$lt_call_303", %TName_Bool** %res3, align 8, !dbg !37
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_298"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %res4n = alloca %TName_Bool*, align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 4, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 4
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$execptr_load_315" = load i8*, i8** @_execptr, align 8
  %"$n2_316" = load %Int32, %Int32* %n2, align 4
  %"$n1_317" = load %Int32, %Int32* %n1, align 4
  %"$lt_call_318" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_315", %Int32 %"$n2_316", %Int32 %"$n1_317"), !dbg !38
  store %TName_Bool* %"$lt_call_318", %TName_Bool** %res4n, align 8, !dbg !38
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_313"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %res4 = alloca %TName_Bool*, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_330" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_331" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_330", 0
  %"$BoolUtils.negb_envptr_332" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_330", 1
  %"$res4n_333" = load %TName_Bool*, %TName_Bool** %res4n, align 8
  %"$BoolUtils.negb_call_334" = call %TName_Bool* %"$BoolUtils.negb_fptr_331"(i8* %"$BoolUtils.negb_envptr_332", %TName_Bool* %"$res4n_333"), !dbg !39
  store %TName_Bool* %"$BoolUtils.negb_call_334", %TName_Bool** %"$BoolUtils.negb_9", align 8, !dbg !39
  %"$$BoolUtils.negb_9_335" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_335", %TName_Bool** %res4, align 8, !dbg !39
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_328"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %"$n1_6" = alloca %Uint256, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  store %Uint256 { i256 100 }, %Uint256* %"$n1_6", align 8, !dbg !40
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$n2_7" = alloca %Uint256, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  store %Uint256 { i256 200 }, %Uint256* %"$n2_7", align 8, !dbg !41
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %res5 = alloca %TName_Bool*, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 16, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_359"
  %"$consume_366" = sub i64 %"$gasrem_362", 16
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$lt_$n1_6_368" = alloca %Uint256, align 8
  %"$$n1_6_369" = load %Uint256, %Uint256* %"$n1_6", align 8
  store %Uint256 %"$$n1_6_369", %Uint256* %"$lt_$n1_6_368", align 8
  %"$lt_$n2_7_370" = alloca %Uint256, align 8
  %"$$n2_7_371" = load %Uint256, %Uint256* %"$n2_7", align 8
  store %Uint256 %"$$n2_7_371", %Uint256* %"$lt_$n2_7_370", align 8
  %"$lt_call_372" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_367", %Uint256* %"$lt_$n1_6_368", %Uint256* %"$lt_$n2_7_370"), !dbg !42
  store %TName_Bool* %"$lt_call_372", %TName_Bool** %res5, align 8, !dbg !42
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_365"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %res6n = alloca %TName_Bool*, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 16, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_377"
  %"$consume_384" = sub i64 %"$gasrem_380", 16
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$execptr_load_385" = load i8*, i8** @_execptr, align 8
  %"$lt_$n2_7_386" = alloca %Uint256, align 8
  %"$$n2_7_387" = load %Uint256, %Uint256* %"$n2_7", align 8
  store %Uint256 %"$$n2_7_387", %Uint256* %"$lt_$n2_7_386", align 8
  %"$lt_$n1_6_388" = alloca %Uint256, align 8
  %"$$n1_6_389" = load %Uint256, %Uint256* %"$n1_6", align 8
  store %Uint256 %"$$n1_6_389", %Uint256* %"$lt_$n1_6_388", align 8
  %"$lt_call_390" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_385", %Uint256* %"$lt_$n2_7_386", %Uint256* %"$lt_$n1_6_388"), !dbg !43
  store %TName_Bool* %"$lt_call_390", %TName_Bool** %res6n, align 8, !dbg !43
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_383"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %res6 = alloca %TName_Bool*, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$BoolUtils.negb_10" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_402" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_403" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_402", 0
  %"$BoolUtils.negb_envptr_404" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_402", 1
  %"$res6n_405" = load %TName_Bool*, %TName_Bool** %res6n, align 8
  %"$BoolUtils.negb_call_406" = call %TName_Bool* %"$BoolUtils.negb_fptr_403"(i8* %"$BoolUtils.negb_envptr_404", %TName_Bool* %"$res6n_405"), !dbg !44
  store %TName_Bool* %"$BoolUtils.negb_call_406", %TName_Bool** %"$BoolUtils.negb_10", align 8, !dbg !44
  %"$$BoolUtils.negb_10_407" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_10", align 8
  store %TName_Bool* %"$$BoolUtils.negb_10_407", %TName_Bool** %res6, align 8, !dbg !44
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_400"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %res7 = alloca %TName_Bool*, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_418" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_419" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_418", 0
  %"$BoolUtils.andb_envptr_420" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_418", 1
  %"$res1_421" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_422" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_419"(i8* %"$BoolUtils.andb_envptr_420", %TName_Bool* %"$res1_421"), !dbg !45
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_422", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8, !dbg !45
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_11_423" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_424" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_423", 0
  %"$$BoolUtils.andb_11_envptr_425" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_423", 1
  %"$res2_426" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_11_call_427" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_424"(i8* %"$$BoolUtils.andb_11_envptr_425", %TName_Bool* %"$res2_426"), !dbg !45
  store %TName_Bool* %"$$BoolUtils.andb_11_call_427", %TName_Bool** %"$BoolUtils.andb_12", align 8, !dbg !45
  %"$$BoolUtils.andb_12_428" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_428", %TName_Bool** %res7, align 8, !dbg !45
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_416"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %res8 = alloca %TName_Bool*, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_439" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_440" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_439", 0
  %"$BoolUtils.andb_envptr_441" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_439", 1
  %"$res3_442" = load %TName_Bool*, %TName_Bool** %res3, align 8
  %"$BoolUtils.andb_call_443" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_440"(i8* %"$BoolUtils.andb_envptr_441", %TName_Bool* %"$res3_442"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_443", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !46
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_444" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_445" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_444", 0
  %"$$BoolUtils.andb_13_envptr_446" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_444", 1
  %"$res4_447" = load %TName_Bool*, %TName_Bool** %res4, align 8
  %"$$BoolUtils.andb_13_call_448" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_445"(i8* %"$$BoolUtils.andb_13_envptr_446", %TName_Bool* %"$res4_447"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_13_call_448", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !46
  %"$$BoolUtils.andb_14_449" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_449", %TName_Bool** %res8, align 8, !dbg !46
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_437"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %res9 = alloca %TName_Bool*, align 8
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %"$BoolUtils.andb_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_460" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_461" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_460", 0
  %"$BoolUtils.andb_envptr_462" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_460", 1
  %"$res5_463" = load %TName_Bool*, %TName_Bool** %res5, align 8
  %"$BoolUtils.andb_call_464" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_461"(i8* %"$BoolUtils.andb_envptr_462", %TName_Bool* %"$res5_463"), !dbg !47
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_464", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_15", align 8, !dbg !47
  %"$BoolUtils.andb_16" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_15_465" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_15", align 8
  %"$$BoolUtils.andb_15_fptr_466" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_15_465", 0
  %"$$BoolUtils.andb_15_envptr_467" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_15_465", 1
  %"$res6_468" = load %TName_Bool*, %TName_Bool** %res6, align 8
  %"$$BoolUtils.andb_15_call_469" = call %TName_Bool* %"$$BoolUtils.andb_15_fptr_466"(i8* %"$$BoolUtils.andb_15_envptr_467", %TName_Bool* %"$res6_468"), !dbg !47
  store %TName_Bool* %"$$BoolUtils.andb_15_call_469", %TName_Bool** %"$BoolUtils.andb_16", align 8, !dbg !47
  %"$$BoolUtils.andb_16_470" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_16", align 8
  store %TName_Bool* %"$$BoolUtils.andb_16_470", %TName_Bool** %res9, align 8, !dbg !47
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_458"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %res10 = alloca %TName_Bool*, align 8
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_474"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_481" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_482" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_481", 0
  %"$BoolUtils.andb_envptr_483" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_481", 1
  %"$res7_484" = load %TName_Bool*, %TName_Bool** %res7, align 8
  %"$BoolUtils.andb_call_485" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_482"(i8* %"$BoolUtils.andb_envptr_483", %TName_Bool* %"$res7_484"), !dbg !48
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_485", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8, !dbg !48
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_17_486" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_487" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_486", 0
  %"$$BoolUtils.andb_17_envptr_488" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_486", 1
  %"$res8_489" = load %TName_Bool*, %TName_Bool** %res8, align 8
  %"$$BoolUtils.andb_17_call_490" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_487"(i8* %"$$BoolUtils.andb_17_envptr_488", %TName_Bool* %"$res8_489"), !dbg !48
  store %TName_Bool* %"$$BoolUtils.andb_17_call_490", %TName_Bool** %"$BoolUtils.andb_18", align 8, !dbg !48
  %"$$BoolUtils.andb_18_491" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_491", %TName_Bool** %res10, align 8, !dbg !48
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_479"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_497" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_498" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_497", 0
  %"$BoolUtils.andb_envptr_499" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_497", 1
  %"$res9_500" = load %TName_Bool*, %TName_Bool** %res9, align 8
  %"$BoolUtils.andb_call_501" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_498"(i8* %"$BoolUtils.andb_envptr_499", %TName_Bool* %"$res9_500"), !dbg !49
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_501", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8, !dbg !49
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_19_502" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_503" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_502", 0
  %"$$BoolUtils.andb_19_envptr_504" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_502", 1
  %"$res10_505" = load %TName_Bool*, %TName_Bool** %res10, align 8
  %"$$BoolUtils.andb_19_call_506" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_503"(i8* %"$$BoolUtils.andb_19_envptr_504", %TName_Bool* %"$res10_505"), !dbg !49
  store %TName_Bool* %"$$BoolUtils.andb_19_call_506", %TName_Bool** %"$BoolUtils.andb_20", align 8, !dbg !49
  %"$$BoolUtils.andb_20_507" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_507", %TName_Bool** %"$expr_27", align 8, !dbg !49
  %"$$expr_27_508" = load %TName_Bool*, %TName_Bool** %"$expr_27", align 8
  ret %TName_Bool* %"$$expr_27_508"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_lt_BNum(i8*, i8*, i8*)

declare %TName_Bool* @_lt_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_lt_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_509" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_510" = bitcast %TName_Bool* %"$exprval_509" to i8*
  %"$execptr_load_511" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_511", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_60", i8* %"$memvoidcast_510")
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
