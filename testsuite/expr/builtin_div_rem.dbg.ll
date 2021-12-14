; let false = False in
; let test = True in
; 
; let arg1 = Uint32 1844 in
; let arg2 = Uint32 1843 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Uint32 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint32 1844 in
; let arg2 = Uint32 1843 in
; let test =
; let res = builtin rem arg1 arg2 in
; let res_ = Uint32 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint32 1844 in
; let arg2 = Uint32 1845 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Uint32 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int32 1844 in
; let arg2 = Int32 -1843 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Int32 -1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int32 0 in
; let arg2 = Int32 -1843 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Int32 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 1844 in
; let arg2 = Uint256 1843 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Uint256 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 1844 in
; let arg2 = Uint256 1843 in
; let test =
; let res = builtin rem arg1 arg2 in
; let res_ = Uint256 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 1844 in
; let arg2 = Uint256 1845 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Uint256 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 1844 in
; let arg2 = Int256 -1843 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Int256 -1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 0 in
; let arg2 = Int256 -1843 in
; let test =
; let res = builtin div arg1 arg2 in
; let res_ = Int256 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; test
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_86" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_116" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_115"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_115" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_117"**, %"$TyDescrTy_ADTTyp_116"* }
%"$TyDescrTy_ADTTyp_Constr_117" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1083" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1084" = type { %ParamDescrString, i32, %"$ParamDescr_1083"* }
%"$$fundef_83_env_134" = type { %TName_Bool* }
%"$$fundef_81_env_135" = type {}
%Uint32 = type { i32 }
%Uint256 = type { i256 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_87" = global %"$TyDescrTy_PrimTyp_86" zeroinitializer
@"$TyDescr_Int32_88" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Int32_Prim_87" to i8*) }
@"$TyDescr_Uint32_Prim_89" = global %"$TyDescrTy_PrimTyp_86" { i32 1, i32 0 }
@"$TyDescr_Uint32_90" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Uint32_Prim_89" to i8*) }
@"$TyDescr_Int64_Prim_91" = global %"$TyDescrTy_PrimTyp_86" { i32 0, i32 1 }
@"$TyDescr_Int64_92" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Int64_Prim_91" to i8*) }
@"$TyDescr_Uint64_Prim_93" = global %"$TyDescrTy_PrimTyp_86" { i32 1, i32 1 }
@"$TyDescr_Uint64_94" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Uint64_Prim_93" to i8*) }
@"$TyDescr_Int128_Prim_95" = global %"$TyDescrTy_PrimTyp_86" { i32 0, i32 2 }
@"$TyDescr_Int128_96" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Int128_Prim_95" to i8*) }
@"$TyDescr_Uint128_Prim_97" = global %"$TyDescrTy_PrimTyp_86" { i32 1, i32 2 }
@"$TyDescr_Uint128_98" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Uint128_Prim_97" to i8*) }
@"$TyDescr_Int256_Prim_99" = global %"$TyDescrTy_PrimTyp_86" { i32 0, i32 3 }
@"$TyDescr_Int256_100" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Int256_Prim_99" to i8*) }
@"$TyDescr_Uint256_Prim_101" = global %"$TyDescrTy_PrimTyp_86" { i32 1, i32 3 }
@"$TyDescr_Uint256_102" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Uint256_Prim_101" to i8*) }
@"$TyDescr_String_Prim_103" = global %"$TyDescrTy_PrimTyp_86" { i32 2, i32 0 }
@"$TyDescr_String_104" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_String_Prim_103" to i8*) }
@"$TyDescr_Bnum_Prim_105" = global %"$TyDescrTy_PrimTyp_86" { i32 3, i32 0 }
@"$TyDescr_Bnum_106" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Bnum_Prim_105" to i8*) }
@"$TyDescr_Message_Prim_107" = global %"$TyDescrTy_PrimTyp_86" { i32 4, i32 0 }
@"$TyDescr_Message_108" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Message_Prim_107" to i8*) }
@"$TyDescr_Event_Prim_109" = global %"$TyDescrTy_PrimTyp_86" { i32 5, i32 0 }
@"$TyDescr_Event_110" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Event_Prim_109" to i8*) }
@"$TyDescr_Exception_Prim_111" = global %"$TyDescrTy_PrimTyp_86" { i32 6, i32 0 }
@"$TyDescr_Exception_112" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Exception_Prim_111" to i8*) }
@"$TyDescr_Bystr_Prim_113" = global %"$TyDescrTy_PrimTyp_86" { i32 7, i32 0 }
@"$TyDescr_Bystr_114" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Bystr_Prim_113" to i8*) }
@"$TyDescr_ADT_Bool_118" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Bool_ADTTyp_Specl_131" to i8*) }
@"$TyDescr_Bool_ADTTyp_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_116" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_133", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_115"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_115"*], [1 x %"$TyDescrTy_ADTTyp_Specl_115"*]* @"$TyDescr_Bool_ADTTyp_m_specls_132", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_124" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_124", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_126" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_127" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_127", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_126", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_129" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_117"*] [%"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Bool_True_ADTTyp_Constr_125", %"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Bool_False_ADTTyp_Constr_128"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_130" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_115" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_130", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_117"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_117"*], [2 x %"$TyDescrTy_ADTTyp_Constr_117"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_129", i32 0, i32 0), %"$TyDescrTy_ADTTyp_116"* @"$TyDescr_Bool_ADTTyp_122" }
@"$TyDescr_Bool_ADTTyp_m_specls_132" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_115"*] [%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Bool_ADTTyp_Specl_131"]
@"$TyDescr_ADT_Bool_133" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_110", %_TyDescrTy_Typ* @"$TyDescr_Int64_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_118", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", %_TyDescrTy_Typ* @"$TyDescr_Bnum_106", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", %_TyDescrTy_Typ* @"$TyDescr_Exception_112", %_TyDescrTy_Typ* @"$TyDescr_String_104", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", %_TyDescrTy_Typ* @"$TyDescr_Bystr_114", %_TyDescrTy_Typ* @"$TyDescr_Message_108", %_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1083"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1084"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_134"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_83_env_b_147" = getelementptr inbounds %"$$fundef_83_env_134", %"$$fundef_83_env_134"* %0, i32 0, i32 0
  %"$b_envload_148" = load %TName_Bool*, %TName_Bool** %"$$fundef_83_env_b_147", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_148", %TName_Bool** %b, align 8
  %"$retval_84" = alloca %TName_Bool*, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 2, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 2
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$b_155" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_156" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_155", i32 0, i32 0
  %"$b_tag_157" = load i8, i8* %"$b_tag_156", align 1
  switch i8 %"$b_tag_157", label %"$empty_default_158" [
    i8 1, label %"$False_159"
    i8 0, label %"$True_169"
  ], !dbg !9

