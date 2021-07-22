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

%"$TyDescrTy_PrimTyp_80" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_110" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_109"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_109" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_111"**, %"$TyDescrTy_ADTTyp_110"* }
%"$TyDescrTy_ADTTyp_Constr_111" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1042" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1043" = type { %ParamDescrString, i32, %"$ParamDescr_1042"* }
%"$$fundef_77_env_128" = type { %TName_Bool* }
%"$$fundef_75_env_129" = type {}
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Uint256 = type { i256 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_81" = global %"$TyDescrTy_PrimTyp_80" zeroinitializer
@"$TyDescr_Int32_82" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Int32_Prim_81" to i8*) }
@"$TyDescr_Uint32_Prim_83" = global %"$TyDescrTy_PrimTyp_80" { i32 1, i32 0 }
@"$TyDescr_Uint32_84" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Uint32_Prim_83" to i8*) }
@"$TyDescr_Int64_Prim_85" = global %"$TyDescrTy_PrimTyp_80" { i32 0, i32 1 }
@"$TyDescr_Int64_86" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Int64_Prim_85" to i8*) }
@"$TyDescr_Uint64_Prim_87" = global %"$TyDescrTy_PrimTyp_80" { i32 1, i32 1 }
@"$TyDescr_Uint64_88" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Uint64_Prim_87" to i8*) }
@"$TyDescr_Int128_Prim_89" = global %"$TyDescrTy_PrimTyp_80" { i32 0, i32 2 }
@"$TyDescr_Int128_90" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Int128_Prim_89" to i8*) }
@"$TyDescr_Uint128_Prim_91" = global %"$TyDescrTy_PrimTyp_80" { i32 1, i32 2 }
@"$TyDescr_Uint128_92" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Uint128_Prim_91" to i8*) }
@"$TyDescr_Int256_Prim_93" = global %"$TyDescrTy_PrimTyp_80" { i32 0, i32 3 }
@"$TyDescr_Int256_94" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Int256_Prim_93" to i8*) }
@"$TyDescr_Uint256_Prim_95" = global %"$TyDescrTy_PrimTyp_80" { i32 1, i32 3 }
@"$TyDescr_Uint256_96" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Uint256_Prim_95" to i8*) }
@"$TyDescr_String_Prim_97" = global %"$TyDescrTy_PrimTyp_80" { i32 2, i32 0 }
@"$TyDescr_String_98" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_String_Prim_97" to i8*) }
@"$TyDescr_Bnum_Prim_99" = global %"$TyDescrTy_PrimTyp_80" { i32 3, i32 0 }
@"$TyDescr_Bnum_100" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Bnum_Prim_99" to i8*) }
@"$TyDescr_Message_Prim_101" = global %"$TyDescrTy_PrimTyp_80" { i32 4, i32 0 }
@"$TyDescr_Message_102" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Message_Prim_101" to i8*) }
@"$TyDescr_Event_Prim_103" = global %"$TyDescrTy_PrimTyp_80" { i32 5, i32 0 }
@"$TyDescr_Event_104" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Event_Prim_103" to i8*) }
@"$TyDescr_Exception_Prim_105" = global %"$TyDescrTy_PrimTyp_80" { i32 6, i32 0 }
@"$TyDescr_Exception_106" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Exception_Prim_105" to i8*) }
@"$TyDescr_Bystr_Prim_107" = global %"$TyDescrTy_PrimTyp_80" { i32 7, i32 0 }
@"$TyDescr_Bystr_108" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_80"* @"$TyDescr_Bystr_Prim_107" to i8*) }
@"$TyDescr_ADT_Bool_112" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Bool_ADTTyp_Specl_125" to i8*) }
@"$TyDescr_Bool_ADTTyp_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_110" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_127", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_109"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_109"*], [1 x %"$TyDescrTy_ADTTyp_Specl_109"*]* @"$TyDescr_Bool_ADTTyp_m_specls_126", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_117" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_118" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_118", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_117", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_120" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_121" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_121", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_123" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_111"*] [%"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Bool_True_ADTTyp_Constr_119", %"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Bool_False_ADTTyp_Constr_122"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_124" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_109" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_124", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_111"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_111"*], [2 x %"$TyDescrTy_ADTTyp_Constr_111"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_123", i32 0, i32 0), %"$TyDescrTy_ADTTyp_110"* @"$TyDescr_Bool_ADTTyp_116" }
@"$TyDescr_Bool_ADTTyp_m_specls_126" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_109"*] [%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Bool_ADTTyp_Specl_125"]
@"$TyDescr_ADT_Bool_127" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_104", %_TyDescrTy_Typ* @"$TyDescr_Int64_86", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_112", %_TyDescrTy_Typ* @"$TyDescr_Uint256_96", %_TyDescrTy_Typ* @"$TyDescr_Uint32_84", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", %_TyDescrTy_Typ* @"$TyDescr_Bnum_100", %_TyDescrTy_Typ* @"$TyDescr_Uint128_92", %_TyDescrTy_Typ* @"$TyDescr_Exception_106", %_TyDescrTy_Typ* @"$TyDescr_String_98", %_TyDescrTy_Typ* @"$TyDescr_Int256_94", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", %_TyDescrTy_Typ* @"$TyDescr_Bystr_108", %_TyDescrTy_Typ* @"$TyDescr_Message_102", %_TyDescrTy_Typ* @"$TyDescr_Int32_82"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1042"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1043"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_77"(%"$$fundef_77_env_128"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_77_env_b_141" = getelementptr inbounds %"$$fundef_77_env_128", %"$$fundef_77_env_128"* %0, i32 0, i32 0
  %"$b_envload_142" = load %TName_Bool*, %TName_Bool** %"$$fundef_77_env_b_141", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_142", %TName_Bool** %b, align 8
  %"$retval_78" = alloca %TName_Bool*, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 2, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 2
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$b_149" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_150" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_149", i32 0, i32 0
  %"$b_tag_151" = load i8, i8* %"$b_tag_150", align 1
  switch i8 %"$b_tag_151", label %"$empty_default_152" [
    i8 1, label %"$False_153"
    i8 0, label %"$True_163"
  ], !dbg !9

