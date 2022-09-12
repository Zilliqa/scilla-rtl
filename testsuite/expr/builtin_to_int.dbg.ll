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
%"$ParamDescr_1705" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1706" = type { %ParamDescrString, i32, %"$ParamDescr_1705"* }
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
@"$stringlit_476" = unnamed_addr constant [4 x i8] c"1844"
@"$stringlit_912" = unnamed_addr constant [19 x i8] c"9223372036854775808"
@"$stringlit_1160" = unnamed_addr constant [20 x i8] c"-9223372036854775808"
@"$stringlit_1352" = unnamed_addr constant [19 x i8] c"9223372036854775807"
@"$stringlit_1547" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1645" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_120", %_TyDescrTy_Typ* @"$TyDescr_Event_110", %_TyDescrTy_Typ* @"$TyDescr_Int64_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_123", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int64_121", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", %_TyDescrTy_Typ* @"$TyDescr_Bnum_106", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_122", %_TyDescrTy_Typ* @"$TyDescr_Exception_112", %_TyDescrTy_Typ* @"$TyDescr_String_104", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", %_TyDescrTy_Typ* @"$TyDescr_Bystr_116", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_114", %_TyDescrTy_Typ* @"$TyDescr_Message_108", %_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_1705"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1706"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_169"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_213" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_213", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_213", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_83_env_b_183" = getelementptr inbounds %"$$fundef_83_env_169", %"$$fundef_83_env_169"* %0, i32 0, i32 0
  %"$b_envload_184" = load %TName_Bool*, %TName_Bool** %"$$fundef_83_env_b_183", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_184", %TName_Bool** %b, align 8
  %"$retval_84" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_84", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 2, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %entry
  %"$consume_189" = sub i64 %"$gasrem_185", 2
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$b_191" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_192" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_191", i32 0, i32 0
  %"$b_tag_193" = load i8, i8* %"$b_tag_192", align 1
  switch i8 %"$b_tag_193", label %"$empty_default_194" [
    i8 1, label %"$False_195"
    i8 0, label %"$True_205"
  ], !dbg !14

"$False_195":                                     ; preds = %"$have_gas_188"
  %"$b_196" = bitcast %TName_Bool* %"$b_191" to %CName_False*
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$False_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$False_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$adtval_202_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_202_salloc" = call i8* @_salloc(i8* %"$adtval_202_load", i64 1)
  %"$adtval_202" = bitcast i8* %"$adtval_202_salloc" to %CName_False*
  %"$adtgep_203" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_202", i32 0, i32 0
  store i8 1, i8* %"$adtgep_203", align 1
  %"$adtptr_204" = bitcast %CName_False* %"$adtval_202" to %TName_Bool*
  store %TName_Bool* %"$adtptr_204", %TName_Bool** %"$retval_84", align 8, !dbg !15
  br label %"$matchsucc_190"

"$True_205":                                      ; preds = %"$have_gas_188"
  %"$b_206" = bitcast %TName_Bool* %"$b_191" to %CName_True*
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$True_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$True_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_84", align 8, !dbg !18
  br label %"$matchsucc_190"

"$empty_default_194":                             ; preds = %"$have_gas_188"
  br label %"$matchsucc_190"

"$matchsucc_190":                                 ; preds = %"$have_gas_210", %"$have_gas_200", %"$empty_default_194"
  %"$$retval_84_212" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_212"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_170"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_182" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_182", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_182", metadata !21, metadata !DIExpression()), !dbg !22
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_83_cloval_179", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8, !dbg !23
  %"$$retval_82_181" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_82_181"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 5, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %entry
  %"$consume_218" = sub i64 %"$gasrem_214", 5
  store i64 %"$consume_218", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 7, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 7
  store i64 %"$consume_223", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_81_env_170"*, %TName_Bool*)* @"$fundef_81" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 196, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_227"
  %"$consume_236" = sub i64 %"$gasrem_232", 196
  store i64 %"$consume_236", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 20, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 20
  store i64 %"$consume_241", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 12, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 12
  store i64 %"$consume_246", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 2, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 2
  store i64 %"$consume_251", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_85" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_85", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %entry
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %false, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$adtval_262_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_262_salloc" = call i8* @_salloc(i8* %"$adtval_262_load", i64 1)
  %"$adtval_262" = bitcast i8* %"$adtval_262_salloc" to %CName_False*
  %"$adtgep_263" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_262", i32 0, i32 0
  store i8 1, i8* %"$adtgep_263", align 1
  %"$adtptr_264" = bitcast %CName_False* %"$adtval_262" to %TName_Bool*
  store %TName_Bool* %"$adtptr_264", %TName_Bool** %false, align 8, !dbg !30
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_260"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !33, metadata !DIExpression()), !dbg !34
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$adtval_275_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_275_salloc" = call i8* @_salloc(i8* %"$adtval_275_load", i64 1)
  %"$adtval_275" = bitcast i8* %"$adtval_275_salloc" to %CName_True*
  %"$adtgep_276" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_275", i32 0, i32 0
  store i8 0, i8* %"$adtgep_276", align 1
  %"$adtptr_277" = bitcast %CName_True* %"$adtval_275" to %TName_Bool*
  store %TName_Bool* %"$adtptr_277", %TName_Bool** %test, align 8, !dbg !35
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_273"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input, metadata !36, metadata !DIExpression()), !dbg !38
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4, !dbg !39
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %resopt, metadata !40, metadata !DIExpression()), !dbg !43
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
  %"$to_int32_input_299" = alloca %Uint32, align 8
  %"$input_300" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_300", %Uint32* %"$to_int32_input_299", align 4
  %"$$to_int32_input_299_301" = bitcast %Uint32* %"$to_int32_input_299" to i8*
  %"$to_int32_call_302" = call i8* @_to_int32(i8* %"$execptr_load_298", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", i8* %"$$to_int32_input_299_301"), !dbg !44
  %"$to_int32_303" = bitcast i8* %"$to_int32_call_302" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_303", %TName_Option_Int32** %resopt, align 8, !dbg !44
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_296"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 2, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 2
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$resopt_315" = load %TName_Option_Int32*, %TName_Option_Int32** %resopt, align 8
  %"$resopt_tag_316" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$resopt_315", i32 0, i32 0
  %"$resopt_tag_317" = load i8, i8* %"$resopt_tag_316", align 1
  switch i8 %"$resopt_tag_317", label %"$empty_default_318" [
    i8 0, label %"$Some_319"
    i8 1, label %"$None_364"
  ], !dbg !47

"$Some_319":                                      ; preds = %"$have_gas_312"
  %"$resopt_320" = bitcast %TName_Option_Int32* %"$resopt_315" to %CName_Some_Int32*
  %"$res_gep_321" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$resopt_320", i32 0, i32 1
  %"$res_load_322" = load %Int32, %Int32* %"$res_gep_321", align 4
  %res = alloca %Int32, align 8
  store %Int32 %"$res_load_322", %Int32* %res, align 4
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$Some_319"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$Some_319"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %input_ = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_, metadata !48, metadata !DIExpression()), !dbg !52
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_, align 4, !dbg !53
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !54, metadata !DIExpression()), !dbg !55
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 4, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 4
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$execptr_load_343" = load i8*, i8** @_execptr, align 8
  %"$res_344" = load %Int32, %Int32* %res, align 4
  %"$input__345" = load %Int32, %Int32* %input_, align 4
  %"$eq_call_346" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_343", %Int32 %"$res_344", %Int32 %"$input__345"), !dbg !56
  store %TName_Bool* %"$eq_call_346", %TName_Bool** %test_, align 8, !dbg !56
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_341"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_353" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_354" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_353", 0
  %"$BoolUtils.andb_envptr_355" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_353", 1
  %"$test_356" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_357" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_354"(i8* %"$BoolUtils.andb_envptr_355", %TName_Bool* %"$test_356"), !dbg !57
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_357", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8, !dbg !57
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_56", metadata !58, metadata !DIExpression()), !dbg !57
  %"$$BoolUtils.andb_55_358" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_359" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_358", 0
  %"$$BoolUtils.andb_55_envptr_360" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_358", 1
  %"$test__361" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_55_call_362" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_359"(i8* %"$$BoolUtils.andb_55_envptr_360", %TName_Bool* %"$test__361"), !dbg !57
  store %TName_Bool* %"$$BoolUtils.andb_55_call_362", %TName_Bool** %"$BoolUtils.andb_56", align 8, !dbg !57
  %"$$BoolUtils.andb_56_363" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_363", %TName_Bool** %"$test_6", align 8, !dbg !57
  br label %"$matchsucc_314"

"$None_364":                                      ; preds = %"$have_gas_312"
  %"$resopt_365" = bitcast %TName_Option_Int32* %"$resopt_315" to %CName_None_Int32*
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$None_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$None_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$false_371" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_371", %TName_Bool** %"$test_6", align 8, !dbg !59
  br label %"$matchsucc_314"

"$empty_default_318":                             ; preds = %"$have_gas_312"
  br label %"$matchsucc_314"

"$matchsucc_314":                                 ; preds = %"$have_gas_369", %"$have_gas_351", %"$empty_default_318"
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$matchsucc_314"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$matchsucc_314"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$input_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$input_7", metadata !61, metadata !DIExpression()), !dbg !62
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$input_7", align 4, !dbg !63
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_8", metadata !64, metadata !DIExpression()), !dbg !65
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 4, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 4
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$execptr_load_392" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_7_393" = alloca %Int32, align 8
  %"$$input_7_394" = load %Int32, %Int32* %"$input_7", align 4
  store %Int32 %"$$input_7_394", %Int32* %"$to_int32_$input_7_393", align 4
  %"$$to_int32_$input_7_393_395" = bitcast %Int32* %"$to_int32_$input_7_393" to i8*
  %"$to_int32_call_396" = call i8* @_to_int32(i8* %"$execptr_load_392", %_TyDescrTy_Typ* @"$TyDescr_Int32_88", i8* %"$$to_int32_$input_7_393_395"), !dbg !66
  %"$to_int32_397" = bitcast i8* %"$to_int32_call_396" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_397", %TName_Option_Int32** %"$resopt_8", align 8, !dbg !66
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_390"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_9", metadata !67, metadata !DIExpression()), !dbg !68
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 2, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 2
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$$resopt_8_409" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_8", align 8
  %"$$resopt_8_tag_410" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_8_409", i32 0, i32 0
  %"$$resopt_8_tag_411" = load i8, i8* %"$$resopt_8_tag_410", align 1
  switch i8 %"$$resopt_8_tag_411", label %"$empty_default_412" [
    i8 0, label %"$Some_413"
    i8 1, label %"$None_458"
  ], !dbg !69

"$Some_413":                                      ; preds = %"$have_gas_406"
  %"$$resopt_8_414" = bitcast %TName_Option_Int32* %"$$resopt_8_409" to %CName_Some_Int32*
  %"$res_gep_415" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_8_414", i32 0, i32 1
  %"$res_load_416" = load %Int32, %Int32* %"$res_gep_415", align 4
  %res1 = alloca %Int32, align 8
  store %Int32 %"$res_load_416", %Int32* %res1, align 4
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$Some_413"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$Some_413"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %input_2 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_2, metadata !70, metadata !DIExpression()), !dbg !73
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_2, align 4, !dbg !74
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_3, metadata !75, metadata !DIExpression()), !dbg !76
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 4, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 4
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$execptr_load_437" = load i8*, i8** @_execptr, align 8
  %"$res_438" = load %Int32, %Int32* %res1, align 4
  %"$input__439" = load %Int32, %Int32* %input_2, align 4
  %"$eq_call_440" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_437", %Int32 %"$res_438", %Int32 %"$input__439"), !dbg !77
  store %TName_Bool* %"$eq_call_440", %TName_Bool** %test_3, align 8, !dbg !77
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_435"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_447" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_448" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_447", 0
  %"$BoolUtils.andb_envptr_449" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_447", 1
  %"$$test_6_450" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_451" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_448"(i8* %"$BoolUtils.andb_envptr_449", %TName_Bool* %"$$test_6_450"), !dbg !78
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_451", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8, !dbg !78
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_58", metadata !79, metadata !DIExpression()), !dbg !78
  %"$$BoolUtils.andb_57_452" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_453" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_452", 0
  %"$$BoolUtils.andb_57_envptr_454" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_452", 1
  %"$test__455" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_57_call_456" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_453"(i8* %"$$BoolUtils.andb_57_envptr_454", %TName_Bool* %"$test__455"), !dbg !78
  store %TName_Bool* %"$$BoolUtils.andb_57_call_456", %TName_Bool** %"$BoolUtils.andb_58", align 8, !dbg !78
  %"$$BoolUtils.andb_58_457" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_457", %TName_Bool** %"$test_9", align 8, !dbg !78
  br label %"$matchsucc_408"

"$None_458":                                      ; preds = %"$have_gas_406"
  %"$$resopt_8_459" = bitcast %TName_Option_Int32* %"$$resopt_8_409" to %CName_None_Int32*
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$None_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$None_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$false_465" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_465", %TName_Bool** %"$test_9", align 8, !dbg !80
  br label %"$matchsucc_408"

"$empty_default_412":                             ; preds = %"$have_gas_406"
  br label %"$matchsucc_408"

"$matchsucc_408":                                 ; preds = %"$have_gas_463", %"$have_gas_445", %"$empty_default_412"
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$matchsucc_408"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$matchsucc_408"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$input_10" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_10", metadata !82, metadata !DIExpression()), !dbg !84
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_476", i32 0, i32 0), i32 4 }, %String* %"$input_10", align 8, !dbg !85
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_474"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_11", metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 4, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 4
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$execptr_load_487" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_10_488" = alloca %String, align 8
  %"$$input_10_489" = load %String, %String* %"$input_10", align 8
  store %String %"$$input_10_489", %String* %"$to_int32_$input_10_488", align 8
  %"$$to_int32_$input_10_488_490" = bitcast %String* %"$to_int32_$input_10_488" to i8*
  %"$to_int32_call_491" = call i8* @_to_int32(i8* %"$execptr_load_487", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int32_$input_10_488_490"), !dbg !88
  %"$to_int32_492" = bitcast i8* %"$to_int32_call_491" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_492", %TName_Option_Int32** %"$resopt_11", align 8, !dbg !88
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_485"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 2, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 2
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$$resopt_11_504" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_11", align 8
  %"$$resopt_11_tag_505" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_11_504", i32 0, i32 0
  %"$$resopt_11_tag_506" = load i8, i8* %"$$resopt_11_tag_505", align 1
  switch i8 %"$$resopt_11_tag_506", label %"$empty_default_507" [
    i8 0, label %"$Some_508"
    i8 1, label %"$None_553"
  ], !dbg !91

"$Some_508":                                      ; preds = %"$have_gas_501"
  %"$$resopt_11_509" = bitcast %TName_Option_Int32* %"$$resopt_11_504" to %CName_Some_Int32*
  %"$res_gep_510" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_11_509", i32 0, i32 1
  %"$res_load_511" = load %Int32, %Int32* %"$res_gep_510", align 4
  %res4 = alloca %Int32, align 8
  store %Int32 %"$res_load_511", %Int32* %res4, align 4
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$Some_508"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$Some_508"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %input_5 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_5, metadata !92, metadata !DIExpression()), !dbg !95
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_5, align 4, !dbg !96
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_520"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_6, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 4, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 4
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %"$execptr_load_532" = load i8*, i8** @_execptr, align 8
  %"$res_533" = load %Int32, %Int32* %res4, align 4
  %"$input__534" = load %Int32, %Int32* %input_5, align 4
  %"$eq_call_535" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_532", %Int32 %"$res_533", %Int32 %"$input__534"), !dbg !99
  store %TName_Bool* %"$eq_call_535", %TName_Bool** %test_6, align 8, !dbg !99
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_530"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_542" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_543" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_542", 0
  %"$BoolUtils.andb_envptr_544" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_542", 1
  %"$$test_9_545" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  %"$BoolUtils.andb_call_546" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_543"(i8* %"$BoolUtils.andb_envptr_544", %TName_Bool* %"$$test_9_545"), !dbg !100
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_546", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8, !dbg !100
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_60", metadata !101, metadata !DIExpression()), !dbg !100
  %"$$BoolUtils.andb_59_547" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_548" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_547", 0
  %"$$BoolUtils.andb_59_envptr_549" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_547", 1
  %"$test__550" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_59_call_551" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_548"(i8* %"$$BoolUtils.andb_59_envptr_549", %TName_Bool* %"$test__550"), !dbg !100
  store %TName_Bool* %"$$BoolUtils.andb_59_call_551", %TName_Bool** %"$BoolUtils.andb_60", align 8, !dbg !100
  %"$$BoolUtils.andb_60_552" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_552", %TName_Bool** %"$test_12", align 8, !dbg !100
  br label %"$matchsucc_503"

