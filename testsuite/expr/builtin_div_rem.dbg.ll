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
%"$TyDescrTy_ADTTyp_118" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_117"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_117" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_119"**, %"$TyDescrTy_ADTTyp_118"* }
%"$TyDescrTy_ADTTyp_Constr_119" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1087" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1088" = type { %ParamDescrString, i32, %"$ParamDescr_1087"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1087"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1088"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_136"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_180" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_180", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_180", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_83_env_b_150" = getelementptr inbounds %"$$fundef_83_env_136", %"$$fundef_83_env_136"* %0, i32 0, i32 0
  %"$b_envload_151" = load %TName_Bool*, %TName_Bool** %"$$fundef_83_env_b_150", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_151", %TName_Bool** %b, align 8
  %"$retval_84" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_84", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 2, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %entry
  %"$consume_156" = sub i64 %"$gasrem_152", 2
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$b_158" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_159" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_158", i32 0, i32 0
  %"$b_tag_160" = load i8, i8* %"$b_tag_159", align 1
  switch i8 %"$b_tag_160", label %"$empty_default_161" [
    i8 1, label %"$False_162"
    i8 0, label %"$True_172"
  ], !dbg !14

"$False_162":                                     ; preds = %"$have_gas_155"
  %"$b_163" = bitcast %TName_Bool* %"$b_158" to %CName_False*
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$False_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$False_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$adtval_169_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_169_salloc" = call i8* @_salloc(i8* %"$adtval_169_load", i64 1)
  %"$adtval_169" = bitcast i8* %"$adtval_169_salloc" to %CName_False*
  %"$adtgep_170" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_169", i32 0, i32 0
  store i8 1, i8* %"$adtgep_170", align 1
  %"$adtptr_171" = bitcast %CName_False* %"$adtval_169" to %TName_Bool*
  store %TName_Bool* %"$adtptr_171", %TName_Bool** %"$retval_84", align 8, !dbg !15
  br label %"$matchsucc_157"

"$True_172":                                      ; preds = %"$have_gas_155"
  %"$b_173" = bitcast %TName_Bool* %"$b_158" to %CName_True*
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$True_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$True_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_84", align 8, !dbg !18
  br label %"$matchsucc_157"

"$empty_default_161":                             ; preds = %"$have_gas_155"
  br label %"$matchsucc_157"

"$matchsucc_157":                                 ; preds = %"$have_gas_177", %"$have_gas_167", %"$empty_default_161"
  %"$$retval_84_179" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_179"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_137"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_149" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_149", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_149", metadata !21, metadata !DIExpression()), !dbg !22
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_83_cloval_146", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8, !dbg !23
  %"$$retval_82_148" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_82_148"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 5, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %entry
  %"$consume_185" = sub i64 %"$gasrem_181", 5
  store i64 %"$consume_185", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 7, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 7
  store i64 %"$consume_190", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_81_env_137"*, %TName_Bool*)* @"$fundef_81" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 196, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_194"
  %"$consume_203" = sub i64 %"$gasrem_199", 196
  store i64 %"$consume_203", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 20, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 20
  store i64 %"$consume_208", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 12, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 12
  store i64 %"$consume_213", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 2, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_212"
  %"$consume_218" = sub i64 %"$gasrem_214", 2
  store i64 %"$consume_218", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_85" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_85", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$adtval_239_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_239_salloc" = call i8* @_salloc(i8* %"$adtval_239_load", i64 1)
  %"$adtval_239" = bitcast i8* %"$adtval_239_salloc" to %CName_True*
  %"$adtgep_240" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_239", i32 0, i32 0
  store i8 0, i8* %"$adtgep_240", align 1
  %"$adtptr_241" = bitcast %CName_True* %"$adtval_239" to %TName_Bool*
  store %TName_Bool* %"$adtptr_241", %TName_Bool** %test, align 8, !dbg !33
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_237"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg1, metadata !34, metadata !DIExpression()), !dbg !36
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !37
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg2, metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !40
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !41, metadata !DIExpression()), !dbg !42
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 20, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 20
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$arg1_277" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_278" = load %Uint32, %Uint32* %arg2, align 4
  %"$div_call_279" = call %Uint32 @_div_Uint32(%Uint32 %"$arg1_277", %Uint32 %"$arg2_278"), !dbg !45
  store %Uint32 %"$div_call_279", %Uint32* %res, align 4, !dbg !45
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_275"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res_, metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !48
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !49, metadata !DIExpression()), !dbg !50
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
  %"$res_301" = load %Uint32, %Uint32* %res, align 4
  %"$res__302" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_303" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_300", %Uint32 %"$res_301", %Uint32 %"$res__302"), !dbg !51
  store %TName_Bool* %"$eq_call_303", %TName_Bool** %test_, align 8, !dbg !51
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_298"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_310" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_311" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_310", 0
  %"$BoolUtils.andb_envptr_312" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_310", 1
  %"$test_313" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_314" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_311"(i8* %"$BoolUtils.andb_envptr_312", %TName_Bool* %"$test_313"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_314", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !52
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_62", metadata !53, metadata !DIExpression()), !dbg !52
  %"$$BoolUtils.andb_61_315" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_316" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_315", 0
  %"$$BoolUtils.andb_61_envptr_317" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_315", 1
  %"$test__318" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_61_call_319" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_316"(i8* %"$$BoolUtils.andb_61_envptr_317", %TName_Bool* %"$test__318"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_61_call_319", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !52
  %"$$BoolUtils.andb_62_320" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_320", %TName_Bool** %"$test_6", align 8, !dbg !52
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_308"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$arg1_7", metadata !54, metadata !DIExpression()), !dbg !55
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_7", align 4, !dbg !56
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$arg2_8", metadata !57, metadata !DIExpression()), !dbg !58
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %"$arg2_8", align 4, !dbg !59
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !60, metadata !DIExpression()), !dbg !61
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$res_9", metadata !62, metadata !DIExpression()), !dbg !63
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 20, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 20
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$$arg1_7_356" = load %Uint32, %Uint32* %"$arg1_7", align 4
  %"$$arg2_8_357" = load %Uint32, %Uint32* %"$arg2_8", align 4
  %"$rem_call_358" = call %Uint32 @_rem_Uint32(%Uint32 %"$$arg1_7_356", %Uint32 %"$$arg2_8_357"), !dbg !64
  store %Uint32 %"$rem_call_358", %Uint32* %"$res_9", align 4, !dbg !64
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_354"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$res__10", metadata !65, metadata !DIExpression()), !dbg !66
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$res__10", align 4, !dbg !67
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__11", metadata !68, metadata !DIExpression()), !dbg !69
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 4, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 4
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$execptr_load_379" = load i8*, i8** @_execptr, align 8
  %"$$res_9_380" = load %Uint32, %Uint32* %"$res_9", align 4
  %"$$res__10_381" = load %Uint32, %Uint32* %"$res__10", align 4
  %"$eq_call_382" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_379", %Uint32 %"$$res_9_380", %Uint32 %"$$res__10_381"), !dbg !70
  store %TName_Bool* %"$eq_call_382", %TName_Bool** %"$test__11", align 8, !dbg !70
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_377"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_389" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_390" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_389", 0
  %"$BoolUtils.andb_envptr_391" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_389", 1
  %"$$test_6_392" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_393" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_390"(i8* %"$BoolUtils.andb_envptr_391", %TName_Bool* %"$$test_6_392"), !dbg !71
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_393", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !71
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_64", metadata !72, metadata !DIExpression()), !dbg !71
  %"$$BoolUtils.andb_63_394" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_395" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_394", 0
  %"$$BoolUtils.andb_63_envptr_396" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_394", 1
  %"$$test__11_397" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_63_call_398" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_395"(i8* %"$$BoolUtils.andb_63_envptr_396", %TName_Bool* %"$$test__11_397"), !dbg !71
  store %TName_Bool* %"$$BoolUtils.andb_63_call_398", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !71
  %"$$BoolUtils.andb_64_399" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_399", %TName_Bool** %"$test_12", align 8, !dbg !71
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_387"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$arg1_13", metadata !73, metadata !DIExpression()), !dbg !74
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_13", align 4, !dbg !75
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$arg2_14", metadata !76, metadata !DIExpression()), !dbg !77
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  store %Uint32 { i32 1845 }, %Uint32* %"$arg2_14", align 4, !dbg !78
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$res_15", metadata !81, metadata !DIExpression()), !dbg !82
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 20, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 20
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$$arg1_13_435" = load %Uint32, %Uint32* %"$arg1_13", align 4
  %"$$arg2_14_436" = load %Uint32, %Uint32* %"$arg2_14", align 4
  %"$div_call_437" = call %Uint32 @_div_Uint32(%Uint32 %"$$arg1_13_435", %Uint32 %"$$arg2_14_436"), !dbg !83
  store %Uint32 %"$div_call_437", %Uint32* %"$res_15", align 4, !dbg !83
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_433"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$res__16", metadata !84, metadata !DIExpression()), !dbg !85
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$res__16", align 4, !dbg !86
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__17", metadata !87, metadata !DIExpression()), !dbg !88
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 4, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 4
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$execptr_load_458" = load i8*, i8** @_execptr, align 8
  %"$$res_15_459" = load %Uint32, %Uint32* %"$res_15", align 4
  %"$$res__16_460" = load %Uint32, %Uint32* %"$res__16", align 4
  %"$eq_call_461" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_458", %Uint32 %"$$res_15_459", %Uint32 %"$$res__16_460"), !dbg !89
  store %TName_Bool* %"$eq_call_461", %TName_Bool** %"$test__17", align 8, !dbg !89
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_456"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_468" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_469" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_468", 0
  %"$BoolUtils.andb_envptr_470" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_468", 1
  %"$$test_12_471" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_472" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_469"(i8* %"$BoolUtils.andb_envptr_470", %TName_Bool* %"$$test_12_471"), !dbg !90
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_472", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !90
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_66", metadata !91, metadata !DIExpression()), !dbg !90
  %"$$BoolUtils.andb_65_473" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_474" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_473", 0
  %"$$BoolUtils.andb_65_envptr_475" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_473", 1
  %"$$test__17_476" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_65_call_477" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_474"(i8* %"$$BoolUtils.andb_65_envptr_475", %TName_Bool* %"$$test__17_476"), !dbg !90
  store %TName_Bool* %"$$BoolUtils.andb_65_call_477", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !90
  %"$$BoolUtils.andb_66_478" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_478", %TName_Bool** %"$test_18", align 8, !dbg !90
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_466"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg1_19", metadata !92, metadata !DIExpression()), !dbg !94
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg1_19", align 4, !dbg !95
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_487"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg2_20", metadata !96, metadata !DIExpression()), !dbg !97
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_20", align 4, !dbg !98
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res_21", metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 20, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 20
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$$arg1_19_514" = load %Int32, %Int32* %"$arg1_19", align 4
  %"$$arg2_20_515" = load %Int32, %Int32* %"$arg2_20", align 4
  %"$div_call_516" = call %Int32 @_div_Int32(%Int32 %"$$arg1_19_514", %Int32 %"$$arg2_20_515"), !dbg !103
  store %Int32 %"$div_call_516", %Int32* %"$res_21", align 4, !dbg !103
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_512"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res__22", metadata !104, metadata !DIExpression()), !dbg !105
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_520"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__22", align 4, !dbg !106
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__23", metadata !107, metadata !DIExpression()), !dbg !108
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 4, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 4
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$execptr_load_537" = load i8*, i8** @_execptr, align 8
  %"$$res_21_538" = load %Int32, %Int32* %"$res_21", align 4
  %"$$res__22_539" = load %Int32, %Int32* %"$res__22", align 4
  %"$eq_call_540" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_537", %Int32 %"$$res_21_538", %Int32 %"$$res__22_539"), !dbg !109
  store %TName_Bool* %"$eq_call_540", %TName_Bool** %"$test__23", align 8, !dbg !109
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_535"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_547" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_548" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_547", 0
  %"$BoolUtils.andb_envptr_549" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_547", 1
  %"$$test_18_550" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_551" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_548"(i8* %"$BoolUtils.andb_envptr_549", %TName_Bool* %"$$test_18_550"), !dbg !110
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_551", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !110
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_68", metadata !111, metadata !DIExpression()), !dbg !110
  %"$$BoolUtils.andb_67_552" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_553" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_552", 0
  %"$$BoolUtils.andb_67_envptr_554" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_552", 1
  %"$$test__23_555" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_67_call_556" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_553"(i8* %"$$BoolUtils.andb_67_envptr_554", %TName_Bool* %"$$test__23_555"), !dbg !110
  store %TName_Bool* %"$$BoolUtils.andb_67_call_556", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !110
  %"$$BoolUtils.andb_68_557" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_557", %TName_Bool** %"$test_24", align 8, !dbg !110
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_545"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg1_25", metadata !112, metadata !DIExpression()), !dbg !113
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$arg1_25", align 4, !dbg !114
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_566"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg2_26", metadata !115, metadata !DIExpression()), !dbg !116
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_26", align 4, !dbg !117
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_576"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !118, metadata !DIExpression()), !dbg !119
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res_27", metadata !120, metadata !DIExpression()), !dbg !121
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 20, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 20
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$$arg1_25_593" = load %Int32, %Int32* %"$arg1_25", align 4
  %"$$arg2_26_594" = load %Int32, %Int32* %"$arg2_26", align 4
  %"$div_call_595" = call %Int32 @_div_Int32(%Int32 %"$$arg1_25_593", %Int32 %"$$arg2_26_594"), !dbg !122
  store %Int32 %"$div_call_595", %Int32* %"$res_27", align 4, !dbg !122
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_591"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res__28", metadata !123, metadata !DIExpression()), !dbg !124
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res__28", align 4, !dbg !125
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_604"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__29", metadata !126, metadata !DIExpression()), !dbg !127
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 4, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 4
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$execptr_load_616" = load i8*, i8** @_execptr, align 8
  %"$$res_27_617" = load %Int32, %Int32* %"$res_27", align 4
  %"$$res__28_618" = load %Int32, %Int32* %"$res__28", align 4
  %"$eq_call_619" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_616", %Int32 %"$$res_27_617", %Int32 %"$$res__28_618"), !dbg !128
  store %TName_Bool* %"$eq_call_619", %TName_Bool** %"$test__29", align 8, !dbg !128
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_614"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_626" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_627" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_626", 0
  %"$BoolUtils.andb_envptr_628" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_626", 1
  %"$$test_24_629" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_630" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_627"(i8* %"$BoolUtils.andb_envptr_628", %TName_Bool* %"$$test_24_629"), !dbg !129
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_630", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !129
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_70", metadata !130, metadata !DIExpression()), !dbg !129
  %"$$BoolUtils.andb_69_631" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_632" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_631", 0
  %"$$BoolUtils.andb_69_envptr_633" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_631", 1
  %"$$test__29_634" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_69_call_635" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_632"(i8* %"$$BoolUtils.andb_69_envptr_633", %TName_Bool* %"$$test__29_634"), !dbg !129
  store %TName_Bool* %"$$BoolUtils.andb_69_call_635", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !129
  %"$$BoolUtils.andb_70_636" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_636", %TName_Bool** %"$test_30", align 8, !dbg !129
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_624"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_31", metadata !131, metadata !DIExpression()), !dbg !133
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_640"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_31", align 8, !dbg !134
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_32", metadata !135, metadata !DIExpression()), !dbg !136
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_650"
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_32", align 8, !dbg !137
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$have_gas_655"
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !138, metadata !DIExpression()), !dbg !139
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_33", metadata !140, metadata !DIExpression()), !dbg !141
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 80, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_665"
  %"$consume_672" = sub i64 %"$gasrem_668", 80
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$execptr_load_673" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_31_674" = alloca %Uint256, align 8
  %"$$arg1_31_675" = load %Uint256, %Uint256* %"$arg1_31", align 8
  store %Uint256 %"$$arg1_31_675", %Uint256* %"$div_$arg1_31_674", align 8
  %"$div_$arg2_32_676" = alloca %Uint256, align 8
  %"$$arg2_32_677" = load %Uint256, %Uint256* %"$arg2_32", align 8
  store %Uint256 %"$$arg2_32_677", %Uint256* %"$div_$arg2_32_676", align 8
  %"$div_call_678" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_673", %Uint256* %"$div_$arg1_31_674", %Uint256* %"$div_$arg2_32_676"), !dbg !142
  %"$div_680" = load %Uint256, %Uint256* %"$div_call_678", align 8
  store %Uint256 %"$div_680", %Uint256* %"$res_33", align 8, !dbg !142
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_671"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__34", metadata !143, metadata !DIExpression()), !dbg !144
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__34", align 8, !dbg !145
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__35", metadata !146, metadata !DIExpression()), !dbg !147
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 16, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_694"
  %"$consume_701" = sub i64 %"$gasrem_697", 16
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$execptr_load_702" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_33_703" = alloca %Uint256, align 8
  %"$$res_33_704" = load %Uint256, %Uint256* %"$res_33", align 8
  store %Uint256 %"$$res_33_704", %Uint256* %"$eq_$res_33_703", align 8
  %"$eq_$res__34_705" = alloca %Uint256, align 8
  %"$$res__34_706" = load %Uint256, %Uint256* %"$res__34", align 8
  store %Uint256 %"$$res__34_706", %Uint256* %"$eq_$res__34_705", align 8
  %"$eq_call_707" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_702", %Uint256* %"$eq_$res_33_703", %Uint256* %"$eq_$res__34_705"), !dbg !148
  store %TName_Bool* %"$eq_call_707", %TName_Bool** %"$test__35", align 8, !dbg !148
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_700"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_714" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_715" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_714", 0
  %"$BoolUtils.andb_envptr_716" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_714", 1
  %"$$test_30_717" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_718" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_715"(i8* %"$BoolUtils.andb_envptr_716", %TName_Bool* %"$$test_30_717"), !dbg !149
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_718", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !149
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_72", metadata !150, metadata !DIExpression()), !dbg !149
  %"$$BoolUtils.andb_71_719" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_720" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_719", 0
  %"$$BoolUtils.andb_71_envptr_721" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_719", 1
  %"$$test__35_722" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_71_call_723" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_720"(i8* %"$$BoolUtils.andb_71_envptr_721", %TName_Bool* %"$$test__35_722"), !dbg !149
  store %TName_Bool* %"$$BoolUtils.andb_71_call_723", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !149
  %"$$BoolUtils.andb_72_724" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_724", %TName_Bool** %"$test_36", align 8, !dbg !149
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_712"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_37", metadata !151, metadata !DIExpression()), !dbg !152
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_37", align 8, !dbg !153
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_733"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_38", metadata !154, metadata !DIExpression()), !dbg !155
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_38", align 8, !dbg !156
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !157, metadata !DIExpression()), !dbg !158
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_748"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_39", metadata !159, metadata !DIExpression()), !dbg !160
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 80, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %"$have_gas_753"
  %"$consume_760" = sub i64 %"$gasrem_756", 80
  store i64 %"$consume_760", i64* @_gasrem, align 8
  %"$execptr_load_761" = load i8*, i8** @_execptr, align 8
  %"$rem_$arg1_37_762" = alloca %Uint256, align 8
  %"$$arg1_37_763" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_763", %Uint256* %"$rem_$arg1_37_762", align 8
  %"$rem_$arg2_38_764" = alloca %Uint256, align 8
  %"$$arg2_38_765" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_765", %Uint256* %"$rem_$arg2_38_764", align 8
  %"$rem_call_766" = call %Uint256* @_rem_Uint256(i8* %"$execptr_load_761", %Uint256* %"$rem_$arg1_37_762", %Uint256* %"$rem_$arg2_38_764"), !dbg !161
  %"$rem_768" = load %Uint256, %Uint256* %"$rem_call_766", align 8
  store %Uint256 %"$rem_768", %Uint256* %"$res_39", align 8, !dbg !161
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_759"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_759"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__40", metadata !162, metadata !DIExpression()), !dbg !163
  %"$gasrem_774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_775" = icmp ugt i64 1, %"$gasrem_774"
  br i1 %"$gascmp_775", label %"$out_of_gas_776", label %"$have_gas_777"