"$False_153":                                     ; preds = %"$have_gas_146"
  %"$b_154" = bitcast %TName_Bool* %"$b_149" to %CName_False*
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$False_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$False_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$adtval_160_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_160_salloc" = call i8* @_salloc(i8* %"$adtval_160_load", i64 1)
  %"$adtval_160" = bitcast i8* %"$adtval_160_salloc" to %CName_False*
  %"$adtgep_161" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_160", i32 0, i32 0
  store i8 1, i8* %"$adtgep_161", align 1
  %"$adtptr_162" = bitcast %CName_False* %"$adtval_160" to %TName_Bool*
  store %TName_Bool* %"$adtptr_162", %TName_Bool** %"$retval_78", align 8, !dbg !10
  br label %"$matchsucc_148"

"$True_163":                                      ; preds = %"$have_gas_146"
  %"$b_164" = bitcast %TName_Bool* %"$b_149" to %CName_True*
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$True_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$True_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_78", align 8, !dbg !13
  br label %"$matchsucc_148"

"$empty_default_152":                             ; preds = %"$have_gas_146"
  br label %"$matchsucc_148"

"$matchsucc_148":                                 ; preds = %"$have_gas_168", %"$have_gas_158", %"$empty_default_152"
  %"$$retval_78_170" = load %TName_Bool*, %TName_Bool** %"$retval_78", align 8
  ret %TName_Bool* %"$$retval_78_170"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_75"(%"$$fundef_75_env_129"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_76" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %"$$fundef_77_envp_135_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_77_envp_135_salloc" = call i8* @_salloc(i8* %"$$fundef_77_envp_135_load", i64 8)
  %"$$fundef_77_envp_135" = bitcast i8* %"$$fundef_77_envp_135_salloc" to %"$$fundef_77_env_128"*
  %"$$fundef_77_env_voidp_137" = bitcast %"$$fundef_77_env_128"* %"$$fundef_77_envp_135" to i8*
  %"$$fundef_77_cloval_138" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_77_env_128"*, %TName_Bool*)* @"$fundef_77" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_77_env_voidp_137", 1
  %"$$fundef_77_env_b_139" = getelementptr inbounds %"$$fundef_77_env_128", %"$$fundef_77_env_128"* %"$$fundef_77_envp_135", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_77_env_b_139", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_77_cloval_138", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_76", align 8, !dbg !16
  %"$$retval_76_140" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_76", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_76_140"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %entry
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_75_env_129"*, %TName_Bool*)* @"$fundef_75" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !20 {
entry:
  %"$expr_79" = alloca %TName_Bool*, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %entry
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$adtval_194_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_194_salloc" = call i8* @_salloc(i8* %"$adtval_194_load", i64 1)
  %"$adtval_194" = bitcast i8* %"$adtval_194_salloc" to %CName_True*
  %"$adtgep_195" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_194", i32 0, i32 0
  store i8 0, i8* %"$adtgep_195", align 1
  %"$adtptr_196" = bitcast %CName_True* %"$adtval_194" to %TName_Bool*
  store %TName_Bool* %"$adtptr_196", %TName_Bool** %test, align 8, !dbg !21
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_192"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !22
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !23
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 20, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_225"
  %"$consume_231" = sub i64 %"$gasrem_227", 20
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$arg1_232" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_233" = load %Uint32, %Uint32* %arg2, align 4
  %"$div_call_234" = call %Uint32 @_div_Uint32(%Uint32 %"$arg1_232", %Uint32 %"$arg2_233"), !dbg !24
  store %Uint32 %"$div_call_234", %Uint32* %res, align 4, !dbg !24
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_230"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !25
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 4, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 4
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$execptr_load_255" = load i8*, i8** @_execptr, align 8
  %"$res_256" = load %Uint32, %Uint32* %res, align 4
  %"$res__257" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_258" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_255", %Uint32 %"$res_256", %Uint32 %"$res__257"), !dbg !26
  store %TName_Bool* %"$eq_call_258", %TName_Bool** %test_, align 8, !dbg !26
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_253"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_265" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_266" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_265", 0
  %"$BoolUtils.andb_envptr_267" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_265", 1
  %"$test_268" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_269" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_266"(i8* %"$BoolUtils.andb_envptr_267", %TName_Bool* %"$test_268"), !dbg !27
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_269", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8, !dbg !27
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_55_270" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_271" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_270", 0
  %"$$BoolUtils.andb_55_envptr_272" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_270", 1
  %"$test__273" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_55_call_274" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_271"(i8* %"$$BoolUtils.andb_55_envptr_272", %TName_Bool* %"$test__273"), !dbg !27
  store %TName_Bool* %"$$BoolUtils.andb_55_call_274", %TName_Bool** %"$BoolUtils.andb_56", align 8, !dbg !27
  %"$$BoolUtils.andb_56_275" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_275", %TName_Bool** %"$test_0", align 8, !dbg !27
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_263"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$arg1_1" = alloca %Uint32, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_1", align 4, !dbg !28
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$arg2_2" = alloca %Uint32, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %"$arg2_2", align 4, !dbg !29
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$res_3" = alloca %Uint32, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 20, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 20
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$$arg1_1_311" = load %Uint32, %Uint32* %"$arg1_1", align 4
  %"$$arg2_2_312" = load %Uint32, %Uint32* %"$arg2_2", align 4
  %"$rem_call_313" = call %Uint32 @_rem_Uint32(%Uint32 %"$$arg1_1_311", %Uint32 %"$$arg2_2_312"), !dbg !30
  store %Uint32 %"$rem_call_313", %Uint32* %"$res_3", align 4, !dbg !30
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_309"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$res__4" = alloca %Uint32, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$res__4", align 4, !dbg !31
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$test__5" = alloca %TName_Bool*, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 4, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 4
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$execptr_load_334" = load i8*, i8** @_execptr, align 8
  %"$$res_3_335" = load %Uint32, %Uint32* %"$res_3", align 4
  %"$$res__4_336" = load %Uint32, %Uint32* %"$res__4", align 4
  %"$eq_call_337" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_334", %Uint32 %"$$res_3_335", %Uint32 %"$$res__4_336"), !dbg !32
  store %TName_Bool* %"$eq_call_337", %TName_Bool** %"$test__5", align 8, !dbg !32
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_332"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_344" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_345" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_344", 0
  %"$BoolUtils.andb_envptr_346" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_344", 1
  %"$$test_0_347" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_348" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_345"(i8* %"$BoolUtils.andb_envptr_346", %TName_Bool* %"$$test_0_347"), !dbg !33
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_348", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8, !dbg !33
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_57_349" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_350" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_349", 0
  %"$$BoolUtils.andb_57_envptr_351" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_349", 1
  %"$$test__5_352" = load %TName_Bool*, %TName_Bool** %"$test__5", align 8
  %"$$BoolUtils.andb_57_call_353" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_350"(i8* %"$$BoolUtils.andb_57_envptr_351", %TName_Bool* %"$$test__5_352"), !dbg !33
  store %TName_Bool* %"$$BoolUtils.andb_57_call_353", %TName_Bool** %"$BoolUtils.andb_58", align 8, !dbg !33
  %"$$BoolUtils.andb_58_354" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_354", %TName_Bool** %"$test_6", align 8, !dbg !33
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_342"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint32, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_7", align 4, !dbg !34
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint32, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  store %Uint32 { i32 1845 }, %Uint32* %"$arg2_8", align 4, !dbg !35
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_378"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint32, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 20, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 20
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$$arg1_7_390" = load %Uint32, %Uint32* %"$arg1_7", align 4
  %"$$arg2_8_391" = load %Uint32, %Uint32* %"$arg2_8", align 4
  %"$div_call_392" = call %Uint32 @_div_Uint32(%Uint32 %"$$arg1_7_390", %Uint32 %"$$arg2_8_391"), !dbg !36
  store %Uint32 %"$div_call_392", %Uint32* %"$res_9", align 4, !dbg !36
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_388"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint32, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$res__10", align 4, !dbg !37
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 4, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 4
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$execptr_load_413" = load i8*, i8** @_execptr, align 8
  %"$$res_9_414" = load %Uint32, %Uint32* %"$res_9", align 4
  %"$$res__10_415" = load %Uint32, %Uint32* %"$res__10", align 4
  %"$eq_call_416" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_413", %Uint32 %"$$res_9_414", %Uint32 %"$$res__10_415"), !dbg !38
  store %TName_Bool* %"$eq_call_416", %TName_Bool** %"$test__11", align 8, !dbg !38
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_411"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_423" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_424" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_423", 0
  %"$BoolUtils.andb_envptr_425" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_423", 1
  %"$$test_6_426" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_427" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_424"(i8* %"$BoolUtils.andb_envptr_425", %TName_Bool* %"$$test_6_426"), !dbg !39
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_427", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8, !dbg !39
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_59_428" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_429" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_428", 0
  %"$$BoolUtils.andb_59_envptr_430" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_428", 1
  %"$$test__11_431" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_59_call_432" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_429"(i8* %"$$BoolUtils.andb_59_envptr_430", %TName_Bool* %"$$test__11_431"), !dbg !39
  store %TName_Bool* %"$$BoolUtils.andb_59_call_432", %TName_Bool** %"$BoolUtils.andb_60", align 8, !dbg !39
  %"$$BoolUtils.andb_60_433" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_433", %TName_Bool** %"$test_12", align 8, !dbg !39
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_421"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Int32, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg1_13", align 4, !dbg !40
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Int32, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_14", align 4, !dbg !41
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_457"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int32, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 20, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 20
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$$arg1_13_469" = load %Int32, %Int32* %"$arg1_13", align 4
  %"$$arg2_14_470" = load %Int32, %Int32* %"$arg2_14", align 4
  %"$div_call_471" = call %Int32 @_div_Int32(%Int32 %"$$arg1_13_469", %Int32 %"$$arg2_14_470"), !dbg !42
  store %Int32 %"$div_call_471", %Int32* %"$res_15", align 4, !dbg !42
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_467"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int32, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__16", align 4, !dbg !43
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 4, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_485"
  %"$consume_491" = sub i64 %"$gasrem_487", 4
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$execptr_load_492" = load i8*, i8** @_execptr, align 8
  %"$$res_15_493" = load %Int32, %Int32* %"$res_15", align 4
  %"$$res__16_494" = load %Int32, %Int32* %"$res__16", align 4
  %"$eq_call_495" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_492", %Int32 %"$$res_15_493", %Int32 %"$$res__16_494"), !dbg !44
  store %TName_Bool* %"$eq_call_495", %TName_Bool** %"$test__17", align 8, !dbg !44
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_490"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_502" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_503" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_502", 0
  %"$BoolUtils.andb_envptr_504" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_502", 1
  %"$$test_12_505" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_506" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_503"(i8* %"$BoolUtils.andb_envptr_504", %TName_Bool* %"$$test_12_505"), !dbg !45
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_506", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !45
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_507" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_508" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_507", 0
  %"$$BoolUtils.andb_61_envptr_509" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_507", 1
  %"$$test__17_510" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_61_call_511" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_508"(i8* %"$$BoolUtils.andb_61_envptr_509", %TName_Bool* %"$$test__17_510"), !dbg !45
  store %TName_Bool* %"$$BoolUtils.andb_61_call_511", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !45
  %"$$BoolUtils.andb_62_512" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_512", %TName_Bool** %"$test_18", align 8, !dbg !45
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_500"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int32, align 8
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$arg1_19", align 4, !dbg !46
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int32, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_20", align 4, !dbg !47
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_536"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int32, align 8
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 20, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_541"
  %"$consume_547" = sub i64 %"$gasrem_543", 20
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %"$$arg1_19_548" = load %Int32, %Int32* %"$arg1_19", align 4
  %"$$arg2_20_549" = load %Int32, %Int32* %"$arg2_20", align 4
  %"$div_call_550" = call %Int32 @_div_Int32(%Int32 %"$$arg1_19_548", %Int32 %"$$arg2_20_549"), !dbg !48
  store %Int32 %"$div_call_550", %Int32* %"$res_21", align 4, !dbg !48
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_546"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int32, align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res__22", align 4, !dbg !49
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 4, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 4
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$execptr_load_571" = load i8*, i8** @_execptr, align 8
  %"$$res_21_572" = load %Int32, %Int32* %"$res_21", align 4
  %"$$res__22_573" = load %Int32, %Int32* %"$res__22", align 4
  %"$eq_call_574" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_571", %Int32 %"$$res_21_572", %Int32 %"$$res__22_573"), !dbg !50
  store %TName_Bool* %"$eq_call_574", %TName_Bool** %"$test__23", align 8, !dbg !50
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_569"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_581" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_582" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_581", 0
  %"$BoolUtils.andb_envptr_583" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_581", 1
  %"$$test_18_584" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_585" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_582"(i8* %"$BoolUtils.andb_envptr_583", %TName_Bool* %"$$test_18_584"), !dbg !51
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_585", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !51
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_586" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_587" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_586", 0
  %"$$BoolUtils.andb_63_envptr_588" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_586", 1
  %"$$test__23_589" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_63_call_590" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_587"(i8* %"$$BoolUtils.andb_63_envptr_588", %TName_Bool* %"$$test__23_589"), !dbg !51
  store %TName_Bool* %"$$BoolUtils.andb_63_call_590", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !51
  %"$$BoolUtils.andb_64_591" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_591", %TName_Bool** %"$test_24", align 8, !dbg !51
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_579"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint256, align 8
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_595"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_25", align 8, !dbg !52
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_600"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint256, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_605"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_26", align 8, !dbg !53
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_610"
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_615"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint256, align 8
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 80, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_620"
  %"$consume_627" = sub i64 %"$gasrem_623", 80
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %"$execptr_load_628" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_25_629" = alloca %Uint256, align 8
  %"$$arg1_25_630" = load %Uint256, %Uint256* %"$arg1_25", align 8
  store %Uint256 %"$$arg1_25_630", %Uint256* %"$div_$arg1_25_629", align 8
  %"$div_$arg2_26_631" = alloca %Uint256, align 8
  %"$$arg2_26_632" = load %Uint256, %Uint256* %"$arg2_26", align 8
  store %Uint256 %"$$arg2_26_632", %Uint256* %"$div_$arg2_26_631", align 8
  %"$div_call_633" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_628", %Uint256* %"$div_$arg1_25_629", %Uint256* %"$div_$arg2_26_631"), !dbg !54
  %"$div_635" = load %Uint256, %Uint256* %"$div_call_633", align 8
  store %Uint256 %"$div_635", %Uint256* %"$res_27", align 8, !dbg !54
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 1, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_626"
  %"$consume_640" = sub i64 %"$gasrem_636", 1
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint256, align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_639"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__28", align 8, !dbg !55
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_644"
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 16, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_649"
  %"$consume_656" = sub i64 %"$gasrem_652", 16
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$execptr_load_657" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_27_658" = alloca %Uint256, align 8
  %"$$res_27_659" = load %Uint256, %Uint256* %"$res_27", align 8
  store %Uint256 %"$$res_27_659", %Uint256* %"$eq_$res_27_658", align 8
  %"$eq_$res__28_660" = alloca %Uint256, align 8
  %"$$res__28_661" = load %Uint256, %Uint256* %"$res__28", align 8
  store %Uint256 %"$$res__28_661", %Uint256* %"$eq_$res__28_660", align 8
  %"$eq_call_662" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_657", %Uint256* %"$eq_$res_27_658", %Uint256* %"$eq_$res__28_660"), !dbg !56
  store %TName_Bool* %"$eq_call_662", %TName_Bool** %"$test__29", align 8, !dbg !56
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_655"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_669" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_670" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_669", 0
  %"$BoolUtils.andb_envptr_671" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_669", 1
  %"$$test_24_672" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_673" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_670"(i8* %"$BoolUtils.andb_envptr_671", %TName_Bool* %"$$test_24_672"), !dbg !57
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_673", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !57
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_674" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_675" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_674", 0
  %"$$BoolUtils.andb_65_envptr_676" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_674", 1
  %"$$test__29_677" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_65_call_678" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_675"(i8* %"$$BoolUtils.andb_65_envptr_676", %TName_Bool* %"$$test__29_677"), !dbg !57
  store %TName_Bool* %"$$BoolUtils.andb_65_call_678", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !57
  %"$$BoolUtils.andb_66_679" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_679", %TName_Bool** %"$test_30", align 8, !dbg !57
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_667"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint256, align 8
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$have_gas_683"
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_31", align 8, !dbg !58
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_688"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_688"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint256, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_693"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_32", align 8, !dbg !59
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_698"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_703"
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint256, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 80, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_708"
  %"$consume_715" = sub i64 %"$gasrem_711", 80
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$execptr_load_716" = load i8*, i8** @_execptr, align 8
  %"$rem_$arg1_31_717" = alloca %Uint256, align 8
  %"$$arg1_31_718" = load %Uint256, %Uint256* %"$arg1_31", align 8
  store %Uint256 %"$$arg1_31_718", %Uint256* %"$rem_$arg1_31_717", align 8
  %"$rem_$arg2_32_719" = alloca %Uint256, align 8
  %"$$arg2_32_720" = load %Uint256, %Uint256* %"$arg2_32", align 8
  store %Uint256 %"$$arg2_32_720", %Uint256* %"$rem_$arg2_32_719", align 8
  %"$rem_call_721" = call %Uint256* @_rem_Uint256(i8* %"$execptr_load_716", %Uint256* %"$rem_$arg1_31_717", %Uint256* %"$rem_$arg2_32_719"), !dbg !60
  %"$rem_723" = load %Uint256, %Uint256* %"$rem_call_721", align 8
  store %Uint256 %"$rem_723", %Uint256* %"$res_33", align 8, !dbg !60
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_714"
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint256, align 8
  %"$gasrem_729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_730" = icmp ugt i64 1, %"$gasrem_729"
  br i1 %"$gascmp_730", label %"$out_of_gas_731", label %"$have_gas_732"

