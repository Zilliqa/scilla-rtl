; let false = False in
; let test = True in
; 
; let input = Uint32 1844 in
; let resopt = builtin to_int32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int32 1844 in
; let resopt = builtin to_int32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = "1844" in
; let resopt = builtin to_int32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint128 1844 in
; let resopt = builtin to_int32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int128 1844 in
; let resopt = builtin to_int32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int256 1844 in
; let resopt = builtin to_int32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint64 9223372036854775808 in
; let resopt = builtin to_int64 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = "9223372036854775808" in
; let resopt = builtin to_int64 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint64 9223372036854775807 in
; let resopt = builtin to_int64 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int64 9223372036854775807 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int128 -9223372036854775808 in
; let resopt = builtin to_int64 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int64 -9223372036854775808 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = "-9223372036854775808" in
; let resopt = builtin to_int64 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int64 -9223372036854775808 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint64 9223372036854775807 in
; let resopt = builtin to_int256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int256 9223372036854775807 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = "9223372036854775807" in
; let resopt = builtin to_int256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int256 9223372036854775807 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let resopt = builtin to_int256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = "57896044618658097711785492504343953926634992332820282019728792003956564819967" in
; let resopt = builtin to_int256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Int256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = "abcd" in
; let resopt = builtin to_int64 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
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
%"$ParamDescr_1703" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1704" = type { %ParamDescrString, i32, %"$ParamDescr_1703"* }
%"$$fundef_83_env_169" = type { %TName_Bool* }
%"$$fundef_81_env_170" = type {}
%Uint32 = type { i32 }
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>
%String = type { i8*, i32 }
%Uint128 = type { i128 }
%Int128 = type { i128 }
%Int256 = type { i256 }
%Uint64 = type { i64 }
%TName_Option_Int64 = type { i8, %CName_Some_Int64*, %CName_None_Int64* }
%CName_Some_Int64 = type <{ i8, %Int64 }>
%Int64 = type { i64 }
%CName_None_Int64 = type <{ i8 }>
%TName_Option_Int256 = type { i8, %CName_Some_Int256*, %CName_None_Int256* }
%CName_Some_Int256 = type <{ i8, %Int256 }>
%CName_None_Int256 = type <{ i8 }>
%Uint256 = type { i256 }

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
@"$TyDescr_ADT_Option_Int256_120" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Option_Int256_ADTTyp_Specl_136" to i8*) }
@"$TyDescr_ADT_Option_Int64_121" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Option_Int64_ADTTyp_Specl_145" to i8*) }
@"$TyDescr_ADT_Option_Int32_122" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Option_Int32_ADTTyp_Specl_154" to i8*) }
@"$TyDescr_ADT_Bool_123" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Bool_ADTTyp_Specl_166" to i8*) }
@"$TyDescr_Option_ADTTyp_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_118" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_156", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_117"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_117"*], [3 x %"$TyDescrTy_ADTTyp_Specl_117"*]* @"$TyDescr_Option_ADTTyp_m_specls_155", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int256_Constr_m_args_128" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_100"]
@"$TyDescr_ADT_Some_129" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int256_ADTTyp_Constr_130" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_129", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int256_Constr_m_args_128", i32 0, i32 0) }
@"$TyDescr_Option_None_Int256_Constr_m_args_131" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_132" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int256_ADTTyp_Constr_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_132", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int256_Constr_m_args_131", i32 0, i32 0) }
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_134" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_119"*] [%"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Option_Some_Int256_ADTTyp_Constr_130", %"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Option_None_Int256_ADTTyp_Constr_133"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_135" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_100"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_136" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_117" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_119"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_119"*], [2 x %"$TyDescrTy_ADTTyp_Constr_119"*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_134", i32 0, i32 0), %"$TyDescrTy_ADTTyp_118"* @"$TyDescr_Option_ADTTyp_127" }
@"$TyDescr_Option_Some_Int64_Constr_m_args_137" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_92"]
@"$TyDescr_ADT_Some_138" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int64_ADTTyp_Constr_139" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_138", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int64_Constr_m_args_137", i32 0, i32 0) }
@"$TyDescr_Option_None_Int64_Constr_m_args_140" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_141" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int64_ADTTyp_Constr_142" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_141", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int64_Constr_m_args_140", i32 0, i32 0) }
@"$TyDescr_Option_Int64_ADTTyp_Specl_m_constrs_143" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_119"*] [%"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Option_Some_Int64_ADTTyp_Constr_139", %"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Option_None_Int64_ADTTyp_Constr_142"]
@"$TyDescr_Option_Int64_ADTTyp_Specl_m_TArgs_144" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_92"]
@"$TyDescr_Option_Int64_ADTTyp_Specl_145" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_117" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int64_ADTTyp_Specl_m_TArgs_144", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_119"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_119"*], [2 x %"$TyDescrTy_ADTTyp_Constr_119"*]* @"$TyDescr_Option_Int64_ADTTyp_Specl_m_constrs_143", i32 0, i32 0), %"$TyDescrTy_ADTTyp_118"* @"$TyDescr_Option_ADTTyp_127" }
@"$TyDescr_Option_Some_Int32_Constr_m_args_146" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@"$TyDescr_ADT_Some_147" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_148" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_147", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_146", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_149" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_150" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_151" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_150", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_149", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_152" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_119"*] [%"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_148", %"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_151"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_153" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_154" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_117" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_153", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_119"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_119"*], [2 x %"$TyDescrTy_ADTTyp_Constr_119"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_152", i32 0, i32 0), %"$TyDescrTy_ADTTyp_118"* @"$TyDescr_Option_ADTTyp_127" }
@"$TyDescr_Option_ADTTyp_m_specls_155" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_117"*] [%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Option_Int256_ADTTyp_Specl_136", %"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Option_Int64_ADTTyp_Specl_145", %"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Option_Int32_ADTTyp_Specl_154"]
@"$TyDescr_ADT_Option_156" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_157" = unnamed_addr constant %"$TyDescrTy_ADTTyp_118" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_168", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_117"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_117"*], [1 x %"$TyDescrTy_ADTTyp_Specl_117"*]* @"$TyDescr_Bool_ADTTyp_m_specls_167", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_158" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_159" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_160" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_159", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_158", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_161" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_162" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_163" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_119" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_162", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_161", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_164" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_119"*] [%"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Bool_True_ADTTyp_Constr_160", %"$TyDescrTy_ADTTyp_Constr_119"* @"$TyDescr_Bool_False_ADTTyp_Constr_163"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_165" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_166" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_117" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_165", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_119"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_119"*], [2 x %"$TyDescrTy_ADTTyp_Constr_119"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_164", i32 0, i32 0), %"$TyDescrTy_ADTTyp_118"* @"$TyDescr_Bool_ADTTyp_157" }
@"$TyDescr_Bool_ADTTyp_m_specls_167" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_117"*] [%"$TyDescrTy_ADTTyp_Specl_117"* @"$TyDescr_Bool_ADTTyp_Specl_166"]
@"$TyDescr_ADT_Bool_168" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_474" = unnamed_addr constant [4 x i8] c"1844"
@"$stringlit_910" = unnamed_addr constant [19 x i8] c"9223372036854775808"
@"$stringlit_1158" = unnamed_addr constant [20 x i8] c"-9223372036854775808"
@"$stringlit_1350" = unnamed_addr constant [19 x i8] c"9223372036854775807"
@"$stringlit_1545" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1643" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_120", %_TyDescrTy_Typ* @"$TyDescr_Event_110", %_TyDescrTy_Typ* @"$TyDescr_Int64_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_123", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int64_121", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", %_TyDescrTy_Typ* @"$TyDescr_Bnum_106", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_122", %_TyDescrTy_Typ* @"$TyDescr_Exception_112", %_TyDescrTy_Typ* @"$TyDescr_String_104", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", %_TyDescrTy_Typ* @"$TyDescr_Bystr_116", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_114", %_TyDescrTy_Typ* @"$TyDescr_Message_108", %_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_1703"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1704"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_169"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$$fundef_83_env_b_182" = getelementptr inbounds %"$$fundef_83_env_169", %"$$fundef_83_env_169"* %0, i32 0, i32 0
  %"$b_envload_183" = load %TName_Bool*, %TName_Bool** %"$$fundef_83_env_b_182", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_183", %TName_Bool** %b, align 8
  %"$retval_84" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_84", metadata !9, metadata !DIExpression()), !dbg !12
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 2, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 2
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$b_190" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_191" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_190", i32 0, i32 0
  %"$b_tag_192" = load i8, i8* %"$b_tag_191", align 1
  switch i8 %"$b_tag_192", label %"$empty_default_193" [
    i8 1, label %"$False_194"
    i8 0, label %"$True_204"
  ], !dbg !12

"$False_194":                                     ; preds = %"$have_gas_187"
  %"$b_195" = bitcast %TName_Bool* %"$b_190" to %CName_False*
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$False_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$False_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$adtval_201_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_201_salloc" = call i8* @_salloc(i8* %"$adtval_201_load", i64 1)
  %"$adtval_201" = bitcast i8* %"$adtval_201_salloc" to %CName_False*
  %"$adtgep_202" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_201", i32 0, i32 0
  store i8 1, i8* %"$adtgep_202", align 1
  %"$adtptr_203" = bitcast %CName_False* %"$adtval_201" to %TName_Bool*
  store %TName_Bool* %"$adtptr_203", %TName_Bool** %"$retval_84", align 8, !dbg !13
  br label %"$matchsucc_189"

"$True_204":                                      ; preds = %"$have_gas_187"
  %"$b_205" = bitcast %TName_Bool* %"$b_190" to %CName_True*
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$True_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$True_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_84", align 8, !dbg !16
  br label %"$matchsucc_189"

"$empty_default_193":                             ; preds = %"$have_gas_187"
  br label %"$matchsucc_189"

"$matchsucc_189":                                 ; preds = %"$have_gas_209", %"$have_gas_199", %"$empty_default_193"
  %"$$retval_84_211" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_211"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_170"* %0, %TName_Bool* %1) !dbg !18 {
entry:
  %"$retval_82" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %entry
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$$fundef_83_envp_176_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_176_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_176_load", i64 8)
  %"$$fundef_83_envp_176" = bitcast i8* %"$$fundef_83_envp_176_salloc" to %"$$fundef_83_env_169"*
  %"$$fundef_83_env_voidp_178" = bitcast %"$$fundef_83_env_169"* %"$$fundef_83_envp_176" to i8*
  %"$$fundef_83_cloval_179" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_83_env_169"*, %TName_Bool*)* @"$fundef_83" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_178", 1
  %"$$fundef_83_env_b_180" = getelementptr inbounds %"$$fundef_83_env_169", %"$$fundef_83_env_169"* %"$$fundef_83_envp_176", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_83_env_b_180", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_83_cloval_179", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8, !dbg !19
  %"$$retval_82_181" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_82_181"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 5, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %entry
  %"$consume_216" = sub i64 %"$gasrem_212", 5
  store i64 %"$consume_216", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !22
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 7, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 7
  store i64 %"$consume_221", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !22
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_81_env_170"*, %TName_Bool*)* @"$fundef_81" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !23
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 196, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_225"
  %"$consume_234" = sub i64 %"$gasrem_230", 196
  store i64 %"$consume_234", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !22
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 20, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 20
  store i64 %"$consume_239", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !22
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 12, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 12
  store i64 %"$consume_244", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !22
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 2, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 2
  store i64 %"$consume_249", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !22
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !24 {
entry:
  %"$expr_85" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_85", metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %entry
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %false, metadata !27, metadata !DIExpression()), !dbg !28
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$adtval_260_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_260_salloc" = call i8* @_salloc(i8* %"$adtval_260_load", i64 1)
  %"$adtval_260" = bitcast i8* %"$adtval_260_salloc" to %CName_False*
  %"$adtgep_261" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_260", i32 0, i32 0
  store i8 1, i8* %"$adtgep_261", align 1
  %"$adtptr_262" = bitcast %CName_False* %"$adtval_260" to %TName_Bool*
  store %TName_Bool* %"$adtptr_262", %TName_Bool** %false, align 8, !dbg !26
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_258"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_266"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$adtval_273_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_273_salloc" = call i8* @_salloc(i8* %"$adtval_273_load", i64 1)
  %"$adtval_273" = bitcast i8* %"$adtval_273_salloc" to %CName_True*
  %"$adtgep_274" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_273", i32 0, i32 0
  store i8 0, i8* %"$adtgep_274", align 1
  %"$adtptr_275" = bitcast %CName_True* %"$adtval_273" to %TName_Bool*
  store %TName_Bool* %"$adtptr_275", %TName_Bool** %test, align 8, !dbg !31
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_271"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input, metadata !32, metadata !DIExpression()), !dbg !34
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4, !dbg !35
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %resopt, metadata !36, metadata !DIExpression()), !dbg !39
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
  %"$to_int32_input_297" = alloca %Uint32, align 8
  %"$input_298" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_298", %Uint32* %"$to_int32_input_297", align 4
  %"$$to_int32_input_297_299" = bitcast %Uint32* %"$to_int32_input_297" to i8*
  %"$to_int32_call_300" = call i8* @_to_int32(i8* %"$execptr_load_296", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", i8* %"$$to_int32_input_297_299"), !dbg !40
  %"$to_int32_301" = bitcast i8* %"$to_int32_call_300" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_301", %TName_Option_Int32** %resopt, align 8, !dbg !40
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_294"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !41, metadata !DIExpression()), !dbg !42
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 2, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 2
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$resopt_313" = load %TName_Option_Int32*, %TName_Option_Int32** %resopt, align 8
  %"$resopt_tag_314" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$resopt_313", i32 0, i32 0
  %"$resopt_tag_315" = load i8, i8* %"$resopt_tag_314", align 1
  switch i8 %"$resopt_tag_315", label %"$empty_default_316" [
    i8 0, label %"$Some_317"
    i8 1, label %"$None_362"
  ], !dbg !43

"$Some_317":                                      ; preds = %"$have_gas_310"
  %"$resopt_318" = bitcast %TName_Option_Int32* %"$resopt_313" to %CName_Some_Int32*
  %"$res_gep_319" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$resopt_318", i32 0, i32 1
  %"$res_load_320" = load %Int32, %Int32* %"$res_gep_319", align 4
  %res = alloca %Int32, align 8
  store %Int32 %"$res_load_320", %Int32* %res, align 4
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$Some_317"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$Some_317"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %input_ = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_, metadata !44, metadata !DIExpression()), !dbg !48
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_, align 4, !dbg !49
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !50, metadata !DIExpression()), !dbg !51
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 4, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 4
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %"$execptr_load_341" = load i8*, i8** @_execptr, align 8
  %"$res_342" = load %Int32, %Int32* %res, align 4
  %"$input__343" = load %Int32, %Int32* %input_, align 4
  %"$eq_call_344" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_341", %Int32 %"$res_342", %Int32 %"$input__343"), !dbg !52
  store %TName_Bool* %"$eq_call_344", %TName_Bool** %test_, align 8, !dbg !52
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_339"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_351" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_352" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_351", 0
  %"$BoolUtils.andb_envptr_353" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_351", 1
  %"$test_354" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_355" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_352"(i8* %"$BoolUtils.andb_envptr_353", %TName_Bool* %"$test_354"), !dbg !53
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_355", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8, !dbg !53
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_56", metadata !54, metadata !DIExpression()), !dbg !53
  %"$$BoolUtils.andb_55_356" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_357" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_356", 0
  %"$$BoolUtils.andb_55_envptr_358" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_356", 1
  %"$test__359" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_55_call_360" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_357"(i8* %"$$BoolUtils.andb_55_envptr_358", %TName_Bool* %"$test__359"), !dbg !53
  store %TName_Bool* %"$$BoolUtils.andb_55_call_360", %TName_Bool** %"$BoolUtils.andb_56", align 8, !dbg !53
  %"$$BoolUtils.andb_56_361" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_361", %TName_Bool** %"$test_6", align 8, !dbg !53
  br label %"$matchsucc_312"

"$None_362":                                      ; preds = %"$have_gas_310"
  %"$resopt_363" = bitcast %TName_Option_Int32* %"$resopt_313" to %CName_None_Int32*
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$None_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$None_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$false_369" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_369", %TName_Bool** %"$test_6", align 8, !dbg !55
  br label %"$matchsucc_312"