"$out_of_gas_776":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_777"

"$have_gas_777":                                  ; preds = %"$out_of_gas_776", %"$have_gas_772"
  %"$consume_778" = sub i64 %"$gasrem_774", 1
  store i64 %"$consume_778", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__40", align 8, !dbg !164
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$have_gas_777"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$have_gas_777"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__41", metadata !165, metadata !DIExpression()), !dbg !166
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 16, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_782"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_782"
  %"$consume_789" = sub i64 %"$gasrem_785", 16
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$execptr_load_790" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_791" = alloca %Uint256, align 8
  %"$$res_39_792" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_792", %Uint256* %"$eq_$res_39_791", align 8
  %"$eq_$res__40_793" = alloca %Uint256, align 8
  %"$$res__40_794" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_794", %Uint256* %"$eq_$res__40_793", align 8
  %"$eq_call_795" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_790", %Uint256* %"$eq_$res_39_791", %Uint256* %"$eq_$res__40_793"), !dbg !167
  store %TName_Bool* %"$eq_call_795", %TName_Bool** %"$test__41", align 8, !dbg !167
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_788"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_802" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_803" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_802", 0
  %"$BoolUtils.andb_envptr_804" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_802", 1
  %"$$test_36_805" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_806" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_803"(i8* %"$BoolUtils.andb_envptr_804", %TName_Bool* %"$$test_36_805"), !dbg !168
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_806", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !168
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_74", metadata !169, metadata !DIExpression()), !dbg !168
  %"$$BoolUtils.andb_73_807" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_808" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_807", 0
  %"$$BoolUtils.andb_73_envptr_809" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_807", 1
  %"$$test__41_810" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_73_call_811" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_808"(i8* %"$$BoolUtils.andb_73_envptr_809", %TName_Bool* %"$$test__41_810"), !dbg !168
  store %TName_Bool* %"$$BoolUtils.andb_73_call_811", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !168
  %"$$BoolUtils.andb_74_812" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_812", %TName_Bool** %"$test_42", align 8, !dbg !168
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_800"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_43", metadata !170, metadata !DIExpression()), !dbg !171
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_43", align 8, !dbg !172
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_44", metadata !173, metadata !DIExpression()), !dbg !174
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  store %Uint256 { i256 1845 }, %Uint256* %"$arg2_44", align 8, !dbg !175
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !176, metadata !DIExpression()), !dbg !177
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_836"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_45", metadata !178, metadata !DIExpression()), !dbg !179
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 80, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_841"
  %"$consume_848" = sub i64 %"$gasrem_844", 80
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$execptr_load_849" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_43_850" = alloca %Uint256, align 8
  %"$$arg1_43_851" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_851", %Uint256* %"$div_$arg1_43_850", align 8
  %"$div_$arg2_44_852" = alloca %Uint256, align 8
  %"$$arg2_44_853" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_853", %Uint256* %"$div_$arg2_44_852", align 8
  %"$div_call_854" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_849", %Uint256* %"$div_$arg1_43_850", %Uint256* %"$div_$arg2_44_852"), !dbg !180
  %"$div_856" = load %Uint256, %Uint256* %"$div_call_854", align 8
  store %Uint256 %"$div_856", %Uint256* %"$res_45", align 8, !dbg !180
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_847"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__46", metadata !181, metadata !DIExpression()), !dbg !182
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$have_gas_860"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__46", align 8, !dbg !183
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_865"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__47", metadata !184, metadata !DIExpression()), !dbg !185
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 16, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_870"
  %"$consume_877" = sub i64 %"$gasrem_873", 16
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$execptr_load_878" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_879" = alloca %Uint256, align 8
  %"$$res_45_880" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_880", %Uint256* %"$eq_$res_45_879", align 8
  %"$eq_$res__46_881" = alloca %Uint256, align 8
  %"$$res__46_882" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_882", %Uint256* %"$eq_$res__46_881", align 8
  %"$eq_call_883" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_878", %Uint256* %"$eq_$res_45_879", %Uint256* %"$eq_$res__46_881"), !dbg !186
  store %TName_Bool* %"$eq_call_883", %TName_Bool** %"$test__47", align 8, !dbg !186
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 1, %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_876"
  %"$consume_889" = sub i64 %"$gasrem_885", 1
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_890" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_891" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_890", 0
  %"$BoolUtils.andb_envptr_892" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_890", 1
  %"$$test_42_893" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_894" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_891"(i8* %"$BoolUtils.andb_envptr_892", %TName_Bool* %"$$test_42_893"), !dbg !187
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_894", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8, !dbg !187
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_76", metadata !188, metadata !DIExpression()), !dbg !187
  %"$$BoolUtils.andb_75_895" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_896" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_895", 0
  %"$$BoolUtils.andb_75_envptr_897" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_895", 1
  %"$$test__47_898" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_75_call_899" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_896"(i8* %"$$BoolUtils.andb_75_envptr_897", %TName_Bool* %"$$test__47_898"), !dbg !187
  store %TName_Bool* %"$$BoolUtils.andb_75_call_899", %TName_Bool** %"$BoolUtils.andb_76", align 8, !dbg !187
  %"$$BoolUtils.andb_76_900" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_900", %TName_Bool** %"$test_48", align 8, !dbg !187
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_888"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_49", metadata !189, metadata !DIExpression()), !dbg !191
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_904"
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$arg1_49", align 8, !dbg !192
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_909"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_50", metadata !193, metadata !DIExpression()), !dbg !194
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_50", align 8, !dbg !195
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_54", metadata !196, metadata !DIExpression()), !dbg !197
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_51", metadata !198, metadata !DIExpression()), !dbg !199
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 80, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_929"
  %"$consume_936" = sub i64 %"$gasrem_932", 80
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$execptr_load_937" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_49_938" = alloca %Int256, align 8
  %"$$arg1_49_939" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_939", %Int256* %"$div_$arg1_49_938", align 8
  %"$div_$arg2_50_940" = alloca %Int256, align 8
  %"$$arg2_50_941" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_941", %Int256* %"$div_$arg2_50_940", align 8
  %"$div_call_942" = call %Int256* @_div_Int256(i8* %"$execptr_load_937", %Int256* %"$div_$arg1_49_938", %Int256* %"$div_$arg2_50_940"), !dbg !200
  %"$div_944" = load %Int256, %Int256* %"$div_call_942", align 8
  store %Int256 %"$div_944", %Int256* %"$res_51", align 8, !dbg !200
  %"$gasrem_945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_946" = icmp ugt i64 1, %"$gasrem_945"
  br i1 %"$gascmp_946", label %"$out_of_gas_947", label %"$have_gas_948"