"$None_553":                                      ; preds = %"$have_gas_501"
  %"$$resopt_11_554" = bitcast %TName_Option_Int32* %"$$resopt_11_504" to %CName_None_Int32*
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$None_553"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$None_553"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %"$false_560" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_560", %TName_Bool** %"$test_12", align 8, !dbg !102
  br label %"$matchsucc_503"

"$empty_default_507":                             ; preds = %"$have_gas_501"
  br label %"$matchsucc_503"

"$matchsucc_503":                                 ; preds = %"$have_gas_558", %"$have_gas_540", %"$empty_default_507"
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$matchsucc_503"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$matchsucc_503"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_13", metadata !104, metadata !DIExpression()), !dbg !106
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_13", align 8, !dbg !107
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_14", metadata !108, metadata !DIExpression()), !dbg !109
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 4, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 4
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$execptr_load_581" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_13_582" = alloca %Uint128, align 8
  %"$$input_13_583" = load %Uint128, %Uint128* %"$input_13", align 8
  store %Uint128 %"$$input_13_583", %Uint128* %"$to_int32_$input_13_582", align 8
  %"$$to_int32_$input_13_582_584" = bitcast %Uint128* %"$to_int32_$input_13_582" to i8*
  %"$to_int32_call_585" = call i8* @_to_int32(i8* %"$execptr_load_581", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", i8* %"$$to_int32_$input_13_582_584"), !dbg !110
  %"$to_int32_586" = bitcast i8* %"$to_int32_call_585" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_586", %TName_Option_Int32** %"$resopt_14", align 8, !dbg !110
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_579"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_15", metadata !111, metadata !DIExpression()), !dbg !112
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 2, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_590"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_590"
  %"$consume_596" = sub i64 %"$gasrem_592", 2
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$$resopt_14_598" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_14", align 8
  %"$$resopt_14_tag_599" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_14_598", i32 0, i32 0
  %"$$resopt_14_tag_600" = load i8, i8* %"$$resopt_14_tag_599", align 1
  switch i8 %"$$resopt_14_tag_600", label %"$empty_default_601" [
    i8 0, label %"$Some_602"
    i8 1, label %"$None_647"
  ], !dbg !113

"$Some_602":                                      ; preds = %"$have_gas_595"
  %"$$resopt_14_603" = bitcast %TName_Option_Int32* %"$$resopt_14_598" to %CName_Some_Int32*
  %"$res_gep_604" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_14_603", i32 0, i32 1
  %"$res_load_605" = load %Int32, %Int32* %"$res_gep_604", align 4
  %res7 = alloca %Int32, align 8
  store %Int32 %"$res_load_605", %Int32* %res7, align 4
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$Some_602"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$Some_602"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %input_8 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_8, metadata !114, metadata !DIExpression()), !dbg !117
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 1, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 1
  store i64 %"$consume_615", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_8, align 4, !dbg !118
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_614"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_9, metadata !119, metadata !DIExpression()), !dbg !120
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 4, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 4
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$execptr_load_626" = load i8*, i8** @_execptr, align 8
  %"$res_627" = load %Int32, %Int32* %res7, align 4
  %"$input__628" = load %Int32, %Int32* %input_8, align 4
  %"$eq_call_629" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_626", %Int32 %"$res_627", %Int32 %"$input__628"), !dbg !121
  store %TName_Bool* %"$eq_call_629", %TName_Bool** %test_9, align 8, !dbg !121
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 1, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_624"
  %"$consume_635" = sub i64 %"$gasrem_631", 1
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_636" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_637" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_636", 0
  %"$BoolUtils.andb_envptr_638" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_636", 1
  %"$$test_12_639" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_640" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_637"(i8* %"$BoolUtils.andb_envptr_638", %TName_Bool* %"$$test_12_639"), !dbg !122
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_640", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !122
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_62", metadata !123, metadata !DIExpression()), !dbg !122
  %"$$BoolUtils.andb_61_641" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_642" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_641", 0
  %"$$BoolUtils.andb_61_envptr_643" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_641", 1
  %"$test__644" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_61_call_645" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_642"(i8* %"$$BoolUtils.andb_61_envptr_643", %TName_Bool* %"$test__644"), !dbg !122
  store %TName_Bool* %"$$BoolUtils.andb_61_call_645", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !122
  %"$$BoolUtils.andb_62_646" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_646", %TName_Bool** %"$test_15", align 8, !dbg !122
  br label %"$matchsucc_597"

"$None_647":                                      ; preds = %"$have_gas_595"
  %"$$resopt_14_648" = bitcast %TName_Option_Int32* %"$$resopt_14_598" to %CName_None_Int32*
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$None_647"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$None_647"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %"$false_654" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_654", %TName_Bool** %"$test_15", align 8, !dbg !124
  br label %"$matchsucc_597"

"$empty_default_601":                             ; preds = %"$have_gas_595"
  br label %"$matchsucc_597"

"$matchsucc_597":                                 ; preds = %"$have_gas_652", %"$have_gas_634", %"$empty_default_601"
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$matchsucc_597"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$matchsucc_597"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$input_16" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$input_16", metadata !126, metadata !DIExpression()), !dbg !128
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_658"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  store %Int128 { i128 1844 }, %Int128* %"$input_16", align 8, !dbg !129
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_663"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_17", metadata !130, metadata !DIExpression()), !dbg !131
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 4, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 4
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$execptr_load_675" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_16_676" = alloca %Int128, align 8
  %"$$input_16_677" = load %Int128, %Int128* %"$input_16", align 8
  store %Int128 %"$$input_16_677", %Int128* %"$to_int32_$input_16_676", align 8
  %"$$to_int32_$input_16_676_678" = bitcast %Int128* %"$to_int32_$input_16_676" to i8*
  %"$to_int32_call_679" = call i8* @_to_int32(i8* %"$execptr_load_675", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", i8* %"$$to_int32_$input_16_676_678"), !dbg !132
  %"$to_int32_680" = bitcast i8* %"$to_int32_call_679" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_680", %TName_Option_Int32** %"$resopt_17", align 8, !dbg !132
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_673"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !133, metadata !DIExpression()), !dbg !134
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 2, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 2
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$$resopt_17_692" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_17", align 8
  %"$$resopt_17_tag_693" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_17_692", i32 0, i32 0
  %"$$resopt_17_tag_694" = load i8, i8* %"$$resopt_17_tag_693", align 1
  switch i8 %"$$resopt_17_tag_694", label %"$empty_default_695" [
    i8 0, label %"$Some_696"
    i8 1, label %"$None_741"
  ], !dbg !135

"$Some_696":                                      ; preds = %"$have_gas_689"
  %"$$resopt_17_697" = bitcast %TName_Option_Int32* %"$$resopt_17_692" to %CName_Some_Int32*
  %"$res_gep_698" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_17_697", i32 0, i32 1
  %"$res_load_699" = load %Int32, %Int32* %"$res_gep_698", align 4
  %res10 = alloca %Int32, align 8
  store %Int32 %"$res_load_699", %Int32* %res10, align 4
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$Some_696"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$Some_696"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %input_11 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_11, metadata !136, metadata !DIExpression()), !dbg !139
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_703"
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_11, align 4, !dbg !140
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_12, metadata !141, metadata !DIExpression()), !dbg !142
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 4, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$have_gas_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 4
  store i64 %"$consume_719", i64* @_gasrem, align 8
  %"$execptr_load_720" = load i8*, i8** @_execptr, align 8
  %"$res_721" = load %Int32, %Int32* %res10, align 4
  %"$input__722" = load %Int32, %Int32* %input_11, align 4
  %"$eq_call_723" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_720", %Int32 %"$res_721", %Int32 %"$input__722"), !dbg !143
  store %TName_Bool* %"$eq_call_723", %TName_Bool** %test_12, align 8, !dbg !143
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_718"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_730" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_731" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_730", 0
  %"$BoolUtils.andb_envptr_732" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_730", 1
  %"$$test_15_733" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  %"$BoolUtils.andb_call_734" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_731"(i8* %"$BoolUtils.andb_envptr_732", %TName_Bool* %"$$test_15_733"), !dbg !144
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_734", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !144
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_64", metadata !145, metadata !DIExpression()), !dbg !144
  %"$$BoolUtils.andb_63_735" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_736" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_735", 0
  %"$$BoolUtils.andb_63_envptr_737" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_735", 1
  %"$test__738" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_63_call_739" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_736"(i8* %"$$BoolUtils.andb_63_envptr_737", %TName_Bool* %"$test__738"), !dbg !144
  store %TName_Bool* %"$$BoolUtils.andb_63_call_739", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !144
  %"$$BoolUtils.andb_64_740" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_740", %TName_Bool** %"$test_18", align 8, !dbg !144
  br label %"$matchsucc_691"

"$None_741":                                      ; preds = %"$have_gas_689"
  %"$$resopt_17_742" = bitcast %TName_Option_Int32* %"$$resopt_17_692" to %CName_None_Int32*
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 1, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$None_741"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$None_741"
  %"$consume_747" = sub i64 %"$gasrem_743", 1
  store i64 %"$consume_747", i64* @_gasrem, align 8
  %"$false_748" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_748", %TName_Bool** %"$test_18", align 8, !dbg !146
  br label %"$matchsucc_691"

"$empty_default_695":                             ; preds = %"$have_gas_689"
  br label %"$matchsucc_691"

"$matchsucc_691":                                 ; preds = %"$have_gas_746", %"$have_gas_728", %"$empty_default_695"
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$matchsucc_691"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$matchsucc_691"
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %"$input_19" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$input_19", metadata !148, metadata !DIExpression()), !dbg !150
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_752"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_752"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$input_19", align 8, !dbg !151
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 1, %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %"$have_gas_757"
  %"$consume_763" = sub i64 %"$gasrem_759", 1
  store i64 %"$consume_763", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$resopt_20", metadata !152, metadata !DIExpression()), !dbg !153
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 4, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_762"
  %"$consume_768" = sub i64 %"$gasrem_764", 4
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$execptr_load_769" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_19_770" = alloca %Int256, align 8
  %"$$input_19_771" = load %Int256, %Int256* %"$input_19", align 8
  store %Int256 %"$$input_19_771", %Int256* %"$to_int32_$input_19_770", align 8
  %"$$to_int32_$input_19_770_772" = bitcast %Int256* %"$to_int32_$input_19_770" to i8*
  %"$to_int32_call_773" = call i8* @_to_int32(i8* %"$execptr_load_769", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", i8* %"$$to_int32_$input_19_770_772"), !dbg !154
  %"$to_int32_774" = bitcast i8* %"$to_int32_call_773" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_774", %TName_Option_Int32** %"$resopt_20", align 8, !dbg !154
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_767"
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_21", metadata !155, metadata !DIExpression()), !dbg !156
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 2, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_778"
  %"$consume_784" = sub i64 %"$gasrem_780", 2
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$$resopt_20_786" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_20", align 8
  %"$$resopt_20_tag_787" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_20_786", i32 0, i32 0
  %"$$resopt_20_tag_788" = load i8, i8* %"$$resopt_20_tag_787", align 1
  switch i8 %"$$resopt_20_tag_788", label %"$empty_default_789" [
    i8 0, label %"$Some_790"
    i8 1, label %"$None_835"
  ], !dbg !157

"$Some_790":                                      ; preds = %"$have_gas_783"
  %"$$resopt_20_791" = bitcast %TName_Option_Int32* %"$$resopt_20_786" to %CName_Some_Int32*
  %"$res_gep_792" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_20_791", i32 0, i32 1
  %"$res_load_793" = load %Int32, %Int32* %"$res_gep_792", align 4
  %res13 = alloca %Int32, align 8
  store %Int32 %"$res_load_793", %Int32* %res13, align 4
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 1, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$Some_790"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$Some_790"
  %"$consume_798" = sub i64 %"$gasrem_794", 1
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %input_14 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %input_14, metadata !158, metadata !DIExpression()), !dbg !161
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_797"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_14, align 4, !dbg !162
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_15, metadata !163, metadata !DIExpression()), !dbg !164
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 4, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_807"
  %"$consume_813" = sub i64 %"$gasrem_809", 4
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %"$execptr_load_814" = load i8*, i8** @_execptr, align 8
  %"$res_815" = load %Int32, %Int32* %res13, align 4
  %"$input__816" = load %Int32, %Int32* %input_14, align 4
  %"$eq_call_817" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_814", %Int32 %"$res_815", %Int32 %"$input__816"), !dbg !165
  store %TName_Bool* %"$eq_call_817", %TName_Bool** %test_15, align 8, !dbg !165
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_812"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_824" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_825" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_824", 0
  %"$BoolUtils.andb_envptr_826" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_824", 1
  %"$$test_18_827" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_828" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_825"(i8* %"$BoolUtils.andb_envptr_826", %TName_Bool* %"$$test_18_827"), !dbg !166
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_828", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !166
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_66", metadata !167, metadata !DIExpression()), !dbg !166
  %"$$BoolUtils.andb_65_829" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_830" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_829", 0
  %"$$BoolUtils.andb_65_envptr_831" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_829", 1
  %"$test__832" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_65_call_833" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_830"(i8* %"$$BoolUtils.andb_65_envptr_831", %TName_Bool* %"$test__832"), !dbg !166
  store %TName_Bool* %"$$BoolUtils.andb_65_call_833", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !166
  %"$$BoolUtils.andb_66_834" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_834", %TName_Bool** %"$test_21", align 8, !dbg !166
  br label %"$matchsucc_785"

"$None_835":                                      ; preds = %"$have_gas_783"
  %"$$resopt_20_836" = bitcast %TName_Option_Int32* %"$$resopt_20_786" to %CName_None_Int32*
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 1, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$None_835"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$None_835"
  %"$consume_841" = sub i64 %"$gasrem_837", 1
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %"$false_842" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_842", %TName_Bool** %"$test_21", align 8, !dbg !168
  br label %"$matchsucc_785"

"$empty_default_789":                             ; preds = %"$have_gas_783"
  br label %"$matchsucc_785"