"$empty_default_316":                             ; preds = %"$have_gas_310"
  br label %"$matchsucc_312"

"$matchsucc_312":                                 ; preds = %"$have_gas_367", %"$have_gas_349", %"$empty_default_316"
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$matchsucc_312"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$matchsucc_312"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$input_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$input_7", metadata !57, metadata !DIExpression()), !dbg !58
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$input_7", align 4, !dbg !59
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_378"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_8", metadata !60, metadata !DIExpression()), !dbg !61
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 4, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 4
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$execptr_load_390" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_7_391" = alloca %Int32, align 8
  %"$$input_7_392" = load %Int32, %Int32* %"$input_7", align 4
  store %Int32 %"$$input_7_392", %Int32* %"$to_int32_$input_7_391", align 4
  %"$$to_int32_$input_7_391_393" = bitcast %Int32* %"$to_int32_$input_7_391" to i8*
  %"$to_int32_call_394" = call i8* @_to_int32(i8* %"$execptr_load_390", %_TyDescrTy_Typ* @"$TyDescr_Int32_88", i8* %"$$to_int32_$input_7_391_393"), !dbg !62
  %"$to_int32_395" = bitcast i8* %"$to_int32_call_394" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_395", %TName_Option_Int32** %"$resopt_8", align 8, !dbg !62
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_388"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_9", metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 2, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 2
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$$resopt_8_407" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_8", align 8
  %"$$resopt_8_tag_408" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_8_407", i32 0, i32 0
  %"$$resopt_8_tag_409" = load i8, i8* %"$$resopt_8_tag_408", align 1
  switch i8 %"$$resopt_8_tag_409", label %"$empty_default_410" [
    i8 0, label %"$Some_411"
    i8 1, label %"$None_456"
  ], !dbg !65

"$Some_411":                                      ; preds = %"$have_gas_404"
  %"$$resopt_8_412" = bitcast %TName_Option_Int32* %"$$resopt_8_407" to %CName_Some_Int32*
  %"$res_gep_413" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_8_412", i32 0, i32 1
  %"$res_load_414" = load %Int32, %Int32* %"$res_gep_413", align 4
  %res1 = alloca %Int32, align 8
  store %Int32 %"$res_load_414", %Int32* %res1, align 4
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$Some_411"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$Some_411"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %input_2 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_2, metadata !66, metadata !DIExpression()), !dbg !69
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_2, align 4, !dbg !70
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_3, metadata !71, metadata !DIExpression()), !dbg !72
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 4, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 4
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$execptr_load_435" = load i8*, i8** @_execptr, align 8
  %"$res_436" = load %Int32, %Int32* %res1, align 4
  %"$input__437" = load %Int32, %Int32* %input_2, align 4
  %"$eq_call_438" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_435", %Int32 %"$res_436", %Int32 %"$input__437"), !dbg !73
  store %TName_Bool* %"$eq_call_438", %TName_Bool** %test_3, align 8, !dbg !73
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_433"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_445" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_446" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_445", 0
  %"$BoolUtils.andb_envptr_447" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_445", 1
  %"$$test_6_448" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_449" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_446"(i8* %"$BoolUtils.andb_envptr_447", %TName_Bool* %"$$test_6_448"), !dbg !74
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_449", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8, !dbg !74
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_58", metadata !75, metadata !DIExpression()), !dbg !74
  %"$$BoolUtils.andb_57_450" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_451" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_450", 0
  %"$$BoolUtils.andb_57_envptr_452" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_450", 1
  %"$test__453" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_57_call_454" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_451"(i8* %"$$BoolUtils.andb_57_envptr_452", %TName_Bool* %"$test__453"), !dbg !74
  store %TName_Bool* %"$$BoolUtils.andb_57_call_454", %TName_Bool** %"$BoolUtils.andb_58", align 8, !dbg !74
  %"$$BoolUtils.andb_58_455" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_455", %TName_Bool** %"$test_9", align 8, !dbg !74
  br label %"$matchsucc_406"

"$None_456":                                      ; preds = %"$have_gas_404"
  %"$$resopt_8_457" = bitcast %TName_Option_Int32* %"$$resopt_8_407" to %CName_None_Int32*
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$None_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$None_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$false_463" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_463", %TName_Bool** %"$test_9", align 8, !dbg !76
  br label %"$matchsucc_406"

"$empty_default_410":                             ; preds = %"$have_gas_404"
  br label %"$matchsucc_406"

"$matchsucc_406":                                 ; preds = %"$have_gas_461", %"$have_gas_443", %"$empty_default_410"
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$matchsucc_406"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$matchsucc_406"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$input_10" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_10", metadata !78, metadata !DIExpression()), !dbg !80
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_474", i32 0, i32 0), i32 4 }, %String* %"$input_10", align 8, !dbg !81
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_472"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_11", metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 4, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 4
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$execptr_load_485" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_10_486" = alloca %String, align 8
  %"$$input_10_487" = load %String, %String* %"$input_10", align 8
  store %String %"$$input_10_487", %String* %"$to_int32_$input_10_486", align 8
  %"$$to_int32_$input_10_486_488" = bitcast %String* %"$to_int32_$input_10_486" to i8*
  %"$to_int32_call_489" = call i8* @_to_int32(i8* %"$execptr_load_485", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int32_$input_10_486_488"), !dbg !84
  %"$to_int32_490" = bitcast i8* %"$to_int32_call_489" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_490", %TName_Option_Int32** %"$resopt_11", align 8, !dbg !84
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_483"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 2, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_494"
  %"$consume_500" = sub i64 %"$gasrem_496", 2
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$$resopt_11_502" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_11", align 8
  %"$$resopt_11_tag_503" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_11_502", i32 0, i32 0
  %"$$resopt_11_tag_504" = load i8, i8* %"$$resopt_11_tag_503", align 1
  switch i8 %"$$resopt_11_tag_504", label %"$empty_default_505" [
    i8 0, label %"$Some_506"
    i8 1, label %"$None_551"
  ], !dbg !87

"$Some_506":                                      ; preds = %"$have_gas_499"
  %"$$resopt_11_507" = bitcast %TName_Option_Int32* %"$$resopt_11_502" to %CName_Some_Int32*
  %"$res_gep_508" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_11_507", i32 0, i32 1
  %"$res_load_509" = load %Int32, %Int32* %"$res_gep_508", align 4
  %res4 = alloca %Int32, align 8
  store %Int32 %"$res_load_509", %Int32* %res4, align 4
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$Some_506"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$Some_506"
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %input_5 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_5, metadata !88, metadata !DIExpression()), !dbg !91
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_5, align 4, !dbg !92
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_518"
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_6, metadata !93, metadata !DIExpression()), !dbg !94
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 4, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_523"
  %"$consume_529" = sub i64 %"$gasrem_525", 4
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$execptr_load_530" = load i8*, i8** @_execptr, align 8
  %"$res_531" = load %Int32, %Int32* %res4, align 4
  %"$input__532" = load %Int32, %Int32* %input_5, align 4
  %"$eq_call_533" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_530", %Int32 %"$res_531", %Int32 %"$input__532"), !dbg !95
  store %TName_Bool* %"$eq_call_533", %TName_Bool** %test_6, align 8, !dbg !95
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_528"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_540" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_541" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_540", 0
  %"$BoolUtils.andb_envptr_542" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_540", 1
  %"$$test_9_543" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  %"$BoolUtils.andb_call_544" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_541"(i8* %"$BoolUtils.andb_envptr_542", %TName_Bool* %"$$test_9_543"), !dbg !96
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_544", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8, !dbg !96
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_60", metadata !97, metadata !DIExpression()), !dbg !96
  %"$$BoolUtils.andb_59_545" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_546" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_545", 0
  %"$$BoolUtils.andb_59_envptr_547" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_545", 1
  %"$test__548" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_59_call_549" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_546"(i8* %"$$BoolUtils.andb_59_envptr_547", %TName_Bool* %"$test__548"), !dbg !96
  store %TName_Bool* %"$$BoolUtils.andb_59_call_549", %TName_Bool** %"$BoolUtils.andb_60", align 8, !dbg !96
  %"$$BoolUtils.andb_60_550" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_550", %TName_Bool** %"$test_12", align 8, !dbg !96
  br label %"$matchsucc_501"

"$None_551":                                      ; preds = %"$have_gas_499"
  %"$$resopt_11_552" = bitcast %TName_Option_Int32* %"$$resopt_11_502" to %CName_None_Int32*
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$None_551"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$None_551"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %"$false_558" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_558", %TName_Bool** %"$test_12", align 8, !dbg !98
  br label %"$matchsucc_501"

"$empty_default_505":                             ; preds = %"$have_gas_499"
  br label %"$matchsucc_501"

"$matchsucc_501":                                 ; preds = %"$have_gas_556", %"$have_gas_538", %"$empty_default_505"
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$matchsucc_501"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$matchsucc_501"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_13", metadata !100, metadata !DIExpression()), !dbg !102
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_13", align 8, !dbg !103
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_14", metadata !104, metadata !DIExpression()), !dbg !105
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 4, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 4
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$execptr_load_579" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_13_580" = alloca %Uint128, align 8
  %"$$input_13_581" = load %Uint128, %Uint128* %"$input_13", align 8
  store %Uint128 %"$$input_13_581", %Uint128* %"$to_int32_$input_13_580", align 8
  %"$$to_int32_$input_13_580_582" = bitcast %Uint128* %"$to_int32_$input_13_580" to i8*
  %"$to_int32_call_583" = call i8* @_to_int32(i8* %"$execptr_load_579", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", i8* %"$$to_int32_$input_13_580_582"), !dbg !106
  %"$to_int32_584" = bitcast i8* %"$to_int32_call_583" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_584", %TName_Option_Int32** %"$resopt_14", align 8, !dbg !106
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_577"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_15", metadata !107, metadata !DIExpression()), !dbg !108
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 2, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 2
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %"$$resopt_14_596" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_14", align 8
  %"$$resopt_14_tag_597" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_14_596", i32 0, i32 0
  %"$$resopt_14_tag_598" = load i8, i8* %"$$resopt_14_tag_597", align 1
  switch i8 %"$$resopt_14_tag_598", label %"$empty_default_599" [
    i8 0, label %"$Some_600"
    i8 1, label %"$None_645"
  ], !dbg !109

"$Some_600":                                      ; preds = %"$have_gas_593"
  %"$$resopt_14_601" = bitcast %TName_Option_Int32* %"$$resopt_14_596" to %CName_Some_Int32*
  %"$res_gep_602" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_14_601", i32 0, i32 1
  %"$res_load_603" = load %Int32, %Int32* %"$res_gep_602", align 4
  %res7 = alloca %Int32, align 8
  store %Int32 %"$res_load_603", %Int32* %res7, align 4
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$Some_600"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$Some_600"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %input_8 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_8, metadata !110, metadata !DIExpression()), !dbg !113
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 1, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %"$have_gas_607"
  %"$consume_613" = sub i64 %"$gasrem_609", 1
  store i64 %"$consume_613", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_8, align 4, !dbg !114
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %"$have_gas_612"
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %"$have_gas_612"
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_9, metadata !115, metadata !DIExpression()), !dbg !116
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 4, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_617"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_617"
  %"$consume_623" = sub i64 %"$gasrem_619", 4
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$execptr_load_624" = load i8*, i8** @_execptr, align 8
  %"$res_625" = load %Int32, %Int32* %res7, align 4
  %"$input__626" = load %Int32, %Int32* %input_8, align 4
  %"$eq_call_627" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_624", %Int32 %"$res_625", %Int32 %"$input__626"), !dbg !117
  store %TName_Bool* %"$eq_call_627", %TName_Bool** %test_9, align 8, !dbg !117
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_622"
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_634" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_635" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_634", 0
  %"$BoolUtils.andb_envptr_636" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_634", 1
  %"$$test_12_637" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_638" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_635"(i8* %"$BoolUtils.andb_envptr_636", %TName_Bool* %"$$test_12_637"), !dbg !118
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_638", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !118
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_62", metadata !119, metadata !DIExpression()), !dbg !118
  %"$$BoolUtils.andb_61_639" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_640" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_639", 0
  %"$$BoolUtils.andb_61_envptr_641" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_639", 1
  %"$test__642" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_61_call_643" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_640"(i8* %"$$BoolUtils.andb_61_envptr_641", %TName_Bool* %"$test__642"), !dbg !118
  store %TName_Bool* %"$$BoolUtils.andb_61_call_643", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !118
  %"$$BoolUtils.andb_62_644" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_644", %TName_Bool** %"$test_15", align 8, !dbg !118
  br label %"$matchsucc_595"

"$None_645":                                      ; preds = %"$have_gas_593"
  %"$$resopt_14_646" = bitcast %TName_Option_Int32* %"$$resopt_14_596" to %CName_None_Int32*
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$None_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$None_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$false_652" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_652", %TName_Bool** %"$test_15", align 8, !dbg !120
  br label %"$matchsucc_595"

"$empty_default_599":                             ; preds = %"$have_gas_593"
  br label %"$matchsucc_595"

"$matchsucc_595":                                 ; preds = %"$have_gas_650", %"$have_gas_632", %"$empty_default_599"
  %"$gasrem_653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_654" = icmp ugt i64 1, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %"$matchsucc_595"
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %"$matchsucc_595"
  %"$consume_657" = sub i64 %"$gasrem_653", 1
  store i64 %"$consume_657", i64* @_gasrem, align 8
  %"$input_16" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$input_16", metadata !122, metadata !DIExpression()), !dbg !124
  %"$gasrem_658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_659" = icmp ugt i64 1, %"$gasrem_658"
  br i1 %"$gascmp_659", label %"$out_of_gas_660", label %"$have_gas_661"

"$out_of_gas_660":                                ; preds = %"$have_gas_656"
  call void @_out_of_gas()
  br label %"$have_gas_661"

"$have_gas_661":                                  ; preds = %"$out_of_gas_660", %"$have_gas_656"
  %"$consume_662" = sub i64 %"$gasrem_658", 1
  store i64 %"$consume_662", i64* @_gasrem, align 8
  store %Int128 { i128 1844 }, %Int128* %"$input_16", align 8, !dbg !125
  %"$gasrem_663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_664" = icmp ugt i64 1, %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %"$have_gas_661"
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %"$have_gas_661"
  %"$consume_667" = sub i64 %"$gasrem_663", 1
  store i64 %"$consume_667", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_17", metadata !126, metadata !DIExpression()), !dbg !127
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 4, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_666"
  %"$consume_672" = sub i64 %"$gasrem_668", 4
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$execptr_load_673" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_16_674" = alloca %Int128, align 8
  %"$$input_16_675" = load %Int128, %Int128* %"$input_16", align 8
  store %Int128 %"$$input_16_675", %Int128* %"$to_int32_$input_16_674", align 8
  %"$$to_int32_$input_16_674_676" = bitcast %Int128* %"$to_int32_$input_16_674" to i8*
  %"$to_int32_call_677" = call i8* @_to_int32(i8* %"$execptr_load_673", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", i8* %"$$to_int32_$input_16_674_676"), !dbg !128
  %"$to_int32_678" = bitcast i8* %"$to_int32_call_677" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_678", %TName_Option_Int32** %"$resopt_17", align 8, !dbg !128
  %"$gasrem_679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_680" = icmp ugt i64 1, %"$gasrem_679"
  br i1 %"$gascmp_680", label %"$out_of_gas_681", label %"$have_gas_682"

"$out_of_gas_681":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_682"

"$have_gas_682":                                  ; preds = %"$out_of_gas_681", %"$have_gas_671"
  %"$consume_683" = sub i64 %"$gasrem_679", 1
  store i64 %"$consume_683", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !129, metadata !DIExpression()), !dbg !130
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 2, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_682"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_682"
  %"$consume_688" = sub i64 %"$gasrem_684", 2
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %"$$resopt_17_690" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_17", align 8
  %"$$resopt_17_tag_691" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_17_690", i32 0, i32 0
  %"$$resopt_17_tag_692" = load i8, i8* %"$$resopt_17_tag_691", align 1
  switch i8 %"$$resopt_17_tag_692", label %"$empty_default_693" [
    i8 0, label %"$Some_694"
    i8 1, label %"$None_739"
  ], !dbg !131