"$out_of_gas_947":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_948"

"$have_gas_948":                                  ; preds = %"$out_of_gas_947", %"$have_gas_935"
  %"$consume_949" = sub i64 %"$gasrem_945", 1
  store i64 %"$consume_949", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__52", metadata !201, metadata !DIExpression()), !dbg !202
  %"$gasrem_950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_951" = icmp ugt i64 1, %"$gasrem_950"
  br i1 %"$gascmp_951", label %"$out_of_gas_952", label %"$have_gas_953"

"$out_of_gas_952":                                ; preds = %"$have_gas_948"
  call void @_out_of_gas()
  br label %"$have_gas_953"

"$have_gas_953":                                  ; preds = %"$out_of_gas_952", %"$have_gas_948"
  %"$consume_954" = sub i64 %"$gasrem_950", 1
  store i64 %"$consume_954", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$res__52", align 8, !dbg !203
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_953"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_953"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__53", metadata !204, metadata !DIExpression()), !dbg !205
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 16, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_958"
  %"$consume_965" = sub i64 %"$gasrem_961", 16
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %"$execptr_load_966" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_967" = alloca %Int256, align 8
  %"$$res_51_968" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_968", %Int256* %"$eq_$res_51_967", align 8
  %"$eq_$res__52_969" = alloca %Int256, align 8
  %"$$res__52_970" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_970", %Int256* %"$eq_$res__52_969", align 8
  %"$eq_call_971" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_966", %Int256* %"$eq_$res_51_967", %Int256* %"$eq_$res__52_969"), !dbg !206
  store %TName_Bool* %"$eq_call_971", %TName_Bool** %"$test__53", align 8, !dbg !206
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_964"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_978" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_979" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_978", 0
  %"$BoolUtils.andb_envptr_980" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_978", 1
  %"$$test_48_981" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_982" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_979"(i8* %"$BoolUtils.andb_envptr_980", %TName_Bool* %"$$test_48_981"), !dbg !207
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_982", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8, !dbg !207
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_78", metadata !208, metadata !DIExpression()), !dbg !207
  %"$$BoolUtils.andb_77_983" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_984" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_983", 0
  %"$$BoolUtils.andb_77_envptr_985" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_983", 1
  %"$$test__53_986" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_77_call_987" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_984"(i8* %"$$BoolUtils.andb_77_envptr_985", %TName_Bool* %"$$test__53_986"), !dbg !207
  store %TName_Bool* %"$$BoolUtils.andb_77_call_987", %TName_Bool** %"$BoolUtils.andb_78", align 8, !dbg !207
  %"$$BoolUtils.andb_78_988" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_988", %TName_Bool** %"$test_54", align 8, !dbg !207
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_976"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_55", metadata !209, metadata !DIExpression()), !dbg !210
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_55", align 8, !dbg !211
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_997"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_56", metadata !212, metadata !DIExpression()), !dbg !213
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_1002"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_56", align 8, !dbg !214
  %"$gasrem_1009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1010" = icmp ugt i64 1, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %"$have_gas_1007"
  %"$consume_1013" = sub i64 %"$gasrem_1009", 1
  store i64 %"$consume_1013", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_60", metadata !215, metadata !DIExpression()), !dbg !216
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_57", metadata !217, metadata !DIExpression()), !dbg !218
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 80, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1017"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 80
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$execptr_load_1025" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_55_1026" = alloca %Int256, align 8
  %"$$arg1_55_1027" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1027", %Int256* %"$div_$arg1_55_1026", align 8
  %"$div_$arg2_56_1028" = alloca %Int256, align 8
  %"$$arg2_56_1029" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1029", %Int256* %"$div_$arg2_56_1028", align 8
  %"$div_call_1030" = call %Int256* @_div_Int256(i8* %"$execptr_load_1025", %Int256* %"$div_$arg1_55_1026", %Int256* %"$div_$arg2_56_1028"), !dbg !219
  %"$div_1032" = load %Int256, %Int256* %"$div_call_1030", align 8
  store %Int256 %"$div_1032", %Int256* %"$res_57", align 8, !dbg !219
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 1, %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$have_gas_1023"
  %"$consume_1037" = sub i64 %"$gasrem_1033", 1
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__58", metadata !220, metadata !DIExpression()), !dbg !221
  %"$gasrem_1038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1039" = icmp ugt i64 1, %"$gasrem_1038"
  br i1 %"$gascmp_1039", label %"$out_of_gas_1040", label %"$have_gas_1041"