"$False_159":                                     ; preds = %"$have_gas_152"
  %"$b_160" = bitcast %TName_Bool* %"$b_155" to %CName_False*
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$False_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$False_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %"$adtval_166_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_166_salloc" = call i8* @_salloc(i8* %"$adtval_166_load", i64 1)
  %"$adtval_166" = bitcast i8* %"$adtval_166_salloc" to %CName_False*
  %"$adtgep_167" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_166", i32 0, i32 0
  store i8 1, i8* %"$adtgep_167", align 1
  %"$adtptr_168" = bitcast %CName_False* %"$adtval_166" to %TName_Bool*
  store %TName_Bool* %"$adtptr_168", %TName_Bool** %"$retval_84", align 8, !dbg !10
  br label %"$matchsucc_154"

"$True_169":                                      ; preds = %"$have_gas_152"
  %"$b_170" = bitcast %TName_Bool* %"$b_155" to %CName_True*
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$True_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$True_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_84", align 8, !dbg !13
  br label %"$matchsucc_154"

"$empty_default_158":                             ; preds = %"$have_gas_152"
  br label %"$matchsucc_154"

"$matchsucc_154":                                 ; preds = %"$have_gas_174", %"$have_gas_164", %"$empty_default_158"
  %"$$retval_84_176" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_176"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_135"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_82" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %entry
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$$fundef_83_envp_141_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_141_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_141_load", i64 8)
  %"$$fundef_83_envp_141" = bitcast i8* %"$$fundef_83_envp_141_salloc" to %"$$fundef_83_env_134"*
  %"$$fundef_83_env_voidp_143" = bitcast %"$$fundef_83_env_134"* %"$$fundef_83_envp_141" to i8*
  %"$$fundef_83_cloval_144" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_83_env_134"*, %TName_Bool*)* @"$fundef_83" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_143", 1
  %"$$fundef_83_env_b_145" = getelementptr inbounds %"$$fundef_83_env_134", %"$$fundef_83_env_134"* %"$$fundef_83_envp_141", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_83_env_b_145", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_83_cloval_144", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8, !dbg !16
  %"$$retval_82_146" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_82_146"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 5, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %entry
  %"$consume_181" = sub i64 %"$gasrem_177", 5
  store i64 %"$consume_181", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !19
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 7, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 7
  store i64 %"$consume_186", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !19
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_81_env_135"*, %TName_Bool*)* @"$fundef_81" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !20
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 196, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_190"
  %"$consume_199" = sub i64 %"$gasrem_195", 196
  store i64 %"$consume_199", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !19
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 20, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 20
  store i64 %"$consume_204", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !19
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 12, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 12
  store i64 %"$consume_209", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !19
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 2, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_208"
  %"$consume_214" = sub i64 %"$gasrem_210", 2
  store i64 %"$consume_214", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_85" = alloca %TName_Bool*, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %entry
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$adtval_235_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_235_salloc" = call i8* @_salloc(i8* %"$adtval_235_load", i64 1)
  %"$adtval_235" = bitcast i8* %"$adtval_235_salloc" to %CName_True*
  %"$adtgep_236" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_235", i32 0, i32 0
  store i8 0, i8* %"$adtgep_236", align 1
  %"$adtptr_237" = bitcast %CName_True* %"$adtval_235" to %TName_Bool*
  store %TName_Bool* %"$adtptr_237", %TName_Bool** %test, align 8, !dbg !22
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_233"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !23
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !24
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 20, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_266"
  %"$consume_272" = sub i64 %"$gasrem_268", 20
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$arg1_273" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_274" = load %Uint32, %Uint32* %arg2, align 4
  %"$div_call_275" = call %Uint32 @_div_Uint32(%Uint32 %"$arg1_273", %Uint32 %"$arg2_274"), !dbg !25
  store %Uint32 %"$div_call_275", %Uint32* %res, align 4, !dbg !25
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_271"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !26
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 4, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 4
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$res_297" = load %Uint32, %Uint32* %res, align 4
  %"$res__298" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_299" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_296", %Uint32 %"$res_297", %Uint32 %"$res__298"), !dbg !27
  store %TName_Bool* %"$eq_call_299", %TName_Bool** %test_, align 8, !dbg !27
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_294"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_306" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_307" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_306", 0
  %"$BoolUtils.andb_envptr_308" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_306", 1
  %"$test_309" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_310" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_307"(i8* %"$BoolUtils.andb_envptr_308", %TName_Bool* %"$test_309"), !dbg !28
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_310", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !28
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_311" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_312" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_311", 0
  %"$$BoolUtils.andb_61_envptr_313" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_311", 1
  %"$test__314" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_61_call_315" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_312"(i8* %"$$BoolUtils.andb_61_envptr_313", %TName_Bool* %"$test__314"), !dbg !28
  store %TName_Bool* %"$$BoolUtils.andb_61_call_315", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !28
  %"$$BoolUtils.andb_62_316" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_316", %TName_Bool** %"$test_6", align 8, !dbg !28
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_304"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint32, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_7", align 4, !dbg !29
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint32, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %"$arg2_8", align 4, !dbg !30
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint32, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 20, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 20
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$$arg1_7_352" = load %Uint32, %Uint32* %"$arg1_7", align 4
  %"$$arg2_8_353" = load %Uint32, %Uint32* %"$arg2_8", align 4
  %"$rem_call_354" = call %Uint32 @_rem_Uint32(%Uint32 %"$$arg1_7_352", %Uint32 %"$$arg2_8_353"), !dbg !31
  store %Uint32 %"$rem_call_354", %Uint32* %"$res_9", align 4, !dbg !31
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_350"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint32, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$res__10", align 4, !dbg !32
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 4, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 4
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$execptr_load_375" = load i8*, i8** @_execptr, align 8
  %"$$res_9_376" = load %Uint32, %Uint32* %"$res_9", align 4
  %"$$res__10_377" = load %Uint32, %Uint32* %"$res__10", align 4
  %"$eq_call_378" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_375", %Uint32 %"$$res_9_376", %Uint32 %"$$res__10_377"), !dbg !33
  store %TName_Bool* %"$eq_call_378", %TName_Bool** %"$test__11", align 8, !dbg !33
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_373"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_385" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_386" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_385", 0
  %"$BoolUtils.andb_envptr_387" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_385", 1
  %"$$test_6_388" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_389" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_386"(i8* %"$BoolUtils.andb_envptr_387", %TName_Bool* %"$$test_6_388"), !dbg !34
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_389", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !34
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_390" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_391" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_390", 0
  %"$$BoolUtils.andb_63_envptr_392" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_390", 1
  %"$$test__11_393" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_63_call_394" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_391"(i8* %"$$BoolUtils.andb_63_envptr_392", %TName_Bool* %"$$test__11_393"), !dbg !34
  store %TName_Bool* %"$$BoolUtils.andb_63_call_394", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !34
  %"$$BoolUtils.andb_64_395" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_395", %TName_Bool** %"$test_12", align 8, !dbg !34
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_383"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Uint32, align 8
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_13", align 4, !dbg !35
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_404"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_404"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Uint32, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  store %Uint32 { i32 1845 }, %Uint32* %"$arg2_14", align 4, !dbg !36
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_414"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint32, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 20, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 20
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$$arg1_13_431" = load %Uint32, %Uint32* %"$arg1_13", align 4
  %"$$arg2_14_432" = load %Uint32, %Uint32* %"$arg2_14", align 4
  %"$div_call_433" = call %Uint32 @_div_Uint32(%Uint32 %"$$arg1_13_431", %Uint32 %"$$arg2_14_432"), !dbg !37
  store %Uint32 %"$div_call_433", %Uint32* %"$res_15", align 4, !dbg !37
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_429"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint32, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$res__16", align 4, !dbg !38
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 4, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 4
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$execptr_load_454" = load i8*, i8** @_execptr, align 8
  %"$$res_15_455" = load %Uint32, %Uint32* %"$res_15", align 4
  %"$$res__16_456" = load %Uint32, %Uint32* %"$res__16", align 4
  %"$eq_call_457" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_454", %Uint32 %"$$res_15_455", %Uint32 %"$$res__16_456"), !dbg !39
  store %TName_Bool* %"$eq_call_457", %TName_Bool** %"$test__17", align 8, !dbg !39
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_452"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_464" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_465" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_464", 0
  %"$BoolUtils.andb_envptr_466" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_464", 1
  %"$$test_12_467" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_468" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_465"(i8* %"$BoolUtils.andb_envptr_466", %TName_Bool* %"$$test_12_467"), !dbg !40
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_468", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !40
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_469" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_470" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_469", 0
  %"$$BoolUtils.andb_65_envptr_471" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_469", 1
  %"$$test__17_472" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_65_call_473" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_470"(i8* %"$$BoolUtils.andb_65_envptr_471", %TName_Bool* %"$$test__17_472"), !dbg !40
  store %TName_Bool* %"$$BoolUtils.andb_65_call_473", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !40
  %"$$BoolUtils.andb_66_474" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_474", %TName_Bool** %"$test_18", align 8, !dbg !40
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_462"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int32, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg1_19", align 4, !dbg !41
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int32, align 8
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_488"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_20", align 4, !dbg !42
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_493"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_498"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int32, align 8
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 20, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 20
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %"$$arg1_19_510" = load %Int32, %Int32* %"$arg1_19", align 4
  %"$$arg2_20_511" = load %Int32, %Int32* %"$arg2_20", align 4
  %"$div_call_512" = call %Int32 @_div_Int32(%Int32 %"$$arg1_19_510", %Int32 %"$$arg2_20_511"), !dbg !43
  store %Int32 %"$div_call_512", %Int32* %"$res_21", align 4, !dbg !43
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_508"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int32, align 8
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__22", align 4, !dbg !44
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 4, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 4
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$execptr_load_533" = load i8*, i8** @_execptr, align 8
  %"$$res_21_534" = load %Int32, %Int32* %"$res_21", align 4
  %"$$res__22_535" = load %Int32, %Int32* %"$res__22", align 4
  %"$eq_call_536" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_533", %Int32 %"$$res_21_534", %Int32 %"$$res__22_535"), !dbg !45
  store %TName_Bool* %"$eq_call_536", %TName_Bool** %"$test__23", align 8, !dbg !45
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_531"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_543" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_544" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_543", 0
  %"$BoolUtils.andb_envptr_545" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_543", 1
  %"$$test_18_546" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_547" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_544"(i8* %"$BoolUtils.andb_envptr_545", %TName_Bool* %"$$test_18_546"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_547", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !46
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_548" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_549" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_548", 0
  %"$$BoolUtils.andb_67_envptr_550" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_548", 1
  %"$$test__23_551" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_67_call_552" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_549"(i8* %"$$BoolUtils.andb_67_envptr_550", %TName_Bool* %"$$test__23_551"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_67_call_552", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !46
  %"$$BoolUtils.andb_68_553" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_553", %TName_Bool** %"$test_24", align 8, !dbg !46
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_541"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int32, align 8
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_557"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$arg1_25", align 4, !dbg !47
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int32, align 8
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_26", align 4, !dbg !48
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int32, align 8
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 20, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_582"
  %"$consume_588" = sub i64 %"$gasrem_584", 20
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$$arg1_25_589" = load %Int32, %Int32* %"$arg1_25", align 4
  %"$$arg2_26_590" = load %Int32, %Int32* %"$arg2_26", align 4
  %"$div_call_591" = call %Int32 @_div_Int32(%Int32 %"$$arg1_25_589", %Int32 %"$$arg2_26_590"), !dbg !49
  store %Int32 %"$div_call_591", %Int32* %"$res_27", align 4, !dbg !49
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_587"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_587"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int32, align 8
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_595"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res__28", align 4, !dbg !50
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_600"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 4, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_605"
  %"$consume_611" = sub i64 %"$gasrem_607", 4
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %"$execptr_load_612" = load i8*, i8** @_execptr, align 8
  %"$$res_27_613" = load %Int32, %Int32* %"$res_27", align 4
  %"$$res__28_614" = load %Int32, %Int32* %"$res__28", align 4
  %"$eq_call_615" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_612", %Int32 %"$$res_27_613", %Int32 %"$$res__28_614"), !dbg !51
  store %TName_Bool* %"$eq_call_615", %TName_Bool** %"$test__29", align 8, !dbg !51
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_610"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_622" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_623" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_622", 0
  %"$BoolUtils.andb_envptr_624" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_622", 1
  %"$$test_24_625" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_626" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_623"(i8* %"$BoolUtils.andb_envptr_624", %TName_Bool* %"$$test_24_625"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_626", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !52
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_627" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_628" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_627", 0
  %"$$BoolUtils.andb_69_envptr_629" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_627", 1
  %"$$test__29_630" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_69_call_631" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_628"(i8* %"$$BoolUtils.andb_69_envptr_629", %TName_Bool* %"$$test__29_630"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_69_call_631", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !52
  %"$$BoolUtils.andb_70_632" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_632", %TName_Bool** %"$test_30", align 8, !dbg !52
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_620"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint256, align 8
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 1, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_636"
  %"$consume_642" = sub i64 %"$gasrem_638", 1
  store i64 %"$consume_642", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_31", align 8, !dbg !53
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 1, %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %"$have_gas_641"
  %"$consume_647" = sub i64 %"$gasrem_643", 1
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint256, align 8
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %"$have_gas_646"
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %"$have_gas_646"
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_32", align 8, !dbg !54
  %"$gasrem_653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_654" = icmp ugt i64 1, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %"$have_gas_651"
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %"$have_gas_651"
  %"$consume_657" = sub i64 %"$gasrem_653", 1
  store i64 %"$consume_657", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_659" = icmp ugt i64 1, %"$gasrem_658"
  br i1 %"$gascmp_659", label %"$out_of_gas_660", label %"$have_gas_661"

"$out_of_gas_660":                                ; preds = %"$have_gas_656"
  call void @_out_of_gas()
  br label %"$have_gas_661"

"$have_gas_661":                                  ; preds = %"$out_of_gas_660", %"$have_gas_656"
  %"$consume_662" = sub i64 %"$gasrem_658", 1
  store i64 %"$consume_662", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint256, align 8
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 80, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_661"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_661"
  %"$consume_668" = sub i64 %"$gasrem_664", 80
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$execptr_load_669" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_31_670" = alloca %Uint256, align 8
  %"$$arg1_31_671" = load %Uint256, %Uint256* %"$arg1_31", align 8
  store %Uint256 %"$$arg1_31_671", %Uint256* %"$div_$arg1_31_670", align 8
  %"$div_$arg2_32_672" = alloca %Uint256, align 8
  %"$$arg2_32_673" = load %Uint256, %Uint256* %"$arg2_32", align 8
  store %Uint256 %"$$arg2_32_673", %Uint256* %"$div_$arg2_32_672", align 8
  %"$div_call_674" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_669", %Uint256* %"$div_$arg1_31_670", %Uint256* %"$div_$arg2_32_672"), !dbg !55
  %"$div_676" = load %Uint256, %Uint256* %"$div_call_674", align 8
  store %Uint256 %"$div_676", %Uint256* %"$res_33", align 8, !dbg !55
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_667"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint256, align 8
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 1, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_680"
  %"$consume_686" = sub i64 %"$gasrem_682", 1
  store i64 %"$consume_686", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__34", align 8, !dbg !56
  %"$gasrem_687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_688" = icmp ugt i64 1, %"$gasrem_687"
  br i1 %"$gascmp_688", label %"$out_of_gas_689", label %"$have_gas_690"

"$out_of_gas_689":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_690"

"$have_gas_690":                                  ; preds = %"$out_of_gas_689", %"$have_gas_685"
  %"$consume_691" = sub i64 %"$gasrem_687", 1
  store i64 %"$consume_691", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 16, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_690"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_690"
  %"$consume_697" = sub i64 %"$gasrem_693", 16
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$execptr_load_698" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_33_699" = alloca %Uint256, align 8
  %"$$res_33_700" = load %Uint256, %Uint256* %"$res_33", align 8
  store %Uint256 %"$$res_33_700", %Uint256* %"$eq_$res_33_699", align 8
  %"$eq_$res__34_701" = alloca %Uint256, align 8
  %"$$res__34_702" = load %Uint256, %Uint256* %"$res__34", align 8
  store %Uint256 %"$$res__34_702", %Uint256* %"$eq_$res__34_701", align 8
  %"$eq_call_703" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_698", %Uint256* %"$eq_$res_33_699", %Uint256* %"$eq_$res__34_701"), !dbg !57
  store %TName_Bool* %"$eq_call_703", %TName_Bool** %"$test__35", align 8, !dbg !57
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_696"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_696"
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_710" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_711" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_710", 0
  %"$BoolUtils.andb_envptr_712" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_710", 1
  %"$$test_30_713" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_714" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_711"(i8* %"$BoolUtils.andb_envptr_712", %TName_Bool* %"$$test_30_713"), !dbg !58
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_714", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !58
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_715" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_716" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_715", 0
  %"$$BoolUtils.andb_71_envptr_717" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_715", 1
  %"$$test__35_718" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_71_call_719" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_716"(i8* %"$$BoolUtils.andb_71_envptr_717", %TName_Bool* %"$$test__35_718"), !dbg !58
  store %TName_Bool* %"$$BoolUtils.andb_71_call_719", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !58
  %"$$BoolUtils.andb_72_720" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_720", %TName_Bool** %"$test_36", align 8, !dbg !58
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$have_gas_708"
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_724"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_724"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_37", align 8, !dbg !59
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 1, %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %"$have_gas_729"
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %"$have_gas_729"
  %"$consume_735" = sub i64 %"$gasrem_731", 1
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_734"
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_38", align 8, !dbg !60
  %"$gasrem_741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_742" = icmp ugt i64 1, %"$gasrem_741"
  br i1 %"$gascmp_742", label %"$out_of_gas_743", label %"$have_gas_744"

"$out_of_gas_743":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_744"

"$have_gas_744":                                  ; preds = %"$out_of_gas_743", %"$have_gas_739"
  %"$consume_745" = sub i64 %"$gasrem_741", 1
  store i64 %"$consume_745", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_744"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_744"
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 80, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_749"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_749"
  %"$consume_756" = sub i64 %"$gasrem_752", 80
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$execptr_load_757" = load i8*, i8** @_execptr, align 8
  %"$rem_$arg1_37_758" = alloca %Uint256, align 8
  %"$$arg1_37_759" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_759", %Uint256* %"$rem_$arg1_37_758", align 8
  %"$rem_$arg2_38_760" = alloca %Uint256, align 8
  %"$$arg2_38_761" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_761", %Uint256* %"$rem_$arg2_38_760", align 8
  %"$rem_call_762" = call %Uint256* @_rem_Uint256(i8* %"$execptr_load_757", %Uint256* %"$rem_$arg1_37_758", %Uint256* %"$rem_$arg2_38_760"), !dbg !61
  %"$rem_764" = load %Uint256, %Uint256* %"$rem_call_762", align 8
  store %Uint256 %"$rem_764", %Uint256* %"$res_39", align 8, !dbg !61
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_755"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 1, %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$have_gas_768"
  %"$consume_774" = sub i64 %"$gasrem_770", 1
  store i64 %"$consume_774", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__40", align 8, !dbg !62
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_773"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_773"
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_782" = icmp ugt i64 16, %"$gasrem_781"
  br i1 %"$gascmp_782", label %"$out_of_gas_783", label %"$have_gas_784"

"$out_of_gas_783":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_784"

"$have_gas_784":                                  ; preds = %"$out_of_gas_783", %"$have_gas_778"
  %"$consume_785" = sub i64 %"$gasrem_781", 16
  store i64 %"$consume_785", i64* @_gasrem, align 8
  %"$execptr_load_786" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_787" = alloca %Uint256, align 8
  %"$$res_39_788" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_788", %Uint256* %"$eq_$res_39_787", align 8
  %"$eq_$res__40_789" = alloca %Uint256, align 8
  %"$$res__40_790" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_790", %Uint256* %"$eq_$res__40_789", align 8
  %"$eq_call_791" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_786", %Uint256* %"$eq_$res_39_787", %Uint256* %"$eq_$res__40_789"), !dbg !63
  store %TName_Bool* %"$eq_call_791", %TName_Bool** %"$test__41", align 8, !dbg !63
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 1, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_784"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_784"
  %"$consume_797" = sub i64 %"$gasrem_793", 1
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_798" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_799" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_798", 0
  %"$BoolUtils.andb_envptr_800" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_798", 1
  %"$$test_36_801" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_802" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_799"(i8* %"$BoolUtils.andb_envptr_800", %TName_Bool* %"$$test_36_801"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_802", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !64
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_803" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_804" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_803", 0
  %"$$BoolUtils.andb_73_envptr_805" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_803", 1
  %"$$test__41_806" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_73_call_807" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_804"(i8* %"$$BoolUtils.andb_73_envptr_805", %TName_Bool* %"$$test__41_806"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.andb_73_call_807", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !64
  %"$$BoolUtils.andb_74_808" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_808", %TName_Bool** %"$test_42", align 8, !dbg !64
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_796"
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_43", align 8, !dbg !65
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_817"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  store %Uint256 { i256 1845 }, %Uint256* %"$arg2_44", align 8, !dbg !66
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %"$have_gas_827"
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 80, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_837"
  %"$consume_844" = sub i64 %"$gasrem_840", 80
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$execptr_load_845" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_43_846" = alloca %Uint256, align 8
  %"$$arg1_43_847" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_847", %Uint256* %"$div_$arg1_43_846", align 8
  %"$div_$arg2_44_848" = alloca %Uint256, align 8
  %"$$arg2_44_849" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_849", %Uint256* %"$div_$arg2_44_848", align 8
  %"$div_call_850" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_845", %Uint256* %"$div_$arg1_43_846", %Uint256* %"$div_$arg2_44_848"), !dbg !67
  %"$div_852" = load %Uint256, %Uint256* %"$div_call_850", align 8
  store %Uint256 %"$div_852", %Uint256* %"$res_45", align 8, !dbg !67
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_843"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__46", align 8, !dbg !68
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_861"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 16, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_866"
  %"$consume_873" = sub i64 %"$gasrem_869", 16
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %"$execptr_load_874" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_875" = alloca %Uint256, align 8
  %"$$res_45_876" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_876", %Uint256* %"$eq_$res_45_875", align 8
  %"$eq_$res__46_877" = alloca %Uint256, align 8
  %"$$res__46_878" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_878", %Uint256* %"$eq_$res__46_877", align 8
  %"$eq_call_879" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_874", %Uint256* %"$eq_$res_45_875", %Uint256* %"$eq_$res__46_877"), !dbg !69
  store %TName_Bool* %"$eq_call_879", %TName_Bool** %"$test__47", align 8, !dbg !69
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 1, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_872"
  %"$consume_885" = sub i64 %"$gasrem_881", 1
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_886" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_887" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_886", 0
  %"$BoolUtils.andb_envptr_888" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_886", 1
  %"$$test_42_889" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_890" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_887"(i8* %"$BoolUtils.andb_envptr_888", %TName_Bool* %"$$test_42_889"), !dbg !70
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_890", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8, !dbg !70
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_75_891" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_892" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_891", 0
  %"$$BoolUtils.andb_75_envptr_893" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_891", 1
  %"$$test__47_894" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_75_call_895" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_892"(i8* %"$$BoolUtils.andb_75_envptr_893", %TName_Bool* %"$$test__47_894"), !dbg !70
  store %TName_Bool* %"$$BoolUtils.andb_75_call_895", %TName_Bool** %"$BoolUtils.andb_76", align 8, !dbg !70
  %"$$BoolUtils.andb_76_896" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_896", %TName_Bool** %"$test_48", align 8, !dbg !70
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_884"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_900"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$arg1_49", align 8, !dbg !71
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_50", align 8, !dbg !72
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 1, %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_915"
  %"$consume_921" = sub i64 %"$gasrem_917", 1
  store i64 %"$consume_921", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$have_gas_920"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$have_gas_920"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 80, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_925"
  %"$consume_932" = sub i64 %"$gasrem_928", 80
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$execptr_load_933" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_49_934" = alloca %Int256, align 8
  %"$$arg1_49_935" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_935", %Int256* %"$div_$arg1_49_934", align 8
  %"$div_$arg2_50_936" = alloca %Int256, align 8
  %"$$arg2_50_937" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_937", %Int256* %"$div_$arg2_50_936", align 8
  %"$div_call_938" = call %Int256* @_div_Int256(i8* %"$execptr_load_933", %Int256* %"$div_$arg1_49_934", %Int256* %"$div_$arg2_50_936"), !dbg !73
  %"$div_940" = load %Int256, %Int256* %"$div_call_938", align 8
  store %Int256 %"$div_940", %Int256* %"$res_51", align 8, !dbg !73
  %"$gasrem_941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_942" = icmp ugt i64 1, %"$gasrem_941"
  br i1 %"$gascmp_942", label %"$out_of_gas_943", label %"$have_gas_944"

"$out_of_gas_943":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_944"

"$have_gas_944":                                  ; preds = %"$out_of_gas_943", %"$have_gas_931"
  %"$consume_945" = sub i64 %"$gasrem_941", 1
  store i64 %"$consume_945", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_947" = icmp ugt i64 1, %"$gasrem_946"
  br i1 %"$gascmp_947", label %"$out_of_gas_948", label %"$have_gas_949"

"$out_of_gas_948":                                ; preds = %"$have_gas_944"
  call void @_out_of_gas()
  br label %"$have_gas_949"

"$have_gas_949":                                  ; preds = %"$out_of_gas_948", %"$have_gas_944"
  %"$consume_950" = sub i64 %"$gasrem_946", 1
  store i64 %"$consume_950", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$res__52", align 8, !dbg !74
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$have_gas_949"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$have_gas_949"
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 16, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_954"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_954"
  %"$consume_961" = sub i64 %"$gasrem_957", 16
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$execptr_load_962" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_963" = alloca %Int256, align 8
  %"$$res_51_964" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_964", %Int256* %"$eq_$res_51_963", align 8
  %"$eq_$res__52_965" = alloca %Int256, align 8
  %"$$res__52_966" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_966", %Int256* %"$eq_$res__52_965", align 8
  %"$eq_call_967" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_962", %Int256* %"$eq_$res_51_963", %Int256* %"$eq_$res__52_965"), !dbg !75
  store %TName_Bool* %"$eq_call_967", %TName_Bool** %"$test__53", align 8, !dbg !75
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_960"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_974" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_975" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_974", 0
  %"$BoolUtils.andb_envptr_976" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_974", 1
  %"$$test_48_977" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_978" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_975"(i8* %"$BoolUtils.andb_envptr_976", %TName_Bool* %"$$test_48_977"), !dbg !76
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_978", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8, !dbg !76
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_77_979" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_980" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_979", 0
  %"$$BoolUtils.andb_77_envptr_981" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_979", 1
  %"$$test__53_982" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_77_call_983" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_980"(i8* %"$$BoolUtils.andb_77_envptr_981", %TName_Bool* %"$$test__53_982"), !dbg !76
  store %TName_Bool* %"$$BoolUtils.andb_77_call_983", %TName_Bool** %"$BoolUtils.andb_78", align 8, !dbg !76
  %"$$BoolUtils.andb_78_984" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_984", %TName_Bool** %"$test_54", align 8, !dbg !76
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 1, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %"$have_gas_972"
  %"$consume_989" = sub i64 %"$gasrem_985", 1
  store i64 %"$consume_989", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_991" = icmp ugt i64 1, %"$gasrem_990"
  br i1 %"$gascmp_991", label %"$out_of_gas_992", label %"$have_gas_993"

"$out_of_gas_992":                                ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_993"

"$have_gas_993":                                  ; preds = %"$out_of_gas_992", %"$have_gas_988"
  %"$consume_994" = sub i64 %"$gasrem_990", 1
  store i64 %"$consume_994", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_55", align 8, !dbg !77
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$have_gas_993"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$have_gas_993"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_998"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_56", align 8, !dbg !78
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 80, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1013"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 80
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$execptr_load_1021" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_55_1022" = alloca %Int256, align 8
  %"$$arg1_55_1023" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1023", %Int256* %"$div_$arg1_55_1022", align 8
  %"$div_$arg2_56_1024" = alloca %Int256, align 8
  %"$$arg2_56_1025" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1025", %Int256* %"$div_$arg2_56_1024", align 8
  %"$div_call_1026" = call %Int256* @_div_Int256(i8* %"$execptr_load_1021", %Int256* %"$div_$arg1_55_1022", %Int256* %"$div_$arg2_56_1024"), !dbg !79
  %"$div_1028" = load %Int256, %Int256* %"$div_call_1026", align 8
  store %Int256 %"$div_1028", %Int256* %"$res_57", align 8, !dbg !79
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %"$have_gas_1019"
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 1, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$have_gas_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$have_gas_1032"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 1
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__58", align 8, !dbg !80
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 1, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1037"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1037"
  %"$consume_1043" = sub i64 %"$gasrem_1039", 1
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1046" = icmp ugt i64 16, %"$gasrem_1045"
  br i1 %"$gascmp_1046", label %"$out_of_gas_1047", label %"$have_gas_1048"

"$out_of_gas_1047":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1048"

"$have_gas_1048":                                 ; preds = %"$out_of_gas_1047", %"$have_gas_1042"
  %"$consume_1049" = sub i64 %"$gasrem_1045", 16
  store i64 %"$consume_1049", i64* @_gasrem, align 8
  %"$execptr_load_1050" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1051" = alloca %Int256, align 8
  %"$$res_57_1052" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1052", %Int256* %"$eq_$res_57_1051", align 8
  %"$eq_$res__58_1053" = alloca %Int256, align 8
  %"$$res__58_1054" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1054", %Int256* %"$eq_$res__58_1053", align 8
  %"$eq_call_1055" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1050", %Int256* %"$eq_$res_57_1051", %Int256* %"$eq_$res__58_1053"), !dbg !81
  store %TName_Bool* %"$eq_call_1055", %TName_Bool** %"$test__59", align 8, !dbg !81
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1048"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1062" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1063" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1062", 0
  %"$BoolUtils.andb_envptr_1064" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1062", 1
  %"$$test_54_1065" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1066" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1063"(i8* %"$BoolUtils.andb_envptr_1064", %TName_Bool* %"$$test_54_1065"), !dbg !82
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1066", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !82
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_1067" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_1068" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1067", 0
  %"$$BoolUtils.andb_79_envptr_1069" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1067", 1
  %"$$test__59_1070" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_79_call_1071" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_1068"(i8* %"$$BoolUtils.andb_79_envptr_1069", %TName_Bool* %"$$test__59_1070"), !dbg !82
  store %TName_Bool* %"$$BoolUtils.andb_79_call_1071", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !82
  %"$$BoolUtils.andb_80_1072" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_1072", %TName_Bool** %"$test_60", align 8, !dbg !82
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1060"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$$test_60_1078" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  store %TName_Bool* %"$$test_60_1078", %TName_Bool** %"$expr_85", align 8, !dbg !83
  %"$$expr_85_1079" = load %TName_Bool*, %TName_Bool** %"$expr_85", align 8
  ret %TName_Bool* %"$$expr_85_1079"
}

declare %Uint32 @_div_Uint32(%Uint32, %Uint32)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

declare %Uint32 @_rem_Uint32(%Uint32, %Uint32)

declare %Int32 @_div_Int32(%Int32, %Int32)

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare %Uint256* @_div_Uint256(i8*, %Uint256*, %Uint256*)

declare %TName_Bool* @_eq_Uint256(i8*, %Uint256*, %Uint256*)

declare %Uint256* @_rem_Uint256(i8*, %Uint256*, %Uint256*)

declare %Int256* @_div_Int256(i8*, %Int256*, %Int256*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1080" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1081" = bitcast %TName_Bool* %"$exprval_1080" to i8*
  %"$execptr_load_1082" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1082", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_118", i8* %"$memvoidcast_1081")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_div_rem.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 0, scope: !17)
!20 = !DILocation(line: 7, column: 3, scope: !17)
!21 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 2, column: 12, scope: !21)
!23 = !DILocation(line: 4, column: 12, scope: !21)
!24 = !DILocation(line: 5, column: 12, scope: !21)
!25 = !DILocation(line: 7, column: 13, scope: !21)
!26 = !DILocation(line: 8, column: 14, scope: !21)
!27 = !DILocation(line: 9, column: 15, scope: !21)
!28 = !DILocation(line: 10, column: 3, scope: !21)
!29 = !DILocation(line: 13, column: 12, scope: !21)
!30 = !DILocation(line: 14, column: 12, scope: !21)
!31 = !DILocation(line: 16, column: 13, scope: !21)
!32 = !DILocation(line: 17, column: 14, scope: !21)
!33 = !DILocation(line: 18, column: 15, scope: !21)
!34 = !DILocation(line: 19, column: 3, scope: !21)
!35 = !DILocation(line: 22, column: 12, scope: !21)
!36 = !DILocation(line: 23, column: 12, scope: !21)
!37 = !DILocation(line: 25, column: 13, scope: !21)
!38 = !DILocation(line: 26, column: 14, scope: !21)
!39 = !DILocation(line: 27, column: 15, scope: !21)
!40 = !DILocation(line: 28, column: 3, scope: !21)
!41 = !DILocation(line: 31, column: 12, scope: !21)
!42 = !DILocation(line: 32, column: 12, scope: !21)
!43 = !DILocation(line: 34, column: 13, scope: !21)
!44 = !DILocation(line: 35, column: 14, scope: !21)
!45 = !DILocation(line: 36, column: 15, scope: !21)
!46 = !DILocation(line: 37, column: 3, scope: !21)
!47 = !DILocation(line: 40, column: 12, scope: !21)
!48 = !DILocation(line: 41, column: 12, scope: !21)
!49 = !DILocation(line: 43, column: 13, scope: !21)
!50 = !DILocation(line: 44, column: 14, scope: !21)
!51 = !DILocation(line: 45, column: 15, scope: !21)
!52 = !DILocation(line: 46, column: 3, scope: !21)
!53 = !DILocation(line: 49, column: 12, scope: !21)
!54 = !DILocation(line: 50, column: 12, scope: !21)
!55 = !DILocation(line: 52, column: 13, scope: !21)
!56 = !DILocation(line: 53, column: 14, scope: !21)
!57 = !DILocation(line: 54, column: 15, scope: !21)
!58 = !DILocation(line: 55, column: 3, scope: !21)
!59 = !DILocation(line: 58, column: 12, scope: !21)
!60 = !DILocation(line: 59, column: 12, scope: !21)
!61 = !DILocation(line: 61, column: 13, scope: !21)
!62 = !DILocation(line: 62, column: 14, scope: !21)
!63 = !DILocation(line: 63, column: 15, scope: !21)
!64 = !DILocation(line: 64, column: 3, scope: !21)
!65 = !DILocation(line: 67, column: 12, scope: !21)
!66 = !DILocation(line: 68, column: 12, scope: !21)
!67 = !DILocation(line: 70, column: 13, scope: !21)
!68 = !DILocation(line: 71, column: 14, scope: !21)
!69 = !DILocation(line: 72, column: 15, scope: !21)
!70 = !DILocation(line: 73, column: 3, scope: !21)
!71 = !DILocation(line: 76, column: 12, scope: !21)
!72 = !DILocation(line: 77, column: 12, scope: !21)
!73 = !DILocation(line: 79, column: 13, scope: !21)
!74 = !DILocation(line: 80, column: 14, scope: !21)
!75 = !DILocation(line: 81, column: 15, scope: !21)
!76 = !DILocation(line: 82, column: 3, scope: !21)
!77 = !DILocation(line: 85, column: 12, scope: !21)
!78 = !DILocation(line: 86, column: 12, scope: !21)
!79 = !DILocation(line: 88, column: 13, scope: !21)
!80 = !DILocation(line: 89, column: 14, scope: !21)
!81 = !DILocation(line: 90, column: 15, scope: !21)
!82 = !DILocation(line: 91, column: 3, scope: !21)
!83 = !DILocation(line: 94, column: 1, scope: !21)
