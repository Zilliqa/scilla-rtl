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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_86" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_118" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_117"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_117" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_119"**, %"$TyDescrTy_ADTTyp_118"* }
%"$TyDescrTy_ADTTyp_Constr_119" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1085" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1086" = type { %ParamDescrString, i32, %"$ParamDescr_1085"* }
%"$$fundef_83_env_136" = type { %TName_Bool* }
%"$$fundef_81_env_137" = type {}
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
@"$TyDescr_ReplicateContr_Prim_113" = global %"$TyDescrTy_PrimTyp_86" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_114" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_ReplicateContr_Prim_113" to i8*) }
@"$TyDescr_Bystr_Prim_115" = global %"$TyDescrTy_PrimTyp_86" { i32 7, i32 0 }
@"$TyDescr_Bystr_116" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Bystr_Prim_115" to i8*) }
@"$TyDescr_ADT_Bool_120" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Bool_ADTTyp_Specl_133" to i8*) }
@"$TyDescr_Bool_ADTTyp_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_118" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_135", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_117"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_117"*], [1 x %"$TyDescrTy_ADTTyp_Specl_117"*]* @"$TyDescr_Bool_ADTTyp_m_specls_134", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_125" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_126" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_126", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_125", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_128" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_129" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_130" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_129", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_128", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_131" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_119"*] [%"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Bool_True_ADTTyp_Constr_127", %"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Bool_False_ADTTyp_Constr_130"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_117" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_132", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_119"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_119"*], [2 x %"$TyDescrTy_ADTTyp_Constr_119"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_131", i32 0, i32 0), %"$TyDescrTy_ADTTyp_118"* @"$TyDescr_Bool_ADTTyp_124" }
@"$TyDescr_Bool_ADTTyp_m_specls_134" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_117"*] [%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Bool_ADTTyp_Specl_133"]
@"$TyDescr_ADT_Bool_135" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_110", %_TyDescrTy_Typ* @"$TyDescr_Int64_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_120", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", %_TyDescrTy_Typ* @"$TyDescr_Bnum_106", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", %_TyDescrTy_Typ* @"$TyDescr_Exception_112", %_TyDescrTy_Typ* @"$TyDescr_String_104", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", %_TyDescrTy_Typ* @"$TyDescr_Bystr_116", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_114", %_TyDescrTy_Typ* @"$TyDescr_Message_108", %_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_1085"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1086"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_136"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_83_env_b_149" = getelementptr inbounds %"$$fundef_83_env_136", %"$$fundef_83_env_136"* %0, i32 0, i32 0
  %"$b_envload_150" = load %TName_Bool*, %TName_Bool** %"$$fundef_83_env_b_149", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_150", %TName_Bool** %b, align 8
  %"$retval_84" = alloca %TName_Bool*, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 2, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", 2
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$b_157" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_158" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_157", i32 0, i32 0
  %"$b_tag_159" = load i8, i8* %"$b_tag_158", align 1
  switch i8 %"$b_tag_159", label %"$empty_default_160" [
    i8 1, label %"$False_161"
    i8 0, label %"$True_171"
  ]

"$False_161":                                     ; preds = %"$have_gas_154"
  %"$b_162" = bitcast %TName_Bool* %"$b_157" to %CName_False*
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$False_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$False_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$adtval_168_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_168_salloc" = call i8* @_salloc(i8* %"$adtval_168_load", i64 1)
  %"$adtval_168" = bitcast i8* %"$adtval_168_salloc" to %CName_False*
  %"$adtgep_169" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_168", i32 0, i32 0
  store i8 1, i8* %"$adtgep_169", align 1
  %"$adtptr_170" = bitcast %CName_False* %"$adtval_168" to %TName_Bool*
  store %TName_Bool* %"$adtptr_170", %TName_Bool** %"$retval_84", align 8
  br label %"$matchsucc_156"

"$True_171":                                      ; preds = %"$have_gas_154"
  %"$b_172" = bitcast %TName_Bool* %"$b_157" to %CName_True*
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$True_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$True_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_84", align 8
  br label %"$matchsucc_156"