"$Some_694":                                      ; preds = %"$have_gas_687"
  %"$$resopt_17_695" = bitcast %TName_Option_Int32* %"$$resopt_17_690" to %CName_Some_Int32*
  %"$res_gep_696" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_17_695", i32 0, i32 1
  %"$res_load_697" = load %Int32, %Int32* %"$res_gep_696", align 4
  %res10 = alloca %Int32, align 8
  store %Int32 %"$res_load_697", %Int32* %res10, align 4
  %"$gasrem_698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_699" = icmp ugt i64 1, %"$gasrem_698"
  br i1 %"$gascmp_699", label %"$out_of_gas_700", label %"$have_gas_701"

"$out_of_gas_700":                                ; preds = %"$Some_694"
  call void @_out_of_gas()
  br label %"$have_gas_701"

"$have_gas_701":                                  ; preds = %"$out_of_gas_700", %"$Some_694"
  %"$consume_702" = sub i64 %"$gasrem_698", 1
  store i64 %"$consume_702", i64* @_gasrem, align 8
  %input_11 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_11, metadata !132, metadata !DIExpression()), !dbg !135
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %"$have_gas_701"
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %"$have_gas_701"
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_11, align 4, !dbg !136
  %"$gasrem_708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_709" = icmp ugt i64 1, %"$gasrem_708"
  br i1 %"$gascmp_709", label %"$out_of_gas_710", label %"$have_gas_711"

"$out_of_gas_710":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_711"

"$have_gas_711":                                  ; preds = %"$out_of_gas_710", %"$have_gas_706"
  %"$consume_712" = sub i64 %"$gasrem_708", 1
  store i64 %"$consume_712", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_12, metadata !137, metadata !DIExpression()), !dbg !138
  %"$gasrem_713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_714" = icmp ugt i64 4, %"$gasrem_713"
  br i1 %"$gascmp_714", label %"$out_of_gas_715", label %"$have_gas_716"

"$out_of_gas_715":                                ; preds = %"$have_gas_711"
  call void @_out_of_gas()
  br label %"$have_gas_716"

"$have_gas_716":                                  ; preds = %"$out_of_gas_715", %"$have_gas_711"
  %"$consume_717" = sub i64 %"$gasrem_713", 4
  store i64 %"$consume_717", i64* @_gasrem, align 8
  %"$execptr_load_718" = load i8*, i8** @_execptr, align 8
  %"$res_719" = load %Int32, %Int32* %res10, align 4
  %"$input__720" = load %Int32, %Int32* %input_11, align 4
  %"$eq_call_721" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_718", %Int32 %"$res_719", %Int32 %"$input__720"), !dbg !139
  store %TName_Bool* %"$eq_call_721", %TName_Bool** %test_12, align 8, !dbg !139
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_716"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_716"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_728" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_729" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_728", 0
  %"$BoolUtils.andb_envptr_730" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_728", 1
  %"$$test_15_731" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  %"$BoolUtils.andb_call_732" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_729"(i8* %"$BoolUtils.andb_envptr_730", %TName_Bool* %"$$test_15_731"), !dbg !140
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_732", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !140
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_64", metadata !141, metadata !DIExpression()), !dbg !140
  %"$$BoolUtils.andb_63_733" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_734" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_733", 0
  %"$$BoolUtils.andb_63_envptr_735" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_733", 1
  %"$test__736" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_63_call_737" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_734"(i8* %"$$BoolUtils.andb_63_envptr_735", %TName_Bool* %"$test__736"), !dbg !140
  store %TName_Bool* %"$$BoolUtils.andb_63_call_737", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !140
  %"$$BoolUtils.andb_64_738" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_738", %TName_Bool** %"$test_18", align 8, !dbg !140
  br label %"$matchsucc_689"

"$None_739":                                      ; preds = %"$have_gas_687"
  %"$$resopt_17_740" = bitcast %TName_Option_Int32* %"$$resopt_17_690" to %CName_None_Int32*
  %"$gasrem_741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_742" = icmp ugt i64 1, %"$gasrem_741"
  br i1 %"$gascmp_742", label %"$out_of_gas_743", label %"$have_gas_744"

"$out_of_gas_743":                                ; preds = %"$None_739"
  call void @_out_of_gas()
  br label %"$have_gas_744"

"$have_gas_744":                                  ; preds = %"$out_of_gas_743", %"$None_739"
  %"$consume_745" = sub i64 %"$gasrem_741", 1
  store i64 %"$consume_745", i64* @_gasrem, align 8
  %"$false_746" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_746", %TName_Bool** %"$test_18", align 8, !dbg !142
  br label %"$matchsucc_689"

"$empty_default_693":                             ; preds = %"$have_gas_687"
  br label %"$matchsucc_689"

"$matchsucc_689":                                 ; preds = %"$have_gas_744", %"$have_gas_726", %"$empty_default_693"
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$matchsucc_689"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$matchsucc_689"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  %"$input_19" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$input_19", metadata !144, metadata !DIExpression()), !dbg !146
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_750"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$input_19", align 8, !dbg !147
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_755"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_20", metadata !148, metadata !DIExpression()), !dbg !149
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 4, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 4
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$execptr_load_767" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_19_768" = alloca %Int256, align 8
  %"$$input_19_769" = load %Int256, %Int256* %"$input_19", align 8
  store %Int256 %"$$input_19_769", %Int256* %"$to_int32_$input_19_768", align 8
  %"$$to_int32_$input_19_768_770" = bitcast %Int256* %"$to_int32_$input_19_768" to i8*
  %"$to_int32_call_771" = call i8* @_to_int32(i8* %"$execptr_load_767", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", i8* %"$$to_int32_$input_19_768_770"), !dbg !150
  %"$to_int32_772" = bitcast i8* %"$to_int32_call_771" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_772", %TName_Option_Int32** %"$resopt_20", align 8, !dbg !150
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_765"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_21", metadata !151, metadata !DIExpression()), !dbg !152
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 2, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_776"
  %"$consume_782" = sub i64 %"$gasrem_778", 2
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$$resopt_20_784" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_20", align 8
  %"$$resopt_20_tag_785" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_20_784", i32 0, i32 0
  %"$$resopt_20_tag_786" = load i8, i8* %"$$resopt_20_tag_785", align 1
  switch i8 %"$$resopt_20_tag_786", label %"$empty_default_787" [
    i8 0, label %"$Some_788"
    i8 1, label %"$None_833"
  ], !dbg !153

"$Some_788":                                      ; preds = %"$have_gas_781"
  %"$$resopt_20_789" = bitcast %TName_Option_Int32* %"$$resopt_20_784" to %CName_Some_Int32*
  %"$res_gep_790" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_20_789", i32 0, i32 1
  %"$res_load_791" = load %Int32, %Int32* %"$res_gep_790", align 4
  %res13 = alloca %Int32, align 8
  store %Int32 %"$res_load_791", %Int32* %res13, align 4
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$Some_788"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$Some_788"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %input_14 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_14, metadata !154, metadata !DIExpression()), !dbg !157
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_14, align 4, !dbg !158
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_800"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_15, metadata !159, metadata !DIExpression()), !dbg !160
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 4, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 4
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %"$execptr_load_812" = load i8*, i8** @_execptr, align 8
  %"$res_813" = load %Int32, %Int32* %res13, align 4
  %"$input__814" = load %Int32, %Int32* %input_14, align 4
  %"$eq_call_815" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_812", %Int32 %"$res_813", %Int32 %"$input__814"), !dbg !161
  store %TName_Bool* %"$eq_call_815", %TName_Bool** %test_15, align 8, !dbg !161
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %"$have_gas_810"
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_822" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_823" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_822", 0
  %"$BoolUtils.andb_envptr_824" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_822", 1
  %"$$test_18_825" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_826" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_823"(i8* %"$BoolUtils.andb_envptr_824", %TName_Bool* %"$$test_18_825"), !dbg !162
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_826", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !162
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_66", metadata !163, metadata !DIExpression()), !dbg !162
  %"$$BoolUtils.andb_65_827" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_828" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_827", 0
  %"$$BoolUtils.andb_65_envptr_829" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_827", 1
  %"$test__830" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_65_call_831" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_828"(i8* %"$$BoolUtils.andb_65_envptr_829", %TName_Bool* %"$test__830"), !dbg !162
  store %TName_Bool* %"$$BoolUtils.andb_65_call_831", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !162
  %"$$BoolUtils.andb_66_832" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_832", %TName_Bool** %"$test_21", align 8, !dbg !162
  br label %"$matchsucc_783"

"$None_833":                                      ; preds = %"$have_gas_781"
  %"$$resopt_20_834" = bitcast %TName_Option_Int32* %"$$resopt_20_784" to %CName_None_Int32*
  %"$gasrem_835" = load i64, i64* @_gasrem, align 8
  %"$gascmp_836" = icmp ugt i64 1, %"$gasrem_835"
  br i1 %"$gascmp_836", label %"$out_of_gas_837", label %"$have_gas_838"

"$out_of_gas_837":                                ; preds = %"$None_833"
  call void @_out_of_gas()
  br label %"$have_gas_838"

"$have_gas_838":                                  ; preds = %"$out_of_gas_837", %"$None_833"
  %"$consume_839" = sub i64 %"$gasrem_835", 1
  store i64 %"$consume_839", i64* @_gasrem, align 8
  %"$false_840" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_840", %TName_Bool** %"$test_21", align 8, !dbg !164
  br label %"$matchsucc_783"

"$empty_default_787":                             ; preds = %"$have_gas_781"
  br label %"$matchsucc_783"

"$matchsucc_783":                                 ; preds = %"$have_gas_838", %"$have_gas_820", %"$empty_default_787"
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 1, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %"$matchsucc_783"
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %"$matchsucc_783"
  %"$consume_845" = sub i64 %"$gasrem_841", 1
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_22", metadata !166, metadata !DIExpression()), !dbg !168
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_844"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_844"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  store %Uint64 { i64 -9223372036854775808 }, %Uint64* %"$input_22", align 8, !dbg !169
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %"$have_gas_849"
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_23", metadata !170, metadata !DIExpression()), !dbg !173
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 4, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_854"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_854"
  %"$consume_860" = sub i64 %"$gasrem_856", 4
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$execptr_load_861" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_22_862" = alloca %Uint64, align 8
  %"$$input_22_863" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_863", %Uint64* %"$to_int64_$input_22_862", align 8
  %"$$to_int64_$input_22_862_864" = bitcast %Uint64* %"$to_int64_$input_22_862" to i8*
  %"$to_int64_call_865" = call i8* @_to_int64(i8* %"$execptr_load_861", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int64_$input_22_862_864"), !dbg !174
  %"$to_int64_866" = bitcast i8* %"$to_int64_call_865" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_866", %TName_Option_Int64** %"$resopt_23", align 8, !dbg !174
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_859"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !175, metadata !DIExpression()), !dbg !176
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 2, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %"$have_gas_870"
  %"$consume_876" = sub i64 %"$gasrem_872", 2
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %"$$resopt_23_878" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_23", align 8
  %"$$resopt_23_tag_879" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_23_878", i32 0, i32 0
  %"$$resopt_23_tag_880" = load i8, i8* %"$$resopt_23_tag_879", align 1
  switch i8 %"$$resopt_23_tag_880", label %"$empty_default_881" [
    i8 0, label %"$Some_882"
    i8 1, label %"$None_892"
  ], !dbg !177

"$Some_882":                                      ; preds = %"$have_gas_875"
  %"$$resopt_23_883" = bitcast %TName_Option_Int64* %"$$resopt_23_878" to %CName_Some_Int64*
  %"$$$resopt_23_52_gep_884" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_23_883", i32 0, i32 1
  %"$$$resopt_23_52_load_885" = load %Int64, %Int64* %"$$$resopt_23_52_gep_884", align 8
  %"$$resopt_23_52" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_23_52_load_885", %Int64* %"$$resopt_23_52", align 8
  %"$gasrem_886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_887" = icmp ugt i64 1, %"$gasrem_886"
  br i1 %"$gascmp_887", label %"$out_of_gas_888", label %"$have_gas_889"

"$out_of_gas_888":                                ; preds = %"$Some_882"
  call void @_out_of_gas()
  br label %"$have_gas_889"

"$have_gas_889":                                  ; preds = %"$out_of_gas_888", %"$Some_882"
  %"$consume_890" = sub i64 %"$gasrem_886", 1
  store i64 %"$consume_890", i64* @_gasrem, align 8
  %"$false_891" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_891", %TName_Bool** %"$test_24", align 8, !dbg !178
  br label %"$matchsucc_877"

"$None_892":                                      ; preds = %"$have_gas_875"
  %"$$resopt_23_893" = bitcast %TName_Option_Int64* %"$$resopt_23_878" to %CName_None_Int64*
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$None_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$None_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$$test_21_899" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  store %TName_Bool* %"$$test_21_899", %TName_Bool** %"$test_24", align 8, !dbg !181
  br label %"$matchsucc_877"

"$empty_default_881":                             ; preds = %"$have_gas_875"
  br label %"$matchsucc_877"

"$matchsucc_877":                                 ; preds = %"$have_gas_897", %"$have_gas_889", %"$empty_default_881"
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$matchsucc_877"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$matchsucc_877"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  %"$input_25" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_25", metadata !183, metadata !DIExpression()), !dbg !184
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_903"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_910", i32 0, i32 0), i32 19 }, %String* %"$input_25", align 8, !dbg !185
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_908"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_908"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_26", metadata !186, metadata !DIExpression()), !dbg !187
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 4, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 4
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$execptr_load_921" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_25_922" = alloca %String, align 8
  %"$$input_25_923" = load %String, %String* %"$input_25", align 8
  store %String %"$$input_25_923", %String* %"$to_int64_$input_25_922", align 8
  %"$$to_int64_$input_25_922_924" = bitcast %String* %"$to_int64_$input_25_922" to i8*
  %"$to_int64_call_925" = call i8* @_to_int64(i8* %"$execptr_load_921", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_25_922_924"), !dbg !188
  %"$to_int64_926" = bitcast i8* %"$to_int64_call_925" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_926", %TName_Option_Int64** %"$resopt_26", align 8, !dbg !188
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_919"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_27", metadata !189, metadata !DIExpression()), !dbg !190
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 2, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 2
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$$resopt_26_938" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_26", align 8
  %"$$resopt_26_tag_939" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_26_938", i32 0, i32 0
  %"$$resopt_26_tag_940" = load i8, i8* %"$$resopt_26_tag_939", align 1
  switch i8 %"$$resopt_26_tag_940", label %"$empty_default_941" [
    i8 0, label %"$Some_942"
    i8 1, label %"$None_952"
  ], !dbg !191

"$Some_942":                                      ; preds = %"$have_gas_935"
  %"$$resopt_26_943" = bitcast %TName_Option_Int64* %"$$resopt_26_938" to %CName_Some_Int64*
  %"$$$resopt_26_53_gep_944" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_26_943", i32 0, i32 1
  %"$$$resopt_26_53_load_945" = load %Int64, %Int64* %"$$$resopt_26_53_gep_944", align 8
  %"$$resopt_26_53" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_26_53_load_945", %Int64* %"$$resopt_26_53", align 8
  %"$gasrem_946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_947" = icmp ugt i64 1, %"$gasrem_946"
  br i1 %"$gascmp_947", label %"$out_of_gas_948", label %"$have_gas_949"

"$out_of_gas_948":                                ; preds = %"$Some_942"
  call void @_out_of_gas()
  br label %"$have_gas_949"

"$have_gas_949":                                  ; preds = %"$out_of_gas_948", %"$Some_942"
  %"$consume_950" = sub i64 %"$gasrem_946", 1
  store i64 %"$consume_950", i64* @_gasrem, align 8
  %"$false_951" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_951", %TName_Bool** %"$test_27", align 8, !dbg !192
  br label %"$matchsucc_937"

"$None_952":                                      ; preds = %"$have_gas_935"
  %"$$resopt_26_953" = bitcast %TName_Option_Int64* %"$$resopt_26_938" to %CName_None_Int64*
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$None_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$None_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$$test_24_959" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  store %TName_Bool* %"$$test_24_959", %TName_Bool** %"$test_27", align 8, !dbg !195
  br label %"$matchsucc_937"

"$empty_default_941":                             ; preds = %"$have_gas_935"
  br label %"$matchsucc_937"