"$matchsucc_785":                                 ; preds = %"$have_gas_840", %"$have_gas_822", %"$empty_default_789"
  %"$gasrem_843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_844" = icmp ugt i64 1, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$matchsucc_785"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$matchsucc_785"
  %"$consume_847" = sub i64 %"$gasrem_843", 1
  store i64 %"$consume_847", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_22", metadata !170, metadata !DIExpression()), !dbg !172
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_846"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  store %Uint64 { i64 -9223372036854775808 }, %Uint64* %"$input_22", align 8, !dbg !173
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_23", metadata !174, metadata !DIExpression()), !dbg !177
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 4, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 4
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$execptr_load_863" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_22_864" = alloca %Uint64, align 8
  %"$$input_22_865" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_865", %Uint64* %"$to_int64_$input_22_864", align 8
  %"$$to_int64_$input_22_864_866" = bitcast %Uint64* %"$to_int64_$input_22_864" to i8*
  %"$to_int64_call_867" = call i8* @_to_int64(i8* %"$execptr_load_863", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int64_$input_22_864_866"), !dbg !178
  %"$to_int64_868" = bitcast i8* %"$to_int64_call_867" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_868", %TName_Option_Int64** %"$resopt_23", align 8, !dbg !178
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_861"
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !179, metadata !DIExpression()), !dbg !180
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 2, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %"$have_gas_872"
  %"$consume_878" = sub i64 %"$gasrem_874", 2
  store i64 %"$consume_878", i64* @_gasrem, align 8
  %"$$resopt_23_880" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_23", align 8
  %"$$resopt_23_tag_881" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_23_880", i32 0, i32 0
  %"$$resopt_23_tag_882" = load i8, i8* %"$$resopt_23_tag_881", align 1
  switch i8 %"$$resopt_23_tag_882", label %"$empty_default_883" [
    i8 0, label %"$Some_884"
    i8 1, label %"$None_894"
  ], !dbg !181

"$Some_884":                                      ; preds = %"$have_gas_877"
  %"$$resopt_23_885" = bitcast %TName_Option_Int64* %"$$resopt_23_880" to %CName_Some_Int64*
  %"$$$resopt_23_52_gep_886" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_23_885", i32 0, i32 1
  %"$$$resopt_23_52_load_887" = load %Int64, %Int64* %"$$$resopt_23_52_gep_886", align 8
  %"$$resopt_23_52" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_23_52_load_887", %Int64* %"$$resopt_23_52", align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$Some_884"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$Some_884"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$false_893" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_893", %TName_Bool** %"$test_24", align 8, !dbg !182
  br label %"$matchsucc_879"

"$None_894":                                      ; preds = %"$have_gas_877"
  %"$$resopt_23_895" = bitcast %TName_Option_Int64* %"$$resopt_23_880" to %CName_None_Int64*
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$None_894"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$None_894"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %"$$test_21_901" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  store %TName_Bool* %"$$test_21_901", %TName_Bool** %"$test_24", align 8, !dbg !185
  br label %"$matchsucc_879"

"$empty_default_883":                             ; preds = %"$have_gas_877"
  br label %"$matchsucc_879"

"$matchsucc_879":                                 ; preds = %"$have_gas_899", %"$have_gas_891", %"$empty_default_883"
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$matchsucc_879"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$matchsucc_879"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %"$input_25" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_25", metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_912", i32 0, i32 0), i32 19 }, %String* %"$input_25", align 8, !dbg !189
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_910"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_26", metadata !190, metadata !DIExpression()), !dbg !191
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 4, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_916"
  %"$consume_922" = sub i64 %"$gasrem_918", 4
  store i64 %"$consume_922", i64* @_gasrem, align 8
  %"$execptr_load_923" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_25_924" = alloca %String, align 8
  %"$$input_25_925" = load %String, %String* %"$input_25", align 8
  store %String %"$$input_25_925", %String* %"$to_int64_$input_25_924", align 8
  %"$$to_int64_$input_25_924_926" = bitcast %String* %"$to_int64_$input_25_924" to i8*
  %"$to_int64_call_927" = call i8* @_to_int64(i8* %"$execptr_load_923", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_25_924_926"), !dbg !192
  %"$to_int64_928" = bitcast i8* %"$to_int64_call_927" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_928", %TName_Option_Int64** %"$resopt_26", align 8, !dbg !192
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_921"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_27", metadata !193, metadata !DIExpression()), !dbg !194
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 2, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 2
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$$resopt_26_940" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_26", align 8
  %"$$resopt_26_tag_941" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_26_940", i32 0, i32 0
  %"$$resopt_26_tag_942" = load i8, i8* %"$$resopt_26_tag_941", align 1
  switch i8 %"$$resopt_26_tag_942", label %"$empty_default_943" [
    i8 0, label %"$Some_944"
    i8 1, label %"$None_954"
  ], !dbg !195

"$Some_944":                                      ; preds = %"$have_gas_937"
  %"$$resopt_26_945" = bitcast %TName_Option_Int64* %"$$resopt_26_940" to %CName_Some_Int64*
  %"$$$resopt_26_53_gep_946" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_26_945", i32 0, i32 1
  %"$$$resopt_26_53_load_947" = load %Int64, %Int64* %"$$$resopt_26_53_gep_946", align 8
  %"$$resopt_26_53" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_26_53_load_947", %Int64* %"$$resopt_26_53", align 8
  %"$gasrem_948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$Some_944"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$Some_944"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem, align 8
  %"$false_953" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_953", %TName_Bool** %"$test_27", align 8, !dbg !196
  br label %"$matchsucc_939"

"$None_954":                                      ; preds = %"$have_gas_937"
  %"$$resopt_26_955" = bitcast %TName_Option_Int64* %"$$resopt_26_940" to %CName_None_Int64*
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$None_954"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$None_954"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %"$$test_24_961" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  store %TName_Bool* %"$$test_24_961", %TName_Bool** %"$test_27", align 8, !dbg !199
  br label %"$matchsucc_939"

"$empty_default_943":                             ; preds = %"$have_gas_937"
  br label %"$matchsucc_939"

"$matchsucc_939":                                 ; preds = %"$have_gas_959", %"$have_gas_951", %"$empty_default_943"
  %"$gasrem_962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_963" = icmp ugt i64 1, %"$gasrem_962"
  br i1 %"$gascmp_963", label %"$out_of_gas_964", label %"$have_gas_965"

"$out_of_gas_964":                                ; preds = %"$matchsucc_939"
  call void @_out_of_gas()
  br label %"$have_gas_965"

"$have_gas_965":                                  ; preds = %"$out_of_gas_964", %"$matchsucc_939"
  %"$consume_966" = sub i64 %"$gasrem_962", 1
  store i64 %"$consume_966", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_28", metadata !201, metadata !DIExpression()), !dbg !202
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 1, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$have_gas_965"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$have_gas_965"
  %"$consume_971" = sub i64 %"$gasrem_967", 1
  store i64 %"$consume_971", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_28", align 8, !dbg !203
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 1, %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_970"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_970"
  %"$consume_976" = sub i64 %"$gasrem_972", 1
  store i64 %"$consume_976", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_29", metadata !204, metadata !DIExpression()), !dbg !205
  %"$gasrem_977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_978" = icmp ugt i64 4, %"$gasrem_977"
  br i1 %"$gascmp_978", label %"$out_of_gas_979", label %"$have_gas_980"

"$out_of_gas_979":                                ; preds = %"$have_gas_975"
  call void @_out_of_gas()
  br label %"$have_gas_980"

"$have_gas_980":                                  ; preds = %"$out_of_gas_979", %"$have_gas_975"
  %"$consume_981" = sub i64 %"$gasrem_977", 4
  store i64 %"$consume_981", i64* @_gasrem, align 8
  %"$execptr_load_982" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_28_983" = alloca %Uint64, align 8
  %"$$input_28_984" = load %Uint64, %Uint64* %"$input_28", align 8
  store %Uint64 %"$$input_28_984", %Uint64* %"$to_int64_$input_28_983", align 8
  %"$$to_int64_$input_28_983_985" = bitcast %Uint64* %"$to_int64_$input_28_983" to i8*
  %"$to_int64_call_986" = call i8* @_to_int64(i8* %"$execptr_load_982", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int64_$input_28_983_985"), !dbg !206
  %"$to_int64_987" = bitcast i8* %"$to_int64_call_986" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_987", %TName_Option_Int64** %"$resopt_29", align 8, !dbg !206
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_980"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_980"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !207, metadata !DIExpression()), !dbg !208
  %"$gasrem_993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_994" = icmp ugt i64 2, %"$gasrem_993"
  br i1 %"$gascmp_994", label %"$out_of_gas_995", label %"$have_gas_996"

"$out_of_gas_995":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_996"

"$have_gas_996":                                  ; preds = %"$out_of_gas_995", %"$have_gas_991"
  %"$consume_997" = sub i64 %"$gasrem_993", 2
  store i64 %"$consume_997", i64* @_gasrem, align 8
  %"$$resopt_29_999" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_29", align 8
  %"$$resopt_29_tag_1000" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_29_999", i32 0, i32 0
  %"$$resopt_29_tag_1001" = load i8, i8* %"$$resopt_29_tag_1000", align 1
  switch i8 %"$$resopt_29_tag_1001", label %"$empty_default_1002" [
    i8 0, label %"$Some_1003"
    i8 1, label %"$None_1048"
  ], !dbg !209

"$Some_1003":                                     ; preds = %"$have_gas_996"
  %"$$resopt_29_1004" = bitcast %TName_Option_Int64* %"$$resopt_29_999" to %CName_Some_Int64*
  %"$res_gep_1005" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_29_1004", i32 0, i32 1
  %"$res_load_1006" = load %Int64, %Int64* %"$res_gep_1005", align 8
  %res16 = alloca %Int64, align 8
  store %Int64 %"$res_load_1006", %Int64* %res16, align 8
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$Some_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$Some_1003"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %input_17 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %input_17, metadata !210, metadata !DIExpression()), !dbg !214
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1010"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1010"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %input_17, align 8, !dbg !215
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 1, %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_1015"
  %"$consume_1021" = sub i64 %"$gasrem_1017", 1
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_18, metadata !216, metadata !DIExpression()), !dbg !217
  %"$gasrem_1022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1023" = icmp ugt i64 4, %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1020"
  %"$consume_1026" = sub i64 %"$gasrem_1022", 4
  store i64 %"$consume_1026", i64* @_gasrem, align 8
  %"$execptr_load_1027" = load i8*, i8** @_execptr, align 8
  %"$res_1028" = load %Int64, %Int64* %res16, align 8
  %"$input__1029" = load %Int64, %Int64* %input_17, align 8
  %"$eq_call_1030" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1027", %Int64 %"$res_1028", %Int64 %"$input__1029"), !dbg !218
  store %TName_Bool* %"$eq_call_1030", %TName_Bool** %test_18, align 8, !dbg !218
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1025"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1025"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1037" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1038" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1037", 0
  %"$BoolUtils.andb_envptr_1039" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1037", 1
  %"$$test_27_1040" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1041" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1038"(i8* %"$BoolUtils.andb_envptr_1039", %TName_Bool* %"$$test_27_1040"), !dbg !219
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1041", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !219
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_68", metadata !220, metadata !DIExpression()), !dbg !219
  %"$$BoolUtils.andb_67_1042" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_1043" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1042", 0
  %"$$BoolUtils.andb_67_envptr_1044" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1042", 1
  %"$test__1045" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_67_call_1046" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_1043"(i8* %"$$BoolUtils.andb_67_envptr_1044", %TName_Bool* %"$test__1045"), !dbg !219
  store %TName_Bool* %"$$BoolUtils.andb_67_call_1046", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !219
  %"$$BoolUtils.andb_68_1047" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_1047", %TName_Bool** %"$test_30", align 8, !dbg !219
  br label %"$matchsucc_998"

"$None_1048":                                     ; preds = %"$have_gas_996"
  %"$$resopt_29_1049" = bitcast %TName_Option_Int64* %"$$resopt_29_999" to %CName_None_Int64*
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 1, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$None_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$None_1048"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 1
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  %"$false_1055" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1055", %TName_Bool** %"$test_30", align 8, !dbg !221
  br label %"$matchsucc_998"

"$empty_default_1002":                            ; preds = %"$have_gas_996"
  br label %"$matchsucc_998"

"$matchsucc_998":                                 ; preds = %"$have_gas_1053", %"$have_gas_1035", %"$empty_default_1002"
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 1, %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$matchsucc_998"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$matchsucc_998"
  %"$consume_1060" = sub i64 %"$gasrem_1056", 1
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %"$input_31" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$input_31", metadata !223, metadata !DIExpression()), !dbg !224
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$have_gas_1059"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775808 }, %Int128* %"$input_31", align 8, !dbg !225
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1064"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_32", metadata !226, metadata !DIExpression()), !dbg !227
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 4, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 4
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %"$execptr_load_1076" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_31_1077" = alloca %Int128, align 8
  %"$$input_31_1078" = load %Int128, %Int128* %"$input_31", align 8
  store %Int128 %"$$input_31_1078", %Int128* %"$to_int64_$input_31_1077", align 8
  %"$$to_int64_$input_31_1077_1079" = bitcast %Int128* %"$to_int64_$input_31_1077" to i8*
  %"$to_int64_call_1080" = call i8* @_to_int64(i8* %"$execptr_load_1076", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", i8* %"$$to_int64_$input_31_1077_1079"), !dbg !228
  %"$to_int64_1081" = bitcast i8* %"$to_int64_call_1080" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1081", %TName_Option_Int64** %"$resopt_32", align 8, !dbg !228
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1074"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_33", metadata !229, metadata !DIExpression()), !dbg !230
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 2, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1085"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 2
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %"$$resopt_32_1093" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_32", align 8
  %"$$resopt_32_tag_1094" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_32_1093", i32 0, i32 0
  %"$$resopt_32_tag_1095" = load i8, i8* %"$$resopt_32_tag_1094", align 1
  switch i8 %"$$resopt_32_tag_1095", label %"$empty_default_1096" [
    i8 0, label %"$Some_1097"
    i8 1, label %"$None_1142"
  ], !dbg !231

"$Some_1097":                                     ; preds = %"$have_gas_1090"
  %"$$resopt_32_1098" = bitcast %TName_Option_Int64* %"$$resopt_32_1093" to %CName_Some_Int64*
  %"$res_gep_1099" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_32_1098", i32 0, i32 1
  %"$res_load_1100" = load %Int64, %Int64* %"$res_gep_1099", align 8
  %res19 = alloca %Int64, align 8
  store %Int64 %"$res_load_1100", %Int64* %res19, align 8
  %"$gasrem_1101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1102" = icmp ugt i64 1, %"$gasrem_1101"
  br i1 %"$gascmp_1102", label %"$out_of_gas_1103", label %"$have_gas_1104"

"$out_of_gas_1103":                               ; preds = %"$Some_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1104"

"$have_gas_1104":                                 ; preds = %"$out_of_gas_1103", %"$Some_1097"
  %"$consume_1105" = sub i64 %"$gasrem_1101", 1
  store i64 %"$consume_1105", i64* @_gasrem, align 8
  %input_20 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %input_20, metadata !232, metadata !DIExpression()), !dbg !235
  %"$gasrem_1106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1107" = icmp ugt i64 1, %"$gasrem_1106"
  br i1 %"$gascmp_1107", label %"$out_of_gas_1108", label %"$have_gas_1109"