"$empty_default_160":                             ; preds = %"$have_gas_154"
  br label %"$matchsucc_156"

"$matchsucc_156":                                 ; preds = %"$have_gas_176", %"$have_gas_166", %"$empty_default_160"
  %"$$retval_84_178" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_178"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_137"* %0, %TName_Bool* %1) {
entry:
  %"$retval_82" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %entry
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$$fundef_83_envp_143_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_143_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_143_load", i64 8)
  %"$$fundef_83_envp_143" = bitcast i8* %"$$fundef_83_envp_143_salloc" to %"$$fundef_83_env_136"*
  %"$$fundef_83_env_voidp_145" = bitcast %"$$fundef_83_env_136"* %"$$fundef_83_envp_143" to i8*
  %"$$fundef_83_cloval_146" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_83_env_136"*, %TName_Bool*)* @"$fundef_83" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_145", 1
  %"$$fundef_83_env_b_147" = getelementptr inbounds %"$$fundef_83_env_136", %"$$fundef_83_env_136"* %"$$fundef_83_envp_143", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_83_env_b_147", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_83_cloval_146", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  %"$$retval_82_148" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_82_148"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 5, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %entry
  %"$consume_183" = sub i64 %"$gasrem_179", 5
  store i64 %"$consume_183", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 7, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 7
  store i64 %"$consume_188", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_81_env_137"*, %TName_Bool*)* @"$fundef_81" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 196, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_192"
  %"$consume_201" = sub i64 %"$gasrem_197", 196
  store i64 %"$consume_201", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 20, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 20
  store i64 %"$consume_206", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 12, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 12
  store i64 %"$consume_211", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 2, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 2
  store i64 %"$consume_216", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_85" = alloca %TName_Bool*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %entry
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_225"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$adtval_237_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_237_salloc" = call i8* @_salloc(i8* %"$adtval_237_load", i64 1)
  %"$adtval_237" = bitcast i8* %"$adtval_237_salloc" to %CName_True*
  %"$adtgep_238" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_237", i32 0, i32 0
  store i8 0, i8* %"$adtgep_238", align 1
  %"$adtptr_239" = bitcast %CName_True* %"$adtval_237" to %TName_Bool*
  store %TName_Bool* %"$adtptr_239", %TName_Bool** %test, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_235"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_263"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 20, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 20
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$arg1_275" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_276" = load %Uint32, %Uint32* %arg2, align 4
  %"$div_call_277" = call %Uint32 @_div_Uint32(%Uint32 %"$arg1_275", %Uint32 %"$arg2_276")
  store %Uint32 %"$div_call_277", %Uint32* %res, align 4
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_273"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 4, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 4
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$res_299" = load %Uint32, %Uint32* %res, align 4
  %"$res__300" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_301" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_298", %Uint32 %"$res_299", %Uint32 %"$res__300")
  store %TName_Bool* %"$eq_call_301", %TName_Bool** %test_, align 8
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_296"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_308" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_309" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_308", 0
  %"$BoolUtils.andb_envptr_310" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_308", 1
  %"$test_311" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_312" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_309"(i8* %"$BoolUtils.andb_envptr_310", %TName_Bool* %"$test_311")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_312", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_313" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_314" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_313", 0
  %"$$BoolUtils.andb_61_envptr_315" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_313", 1
  %"$test__316" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_61_call_317" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_314"(i8* %"$$BoolUtils.andb_61_envptr_315", %TName_Bool* %"$test__316")
  store %TName_Bool* %"$$BoolUtils.andb_61_call_317", %TName_Bool** %"$BoolUtils.andb_62", align 8
  %"$$BoolUtils.andb_62_318" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_318", %TName_Bool** %"$test_6", align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_306"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint32, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_7", align 4
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint32, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %"$arg2_8", align 4
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_337"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint32, align 8
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 20, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 20
  store i64 %"$consume_353", i64* @_gasrem, align 8
  %"$$arg1_7_354" = load %Uint32, %Uint32* %"$arg1_7", align 4
  %"$$arg2_8_355" = load %Uint32, %Uint32* %"$arg2_8", align 4
  %"$rem_call_356" = call %Uint32 @_rem_Uint32(%Uint32 %"$$arg1_7_354", %Uint32 %"$$arg2_8_355")
  store %Uint32 %"$rem_call_356", %Uint32* %"$res_9", align 4
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_352"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint32, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_360"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$res__10", align 4
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 4, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 4
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$execptr_load_377" = load i8*, i8** @_execptr, align 8
  %"$$res_9_378" = load %Uint32, %Uint32* %"$res_9", align 4
  %"$$res__10_379" = load %Uint32, %Uint32* %"$res__10", align 4
  %"$eq_call_380" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_377", %Uint32 %"$$res_9_378", %Uint32 %"$$res__10_379")
  store %TName_Bool* %"$eq_call_380", %TName_Bool** %"$test__11", align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_375"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_387" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_388" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_387", 0
  %"$BoolUtils.andb_envptr_389" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_387", 1
  %"$$test_6_390" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_391" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_388"(i8* %"$BoolUtils.andb_envptr_389", %TName_Bool* %"$$test_6_390")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_391", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_392" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_393" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_392", 0
  %"$$BoolUtils.andb_63_envptr_394" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_392", 1
  %"$$test__11_395" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_63_call_396" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_393"(i8* %"$$BoolUtils.andb_63_envptr_394", %TName_Bool* %"$$test__11_395")
  store %TName_Bool* %"$$BoolUtils.andb_63_call_396", %TName_Bool** %"$BoolUtils.andb_64", align 8
  %"$$BoolUtils.andb_64_397" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_397", %TName_Bool** %"$test_12", align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_385"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Uint32, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_13", align 4
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Uint32, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  store %Uint32 { i32 1845 }, %Uint32* %"$arg2_14", align 4
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint32, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 20, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 20
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$$arg1_13_433" = load %Uint32, %Uint32* %"$arg1_13", align 4
  %"$$arg2_14_434" = load %Uint32, %Uint32* %"$arg2_14", align 4
  %"$div_call_435" = call %Uint32 @_div_Uint32(%Uint32 %"$$arg1_13_433", %Uint32 %"$$arg2_14_434")
  store %Uint32 %"$div_call_435", %Uint32* %"$res_15", align 4
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_431"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint32, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$res__16", align 4
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 4, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 4
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$$res_15_457" = load %Uint32, %Uint32* %"$res_15", align 4
  %"$$res__16_458" = load %Uint32, %Uint32* %"$res__16", align 4
  %"$eq_call_459" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_456", %Uint32 %"$$res_15_457", %Uint32 %"$$res__16_458")
  store %TName_Bool* %"$eq_call_459", %TName_Bool** %"$test__17", align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_454"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_466" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_467" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_466", 0
  %"$BoolUtils.andb_envptr_468" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_466", 1
  %"$$test_12_469" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_470" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_467"(i8* %"$BoolUtils.andb_envptr_468", %TName_Bool* %"$$test_12_469")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_470", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_471" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_472" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_471", 0
  %"$$BoolUtils.andb_65_envptr_473" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_471", 1
  %"$$test__17_474" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_65_call_475" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_472"(i8* %"$$BoolUtils.andb_65_envptr_473", %TName_Bool* %"$$test__17_474")
  store %TName_Bool* %"$$BoolUtils.andb_65_call_475", %TName_Bool** %"$BoolUtils.andb_66", align 8
  %"$$BoolUtils.andb_66_476" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_476", %TName_Bool** %"$test_18", align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_464"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int32, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg1_19", align 4
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_485"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int32, align 8
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_490"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_20", align 4
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_495"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int32, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 20, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_505"
  %"$consume_511" = sub i64 %"$gasrem_507", 20
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$$arg1_19_512" = load %Int32, %Int32* %"$arg1_19", align 4
  %"$$arg2_20_513" = load %Int32, %Int32* %"$arg2_20", align 4
  %"$div_call_514" = call %Int32 @_div_Int32(%Int32 %"$$arg1_19_512", %Int32 %"$$arg2_20_513")
  store %Int32 %"$div_call_514", %Int32* %"$res_21", align 4
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_510"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int32, align 8
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_518"
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__22", align 4
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_523"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 4, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_528"
  %"$consume_534" = sub i64 %"$gasrem_530", 4
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$execptr_load_535" = load i8*, i8** @_execptr, align 8
  %"$$res_21_536" = load %Int32, %Int32* %"$res_21", align 4
  %"$$res__22_537" = load %Int32, %Int32* %"$res__22", align 4
  %"$eq_call_538" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_535", %Int32 %"$$res_21_536", %Int32 %"$$res__22_537")
  store %TName_Bool* %"$eq_call_538", %TName_Bool** %"$test__23", align 8
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_533"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_545" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_546" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_545", 0
  %"$BoolUtils.andb_envptr_547" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_545", 1
  %"$$test_18_548" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_549" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_546"(i8* %"$BoolUtils.andb_envptr_547", %TName_Bool* %"$$test_18_548")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_549", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_550" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_551" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_550", 0
  %"$$BoolUtils.andb_67_envptr_552" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_550", 1
  %"$$test__23_553" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_67_call_554" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_551"(i8* %"$$BoolUtils.andb_67_envptr_552", %TName_Bool* %"$$test__23_553")
  store %TName_Bool* %"$$BoolUtils.andb_67_call_554", %TName_Bool** %"$BoolUtils.andb_68", align 8
  %"$$BoolUtils.andb_68_555" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_555", %TName_Bool** %"$test_24", align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_543"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int32, align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$arg1_25", align 4
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int32, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_26", align 4
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int32, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 20, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 20
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$$arg1_25_591" = load %Int32, %Int32* %"$arg1_25", align 4
  %"$$arg2_26_592" = load %Int32, %Int32* %"$arg2_26", align 4
  %"$div_call_593" = call %Int32 @_div_Int32(%Int32 %"$$arg1_25_591", %Int32 %"$$arg2_26_592")
  store %Int32 %"$div_call_593", %Int32* %"$res_27", align 4
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_589"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int32, align 8
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_597"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res__28", align 4
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_602"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 4, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %"$have_gas_607"
  %"$consume_613" = sub i64 %"$gasrem_609", 4
  store i64 %"$consume_613", i64* @_gasrem, align 8
  %"$execptr_load_614" = load i8*, i8** @_execptr, align 8
  %"$$res_27_615" = load %Int32, %Int32* %"$res_27", align 4
  %"$$res__28_616" = load %Int32, %Int32* %"$res__28", align 4
  %"$eq_call_617" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_614", %Int32 %"$$res_27_615", %Int32 %"$$res__28_616")
  store %TName_Bool* %"$eq_call_617", %TName_Bool** %"$test__29", align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_612"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_612"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_624" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_625" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_624", 0
  %"$BoolUtils.andb_envptr_626" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_624", 1
  %"$$test_24_627" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_628" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_625"(i8* %"$BoolUtils.andb_envptr_626", %TName_Bool* %"$$test_24_627")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_628", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_629" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_630" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_629", 0
  %"$$BoolUtils.andb_69_envptr_631" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_629", 1
  %"$$test__29_632" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_69_call_633" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_630"(i8* %"$$BoolUtils.andb_69_envptr_631", %TName_Bool* %"$$test__29_632")
  store %TName_Bool* %"$$BoolUtils.andb_69_call_633", %TName_Bool** %"$BoolUtils.andb_70", align 8
  %"$$BoolUtils.andb_70_634" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_634", %TName_Bool** %"$test_30", align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_622"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint256, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_31", align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint256, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_32", align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_658"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint256, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 80, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_663"
  %"$consume_670" = sub i64 %"$gasrem_666", 80
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$execptr_load_671" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_31_672" = alloca %Uint256, align 8
  %"$$arg1_31_673" = load %Uint256, %Uint256* %"$arg1_31", align 8
  store %Uint256 %"$$arg1_31_673", %Uint256* %"$div_$arg1_31_672", align 8
  %"$div_$arg2_32_674" = alloca %Uint256, align 8
  %"$$arg2_32_675" = load %Uint256, %Uint256* %"$arg2_32", align 8
  store %Uint256 %"$$arg2_32_675", %Uint256* %"$div_$arg2_32_674", align 8
  %"$div_call_676" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_671", %Uint256* %"$div_$arg1_31_672", %Uint256* %"$div_$arg2_32_674")
  %"$div_678" = load %Uint256, %Uint256* %"$div_call_676", align 8
  store %Uint256 %"$div_678", %Uint256* %"$res_33", align 8
  %"$gasrem_679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_680" = icmp ugt i64 1, %"$gasrem_679"
  br i1 %"$gascmp_680", label %"$out_of_gas_681", label %"$have_gas_682"