"$matchsucc_937":                                 ; preds = %"$have_gas_957", %"$have_gas_949", %"$empty_default_941"
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$matchsucc_937"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$matchsucc_937"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_28", metadata !197, metadata !DIExpression()), !dbg !198
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_28", align 8, !dbg !199
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_968"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_29", metadata !200, metadata !DIExpression()), !dbg !201
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 4, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_973"
  %"$consume_979" = sub i64 %"$gasrem_975", 4
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %"$execptr_load_980" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_28_981" = alloca %Uint64, align 8
  %"$$input_28_982" = load %Uint64, %Uint64* %"$input_28", align 8
  store %Uint64 %"$$input_28_982", %Uint64* %"$to_int64_$input_28_981", align 8
  %"$$to_int64_$input_28_981_983" = bitcast %Uint64* %"$to_int64_$input_28_981" to i8*
  %"$to_int64_call_984" = call i8* @_to_int64(i8* %"$execptr_load_980", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int64_$input_28_981_983"), !dbg !202
  %"$to_int64_985" = bitcast i8* %"$to_int64_call_984" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_985", %TName_Option_Int64** %"$resopt_29", align 8, !dbg !202
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 1, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_978"
  %"$consume_990" = sub i64 %"$gasrem_986", 1
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !203, metadata !DIExpression()), !dbg !204
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 2, %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_989"
  %"$consume_995" = sub i64 %"$gasrem_991", 2
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$$resopt_29_997" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_29", align 8
  %"$$resopt_29_tag_998" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_29_997", i32 0, i32 0
  %"$$resopt_29_tag_999" = load i8, i8* %"$$resopt_29_tag_998", align 1
  switch i8 %"$$resopt_29_tag_999", label %"$empty_default_1000" [
    i8 0, label %"$Some_1001"
    i8 1, label %"$None_1046"
  ], !dbg !205

"$Some_1001":                                     ; preds = %"$have_gas_994"
  %"$$resopt_29_1002" = bitcast %TName_Option_Int64* %"$$resopt_29_997" to %CName_Some_Int64*
  %"$res_gep_1003" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_29_1002", i32 0, i32 1
  %"$res_load_1004" = load %Int64, %Int64* %"$res_gep_1003", align 8
  %res16 = alloca %Int64, align 8
  store %Int64 %"$res_load_1004", %Int64* %res16, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$Some_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$Some_1001"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %input_17 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %input_17, metadata !206, metadata !DIExpression()), !dbg !210
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %input_17, align 8, !dbg !211
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_18, metadata !212, metadata !DIExpression()), !dbg !213
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 4, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 4
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$execptr_load_1025" = load i8*, i8** @_execptr, align 8
  %"$res_1026" = load %Int64, %Int64* %res16, align 8
  %"$input__1027" = load %Int64, %Int64* %input_17, align 8
  %"$eq_call_1028" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1025", %Int64 %"$res_1026", %Int64 %"$input__1027"), !dbg !214
  store %TName_Bool* %"$eq_call_1028", %TName_Bool** %test_18, align 8, !dbg !214
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 1, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1023"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 1
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1035" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1036" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1035", 0
  %"$BoolUtils.andb_envptr_1037" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1035", 1
  %"$$test_27_1038" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1039" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1036"(i8* %"$BoolUtils.andb_envptr_1037", %TName_Bool* %"$$test_27_1038"), !dbg !215
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1039", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !215
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_68", metadata !216, metadata !DIExpression()), !dbg !215
  %"$$BoolUtils.andb_67_1040" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_1041" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1040", 0
  %"$$BoolUtils.andb_67_envptr_1042" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1040", 1
  %"$test__1043" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_67_call_1044" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_1041"(i8* %"$$BoolUtils.andb_67_envptr_1042", %TName_Bool* %"$test__1043"), !dbg !215
  store %TName_Bool* %"$$BoolUtils.andb_67_call_1044", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !215
  %"$$BoolUtils.andb_68_1045" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_1045", %TName_Bool** %"$test_30", align 8, !dbg !215
  br label %"$matchsucc_996"

"$None_1046":                                     ; preds = %"$have_gas_994"
  %"$$resopt_29_1047" = bitcast %TName_Option_Int64* %"$$resopt_29_997" to %CName_None_Int64*
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$None_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$None_1046"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %"$false_1053" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1053", %TName_Bool** %"$test_30", align 8, !dbg !217
  br label %"$matchsucc_996"

"$empty_default_1000":                            ; preds = %"$have_gas_994"
  br label %"$matchsucc_996"

"$matchsucc_996":                                 ; preds = %"$have_gas_1051", %"$have_gas_1033", %"$empty_default_1000"
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$matchsucc_996"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$matchsucc_996"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$input_31" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$input_31", metadata !219, metadata !DIExpression()), !dbg !220
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775808 }, %Int128* %"$input_31", align 8, !dbg !221
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1062"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_32", metadata !222, metadata !DIExpression()), !dbg !223
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 4, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1067"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 4
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  %"$execptr_load_1074" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_31_1075" = alloca %Int128, align 8
  %"$$input_31_1076" = load %Int128, %Int128* %"$input_31", align 8
  store %Int128 %"$$input_31_1076", %Int128* %"$to_int64_$input_31_1075", align 8
  %"$$to_int64_$input_31_1075_1077" = bitcast %Int128* %"$to_int64_$input_31_1075" to i8*
  %"$to_int64_call_1078" = call i8* @_to_int64(i8* %"$execptr_load_1074", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", i8* %"$$to_int64_$input_31_1075_1077"), !dbg !224
  %"$to_int64_1079" = bitcast i8* %"$to_int64_call_1078" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1079", %TName_Option_Int64** %"$resopt_32", align 8, !dbg !224
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$have_gas_1072"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_33", metadata !225, metadata !DIExpression()), !dbg !226
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 2, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1083"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 2
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$$resopt_32_1091" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_32", align 8
  %"$$resopt_32_tag_1092" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_32_1091", i32 0, i32 0
  %"$$resopt_32_tag_1093" = load i8, i8* %"$$resopt_32_tag_1092", align 1
  switch i8 %"$$resopt_32_tag_1093", label %"$empty_default_1094" [
    i8 0, label %"$Some_1095"
    i8 1, label %"$None_1140"
  ], !dbg !227

"$Some_1095":                                     ; preds = %"$have_gas_1088"
  %"$$resopt_32_1096" = bitcast %TName_Option_Int64* %"$$resopt_32_1091" to %CName_Some_Int64*
  %"$res_gep_1097" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_32_1096", i32 0, i32 1
  %"$res_load_1098" = load %Int64, %Int64* %"$res_gep_1097", align 8
  %res19 = alloca %Int64, align 8
  store %Int64 %"$res_load_1098", %Int64* %res19, align 8
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$Some_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$Some_1095"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %input_20 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %input_20, metadata !228, metadata !DIExpression()), !dbg !231
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1102"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_20, align 8, !dbg !232
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1107"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_21, metadata !233, metadata !DIExpression()), !dbg !234
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 4, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1112"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 4
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$execptr_load_1119" = load i8*, i8** @_execptr, align 8
  %"$res_1120" = load %Int64, %Int64* %res19, align 8
  %"$input__1121" = load %Int64, %Int64* %input_20, align 8
  %"$eq_call_1122" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1119", %Int64 %"$res_1120", %Int64 %"$input__1121"), !dbg !235
  store %TName_Bool* %"$eq_call_1122", %TName_Bool** %test_21, align 8, !dbg !235
  %"$gasrem_1124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1125" = icmp ugt i64 1, %"$gasrem_1124"
  br i1 %"$gascmp_1125", label %"$out_of_gas_1126", label %"$have_gas_1127"

"$out_of_gas_1126":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1127"

"$have_gas_1127":                                 ; preds = %"$out_of_gas_1126", %"$have_gas_1117"
  %"$consume_1128" = sub i64 %"$gasrem_1124", 1
  store i64 %"$consume_1128", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1129" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1130" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1129", 0
  %"$BoolUtils.andb_envptr_1131" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1129", 1
  %"$$test_30_1132" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1133" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1130"(i8* %"$BoolUtils.andb_envptr_1131", %TName_Bool* %"$$test_30_1132"), !dbg !236
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1133", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !236
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_70", metadata !237, metadata !DIExpression()), !dbg !236
  %"$$BoolUtils.andb_69_1134" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_1135" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1134", 0
  %"$$BoolUtils.andb_69_envptr_1136" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1134", 1
  %"$test__1137" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_69_call_1138" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_1135"(i8* %"$$BoolUtils.andb_69_envptr_1136", %TName_Bool* %"$test__1137"), !dbg !236
  store %TName_Bool* %"$$BoolUtils.andb_69_call_1138", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !236
  %"$$BoolUtils.andb_70_1139" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_1139", %TName_Bool** %"$test_33", align 8, !dbg !236
  br label %"$matchsucc_1090"

"$None_1140":                                     ; preds = %"$have_gas_1088"
  %"$$resopt_32_1141" = bitcast %TName_Option_Int64* %"$$resopt_32_1091" to %CName_None_Int64*
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$None_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$None_1140"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %"$false_1147" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1147", %TName_Bool** %"$test_33", align 8, !dbg !238
  br label %"$matchsucc_1090"

"$empty_default_1094":                            ; preds = %"$have_gas_1088"
  br label %"$matchsucc_1090"

"$matchsucc_1090":                                ; preds = %"$have_gas_1145", %"$have_gas_1127", %"$empty_default_1094"
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$matchsucc_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$matchsucc_1090"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %"$input_34" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_34", metadata !240, metadata !DIExpression()), !dbg !241
  %"$gasrem_1153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1154" = icmp ugt i64 1, %"$gasrem_1153"
  br i1 %"$gascmp_1154", label %"$out_of_gas_1155", label %"$have_gas_1156"

"$out_of_gas_1155":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1156"

"$have_gas_1156":                                 ; preds = %"$out_of_gas_1155", %"$have_gas_1151"
  %"$consume_1157" = sub i64 %"$gasrem_1153", 1
  store i64 %"$consume_1157", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$stringlit_1158", i32 0, i32 0), i32 20 }, %String* %"$input_34", align 8, !dbg !242
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1156"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1156"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_35", metadata !243, metadata !DIExpression()), !dbg !244
  %"$gasrem_1164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1165" = icmp ugt i64 4, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1162"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 4
  store i64 %"$consume_1168", i64* @_gasrem, align 8
  %"$execptr_load_1169" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_34_1170" = alloca %String, align 8
  %"$$input_34_1171" = load %String, %String* %"$input_34", align 8
  store %String %"$$input_34_1171", %String* %"$to_int64_$input_34_1170", align 8
  %"$$to_int64_$input_34_1170_1172" = bitcast %String* %"$to_int64_$input_34_1170" to i8*
  %"$to_int64_call_1173" = call i8* @_to_int64(i8* %"$execptr_load_1169", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_34_1170_1172"), !dbg !245
  %"$to_int64_1174" = bitcast i8* %"$to_int64_call_1173" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1174", %TName_Option_Int64** %"$resopt_35", align 8, !dbg !245
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 1, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$have_gas_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$have_gas_1167"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 1
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !246, metadata !DIExpression()), !dbg !247
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 2, %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$have_gas_1178"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$have_gas_1178"
  %"$consume_1184" = sub i64 %"$gasrem_1180", 2
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  %"$$resopt_35_1186" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_35", align 8
  %"$$resopt_35_tag_1187" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_35_1186", i32 0, i32 0
  %"$$resopt_35_tag_1188" = load i8, i8* %"$$resopt_35_tag_1187", align 1
  switch i8 %"$$resopt_35_tag_1188", label %"$empty_default_1189" [
    i8 0, label %"$Some_1190"
    i8 1, label %"$None_1235"
  ], !dbg !248

"$Some_1190":                                     ; preds = %"$have_gas_1183"
  %"$$resopt_35_1191" = bitcast %TName_Option_Int64* %"$$resopt_35_1186" to %CName_Some_Int64*
  %"$res_gep_1192" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_35_1191", i32 0, i32 1
  %"$res_load_1193" = load %Int64, %Int64* %"$res_gep_1192", align 8
  %res22 = alloca %Int64, align 8
  store %Int64 %"$res_load_1193", %Int64* %res22, align 8
  %"$gasrem_1194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1195" = icmp ugt i64 1, %"$gasrem_1194"
  br i1 %"$gascmp_1195", label %"$out_of_gas_1196", label %"$have_gas_1197"

"$out_of_gas_1196":                               ; preds = %"$Some_1190"
  call void @_out_of_gas()
  br label %"$have_gas_1197"

"$have_gas_1197":                                 ; preds = %"$out_of_gas_1196", %"$Some_1190"
  %"$consume_1198" = sub i64 %"$gasrem_1194", 1
  store i64 %"$consume_1198", i64* @_gasrem, align 8
  %input_23 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %input_23, metadata !249, metadata !DIExpression()), !dbg !252
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$have_gas_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$have_gas_1197"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_23, align 8, !dbg !253
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1202"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_24, metadata !254, metadata !DIExpression()), !dbg !255
  %"$gasrem_1209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1210" = icmp ugt i64 4, %"$gasrem_1209"
  br i1 %"$gascmp_1210", label %"$out_of_gas_1211", label %"$have_gas_1212"

"$out_of_gas_1211":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1212"

"$have_gas_1212":                                 ; preds = %"$out_of_gas_1211", %"$have_gas_1207"
  %"$consume_1213" = sub i64 %"$gasrem_1209", 4
  store i64 %"$consume_1213", i64* @_gasrem, align 8
  %"$execptr_load_1214" = load i8*, i8** @_execptr, align 8
  %"$res_1215" = load %Int64, %Int64* %res22, align 8
  %"$input__1216" = load %Int64, %Int64* %input_23, align 8
  %"$eq_call_1217" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1214", %Int64 %"$res_1215", %Int64 %"$input__1216"), !dbg !256
  store %TName_Bool* %"$eq_call_1217", %TName_Bool** %test_24, align 8, !dbg !256
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1212"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1212"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1224" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1225" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1224", 0
  %"$BoolUtils.andb_envptr_1226" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1224", 1
  %"$$test_33_1227" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1228" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1225"(i8* %"$BoolUtils.andb_envptr_1226", %TName_Bool* %"$$test_33_1227"), !dbg !257
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1228", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !257
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_72", metadata !258, metadata !DIExpression()), !dbg !257
  %"$$BoolUtils.andb_71_1229" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_1230" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1229", 0
  %"$$BoolUtils.andb_71_envptr_1231" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1229", 1
  %"$test__1232" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_71_call_1233" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_1230"(i8* %"$$BoolUtils.andb_71_envptr_1231", %TName_Bool* %"$test__1232"), !dbg !257
  store %TName_Bool* %"$$BoolUtils.andb_71_call_1233", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !257
  %"$$BoolUtils.andb_72_1234" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_1234", %TName_Bool** %"$test_36", align 8, !dbg !257
  br label %"$matchsucc_1185"

"$None_1235":                                     ; preds = %"$have_gas_1183"
  %"$$resopt_35_1236" = bitcast %TName_Option_Int64* %"$$resopt_35_1186" to %CName_None_Int64*
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 1, %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$None_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$None_1235"
  %"$consume_1241" = sub i64 %"$gasrem_1237", 1
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  %"$false_1242" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1242", %TName_Bool** %"$test_36", align 8, !dbg !259
  br label %"$matchsucc_1185"

"$empty_default_1189":                            ; preds = %"$have_gas_1183"
  br label %"$matchsucc_1185"

"$matchsucc_1185":                                ; preds = %"$have_gas_1240", %"$have_gas_1222", %"$empty_default_1189"
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$matchsucc_1185"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$matchsucc_1185"
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_37", metadata !261, metadata !DIExpression()), !dbg !262
  %"$gasrem_1248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1249" = icmp ugt i64 1, %"$gasrem_1248"
  br i1 %"$gascmp_1249", label %"$out_of_gas_1250", label %"$have_gas_1251"

"$out_of_gas_1250":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1251"

"$have_gas_1251":                                 ; preds = %"$out_of_gas_1250", %"$have_gas_1246"
  %"$consume_1252" = sub i64 %"$gasrem_1248", 1
  store i64 %"$consume_1252", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_37", align 8, !dbg !263
  %"$gasrem_1253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1254" = icmp ugt i64 1, %"$gasrem_1253"
  br i1 %"$gascmp_1254", label %"$out_of_gas_1255", label %"$have_gas_1256"

