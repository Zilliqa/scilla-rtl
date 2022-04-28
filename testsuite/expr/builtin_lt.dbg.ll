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
%"$TyDescrTy_ADTTyp_60" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_59"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_59" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_61"**, %"$TyDescrTy_ADTTyp_60"* }
%"$TyDescrTy_ADTTyp_Constr_61" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_517" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_518" = type { %ParamDescrString, i32, %"$ParamDescr_517"* }
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
@"$BNumLit_211" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_225" = unnamed_addr constant [3 x i8] c"200"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_52", %_TyDescrTy_Typ* @"$TyDescr_Int64_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", %_TyDescrTy_Typ* @"$TyDescr_Uint256_44", %_TyDescrTy_Typ* @"$TyDescr_Uint32_32", %_TyDescrTy_Typ* @"$TyDescr_Uint64_36", %_TyDescrTy_Typ* @"$TyDescr_Bnum_48", %_TyDescrTy_Typ* @"$TyDescr_Uint128_40", %_TyDescrTy_Typ* @"$TyDescr_Exception_54", %_TyDescrTy_Typ* @"$TyDescr_String_46", %_TyDescrTy_Typ* @"$TyDescr_Int256_42", %_TyDescrTy_Typ* @"$TyDescr_Int128_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr_58", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_56", %_TyDescrTy_Typ* @"$TyDescr_Message_50", %_TyDescrTy_Typ* @"$TyDescr_Int32_30"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_517"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_518"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_21"(%"$$fundef_21_env_78"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$b_154" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_154", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_154", metadata !9, metadata !DIExpression()), !dbg !12
  %"$retval_22" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_22", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 2, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 2
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$b_tag_130" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_131" = load i8, i8* %"$b_tag_130", align 1
  switch i8 %"$b_tag_131", label %"$empty_default_132" [
    i8 0, label %"$True_133"
    i8 1, label %"$False_143"
  ], !dbg !14

"$True_133":                                      ; preds = %"$have_gas_127"
  %"$b_134" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$True_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$True_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$adtval_140_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_140_salloc" = call i8* @_salloc(i8* %"$adtval_140_load", i64 1)
  %"$adtval_140" = bitcast i8* %"$adtval_140_salloc" to %CName_False*
  %"$adtgep_141" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_140", i32 0, i32 0
  store i8 1, i8* %"$adtgep_141", align 1
  %"$adtptr_142" = bitcast %CName_False* %"$adtval_140" to %TName_Bool*
  store %TName_Bool* %"$adtptr_142", %TName_Bool** %"$retval_22", align 8, !dbg !15
  br label %"$matchsucc_129"

"$False_143":                                     ; preds = %"$have_gas_127"
  %"$b_144" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$False_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$False_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$adtval_150_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_150_salloc" = call i8* @_salloc(i8* %"$adtval_150_load", i64 1)
  %"$adtval_150" = bitcast i8* %"$adtval_150_salloc" to %CName_True*
  %"$adtgep_151" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_150", i32 0, i32 0
  store i8 0, i8* %"$adtgep_151", align 1
  %"$adtptr_152" = bitcast %CName_True* %"$adtval_150" to %TName_Bool*
  store %TName_Bool* %"$adtptr_152", %TName_Bool** %"$retval_22", align 8, !dbg !18
  br label %"$matchsucc_129"

"$empty_default_132":                             ; preds = %"$have_gas_127"
  br label %"$matchsucc_129"

"$matchsucc_129":                                 ; preds = %"$have_gas_148", %"$have_gas_138", %"$empty_default_132"
  %"$$retval_22_153" = load %TName_Bool*, %TName_Bool** %"$retval_22", align 8
  ret %TName_Bool* %"$$retval_22_153"
}