"$out_of_gas_681":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_682"

"$have_gas_682":                                  ; preds = %"$out_of_gas_681", %"$have_gas_669"
  %"$consume_683" = sub i64 %"$gasrem_679", 1
  store i64 %"$consume_683", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint256, align 8
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 1, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_682"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_682"
  %"$consume_688" = sub i64 %"$gasrem_684", 1
  store i64 %"$consume_688", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__34", align 8
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %"$have_gas_687"
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 16, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_692"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_692"
  %"$consume_699" = sub i64 %"$gasrem_695", 16
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$execptr_load_700" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_33_701" = alloca %Uint256, align 8
  %"$$res_33_702" = load %Uint256, %Uint256* %"$res_33", align 8
  store %Uint256 %"$$res_33_702", %Uint256* %"$eq_$res_33_701", align 8
  %"$eq_$res__34_703" = alloca %Uint256, align 8
  %"$$res__34_704" = load %Uint256, %Uint256* %"$res__34", align 8
  store %Uint256 %"$$res__34_704", %Uint256* %"$eq_$res__34_703", align 8
  %"$eq_call_705" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_700", %Uint256* %"$eq_$res_33_701", %Uint256* %"$eq_$res__34_703")
  store %TName_Bool* %"$eq_call_705", %TName_Bool** %"$test__35", align 8
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_698"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_712" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_713" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_712", 0
  %"$BoolUtils.andb_envptr_714" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_712", 1
  %"$$test_30_715" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_716" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_713"(i8* %"$BoolUtils.andb_envptr_714", %TName_Bool* %"$$test_30_715")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_716", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_717" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_718" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_717", 0
  %"$$BoolUtils.andb_71_envptr_719" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_717", 1
  %"$$test__35_720" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_71_call_721" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_718"(i8* %"$$BoolUtils.andb_71_envptr_719", %TName_Bool* %"$$test__35_720")
  store %TName_Bool* %"$$BoolUtils.andb_71_call_721", %TName_Bool** %"$BoolUtils.andb_72", align 8
  %"$$BoolUtils.andb_72_722" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_722", %TName_Bool** %"$test_36", align 8
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_710"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_726"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_37", align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_731"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_38", align 8
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 1, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$have_gas_741"
  %"$consume_747" = sub i64 %"$gasrem_743", 1
  store i64 %"$consume_747", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_746"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_746"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 80, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_751"
  %"$consume_758" = sub i64 %"$gasrem_754", 80
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$execptr_load_759" = load i8*, i8** @_execptr, align 8
  %"$rem_$arg1_37_760" = alloca %Uint256, align 8
  %"$$arg1_37_761" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_761", %Uint256* %"$rem_$arg1_37_760", align 8
  %"$rem_$arg2_38_762" = alloca %Uint256, align 8
  %"$$arg2_38_763" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_763", %Uint256* %"$rem_$arg2_38_762", align 8
  %"$rem_call_764" = call %Uint256* @_rem_Uint256(i8* %"$execptr_load_759", %Uint256* %"$rem_$arg1_37_760", %Uint256* %"$rem_$arg2_38_762")
  %"$rem_766" = load %Uint256, %Uint256* %"$rem_call_764", align 8
  store %Uint256 %"$rem_766", %Uint256* %"$res_39", align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$have_gas_757"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__40", align 8
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_775"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 16, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_780"
  %"$consume_787" = sub i64 %"$gasrem_783", 16
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$execptr_load_788" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_789" = alloca %Uint256, align 8
  %"$$res_39_790" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_790", %Uint256* %"$eq_$res_39_789", align 8
  %"$eq_$res__40_791" = alloca %Uint256, align 8
  %"$$res__40_792" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_792", %Uint256* %"$eq_$res__40_791", align 8
  %"$eq_call_793" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_788", %Uint256* %"$eq_$res_39_789", %Uint256* %"$eq_$res__40_791")
  store %TName_Bool* %"$eq_call_793", %TName_Bool** %"$test__41", align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_786"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_800" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_801" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_800", 0
  %"$BoolUtils.andb_envptr_802" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_800", 1
  %"$$test_36_803" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_804" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_801"(i8* %"$BoolUtils.andb_envptr_802", %TName_Bool* %"$$test_36_803")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_804", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_805" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_806" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_805", 0
  %"$$BoolUtils.andb_73_envptr_807" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_805", 1
  %"$$test__41_808" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_73_call_809" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_806"(i8* %"$$BoolUtils.andb_73_envptr_807", %TName_Bool* %"$$test__41_808")
  store %TName_Bool* %"$$BoolUtils.andb_73_call_809", %TName_Bool** %"$BoolUtils.andb_74", align 8
  %"$$BoolUtils.andb_74_810" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_810", %TName_Bool** %"$test_42", align 8
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %"$have_gas_798"
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  %"$gasrem_816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_817" = icmp ugt i64 1, %"$gasrem_816"
  br i1 %"$gascmp_817", label %"$out_of_gas_818", label %"$have_gas_819"