"$out_of_gas_1108":                               ; preds = %"$have_gas_1104"
  call void @_out_of_gas()
  br label %"$have_gas_1109"

"$have_gas_1109":                                 ; preds = %"$out_of_gas_1108", %"$have_gas_1104"
  %"$consume_1110" = sub i64 %"$gasrem_1106", 1
  store i64 %"$consume_1110", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_20, align 8, !dbg !236
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1109"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1109"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_21, metadata !237, metadata !DIExpression()), !dbg !238
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 4, %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1114"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1114"
  %"$consume_1120" = sub i64 %"$gasrem_1116", 4
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  %"$execptr_load_1121" = load i8*, i8** @_execptr, align 8
  %"$res_1122" = load %Int64, %Int64* %res19, align 8
  %"$input__1123" = load %Int64, %Int64* %input_20, align 8
  %"$eq_call_1124" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1121", %Int64 %"$res_1122", %Int64 %"$input__1123"), !dbg !239
  store %TName_Bool* %"$eq_call_1124", %TName_Bool** %test_21, align 8, !dbg !239
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1119"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1131" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1132" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1131", 0
  %"$BoolUtils.andb_envptr_1133" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1131", 1
  %"$$test_30_1134" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1135" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1132"(i8* %"$BoolUtils.andb_envptr_1133", %TName_Bool* %"$$test_30_1134"), !dbg !240
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1135", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !240
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_70", metadata !241, metadata !DIExpression()), !dbg !240
  %"$$BoolUtils.andb_69_1136" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_1137" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1136", 0
  %"$$BoolUtils.andb_69_envptr_1138" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1136", 1
  %"$test__1139" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_69_call_1140" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_1137"(i8* %"$$BoolUtils.andb_69_envptr_1138", %TName_Bool* %"$test__1139"), !dbg !240
  store %TName_Bool* %"$$BoolUtils.andb_69_call_1140", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !240
  %"$$BoolUtils.andb_70_1141" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_1141", %TName_Bool** %"$test_33", align 8, !dbg !240
  br label %"$matchsucc_1092"

"$None_1142":                                     ; preds = %"$have_gas_1090"
  %"$$resopt_32_1143" = bitcast %TName_Option_Int64* %"$$resopt_32_1093" to %CName_None_Int64*
  %"$gasrem_1144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1145" = icmp ugt i64 1, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$None_1142"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$None_1142"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 1
  store i64 %"$consume_1148", i64* @_gasrem, align 8
  %"$false_1149" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1149", %TName_Bool** %"$test_33", align 8, !dbg !242
  br label %"$matchsucc_1092"

"$empty_default_1096":                            ; preds = %"$have_gas_1090"
  br label %"$matchsucc_1092"

"$matchsucc_1092":                                ; preds = %"$have_gas_1147", %"$have_gas_1129", %"$empty_default_1096"
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$matchsucc_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$matchsucc_1092"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$input_34" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_34", metadata !244, metadata !DIExpression()), !dbg !245
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1153"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$stringlit_1160", i32 0, i32 0), i32 20 }, %String* %"$input_34", align 8, !dbg !246
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1158"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_35", metadata !247, metadata !DIExpression()), !dbg !248
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 4, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1164"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 4
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %"$execptr_load_1171" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_34_1172" = alloca %String, align 8
  %"$$input_34_1173" = load %String, %String* %"$input_34", align 8
  store %String %"$$input_34_1173", %String* %"$to_int64_$input_34_1172", align 8
  %"$$to_int64_$input_34_1172_1174" = bitcast %String* %"$to_int64_$input_34_1172" to i8*
  %"$to_int64_call_1175" = call i8* @_to_int64(i8* %"$execptr_load_1171", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_34_1172_1174"), !dbg !249
  %"$to_int64_1176" = bitcast i8* %"$to_int64_call_1175" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1176", %TName_Option_Int64** %"$resopt_35", align 8, !dbg !249
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 1, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$have_gas_1169"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 1
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !250, metadata !DIExpression()), !dbg !251
  %"$gasrem_1182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1183" = icmp ugt i64 2, %"$gasrem_1182"
  br i1 %"$gascmp_1183", label %"$out_of_gas_1184", label %"$have_gas_1185"

"$out_of_gas_1184":                               ; preds = %"$have_gas_1180"
  call void @_out_of_gas()
  br label %"$have_gas_1185"

"$have_gas_1185":                                 ; preds = %"$out_of_gas_1184", %"$have_gas_1180"
  %"$consume_1186" = sub i64 %"$gasrem_1182", 2
  store i64 %"$consume_1186", i64* @_gasrem, align 8
  %"$$resopt_35_1188" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_35", align 8
  %"$$resopt_35_tag_1189" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_35_1188", i32 0, i32 0
  %"$$resopt_35_tag_1190" = load i8, i8* %"$$resopt_35_tag_1189", align 1
  switch i8 %"$$resopt_35_tag_1190", label %"$empty_default_1191" [
    i8 0, label %"$Some_1192"
    i8 1, label %"$None_1237"
  ], !dbg !252

"$Some_1192":                                     ; preds = %"$have_gas_1185"
  %"$$resopt_35_1193" = bitcast %TName_Option_Int64* %"$$resopt_35_1188" to %CName_Some_Int64*
  %"$res_gep_1194" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_35_1193", i32 0, i32 1
  %"$res_load_1195" = load %Int64, %Int64* %"$res_gep_1194", align 8
  %res22 = alloca %Int64, align 8
  store %Int64 %"$res_load_1195", %Int64* %res22, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$Some_1192"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$Some_1192"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %input_23 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %input_23, metadata !253, metadata !DIExpression()), !dbg !256
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1199"
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_23, align 8, !dbg !257
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1204"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_24, metadata !258, metadata !DIExpression()), !dbg !259
  %"$gasrem_1211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1212" = icmp ugt i64 4, %"$gasrem_1211"
  br i1 %"$gascmp_1212", label %"$out_of_gas_1213", label %"$have_gas_1214"

"$out_of_gas_1213":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1214"

"$have_gas_1214":                                 ; preds = %"$out_of_gas_1213", %"$have_gas_1209"
  %"$consume_1215" = sub i64 %"$gasrem_1211", 4
  store i64 %"$consume_1215", i64* @_gasrem, align 8
  %"$execptr_load_1216" = load i8*, i8** @_execptr, align 8
  %"$res_1217" = load %Int64, %Int64* %res22, align 8
  %"$input__1218" = load %Int64, %Int64* %input_23, align 8
  %"$eq_call_1219" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1216", %Int64 %"$res_1217", %Int64 %"$input__1218"), !dbg !260
  store %TName_Bool* %"$eq_call_1219", %TName_Bool** %test_24, align 8, !dbg !260
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %"$have_gas_1214"
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %"$have_gas_1214"
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1226" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1227" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1226", 0
  %"$BoolUtils.andb_envptr_1228" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1226", 1
  %"$$test_33_1229" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1230" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1227"(i8* %"$BoolUtils.andb_envptr_1228", %TName_Bool* %"$$test_33_1229"), !dbg !261
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1230", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !261
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_72", metadata !262, metadata !DIExpression()), !dbg !261
  %"$$BoolUtils.andb_71_1231" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_1232" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1231", 0
  %"$$BoolUtils.andb_71_envptr_1233" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1231", 1
  %"$test__1234" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_71_call_1235" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_1232"(i8* %"$$BoolUtils.andb_71_envptr_1233", %TName_Bool* %"$test__1234"), !dbg !261
  store %TName_Bool* %"$$BoolUtils.andb_71_call_1235", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !261
  %"$$BoolUtils.andb_72_1236" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_1236", %TName_Bool** %"$test_36", align 8, !dbg !261
  br label %"$matchsucc_1187"

"$None_1237":                                     ; preds = %"$have_gas_1185"
  %"$$resopt_35_1238" = bitcast %TName_Option_Int64* %"$$resopt_35_1188" to %CName_None_Int64*
  %"$gasrem_1239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1240" = icmp ugt i64 1, %"$gasrem_1239"
  br i1 %"$gascmp_1240", label %"$out_of_gas_1241", label %"$have_gas_1242"

"$out_of_gas_1241":                               ; preds = %"$None_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1242"

"$have_gas_1242":                                 ; preds = %"$out_of_gas_1241", %"$None_1237"
  %"$consume_1243" = sub i64 %"$gasrem_1239", 1
  store i64 %"$consume_1243", i64* @_gasrem, align 8
  %"$false_1244" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1244", %TName_Bool** %"$test_36", align 8, !dbg !263
  br label %"$matchsucc_1187"

"$empty_default_1191":                            ; preds = %"$have_gas_1185"
  br label %"$matchsucc_1187"

"$matchsucc_1187":                                ; preds = %"$have_gas_1242", %"$have_gas_1224", %"$empty_default_1191"
  %"$gasrem_1245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1246" = icmp ugt i64 1, %"$gasrem_1245"
  br i1 %"$gascmp_1246", label %"$out_of_gas_1247", label %"$have_gas_1248"

"$out_of_gas_1247":                               ; preds = %"$matchsucc_1187"
  call void @_out_of_gas()
  br label %"$have_gas_1248"

"$have_gas_1248":                                 ; preds = %"$out_of_gas_1247", %"$matchsucc_1187"
  %"$consume_1249" = sub i64 %"$gasrem_1245", 1
  store i64 %"$consume_1249", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_37", metadata !265, metadata !DIExpression()), !dbg !266
  %"$gasrem_1250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1251" = icmp ugt i64 1, %"$gasrem_1250"
  br i1 %"$gascmp_1251", label %"$out_of_gas_1252", label %"$have_gas_1253"

"$out_of_gas_1252":                               ; preds = %"$have_gas_1248"
  call void @_out_of_gas()
  br label %"$have_gas_1253"

"$have_gas_1253":                                 ; preds = %"$out_of_gas_1252", %"$have_gas_1248"
  %"$consume_1254" = sub i64 %"$gasrem_1250", 1
  store i64 %"$consume_1254", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_37", align 8, !dbg !267
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1253"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1253"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_38", metadata !268, metadata !DIExpression()), !dbg !271
  %"$gasrem_1260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1261" = icmp ugt i64 16, %"$gasrem_1260"
  br i1 %"$gascmp_1261", label %"$out_of_gas_1262", label %"$have_gas_1263"

"$out_of_gas_1262":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1263"

"$have_gas_1263":                                 ; preds = %"$out_of_gas_1262", %"$have_gas_1258"
  %"$consume_1264" = sub i64 %"$gasrem_1260", 16
  store i64 %"$consume_1264", i64* @_gasrem, align 8
  %"$execptr_load_1265" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_37_1266" = alloca %Uint64, align 8
  %"$$input_37_1267" = load %Uint64, %Uint64* %"$input_37", align 8
  store %Uint64 %"$$input_37_1267", %Uint64* %"$to_int256_$input_37_1266", align 8
  %"$$to_int256_$input_37_1266_1268" = bitcast %Uint64* %"$to_int256_$input_37_1266" to i8*
  %"$to_int256_call_1269" = call i8* @_to_int256(i8* %"$execptr_load_1265", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int256_$input_37_1266_1268"), !dbg !272
  %"$to_int256_1270" = bitcast i8* %"$to_int256_call_1269" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1270", %TName_Option_Int256** %"$resopt_38", align 8, !dbg !272
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 1, %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1263"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1263"
  %"$consume_1275" = sub i64 %"$gasrem_1271", 1
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_39", metadata !273, metadata !DIExpression()), !dbg !274
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 2, %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1274"
  %"$consume_1280" = sub i64 %"$gasrem_1276", 2
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  %"$$resopt_38_1282" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1283" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_38_1282", i32 0, i32 0
  %"$$resopt_38_tag_1284" = load i8, i8* %"$$resopt_38_tag_1283", align 1
  switch i8 %"$$resopt_38_tag_1284", label %"$empty_default_1285" [
    i8 0, label %"$Some_1286"
    i8 1, label %"$None_1334"
  ], !dbg !275

"$Some_1286":                                     ; preds = %"$have_gas_1279"
  %"$$resopt_38_1287" = bitcast %TName_Option_Int256* %"$$resopt_38_1282" to %CName_Some_Int256*
  %"$res_gep_1288" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_38_1287", i32 0, i32 1
  %"$res_load_1289" = load %Int256, %Int256* %"$res_gep_1288", align 8
  %res25 = alloca %Int256, align 8
  store %Int256 %"$res_load_1289", %Int256* %res25, align 8
  %"$gasrem_1290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1291" = icmp ugt i64 1, %"$gasrem_1290"
  br i1 %"$gascmp_1291", label %"$out_of_gas_1292", label %"$have_gas_1293"

"$out_of_gas_1292":                               ; preds = %"$Some_1286"
  call void @_out_of_gas()
  br label %"$have_gas_1293"

"$have_gas_1293":                                 ; preds = %"$out_of_gas_1292", %"$Some_1286"
  %"$consume_1294" = sub i64 %"$gasrem_1290", 1
  store i64 %"$consume_1294", i64* @_gasrem, align 8
  %input_26 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_26, metadata !276, metadata !DIExpression()), !dbg !279
  %"$gasrem_1295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1296" = icmp ugt i64 1, %"$gasrem_1295"
  br i1 %"$gascmp_1296", label %"$out_of_gas_1297", label %"$have_gas_1298"

"$out_of_gas_1297":                               ; preds = %"$have_gas_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1298"

"$have_gas_1298":                                 ; preds = %"$out_of_gas_1297", %"$have_gas_1293"
  %"$consume_1299" = sub i64 %"$gasrem_1295", 1
  store i64 %"$consume_1299", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_26, align 8, !dbg !280
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1298"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1298"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_27, metadata !281, metadata !DIExpression()), !dbg !282
  %"$gasrem_1306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1307" = icmp ugt i64 16, %"$gasrem_1306"
  br i1 %"$gascmp_1307", label %"$out_of_gas_1308", label %"$have_gas_1309"

"$out_of_gas_1308":                               ; preds = %"$have_gas_1303"
  call void @_out_of_gas()
  br label %"$have_gas_1309"

"$have_gas_1309":                                 ; preds = %"$out_of_gas_1308", %"$have_gas_1303"
  %"$consume_1310" = sub i64 %"$gasrem_1306", 16
  store i64 %"$consume_1310", i64* @_gasrem, align 8
  %"$execptr_load_1311" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1312" = alloca %Int256, align 8
  %"$res_1313" = load %Int256, %Int256* %res25, align 8
  store %Int256 %"$res_1313", %Int256* %"$eq_res_1312", align 8
  %"$eq_input__1314" = alloca %Int256, align 8
  %"$input__1315" = load %Int256, %Int256* %input_26, align 8
  store %Int256 %"$input__1315", %Int256* %"$eq_input__1314", align 8
  %"$eq_call_1316" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1311", %Int256* %"$eq_res_1312", %Int256* %"$eq_input__1314"), !dbg !283
  store %TName_Bool* %"$eq_call_1316", %TName_Bool** %test_27, align 8, !dbg !283
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1309"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1323" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1324" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1323", 0
  %"$BoolUtils.andb_envptr_1325" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1323", 1
  %"$$test_36_1326" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1327" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1324"(i8* %"$BoolUtils.andb_envptr_1325", %TName_Bool* %"$$test_36_1326"), !dbg !284
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1327", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !284
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_74", metadata !285, metadata !DIExpression()), !dbg !284
  %"$$BoolUtils.andb_73_1328" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_1329" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1328", 0
  %"$$BoolUtils.andb_73_envptr_1330" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1328", 1
  %"$test__1331" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_73_call_1332" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_1329"(i8* %"$$BoolUtils.andb_73_envptr_1330", %TName_Bool* %"$test__1331"), !dbg !284
  store %TName_Bool* %"$$BoolUtils.andb_73_call_1332", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !284
  %"$$BoolUtils.andb_74_1333" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_1333", %TName_Bool** %"$test_39", align 8, !dbg !284
  br label %"$matchsucc_1281"