"$out_of_gas_731":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_732"

"$have_gas_732":                                  ; preds = %"$out_of_gas_731", %"$have_gas_727"
  %"$consume_733" = sub i64 %"$gasrem_729", 1
  store i64 %"$consume_733", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__34", align 8, !dbg !61
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$have_gas_732"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$have_gas_732"
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 16, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_737"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_737"
  %"$consume_744" = sub i64 %"$gasrem_740", 16
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$execptr_load_745" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_33_746" = alloca %Uint256, align 8
  %"$$res_33_747" = load %Uint256, %Uint256* %"$res_33", align 8
  store %Uint256 %"$$res_33_747", %Uint256* %"$eq_$res_33_746", align 8
  %"$eq_$res__34_748" = alloca %Uint256, align 8
  %"$$res__34_749" = load %Uint256, %Uint256* %"$res__34", align 8
  store %Uint256 %"$$res__34_749", %Uint256* %"$eq_$res__34_748", align 8
  %"$eq_call_750" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_745", %Uint256* %"$eq_$res_33_746", %Uint256* %"$eq_$res__34_748"), !dbg !62
  store %TName_Bool* %"$eq_call_750", %TName_Bool** %"$test__35", align 8, !dbg !62
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_743"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_757" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_758" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_757", 0
  %"$BoolUtils.andb_envptr_759" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_757", 1
  %"$$test_30_760" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_761" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_758"(i8* %"$BoolUtils.andb_envptr_759", %TName_Bool* %"$$test_30_760"), !dbg !63
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_761", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !63
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_762" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_763" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_762", 0
  %"$$BoolUtils.andb_67_envptr_764" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_762", 1
  %"$$test__35_765" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_67_call_766" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_763"(i8* %"$$BoolUtils.andb_67_envptr_764", %TName_Bool* %"$$test__35_765"), !dbg !63
  store %TName_Bool* %"$$BoolUtils.andb_67_call_766", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !63
  %"$$BoolUtils.andb_68_767" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_767", %TName_Bool** %"$test_36", align 8, !dbg !63
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_755"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_771"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_37", align 8, !dbg !64
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_776"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  store %Uint256 { i256 1845 }, %Uint256* %"$arg2_38", align 8, !dbg !65
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_786"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 1, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_791"
  %"$consume_797" = sub i64 %"$gasrem_793", 1
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 80, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_796"
  %"$consume_803" = sub i64 %"$gasrem_799", 80
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$execptr_load_804" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_37_805" = alloca %Uint256, align 8
  %"$$arg1_37_806" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_806", %Uint256* %"$div_$arg1_37_805", align 8
  %"$div_$arg2_38_807" = alloca %Uint256, align 8
  %"$$arg2_38_808" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_808", %Uint256* %"$div_$arg2_38_807", align 8
  %"$div_call_809" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_804", %Uint256* %"$div_$arg1_37_805", %Uint256* %"$div_$arg2_38_807"), !dbg !66
  %"$div_811" = load %Uint256, %Uint256* %"$div_call_809", align 8
  store %Uint256 %"$div_811", %Uint256* %"$res_39", align 8, !dbg !66
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_802"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %"$have_gas_815"
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__40", align 8, !dbg !67
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 1, %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %"$have_gas_820"
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %"$have_gas_820"
  %"$consume_826" = sub i64 %"$gasrem_822", 1
  store i64 %"$consume_826", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 16, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_825"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_825"
  %"$consume_832" = sub i64 %"$gasrem_828", 16
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$execptr_load_833" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_834" = alloca %Uint256, align 8
  %"$$res_39_835" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_835", %Uint256* %"$eq_$res_39_834", align 8
  %"$eq_$res__40_836" = alloca %Uint256, align 8
  %"$$res__40_837" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_837", %Uint256* %"$eq_$res__40_836", align 8
  %"$eq_call_838" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_833", %Uint256* %"$eq_$res_39_834", %Uint256* %"$eq_$res__40_836"), !dbg !68
  store %TName_Bool* %"$eq_call_838", %TName_Bool** %"$test__41", align 8, !dbg !68
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_831"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_845" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_846" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_845", 0
  %"$BoolUtils.andb_envptr_847" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_845", 1
  %"$$test_36_848" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_849" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_846"(i8* %"$BoolUtils.andb_envptr_847", %TName_Bool* %"$$test_36_848"), !dbg !69
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_849", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !69
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_850" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_851" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_850", 0
  %"$$BoolUtils.andb_69_envptr_852" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_850", 1
  %"$$test__41_853" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_69_call_854" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_851"(i8* %"$$BoolUtils.andb_69_envptr_852", %TName_Bool* %"$$test__41_853"), !dbg !69
  store %TName_Bool* %"$$BoolUtils.andb_69_call_854", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !69
  %"$$BoolUtils.andb_70_855" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_855", %TName_Bool** %"$test_42", align 8, !dbg !69
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 1, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_843"
  %"$consume_860" = sub i64 %"$gasrem_856", 1
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int256, align 8
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 1, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_859"
  %"$consume_865" = sub i64 %"$gasrem_861", 1
  store i64 %"$consume_865", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$arg1_43", align 8, !dbg !70
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_864"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int256, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_44", align 8, !dbg !71
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_874"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 1, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 1
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int256, align 8
  %"$gasrem_887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_888" = icmp ugt i64 80, %"$gasrem_887"
  br i1 %"$gascmp_888", label %"$out_of_gas_889", label %"$have_gas_890"