"$out_of_gas_818":                                ; preds = %"$have_gas_814"
  call void @_out_of_gas()
  br label %"$have_gas_819"

"$have_gas_819":                                  ; preds = %"$out_of_gas_818", %"$have_gas_814"
  %"$consume_820" = sub i64 %"$gasrem_816", 1
  store i64 %"$consume_820", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_43", align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_819"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_819"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  store %Uint256 { i256 1845 }, %Uint256* %"$arg2_44", align 8
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_829"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 80, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_839"
  %"$consume_846" = sub i64 %"$gasrem_842", 80
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$execptr_load_847" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_43_848" = alloca %Uint256, align 8
  %"$$arg1_43_849" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_849", %Uint256* %"$div_$arg1_43_848", align 8
  %"$div_$arg2_44_850" = alloca %Uint256, align 8
  %"$$arg2_44_851" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_851", %Uint256* %"$div_$arg2_44_850", align 8
  %"$div_call_852" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_847", %Uint256* %"$div_$arg1_43_848", %Uint256* %"$div_$arg2_44_850")
  %"$div_854" = load %Uint256, %Uint256* %"$div_call_852", align 8
  store %Uint256 %"$div_854", %Uint256* %"$res_45", align 8
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_845"
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  %"$gasrem_860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_861" = icmp ugt i64 1, %"$gasrem_860"
  br i1 %"$gascmp_861", label %"$out_of_gas_862", label %"$have_gas_863"