"$None_1334":                                     ; preds = %"$have_gas_1279"
  %"$$resopt_38_1335" = bitcast %TName_Option_Int256* %"$$resopt_38_1282" to %CName_None_Int256*
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$None_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$None_1334"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  %"$false_1341" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1341", %TName_Bool** %"$test_39", align 8, !dbg !286
  br label %"$matchsucc_1281"

"$empty_default_1285":                            ; preds = %"$have_gas_1279"
  br label %"$matchsucc_1281"

"$matchsucc_1281":                                ; preds = %"$have_gas_1339", %"$have_gas_1321", %"$empty_default_1285"
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 1, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$matchsucc_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$matchsucc_1281"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 1
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$input_40" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_40", metadata !288, metadata !DIExpression()), !dbg !289
  %"$gasrem_1347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1348" = icmp ugt i64 1, %"$gasrem_1347"
  br i1 %"$gascmp_1348", label %"$out_of_gas_1349", label %"$have_gas_1350"

"$out_of_gas_1349":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1350"

"$have_gas_1350":                                 ; preds = %"$out_of_gas_1349", %"$have_gas_1345"
  %"$consume_1351" = sub i64 %"$gasrem_1347", 1
  store i64 %"$consume_1351", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1352", i32 0, i32 0), i32 19 }, %String* %"$input_40", align 8, !dbg !290
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1350"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1350"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_41", metadata !291, metadata !DIExpression()), !dbg !292
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 16, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1356"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 16
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %"$execptr_load_1363" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_40_1364" = alloca %String, align 8
  %"$$input_40_1365" = load %String, %String* %"$input_40", align 8
  store %String %"$$input_40_1365", %String* %"$to_int256_$input_40_1364", align 8
  %"$$to_int256_$input_40_1364_1366" = bitcast %String* %"$to_int256_$input_40_1364" to i8*
  %"$to_int256_call_1367" = call i8* @_to_int256(i8* %"$execptr_load_1363", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int256_$input_40_1364_1366"), !dbg !293
  %"$to_int256_1368" = bitcast i8* %"$to_int256_call_1367" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1368", %TName_Option_Int256** %"$resopt_41", align 8, !dbg !293
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 1, %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1361"
  %"$consume_1373" = sub i64 %"$gasrem_1369", 1
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !294, metadata !DIExpression()), !dbg !295
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 2, %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$have_gas_1372"
  %"$consume_1378" = sub i64 %"$gasrem_1374", 2
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  %"$$resopt_41_1380" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1381" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_41_1380", i32 0, i32 0
  %"$$resopt_41_tag_1382" = load i8, i8* %"$$resopt_41_tag_1381", align 1
  switch i8 %"$$resopt_41_tag_1382", label %"$empty_default_1383" [
    i8 0, label %"$Some_1384"
    i8 1, label %"$None_1432"
  ], !dbg !296

"$Some_1384":                                     ; preds = %"$have_gas_1377"
  %"$$resopt_41_1385" = bitcast %TName_Option_Int256* %"$$resopt_41_1380" to %CName_Some_Int256*
  %"$res_gep_1386" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_41_1385", i32 0, i32 1
  %"$res_load_1387" = load %Int256, %Int256* %"$res_gep_1386", align 8
  %res28 = alloca %Int256, align 8
  store %Int256 %"$res_load_1387", %Int256* %res28, align 8
  %"$gasrem_1388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1389" = icmp ugt i64 1, %"$gasrem_1388"
  br i1 %"$gascmp_1389", label %"$out_of_gas_1390", label %"$have_gas_1391"

"$out_of_gas_1390":                               ; preds = %"$Some_1384"
  call void @_out_of_gas()
  br label %"$have_gas_1391"

"$have_gas_1391":                                 ; preds = %"$out_of_gas_1390", %"$Some_1384"
  %"$consume_1392" = sub i64 %"$gasrem_1388", 1
  store i64 %"$consume_1392", i64* @_gasrem, align 8
  %input_29 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_29, metadata !297, metadata !DIExpression()), !dbg !300
  %"$gasrem_1393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1394" = icmp ugt i64 1, %"$gasrem_1393"
  br i1 %"$gascmp_1394", label %"$out_of_gas_1395", label %"$have_gas_1396"

"$out_of_gas_1395":                               ; preds = %"$have_gas_1391"
  call void @_out_of_gas()
  br label %"$have_gas_1396"

"$have_gas_1396":                                 ; preds = %"$out_of_gas_1395", %"$have_gas_1391"
  %"$consume_1397" = sub i64 %"$gasrem_1393", 1
  store i64 %"$consume_1397", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_29, align 8, !dbg !301
  %"$gasrem_1398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1399" = icmp ugt i64 1, %"$gasrem_1398"
  br i1 %"$gascmp_1399", label %"$out_of_gas_1400", label %"$have_gas_1401"

"$out_of_gas_1400":                               ; preds = %"$have_gas_1396"
  call void @_out_of_gas()
  br label %"$have_gas_1401"

"$have_gas_1401":                                 ; preds = %"$out_of_gas_1400", %"$have_gas_1396"
  %"$consume_1402" = sub i64 %"$gasrem_1398", 1
  store i64 %"$consume_1402", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_30, metadata !302, metadata !DIExpression()), !dbg !303
  %"$gasrem_1404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1405" = icmp ugt i64 16, %"$gasrem_1404"
  br i1 %"$gascmp_1405", label %"$out_of_gas_1406", label %"$have_gas_1407"

"$out_of_gas_1406":                               ; preds = %"$have_gas_1401"
  call void @_out_of_gas()
  br label %"$have_gas_1407"

"$have_gas_1407":                                 ; preds = %"$out_of_gas_1406", %"$have_gas_1401"
  %"$consume_1408" = sub i64 %"$gasrem_1404", 16
  store i64 %"$consume_1408", i64* @_gasrem, align 8
  %"$execptr_load_1409" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1410" = alloca %Int256, align 8
  %"$res_1411" = load %Int256, %Int256* %res28, align 8
  store %Int256 %"$res_1411", %Int256* %"$eq_res_1410", align 8
  %"$eq_input__1412" = alloca %Int256, align 8
  %"$input__1413" = load %Int256, %Int256* %input_29, align 8
  store %Int256 %"$input__1413", %Int256* %"$eq_input__1412", align 8
  %"$eq_call_1414" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1409", %Int256* %"$eq_res_1410", %Int256* %"$eq_input__1412"), !dbg !304
  store %TName_Bool* %"$eq_call_1414", %TName_Bool** %test_30, align 8, !dbg !304
  %"$gasrem_1416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1417" = icmp ugt i64 1, %"$gasrem_1416"
  br i1 %"$gascmp_1417", label %"$out_of_gas_1418", label %"$have_gas_1419"

"$out_of_gas_1418":                               ; preds = %"$have_gas_1407"
  call void @_out_of_gas()
  br label %"$have_gas_1419"

"$have_gas_1419":                                 ; preds = %"$out_of_gas_1418", %"$have_gas_1407"
  %"$consume_1420" = sub i64 %"$gasrem_1416", 1
  store i64 %"$consume_1420", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1421" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1422" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1421", 0
  %"$BoolUtils.andb_envptr_1423" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1421", 1
  %"$$test_39_1424" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1425" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1422"(i8* %"$BoolUtils.andb_envptr_1423", %TName_Bool* %"$$test_39_1424"), !dbg !305
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1425", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8, !dbg !305
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_76", metadata !306, metadata !DIExpression()), !dbg !305
  %"$$BoolUtils.andb_75_1426" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_1427" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_1426", 0
  %"$$BoolUtils.andb_75_envptr_1428" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_1426", 1
  %"$test__1429" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_75_call_1430" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_1427"(i8* %"$$BoolUtils.andb_75_envptr_1428", %TName_Bool* %"$test__1429"), !dbg !305
  store %TName_Bool* %"$$BoolUtils.andb_75_call_1430", %TName_Bool** %"$BoolUtils.andb_76", align 8, !dbg !305
  %"$$BoolUtils.andb_76_1431" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_1431", %TName_Bool** %"$test_42", align 8, !dbg !305
  br label %"$matchsucc_1379"

"$None_1432":                                     ; preds = %"$have_gas_1377"
  %"$$resopt_41_1433" = bitcast %TName_Option_Int256* %"$$resopt_41_1380" to %CName_None_Int256*
  %"$gasrem_1434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1435" = icmp ugt i64 1, %"$gasrem_1434"
  br i1 %"$gascmp_1435", label %"$out_of_gas_1436", label %"$have_gas_1437"

"$out_of_gas_1436":                               ; preds = %"$None_1432"
  call void @_out_of_gas()
  br label %"$have_gas_1437"

"$have_gas_1437":                                 ; preds = %"$out_of_gas_1436", %"$None_1432"
  %"$consume_1438" = sub i64 %"$gasrem_1434", 1
  store i64 %"$consume_1438", i64* @_gasrem, align 8
  %"$false_1439" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1439", %TName_Bool** %"$test_42", align 8, !dbg !307
  br label %"$matchsucc_1379"

"$empty_default_1383":                            ; preds = %"$have_gas_1377"
  br label %"$matchsucc_1379"

"$matchsucc_1379":                                ; preds = %"$have_gas_1437", %"$have_gas_1419", %"$empty_default_1383"
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 1, %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$matchsucc_1379"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$matchsucc_1379"
  %"$consume_1444" = sub i64 %"$gasrem_1440", 1
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$input_43" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_43", metadata !309, metadata !DIExpression()), !dbg !311
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1443"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$input_43", align 8, !dbg !312
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1448"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_44", metadata !313, metadata !DIExpression()), !dbg !314
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 16, %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1453"
  %"$consume_1459" = sub i64 %"$gasrem_1455", 16
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  %"$execptr_load_1460" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_43_1461" = alloca %Uint256, align 8
  %"$$input_43_1462" = load %Uint256, %Uint256* %"$input_43", align 8
  store %Uint256 %"$$input_43_1462", %Uint256* %"$to_int256_$input_43_1461", align 8
  %"$$to_int256_$input_43_1461_1463" = bitcast %Uint256* %"$to_int256_$input_43_1461" to i8*
  %"$to_int256_call_1464" = call i8* @_to_int256(i8* %"$execptr_load_1460", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", i8* %"$$to_int256_$input_43_1461_1463"), !dbg !315
  %"$to_int256_1465" = bitcast i8* %"$to_int256_call_1464" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1465", %TName_Option_Int256** %"$resopt_44", align 8, !dbg !315
  %"$gasrem_1466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1467" = icmp ugt i64 1, %"$gasrem_1466"
  br i1 %"$gascmp_1467", label %"$out_of_gas_1468", label %"$have_gas_1469"

"$out_of_gas_1468":                               ; preds = %"$have_gas_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1469"

"$have_gas_1469":                                 ; preds = %"$out_of_gas_1468", %"$have_gas_1458"
  %"$consume_1470" = sub i64 %"$gasrem_1466", 1
  store i64 %"$consume_1470", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_45", metadata !316, metadata !DIExpression()), !dbg !317
  %"$gasrem_1471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1472" = icmp ugt i64 2, %"$gasrem_1471"
  br i1 %"$gascmp_1472", label %"$out_of_gas_1473", label %"$have_gas_1474"

"$out_of_gas_1473":                               ; preds = %"$have_gas_1469"
  call void @_out_of_gas()
  br label %"$have_gas_1474"

"$have_gas_1474":                                 ; preds = %"$out_of_gas_1473", %"$have_gas_1469"
  %"$consume_1475" = sub i64 %"$gasrem_1471", 2
  store i64 %"$consume_1475", i64* @_gasrem, align 8
  %"$$resopt_44_1477" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_44", align 8
  %"$$resopt_44_tag_1478" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_44_1477", i32 0, i32 0
  %"$$resopt_44_tag_1479" = load i8, i8* %"$$resopt_44_tag_1478", align 1
  switch i8 %"$$resopt_44_tag_1479", label %"$empty_default_1480" [
    i8 0, label %"$Some_1481"
    i8 1, label %"$None_1529"
  ], !dbg !318

"$Some_1481":                                     ; preds = %"$have_gas_1474"
  %"$$resopt_44_1482" = bitcast %TName_Option_Int256* %"$$resopt_44_1477" to %CName_Some_Int256*
  %"$res_gep_1483" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_44_1482", i32 0, i32 1
  %"$res_load_1484" = load %Int256, %Int256* %"$res_gep_1483", align 8
  %res31 = alloca %Int256, align 8
  store %Int256 %"$res_load_1484", %Int256* %res31, align 8
  %"$gasrem_1485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1486" = icmp ugt i64 1, %"$gasrem_1485"
  br i1 %"$gascmp_1486", label %"$out_of_gas_1487", label %"$have_gas_1488"

"$out_of_gas_1487":                               ; preds = %"$Some_1481"
  call void @_out_of_gas()
  br label %"$have_gas_1488"

"$have_gas_1488":                                 ; preds = %"$out_of_gas_1487", %"$Some_1481"
  %"$consume_1489" = sub i64 %"$gasrem_1485", 1
  store i64 %"$consume_1489", i64* @_gasrem, align 8
  %input_32 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_32, metadata !319, metadata !DIExpression()), !dbg !322
  %"$gasrem_1490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1491" = icmp ugt i64 1, %"$gasrem_1490"
  br i1 %"$gascmp_1491", label %"$out_of_gas_1492", label %"$have_gas_1493"

"$out_of_gas_1492":                               ; preds = %"$have_gas_1488"
  call void @_out_of_gas()
  br label %"$have_gas_1493"

"$have_gas_1493":                                 ; preds = %"$out_of_gas_1492", %"$have_gas_1488"
  %"$consume_1494" = sub i64 %"$gasrem_1490", 1
  store i64 %"$consume_1494", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_32, align 8, !dbg !323
  %"$gasrem_1495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1496" = icmp ugt i64 1, %"$gasrem_1495"
  br i1 %"$gascmp_1496", label %"$out_of_gas_1497", label %"$have_gas_1498"

"$out_of_gas_1497":                               ; preds = %"$have_gas_1493"
  call void @_out_of_gas()
  br label %"$have_gas_1498"

"$have_gas_1498":                                 ; preds = %"$out_of_gas_1497", %"$have_gas_1493"
  %"$consume_1499" = sub i64 %"$gasrem_1495", 1
  store i64 %"$consume_1499", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_33, metadata !324, metadata !DIExpression()), !dbg !325
  %"$gasrem_1501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1502" = icmp ugt i64 16, %"$gasrem_1501"
  br i1 %"$gascmp_1502", label %"$out_of_gas_1503", label %"$have_gas_1504"

"$out_of_gas_1503":                               ; preds = %"$have_gas_1498"
  call void @_out_of_gas()
  br label %"$have_gas_1504"