"$out_of_gas_889":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_890"

"$have_gas_890":                                  ; preds = %"$out_of_gas_889", %"$have_gas_884"
  %"$consume_891" = sub i64 %"$gasrem_887", 80
  store i64 %"$consume_891", i64* @_gasrem, align 8
  %"$execptr_load_892" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_43_893" = alloca %Int256, align 8
  %"$$arg1_43_894" = load %Int256, %Int256* %"$arg1_43", align 8
  store %Int256 %"$$arg1_43_894", %Int256* %"$div_$arg1_43_893", align 8
  %"$div_$arg2_44_895" = alloca %Int256, align 8
  %"$$arg2_44_896" = load %Int256, %Int256* %"$arg2_44", align 8
  store %Int256 %"$$arg2_44_896", %Int256* %"$div_$arg2_44_895", align 8
  %"$div_call_897" = call %Int256* @_div_Int256(i8* %"$execptr_load_892", %Int256* %"$div_$arg1_43_893", %Int256* %"$div_$arg2_44_895"), !dbg !72
  %"$div_899" = load %Int256, %Int256* %"$div_call_897", align 8
  store %Int256 %"$div_899", %Int256* %"$res_45", align 8, !dbg !72
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_890"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_890"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int256, align 8
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_903"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$res__46", align 8, !dbg !73
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_908"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_908"
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 16, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_913"
  %"$consume_920" = sub i64 %"$gasrem_916", 16
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$execptr_load_921" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_922" = alloca %Int256, align 8
  %"$$res_45_923" = load %Int256, %Int256* %"$res_45", align 8
  store %Int256 %"$$res_45_923", %Int256* %"$eq_$res_45_922", align 8
  %"$eq_$res__46_924" = alloca %Int256, align 8
  %"$$res__46_925" = load %Int256, %Int256* %"$res__46", align 8
  store %Int256 %"$$res__46_925", %Int256* %"$eq_$res__46_924", align 8
  %"$eq_call_926" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_921", %Int256* %"$eq_$res_45_922", %Int256* %"$eq_$res__46_924"), !dbg !74
  store %TName_Bool* %"$eq_call_926", %TName_Bool** %"$test__47", align 8, !dbg !74
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_919"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_933" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_934" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_933", 0
  %"$BoolUtils.andb_envptr_935" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_933", 1
  %"$$test_42_936" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_937" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_934"(i8* %"$BoolUtils.andb_envptr_935", %TName_Bool* %"$$test_42_936"), !dbg !75
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_937", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !75
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_938" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_939" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_938", 0
  %"$$BoolUtils.andb_71_envptr_940" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_938", 1
  %"$$test__47_941" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_71_call_942" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_939"(i8* %"$$BoolUtils.andb_71_envptr_940", %TName_Bool* %"$$test__47_941"), !dbg !75
  store %TName_Bool* %"$$BoolUtils.andb_71_call_942", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !75
  %"$$BoolUtils.andb_72_943" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_943", %TName_Bool** %"$test_48", align 8, !dbg !75
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 1, %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %"$have_gas_931"
  %"$consume_948" = sub i64 %"$gasrem_944", 1
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_950" = icmp ugt i64 1, %"$gasrem_949"
  br i1 %"$gascmp_950", label %"$out_of_gas_951", label %"$have_gas_952"