"$out_of_gas_862":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_863"

"$have_gas_863":                                  ; preds = %"$out_of_gas_862", %"$have_gas_858"
  %"$consume_864" = sub i64 %"$gasrem_860", 1
  store i64 %"$consume_864", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__46", align 8
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_863"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_863"
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 16, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_868"
  %"$consume_875" = sub i64 %"$gasrem_871", 16
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$execptr_load_876" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_877" = alloca %Uint256, align 8
  %"$$res_45_878" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_878", %Uint256* %"$eq_$res_45_877", align 8
  %"$eq_$res__46_879" = alloca %Uint256, align 8
  %"$$res__46_880" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_880", %Uint256* %"$eq_$res__46_879", align 8
  %"$eq_call_881" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_876", %Uint256* %"$eq_$res_45_877", %Uint256* %"$eq_$res__46_879")
  store %TName_Bool* %"$eq_call_881", %TName_Bool** %"$test__47", align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_874"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_888" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_889" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_888", 0
  %"$BoolUtils.andb_envptr_890" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_888", 1
  %"$$test_42_891" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_892" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_889"(i8* %"$BoolUtils.andb_envptr_890", %TName_Bool* %"$$test_42_891")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_892", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_75_893" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_894" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_893", 0
  %"$$BoolUtils.andb_75_envptr_895" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_893", 1
  %"$$test__47_896" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_75_call_897" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_894"(i8* %"$$BoolUtils.andb_75_envptr_895", %TName_Bool* %"$$test__47_896")
  store %TName_Bool* %"$$BoolUtils.andb_75_call_897", %TName_Bool** %"$BoolUtils.andb_76", align 8
  %"$$BoolUtils.andb_76_898" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_898", %TName_Bool** %"$test_48", align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_886"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_905" = icmp ugt i64 1, %"$gasrem_904"
  br i1 %"$gascmp_905", label %"$out_of_gas_906", label %"$have_gas_907"