"$have_gas_1504":                                 ; preds = %"$out_of_gas_1503", %"$have_gas_1498"
  %"$consume_1505" = sub i64 %"$gasrem_1501", 16
  store i64 %"$consume_1505", i64* @_gasrem, align 8
  %"$execptr_load_1506" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1507" = alloca %Int256, align 8
  %"$res_1508" = load %Int256, %Int256* %res31, align 8
  store %Int256 %"$res_1508", %Int256* %"$eq_res_1507", align 8
  %"$eq_input__1509" = alloca %Int256, align 8
  %"$input__1510" = load %Int256, %Int256* %input_32, align 8
  store %Int256 %"$input__1510", %Int256* %"$eq_input__1509", align 8
  %"$eq_call_1511" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1506", %Int256* %"$eq_res_1507", %Int256* %"$eq_input__1509"), !dbg !326
  store %TName_Bool* %"$eq_call_1511", %TName_Bool** %test_33, align 8, !dbg !326
  %"$gasrem_1513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1514" = icmp ugt i64 1, %"$gasrem_1513"
  br i1 %"$gascmp_1514", label %"$out_of_gas_1515", label %"$have_gas_1516"

"$out_of_gas_1515":                               ; preds = %"$have_gas_1504"
  call void @_out_of_gas()
  br label %"$have_gas_1516"

"$have_gas_1516":                                 ; preds = %"$out_of_gas_1515", %"$have_gas_1504"
  %"$consume_1517" = sub i64 %"$gasrem_1513", 1
  store i64 %"$consume_1517", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1518" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1519" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1518", 0
  %"$BoolUtils.andb_envptr_1520" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1518", 1
  %"$$test_42_1521" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1522" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1519"(i8* %"$BoolUtils.andb_envptr_1520", %TName_Bool* %"$$test_42_1521"), !dbg !327
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1522", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8, !dbg !327
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_78", metadata !328, metadata !DIExpression()), !dbg !327
  %"$$BoolUtils.andb_77_1523" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_1524" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_1523", 0
  %"$$BoolUtils.andb_77_envptr_1525" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_1523", 1
  %"$test__1526" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_77_call_1527" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_1524"(i8* %"$$BoolUtils.andb_77_envptr_1525", %TName_Bool* %"$test__1526"), !dbg !327
  store %TName_Bool* %"$$BoolUtils.andb_77_call_1527", %TName_Bool** %"$BoolUtils.andb_78", align 8, !dbg !327
  %"$$BoolUtils.andb_78_1528" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_1528", %TName_Bool** %"$test_45", align 8, !dbg !327
  br label %"$matchsucc_1476"

"$None_1529":                                     ; preds = %"$have_gas_1474"
  %"$$resopt_44_1530" = bitcast %TName_Option_Int256* %"$$resopt_44_1477" to %CName_None_Int256*
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$None_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$None_1529"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$false_1536" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1536", %TName_Bool** %"$test_45", align 8, !dbg !329
  br label %"$matchsucc_1476"

"$empty_default_1480":                            ; preds = %"$have_gas_1474"
  br label %"$matchsucc_1476"

"$matchsucc_1476":                                ; preds = %"$have_gas_1534", %"$have_gas_1516", %"$empty_default_1480"
  %"$gasrem_1537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1538" = icmp ugt i64 1, %"$gasrem_1537"
  br i1 %"$gascmp_1538", label %"$out_of_gas_1539", label %"$have_gas_1540"

"$out_of_gas_1539":                               ; preds = %"$matchsucc_1476"
  call void @_out_of_gas()
  br label %"$have_gas_1540"

"$have_gas_1540":                                 ; preds = %"$out_of_gas_1539", %"$matchsucc_1476"
  %"$consume_1541" = sub i64 %"$gasrem_1537", 1
  store i64 %"$consume_1541", i64* @_gasrem, align 8
  %"$input_46" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_46", metadata !331, metadata !DIExpression()), !dbg !332
  %"$gasrem_1542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1543" = icmp ugt i64 1, %"$gasrem_1542"
  br i1 %"$gascmp_1543", label %"$out_of_gas_1544", label %"$have_gas_1545"

"$out_of_gas_1544":                               ; preds = %"$have_gas_1540"
  call void @_out_of_gas()
  br label %"$have_gas_1545"

"$have_gas_1545":                                 ; preds = %"$out_of_gas_1544", %"$have_gas_1540"
  %"$consume_1546" = sub i64 %"$gasrem_1542", 1
  store i64 %"$consume_1546", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1547", i32 0, i32 0), i32 77 }, %String* %"$input_46", align 8, !dbg !333
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %"$have_gas_1545"
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %"$have_gas_1545"
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$resopt_47", metadata !334, metadata !DIExpression()), !dbg !335
  %"$gasrem_1553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1554" = icmp ugt i64 16, %"$gasrem_1553"
  br i1 %"$gascmp_1554", label %"$out_of_gas_1555", label %"$have_gas_1556"

"$out_of_gas_1555":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1556"

"$have_gas_1556":                                 ; preds = %"$out_of_gas_1555", %"$have_gas_1551"
  %"$consume_1557" = sub i64 %"$gasrem_1553", 16
  store i64 %"$consume_1557", i64* @_gasrem, align 8
  %"$execptr_load_1558" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_46_1559" = alloca %String, align 8
  %"$$input_46_1560" = load %String, %String* %"$input_46", align 8
  store %String %"$$input_46_1560", %String* %"$to_int256_$input_46_1559", align 8
  %"$$to_int256_$input_46_1559_1561" = bitcast %String* %"$to_int256_$input_46_1559" to i8*
  %"$to_int256_call_1562" = call i8* @_to_int256(i8* %"$execptr_load_1558", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int256_$input_46_1559_1561"), !dbg !336
  %"$to_int256_1563" = bitcast i8* %"$to_int256_call_1562" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1563", %TName_Option_Int256** %"$resopt_47", align 8, !dbg !336
  %"$gasrem_1564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1565" = icmp ugt i64 1, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$have_gas_1556"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$have_gas_1556"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 1
  store i64 %"$consume_1568", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !337, metadata !DIExpression()), !dbg !338
  %"$gasrem_1569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1570" = icmp ugt i64 2, %"$gasrem_1569"
  br i1 %"$gascmp_1570", label %"$out_of_gas_1571", label %"$have_gas_1572"

"$out_of_gas_1571":                               ; preds = %"$have_gas_1567"
  call void @_out_of_gas()
  br label %"$have_gas_1572"

"$have_gas_1572":                                 ; preds = %"$out_of_gas_1571", %"$have_gas_1567"
  %"$consume_1573" = sub i64 %"$gasrem_1569", 2
  store i64 %"$consume_1573", i64* @_gasrem, align 8
  %"$$resopt_47_1575" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_47", align 8
  %"$$resopt_47_tag_1576" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_47_1575", i32 0, i32 0
  %"$$resopt_47_tag_1577" = load i8, i8* %"$$resopt_47_tag_1576", align 1
  switch i8 %"$$resopt_47_tag_1577", label %"$empty_default_1578" [
    i8 0, label %"$Some_1579"
    i8 1, label %"$None_1627"
  ], !dbg !339

"$Some_1579":                                     ; preds = %"$have_gas_1572"
  %"$$resopt_47_1580" = bitcast %TName_Option_Int256* %"$$resopt_47_1575" to %CName_Some_Int256*
  %"$res_gep_1581" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_47_1580", i32 0, i32 1
  %"$res_load_1582" = load %Int256, %Int256* %"$res_gep_1581", align 8
  %res34 = alloca %Int256, align 8
  store %Int256 %"$res_load_1582", %Int256* %res34, align 8
  %"$gasrem_1583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1584" = icmp ugt i64 1, %"$gasrem_1583"
  br i1 %"$gascmp_1584", label %"$out_of_gas_1585", label %"$have_gas_1586"

"$out_of_gas_1585":                               ; preds = %"$Some_1579"
  call void @_out_of_gas()
  br label %"$have_gas_1586"

"$have_gas_1586":                                 ; preds = %"$out_of_gas_1585", %"$Some_1579"
  %"$consume_1587" = sub i64 %"$gasrem_1583", 1
  store i64 %"$consume_1587", i64* @_gasrem, align 8
  %input_35 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %input_35, metadata !340, metadata !DIExpression()), !dbg !343
  %"$gasrem_1588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1589" = icmp ugt i64 1, %"$gasrem_1588"
  br i1 %"$gascmp_1589", label %"$out_of_gas_1590", label %"$have_gas_1591"

"$out_of_gas_1590":                               ; preds = %"$have_gas_1586"
  call void @_out_of_gas()
  br label %"$have_gas_1591"

"$have_gas_1591":                                 ; preds = %"$out_of_gas_1590", %"$have_gas_1586"
  %"$consume_1592" = sub i64 %"$gasrem_1588", 1
  store i64 %"$consume_1592", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_35, align 8, !dbg !344
  %"$gasrem_1593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1594" = icmp ugt i64 1, %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1591"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1591"
  %"$consume_1597" = sub i64 %"$gasrem_1593", 1
  store i64 %"$consume_1597", i64* @_gasrem, align 8
  %test_36 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_36, metadata !345, metadata !DIExpression()), !dbg !346
  %"$gasrem_1599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1600" = icmp ugt i64 16, %"$gasrem_1599"
  br i1 %"$gascmp_1600", label %"$out_of_gas_1601", label %"$have_gas_1602"

"$out_of_gas_1601":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1602"

"$have_gas_1602":                                 ; preds = %"$out_of_gas_1601", %"$have_gas_1596"
  %"$consume_1603" = sub i64 %"$gasrem_1599", 16
  store i64 %"$consume_1603", i64* @_gasrem, align 8
  %"$execptr_load_1604" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1605" = alloca %Int256, align 8
  %"$res_1606" = load %Int256, %Int256* %res34, align 8
  store %Int256 %"$res_1606", %Int256* %"$eq_res_1605", align 8
  %"$eq_input__1607" = alloca %Int256, align 8
  %"$input__1608" = load %Int256, %Int256* %input_35, align 8
  store %Int256 %"$input__1608", %Int256* %"$eq_input__1607", align 8
  %"$eq_call_1609" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1604", %Int256* %"$eq_res_1605", %Int256* %"$eq_input__1607"), !dbg !347
  store %TName_Bool* %"$eq_call_1609", %TName_Bool** %test_36, align 8, !dbg !347
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1602"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1602"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1616" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1617" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1616", 0
  %"$BoolUtils.andb_envptr_1618" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1616", 1
  %"$$test_45_1619" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  %"$BoolUtils.andb_call_1620" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1617"(i8* %"$BoolUtils.andb_envptr_1618", %TName_Bool* %"$$test_45_1619"), !dbg !348
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1620", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !348
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_80", metadata !349, metadata !DIExpression()), !dbg !348
  %"$$BoolUtils.andb_79_1621" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_1622" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1621", 0
  %"$$BoolUtils.andb_79_envptr_1623" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1621", 1
  %"$test__1624" = load %TName_Bool*, %TName_Bool** %test_36, align 8
  %"$$BoolUtils.andb_79_call_1625" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_1622"(i8* %"$$BoolUtils.andb_79_envptr_1623", %TName_Bool* %"$test__1624"), !dbg !348
  store %TName_Bool* %"$$BoolUtils.andb_79_call_1625", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !348
  %"$$BoolUtils.andb_80_1626" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_1626", %TName_Bool** %"$test_48", align 8, !dbg !348
  br label %"$matchsucc_1574"

"$None_1627":                                     ; preds = %"$have_gas_1572"
  %"$$resopt_47_1628" = bitcast %TName_Option_Int256* %"$$resopt_47_1575" to %CName_None_Int256*
  %"$gasrem_1629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1630" = icmp ugt i64 1, %"$gasrem_1629"
  br i1 %"$gascmp_1630", label %"$out_of_gas_1631", label %"$have_gas_1632"

"$out_of_gas_1631":                               ; preds = %"$None_1627"
  call void @_out_of_gas()
  br label %"$have_gas_1632"

"$have_gas_1632":                                 ; preds = %"$out_of_gas_1631", %"$None_1627"
  %"$consume_1633" = sub i64 %"$gasrem_1629", 1
  store i64 %"$consume_1633", i64* @_gasrem, align 8
  %"$false_1634" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1634", %TName_Bool** %"$test_48", align 8, !dbg !350
  br label %"$matchsucc_1574"

"$empty_default_1578":                            ; preds = %"$have_gas_1572"
  br label %"$matchsucc_1574"

"$matchsucc_1574":                                ; preds = %"$have_gas_1632", %"$have_gas_1614", %"$empty_default_1578"
  %"$gasrem_1635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1636" = icmp ugt i64 1, %"$gasrem_1635"
  br i1 %"$gascmp_1636", label %"$out_of_gas_1637", label %"$have_gas_1638"

"$out_of_gas_1637":                               ; preds = %"$matchsucc_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1638"

"$have_gas_1638":                                 ; preds = %"$out_of_gas_1637", %"$matchsucc_1574"
  %"$consume_1639" = sub i64 %"$gasrem_1635", 1
  store i64 %"$consume_1639", i64* @_gasrem, align 8
  %"$input_49" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_49", metadata !352, metadata !DIExpression()), !dbg !353
  %"$gasrem_1640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1641" = icmp ugt i64 1, %"$gasrem_1640"
  br i1 %"$gascmp_1641", label %"$out_of_gas_1642", label %"$have_gas_1643"

"$out_of_gas_1642":                               ; preds = %"$have_gas_1638"
  call void @_out_of_gas()
  br label %"$have_gas_1643"

"$have_gas_1643":                                 ; preds = %"$out_of_gas_1642", %"$have_gas_1638"
  %"$consume_1644" = sub i64 %"$gasrem_1640", 1
  store i64 %"$consume_1644", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1645", i32 0, i32 0), i32 4 }, %String* %"$input_49", align 8, !dbg !354
  %"$gasrem_1646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1647" = icmp ugt i64 1, %"$gasrem_1646"
  br i1 %"$gascmp_1647", label %"$out_of_gas_1648", label %"$have_gas_1649"

"$out_of_gas_1648":                               ; preds = %"$have_gas_1643"
  call void @_out_of_gas()
  br label %"$have_gas_1649"

"$have_gas_1649":                                 ; preds = %"$out_of_gas_1648", %"$have_gas_1643"
  %"$consume_1650" = sub i64 %"$gasrem_1646", 1
  store i64 %"$consume_1650", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int64** %"$resopt_50", metadata !355, metadata !DIExpression()), !dbg !356
  %"$gasrem_1651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1652" = icmp ugt i64 4, %"$gasrem_1651"
  br i1 %"$gascmp_1652", label %"$out_of_gas_1653", label %"$have_gas_1654"

"$out_of_gas_1653":                               ; preds = %"$have_gas_1649"
  call void @_out_of_gas()
  br label %"$have_gas_1654"