"$out_of_gas_1040":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1041"

"$have_gas_1041":                                 ; preds = %"$out_of_gas_1040", %"$have_gas_1036"
  %"$consume_1042" = sub i64 %"$gasrem_1038", 1
  store i64 %"$consume_1042", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__58", align 8, !dbg !222
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1041"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__59", metadata !223, metadata !DIExpression()), !dbg !224
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 16, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1046"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 16
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$execptr_load_1054" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1055" = alloca %Int256, align 8
  %"$$res_57_1056" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1056", %Int256* %"$eq_$res_57_1055", align 8
  %"$eq_$res__58_1057" = alloca %Int256, align 8
  %"$$res__58_1058" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1058", %Int256* %"$eq_$res__58_1057", align 8
  %"$eq_call_1059" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1054", %Int256* %"$eq_$res_57_1055", %Int256* %"$eq_$res__58_1057"), !dbg !225
  store %TName_Bool* %"$eq_call_1059", %TName_Bool** %"$test__59", align 8, !dbg !225
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$have_gas_1052"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1066" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1067" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1066", 0
  %"$BoolUtils.andb_envptr_1068" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1066", 1
  %"$$test_54_1069" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1070" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1067"(i8* %"$BoolUtils.andb_envptr_1068", %TName_Bool* %"$$test_54_1069"), !dbg !226
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1070", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !226
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_80", metadata !227, metadata !DIExpression()), !dbg !226
  %"$$BoolUtils.andb_79_1071" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_1072" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1071", 0
  %"$$BoolUtils.andb_79_envptr_1073" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1071", 1
  %"$$test__59_1074" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_79_call_1075" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_1072"(i8* %"$$BoolUtils.andb_79_envptr_1073", %TName_Bool* %"$$test__59_1074"), !dbg !226
  store %TName_Bool* %"$$BoolUtils.andb_79_call_1075", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !226
  %"$$BoolUtils.andb_80_1076" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_1076", %TName_Bool** %"$test_60", align 8, !dbg !226
  %"$gasrem_1077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1078" = icmp ugt i64 1, %"$gasrem_1077"
  br i1 %"$gascmp_1078", label %"$out_of_gas_1079", label %"$have_gas_1080"