"$out_of_gas_1255":                               ; preds = %"$have_gas_1251"
  call void @_out_of_gas()
  br label %"$have_gas_1256"

"$have_gas_1256":                                 ; preds = %"$out_of_gas_1255", %"$have_gas_1251"
  %"$consume_1257" = sub i64 %"$gasrem_1253", 1
  store i64 %"$consume_1257", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_38", metadata !264, metadata !DIExpression()), !dbg !267
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 16, %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %"$have_gas_1256"
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %"$have_gas_1256"
  %"$consume_1262" = sub i64 %"$gasrem_1258", 16
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$execptr_load_1263" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_37_1264" = alloca %Uint64, align 8
  %"$$input_37_1265" = load %Uint64, %Uint64* %"$input_37", align 8
  store %Uint64 %"$$input_37_1265", %Uint64* %"$to_int256_$input_37_1264", align 8
  %"$$to_int256_$input_37_1264_1266" = bitcast %Uint64* %"$to_int256_$input_37_1264" to i8*
  %"$to_int256_call_1267" = call i8* @_to_int256(i8* %"$execptr_load_1263", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int256_$input_37_1264_1266"), !dbg !268
  %"$to_int256_1268" = bitcast i8* %"$to_int256_call_1267" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1268", %TName_Option_Int256** %"$resopt_38", align 8, !dbg !268
  %"$gasrem_1269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1270" = icmp ugt i64 1, %"$gasrem_1269"
  br i1 %"$gascmp_1270", label %"$out_of_gas_1271", label %"$have_gas_1272"

"$out_of_gas_1271":                               ; preds = %"$have_gas_1261"
  call void @_out_of_gas()
  br label %"$have_gas_1272"

"$have_gas_1272":                                 ; preds = %"$out_of_gas_1271", %"$have_gas_1261"
  %"$consume_1273" = sub i64 %"$gasrem_1269", 1
  store i64 %"$consume_1273", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_39", metadata !269, metadata !DIExpression()), !dbg !270
  %"$gasrem_1274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1275" = icmp ugt i64 2, %"$gasrem_1274"
  br i1 %"$gascmp_1275", label %"$out_of_gas_1276", label %"$have_gas_1277"

"$out_of_gas_1276":                               ; preds = %"$have_gas_1272"
  call void @_out_of_gas()
  br label %"$have_gas_1277"

"$have_gas_1277":                                 ; preds = %"$out_of_gas_1276", %"$have_gas_1272"
  %"$consume_1278" = sub i64 %"$gasrem_1274", 2
  store i64 %"$consume_1278", i64* @_gasrem, align 8
  %"$$resopt_38_1280" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1281" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_38_1280", i32 0, i32 0
  %"$$resopt_38_tag_1282" = load i8, i8* %"$$resopt_38_tag_1281", align 1
  switch i8 %"$$resopt_38_tag_1282", label %"$empty_default_1283" [
    i8 0, label %"$Some_1284"
    i8 1, label %"$None_1332"
  ], !dbg !271

"$Some_1284":                                     ; preds = %"$have_gas_1277"
  %"$$resopt_38_1285" = bitcast %TName_Option_Int256* %"$$resopt_38_1280" to %CName_Some_Int256*
  %"$res_gep_1286" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_38_1285", i32 0, i32 1
  %"$res_load_1287" = load %Int256, %Int256* %"$res_gep_1286", align 8
  %res25 = alloca %Int256, align 8
  store %Int256 %"$res_load_1287", %Int256* %res25, align 8
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$Some_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$Some_1284"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %input_26 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_26, metadata !272, metadata !DIExpression()), !dbg !275
  %"$gasrem_1293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1294" = icmp ugt i64 1, %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %"$have_gas_1291"
  %"$consume_1297" = sub i64 %"$gasrem_1293", 1
  store i64 %"$consume_1297", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_26, align 8, !dbg !276
  %"$gasrem_1298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1299" = icmp ugt i64 1, %"$gasrem_1298"
  br i1 %"$gascmp_1299", label %"$out_of_gas_1300", label %"$have_gas_1301"

"$out_of_gas_1300":                               ; preds = %"$have_gas_1296"
  call void @_out_of_gas()
  br label %"$have_gas_1301"

"$have_gas_1301":                                 ; preds = %"$out_of_gas_1300", %"$have_gas_1296"
  %"$consume_1302" = sub i64 %"$gasrem_1298", 1
  store i64 %"$consume_1302", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_27, metadata !277, metadata !DIExpression()), !dbg !278
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 16, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1301"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1301"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 16
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$execptr_load_1309" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1310" = alloca %Int256, align 8
  %"$res_1311" = load %Int256, %Int256* %res25, align 8
  store %Int256 %"$res_1311", %Int256* %"$eq_res_1310", align 8
  %"$eq_input__1312" = alloca %Int256, align 8
  %"$input__1313" = load %Int256, %Int256* %input_26, align 8
  store %Int256 %"$input__1313", %Int256* %"$eq_input__1312", align 8
  %"$eq_call_1314" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1309", %Int256* %"$eq_res_1310", %Int256* %"$eq_input__1312"), !dbg !279
  store %TName_Bool* %"$eq_call_1314", %TName_Bool** %test_27, align 8, !dbg !279
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 1, %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1307"
  %"$consume_1320" = sub i64 %"$gasrem_1316", 1
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1321" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1322" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1321", 0
  %"$BoolUtils.andb_envptr_1323" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1321", 1
  %"$$test_36_1324" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1325" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1322"(i8* %"$BoolUtils.andb_envptr_1323", %TName_Bool* %"$$test_36_1324"), !dbg !280
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1325", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !280
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_74", metadata !281, metadata !DIExpression()), !dbg !280
  %"$$BoolUtils.andb_73_1326" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_1327" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1326", 0
  %"$$BoolUtils.andb_73_envptr_1328" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1326", 1
  %"$test__1329" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_73_call_1330" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_1327"(i8* %"$$BoolUtils.andb_73_envptr_1328", %TName_Bool* %"$test__1329"), !dbg !280
  store %TName_Bool* %"$$BoolUtils.andb_73_call_1330", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !280
  %"$$BoolUtils.andb_74_1331" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_1331", %TName_Bool** %"$test_39", align 8, !dbg !280
  br label %"$matchsucc_1279"

"$None_1332":                                     ; preds = %"$have_gas_1277"
  %"$$resopt_38_1333" = bitcast %TName_Option_Int256* %"$$resopt_38_1280" to %CName_None_Int256*
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$None_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$None_1332"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  %"$false_1339" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1339", %TName_Bool** %"$test_39", align 8, !dbg !282
  br label %"$matchsucc_1279"

"$empty_default_1283":                            ; preds = %"$have_gas_1277"
  br label %"$matchsucc_1279"

"$matchsucc_1279":                                ; preds = %"$have_gas_1337", %"$have_gas_1319", %"$empty_default_1283"
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 1, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$matchsucc_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$matchsucc_1279"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 1
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %"$input_40" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_40", metadata !284, metadata !DIExpression()), !dbg !285
  %"$gasrem_1345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1346" = icmp ugt i64 1, %"$gasrem_1345"
  br i1 %"$gascmp_1346", label %"$out_of_gas_1347", label %"$have_gas_1348"

"$out_of_gas_1347":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1348"

"$have_gas_1348":                                 ; preds = %"$out_of_gas_1347", %"$have_gas_1343"
  %"$consume_1349" = sub i64 %"$gasrem_1345", 1
  store i64 %"$consume_1349", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1350", i32 0, i32 0), i32 19 }, %String* %"$input_40", align 8, !dbg !286
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 1, %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1348"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1348"
  %"$consume_1355" = sub i64 %"$gasrem_1351", 1
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_41", metadata !287, metadata !DIExpression()), !dbg !288
  %"$gasrem_1356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1357" = icmp ugt i64 16, %"$gasrem_1356"
  br i1 %"$gascmp_1357", label %"$out_of_gas_1358", label %"$have_gas_1359"

"$out_of_gas_1358":                               ; preds = %"$have_gas_1354"
  call void @_out_of_gas()
  br label %"$have_gas_1359"

"$have_gas_1359":                                 ; preds = %"$out_of_gas_1358", %"$have_gas_1354"
  %"$consume_1360" = sub i64 %"$gasrem_1356", 16
  store i64 %"$consume_1360", i64* @_gasrem, align 8
  %"$execptr_load_1361" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_40_1362" = alloca %String, align 8
  %"$$input_40_1363" = load %String, %String* %"$input_40", align 8
  store %String %"$$input_40_1363", %String* %"$to_int256_$input_40_1362", align 8
  %"$$to_int256_$input_40_1362_1364" = bitcast %String* %"$to_int256_$input_40_1362" to i8*
  %"$to_int256_call_1365" = call i8* @_to_int256(i8* %"$execptr_load_1361", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int256_$input_40_1362_1364"), !dbg !289
  %"$to_int256_1366" = bitcast i8* %"$to_int256_call_1365" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1366", %TName_Option_Int256** %"$resopt_41", align 8, !dbg !289
  %"$gasrem_1367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1368" = icmp ugt i64 1, %"$gasrem_1367"
  br i1 %"$gascmp_1368", label %"$out_of_gas_1369", label %"$have_gas_1370"

"$out_of_gas_1369":                               ; preds = %"$have_gas_1359"
  call void @_out_of_gas()
  br label %"$have_gas_1370"

"$have_gas_1370":                                 ; preds = %"$out_of_gas_1369", %"$have_gas_1359"
  %"$consume_1371" = sub i64 %"$gasrem_1367", 1
  store i64 %"$consume_1371", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !290, metadata !DIExpression()), !dbg !291
  %"$gasrem_1372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1373" = icmp ugt i64 2, %"$gasrem_1372"
  br i1 %"$gascmp_1373", label %"$out_of_gas_1374", label %"$have_gas_1375"

"$out_of_gas_1374":                               ; preds = %"$have_gas_1370"
  call void @_out_of_gas()
  br label %"$have_gas_1375"

"$have_gas_1375":                                 ; preds = %"$out_of_gas_1374", %"$have_gas_1370"
  %"$consume_1376" = sub i64 %"$gasrem_1372", 2
  store i64 %"$consume_1376", i64* @_gasrem, align 8
  %"$$resopt_41_1378" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1379" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_41_1378", i32 0, i32 0
  %"$$resopt_41_tag_1380" = load i8, i8* %"$$resopt_41_tag_1379", align 1
  switch i8 %"$$resopt_41_tag_1380", label %"$empty_default_1381" [
    i8 0, label %"$Some_1382"
    i8 1, label %"$None_1430"
  ], !dbg !292

"$Some_1382":                                     ; preds = %"$have_gas_1375"
  %"$$resopt_41_1383" = bitcast %TName_Option_Int256* %"$$resopt_41_1378" to %CName_Some_Int256*
  %"$res_gep_1384" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_41_1383", i32 0, i32 1
  %"$res_load_1385" = load %Int256, %Int256* %"$res_gep_1384", align 8
  %res28 = alloca %Int256, align 8
  store %Int256 %"$res_load_1385", %Int256* %res28, align 8
  %"$gasrem_1386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1387" = icmp ugt i64 1, %"$gasrem_1386"
  br i1 %"$gascmp_1387", label %"$out_of_gas_1388", label %"$have_gas_1389"

"$out_of_gas_1388":                               ; preds = %"$Some_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1389"

"$have_gas_1389":                                 ; preds = %"$out_of_gas_1388", %"$Some_1382"
  %"$consume_1390" = sub i64 %"$gasrem_1386", 1
  store i64 %"$consume_1390", i64* @_gasrem, align 8
  %input_29 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_29, metadata !293, metadata !DIExpression()), !dbg !296
  %"$gasrem_1391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1392" = icmp ugt i64 1, %"$gasrem_1391"
  br i1 %"$gascmp_1392", label %"$out_of_gas_1393", label %"$have_gas_1394"

"$out_of_gas_1393":                               ; preds = %"$have_gas_1389"
  call void @_out_of_gas()
  br label %"$have_gas_1394"

"$have_gas_1394":                                 ; preds = %"$out_of_gas_1393", %"$have_gas_1389"
  %"$consume_1395" = sub i64 %"$gasrem_1391", 1
  store i64 %"$consume_1395", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_29, align 8, !dbg !297
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 1, %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %"$have_gas_1394"
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %"$have_gas_1394"
  %"$consume_1400" = sub i64 %"$gasrem_1396", 1
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_30, metadata !298, metadata !DIExpression()), !dbg !299
  %"$gasrem_1402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1403" = icmp ugt i64 16, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$have_gas_1399"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$have_gas_1399"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 16
  store i64 %"$consume_1406", i64* @_gasrem, align 8
  %"$execptr_load_1407" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1408" = alloca %Int256, align 8
  %"$res_1409" = load %Int256, %Int256* %res28, align 8
  store %Int256 %"$res_1409", %Int256* %"$eq_res_1408", align 8
  %"$eq_input__1410" = alloca %Int256, align 8
  %"$input__1411" = load %Int256, %Int256* %input_29, align 8
  store %Int256 %"$input__1411", %Int256* %"$eq_input__1410", align 8
  %"$eq_call_1412" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1407", %Int256* %"$eq_res_1408", %Int256* %"$eq_input__1410"), !dbg !300
  store %TName_Bool* %"$eq_call_1412", %TName_Bool** %test_30, align 8, !dbg !300
  %"$gasrem_1414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1415" = icmp ugt i64 1, %"$gasrem_1414"
  br i1 %"$gascmp_1415", label %"$out_of_gas_1416", label %"$have_gas_1417"

"$out_of_gas_1416":                               ; preds = %"$have_gas_1405"
  call void @_out_of_gas()
  br label %"$have_gas_1417"

"$have_gas_1417":                                 ; preds = %"$out_of_gas_1416", %"$have_gas_1405"
  %"$consume_1418" = sub i64 %"$gasrem_1414", 1
  store i64 %"$consume_1418", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1419" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1420" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1419", 0
  %"$BoolUtils.andb_envptr_1421" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1419", 1
  %"$$test_39_1422" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1423" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1420"(i8* %"$BoolUtils.andb_envptr_1421", %TName_Bool* %"$$test_39_1422"), !dbg !301
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1423", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8, !dbg !301
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_76", metadata !302, metadata !DIExpression()), !dbg !301
  %"$$BoolUtils.andb_75_1424" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_1425" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_1424", 0
  %"$$BoolUtils.andb_75_envptr_1426" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_1424", 1
  %"$test__1427" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_75_call_1428" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_1425"(i8* %"$$BoolUtils.andb_75_envptr_1426", %TName_Bool* %"$test__1427"), !dbg !301
  store %TName_Bool* %"$$BoolUtils.andb_75_call_1428", %TName_Bool** %"$BoolUtils.andb_76", align 8, !dbg !301
  %"$$BoolUtils.andb_76_1429" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_1429", %TName_Bool** %"$test_42", align 8, !dbg !301
  br label %"$matchsucc_1377"

"$None_1430":                                     ; preds = %"$have_gas_1375"
  %"$$resopt_41_1431" = bitcast %TName_Option_Int256* %"$$resopt_41_1378" to %CName_None_Int256*
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$None_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$None_1430"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  %"$false_1437" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1437", %TName_Bool** %"$test_42", align 8, !dbg !303
  br label %"$matchsucc_1377"

"$empty_default_1381":                            ; preds = %"$have_gas_1375"
  br label %"$matchsucc_1377"

"$matchsucc_1377":                                ; preds = %"$have_gas_1435", %"$have_gas_1417", %"$empty_default_1381"
  %"$gasrem_1438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1439" = icmp ugt i64 1, %"$gasrem_1438"
  br i1 %"$gascmp_1439", label %"$out_of_gas_1440", label %"$have_gas_1441"

"$out_of_gas_1440":                               ; preds = %"$matchsucc_1377"
  call void @_out_of_gas()
  br label %"$have_gas_1441"

"$have_gas_1441":                                 ; preds = %"$out_of_gas_1440", %"$matchsucc_1377"
  %"$consume_1442" = sub i64 %"$gasrem_1438", 1
  store i64 %"$consume_1442", i64* @_gasrem, align 8
  %"$input_43" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_43", metadata !305, metadata !DIExpression()), !dbg !307
  %"$gasrem_1443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1444" = icmp ugt i64 1, %"$gasrem_1443"
  br i1 %"$gascmp_1444", label %"$out_of_gas_1445", label %"$have_gas_1446"