"$out_of_gas_951":                                ; preds = %"$have_gas_947"
  call void @_out_of_gas()
  br label %"$have_gas_952"

"$have_gas_952":                                  ; preds = %"$out_of_gas_951", %"$have_gas_947"
  %"$consume_953" = sub i64 %"$gasrem_949", 1
  store i64 %"$consume_953", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_49", align 8, !dbg !76
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_957"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_50", align 8, !dbg !77
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_962"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_967"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 80, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_972"
  %"$consume_979" = sub i64 %"$gasrem_975", 80
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %"$execptr_load_980" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_49_981" = alloca %Int256, align 8
  %"$$arg1_49_982" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_982", %Int256* %"$div_$arg1_49_981", align 8
  %"$div_$arg2_50_983" = alloca %Int256, align 8
  %"$$arg2_50_984" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_984", %Int256* %"$div_$arg2_50_983", align 8
  %"$div_call_985" = call %Int256* @_div_Int256(i8* %"$execptr_load_980", %Int256* %"$div_$arg1_49_981", %Int256* %"$div_$arg2_50_983"), !dbg !78
  %"$div_987" = load %Int256, %Int256* %"$div_call_985", align 8
  store %Int256 %"$div_987", %Int256* %"$res_51", align 8, !dbg !78
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_978"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_994" = icmp ugt i64 1, %"$gasrem_993"
  br i1 %"$gascmp_994", label %"$out_of_gas_995", label %"$have_gas_996"