define internal %TName_Bool* @"$fundef_25"(%"$$fundef_25_env_79"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$c_123" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_123", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_123", metadata !21, metadata !DIExpression()), !dbg !22
  %"$$fundef_25_env_b_93" = getelementptr inbounds %"$$fundef_25_env_79", %"$$fundef_25_env_79"* %0, i32 0, i32 0
  %"$b_envload_94" = load %TName_Bool*, %TName_Bool** %"$$fundef_25_env_b_93", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_94", %TName_Bool** %b, align 8
  %"$retval_26" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_26", metadata !23, metadata !DIExpression()), !dbg !24
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 2, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %entry
  %"$consume_99" = sub i64 %"$gasrem_95", 2
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$b_101" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_102" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_101", i32 0, i32 0
  %"$b_tag_103" = load i8, i8* %"$b_tag_102", align 1
  switch i8 %"$b_tag_103", label %"$empty_default_104" [
    i8 1, label %"$False_105"
    i8 0, label %"$True_115"
  ], !dbg !24

"$False_105":                                     ; preds = %"$have_gas_98"
  %"$b_106" = bitcast %TName_Bool* %"$b_101" to %CName_False*
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$False_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$False_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$adtval_112_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_112_salloc" = call i8* @_salloc(i8* %"$adtval_112_load", i64 1)
  %"$adtval_112" = bitcast i8* %"$adtval_112_salloc" to %CName_False*
  %"$adtgep_113" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_112", i32 0, i32 0
  store i8 1, i8* %"$adtgep_113", align 1
  %"$adtptr_114" = bitcast %CName_False* %"$adtval_112" to %TName_Bool*
  store %TName_Bool* %"$adtptr_114", %TName_Bool** %"$retval_26", align 8, !dbg !25
  br label %"$matchsucc_100"

"$True_115":                                      ; preds = %"$have_gas_98"
  %"$b_116" = bitcast %TName_Bool* %"$b_101" to %CName_True*
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$True_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$True_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_26", align 8, !dbg !28
  br label %"$matchsucc_100"

"$empty_default_104":                             ; preds = %"$have_gas_98"
  br label %"$matchsucc_100"

"$matchsucc_100":                                 ; preds = %"$have_gas_120", %"$have_gas_110", %"$empty_default_104"
  %"$$retval_26_122" = load %TName_Bool*, %TName_Bool** %"$retval_26", align 8
  ret %TName_Bool* %"$$retval_26_122"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_80"* %0, %TName_Bool* %1) !dbg !30 {
entry:
  %"$b_92" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_92", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_92", metadata !31, metadata !DIExpression()), !dbg !32
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_25_cloval_89", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8, !dbg !33
  %"$$retval_24_91" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_24_91"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !34 {