"$out_of_gas_1445":                               ; preds = %"$have_gas_1441"
  call void @_out_of_gas()
  br label %"$have_gas_1446"

"$have_gas_1446":                                 ; preds = %"$out_of_gas_1445", %"$have_gas_1441"
  %"$consume_1447" = sub i64 %"$gasrem_1443", 1
  store i64 %"$consume_1447", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$input_43", align 8, !dbg !308
  %"$gasrem_1448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1449" = icmp ugt i64 1, %"$gasrem_1448"
  br i1 %"$gascmp_1449", label %"$out_of_gas_1450", label %"$have_gas_1451"

"$out_of_gas_1450":                               ; preds = %"$have_gas_1446"
  call void @_out_of_gas()
  br label %"$have_gas_1451"

"$have_gas_1451":                                 ; preds = %"$out_of_gas_1450", %"$have_gas_1446"
  %"$consume_1452" = sub i64 %"$gasrem_1448", 1
  store i64 %"$consume_1452", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_44", metadata !309, metadata !DIExpression()), !dbg !310
  %"$gasrem_1453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1454" = icmp ugt i64 16, %"$gasrem_1453"
  br i1 %"$gascmp_1454", label %"$out_of_gas_1455", label %"$have_gas_1456"

"$out_of_gas_1455":                               ; preds = %"$have_gas_1451"
  call void @_out_of_gas()
  br label %"$have_gas_1456"

"$have_gas_1456":                                 ; preds = %"$out_of_gas_1455", %"$have_gas_1451"
  %"$consume_1457" = sub i64 %"$gasrem_1453", 16
  store i64 %"$consume_1457", i64* @_gasrem, align 8
  %"$execptr_load_1458" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_43_1459" = alloca %Uint256, align 8
  %"$$input_43_1460" = load %Uint256, %Uint256* %"$input_43", align 8
  store %Uint256 %"$$input_43_1460", %Uint256* %"$to_int256_$input_43_1459", align 8
  %"$$to_int256_$input_43_1459_1461" = bitcast %Uint256* %"$to_int256_$input_43_1459" to i8*
  %"$to_int256_call_1462" = call i8* @_to_int256(i8* %"$execptr_load_1458", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", i8* %"$$to_int256_$input_43_1459_1461"), !dbg !311
  %"$to_int256_1463" = bitcast i8* %"$to_int256_call_1462" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1463", %TName_Option_Int256** %"$resopt_44", align 8, !dbg !311
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1456"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1456"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_45", metadata !312, metadata !DIExpression()), !dbg !313
  %"$gasrem_1469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1470" = icmp ugt i64 2, %"$gasrem_1469"
  br i1 %"$gascmp_1470", label %"$out_of_gas_1471", label %"$have_gas_1472"

"$out_of_gas_1471":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1472"

"$have_gas_1472":                                 ; preds = %"$out_of_gas_1471", %"$have_gas_1467"
  %"$consume_1473" = sub i64 %"$gasrem_1469", 2
  store i64 %"$consume_1473", i64* @_gasrem, align 8
  %"$$resopt_44_1475" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_44", align 8
  %"$$resopt_44_tag_1476" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_44_1475", i32 0, i32 0
  %"$$resopt_44_tag_1477" = load i8, i8* %"$$resopt_44_tag_1476", align 1
  switch i8 %"$$resopt_44_tag_1477", label %"$empty_default_1478" [
    i8 0, label %"$Some_1479"
    i8 1, label %"$None_1527"
  ], !dbg !314

"$Some_1479":                                     ; preds = %"$have_gas_1472"
  %"$$resopt_44_1480" = bitcast %TName_Option_Int256* %"$$resopt_44_1475" to %CName_Some_Int256*
  %"$res_gep_1481" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_44_1480", i32 0, i32 1
  %"$res_load_1482" = load %Int256, %Int256* %"$res_gep_1481", align 8
  %res31 = alloca %Int256, align 8
  store %Int256 %"$res_load_1482", %Int256* %res31, align 8
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$Some_1479"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$Some_1479"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %input_32 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_32, metadata !315, metadata !DIExpression()), !dbg !318
  %"$gasrem_1488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1489" = icmp ugt i64 1, %"$gasrem_1488"
  br i1 %"$gascmp_1489", label %"$out_of_gas_1490", label %"$have_gas_1491"

"$out_of_gas_1490":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1491"

"$have_gas_1491":                                 ; preds = %"$out_of_gas_1490", %"$have_gas_1486"
  %"$consume_1492" = sub i64 %"$gasrem_1488", 1
  store i64 %"$consume_1492", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_32, align 8, !dbg !319
  %"$gasrem_1493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1494" = icmp ugt i64 1, %"$gasrem_1493"
  br i1 %"$gascmp_1494", label %"$out_of_gas_1495", label %"$have_gas_1496"

"$out_of_gas_1495":                               ; preds = %"$have_gas_1491"
  call void @_out_of_gas()
  br label %"$have_gas_1496"

"$have_gas_1496":                                 ; preds = %"$out_of_gas_1495", %"$have_gas_1491"
  %"$consume_1497" = sub i64 %"$gasrem_1493", 1
  store i64 %"$consume_1497", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_33, metadata !320, metadata !DIExpression()), !dbg !321
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 16, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1496"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 16
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  %"$execptr_load_1504" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1505" = alloca %Int256, align 8
  %"$res_1506" = load %Int256, %Int256* %res31, align 8
  store %Int256 %"$res_1506", %Int256* %"$eq_res_1505", align 8
  %"$eq_input__1507" = alloca %Int256, align 8
  %"$input__1508" = load %Int256, %Int256* %input_32, align 8
  store %Int256 %"$input__1508", %Int256* %"$eq_input__1507", align 8
  %"$eq_call_1509" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1504", %Int256* %"$eq_res_1505", %Int256* %"$eq_input__1507"), !dbg !322
  store %TName_Bool* %"$eq_call_1509", %TName_Bool** %test_33, align 8, !dbg !322
  %"$gasrem_1511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1512" = icmp ugt i64 1, %"$gasrem_1511"
  br i1 %"$gascmp_1512", label %"$out_of_gas_1513", label %"$have_gas_1514"

"$out_of_gas_1513":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1514"

"$have_gas_1514":                                 ; preds = %"$out_of_gas_1513", %"$have_gas_1502"
  %"$consume_1515" = sub i64 %"$gasrem_1511", 1
  store i64 %"$consume_1515", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1516" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1517" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1516", 0
  %"$BoolUtils.andb_envptr_1518" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1516", 1
  %"$$test_42_1519" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1520" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1517"(i8* %"$BoolUtils.andb_envptr_1518", %TName_Bool* %"$$test_42_1519"), !dbg !323
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1520", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8, !dbg !323
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_78", metadata !324, metadata !DIExpression()), !dbg !323
  %"$$BoolUtils.andb_77_1521" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_1522" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_1521", 0
  %"$$BoolUtils.andb_77_envptr_1523" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_1521", 1
  %"$test__1524" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_77_call_1525" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_1522"(i8* %"$$BoolUtils.andb_77_envptr_1523", %TName_Bool* %"$test__1524"), !dbg !323
  store %TName_Bool* %"$$BoolUtils.andb_77_call_1525", %TName_Bool** %"$BoolUtils.andb_78", align 8, !dbg !323
  %"$$BoolUtils.andb_78_1526" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_1526", %TName_Bool** %"$test_45", align 8, !dbg !323
  br label %"$matchsucc_1474"

"$None_1527":                                     ; preds = %"$have_gas_1472"
  %"$$resopt_44_1528" = bitcast %TName_Option_Int256* %"$$resopt_44_1475" to %CName_None_Int256*
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 1, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$None_1527"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$None_1527"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 1
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$false_1534" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1534", %TName_Bool** %"$test_45", align 8, !dbg !325
  br label %"$matchsucc_1474"

"$empty_default_1478":                            ; preds = %"$have_gas_1472"
  br label %"$matchsucc_1474"

"$matchsucc_1474":                                ; preds = %"$have_gas_1532", %"$have_gas_1514", %"$empty_default_1478"
  %"$gasrem_1535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1536" = icmp ugt i64 1, %"$gasrem_1535"
  br i1 %"$gascmp_1536", label %"$out_of_gas_1537", label %"$have_gas_1538"

"$out_of_gas_1537":                               ; preds = %"$matchsucc_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1538"

"$have_gas_1538":                                 ; preds = %"$out_of_gas_1537", %"$matchsucc_1474"
  %"$consume_1539" = sub i64 %"$gasrem_1535", 1
  store i64 %"$consume_1539", i64* @_gasrem, align 8
  %"$input_46" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_46", metadata !327, metadata !DIExpression()), !dbg !328
  %"$gasrem_1540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1541" = icmp ugt i64 1, %"$gasrem_1540"
  br i1 %"$gascmp_1541", label %"$out_of_gas_1542", label %"$have_gas_1543"

"$out_of_gas_1542":                               ; preds = %"$have_gas_1538"
  call void @_out_of_gas()
  br label %"$have_gas_1543"

"$have_gas_1543":                                 ; preds = %"$out_of_gas_1542", %"$have_gas_1538"
  %"$consume_1544" = sub i64 %"$gasrem_1540", 1
  store i64 %"$consume_1544", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1545", i32 0, i32 0), i32 77 }, %String* %"$input_46", align 8, !dbg !329
  %"$gasrem_1546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1547" = icmp ugt i64 1, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$have_gas_1543"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$have_gas_1543"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 1
  store i64 %"$consume_1550", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_47", metadata !330, metadata !DIExpression()), !dbg !331
  %"$gasrem_1551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1552" = icmp ugt i64 16, %"$gasrem_1551"
  br i1 %"$gascmp_1552", label %"$out_of_gas_1553", label %"$have_gas_1554"

"$out_of_gas_1553":                               ; preds = %"$have_gas_1549"
  call void @_out_of_gas()
  br label %"$have_gas_1554"

"$have_gas_1554":                                 ; preds = %"$out_of_gas_1553", %"$have_gas_1549"
  %"$consume_1555" = sub i64 %"$gasrem_1551", 16
  store i64 %"$consume_1555", i64* @_gasrem, align 8
  %"$execptr_load_1556" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_46_1557" = alloca %String, align 8
  %"$$input_46_1558" = load %String, %String* %"$input_46", align 8
  store %String %"$$input_46_1558", %String* %"$to_int256_$input_46_1557", align 8
  %"$$to_int256_$input_46_1557_1559" = bitcast %String* %"$to_int256_$input_46_1557" to i8*
  %"$to_int256_call_1560" = call i8* @_to_int256(i8* %"$execptr_load_1556", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int256_$input_46_1557_1559"), !dbg !332
  %"$to_int256_1561" = bitcast i8* %"$to_int256_call_1560" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1561", %TName_Option_Int256** %"$resopt_47", align 8, !dbg !332
  %"$gasrem_1562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1554"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1554"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !333, metadata !DIExpression()), !dbg !334
  %"$gasrem_1567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1568" = icmp ugt i64 2, %"$gasrem_1567"
  br i1 %"$gascmp_1568", label %"$out_of_gas_1569", label %"$have_gas_1570"

"$out_of_gas_1569":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1570"

"$have_gas_1570":                                 ; preds = %"$out_of_gas_1569", %"$have_gas_1565"
  %"$consume_1571" = sub i64 %"$gasrem_1567", 2
  store i64 %"$consume_1571", i64* @_gasrem, align 8
  %"$$resopt_47_1573" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_47", align 8
  %"$$resopt_47_tag_1574" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_47_1573", i32 0, i32 0
  %"$$resopt_47_tag_1575" = load i8, i8* %"$$resopt_47_tag_1574", align 1
  switch i8 %"$$resopt_47_tag_1575", label %"$empty_default_1576" [
    i8 0, label %"$Some_1577"
    i8 1, label %"$None_1625"
  ], !dbg !335

"$Some_1577":                                     ; preds = %"$have_gas_1570"
  %"$$resopt_47_1578" = bitcast %TName_Option_Int256* %"$$resopt_47_1573" to %CName_Some_Int256*
  %"$res_gep_1579" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_47_1578", i32 0, i32 1
  %"$res_load_1580" = load %Int256, %Int256* %"$res_gep_1579", align 8
  %res34 = alloca %Int256, align 8
  store %Int256 %"$res_load_1580", %Int256* %res34, align 8
  %"$gasrem_1581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1582" = icmp ugt i64 1, %"$gasrem_1581"
  br i1 %"$gascmp_1582", label %"$out_of_gas_1583", label %"$have_gas_1584"

"$out_of_gas_1583":                               ; preds = %"$Some_1577"
  call void @_out_of_gas()
  br label %"$have_gas_1584"

"$have_gas_1584":                                 ; preds = %"$out_of_gas_1583", %"$Some_1577"
  %"$consume_1585" = sub i64 %"$gasrem_1581", 1
  store i64 %"$consume_1585", i64* @_gasrem, align 8
  %input_35 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_35, metadata !336, metadata !DIExpression()), !dbg !339
  %"$gasrem_1586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1587" = icmp ugt i64 1, %"$gasrem_1586"
  br i1 %"$gascmp_1587", label %"$out_of_gas_1588", label %"$have_gas_1589"

"$out_of_gas_1588":                               ; preds = %"$have_gas_1584"
  call void @_out_of_gas()
  br label %"$have_gas_1589"

"$have_gas_1589":                                 ; preds = %"$out_of_gas_1588", %"$have_gas_1584"
  %"$consume_1590" = sub i64 %"$gasrem_1586", 1
  store i64 %"$consume_1590", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_35, align 8, !dbg !340
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 1, %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1589"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1589"
  %"$consume_1595" = sub i64 %"$gasrem_1591", 1
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  %test_36 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_36, metadata !341, metadata !DIExpression()), !dbg !342
  %"$gasrem_1597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1598" = icmp ugt i64 16, %"$gasrem_1597"
  br i1 %"$gascmp_1598", label %"$out_of_gas_1599", label %"$have_gas_1600"

"$out_of_gas_1599":                               ; preds = %"$have_gas_1594"
  call void @_out_of_gas()
  br label %"$have_gas_1600"

"$have_gas_1600":                                 ; preds = %"$out_of_gas_1599", %"$have_gas_1594"
  %"$consume_1601" = sub i64 %"$gasrem_1597", 16
  store i64 %"$consume_1601", i64* @_gasrem, align 8
  %"$execptr_load_1602" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1603" = alloca %Int256, align 8
  %"$res_1604" = load %Int256, %Int256* %res34, align 8
  store %Int256 %"$res_1604", %Int256* %"$eq_res_1603", align 8
  %"$eq_input__1605" = alloca %Int256, align 8
  %"$input__1606" = load %Int256, %Int256* %input_35, align 8
  store %Int256 %"$input__1606", %Int256* %"$eq_input__1605", align 8
  %"$eq_call_1607" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1602", %Int256* %"$eq_res_1603", %Int256* %"$eq_input__1605"), !dbg !343
  store %TName_Bool* %"$eq_call_1607", %TName_Bool** %test_36, align 8, !dbg !343
  %"$gasrem_1609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1610" = icmp ugt i64 1, %"$gasrem_1609"
  br i1 %"$gascmp_1610", label %"$out_of_gas_1611", label %"$have_gas_1612"

"$out_of_gas_1611":                               ; preds = %"$have_gas_1600"
  call void @_out_of_gas()
  br label %"$have_gas_1612"

"$have_gas_1612":                                 ; preds = %"$out_of_gas_1611", %"$have_gas_1600"
  %"$consume_1613" = sub i64 %"$gasrem_1609", 1
  store i64 %"$consume_1613", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1614" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1615" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1614", 0
  %"$BoolUtils.andb_envptr_1616" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1614", 1
  %"$$test_45_1617" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  %"$BoolUtils.andb_call_1618" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1615"(i8* %"$BoolUtils.andb_envptr_1616", %TName_Bool* %"$$test_45_1617"), !dbg !344
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1618", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !344
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_80", metadata !345, metadata !DIExpression()), !dbg !344
  %"$$BoolUtils.andb_79_1619" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_1620" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1619", 0
  %"$$BoolUtils.andb_79_envptr_1621" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1619", 1
  %"$test__1622" = load %TName_Bool*, %TName_Bool** %test_36, align 8
  %"$$BoolUtils.andb_79_call_1623" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_1620"(i8* %"$$BoolUtils.andb_79_envptr_1621", %TName_Bool* %"$test__1622"), !dbg !344
  store %TName_Bool* %"$$BoolUtils.andb_79_call_1623", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !344
  %"$$BoolUtils.andb_80_1624" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_1624", %TName_Bool** %"$test_48", align 8, !dbg !344
  br label %"$matchsucc_1572"

