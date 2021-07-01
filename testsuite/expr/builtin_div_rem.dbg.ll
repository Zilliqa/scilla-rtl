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
%"$ParamDescr_932" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_933" = type { %ParamDescrString, i32, %"$ParamDescr_932"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_932"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_933"] zeroinitializer
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
  %"$arg1_227" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_228" = load %Uint32, %Uint32* %arg2, align 4
  %"$div_call_229" = call %Uint32 @_div_Uint32(%Uint32 %"$arg1_227", %Uint32 %"$arg2_228"), !dbg !24
  store %Uint32 %"$div_call_229", %Uint32* %res, align 4, !dbg !24
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_225"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !25
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$execptr_load_245" = load i8*, i8** @_execptr, align 8
  %"$res_246" = load %Uint32, %Uint32* %res, align 4
  %"$res__247" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_248" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_245", %Uint32 %"$res_246", %Uint32 %"$res__247"), !dbg !26
  store %TName_Bool* %"$eq_call_248", %TName_Bool** %test_, align 8, !dbg !26
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_243"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_255" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_256" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_255", 0
  %"$BoolUtils.andb_envptr_257" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_255", 1
  %"$test_258" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_259" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_256"(i8* %"$BoolUtils.andb_envptr_257", %TName_Bool* %"$test_258"), !dbg !27
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_259", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8, !dbg !27
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_55_260" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_261" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_260", 0
  %"$$BoolUtils.andb_55_envptr_262" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_260", 1
  %"$test__263" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_55_call_264" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_261"(i8* %"$$BoolUtils.andb_55_envptr_262", %TName_Bool* %"$test__263"), !dbg !27
  store %TName_Bool* %"$$BoolUtils.andb_55_call_264", %TName_Bool** %"$BoolUtils.andb_56", align 8, !dbg !27
  %"$$BoolUtils.andb_56_265" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_265", %TName_Bool** %"$test_0", align 8, !dbg !27
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_253"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$arg1_1" = alloca %Uint32, align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_269"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_1", align 4, !dbg !28
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$arg2_2" = alloca %Uint32, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %"$arg2_2", align 4, !dbg !29
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$res_3" = alloca %Uint32, align 8
  %"$$arg1_1_296" = load %Uint32, %Uint32* %"$arg1_1", align 4
  %"$$arg2_2_297" = load %Uint32, %Uint32* %"$arg2_2", align 4
  %"$rem_call_298" = call %Uint32 @_rem_Uint32(%Uint32 %"$$arg1_1_296", %Uint32 %"$$arg2_2_297"), !dbg !30
  store %Uint32 %"$rem_call_298", %Uint32* %"$res_3", align 4, !dbg !30
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_294"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$res__4" = alloca %Uint32, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$res__4", align 4, !dbg !31
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$test__5" = alloca %TName_Bool*, align 8
  %"$execptr_load_314" = load i8*, i8** @_execptr, align 8
  %"$$res_3_315" = load %Uint32, %Uint32* %"$res_3", align 4
  %"$$res__4_316" = load %Uint32, %Uint32* %"$res__4", align 4
  %"$eq_call_317" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_314", %Uint32 %"$$res_3_315", %Uint32 %"$$res__4_316"), !dbg !32
  store %TName_Bool* %"$eq_call_317", %TName_Bool** %"$test__5", align 8, !dbg !32
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_312"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_324" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_325" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_324", 0
  %"$BoolUtils.andb_envptr_326" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_324", 1
  %"$$test_0_327" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_328" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_325"(i8* %"$BoolUtils.andb_envptr_326", %TName_Bool* %"$$test_0_327"), !dbg !33
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_328", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8, !dbg !33
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_57_329" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_330" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_329", 0
  %"$$BoolUtils.andb_57_envptr_331" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_329", 1
  %"$$test__5_332" = load %TName_Bool*, %TName_Bool** %"$test__5", align 8
  %"$$BoolUtils.andb_57_call_333" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_330"(i8* %"$$BoolUtils.andb_57_envptr_331", %TName_Bool* %"$$test__5_332"), !dbg !33
  store %TName_Bool* %"$$BoolUtils.andb_57_call_333", %TName_Bool** %"$BoolUtils.andb_58", align 8, !dbg !33
  %"$$BoolUtils.andb_58_334" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_334", %TName_Bool** %"$test_6", align 8, !dbg !33
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_322"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint32, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %"$arg1_7", align 4, !dbg !34
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint32, align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  store %Uint32 { i32 1845 }, %Uint32* %"$arg2_8", align 4, !dbg !35
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint32, align 8
  %"$$arg1_7_365" = load %Uint32, %Uint32* %"$arg1_7", align 4
  %"$$arg2_8_366" = load %Uint32, %Uint32* %"$arg2_8", align 4
  %"$div_call_367" = call %Uint32 @_div_Uint32(%Uint32 %"$$arg1_7_365", %Uint32 %"$$arg2_8_366"), !dbg !36
  store %Uint32 %"$div_call_367", %Uint32* %"$res_9", align 4, !dbg !36
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_363"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint32, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$res__10", align 4, !dbg !37
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$execptr_load_383" = load i8*, i8** @_execptr, align 8
  %"$$res_9_384" = load %Uint32, %Uint32* %"$res_9", align 4
  %"$$res__10_385" = load %Uint32, %Uint32* %"$res__10", align 4
  %"$eq_call_386" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_383", %Uint32 %"$$res_9_384", %Uint32 %"$$res__10_385"), !dbg !38
  store %TName_Bool* %"$eq_call_386", %TName_Bool** %"$test__11", align 8, !dbg !38
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_381"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_393" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_394" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_393", 0
  %"$BoolUtils.andb_envptr_395" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_393", 1
  %"$$test_6_396" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_397" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_394"(i8* %"$BoolUtils.andb_envptr_395", %TName_Bool* %"$$test_6_396"), !dbg !39
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_397", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8, !dbg !39
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_59_398" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_399" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_398", 0
  %"$$BoolUtils.andb_59_envptr_400" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_398", 1
  %"$$test__11_401" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_59_call_402" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_399"(i8* %"$$BoolUtils.andb_59_envptr_400", %TName_Bool* %"$$test__11_401"), !dbg !39
  store %TName_Bool* %"$$BoolUtils.andb_59_call_402", %TName_Bool** %"$BoolUtils.andb_60", align 8, !dbg !39
  %"$$BoolUtils.andb_60_403" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_403", %TName_Bool** %"$test_12", align 8, !dbg !39
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_391"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Int32, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg1_13", align 4, !dbg !40
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Int32, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_14", align 4, !dbg !41
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int32, align 8
  %"$$arg1_13_434" = load %Int32, %Int32* %"$arg1_13", align 4
  %"$$arg2_14_435" = load %Int32, %Int32* %"$arg2_14", align 4
  %"$div_call_436" = call %Int32 @_div_Int32(%Int32 %"$$arg1_13_434", %Int32 %"$$arg2_14_435"), !dbg !42
  store %Int32 %"$div_call_436", %Int32* %"$res_15", align 4, !dbg !42
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 1, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_432"
  %"$consume_441" = sub i64 %"$gasrem_437", 1
  store i64 %"$consume_441", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int32, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_440"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__16", align 4, !dbg !43
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$execptr_load_452" = load i8*, i8** @_execptr, align 8
  %"$$res_15_453" = load %Int32, %Int32* %"$res_15", align 4
  %"$$res__16_454" = load %Int32, %Int32* %"$res__16", align 4
  %"$eq_call_455" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_452", %Int32 %"$$res_15_453", %Int32 %"$$res__16_454"), !dbg !44
  store %TName_Bool* %"$eq_call_455", %TName_Bool** %"$test__17", align 8, !dbg !44
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_450"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_462" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_463" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_462", 0
  %"$BoolUtils.andb_envptr_464" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_462", 1
  %"$$test_12_465" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_466" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_463"(i8* %"$BoolUtils.andb_envptr_464", %TName_Bool* %"$$test_12_465"), !dbg !45
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_466", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !45
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_467" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_468" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_467", 0
  %"$$BoolUtils.andb_61_envptr_469" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_467", 1
  %"$$test__17_470" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_61_call_471" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_468"(i8* %"$$BoolUtils.andb_61_envptr_469", %TName_Bool* %"$$test__17_470"), !dbg !45
  store %TName_Bool* %"$$BoolUtils.andb_61_call_471", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !45
  %"$$BoolUtils.andb_62_472" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_472", %TName_Bool** %"$test_18", align 8, !dbg !45
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_460"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int32, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$arg1_19", align 4, !dbg !46
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_481"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int32, align 8
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg2_20", align 4, !dbg !47
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int32, align 8
  %"$$arg1_19_503" = load %Int32, %Int32* %"$arg1_19", align 4
  %"$$arg2_20_504" = load %Int32, %Int32* %"$arg2_20", align 4
  %"$div_call_505" = call %Int32 @_div_Int32(%Int32 %"$$arg1_19_503", %Int32 %"$$arg2_20_504"), !dbg !48
  store %Int32 %"$div_call_505", %Int32* %"$res_21", align 4, !dbg !48
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_501"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int32, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res__22", align 4, !dbg !49
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$$res_21_522" = load %Int32, %Int32* %"$res_21", align 4
  %"$$res__22_523" = load %Int32, %Int32* %"$res__22", align 4
  %"$eq_call_524" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_521", %Int32 %"$$res_21_522", %Int32 %"$$res__22_523"), !dbg !50
  store %TName_Bool* %"$eq_call_524", %TName_Bool** %"$test__23", align 8, !dbg !50
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_519"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_531" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_532" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_531", 0
  %"$BoolUtils.andb_envptr_533" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_531", 1
  %"$$test_18_534" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_535" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_532"(i8* %"$BoolUtils.andb_envptr_533", %TName_Bool* %"$$test_18_534"), !dbg !51
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_535", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !51
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_536" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_537" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_536", 0
  %"$$BoolUtils.andb_63_envptr_538" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_536", 1
  %"$$test__23_539" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_63_call_540" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_537"(i8* %"$$BoolUtils.andb_63_envptr_538", %TName_Bool* %"$$test__23_539"), !dbg !51
  store %TName_Bool* %"$$BoolUtils.andb_63_call_540", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !51
  %"$$BoolUtils.andb_64_541" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_541", %TName_Bool** %"$test_24", align 8, !dbg !51
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_529"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint256, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_25", align 8, !dbg !52
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint256, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_26", align 8, !dbg !53
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint256, align 8
  %"$execptr_load_572" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_25_573" = alloca %Uint256, align 8
  %"$$arg1_25_574" = load %Uint256, %Uint256* %"$arg1_25", align 8
  store %Uint256 %"$$arg1_25_574", %Uint256* %"$div_$arg1_25_573", align 8
  %"$div_$arg2_26_575" = alloca %Uint256, align 8
  %"$$arg2_26_576" = load %Uint256, %Uint256* %"$arg2_26", align 8
  store %Uint256 %"$$arg2_26_576", %Uint256* %"$div_$arg2_26_575", align 8
  %"$div_call_577" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_572", %Uint256* %"$div_$arg1_25_573", %Uint256* %"$div_$arg2_26_575"), !dbg !54
  %"$div_579" = load %Uint256, %Uint256* %"$div_call_577", align 8
  store %Uint256 %"$div_579", %Uint256* %"$res_27", align 8, !dbg !54
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_570"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint256, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__28", align 8, !dbg !55
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$execptr_load_595" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_27_596" = alloca %Uint256, align 8
  %"$$res_27_597" = load %Uint256, %Uint256* %"$res_27", align 8
  store %Uint256 %"$$res_27_597", %Uint256* %"$eq_$res_27_596", align 8
  %"$eq_$res__28_598" = alloca %Uint256, align 8
  %"$$res__28_599" = load %Uint256, %Uint256* %"$res__28", align 8
  store %Uint256 %"$$res__28_599", %Uint256* %"$eq_$res__28_598", align 8
  %"$eq_call_600" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_595", %Uint256* %"$eq_$res_27_596", %Uint256* %"$eq_$res__28_598"), !dbg !56
  store %TName_Bool* %"$eq_call_600", %TName_Bool** %"$test__29", align 8, !dbg !56
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_593"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_607" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_608" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_607", 0
  %"$BoolUtils.andb_envptr_609" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_607", 1
  %"$$test_24_610" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_611" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_608"(i8* %"$BoolUtils.andb_envptr_609", %TName_Bool* %"$$test_24_610"), !dbg !57
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_611", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !57
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_612" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_613" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_612", 0
  %"$$BoolUtils.andb_65_envptr_614" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_612", 1
  %"$$test__29_615" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_65_call_616" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_613"(i8* %"$$BoolUtils.andb_65_envptr_614", %TName_Bool* %"$$test__29_615"), !dbg !57
  store %TName_Bool* %"$$BoolUtils.andb_65_call_616", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !57
  %"$$BoolUtils.andb_66_617" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_617", %TName_Bool** %"$test_30", align 8, !dbg !57
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_605"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint256, align 8
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_621"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_31", align 8, !dbg !58
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_626"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint256, align 8
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_631"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem, align 8
  store %Uint256 { i256 1843 }, %Uint256* %"$arg2_32", align 8, !dbg !59
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 1, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_636"
  %"$consume_642" = sub i64 %"$gasrem_638", 1
  store i64 %"$consume_642", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 1, %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %"$have_gas_641"
  %"$consume_647" = sub i64 %"$gasrem_643", 1
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint256, align 8
  %"$execptr_load_648" = load i8*, i8** @_execptr, align 8
  %"$rem_$arg1_31_649" = alloca %Uint256, align 8
  %"$$arg1_31_650" = load %Uint256, %Uint256* %"$arg1_31", align 8
  store %Uint256 %"$$arg1_31_650", %Uint256* %"$rem_$arg1_31_649", align 8
  %"$rem_$arg2_32_651" = alloca %Uint256, align 8
  %"$$arg2_32_652" = load %Uint256, %Uint256* %"$arg2_32", align 8
  store %Uint256 %"$$arg2_32_652", %Uint256* %"$rem_$arg2_32_651", align 8
  %"$rem_call_653" = call %Uint256* @_rem_Uint256(i8* %"$execptr_load_648", %Uint256* %"$rem_$arg1_31_649", %Uint256* %"$rem_$arg2_32_651"), !dbg !60
  %"$rem_655" = load %Uint256, %Uint256* %"$rem_call_653", align 8
  store %Uint256 %"$rem_655", %Uint256* %"$res_33", align 8, !dbg !60
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_646"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_646"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint256, align 8
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_659"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__34", align 8, !dbg !61
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$execptr_load_671" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_33_672" = alloca %Uint256, align 8
  %"$$res_33_673" = load %Uint256, %Uint256* %"$res_33", align 8
  store %Uint256 %"$$res_33_673", %Uint256* %"$eq_$res_33_672", align 8
  %"$eq_$res__34_674" = alloca %Uint256, align 8
  %"$$res__34_675" = load %Uint256, %Uint256* %"$res__34", align 8
  store %Uint256 %"$$res__34_675", %Uint256* %"$eq_$res__34_674", align 8
  %"$eq_call_676" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_671", %Uint256* %"$eq_$res_33_672", %Uint256* %"$eq_$res__34_674"), !dbg !62
  store %TName_Bool* %"$eq_call_676", %TName_Bool** %"$test__35", align 8, !dbg !62
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %"$have_gas_669"
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_683" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_684" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_683", 0
  %"$BoolUtils.andb_envptr_685" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_683", 1
  %"$$test_30_686" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_687" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_684"(i8* %"$BoolUtils.andb_envptr_685", %TName_Bool* %"$$test_30_686"), !dbg !63
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_687", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !63
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_688" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_689" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_688", 0
  %"$$BoolUtils.andb_67_envptr_690" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_688", 1
  %"$$test__35_691" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_67_call_692" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_689"(i8* %"$$BoolUtils.andb_67_envptr_690", %TName_Bool* %"$$test__35_691"), !dbg !63
  store %TName_Bool* %"$$BoolUtils.andb_67_call_692", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !63
  %"$$BoolUtils.andb_68_693" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_693", %TName_Bool** %"$test_36", align 8, !dbg !63
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_681"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_681"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_697"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_697"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  store %Uint256 { i256 1844 }, %Uint256* %"$arg1_37", align 8, !dbg !64
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  store %Uint256 { i256 1845 }, %Uint256* %"$arg2_38", align 8, !dbg !65
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  %"$execptr_load_724" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_37_725" = alloca %Uint256, align 8
  %"$$arg1_37_726" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_726", %Uint256* %"$div_$arg1_37_725", align 8
  %"$div_$arg2_38_727" = alloca %Uint256, align 8
  %"$$arg2_38_728" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_728", %Uint256* %"$div_$arg2_38_727", align 8
  %"$div_call_729" = call %Uint256* @_div_Uint256(i8* %"$execptr_load_724", %Uint256* %"$div_$arg1_37_725", %Uint256* %"$div_$arg2_38_727"), !dbg !66
  %"$div_731" = load %Uint256, %Uint256* %"$div_call_729", align 8
  store %Uint256 %"$div_731", %Uint256* %"$res_39", align 8, !dbg !66
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 1, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_722"
  %"$consume_736" = sub i64 %"$gasrem_732", 1
  store i64 %"$consume_736", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 1, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$have_gas_735"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$have_gas_735"
  %"$consume_741" = sub i64 %"$gasrem_737", 1
  store i64 %"$consume_741", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__40", align 8, !dbg !67
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_740"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$execptr_load_747" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_748" = alloca %Uint256, align 8
  %"$$res_39_749" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_749", %Uint256* %"$eq_$res_39_748", align 8
  %"$eq_$res__40_750" = alloca %Uint256, align 8
  %"$$res__40_751" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_751", %Uint256* %"$eq_$res__40_750", align 8
  %"$eq_call_752" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_747", %Uint256* %"$eq_$res_39_748", %Uint256* %"$eq_$res__40_750"), !dbg !68
  store %TName_Bool* %"$eq_call_752", %TName_Bool** %"$test__41", align 8, !dbg !68
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_745"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_759" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_760" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_759", 0
  %"$BoolUtils.andb_envptr_761" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_759", 1
  %"$$test_36_762" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_763" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_760"(i8* %"$BoolUtils.andb_envptr_761", %TName_Bool* %"$$test_36_762"), !dbg !69
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_763", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !69
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_764" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_765" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_764", 0
  %"$$BoolUtils.andb_69_envptr_766" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_764", 1
  %"$$test__41_767" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_69_call_768" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_765"(i8* %"$$BoolUtils.andb_69_envptr_766", %TName_Bool* %"$$test__41_767"), !dbg !69
  store %TName_Bool* %"$$BoolUtils.andb_69_call_768", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !69
  %"$$BoolUtils.andb_70_769" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_769", %TName_Bool** %"$test_42", align 8, !dbg !69
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 1, %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$have_gas_757"
  %"$consume_774" = sub i64 %"$gasrem_770", 1
  store i64 %"$consume_774", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int256, align 8
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_773"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_773"
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$arg1_43", align 8, !dbg !70
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_778"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int256, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_783"
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_44", align 8, !dbg !71
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_788"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_793"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int256, align 8
  %"$execptr_load_800" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_43_801" = alloca %Int256, align 8
  %"$$arg1_43_802" = load %Int256, %Int256* %"$arg1_43", align 8
  store %Int256 %"$$arg1_43_802", %Int256* %"$div_$arg1_43_801", align 8
  %"$div_$arg2_44_803" = alloca %Int256, align 8
  %"$$arg2_44_804" = load %Int256, %Int256* %"$arg2_44", align 8
  store %Int256 %"$$arg2_44_804", %Int256* %"$div_$arg2_44_803", align 8
  %"$div_call_805" = call %Int256* @_div_Int256(i8* %"$execptr_load_800", %Int256* %"$div_$arg1_43_801", %Int256* %"$div_$arg2_44_803"), !dbg !72
  %"$div_807" = load %Int256, %Int256* %"$div_call_805", align 8
  store %Int256 %"$div_807", %Int256* %"$res_45", align 8, !dbg !72
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_798"
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int256, align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_811"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$res__46", align 8, !dbg !73
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$execptr_load_823" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_824" = alloca %Int256, align 8
  %"$$res_45_825" = load %Int256, %Int256* %"$res_45", align 8
  store %Int256 %"$$res_45_825", %Int256* %"$eq_$res_45_824", align 8
  %"$eq_$res__46_826" = alloca %Int256, align 8
  %"$$res__46_827" = load %Int256, %Int256* %"$res__46", align 8
  store %Int256 %"$$res__46_827", %Int256* %"$eq_$res__46_826", align 8
  %"$eq_call_828" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_823", %Int256* %"$eq_$res_45_824", %Int256* %"$eq_$res__46_826"), !dbg !74
  store %TName_Bool* %"$eq_call_828", %TName_Bool** %"$test__47", align 8, !dbg !74
  %"$gasrem_830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_831" = icmp ugt i64 1, %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %"$have_gas_821"
  %"$consume_834" = sub i64 %"$gasrem_830", 1
  store i64 %"$consume_834", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_835" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_836" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_835", 0
  %"$BoolUtils.andb_envptr_837" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_835", 1
  %"$$test_42_838" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_839" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_836"(i8* %"$BoolUtils.andb_envptr_837", %TName_Bool* %"$$test_42_838"), !dbg !75
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_839", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !75
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_840" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_841" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_840", 0
  %"$$BoolUtils.andb_71_envptr_842" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_840", 1
  %"$$test__47_843" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_71_call_844" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_841"(i8* %"$$BoolUtils.andb_71_envptr_842", %TName_Bool* %"$$test__47_843"), !dbg !75
  store %TName_Bool* %"$$BoolUtils.andb_71_call_844", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !75
  %"$$BoolUtils.andb_72_845" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_845", %TName_Bool** %"$test_48", align 8, !dbg !75
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_833"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_833"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %"$have_gas_849"
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_49", align 8, !dbg !76
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 1, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_854"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_854"
  %"$consume_860" = sub i64 %"$gasrem_856", 1
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 1, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_859"
  %"$consume_865" = sub i64 %"$gasrem_861", 1
  store i64 %"$consume_865", i64* @_gasrem, align 8
  store %Int256 { i256 -1843 }, %Int256* %"$arg2_50", align 8, !dbg !77
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_864"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$execptr_load_876" = load i8*, i8** @_execptr, align 8
  %"$div_$arg1_49_877" = alloca %Int256, align 8
  %"$$arg1_49_878" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_878", %Int256* %"$div_$arg1_49_877", align 8
  %"$div_$arg2_50_879" = alloca %Int256, align 8
  %"$$arg2_50_880" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_880", %Int256* %"$div_$arg2_50_879", align 8
  %"$div_call_881" = call %Int256* @_div_Int256(i8* %"$execptr_load_876", %Int256* %"$div_$arg1_49_877", %Int256* %"$div_$arg2_50_879"), !dbg !78
  %"$div_883" = load %Int256, %Int256* %"$div_call_881", align 8
  store %Int256 %"$div_883", %Int256* %"$res_51", align 8, !dbg !78
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_874"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_887"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__52", align 8, !dbg !79
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$execptr_load_899" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_900" = alloca %Int256, align 8
  %"$$res_51_901" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_901", %Int256* %"$eq_$res_51_900", align 8
  %"$eq_$res__52_902" = alloca %Int256, align 8
  %"$$res__52_903" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_903", %Int256* %"$eq_$res__52_902", align 8
  %"$eq_call_904" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_899", %Int256* %"$eq_$res_51_900", %Int256* %"$eq_$res__52_902"), !dbg !80
  store %TName_Bool* %"$eq_call_904", %TName_Bool** %"$test__53", align 8, !dbg !80
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_897"
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_911" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_912" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_911", 0
  %"$BoolUtils.andb_envptr_913" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_911", 1
  %"$$test_48_914" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_915" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_912"(i8* %"$BoolUtils.andb_envptr_913", %TName_Bool* %"$$test_48_914"), !dbg !81
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_915", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !81
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_916" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_917" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_916", 0
  %"$$BoolUtils.andb_73_envptr_918" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_916", 1
  %"$$test__53_919" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_73_call_920" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_917"(i8* %"$$BoolUtils.andb_73_envptr_918", %TName_Bool* %"$$test__53_919"), !dbg !81
  store %TName_Bool* %"$$BoolUtils.andb_73_call_920", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !81
  %"$$BoolUtils.andb_74_921" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_921", %TName_Bool** %"$test_54", align 8, !dbg !81
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$have_gas_909"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$$test_54_927" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  store %TName_Bool* %"$$test_54_927", %TName_Bool** %"$expr_79", align 8, !dbg !82
  %"$$expr_79_928" = load %TName_Bool*, %TName_Bool** %"$expr_79", align 8
  ret %TName_Bool* %"$$expr_79_928"
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
  %"$exprval_929" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_930" = bitcast %TName_Bool* %"$exprval_929" to i8*
  %"$execptr_load_931" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_931", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_112", i8* %"$memvoidcast_930")
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