entry:
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 5, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %entry
  %"$consume_159" = sub i64 %"$gasrem_155", 5
  store i64 %"$consume_159", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !36
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 6, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 6
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !36
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_23_env_80"*, %TName_Bool*)* @"$fundef_23" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !37
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_168"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_21_env_78"*, %TName_Bool*)* @"$fundef_21" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !38
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 196, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_176"
  %"$consume_185" = sub i64 %"$gasrem_181", 196
  store i64 %"$consume_185", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !36
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 20, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 20
  store i64 %"$consume_190", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !36
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 12, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 12
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !36
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 2, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 2
  store i64 %"$consume_200", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !36
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !39 {
entry:
  %"$expr_27" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_27", metadata !40, metadata !DIExpression()), !dbg !41
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %entry
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %bn1, metadata !42, metadata !DIExpression()), !dbg !45
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$execptr_load_212" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_213" = call i8* @_new_bnum(i8* %"$execptr_load_212", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_211", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_213", i8** %bn1, align 8, !dbg !41
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_209"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %bn2, metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_227" = call i8* @_new_bnum(i8* %"$execptr_load_226", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_225", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_227", i8** %bn2, align 8, !dbg !48
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_223"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res1, metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 32, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 32
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$bn1_240" = load i8*, i8** %bn1, align 8
  %"$bn2_241" = load i8*, i8** %bn2, align 8
  %"$blt_call_242" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_239", i8* %"$bn1_240", i8* %"$bn2_241"), !dbg !51
  store %TName_Bool* %"$blt_call_242", %TName_Bool** %res1, align 8, !dbg !51
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_237"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %res2n = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res2n, metadata !52, metadata !DIExpression()), !dbg !53
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 32, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 32
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$bn2_255" = load i8*, i8** %bn2, align 8
  %"$bn1_256" = load i8*, i8** %bn1, align 8
  %"$blt_call_257" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_254", i8* %"$bn2_255", i8* %"$bn1_256"), !dbg !54
  store %TName_Bool* %"$blt_call_257", %TName_Bool** %res2n, align 8, !dbg !54
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_252"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res2, metadata !55, metadata !DIExpression()), !dbg !56
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$BoolUtils.negb_8" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.negb_8", metadata !57, metadata !DIExpression()), !dbg !58
  %"$BoolUtils.negb_269" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_270" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_269", 0
  %"$BoolUtils.negb_envptr_271" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_269", 1
  %"$res2n_272" = load %TName_Bool*, %TName_Bool** %res2n, align 8
  %"$BoolUtils.negb_call_273" = call %TName_Bool* %"$BoolUtils.negb_fptr_270"(i8* %"$BoolUtils.negb_envptr_271", %TName_Bool* %"$res2n_272"), !dbg !58
  store %TName_Bool* %"$BoolUtils.negb_call_273", %TName_Bool** %"$BoolUtils.negb_8", align 8, !dbg !58
  %"$$BoolUtils.negb_8_274" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_8", align 8
  store %TName_Bool* %"$$BoolUtils.negb_8_274", %TName_Bool** %res2, align 8, !dbg !58
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_267"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %n1, metadata !59, metadata !DIExpression()), !dbg !61
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  store %Int32 { i32 -100 }, %Int32* %n1, align 4, !dbg !62
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %n2, metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  store %Int32 { i32 200 }, %Int32* %n2, align 4, !dbg !65
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %res3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res3, metadata !66, metadata !DIExpression()), !dbg !67
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 4, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 4
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$execptr_load_305" = load i8*, i8** @_execptr, align 8
  %"$n1_306" = load %Int32, %Int32* %n1, align 4
  %"$n2_307" = load %Int32, %Int32* %n2, align 4
  %"$lt_call_308" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_305", %Int32 %"$n1_306", %Int32 %"$n2_307"), !dbg !68
  store %TName_Bool* %"$lt_call_308", %TName_Bool** %res3, align 8, !dbg !68
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_303"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %res4n = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res4n, metadata !69, metadata !DIExpression()), !dbg !70
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 4, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 4
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  %"$n2_321" = load %Int32, %Int32* %n2, align 4
  %"$n1_322" = load %Int32, %Int32* %n1, align 4
  %"$lt_call_323" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_320", %Int32 %"$n2_321", %Int32 %"$n1_322"), !dbg !71
  store %TName_Bool* %"$lt_call_323", %TName_Bool** %res4n, align 8, !dbg !71
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_318"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %res4 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res4, metadata !72, metadata !DIExpression()), !dbg !73
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.negb_9", metadata !74, metadata !DIExpression()), !dbg !75
  %"$BoolUtils.negb_335" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_336" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_335", 0
  %"$BoolUtils.negb_envptr_337" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_335", 1
  %"$res4n_338" = load %TName_Bool*, %TName_Bool** %res4n, align 8
  %"$BoolUtils.negb_call_339" = call %TName_Bool* %"$BoolUtils.negb_fptr_336"(i8* %"$BoolUtils.negb_envptr_337", %TName_Bool* %"$res4n_338"), !dbg !75
  store %TName_Bool* %"$BoolUtils.negb_call_339", %TName_Bool** %"$BoolUtils.negb_9", align 8, !dbg !75
  %"$$BoolUtils.negb_9_340" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_340", %TName_Bool** %res4, align 8, !dbg !75
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_333"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$n1_6" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$n1_6", metadata !76, metadata !DIExpression()), !dbg !78
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  store %Uint256 { i256 100 }, %Uint256* %"$n1_6", align 8, !dbg !79
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$n2_7" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$n2_7", metadata !80, metadata !DIExpression()), !dbg !81
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  store %Uint256 { i256 200 }, %Uint256* %"$n2_7", align 8, !dbg !82
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %res5 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res5, metadata !83, metadata !DIExpression()), !dbg !84
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 16, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_364"
  %"$consume_371" = sub i64 %"$gasrem_367", 16
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$execptr_load_372" = load i8*, i8** @_execptr, align 8
  %"$lt_$n1_6_373" = alloca %Uint256, align 8
  %"$$n1_6_374" = load %Uint256, %Uint256* %"$n1_6", align 8
  store %Uint256 %"$$n1_6_374", %Uint256* %"$lt_$n1_6_373", align 8
  %"$lt_$n2_7_375" = alloca %Uint256, align 8
  %"$$n2_7_376" = load %Uint256, %Uint256* %"$n2_7", align 8
  store %Uint256 %"$$n2_7_376", %Uint256* %"$lt_$n2_7_375", align 8
  %"$lt_call_377" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_372", %Uint256* %"$lt_$n1_6_373", %Uint256* %"$lt_$n2_7_375"), !dbg !85
  store %TName_Bool* %"$lt_call_377", %TName_Bool** %res5, align 8, !dbg !85
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_370"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %res6n = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res6n, metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 16, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_382"
  %"$consume_389" = sub i64 %"$gasrem_385", 16
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$execptr_load_390" = load i8*, i8** @_execptr, align 8
  %"$lt_$n2_7_391" = alloca %Uint256, align 8
  %"$$n2_7_392" = load %Uint256, %Uint256* %"$n2_7", align 8
  store %Uint256 %"$$n2_7_392", %Uint256* %"$lt_$n2_7_391", align 8
  %"$lt_$n1_6_393" = alloca %Uint256, align 8
  %"$$n1_6_394" = load %Uint256, %Uint256* %"$n1_6", align 8
  store %Uint256 %"$$n1_6_394", %Uint256* %"$lt_$n1_6_393", align 8
  %"$lt_call_395" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_390", %Uint256* %"$lt_$n2_7_391", %Uint256* %"$lt_$n1_6_393"), !dbg !88
  store %TName_Bool* %"$lt_call_395", %TName_Bool** %res6n, align 8, !dbg !88
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_388"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %res6 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res6, metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$BoolUtils.negb_10" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.negb_10", metadata !91, metadata !DIExpression()), !dbg !92
  %"$BoolUtils.negb_407" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_408" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_407", 0
  %"$BoolUtils.negb_envptr_409" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_407", 1
  %"$res6n_410" = load %TName_Bool*, %TName_Bool** %res6n, align 8
  %"$BoolUtils.negb_call_411" = call %TName_Bool* %"$BoolUtils.negb_fptr_408"(i8* %"$BoolUtils.negb_envptr_409", %TName_Bool* %"$res6n_410"), !dbg !92
  store %TName_Bool* %"$BoolUtils.negb_call_411", %TName_Bool** %"$BoolUtils.negb_10", align 8, !dbg !92
  %"$$BoolUtils.negb_10_412" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_10", align 8
  store %TName_Bool* %"$$BoolUtils.negb_10_412", %TName_Bool** %res6, align 8, !dbg !92
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_405"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %res7 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res7, metadata !93, metadata !DIExpression()), !dbg !94
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_423" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_424" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_423", 0
  %"$BoolUtils.andb_envptr_425" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_423", 1
  %"$res1_426" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_427" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_424"(i8* %"$BoolUtils.andb_envptr_425", %TName_Bool* %"$res1_426"), !dbg !95
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_427", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8, !dbg !95
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_12", metadata !96, metadata !DIExpression()), !dbg !95
  %"$$BoolUtils.andb_11_428" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_429" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_428", 0
  %"$$BoolUtils.andb_11_envptr_430" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_428", 1
  %"$res2_431" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_11_call_432" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_429"(i8* %"$$BoolUtils.andb_11_envptr_430", %TName_Bool* %"$res2_431"), !dbg !95
  store %TName_Bool* %"$$BoolUtils.andb_11_call_432", %TName_Bool** %"$BoolUtils.andb_12", align 8, !dbg !95
  %"$$BoolUtils.andb_12_433" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_433", %TName_Bool** %res7, align 8, !dbg !95
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_421"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %res8 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res8, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_444" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_445" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_444", 0
  %"$BoolUtils.andb_envptr_446" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_444", 1
  %"$res3_447" = load %TName_Bool*, %TName_Bool** %res3, align 8
  %"$BoolUtils.andb_call_448" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_445"(i8* %"$BoolUtils.andb_envptr_446", %TName_Bool* %"$res3_447"), !dbg !99
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_448", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !99
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_14", metadata !100, metadata !DIExpression()), !dbg !99
  %"$$BoolUtils.andb_13_449" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_450" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_449", 0
  %"$$BoolUtils.andb_13_envptr_451" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_449", 1
  %"$res4_452" = load %TName_Bool*, %TName_Bool** %res4, align 8
  %"$$BoolUtils.andb_13_call_453" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_450"(i8* %"$$BoolUtils.andb_13_envptr_451", %TName_Bool* %"$res4_452"), !dbg !99
  store %TName_Bool* %"$$BoolUtils.andb_13_call_453", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !99
  %"$$BoolUtils.andb_14_454" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_454", %TName_Bool** %res8, align 8, !dbg !99
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_442"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %res9 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res9, metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$BoolUtils.andb_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_465" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_466" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_465", 0
  %"$BoolUtils.andb_envptr_467" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_465", 1
  %"$res5_468" = load %TName_Bool*, %TName_Bool** %res5, align 8
  %"$BoolUtils.andb_call_469" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_466"(i8* %"$BoolUtils.andb_envptr_467", %TName_Bool* %"$res5_468"), !dbg !103
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_469", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_15", align 8, !dbg !103
  %"$BoolUtils.andb_16" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_16", metadata !104, metadata !DIExpression()), !dbg !103
  %"$$BoolUtils.andb_15_470" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_15", align 8
  %"$$BoolUtils.andb_15_fptr_471" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_15_470", 0
  %"$$BoolUtils.andb_15_envptr_472" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_15_470", 1
  %"$res6_473" = load %TName_Bool*, %TName_Bool** %res6, align 8
  %"$$BoolUtils.andb_15_call_474" = call %TName_Bool* %"$$BoolUtils.andb_15_fptr_471"(i8* %"$$BoolUtils.andb_15_envptr_472", %TName_Bool* %"$res6_473"), !dbg !103
  store %TName_Bool* %"$$BoolUtils.andb_15_call_474", %TName_Bool** %"$BoolUtils.andb_16", align 8, !dbg !103
  %"$$BoolUtils.andb_16_475" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_16", align 8
  store %TName_Bool* %"$$BoolUtils.andb_16_475", %TName_Bool** %res9, align 8, !dbg !103
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_463"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %res10 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res10, metadata !105, metadata !DIExpression()), !dbg !106
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_479"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_486" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_486", 0
  %"$BoolUtils.andb_envptr_488" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_486", 1
  %"$res7_489" = load %TName_Bool*, %TName_Bool** %res7, align 8
  %"$BoolUtils.andb_call_490" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_487"(i8* %"$BoolUtils.andb_envptr_488", %TName_Bool* %"$res7_489"), !dbg !107
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_490", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8, !dbg !107
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_18", metadata !108, metadata !DIExpression()), !dbg !107
  %"$$BoolUtils.andb_17_491" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_491", 0
  %"$$BoolUtils.andb_17_envptr_493" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_491", 1
  %"$res8_494" = load %TName_Bool*, %TName_Bool** %res8, align 8
  %"$$BoolUtils.andb_17_call_495" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_492"(i8* %"$$BoolUtils.andb_17_envptr_493", %TName_Bool* %"$res8_494"), !dbg !107
  store %TName_Bool* %"$$BoolUtils.andb_17_call_495", %TName_Bool** %"$BoolUtils.andb_18", align 8, !dbg !107
  %"$$BoolUtils.andb_18_496" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_496", %TName_Bool** %res10, align 8, !dbg !107
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_484"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_502" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_503" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_502", 0
  %"$BoolUtils.andb_envptr_504" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_502", 1
  %"$res9_505" = load %TName_Bool*, %TName_Bool** %res9, align 8
  %"$BoolUtils.andb_call_506" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_503"(i8* %"$BoolUtils.andb_envptr_504", %TName_Bool* %"$res9_505"), !dbg !109
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_506", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8, !dbg !109
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_20", metadata !110, metadata !DIExpression()), !dbg !109
  %"$$BoolUtils.andb_19_507" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_508" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_507", 0
  %"$$BoolUtils.andb_19_envptr_509" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_507", 1
  %"$res10_510" = load %TName_Bool*, %TName_Bool** %res10, align 8
  %"$$BoolUtils.andb_19_call_511" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_508"(i8* %"$$BoolUtils.andb_19_envptr_509", %TName_Bool* %"$res10_510"), !dbg !109
  store %TName_Bool* %"$$BoolUtils.andb_19_call_511", %TName_Bool** %"$BoolUtils.andb_20", align 8, !dbg !109
  %"$$BoolUtils.andb_20_512" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_512", %TName_Bool** %"$expr_27", align 8, !dbg !109
  %"$$expr_27_513" = load %TName_Bool*, %TName_Bool** %"$expr_27", align 8
  ret %TName_Bool* %"$$expr_27_513"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_lt_BNum(i8*, i8*, i8*)