"$None_1625":                                     ; preds = %"$have_gas_1570"
  %"$$resopt_47_1626" = bitcast %TName_Option_Int256* %"$$resopt_47_1573" to %CName_None_Int256*
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 1, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %"$None_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %"$None_1625"
  %"$consume_1631" = sub i64 %"$gasrem_1627", 1
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  %"$false_1632" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1632", %TName_Bool** %"$test_48", align 8, !dbg !346
  br label %"$matchsucc_1572"

"$empty_default_1576":                            ; preds = %"$have_gas_1570"
  br label %"$matchsucc_1572"

"$matchsucc_1572":                                ; preds = %"$have_gas_1630", %"$have_gas_1612", %"$empty_default_1576"
  %"$gasrem_1633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1634" = icmp ugt i64 1, %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$matchsucc_1572"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$matchsucc_1572"
  %"$consume_1637" = sub i64 %"$gasrem_1633", 1
  store i64 %"$consume_1637", i64* @_gasrem, align 8
  %"$input_49" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_49", metadata !348, metadata !DIExpression()), !dbg !349
  %"$gasrem_1638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1639" = icmp ugt i64 1, %"$gasrem_1638"
  br i1 %"$gascmp_1639", label %"$out_of_gas_1640", label %"$have_gas_1641"

"$out_of_gas_1640":                               ; preds = %"$have_gas_1636"
  call void @_out_of_gas()
  br label %"$have_gas_1641"

"$have_gas_1641":                                 ; preds = %"$out_of_gas_1640", %"$have_gas_1636"
  %"$consume_1642" = sub i64 %"$gasrem_1638", 1
  store i64 %"$consume_1642", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1643", i32 0, i32 0), i32 4 }, %String* %"$input_49", align 8, !dbg !350
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 1, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$have_gas_1641"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$have_gas_1641"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 1
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_50", metadata !351, metadata !DIExpression()), !dbg !352
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 4, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$have_gas_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$have_gas_1647"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 4
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %"$execptr_load_1654" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_49_1655" = alloca %String, align 8
  %"$$input_49_1656" = load %String, %String* %"$input_49", align 8
  store %String %"$$input_49_1656", %String* %"$to_int64_$input_49_1655", align 8
  %"$$to_int64_$input_49_1655_1657" = bitcast %String* %"$to_int64_$input_49_1655" to i8*
  %"$to_int64_call_1658" = call i8* @_to_int64(i8* %"$execptr_load_1654", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_49_1655_1657"), !dbg !353
  %"$to_int64_1659" = bitcast i8* %"$to_int64_call_1658" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1659", %TName_Option_Int64** %"$resopt_50", align 8, !dbg !353
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1652"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_51", metadata !354, metadata !DIExpression()), !dbg !355
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 2, %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1663"
  %"$consume_1669" = sub i64 %"$gasrem_1665", 2
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$$resopt_50_1671" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_50", align 8
  %"$$resopt_50_tag_1672" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_50_1671", i32 0, i32 0
  %"$$resopt_50_tag_1673" = load i8, i8* %"$$resopt_50_tag_1672", align 1
  switch i8 %"$$resopt_50_tag_1673", label %"$empty_default_1674" [
    i8 0, label %"$Some_1675"
    i8 1, label %"$None_1685"
  ], !dbg !356

"$Some_1675":                                     ; preds = %"$have_gas_1668"
  %"$$resopt_50_1676" = bitcast %TName_Option_Int64* %"$$resopt_50_1671" to %CName_Some_Int64*
  %"$$$resopt_50_54_gep_1677" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_50_1676", i32 0, i32 1
  %"$$$resopt_50_54_load_1678" = load %Int64, %Int64* %"$$$resopt_50_54_gep_1677", align 8
  %"$$resopt_50_54" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_50_54_load_1678", %Int64* %"$$resopt_50_54", align 8
  %"$gasrem_1679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1680" = icmp ugt i64 1, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$Some_1675"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$Some_1675"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 1
  store i64 %"$consume_1683", i64* @_gasrem, align 8
  %"$false_1684" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1684", %TName_Bool** %"$test_51", align 8, !dbg !357
  br label %"$matchsucc_1670"

"$None_1685":                                     ; preds = %"$have_gas_1668"
  %"$$resopt_50_1686" = bitcast %TName_Option_Int64* %"$$resopt_50_1671" to %CName_None_Int64*
  %"$gasrem_1687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1688" = icmp ugt i64 1, %"$gasrem_1687"
  br i1 %"$gascmp_1688", label %"$out_of_gas_1689", label %"$have_gas_1690"

"$out_of_gas_1689":                               ; preds = %"$None_1685"
  call void @_out_of_gas()
  br label %"$have_gas_1690"

"$have_gas_1690":                                 ; preds = %"$out_of_gas_1689", %"$None_1685"
  %"$consume_1691" = sub i64 %"$gasrem_1687", 1
  store i64 %"$consume_1691", i64* @_gasrem, align 8
  %"$$test_48_1692" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  store %TName_Bool* %"$$test_48_1692", %TName_Bool** %"$test_51", align 8, !dbg !360
  br label %"$matchsucc_1670"

"$empty_default_1674":                            ; preds = %"$have_gas_1668"
  br label %"$matchsucc_1670"

"$matchsucc_1670":                                ; preds = %"$have_gas_1690", %"$have_gas_1682", %"$empty_default_1674"
  %"$gasrem_1693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1694" = icmp ugt i64 1, %"$gasrem_1693"
  br i1 %"$gascmp_1694", label %"$out_of_gas_1695", label %"$have_gas_1696"

"$out_of_gas_1695":                               ; preds = %"$matchsucc_1670"
  call void @_out_of_gas()
  br label %"$have_gas_1696"

"$have_gas_1696":                                 ; preds = %"$out_of_gas_1695", %"$matchsucc_1670"
  %"$consume_1697" = sub i64 %"$gasrem_1693", 1
  store i64 %"$consume_1697", i64* @_gasrem, align 8
  %"$$test_51_1698" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  store %TName_Bool* %"$$test_51_1698", %TName_Bool** %"$expr_85", align 8, !dbg !362
  %"$$expr_85_1699" = load %TName_Bool*, %TName_Bool** %"$expr_85", align 8
  ret %TName_Bool* %"$$expr_85_1699"
}