"$out_of_gas_995":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_996"

"$have_gas_996":                                  ; preds = %"$out_of_gas_995", %"$have_gas_991"
  %"$consume_997" = sub i64 %"$gasrem_993", 1
  store i64 %"$consume_997", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__52", align 8, !dbg !79
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$have_gas_996"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$have_gas_996"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 16, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_1001"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 16
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  %"$execptr_load_1009" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_1010" = alloca %Int256, align 8
  %"$$res_51_1011" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_1011", %Int256* %"$eq_$res_51_1010", align 8
  %"$eq_$res__52_1012" = alloca %Int256, align 8
  %"$$res__52_1013" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_1013", %Int256* %"$eq_$res__52_1012", align 8
  %"$eq_call_1014" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1009", %Int256* %"$eq_$res_51_1010", %Int256* %"$eq_$res__52_1012"), !dbg !80
  store %TName_Bool* %"$eq_call_1014", %TName_Bool** %"$test__53", align 8, !dbg !80
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1007"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1021" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1022" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1021", 0
  %"$BoolUtils.andb_envptr_1023" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1021", 1
  %"$$test_48_1024" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1025" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1022"(i8* %"$BoolUtils.andb_envptr_1023", %TName_Bool* %"$$test_48_1024"), !dbg !81
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1025", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !81
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_1026" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_1027" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1026", 0
  %"$$BoolUtils.andb_73_envptr_1028" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1026", 1
  %"$$test__53_1029" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_73_call_1030" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_1027"(i8* %"$$BoolUtils.andb_73_envptr_1028", %TName_Bool* %"$$test__53_1029"), !dbg !81
  store %TName_Bool* %"$$BoolUtils.andb_73_call_1030", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !81
  %"$$BoolUtils.andb_74_1031" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_1031", %TName_Bool** %"$test_54", align 8, !dbg !81
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1019"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$$test_54_1037" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  store %TName_Bool* %"$$test_54_1037", %TName_Bool** %"$expr_79", align 8, !dbg !82
  %"$$expr_79_1038" = load %TName_Bool*, %TName_Bool** %"$expr_79", align 8
  ret %TName_Bool* %"$$expr_79_1038"
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
  %"$exprval_1039" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1040" = bitcast %TName_Bool* %"$exprval_1039" to i8*
  %"$execptr_load_1041" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1041", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_112", i8* %"$memvoidcast_1040")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_div_rem.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_77", linkageName: "$fundef_77", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 7, column: 3, scope: !17)