"$out_of_gas_906":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_907"

"$have_gas_907":                                  ; preds = %"$out_of_gas_906", %"$have_gas_902"
  %"$consume_908" = sub i64 %"$gasrem_904", 1
  store i64 %"$consume_908", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$arg1_49", align 8
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_907"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_907"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_50", align 8
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 1, %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_917"
  %"$consume_923" = sub i64 %"$gasrem_919", 1
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 80, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_927"
  %"$consume_934" = sub i64 %"$gasrem_930", 80
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$execptr_load_935" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_49_936" = alloca %Int256, align 8
  %"$$arg1_49_937" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_937", %Int256* %"$div_$arg1_49_936", align 8
  %"$div_$arg2_50_938" = alloca %Int256, align 8
  %"$$arg2_50_939" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_939", %Int256* %"$div_$arg2_50_938", align 8
  %"$div_call_940" = call %Int256* @_div_Int256(i8* %"$execptr_load_935", %Int256* %"$div_$arg1_49_936", %Int256* %"$div_$arg2_50_938")
  %"$div_942" = load %Int256, %Int256* %"$div_call_940", align 8
  store %Int256 %"$div_942", %Int256* %"$res_51", align 8
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 1, %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_933"
  %"$consume_947" = sub i64 %"$gasrem_943", 1
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$have_gas_946"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$have_gas_946"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$res__52", align 8
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 1, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_951"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_951"
  %"$consume_957" = sub i64 %"$gasrem_953", 1
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 16, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_956"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_956"
  %"$consume_963" = sub i64 %"$gasrem_959", 16
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %"$execptr_load_964" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_965" = alloca %Int256, align 8
  %"$$res_51_966" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_966", %Int256* %"$eq_$res_51_965", align 8
  %"$eq_$res__52_967" = alloca %Int256, align 8
  %"$$res__52_968" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_968", %Int256* %"$eq_$res__52_967", align 8
  %"$eq_call_969" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_964", %Int256* %"$eq_$res_51_965", %Int256* %"$eq_$res__52_967")
  store %TName_Bool* %"$eq_call_969", %TName_Bool** %"$test__53", align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_962"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_976" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_977" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_976", 0
  %"$BoolUtils.andb_envptr_978" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_976", 1
  %"$$test_48_979" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_980" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_977"(i8* %"$BoolUtils.andb_envptr_978", %TName_Bool* %"$$test_48_979")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_980", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_77_981" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_982" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_981", 0
  %"$$BoolUtils.andb_77_envptr_983" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_981", 1
  %"$$test__53_984" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_77_call_985" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_982"(i8* %"$$BoolUtils.andb_77_envptr_983", %TName_Bool* %"$$test__53_984")
  store %TName_Bool* %"$$BoolUtils.andb_77_call_985", %TName_Bool** %"$BoolUtils.andb_78", align 8
  %"$$BoolUtils.andb_78_986" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_986", %TName_Bool** %"$test_54", align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_974"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 1, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_990"
  %"$consume_996" = sub i64 %"$gasrem_992", 1
  store i64 %"$consume_996", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_55", align 8
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_995"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_995"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_1002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1003" = icmp ugt i64 1, %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %"$have_gas_1000"
  %"$consume_1006" = sub i64 %"$gasrem_1002", 1
  store i64 %"$consume_1006", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_56", align 8
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$have_gas_1005"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$have_gas_1005"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1010"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1010"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 80, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1015"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 80
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %"$execptr_load_1023" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_55_1024" = alloca %Int256, align 8
  %"$$arg1_55_1025" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1025", %Int256* %"$div_$arg1_55_1024", align 8
  %"$div_$arg2_56_1026" = alloca %Int256, align 8
  %"$$arg2_56_1027" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1027", %Int256* %"$div_$arg2_56_1026", align 8
  %"$div_call_1028" = call %Int256* @_div_Int256(i8* %"$execptr_load_1023", %Int256* %"$div_$arg1_55_1024", %Int256* %"$div_$arg2_56_1026")
  %"$div_1030" = load %Int256, %Int256* %"$div_call_1028", align 8
  store %Int256 %"$div_1030", %Int256* %"$res_57", align 8
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1021"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 1, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %"$have_gas_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %"$have_gas_1034"
  %"$consume_1040" = sub i64 %"$gasrem_1036", 1
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__58", align 8
  %"$gasrem_1041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1042" = icmp ugt i64 1, %"$gasrem_1041"
  br i1 %"$gascmp_1042", label %"$out_of_gas_1043", label %"$have_gas_1044"