declare i8* @_to_int32(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare i8* @_to_int64(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Int64(i8*, %Int64, %Int64)

declare i8* @_to_int256(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1700" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1701" = bitcast %TName_Bool* %"$exprval_1700" to i8*
  %"$execptr_load_1702" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1702", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_123", i8* %"$memvoidcast_1701")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_int.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "$retval_84", scope: !3, file: !4, line: 8, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 8, column: 5, scope: !3)
!13 = !DILocation(line: 9, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !15, file: !4, line: 9, column: 7)
!15 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!16 = !DILocation(line: 10, column: 16, scope: !17)
!17 = distinct !DILexicalBlock(scope: !15, file: !4, line: 10, column: 7)
!18 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!19 = !DILocation(line: 8, column: 5, scope: !18)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 7, column: 3, scope: !20)
!24 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DILocalVariable(name: "$expr_85", scope: !24, file: !2, line: 1, type: !10)
!26 = !DILocation(line: 1, column: 13, scope: !24)
!27 = !DILocalVariable(name: "false", scope: !24, file: !2, line: 1, type: !10)
!28 = !DILocation(line: 1, column: 5, scope: !24)
!29 = !DILocalVariable(name: "test", scope: !24, file: !2, line: 2, type: !10)
!30 = !DILocation(line: 2, column: 5, scope: !24)
!31 = !DILocation(line: 2, column: 12, scope: !24)
!32 = !DILocalVariable(name: "input", scope: !24, file: !2, line: 4, type: !33)
!33 = !DIBasicType(name: "Uint32", size: 4)
!34 = !DILocation(line: 4, column: 5, scope: !24)
!35 = !DILocation(line: 4, column: 13, scope: !24)
!36 = !DILocalVariable(name: "resopt", scope: !24, file: !2, line: 5, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int32)", baseType: !38, size: 8, align: 8, dwarfAddressSpace: 0)
!38 = !DIBasicType(name: "Option (Int32)", size: 8)
!39 = !DILocation(line: 5, column: 5, scope: !24)
!40 = !DILocation(line: 5, column: 14, scope: !24)
!41 = !DILocalVariable(name: "$test_6", scope: !24, file: !2, line: 6, type: !10)
!42 = !DILocation(line: 6, column: 5, scope: !24)
!43 = !DILocation(line: 7, column: 3, scope: !24)
!44 = !DILocalVariable(name: "input_", scope: !45, file: !2, line: 9, type: !47)
!45 = distinct !DILexicalBlock(scope: !46, file: !2, line: 8, column: 5)
!46 = distinct !DILexicalBlock(scope: !24, file: !2, line: 7, column: 3)
!47 = !DIBasicType(name: "Int32", size: 4)
!48 = !DILocation(line: 9, column: 9, scope: !45)
!49 = !DILocation(line: 9, column: 18, scope: !45)
!50 = !DILocalVariable(name: "test_", scope: !45, file: !2, line: 10, type: !10)
!51 = !DILocation(line: 10, column: 9, scope: !45)
!52 = !DILocation(line: 10, column: 17, scope: !45)
!53 = !DILocation(line: 11, column: 5, scope: !45)
!54 = !DILocalVariable(name: "$BoolUtils.andb_56", scope: !45, file: !2, line: 11, type: !10)
!55 = !DILocation(line: 12, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !46, file: !2, line: 12, column: 5)
!57 = !DILocalVariable(name: "$input_7", scope: !24, file: !2, line: 16, type: !47)
!58 = !DILocation(line: 16, column: 5, scope: !24)
!59 = !DILocation(line: 16, column: 13, scope: !24)
!60 = !DILocalVariable(name: "$resopt_8", scope: !24, file: !2, line: 17, type: !37)
!61 = !DILocation(line: 17, column: 5, scope: !24)
!62 = !DILocation(line: 17, column: 14, scope: !24)
!63 = !DILocalVariable(name: "$test_9", scope: !24, file: !2, line: 18, type: !10)
!64 = !DILocation(line: 18, column: 5, scope: !24)
!65 = !DILocation(line: 19, column: 3, scope: !24)
!66 = !DILocalVariable(name: "input_", scope: !67, file: !2, line: 21, type: !47)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 20, column: 5)
!68 = distinct !DILexicalBlock(scope: !24, file: !2, line: 19, column: 3)
!69 = !DILocation(line: 21, column: 9, scope: !67)
!70 = !DILocation(line: 21, column: 18, scope: !67)
!71 = !DILocalVariable(name: "test_", scope: !67, file: !2, line: 22, type: !10)
!72 = !DILocation(line: 22, column: 9, scope: !67)
!73 = !DILocation(line: 22, column: 17, scope: !67)
!74 = !DILocation(line: 23, column: 5, scope: !67)
!75 = !DILocalVariable(name: "$BoolUtils.andb_58", scope: !67, file: !2, line: 23, type: !10)
!76 = !DILocation(line: 24, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 5)
!78 = !DILocalVariable(name: "$input_10", scope: !24, file: !2, line: 28, type: !79)
!79 = !DIBasicType(name: "String", size: 16)
!80 = !DILocation(line: 28, column: 5, scope: !24)
!81 = !DILocation(line: 28, column: 18, scope: !24)
!82 = !DILocalVariable(name: "$resopt_11", scope: !24, file: !2, line: 29, type: !37)
!83 = !DILocation(line: 29, column: 5, scope: !24)
!84 = !DILocation(line: 29, column: 14, scope: !24)
!85 = !DILocalVariable(name: "$test_12", scope: !24, file: !2, line: 30, type: !10)
!86 = !DILocation(line: 30, column: 5, scope: !24)
!87 = !DILocation(line: 31, column: 3, scope: !24)
!88 = !DILocalVariable(name: "input_", scope: !89, file: !2, line: 33, type: !47)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 32, column: 5)
!90 = distinct !DILexicalBlock(scope: !24, file: !2, line: 31, column: 3)
!91 = !DILocation(line: 33, column: 9, scope: !89)
!92 = !DILocation(line: 33, column: 18, scope: !89)
!93 = !DILocalVariable(name: "test_", scope: !89, file: !2, line: 34, type: !10)
!94 = !DILocation(line: 34, column: 9, scope: !89)
!95 = !DILocation(line: 34, column: 17, scope: !89)
!96 = !DILocation(line: 35, column: 5, scope: !89)
!97 = !DILocalVariable(name: "$BoolUtils.andb_60", scope: !89, file: !2, line: 35, type: !10)
!98 = !DILocation(line: 36, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !90, file: !2, line: 36, column: 5)
!100 = !DILocalVariable(name: "$input_13", scope: !24, file: !2, line: 40, type: !101)
!101 = !DIBasicType(name: "Uint128", size: 16)
!102 = !DILocation(line: 40, column: 5, scope: !24)
!103 = !DILocation(line: 40, column: 13, scope: !24)
!104 = !DILocalVariable(name: "$resopt_14", scope: !24, file: !2, line: 41, type: !37)
!105 = !DILocation(line: 41, column: 5, scope: !24)
!106 = !DILocation(line: 41, column: 14, scope: !24)
!107 = !DILocalVariable(name: "$test_15", scope: !24, file: !2, line: 42, type: !10)
!108 = !DILocation(line: 42, column: 5, scope: !24)
!109 = !DILocation(line: 43, column: 3, scope: !24)
!110 = !DILocalVariable(name: "input_", scope: !111, file: !2, line: 45, type: !47)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 44, column: 5)
!112 = distinct !DILexicalBlock(scope: !24, file: !2, line: 43, column: 3)
!113 = !DILocation(line: 45, column: 9, scope: !111)
!114 = !DILocation(line: 45, column: 18, scope: !111)
!115 = !DILocalVariable(name: "test_", scope: !111, file: !2, line: 46, type: !10)
!116 = !DILocation(line: 46, column: 9, scope: !111)
!117 = !DILocation(line: 46, column: 17, scope: !111)
!118 = !DILocation(line: 47, column: 5, scope: !111)
!119 = !DILocalVariable(name: "$BoolUtils.andb_62", scope: !111, file: !2, line: 47, type: !10)
!120 = !DILocation(line: 48, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !112, file: !2, line: 48, column: 5)
!122 = !DILocalVariable(name: "$input_16", scope: !24, file: !2, line: 52, type: !123)
!123 = !DIBasicType(name: "Int128", size: 16)
!124 = !DILocation(line: 52, column: 5, scope: !24)
!125 = !DILocation(line: 52, column: 13, scope: !24)
!126 = !DILocalVariable(name: "$resopt_17", scope: !24, file: !2, line: 53, type: !37)
!127 = !DILocation(line: 53, column: 5, scope: !24)
!128 = !DILocation(line: 53, column: 14, scope: !24)
!129 = !DILocalVariable(name: "$test_18", scope: !24, file: !2, line: 54, type: !10)
!130 = !DILocation(line: 54, column: 5, scope: !24)
!131 = !DILocation(line: 55, column: 3, scope: !24)
!132 = !DILocalVariable(name: "input_", scope: !133, file: !2, line: 57, type: !47)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 56, column: 5)
!134 = distinct !DILexicalBlock(scope: !24, file: !2, line: 55, column: 3)
!135 = !DILocation(line: 57, column: 9, scope: !133)
!136 = !DILocation(line: 57, column: 18, scope: !133)
!137 = !DILocalVariable(name: "test_", scope: !133, file: !2, line: 58, type: !10)
!138 = !DILocation(line: 58, column: 9, scope: !133)
!139 = !DILocation(line: 58, column: 17, scope: !133)
!140 = !DILocation(line: 59, column: 5, scope: !133)
!141 = !DILocalVariable(name: "$BoolUtils.andb_64", scope: !133, file: !2, line: 59, type: !10)
!142 = !DILocation(line: 60, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !134, file: !2, line: 60, column: 5)
!144 = !DILocalVariable(name: "$input_19", scope: !24, file: !2, line: 64, type: !145)
!145 = !DIBasicType(name: "Int256", size: 32)
!146 = !DILocation(line: 64, column: 5, scope: !24)
!147 = !DILocation(line: 64, column: 13, scope: !24)
!148 = !DILocalVariable(name: "$resopt_20", scope: !24, file: !2, line: 65, type: !37)
!149 = !DILocation(line: 65, column: 5, scope: !24)
!150 = !DILocation(line: 65, column: 14, scope: !24)
!151 = !DILocalVariable(name: "$test_21", scope: !24, file: !2, line: 66, type: !10)
!152 = !DILocation(line: 66, column: 5, scope: !24)
!153 = !DILocation(line: 67, column: 3, scope: !24)
!154 = !DILocalVariable(name: "input_", scope: !155, file: !2, line: 69, type: !47)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 68, column: 5)
!156 = distinct !DILexicalBlock(scope: !24, file: !2, line: 67, column: 3)
!157 = !DILocation(line: 69, column: 9, scope: !155)
!158 = !DILocation(line: 69, column: 18, scope: !155)
!159 = !DILocalVariable(name: "test_", scope: !155, file: !2, line: 70, type: !10)
!160 = !DILocation(line: 70, column: 9, scope: !155)
!161 = !DILocation(line: 70, column: 17, scope: !155)
!162 = !DILocation(line: 71, column: 5, scope: !155)
!163 = !DILocalVariable(name: "$BoolUtils.andb_66", scope: !155, file: !2, line: 71, type: !10)
!164 = !DILocation(line: 72, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !156, file: !2, line: 72, column: 5)
!166 = !DILocalVariable(name: "$input_22", scope: !24, file: !2, line: 76, type: !167)
!167 = !DIBasicType(name: "Uint64", size: 8)
!168 = !DILocation(line: 76, column: 5, scope: !24)
!169 = !DILocation(line: 76, column: 13, scope: !24)
!170 = !DILocalVariable(name: "$resopt_23", scope: !24, file: !2, line: 77, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int64)", baseType: !172, size: 8, align: 8, dwarfAddressSpace: 0)
!172 = !DIBasicType(name: "Option (Int64)", size: 8)
!173 = !DILocation(line: 77, column: 5, scope: !24)
!174 = !DILocation(line: 77, column: 14, scope: !24)
!175 = !DILocalVariable(name: "$test_24", scope: !24, file: !2, line: 78, type: !10)
!176 = !DILocation(line: 78, column: 5, scope: !24)
!177 = !DILocation(line: 79, column: 3, scope: !24)
!178 = !DILocation(line: 80, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 80, column: 5)
!180 = distinct !DILexicalBlock(scope: !24, file: !2, line: 79, column: 3)
!181 = !DILocation(line: 81, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !180, file: !2, line: 81, column: 5)
!183 = !DILocalVariable(name: "$input_25", scope: !24, file: !2, line: 85, type: !79)
!184 = !DILocation(line: 85, column: 5, scope: !24)
!185 = !DILocation(line: 85, column: 33, scope: !24)
!186 = !DILocalVariable(name: "$resopt_26", scope: !24, file: !2, line: 86, type: !171)
!187 = !DILocation(line: 86, column: 5, scope: !24)
!188 = !DILocation(line: 86, column: 14, scope: !24)
!189 = !DILocalVariable(name: "$test_27", scope: !24, file: !2, line: 87, type: !10)
!190 = !DILocation(line: 87, column: 5, scope: !24)
!191 = !DILocation(line: 88, column: 3, scope: !24)
!192 = !DILocation(line: 89, column: 15, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 89, column: 5)
!194 = distinct !DILexicalBlock(scope: !24, file: !2, line: 88, column: 3)
!195 = !DILocation(line: 90, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !2, line: 90, column: 5)
!197 = !DILocalVariable(name: "$input_28", scope: !24, file: !2, line: 94, type: !167)
!198 = !DILocation(line: 94, column: 5, scope: !24)
!199 = !DILocation(line: 94, column: 13, scope: !24)
!200 = !DILocalVariable(name: "$resopt_29", scope: !24, file: !2, line: 95, type: !171)
!201 = !DILocation(line: 95, column: 5, scope: !24)
!202 = !DILocation(line: 95, column: 14, scope: !24)
!203 = !DILocalVariable(name: "$test_30", scope: !24, file: !2, line: 96, type: !10)
!204 = !DILocation(line: 96, column: 5, scope: !24)
!205 = !DILocation(line: 97, column: 3, scope: !24)
!206 = !DILocalVariable(name: "input_", scope: !207, file: !2, line: 99, type: !209)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 98, column: 5)
!208 = distinct !DILexicalBlock(scope: !24, file: !2, line: 97, column: 3)
!209 = !DIBasicType(name: "Int64", size: 8)
!210 = !DILocation(line: 99, column: 9, scope: !207)
!211 = !DILocation(line: 99, column: 18, scope: !207)
!212 = !DILocalVariable(name: "test_", scope: !207, file: !2, line: 100, type: !10)
!213 = !DILocation(line: 100, column: 9, scope: !207)
!214 = !DILocation(line: 100, column: 17, scope: !207)
!215 = !DILocation(line: 101, column: 5, scope: !207)
!216 = !DILocalVariable(name: "$BoolUtils.andb_68", scope: !207, file: !2, line: 101, type: !10)
!217 = !DILocation(line: 102, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !208, file: !2, line: 102, column: 5)
!219 = !DILocalVariable(name: "$input_31", scope: !24, file: !2, line: 106, type: !123)
!220 = !DILocation(line: 106, column: 5, scope: !24)
!221 = !DILocation(line: 106, column: 13, scope: !24)
!222 = !DILocalVariable(name: "$resopt_32", scope: !24, file: !2, line: 107, type: !171)
!223 = !DILocation(line: 107, column: 5, scope: !24)
!224 = !DILocation(line: 107, column: 14, scope: !24)
!225 = !DILocalVariable(name: "$test_33", scope: !24, file: !2, line: 108, type: !10)
!226 = !DILocation(line: 108, column: 5, scope: !24)
!227 = !DILocation(line: 109, column: 3, scope: !24)
!228 = !DILocalVariable(name: "input_", scope: !229, file: !2, line: 111, type: !209)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 110, column: 5)
!230 = distinct !DILexicalBlock(scope: !24, file: !2, line: 109, column: 3)
!231 = !DILocation(line: 111, column: 9, scope: !229)
!232 = !DILocation(line: 111, column: 18, scope: !229)
!233 = !DILocalVariable(name: "test_", scope: !229, file: !2, line: 112, type: !10)
!234 = !DILocation(line: 112, column: 9, scope: !229)
!235 = !DILocation(line: 112, column: 17, scope: !229)
!236 = !DILocation(line: 113, column: 5, scope: !229)
!237 = !DILocalVariable(name: "$BoolUtils.andb_70", scope: !229, file: !2, line: 113, type: !10)
!238 = !DILocation(line: 114, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !230, file: !2, line: 114, column: 5)
!240 = !DILocalVariable(name: "$input_34", scope: !24, file: !2, line: 118, type: !79)
!241 = !DILocation(line: 118, column: 5, scope: !24)
!242 = !DILocation(line: 118, column: 34, scope: !24)
!243 = !DILocalVariable(name: "$resopt_35", scope: !24, file: !2, line: 119, type: !171)
!244 = !DILocation(line: 119, column: 5, scope: !24)
!245 = !DILocation(line: 119, column: 14, scope: !24)
!246 = !DILocalVariable(name: "$test_36", scope: !24, file: !2, line: 120, type: !10)
!247 = !DILocation(line: 120, column: 5, scope: !24)
!248 = !DILocation(line: 121, column: 3, scope: !24)
!249 = !DILocalVariable(name: "input_", scope: !250, file: !2, line: 123, type: !209)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 122, column: 5)
!251 = distinct !DILexicalBlock(scope: !24, file: !2, line: 121, column: 3)
!252 = !DILocation(line: 123, column: 9, scope: !250)
!253 = !DILocation(line: 123, column: 18, scope: !250)
!254 = !DILocalVariable(name: "test_", scope: !250, file: !2, line: 124, type: !10)
!255 = !DILocation(line: 124, column: 9, scope: !250)
!256 = !DILocation(line: 124, column: 17, scope: !250)
!257 = !DILocation(line: 125, column: 5, scope: !250)
!258 = !DILocalVariable(name: "$BoolUtils.andb_72", scope: !250, file: !2, line: 125, type: !10)
!259 = !DILocation(line: 126, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !2, line: 126, column: 5)
!261 = !DILocalVariable(name: "$input_37", scope: !24, file: !2, line: 130, type: !167)
!262 = !DILocation(line: 130, column: 5, scope: !24)
!263 = !DILocation(line: 130, column: 13, scope: !24)
!264 = !DILocalVariable(name: "$resopt_38", scope: !24, file: !2, line: 131, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int256)", baseType: !266, size: 8, align: 8, dwarfAddressSpace: 0)
!266 = !DIBasicType(name: "Option (Int256)", size: 8)
!267 = !DILocation(line: 131, column: 5, scope: !24)
!268 = !DILocation(line: 131, column: 14, scope: !24)
!269 = !DILocalVariable(name: "$test_39", scope: !24, file: !2, line: 132, type: !10)
!270 = !DILocation(line: 132, column: 5, scope: !24)
!271 = !DILocation(line: 133, column: 3, scope: !24)
!272 = !DILocalVariable(name: "input_", scope: !273, file: !2, line: 135, type: !145)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 134, column: 5)
!274 = distinct !DILexicalBlock(scope: !24, file: !2, line: 133, column: 3)
!275 = !DILocation(line: 135, column: 9, scope: !273)
!276 = !DILocation(line: 135, column: 18, scope: !273)
!277 = !DILocalVariable(name: "test_", scope: !273, file: !2, line: 136, type: !10)
!278 = !DILocation(line: 136, column: 9, scope: !273)
!279 = !DILocation(line: 136, column: 17, scope: !273)
!280 = !DILocation(line: 137, column: 5, scope: !273)
!281 = !DILocalVariable(name: "$BoolUtils.andb_74", scope: !273, file: !2, line: 137, type: !10)
!282 = !DILocation(line: 138, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !274, file: !2, line: 138, column: 5)
!284 = !DILocalVariable(name: "$input_40", scope: !24, file: !2, line: 142, type: !79)
!285 = !DILocation(line: 142, column: 5, scope: !24)
!286 = !DILocation(line: 142, column: 33, scope: !24)
!287 = !DILocalVariable(name: "$resopt_41", scope: !24, file: !2, line: 143, type: !265)
!288 = !DILocation(line: 143, column: 5, scope: !24)
!289 = !DILocation(line: 143, column: 14, scope: !24)
!290 = !DILocalVariable(name: "$test_42", scope: !24, file: !2, line: 144, type: !10)
!291 = !DILocation(line: 144, column: 5, scope: !24)
!292 = !DILocation(line: 145, column: 3, scope: !24)
!293 = !DILocalVariable(name: "input_", scope: !294, file: !2, line: 147, type: !145)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 146, column: 5)
!295 = distinct !DILexicalBlock(scope: !24, file: !2, line: 145, column: 3)
!296 = !DILocation(line: 147, column: 9, scope: !294)
!297 = !DILocation(line: 147, column: 18, scope: !294)
!298 = !DILocalVariable(name: "test_", scope: !294, file: !2, line: 148, type: !10)
!299 = !DILocation(line: 148, column: 9, scope: !294)
!300 = !DILocation(line: 148, column: 17, scope: !294)
!301 = !DILocation(line: 149, column: 5, scope: !294)
!302 = !DILocalVariable(name: "$BoolUtils.andb_76", scope: !294, file: !2, line: 149, type: !10)
!303 = !DILocation(line: 150, column: 13, scope: !304)
!304 = distinct !DILexicalBlock(scope: !295, file: !2, line: 150, column: 5)
!305 = !DILocalVariable(name: "$input_43", scope: !24, file: !2, line: 154, type: !306)
!306 = !DIBasicType(name: "Uint256", size: 32)
!307 = !DILocation(line: 154, column: 5, scope: !24)
!308 = !DILocation(line: 154, column: 13, scope: !24)
!309 = !DILocalVariable(name: "$resopt_44", scope: !24, file: !2, line: 155, type: !265)
!310 = !DILocation(line: 155, column: 5, scope: !24)
!311 = !DILocation(line: 155, column: 14, scope: !24)
!312 = !DILocalVariable(name: "$test_45", scope: !24, file: !2, line: 156, type: !10)
!313 = !DILocation(line: 156, column: 5, scope: !24)
!314 = !DILocation(line: 157, column: 3, scope: !24)
!315 = !DILocalVariable(name: "input_", scope: !316, file: !2, line: 159, type: !145)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 158, column: 5)
!317 = distinct !DILexicalBlock(scope: !24, file: !2, line: 157, column: 3)
!318 = !DILocation(line: 159, column: 9, scope: !316)
!319 = !DILocation(line: 159, column: 18, scope: !316)
!320 = !DILocalVariable(name: "test_", scope: !316, file: !2, line: 160, type: !10)
!321 = !DILocation(line: 160, column: 9, scope: !316)
!322 = !DILocation(line: 160, column: 17, scope: !316)
!323 = !DILocation(line: 161, column: 5, scope: !316)
!324 = !DILocalVariable(name: "$BoolUtils.andb_78", scope: !316, file: !2, line: 161, type: !10)
!325 = !DILocation(line: 162, column: 13, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !2, line: 162, column: 5)
!327 = !DILocalVariable(name: "$input_46", scope: !24, file: !2, line: 166, type: !79)
!328 = !DILocation(line: 166, column: 5, scope: !24)
!329 = !DILocation(line: 166, column: 91, scope: !24)
!330 = !DILocalVariable(name: "$resopt_47", scope: !24, file: !2, line: 167, type: !265)
!331 = !DILocation(line: 167, column: 5, scope: !24)
!332 = !DILocation(line: 167, column: 14, scope: !24)
!333 = !DILocalVariable(name: "$test_48", scope: !24, file: !2, line: 168, type: !10)
!334 = !DILocation(line: 168, column: 5, scope: !24)
!335 = !DILocation(line: 169, column: 3, scope: !24)
!336 = !DILocalVariable(name: "input_", scope: !337, file: !2, line: 171, type: !145)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 170, column: 5)
!338 = distinct !DILexicalBlock(scope: !24, file: !2, line: 169, column: 3)
!339 = !DILocation(line: 171, column: 9, scope: !337)
!340 = !DILocation(line: 171, column: 18, scope: !337)
!341 = !DILocalVariable(name: "test_", scope: !337, file: !2, line: 172, type: !10)
!342 = !DILocation(line: 172, column: 9, scope: !337)
!343 = !DILocation(line: 172, column: 17, scope: !337)
!344 = !DILocation(line: 173, column: 5, scope: !337)
!345 = !DILocalVariable(name: "$BoolUtils.andb_80", scope: !337, file: !2, line: 173, type: !10)
!346 = !DILocation(line: 174, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !338, file: !2, line: 174, column: 5)
!348 = !DILocalVariable(name: "$input_49", scope: !24, file: !2, line: 178, type: !79)
!349 = !DILocation(line: 178, column: 5, scope: !24)
!350 = !DILocation(line: 178, column: 18, scope: !24)
!351 = !DILocalVariable(name: "$resopt_50", scope: !24, file: !2, line: 179, type: !171)
!352 = !DILocation(line: 179, column: 5, scope: !24)
!353 = !DILocation(line: 179, column: 14, scope: !24)
!354 = !DILocalVariable(name: "$test_51", scope: !24, file: !2, line: 180, type: !10)
!355 = !DILocation(line: 180, column: 5, scope: !24)
!356 = !DILocation(line: 181, column: 3, scope: !24)
!357 = !DILocation(line: 182, column: 15, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 182, column: 5)
!359 = distinct !DILexicalBlock(scope: !24, file: !2, line: 181, column: 3)
!360 = !DILocation(line: 183, column: 13, scope: !361)
!361 = distinct !DILexicalBlock(scope: !359, file: !2, line: 183, column: 5)
!362 = !DILocation(line: 187, column: 1, scope: !24)