"$have_gas_1654":                                 ; preds = %"$out_of_gas_1653", %"$have_gas_1649"
  %"$consume_1655" = sub i64 %"$gasrem_1651", 4
  store i64 %"$consume_1655", i64* @_gasrem, align 8
  %"$execptr_load_1656" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_49_1657" = alloca %String, align 8
  %"$$input_49_1658" = load %String, %String* %"$input_49", align 8
  store %String %"$$input_49_1658", %String* %"$to_int64_$input_49_1657", align 8
  %"$$to_int64_$input_49_1657_1659" = bitcast %String* %"$to_int64_$input_49_1657" to i8*
  %"$to_int64_call_1660" = call i8* @_to_int64(i8* %"$execptr_load_1656", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_49_1657_1659"), !dbg !357
  %"$to_int64_1661" = bitcast i8* %"$to_int64_call_1660" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1661", %TName_Option_Int64** %"$resopt_50", align 8, !dbg !357
  %"$gasrem_1662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1663" = icmp ugt i64 1, %"$gasrem_1662"
  br i1 %"$gascmp_1663", label %"$out_of_gas_1664", label %"$have_gas_1665"

"$out_of_gas_1664":                               ; preds = %"$have_gas_1654"
  call void @_out_of_gas()
  br label %"$have_gas_1665"

"$have_gas_1665":                                 ; preds = %"$out_of_gas_1664", %"$have_gas_1654"
  %"$consume_1666" = sub i64 %"$gasrem_1662", 1
  store i64 %"$consume_1666", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_51", metadata !358, metadata !DIExpression()), !dbg !359
  %"$gasrem_1667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1668" = icmp ugt i64 2, %"$gasrem_1667"
  br i1 %"$gascmp_1668", label %"$out_of_gas_1669", label %"$have_gas_1670"

"$out_of_gas_1669":                               ; preds = %"$have_gas_1665"
  call void @_out_of_gas()
  br label %"$have_gas_1670"

"$have_gas_1670":                                 ; preds = %"$out_of_gas_1669", %"$have_gas_1665"
  %"$consume_1671" = sub i64 %"$gasrem_1667", 2
  store i64 %"$consume_1671", i64* @_gasrem, align 8
  %"$$resopt_50_1673" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_50", align 8
  %"$$resopt_50_tag_1674" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_50_1673", i32 0, i32 0
  %"$$resopt_50_tag_1675" = load i8, i8* %"$$resopt_50_tag_1674", align 1
  switch i8 %"$$resopt_50_tag_1675", label %"$empty_default_1676" [
    i8 0, label %"$Some_1677"
    i8 1, label %"$None_1687"
  ], !dbg !360

"$Some_1677":                                     ; preds = %"$have_gas_1670"
  %"$$resopt_50_1678" = bitcast %TName_Option_Int64* %"$$resopt_50_1673" to %CName_Some_Int64*
  %"$$$resopt_50_54_gep_1679" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_50_1678", i32 0, i32 1
  %"$$$resopt_50_54_load_1680" = load %Int64, %Int64* %"$$$resopt_50_54_gep_1679", align 8
  %"$$resopt_50_54" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_50_54_load_1680", %Int64* %"$$resopt_50_54", align 8
  %"$gasrem_1681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1682" = icmp ugt i64 1, %"$gasrem_1681"
  br i1 %"$gascmp_1682", label %"$out_of_gas_1683", label %"$have_gas_1684"

"$out_of_gas_1683":                               ; preds = %"$Some_1677"
  call void @_out_of_gas()
  br label %"$have_gas_1684"

"$have_gas_1684":                                 ; preds = %"$out_of_gas_1683", %"$Some_1677"
  %"$consume_1685" = sub i64 %"$gasrem_1681", 1
  store i64 %"$consume_1685", i64* @_gasrem, align 8
  %"$false_1686" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1686", %TName_Bool** %"$test_51", align 8, !dbg !361
  br label %"$matchsucc_1672"

"$None_1687":                                     ; preds = %"$have_gas_1670"
  %"$$resopt_50_1688" = bitcast %TName_Option_Int64* %"$$resopt_50_1673" to %CName_None_Int64*
  %"$gasrem_1689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1690" = icmp ugt i64 1, %"$gasrem_1689"
  br i1 %"$gascmp_1690", label %"$out_of_gas_1691", label %"$have_gas_1692"

"$out_of_gas_1691":                               ; preds = %"$None_1687"
  call void @_out_of_gas()
  br label %"$have_gas_1692"

"$have_gas_1692":                                 ; preds = %"$out_of_gas_1691", %"$None_1687"
  %"$consume_1693" = sub i64 %"$gasrem_1689", 1
  store i64 %"$consume_1693", i64* @_gasrem, align 8
  %"$$test_48_1694" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  store %TName_Bool* %"$$test_48_1694", %TName_Bool** %"$test_51", align 8, !dbg !364
  br label %"$matchsucc_1672"

"$empty_default_1676":                            ; preds = %"$have_gas_1670"
  br label %"$matchsucc_1672"

"$matchsucc_1672":                                ; preds = %"$have_gas_1692", %"$have_gas_1684", %"$empty_default_1676"
  %"$gasrem_1695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1696" = icmp ugt i64 1, %"$gasrem_1695"
  br i1 %"$gascmp_1696", label %"$out_of_gas_1697", label %"$have_gas_1698"

"$out_of_gas_1697":                               ; preds = %"$matchsucc_1672"
  call void @_out_of_gas()
  br label %"$have_gas_1698"

"$have_gas_1698":                                 ; preds = %"$out_of_gas_1697", %"$matchsucc_1672"
  %"$consume_1699" = sub i64 %"$gasrem_1695", 1
  store i64 %"$consume_1699", i64* @_gasrem, align 8
  %"$$test_51_1700" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  store %TName_Bool* %"$$test_51_1700", %TName_Bool** %"$expr_85", align 8, !dbg !366
  %"$$expr_85_1701" = load %TName_Bool*, %TName_Bool** %"$expr_85", align 8
  ret %TName_Bool* %"$$expr_85_1701"
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
  %"$exprval_1702" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1703" = bitcast %TName_Bool* %"$exprval_1702" to i8*
  %"$execptr_load_1704" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1704", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_123", i8* %"$memvoidcast_1703")
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
!31 = !DILocalVariable(name: "false", scope: !28, file: !2, line: 1, type: !10)
!32 = !DILocation(line: 1, column: 5, scope: !28)
!33 = !DILocalVariable(name: "test", scope: !28, file: !2, line: 2, type: !10)
!34 = !DILocation(line: 2, column: 5, scope: !28)
!35 = !DILocation(line: 2, column: 12, scope: !28)
!36 = !DILocalVariable(name: "input", scope: !28, file: !2, line: 4, type: !37)
!37 = !DIBasicType(name: "Uint32", size: 4)
!38 = !DILocation(line: 4, column: 5, scope: !28)
!39 = !DILocation(line: 4, column: 13, scope: !28)
!40 = !DILocalVariable(name: "resopt", scope: !28, file: !2, line: 5, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int32)", baseType: !42, size: 8, align: 8, dwarfAddressSpace: 0)
!42 = !DIBasicType(name: "Option (Int32)", size: 8)
!43 = !DILocation(line: 5, column: 5, scope: !28)
!44 = !DILocation(line: 5, column: 14, scope: !28)
!45 = !DILocalVariable(name: "$test_6", scope: !28, file: !2, line: 6, type: !10)
!46 = !DILocation(line: 6, column: 5, scope: !28)
!47 = !DILocation(line: 7, column: 3, scope: !28)
!48 = !DILocalVariable(name: "input_", scope: !49, file: !2, line: 9, type: !51)
!49 = distinct !DILexicalBlock(scope: !50, file: !2, line: 8, column: 5)
!50 = distinct !DILexicalBlock(scope: !28, file: !2, line: 7, column: 3)
!51 = !DIBasicType(name: "Int32", size: 4)
!52 = !DILocation(line: 9, column: 9, scope: !49)
!53 = !DILocation(line: 9, column: 18, scope: !49)
!54 = !DILocalVariable(name: "test_", scope: !49, file: !2, line: 10, type: !10)
!55 = !DILocation(line: 10, column: 9, scope: !49)
!56 = !DILocation(line: 10, column: 17, scope: !49)
!57 = !DILocation(line: 11, column: 5, scope: !49)
!58 = !DILocalVariable(name: "$BoolUtils.andb_56", scope: !49, file: !2, line: 11, type: !10)
!59 = !DILocation(line: 12, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !50, file: !2, line: 12, column: 5)
!61 = !DILocalVariable(name: "$input_7", scope: !28, file: !2, line: 16, type: !51)
!62 = !DILocation(line: 16, column: 5, scope: !28)
!63 = !DILocation(line: 16, column: 13, scope: !28)
!64 = !DILocalVariable(name: "$resopt_8", scope: !28, file: !2, line: 17, type: !41)
!65 = !DILocation(line: 17, column: 5, scope: !28)
!66 = !DILocation(line: 17, column: 14, scope: !28)
!67 = !DILocalVariable(name: "$test_9", scope: !28, file: !2, line: 18, type: !10)
!68 = !DILocation(line: 18, column: 5, scope: !28)
!69 = !DILocation(line: 19, column: 3, scope: !28)
!70 = !DILocalVariable(name: "input_", scope: !71, file: !2, line: 21, type: !51)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 20, column: 5)
!72 = distinct !DILexicalBlock(scope: !28, file: !2, line: 19, column: 3)
!73 = !DILocation(line: 21, column: 9, scope: !71)
!74 = !DILocation(line: 21, column: 18, scope: !71)
!75 = !DILocalVariable(name: "test_", scope: !71, file: !2, line: 22, type: !10)
!76 = !DILocation(line: 22, column: 9, scope: !71)
!77 = !DILocation(line: 22, column: 17, scope: !71)
!78 = !DILocation(line: 23, column: 5, scope: !71)
!79 = !DILocalVariable(name: "$BoolUtils.andb_58", scope: !71, file: !2, line: 23, type: !10)
!80 = !DILocation(line: 24, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !2, line: 24, column: 5)
!82 = !DILocalVariable(name: "$input_10", scope: !28, file: !2, line: 28, type: !83)
!83 = !DIBasicType(name: "String", size: 16)
!84 = !DILocation(line: 28, column: 5, scope: !28)
!85 = !DILocation(line: 28, column: 18, scope: !28)
!86 = !DILocalVariable(name: "$resopt_11", scope: !28, file: !2, line: 29, type: !41)
!87 = !DILocation(line: 29, column: 5, scope: !28)
!88 = !DILocation(line: 29, column: 14, scope: !28)
!89 = !DILocalVariable(name: "$test_12", scope: !28, file: !2, line: 30, type: !10)
!90 = !DILocation(line: 30, column: 5, scope: !28)
!91 = !DILocation(line: 31, column: 3, scope: !28)
!92 = !DILocalVariable(name: "input_", scope: !93, file: !2, line: 33, type: !51)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 32, column: 5)
!94 = distinct !DILexicalBlock(scope: !28, file: !2, line: 31, column: 3)
!95 = !DILocation(line: 33, column: 9, scope: !93)
!96 = !DILocation(line: 33, column: 18, scope: !93)
!97 = !DILocalVariable(name: "test_", scope: !93, file: !2, line: 34, type: !10)
!98 = !DILocation(line: 34, column: 9, scope: !93)
!99 = !DILocation(line: 34, column: 17, scope: !93)
!100 = !DILocation(line: 35, column: 5, scope: !93)
!101 = !DILocalVariable(name: "$BoolUtils.andb_60", scope: !93, file: !2, line: 35, type: !10)
!102 = !DILocation(line: 36, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !2, line: 36, column: 5)
!104 = !DILocalVariable(name: "$input_13", scope: !28, file: !2, line: 40, type: !105)
!105 = !DIBasicType(name: "Uint128", size: 16)
!106 = !DILocation(line: 40, column: 5, scope: !28)
!107 = !DILocation(line: 40, column: 13, scope: !28)
!108 = !DILocalVariable(name: "$resopt_14", scope: !28, file: !2, line: 41, type: !41)
!109 = !DILocation(line: 41, column: 5, scope: !28)
!110 = !DILocation(line: 41, column: 14, scope: !28)
!111 = !DILocalVariable(name: "$test_15", scope: !28, file: !2, line: 42, type: !10)
!112 = !DILocation(line: 42, column: 5, scope: !28)
!113 = !DILocation(line: 43, column: 3, scope: !28)
!114 = !DILocalVariable(name: "input_", scope: !115, file: !2, line: 45, type: !51)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 44, column: 5)
!116 = distinct !DILexicalBlock(scope: !28, file: !2, line: 43, column: 3)
!117 = !DILocation(line: 45, column: 9, scope: !115)
!118 = !DILocation(line: 45, column: 18, scope: !115)
!119 = !DILocalVariable(name: "test_", scope: !115, file: !2, line: 46, type: !10)
!120 = !DILocation(line: 46, column: 9, scope: !115)
!121 = !DILocation(line: 46, column: 17, scope: !115)
!122 = !DILocation(line: 47, column: 5, scope: !115)
!123 = !DILocalVariable(name: "$BoolUtils.andb_62", scope: !115, file: !2, line: 47, type: !10)
!124 = !DILocation(line: 48, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !2, line: 48, column: 5)
!126 = !DILocalVariable(name: "$input_16", scope: !28, file: !2, line: 52, type: !127)
!127 = !DIBasicType(name: "Int128", size: 16)
!128 = !DILocation(line: 52, column: 5, scope: !28)
!129 = !DILocation(line: 52, column: 13, scope: !28)
!130 = !DILocalVariable(name: "$resopt_17", scope: !28, file: !2, line: 53, type: !41)
!131 = !DILocation(line: 53, column: 5, scope: !28)
!132 = !DILocation(line: 53, column: 14, scope: !28)
!133 = !DILocalVariable(name: "$test_18", scope: !28, file: !2, line: 54, type: !10)
!134 = !DILocation(line: 54, column: 5, scope: !28)
!135 = !DILocation(line: 55, column: 3, scope: !28)
!136 = !DILocalVariable(name: "input_", scope: !137, file: !2, line: 57, type: !51)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 56, column: 5)
!138 = distinct !DILexicalBlock(scope: !28, file: !2, line: 55, column: 3)
!139 = !DILocation(line: 57, column: 9, scope: !137)
!140 = !DILocation(line: 57, column: 18, scope: !137)
!141 = !DILocalVariable(name: "test_", scope: !137, file: !2, line: 58, type: !10)
!142 = !DILocation(line: 58, column: 9, scope: !137)
!143 = !DILocation(line: 58, column: 17, scope: !137)
!144 = !DILocation(line: 59, column: 5, scope: !137)
!145 = !DILocalVariable(name: "$BoolUtils.andb_64", scope: !137, file: !2, line: 59, type: !10)
!146 = !DILocation(line: 60, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !138, file: !2, line: 60, column: 5)
!148 = !DILocalVariable(name: "$input_19", scope: !28, file: !2, line: 64, type: !149)
!149 = !DIBasicType(name: "Int256", size: 32)
!150 = !DILocation(line: 64, column: 5, scope: !28)
!151 = !DILocation(line: 64, column: 13, scope: !28)
!152 = !DILocalVariable(name: "$resopt_20", scope: !28, file: !2, line: 65, type: !41)
!153 = !DILocation(line: 65, column: 5, scope: !28)
!154 = !DILocation(line: 65, column: 14, scope: !28)
!155 = !DILocalVariable(name: "$test_21", scope: !28, file: !2, line: 66, type: !10)
!156 = !DILocation(line: 66, column: 5, scope: !28)
!157 = !DILocation(line: 67, column: 3, scope: !28)
!158 = !DILocalVariable(name: "input_", scope: !159, file: !2, line: 69, type: !51)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 68, column: 5)
!160 = distinct !DILexicalBlock(scope: !28, file: !2, line: 67, column: 3)
!161 = !DILocation(line: 69, column: 9, scope: !159)
!162 = !DILocation(line: 69, column: 18, scope: !159)
!163 = !DILocalVariable(name: "test_", scope: !159, file: !2, line: 70, type: !10)
!164 = !DILocation(line: 70, column: 9, scope: !159)
!165 = !DILocation(line: 70, column: 17, scope: !159)
!166 = !DILocation(line: 71, column: 5, scope: !159)
!167 = !DILocalVariable(name: "$BoolUtils.andb_66", scope: !159, file: !2, line: 71, type: !10)
!168 = !DILocation(line: 72, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !2, line: 72, column: 5)
!170 = !DILocalVariable(name: "$input_22", scope: !28, file: !2, line: 76, type: !171)
!171 = !DIBasicType(name: "Uint64", size: 8)
!172 = !DILocation(line: 76, column: 5, scope: !28)
!173 = !DILocation(line: 76, column: 13, scope: !28)
!174 = !DILocalVariable(name: "$resopt_23", scope: !28, file: !2, line: 77, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int64)", baseType: !176, size: 8, align: 8, dwarfAddressSpace: 0)
!176 = !DIBasicType(name: "Option (Int64)", size: 8)
!177 = !DILocation(line: 77, column: 5, scope: !28)
!178 = !DILocation(line: 77, column: 14, scope: !28)
!179 = !DILocalVariable(name: "$test_24", scope: !28, file: !2, line: 78, type: !10)
!180 = !DILocation(line: 78, column: 5, scope: !28)
!181 = !DILocation(line: 79, column: 3, scope: !28)
!182 = !DILocation(line: 80, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 80, column: 5)
!184 = distinct !DILexicalBlock(scope: !28, file: !2, line: 79, column: 3)
!185 = !DILocation(line: 81, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !2, line: 81, column: 5)
!187 = !DILocalVariable(name: "$input_25", scope: !28, file: !2, line: 85, type: !83)
!188 = !DILocation(line: 85, column: 5, scope: !28)
!189 = !DILocation(line: 85, column: 33, scope: !28)
!190 = !DILocalVariable(name: "$resopt_26", scope: !28, file: !2, line: 86, type: !175)
!191 = !DILocation(line: 86, column: 5, scope: !28)
!192 = !DILocation(line: 86, column: 14, scope: !28)
!193 = !DILocalVariable(name: "$test_27", scope: !28, file: !2, line: 87, type: !10)
!194 = !DILocation(line: 87, column: 5, scope: !28)
!195 = !DILocation(line: 88, column: 3, scope: !28)
!196 = !DILocation(line: 89, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 89, column: 5)
!198 = distinct !DILexicalBlock(scope: !28, file: !2, line: 88, column: 3)
!199 = !DILocation(line: 90, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !2, line: 90, column: 5)
!201 = !DILocalVariable(name: "$input_28", scope: !28, file: !2, line: 94, type: !171)
!202 = !DILocation(line: 94, column: 5, scope: !28)
!203 = !DILocation(line: 94, column: 13, scope: !28)
!204 = !DILocalVariable(name: "$resopt_29", scope: !28, file: !2, line: 95, type: !175)
!205 = !DILocation(line: 95, column: 5, scope: !28)
!206 = !DILocation(line: 95, column: 14, scope: !28)
!207 = !DILocalVariable(name: "$test_30", scope: !28, file: !2, line: 96, type: !10)
!208 = !DILocation(line: 96, column: 5, scope: !28)
!209 = !DILocation(line: 97, column: 3, scope: !28)
!210 = !DILocalVariable(name: "input_", scope: !211, file: !2, line: 99, type: !213)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 98, column: 5)
!212 = distinct !DILexicalBlock(scope: !28, file: !2, line: 97, column: 3)
!213 = !DIBasicType(name: "Int64", size: 8)
!214 = !DILocation(line: 99, column: 9, scope: !211)
!215 = !DILocation(line: 99, column: 18, scope: !211)
!216 = !DILocalVariable(name: "test_", scope: !211, file: !2, line: 100, type: !10)
!217 = !DILocation(line: 100, column: 9, scope: !211)
!218 = !DILocation(line: 100, column: 17, scope: !211)
!219 = !DILocation(line: 101, column: 5, scope: !211)
!220 = !DILocalVariable(name: "$BoolUtils.andb_68", scope: !211, file: !2, line: 101, type: !10)
!221 = !DILocation(line: 102, column: 13, scope: !222)
!222 = distinct !DILexicalBlock(scope: !212, file: !2, line: 102, column: 5)
!223 = !DILocalVariable(name: "$input_31", scope: !28, file: !2, line: 106, type: !127)
!224 = !DILocation(line: 106, column: 5, scope: !28)
!225 = !DILocation(line: 106, column: 13, scope: !28)
!226 = !DILocalVariable(name: "$resopt_32", scope: !28, file: !2, line: 107, type: !175)
!227 = !DILocation(line: 107, column: 5, scope: !28)
!228 = !DILocation(line: 107, column: 14, scope: !28)
!229 = !DILocalVariable(name: "$test_33", scope: !28, file: !2, line: 108, type: !10)
!230 = !DILocation(line: 108, column: 5, scope: !28)
!231 = !DILocation(line: 109, column: 3, scope: !28)
!232 = !DILocalVariable(name: "input_", scope: !233, file: !2, line: 111, type: !213)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 110, column: 5)
!234 = distinct !DILexicalBlock(scope: !28, file: !2, line: 109, column: 3)
!235 = !DILocation(line: 111, column: 9, scope: !233)
!236 = !DILocation(line: 111, column: 18, scope: !233)
!237 = !DILocalVariable(name: "test_", scope: !233, file: !2, line: 112, type: !10)
!238 = !DILocation(line: 112, column: 9, scope: !233)
!239 = !DILocation(line: 112, column: 17, scope: !233)
!240 = !DILocation(line: 113, column: 5, scope: !233)
!241 = !DILocalVariable(name: "$BoolUtils.andb_70", scope: !233, file: !2, line: 113, type: !10)
!242 = !DILocation(line: 114, column: 13, scope: !243)
!243 = distinct !DILexicalBlock(scope: !234, file: !2, line: 114, column: 5)
!244 = !DILocalVariable(name: "$input_34", scope: !28, file: !2, line: 118, type: !83)
!245 = !DILocation(line: 118, column: 5, scope: !28)
!246 = !DILocation(line: 118, column: 34, scope: !28)
!247 = !DILocalVariable(name: "$resopt_35", scope: !28, file: !2, line: 119, type: !175)
!248 = !DILocation(line: 119, column: 5, scope: !28)
!249 = !DILocation(line: 119, column: 14, scope: !28)
!250 = !DILocalVariable(name: "$test_36", scope: !28, file: !2, line: 120, type: !10)
!251 = !DILocation(line: 120, column: 5, scope: !28)
!252 = !DILocation(line: 121, column: 3, scope: !28)
!253 = !DILocalVariable(name: "input_", scope: !254, file: !2, line: 123, type: !213)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 122, column: 5)
!255 = distinct !DILexicalBlock(scope: !28, file: !2, line: 121, column: 3)
!256 = !DILocation(line: 123, column: 9, scope: !254)
!257 = !DILocation(line: 123, column: 18, scope: !254)
!258 = !DILocalVariable(name: "test_", scope: !254, file: !2, line: 124, type: !10)
!259 = !DILocation(line: 124, column: 9, scope: !254)
!260 = !DILocation(line: 124, column: 17, scope: !254)
!261 = !DILocation(line: 125, column: 5, scope: !254)
!262 = !DILocalVariable(name: "$BoolUtils.andb_72", scope: !254, file: !2, line: 125, type: !10)
!263 = !DILocation(line: 126, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !255, file: !2, line: 126, column: 5)
!265 = !DILocalVariable(name: "$input_37", scope: !28, file: !2, line: 130, type: !171)
!266 = !DILocation(line: 130, column: 5, scope: !28)
!267 = !DILocation(line: 130, column: 13, scope: !28)
!268 = !DILocalVariable(name: "$resopt_38", scope: !28, file: !2, line: 131, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int256)", baseType: !270, size: 8, align: 8, dwarfAddressSpace: 0)
!270 = !DIBasicType(name: "Option (Int256)", size: 8)
!271 = !DILocation(line: 131, column: 5, scope: !28)
!272 = !DILocation(line: 131, column: 14, scope: !28)
!273 = !DILocalVariable(name: "$test_39", scope: !28, file: !2, line: 132, type: !10)
!274 = !DILocation(line: 132, column: 5, scope: !28)
!275 = !DILocation(line: 133, column: 3, scope: !28)
!276 = !DILocalVariable(name: "input_", scope: !277, file: !2, line: 135, type: !149)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 134, column: 5)
!278 = distinct !DILexicalBlock(scope: !28, file: !2, line: 133, column: 3)
!279 = !DILocation(line: 135, column: 9, scope: !277)
!280 = !DILocation(line: 135, column: 18, scope: !277)
!281 = !DILocalVariable(name: "test_", scope: !277, file: !2, line: 136, type: !10)
!282 = !DILocation(line: 136, column: 9, scope: !277)
!283 = !DILocation(line: 136, column: 17, scope: !277)
!284 = !DILocation(line: 137, column: 5, scope: !277)
!285 = !DILocalVariable(name: "$BoolUtils.andb_74", scope: !277, file: !2, line: 137, type: !10)
!286 = !DILocation(line: 138, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !278, file: !2, line: 138, column: 5)
!288 = !DILocalVariable(name: "$input_40", scope: !28, file: !2, line: 142, type: !83)
!289 = !DILocation(line: 142, column: 5, scope: !28)
!290 = !DILocation(line: 142, column: 33, scope: !28)
!291 = !DILocalVariable(name: "$resopt_41", scope: !28, file: !2, line: 143, type: !269)
!292 = !DILocation(line: 143, column: 5, scope: !28)
!293 = !DILocation(line: 143, column: 14, scope: !28)
!294 = !DILocalVariable(name: "$test_42", scope: !28, file: !2, line: 144, type: !10)
!295 = !DILocation(line: 144, column: 5, scope: !28)
!296 = !DILocation(line: 145, column: 3, scope: !28)
!297 = !DILocalVariable(name: "input_", scope: !298, file: !2, line: 147, type: !149)
!298 = distinct !DILexicalBlock(scope: !299, file: !2, line: 146, column: 5)
!299 = distinct !DILexicalBlock(scope: !28, file: !2, line: 145, column: 3)
!300 = !DILocation(line: 147, column: 9, scope: !298)
!301 = !DILocation(line: 147, column: 18, scope: !298)
!302 = !DILocalVariable(name: "test_", scope: !298, file: !2, line: 148, type: !10)
!303 = !DILocation(line: 148, column: 9, scope: !298)
!304 = !DILocation(line: 148, column: 17, scope: !298)
!305 = !DILocation(line: 149, column: 5, scope: !298)
!306 = !DILocalVariable(name: "$BoolUtils.andb_76", scope: !298, file: !2, line: 149, type: !10)
!307 = !DILocation(line: 150, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !299, file: !2, line: 150, column: 5)
!309 = !DILocalVariable(name: "$input_43", scope: !28, file: !2, line: 154, type: !310)
!310 = !DIBasicType(name: "Uint256", size: 32)
!311 = !DILocation(line: 154, column: 5, scope: !28)
!312 = !DILocation(line: 154, column: 13, scope: !28)
!313 = !DILocalVariable(name: "$resopt_44", scope: !28, file: !2, line: 155, type: !269)
!314 = !DILocation(line: 155, column: 5, scope: !28)
!315 = !DILocation(line: 155, column: 14, scope: !28)
!316 = !DILocalVariable(name: "$test_45", scope: !28, file: !2, line: 156, type: !10)
!317 = !DILocation(line: 156, column: 5, scope: !28)
!318 = !DILocation(line: 157, column: 3, scope: !28)
!319 = !DILocalVariable(name: "input_", scope: !320, file: !2, line: 159, type: !149)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 158, column: 5)
!321 = distinct !DILexicalBlock(scope: !28, file: !2, line: 157, column: 3)
!322 = !DILocation(line: 159, column: 9, scope: !320)
!323 = !DILocation(line: 159, column: 18, scope: !320)
!324 = !DILocalVariable(name: "test_", scope: !320, file: !2, line: 160, type: !10)
!325 = !DILocation(line: 160, column: 9, scope: !320)
!326 = !DILocation(line: 160, column: 17, scope: !320)
!327 = !DILocation(line: 161, column: 5, scope: !320)
!328 = !DILocalVariable(name: "$BoolUtils.andb_78", scope: !320, file: !2, line: 161, type: !10)
!329 = !DILocation(line: 162, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !321, file: !2, line: 162, column: 5)
!331 = !DILocalVariable(name: "$input_46", scope: !28, file: !2, line: 166, type: !83)
!332 = !DILocation(line: 166, column: 5, scope: !28)
!333 = !DILocation(line: 166, column: 91, scope: !28)
!334 = !DILocalVariable(name: "$resopt_47", scope: !28, file: !2, line: 167, type: !269)
!335 = !DILocation(line: 167, column: 5, scope: !28)
!336 = !DILocation(line: 167, column: 14, scope: !28)
!337 = !DILocalVariable(name: "$test_48", scope: !28, file: !2, line: 168, type: !10)
!338 = !DILocation(line: 168, column: 5, scope: !28)
!339 = !DILocation(line: 169, column: 3, scope: !28)
!340 = !DILocalVariable(name: "input_", scope: !341, file: !2, line: 171, type: !149)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 170, column: 5)
!342 = distinct !DILexicalBlock(scope: !28, file: !2, line: 169, column: 3)
!343 = !DILocation(line: 171, column: 9, scope: !341)
!344 = !DILocation(line: 171, column: 18, scope: !341)
!345 = !DILocalVariable(name: "test_", scope: !341, file: !2, line: 172, type: !10)
!346 = !DILocation(line: 172, column: 9, scope: !341)
!347 = !DILocation(line: 172, column: 17, scope: !341)
!348 = !DILocation(line: 173, column: 5, scope: !341)
!349 = !DILocalVariable(name: "$BoolUtils.andb_80", scope: !341, file: !2, line: 173, type: !10)
!350 = !DILocation(line: 174, column: 13, scope: !351)
!351 = distinct !DILexicalBlock(scope: !342, file: !2, line: 174, column: 5)
!352 = !DILocalVariable(name: "$input_49", scope: !28, file: !2, line: 178, type: !83)
!353 = !DILocation(line: 178, column: 5, scope: !28)
!354 = !DILocation(line: 178, column: 18, scope: !28)
!355 = !DILocalVariable(name: "$resopt_50", scope: !28, file: !2, line: 179, type: !175)
!356 = !DILocation(line: 179, column: 5, scope: !28)
!357 = !DILocation(line: 179, column: 14, scope: !28)
!358 = !DILocalVariable(name: "$test_51", scope: !28, file: !2, line: 180, type: !10)
!359 = !DILocation(line: 180, column: 5, scope: !28)
!360 = !DILocation(line: 181, column: 3, scope: !28)
!361 = !DILocation(line: 182, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 182, column: 5)
!363 = distinct !DILexicalBlock(scope: !28, file: !2, line: 181, column: 3)
!364 = !DILocation(line: 183, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !363, file: !2, line: 183, column: 5)
!366 = !DILocation(line: 187, column: 1, scope: !28)