"$out_of_gas_1079":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1080"

"$have_gas_1080":                                 ; preds = %"$out_of_gas_1079", %"$have_gas_1064"
  %"$consume_1081" = sub i64 %"$gasrem_1077", 1
  store i64 %"$consume_1081", i64* @_gasrem, align 8
  %"$$test_60_1082" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  store %TName_Bool* %"$$test_60_1082", %TName_Bool** %"$expr_85", align 8, !dbg !228
  %"$$expr_85_1083" = load %TName_Bool*, %TName_Bool** %"$expr_85", align 8
  ret %TName_Bool* %"$$expr_85_1083"
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
  %"$exprval_1084" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1085" = bitcast %TName_Bool* %"$exprval_1084" to i8*
  %"$execptr_load_1086" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1086", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_120", i8* %"$memvoidcast_1085")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_div_rem.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_84", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$expr_85", scope: !28, file: !2, line: 1, type: !10)
!30 = !DILocation(line: 1, column: 13, scope: !28)
!31 = !DILocalVariable(name: "test", scope: !28, file: !2, line: 2, type: !10)
!32 = !DILocation(line: 2, column: 5, scope: !28)
!33 = !DILocation(line: 2, column: 12, scope: !28)
!34 = !DILocalVariable(name: "arg1", scope: !28, file: !2, line: 4, type: !35)
!35 = !DIBasicType(name: "Uint32", size: 4)
!36 = !DILocation(line: 4, column: 5, scope: !28)
!37 = !DILocation(line: 4, column: 12, scope: !28)
!38 = !DILocalVariable(name: "arg2", scope: !28, file: !2, line: 5, type: !35)
!39 = !DILocation(line: 5, column: 5, scope: !28)
!40 = !DILocation(line: 5, column: 12, scope: !28)
!41 = !DILocalVariable(name: "$test_6", scope: !28, file: !2, line: 6, type: !10)
!42 = !DILocation(line: 6, column: 5, scope: !28)
!43 = !DILocalVariable(name: "res", scope: !28, file: !2, line: 7, type: !35)
!44 = !DILocation(line: 7, column: 7, scope: !28)
!45 = !DILocation(line: 7, column: 13, scope: !28)
!46 = !DILocalVariable(name: "res_", scope: !28, file: !2, line: 8, type: !35)
!47 = !DILocation(line: 8, column: 7, scope: !28)
!48 = !DILocation(line: 8, column: 14, scope: !28)
!49 = !DILocalVariable(name: "test_", scope: !28, file: !2, line: 9, type: !10)
!50 = !DILocation(line: 9, column: 7, scope: !28)
!51 = !DILocation(line: 9, column: 15, scope: !28)
!52 = !DILocation(line: 10, column: 3, scope: !28)
!53 = !DILocalVariable(name: "$BoolUtils.andb_62", scope: !28, file: !2, line: 10, type: !10)
!54 = !DILocalVariable(name: "$arg1_7", scope: !28, file: !2, line: 13, type: !35)
!55 = !DILocation(line: 13, column: 5, scope: !28)
!56 = !DILocation(line: 13, column: 12, scope: !28)
!57 = !DILocalVariable(name: "$arg2_8", scope: !28, file: !2, line: 14, type: !35)
!58 = !DILocation(line: 14, column: 5, scope: !28)
!59 = !DILocation(line: 14, column: 12, scope: !28)
!60 = !DILocalVariable(name: "$test_12", scope: !28, file: !2, line: 15, type: !10)
!61 = !DILocation(line: 15, column: 5, scope: !28)
!62 = !DILocalVariable(name: "$res_9", scope: !28, file: !2, line: 16, type: !35)
!63 = !DILocation(line: 16, column: 7, scope: !28)
!64 = !DILocation(line: 16, column: 13, scope: !28)
!65 = !DILocalVariable(name: "$res__10", scope: !28, file: !2, line: 17, type: !35)
!66 = !DILocation(line: 17, column: 7, scope: !28)
!67 = !DILocation(line: 17, column: 14, scope: !28)
!68 = !DILocalVariable(name: "$test__11", scope: !28, file: !2, line: 18, type: !10)
!69 = !DILocation(line: 18, column: 7, scope: !28)
!70 = !DILocation(line: 18, column: 15, scope: !28)
!71 = !DILocation(line: 19, column: 3, scope: !28)
!72 = !DILocalVariable(name: "$BoolUtils.andb_64", scope: !28, file: !2, line: 19, type: !10)
!73 = !DILocalVariable(name: "$arg1_13", scope: !28, file: !2, line: 22, type: !35)
!74 = !DILocation(line: 22, column: 5, scope: !28)
!75 = !DILocation(line: 22, column: 12, scope: !28)
!76 = !DILocalVariable(name: "$arg2_14", scope: !28, file: !2, line: 23, type: !35)
!77 = !DILocation(line: 23, column: 5, scope: !28)
!78 = !DILocation(line: 23, column: 12, scope: !28)
!79 = !DILocalVariable(name: "$test_18", scope: !28, file: !2, line: 24, type: !10)
!80 = !DILocation(line: 24, column: 5, scope: !28)
!81 = !DILocalVariable(name: "$res_15", scope: !28, file: !2, line: 25, type: !35)
!82 = !DILocation(line: 25, column: 7, scope: !28)
!83 = !DILocation(line: 25, column: 13, scope: !28)
!84 = !DILocalVariable(name: "$res__16", scope: !28, file: !2, line: 26, type: !35)
!85 = !DILocation(line: 26, column: 7, scope: !28)
!86 = !DILocation(line: 26, column: 14, scope: !28)
!87 = !DILocalVariable(name: "$test__17", scope: !28, file: !2, line: 27, type: !10)
!88 = !DILocation(line: 27, column: 7, scope: !28)
!89 = !DILocation(line: 27, column: 15, scope: !28)
!90 = !DILocation(line: 28, column: 3, scope: !28)
!91 = !DILocalVariable(name: "$BoolUtils.andb_66", scope: !28, file: !2, line: 28, type: !10)
!92 = !DILocalVariable(name: "$arg1_19", scope: !28, file: !2, line: 31, type: !93)
!93 = !DIBasicType(name: "Int32", size: 4)
!94 = !DILocation(line: 31, column: 5, scope: !28)
!95 = !DILocation(line: 31, column: 12, scope: !28)
!96 = !DILocalVariable(name: "$arg2_20", scope: !28, file: !2, line: 32, type: !93)
!97 = !DILocation(line: 32, column: 5, scope: !28)
!98 = !DILocation(line: 32, column: 12, scope: !28)
!99 = !DILocalVariable(name: "$test_24", scope: !28, file: !2, line: 33, type: !10)
!100 = !DILocation(line: 33, column: 5, scope: !28)
!101 = !DILocalVariable(name: "$res_21", scope: !28, file: !2, line: 34, type: !93)
!102 = !DILocation(line: 34, column: 7, scope: !28)
!103 = !DILocation(line: 34, column: 13, scope: !28)
!104 = !DILocalVariable(name: "$res__22", scope: !28, file: !2, line: 35, type: !93)
!105 = !DILocation(line: 35, column: 7, scope: !28)
!106 = !DILocation(line: 35, column: 14, scope: !28)
!107 = !DILocalVariable(name: "$test__23", scope: !28, file: !2, line: 36, type: !10)
!108 = !DILocation(line: 36, column: 7, scope: !28)
!109 = !DILocation(line: 36, column: 15, scope: !28)
!110 = !DILocation(line: 37, column: 3, scope: !28)
!111 = !DILocalVariable(name: "$BoolUtils.andb_68", scope: !28, file: !2, line: 37, type: !10)
!112 = !DILocalVariable(name: "$arg1_25", scope: !28, file: !2, line: 40, type: !93)
!113 = !DILocation(line: 40, column: 5, scope: !28)
!114 = !DILocation(line: 40, column: 12, scope: !28)
!115 = !DILocalVariable(name: "$arg2_26", scope: !28, file: !2, line: 41, type: !93)
!116 = !DILocation(line: 41, column: 5, scope: !28)
!117 = !DILocation(line: 41, column: 12, scope: !28)
!118 = !DILocalVariable(name: "$test_30", scope: !28, file: !2, line: 42, type: !10)
!119 = !DILocation(line: 42, column: 5, scope: !28)
!120 = !DILocalVariable(name: "$res_27", scope: !28, file: !2, line: 43, type: !93)
!121 = !DILocation(line: 43, column: 7, scope: !28)
!122 = !DILocation(line: 43, column: 13, scope: !28)
!123 = !DILocalVariable(name: "$res__28", scope: !28, file: !2, line: 44, type: !93)
!124 = !DILocation(line: 44, column: 7, scope: !28)
!125 = !DILocation(line: 44, column: 14, scope: !28)
!126 = !DILocalVariable(name: "$test__29", scope: !28, file: !2, line: 45, type: !10)
!127 = !DILocation(line: 45, column: 7, scope: !28)
!128 = !DILocation(line: 45, column: 15, scope: !28)
!129 = !DILocation(line: 46, column: 3, scope: !28)
!130 = !DILocalVariable(name: "$BoolUtils.andb_70", scope: !28, file: !2, line: 46, type: !10)
!131 = !DILocalVariable(name: "$arg1_31", scope: !28, file: !2, line: 49, type: !132)
!132 = !DIBasicType(name: "Uint256", size: 32)
!133 = !DILocation(line: 49, column: 5, scope: !28)
!134 = !DILocation(line: 49, column: 12, scope: !28)
!135 = !DILocalVariable(name: "$arg2_32", scope: !28, file: !2, line: 50, type: !132)
!136 = !DILocation(line: 50, column: 5, scope: !28)
!137 = !DILocation(line: 50, column: 12, scope: !28)
!138 = !DILocalVariable(name: "$test_36", scope: !28, file: !2, line: 51, type: !10)
!139 = !DILocation(line: 51, column: 5, scope: !28)
!140 = !DILocalVariable(name: "$res_33", scope: !28, file: !2, line: 52, type: !132)
!141 = !DILocation(line: 52, column: 7, scope: !28)
!142 = !DILocation(line: 52, column: 13, scope: !28)
!143 = !DILocalVariable(name: "$res__34", scope: !28, file: !2, line: 53, type: !132)
!144 = !DILocation(line: 53, column: 7, scope: !28)
!145 = !DILocation(line: 53, column: 14, scope: !28)
!146 = !DILocalVariable(name: "$test__35", scope: !28, file: !2, line: 54, type: !10)
!147 = !DILocation(line: 54, column: 7, scope: !28)
!148 = !DILocation(line: 54, column: 15, scope: !28)
!149 = !DILocation(line: 55, column: 3, scope: !28)
!150 = !DILocalVariable(name: "$BoolUtils.andb_72", scope: !28, file: !2, line: 55, type: !10)
!151 = !DILocalVariable(name: "$arg1_37", scope: !28, file: !2, line: 58, type: !132)
!152 = !DILocation(line: 58, column: 5, scope: !28)
!153 = !DILocation(line: 58, column: 12, scope: !28)
!154 = !DILocalVariable(name: "$arg2_38", scope: !28, file: !2, line: 59, type: !132)
!155 = !DILocation(line: 59, column: 5, scope: !28)
!156 = !DILocation(line: 59, column: 12, scope: !28)
!157 = !DILocalVariable(name: "$test_42", scope: !28, file: !2, line: 60, type: !10)
!158 = !DILocation(line: 60, column: 5, scope: !28)
!159 = !DILocalVariable(name: "$res_39", scope: !28, file: !2, line: 61, type: !132)
!160 = !DILocation(line: 61, column: 7, scope: !28)
!161 = !DILocation(line: 61, column: 13, scope: !28)
!162 = !DILocalVariable(name: "$res__40", scope: !28, file: !2, line: 62, type: !132)
!163 = !DILocation(line: 62, column: 7, scope: !28)
!164 = !DILocation(line: 62, column: 14, scope: !28)
!165 = !DILocalVariable(name: "$test__41", scope: !28, file: !2, line: 63, type: !10)
!166 = !DILocation(line: 63, column: 7, scope: !28)
!167 = !DILocation(line: 63, column: 15, scope: !28)
!168 = !DILocation(line: 64, column: 3, scope: !28)
!169 = !DILocalVariable(name: "$BoolUtils.andb_74", scope: !28, file: !2, line: 64, type: !10)
!170 = !DILocalVariable(name: "$arg1_43", scope: !28, file: !2, line: 67, type: !132)
!171 = !DILocation(line: 67, column: 5, scope: !28)
!172 = !DILocation(line: 67, column: 12, scope: !28)
!173 = !DILocalVariable(name: "$arg2_44", scope: !28, file: !2, line: 68, type: !132)
!174 = !DILocation(line: 68, column: 5, scope: !28)
!175 = !DILocation(line: 68, column: 12, scope: !28)
!176 = !DILocalVariable(name: "$test_48", scope: !28, file: !2, line: 69, type: !10)
!177 = !DILocation(line: 69, column: 5, scope: !28)
!178 = !DILocalVariable(name: "$res_45", scope: !28, file: !2, line: 70, type: !132)
!179 = !DILocation(line: 70, column: 7, scope: !28)
!180 = !DILocation(line: 70, column: 13, scope: !28)
!181 = !DILocalVariable(name: "$res__46", scope: !28, file: !2, line: 71, type: !132)
!182 = !DILocation(line: 71, column: 7, scope: !28)
!183 = !DILocation(line: 71, column: 14, scope: !28)
!184 = !DILocalVariable(name: "$test__47", scope: !28, file: !2, line: 72, type: !10)
!185 = !DILocation(line: 72, column: 7, scope: !28)
!186 = !DILocation(line: 72, column: 15, scope: !28)
!187 = !DILocation(line: 73, column: 3, scope: !28)
!188 = !DILocalVariable(name: "$BoolUtils.andb_76", scope: !28, file: !2, line: 73, type: !10)
!189 = !DILocalVariable(name: "$arg1_49", scope: !28, file: !2, line: 76, type: !190)
!190 = !DIBasicType(name: "Int256", size: 32)
!191 = !DILocation(line: 76, column: 5, scope: !28)
!192 = !DILocation(line: 76, column: 12, scope: !28)
!193 = !DILocalVariable(name: "$arg2_50", scope: !28, file: !2, line: 77, type: !190)
!194 = !DILocation(line: 77, column: 5, scope: !28)
!195 = !DILocation(line: 77, column: 12, scope: !28)
!196 = !DILocalVariable(name: "$test_54", scope: !28, file: !2, line: 78, type: !10)
!197 = !DILocation(line: 78, column: 5, scope: !28)
!198 = !DILocalVariable(name: "$res_51", scope: !28, file: !2, line: 79, type: !190)
!199 = !DILocation(line: 79, column: 7, scope: !28)
!200 = !DILocation(line: 79, column: 13, scope: !28)
!201 = !DILocalVariable(name: "$res__52", scope: !28, file: !2, line: 80, type: !190)
!202 = !DILocation(line: 80, column: 7, scope: !28)
!203 = !DILocation(line: 80, column: 14, scope: !28)
!204 = !DILocalVariable(name: "$test__53", scope: !28, file: !2, line: 81, type: !10)
!205 = !DILocation(line: 81, column: 7, scope: !28)
!206 = !DILocation(line: 81, column: 15, scope: !28)
!207 = !DILocation(line: 82, column: 3, scope: !28)
!208 = !DILocalVariable(name: "$BoolUtils.andb_78", scope: !28, file: !2, line: 82, type: !10)
!209 = !DILocalVariable(name: "$arg1_55", scope: !28, file: !2, line: 85, type: !190)
!210 = !DILocation(line: 85, column: 5, scope: !28)
!211 = !DILocation(line: 85, column: 12, scope: !28)
!212 = !DILocalVariable(name: "$arg2_56", scope: !28, file: !2, line: 86, type: !190)
!213 = !DILocation(line: 86, column: 5, scope: !28)
!214 = !DILocation(line: 86, column: 12, scope: !28)
!215 = !DILocalVariable(name: "$test_60", scope: !28, file: !2, line: 87, type: !10)
!216 = !DILocation(line: 87, column: 5, scope: !28)
!217 = !DILocalVariable(name: "$res_57", scope: !28, file: !2, line: 88, type: !190)
!218 = !DILocation(line: 88, column: 7, scope: !28)
!219 = !DILocation(line: 88, column: 13, scope: !28)
!220 = !DILocalVariable(name: "$res__58", scope: !28, file: !2, line: 89, type: !190)
!221 = !DILocation(line: 89, column: 7, scope: !28)
!222 = !DILocation(line: 89, column: 14, scope: !28)
!223 = !DILocalVariable(name: "$test__59", scope: !28, file: !2, line: 90, type: !10)
!224 = !DILocation(line: 90, column: 7, scope: !28)
!225 = !DILocation(line: 90, column: 15, scope: !28)
!226 = !DILocation(line: 91, column: 3, scope: !28)
!227 = !DILocalVariable(name: "$BoolUtils.andb_80", scope: !28, file: !2, line: 91, type: !10)
!228 = !DILocation(line: 94, column: 1, scope: !28)