!20 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 2, column: 12, scope: !20)
!22 = !DILocation(line: 4, column: 12, scope: !20)
!23 = !DILocation(line: 5, column: 12, scope: !20)
!24 = !DILocation(line: 7, column: 13, scope: !20)
!25 = !DILocation(line: 8, column: 14, scope: !20)
!26 = !DILocation(line: 9, column: 15, scope: !20)
!27 = !DILocation(line: 10, column: 3, scope: !20)
!28 = !DILocation(line: 13, column: 12, scope: !20)
!29 = !DILocation(line: 14, column: 12, scope: !20)
!30 = !DILocation(line: 16, column: 13, scope: !20)
!31 = !DILocation(line: 17, column: 14, scope: !20)
!32 = !DILocation(line: 18, column: 15, scope: !20)
!33 = !DILocation(line: 19, column: 3, scope: !20)
!34 = !DILocation(line: 22, column: 12, scope: !20)
!35 = !DILocation(line: 23, column: 12, scope: !20)
!36 = !DILocation(line: 25, column: 13, scope: !20)
!37 = !DILocation(line: 26, column: 14, scope: !20)
!38 = !DILocation(line: 27, column: 15, scope: !20)
!39 = !DILocation(line: 28, column: 3, scope: !20)
!40 = !DILocation(line: 31, column: 12, scope: !20)
!41 = !DILocation(line: 32, column: 12, scope: !20)
!42 = !DILocation(line: 34, column: 13, scope: !20)
!43 = !DILocation(line: 35, column: 14, scope: !20)
!44 = !DILocation(line: 36, column: 15, scope: !20)
!45 = !DILocation(line: 37, column: 3, scope: !20)
!46 = !DILocation(line: 40, column: 12, scope: !20)
!47 = !DILocation(line: 41, column: 12, scope: !20)
!48 = !DILocation(line: 43, column: 13, scope: !20)
!49 = !DILocation(line: 44, column: 14, scope: !20)
!50 = !DILocation(line: 45, column: 15, scope: !20)
!51 = !DILocation(line: 46, column: 3, scope: !20)
!52 = !DILocation(line: 49, column: 12, scope: !20)
!53 = !DILocation(line: 50, column: 12, scope: !20)
!54 = !DILocation(line: 52, column: 13, scope: !20)
!55 = !DILocation(line: 53, column: 14, scope: !20)
!56 = !DILocation(line: 54, column: 15, scope: !20)
!57 = !DILocation(line: 55, column: 3, scope: !20)
!58 = !DILocation(line: 58, column: 12, scope: !20)
!59 = !DILocation(line: 59, column: 12, scope: !20)
!60 = !DILocation(line: 61, column: 13, scope: !20)
!61 = !DILocation(line: 62, column: 14, scope: !20)
!62 = !DILocation(line: 63, column: 15, scope: !20)
!63 = !DILocation(line: 64, column: 3, scope: !20)
!64 = !DILocation(line: 67, column: 12, scope: !20)
!65 = !DILocation(line: 68, column: 12, scope: !20)
!66 = !DILocation(line: 70, column: 13, scope: !20)
!67 = !DILocation(line: 71, column: 14, scope: !20)
!68 = !DILocation(line: 72, column: 15, scope: !20)
!69 = !DILocation(line: 73, column: 3, scope: !20)
!70 = !DILocation(line: 76, column: 12, scope: !20)
!71 = !DILocation(line: 77, column: 12, scope: !20)
!72 = !DILocation(line: 79, column: 13, scope: !20)
!73 = !DILocation(line: 80, column: 14, scope: !20)
!74 = !DILocation(line: 81, column: 15, scope: !20)
!75 = !DILocation(line: 82, column: 3, scope: !20)
!76 = !DILocation(line: 85, column: 12, scope: !20)
!77 = !DILocation(line: 86, column: 12, scope: !20)
!78 = !DILocation(line: 88, column: 13, scope: !20)
!79 = !DILocation(line: 89, column: 14, scope: !20)
!80 = !DILocation(line: 90, column: 15, scope: !20)
!81 = !DILocation(line: 91, column: 3, scope: !20)
!82 = !DILocation(line: 94, column: 1, scope: !20)