declare %TName_Bool* @_lt_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_lt_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_514" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_515" = bitcast %TName_Bool* %"$exprval_514" to i8*
  %"$execptr_load_516" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_516", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_515")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_lt.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !4, file: !4, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "b", scope: !3, file: !4, line: 21, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 21, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_22", scope: !3, file: !4, line: 22, type: !10)
!14 = !DILocation(line: 22, column: 5, scope: !3)
!15 = !DILocation(line: 23, column: 15, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 23, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 22, column: 5)
!18 = !DILocation(line: 24, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 24, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "c", scope: !20, file: !4, line: 7, type: !10)
!22 = !DILocation(line: 7, column: 8, scope: !20)
!23 = !DILocalVariable(name: "$retval_26", scope: !20, file: !4, line: 8, type: !10)
!24 = !DILocation(line: 8, column: 5, scope: !20)
!25 = !DILocation(line: 9, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !4, line: 9, column: 7)
!27 = distinct !DILexicalBlock(scope: !20, file: !4, line: 8, column: 5)
!28 = !DILocation(line: 10, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !27, file: !4, line: 10, column: 7)
!30 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!31 = !DILocalVariable(name: "b", scope: !30, file: !4, line: 6, type: !10)
!32 = !DILocation(line: 6, column: 8, scope: !30)
!33 = !DILocation(line: 8, column: 5, scope: !30)
!34 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !35, file: !35, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!35 = !DIFile(filename: ".", directory: ".")
!36 = !DILocation(line: 0, scope: !34)
!37 = !DILocation(line: 7, column: 3, scope: !34)
!38 = !DILocation(line: 22, column: 5, scope: !34)
!39 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!40 = !DILocalVariable(name: "$expr_27", scope: !39, file: !2, line: 1, type: !10)
!41 = !DILocation(line: 1, column: 11, scope: !39)
!42 = !DILocalVariable(name: "bn1", scope: !39, file: !2, line: 1, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "BNum", baseType: !44, size: 8, align: 8, dwarfAddressSpace: 0)
!44 = !DIBasicType(name: "BNum", size: 8)
!45 = !DILocation(line: 1, column: 5, scope: !39)
!46 = !DILocalVariable(name: "bn2", scope: !39, file: !2, line: 2, type: !43)
!47 = !DILocation(line: 2, column: 5, scope: !39)
!48 = !DILocation(line: 2, column: 11, scope: !39)
!49 = !DILocalVariable(name: "res1", scope: !39, file: !2, line: 3, type: !10)
!50 = !DILocation(line: 3, column: 5, scope: !39)
!51 = !DILocation(line: 3, column: 12, scope: !39)
!52 = !DILocalVariable(name: "res2n", scope: !39, file: !2, line: 4, type: !10)
!53 = !DILocation(line: 4, column: 5, scope: !39)
!54 = !DILocation(line: 4, column: 13, scope: !39)
!55 = !DILocalVariable(name: "res2", scope: !39, file: !2, line: 5, type: !10)
!56 = !DILocation(line: 5, column: 5, scope: !39)
!57 = !DILocalVariable(name: "$BoolUtils.negb_8", scope: !39, file: !2, line: 5, type: !10)
!58 = !DILocation(line: 5, column: 12, scope: !39)
!59 = !DILocalVariable(name: "n1", scope: !39, file: !2, line: 7, type: !60)
!60 = !DIBasicType(name: "Int32", size: 4)
!61 = !DILocation(line: 7, column: 5, scope: !39)
!62 = !DILocation(line: 7, column: 10, scope: !39)
!63 = !DILocalVariable(name: "n2", scope: !39, file: !2, line: 8, type: !60)
!64 = !DILocation(line: 8, column: 5, scope: !39)
!65 = !DILocation(line: 8, column: 10, scope: !39)
!66 = !DILocalVariable(name: "res3", scope: !39, file: !2, line: 9, type: !10)
!67 = !DILocation(line: 9, column: 5, scope: !39)
!68 = !DILocation(line: 9, column: 12, scope: !39)
!69 = !DILocalVariable(name: "res4n", scope: !39, file: !2, line: 10, type: !10)
!70 = !DILocation(line: 10, column: 5, scope: !39)
!71 = !DILocation(line: 10, column: 13, scope: !39)
!72 = !DILocalVariable(name: "res4", scope: !39, file: !2, line: 11, type: !10)
!73 = !DILocation(line: 11, column: 5, scope: !39)
!74 = !DILocalVariable(name: "$BoolUtils.negb_9", scope: !39, file: !2, line: 11, type: !10)
!75 = !DILocation(line: 11, column: 12, scope: !39)
!76 = !DILocalVariable(name: "$n1_6", scope: !39, file: !2, line: 13, type: !77)
!77 = !DIBasicType(name: "Uint256", size: 32)
!78 = !DILocation(line: 13, column: 5, scope: !39)
!79 = !DILocation(line: 13, column: 10, scope: !39)
!80 = !DILocalVariable(name: "$n2_7", scope: !39, file: !2, line: 14, type: !77)
!81 = !DILocation(line: 14, column: 5, scope: !39)
!82 = !DILocation(line: 14, column: 10, scope: !39)
!83 = !DILocalVariable(name: "res5", scope: !39, file: !2, line: 15, type: !10)
!84 = !DILocation(line: 15, column: 5, scope: !39)
!85 = !DILocation(line: 15, column: 12, scope: !39)
!86 = !DILocalVariable(name: "res6n", scope: !39, file: !2, line: 16, type: !10)
!87 = !DILocation(line: 16, column: 5, scope: !39)
!88 = !DILocation(line: 16, column: 13, scope: !39)
!89 = !DILocalVariable(name: "res6", scope: !39, file: !2, line: 17, type: !10)
!90 = !DILocation(line: 17, column: 5, scope: !39)
!91 = !DILocalVariable(name: "$BoolUtils.negb_10", scope: !39, file: !2, line: 17, type: !10)
!92 = !DILocation(line: 17, column: 12, scope: !39)
!93 = !DILocalVariable(name: "res7", scope: !39, file: !2, line: 19, type: !10)
!94 = !DILocation(line: 19, column: 5, scope: !39)
!95 = !DILocation(line: 19, column: 12, scope: !39)
!96 = !DILocalVariable(name: "$BoolUtils.andb_12", scope: !39, file: !2, line: 19, type: !10)
!97 = !DILocalVariable(name: "res8", scope: !39, file: !2, line: 20, type: !10)
!98 = !DILocation(line: 20, column: 5, scope: !39)
!99 = !DILocation(line: 20, column: 12, scope: !39)
!100 = !DILocalVariable(name: "$BoolUtils.andb_14", scope: !39, file: !2, line: 20, type: !10)
!101 = !DILocalVariable(name: "res9", scope: !39, file: !2, line: 21, type: !10)
!102 = !DILocation(line: 21, column: 5, scope: !39)
!103 = !DILocation(line: 21, column: 12, scope: !39)
!104 = !DILocalVariable(name: "$BoolUtils.andb_16", scope: !39, file: !2, line: 21, type: !10)
!105 = !DILocalVariable(name: "res10", scope: !39, file: !2, line: 22, type: !10)
!106 = !DILocation(line: 22, column: 5, scope: !39)
!107 = !DILocation(line: 22, column: 13, scope: !39)
!108 = !DILocalVariable(name: "$BoolUtils.andb_18", scope: !39, file: !2, line: 22, type: !10)
!109 = !DILocation(line: 23, column: 1, scope: !39)
!110 = !DILocalVariable(name: "$BoolUtils.andb_20", scope: !39, file: !2, line: 23, type: !10)