"$out_of_gas_1043":                               ; preds = %"$have_gas_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1044"

"$have_gas_1044":                                 ; preds = %"$out_of_gas_1043", %"$have_gas_1039"
  %"$consume_1045" = sub i64 %"$gasrem_1041", 1
  store i64 %"$consume_1045", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 16, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1044"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 16
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$execptr_load_1052" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1053" = alloca %Int256, align 8
  %"$$res_57_1054" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1054", %Int256* %"$eq_$res_57_1053", align 8
  %"$eq_$res__58_1055" = alloca %Int256, align 8
  %"$$res__58_1056" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1056", %Int256* %"$eq_$res__58_1055", align 8
  %"$eq_call_1057" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1052", %Int256* %"$eq_$res_57_1053", %Int256* %"$eq_$res__58_1055")
  store %TName_Bool* %"$eq_call_1057", %TName_Bool** %"$test__59", align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1050"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1064" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1065" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1064", 0
  %"$BoolUtils.andb_envptr_1066" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1064", 1
  %"$$test_54_1067" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1068" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1065"(i8* %"$BoolUtils.andb_envptr_1066", %TName_Bool* %"$$test_54_1067")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1068", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_1069" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_1070" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1069", 0
  %"$$BoolUtils.andb_79_envptr_1071" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1069", 1
  %"$$test__59_1072" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_79_call_1073" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_1070"(i8* %"$$BoolUtils.andb_79_envptr_1071", %TName_Bool* %"$$test__59_1072")
  store %TName_Bool* %"$$BoolUtils.andb_79_call_1073", %TName_Bool** %"$BoolUtils.andb_80", align 8
  %"$$BoolUtils.andb_80_1074" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_1074", %TName_Bool** %"$test_60", align 8
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1062"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %"$$test_60_1080" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  store %TName_Bool* %"$$test_60_1080", %TName_Bool** %"$expr_85", align 8
  %"$$expr_85_1081" = load %TName_Bool*, %TName_Bool** %"$expr_85", align 8
  ret %TName_Bool* %"$$expr_85_1081"
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
  %"$exprval_1082" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1083" = bitcast %TName_Bool* %"$exprval_1082" to i8*
  %"$execptr_load_1084" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1084", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_120", i8* %"$memvoidcast_1083")
  ret void
}
