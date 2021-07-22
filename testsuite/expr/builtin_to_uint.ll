; let false = False in
; let test = True in
; 
; let input = Uint32 1844 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint128 1844 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint32 1844 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint64 18446744073709551615 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint128 18446744073709551615 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint256 18446744073709551615 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint32 100 in
; let resopt = builtin to_uint64 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint64 100 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint64 18446744073709551615 in
; let resopt = builtin to_uint64 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint64 18446744073709551615 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint128 18446744073709551615 in
; let resopt = builtin to_uint64 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint64 18446744073709551615 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint128 18446744073709551616 in
; let resopt = builtin to_uint64 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint256 18446744073709551616 in
; let resopt = builtin to_uint64 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint128 18446744073709551615 in
; let resopt = builtin to_uint128 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint128 18446744073709551615 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint128 340282366920938463463374607431768211455 in
; let resopt = builtin to_uint128 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint128 340282366920938463463374607431768211455 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint256 340282366920938463463374607431768211456 in
; let resopt = builtin to_uint128 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Uint256 340282366920938463463374607431768211456 in
; let resopt = builtin to_uint256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint256 340282366920938463463374607431768211456 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Uint32 22 in
; let resopt = builtin to_uint256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint256 22 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int32 2147483647 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint32 2147483647 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int32 -2147483648 in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = "-2147483648" in
; let resopt = builtin to_uint32 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = Int256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let resopt = builtin to_uint256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = "57896044618658097711785492504343953926634992332820282019728792003956564819967" in
; let resopt = builtin to_uint256 input in
; let test =
; match resopt with
; | Some res =>
; let input_ = Uint256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test_ = builtin eq res input_ in
; andb test test_
; | None => false
; end
; in
; 
; let input = Int256 -282366920938463463374607431768211456 in
; let resopt = builtin to_uint256 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = "-282366920938463463374607431768211456" in
; let resopt = builtin to_uint256 input in
; let test =
; match resopt with
; | Some _ => false
; | None => test
; end
; in
; 
; let input = "abcd" in
; let resopt = builtin to_uint64 input in
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

%"$TyDescrTy_PrimTyp_107" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_137" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_136"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_136" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_138"**, %"$TyDescrTy_ADTTyp_137"* }
%"$TyDescrTy_ADTTyp_Constr_138" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2080" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2081" = type { %ParamDescrString, i32, %"$ParamDescr_2080"* }
%"$$fundef_104_env_198" = type { %TName_Bool* }
%"$$fundef_102_env_199" = type {}
%Uint32 = type { i32 }
%TName_Option_Uint32 = type { i8, %CName_Some_Uint32*, %CName_None_Uint32* }
%CName_Some_Uint32 = type <{ i8, %Uint32 }>
%CName_None_Uint32 = type <{ i8 }>
%Uint128 = type { i128 }
%Uint64 = type { i64 }
%Uint256 = type { i256 }
%TName_Option_Uint64 = type { i8, %CName_Some_Uint64*, %CName_None_Uint64* }
%CName_Some_Uint64 = type <{ i8, %Uint64 }>
%CName_None_Uint64 = type <{ i8 }>
%TName_Option_Uint128 = type { i8, %CName_Some_Uint128*, %CName_None_Uint128* }
%CName_Some_Uint128 = type <{ i8, %Uint128 }>
%CName_None_Uint128 = type <{ i8 }>
%TName_Option_Uint256 = type { i8, %CName_Some_Uint256*, %CName_None_Uint256* }
%CName_Some_Uint256 = type <{ i8, %Uint256 }>
%CName_None_Uint256 = type <{ i8 }>
%Int32 = type { i32 }
%String = type { i8*, i32 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_108" = global %"$TyDescrTy_PrimTyp_107" zeroinitializer
@"$TyDescr_Int32_109" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Int32_Prim_108" to i8*) }
@"$TyDescr_Uint32_Prim_110" = global %"$TyDescrTy_PrimTyp_107" { i32 1, i32 0 }
@"$TyDescr_Uint32_111" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Uint32_Prim_110" to i8*) }
@"$TyDescr_Int64_Prim_112" = global %"$TyDescrTy_PrimTyp_107" { i32 0, i32 1 }
@"$TyDescr_Int64_113" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Int64_Prim_112" to i8*) }
@"$TyDescr_Uint64_Prim_114" = global %"$TyDescrTy_PrimTyp_107" { i32 1, i32 1 }
@"$TyDescr_Uint64_115" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Uint64_Prim_114" to i8*) }
@"$TyDescr_Int128_Prim_116" = global %"$TyDescrTy_PrimTyp_107" { i32 0, i32 2 }
@"$TyDescr_Int128_117" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Int128_Prim_116" to i8*) }
@"$TyDescr_Uint128_Prim_118" = global %"$TyDescrTy_PrimTyp_107" { i32 1, i32 2 }
@"$TyDescr_Uint128_119" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Uint128_Prim_118" to i8*) }
@"$TyDescr_Int256_Prim_120" = global %"$TyDescrTy_PrimTyp_107" { i32 0, i32 3 }
@"$TyDescr_Int256_121" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Int256_Prim_120" to i8*) }
@"$TyDescr_Uint256_Prim_122" = global %"$TyDescrTy_PrimTyp_107" { i32 1, i32 3 }
@"$TyDescr_Uint256_123" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Uint256_Prim_122" to i8*) }
@"$TyDescr_String_Prim_124" = global %"$TyDescrTy_PrimTyp_107" { i32 2, i32 0 }
@"$TyDescr_String_125" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_String_Prim_124" to i8*) }
@"$TyDescr_Bnum_Prim_126" = global %"$TyDescrTy_PrimTyp_107" { i32 3, i32 0 }
@"$TyDescr_Bnum_127" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Bnum_Prim_126" to i8*) }
@"$TyDescr_Message_Prim_128" = global %"$TyDescrTy_PrimTyp_107" { i32 4, i32 0 }
@"$TyDescr_Message_129" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Message_Prim_128" to i8*) }
@"$TyDescr_Event_Prim_130" = global %"$TyDescrTy_PrimTyp_107" { i32 5, i32 0 }
@"$TyDescr_Event_131" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Event_Prim_130" to i8*) }
@"$TyDescr_Exception_Prim_132" = global %"$TyDescrTy_PrimTyp_107" { i32 6, i32 0 }
@"$TyDescr_Exception_133" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Exception_Prim_132" to i8*) }
@"$TyDescr_Bystr_Prim_134" = global %"$TyDescrTy_PrimTyp_107" { i32 7, i32 0 }
@"$TyDescr_Bystr_135" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_107"* @"$TyDescr_Bystr_Prim_134" to i8*) }
@"$TyDescr_ADT_Option_Uint256_139" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint256_ADTTyp_Specl_156" to i8*) }
@"$TyDescr_ADT_Option_Uint128_140" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_165" to i8*) }
@"$TyDescr_ADT_Option_Uint64_141" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_174" to i8*) }
@"$TyDescr_ADT_Option_Uint32_142" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint32_ADTTyp_Specl_183" to i8*) }
@"$TyDescr_ADT_Bool_143" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Bool_ADTTyp_Specl_195" to i8*) }
@"$TyDescr_Option_ADTTyp_147" = unnamed_addr constant %"$TyDescrTy_ADTTyp_137" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_185", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 4, %"$TyDescrTy_ADTTyp_Specl_136"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_136"*], [4 x %"$TyDescrTy_ADTTyp_Specl_136"*]* @"$TyDescr_Option_ADTTyp_m_specls_184", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint256_Constr_m_args_148" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint256_123"]
@"$TyDescr_ADT_Some_149" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint256_ADTTyp_Constr_150" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_149", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint256_Constr_m_args_148", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint256_Constr_m_args_151" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_152" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint256_ADTTyp_Constr_153" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_152", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint256_Constr_m_args_151", i32 0, i32 0) }
@"$TyDescr_Option_Uint256_ADTTyp_Specl_m_constrs_154" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_138"*] [%"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_Some_Uint256_ADTTyp_Constr_150", %"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_None_Uint256_ADTTyp_Constr_153"]
@"$TyDescr_Option_Uint256_ADTTyp_Specl_m_TArgs_155" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint256_123"]
@"$TyDescr_Option_Uint256_ADTTyp_Specl_156" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_136" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint256_ADTTyp_Specl_m_TArgs_155", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_138"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_138"*], [2 x %"$TyDescrTy_ADTTyp_Constr_138"*]* @"$TyDescr_Option_Uint256_ADTTyp_Specl_m_constrs_154", i32 0, i32 0), %"$TyDescrTy_ADTTyp_137"* @"$TyDescr_Option_ADTTyp_147" }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_157" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_119"]
@"$TyDescr_ADT_Some_158" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_159" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_158", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_157", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_160" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_161" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_162" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_161", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_160", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_163" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_138"*] [%"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_159", %"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_162"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_164" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_119"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_165" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_136" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_164", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_138"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_138"*], [2 x %"$TyDescrTy_ADTTyp_Constr_138"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_163", i32 0, i32 0), %"$TyDescrTy_ADTTyp_137"* @"$TyDescr_Option_ADTTyp_147" }
@"$TyDescr_Option_Some_Uint64_Constr_m_args_166" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_115"]
@"$TyDescr_ADT_Some_167" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_168" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_167", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint64_Constr_m_args_166", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint64_Constr_m_args_169" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_170" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint64_ADTTyp_Constr_171" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_170", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint64_Constr_m_args_169", i32 0, i32 0) }
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_172" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_138"*] [%"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_168", %"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_None_Uint64_ADTTyp_Constr_171"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_173" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_115"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_174" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_136" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_173", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_138"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_138"*], [2 x %"$TyDescrTy_ADTTyp_Constr_138"*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_172", i32 0, i32 0), %"$TyDescrTy_ADTTyp_137"* @"$TyDescr_Option_ADTTyp_147" }
@"$TyDescr_Option_Some_Uint32_Constr_m_args_175" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_111"]
@"$TyDescr_ADT_Some_176" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint32_ADTTyp_Constr_177" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_176", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint32_Constr_m_args_175", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint32_Constr_m_args_178" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_179" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint32_ADTTyp_Constr_180" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_179", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint32_Constr_m_args_178", i32 0, i32 0) }
@"$TyDescr_Option_Uint32_ADTTyp_Specl_m_constrs_181" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_138"*] [%"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_Some_Uint32_ADTTyp_Constr_177", %"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Option_None_Uint32_ADTTyp_Constr_180"]
@"$TyDescr_Option_Uint32_ADTTyp_Specl_m_TArgs_182" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_111"]
@"$TyDescr_Option_Uint32_ADTTyp_Specl_183" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_136" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint32_ADTTyp_Specl_m_TArgs_182", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_138"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_138"*], [2 x %"$TyDescrTy_ADTTyp_Constr_138"*]* @"$TyDescr_Option_Uint32_ADTTyp_Specl_m_constrs_181", i32 0, i32 0), %"$TyDescrTy_ADTTyp_137"* @"$TyDescr_Option_ADTTyp_147" }
@"$TyDescr_Option_ADTTyp_m_specls_184" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_136"*] [%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint256_ADTTyp_Specl_156", %"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_165", %"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_174", %"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Option_Uint32_ADTTyp_Specl_183"]
@"$TyDescr_ADT_Option_185" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_186" = unnamed_addr constant %"$TyDescrTy_ADTTyp_137" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_197", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_136"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_136"*], [1 x %"$TyDescrTy_ADTTyp_Specl_136"*]* @"$TyDescr_Bool_ADTTyp_m_specls_196", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_187" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_188" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_189" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_188", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_187", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_190" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_191" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_192" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_138" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_191", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_190", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_193" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_138"*] [%"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Bool_True_ADTTyp_Constr_189", %"$TyDescrTy_ADTTyp_Constr_138"* @"$TyDescr_Bool_False_ADTTyp_Constr_192"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_194" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_195" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_136" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_194", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_138"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_138"*], [2 x %"$TyDescrTy_ADTTyp_Constr_138"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_193", i32 0, i32 0), %"$TyDescrTy_ADTTyp_137"* @"$TyDescr_Bool_ADTTyp_186" }
@"$TyDescr_Bool_ADTTyp_m_specls_196" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_136"*] [%"$TyDescrTy_ADTTyp_Specl_136"* @"$TyDescr_Bool_ADTTyp_Specl_195"]
@"$TyDescr_ADT_Bool_197" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$stringlit_1646" = unnamed_addr constant [11 x i8] c"-2147483648"
@"$stringlit_1803" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1960" = unnamed_addr constant [37 x i8] c"-282366920938463463374607431768211456"
@"$stringlit_2020" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_131", %_TyDescrTy_Typ* @"$TyDescr_Int64_113", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_143", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint256_139", %_TyDescrTy_Typ* @"$TyDescr_Uint64_115", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_141", %_TyDescrTy_Typ* @"$TyDescr_Bnum_127", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", %_TyDescrTy_Typ* @"$TyDescr_Exception_133", %_TyDescrTy_Typ* @"$TyDescr_String_125", %_TyDescrTy_Typ* @"$TyDescr_Int256_121", %_TyDescrTy_Typ* @"$TyDescr_Int128_117", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_140", %_TyDescrTy_Typ* @"$TyDescr_Bystr_135", %_TyDescrTy_Typ* @"$TyDescr_Message_129", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint32_142", %_TyDescrTy_Typ* @"$TyDescr_Int32_109"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_2080"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2081"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_104"(%"$$fundef_104_env_198"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_104_env_b_211" = getelementptr inbounds %"$$fundef_104_env_198", %"$$fundef_104_env_198"* %0, i32 0, i32 0
  %"$b_envload_212" = load %TName_Bool*, %TName_Bool** %"$$fundef_104_env_b_211", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_212", %TName_Bool** %b, align 8
  %"$retval_105" = alloca %TName_Bool*, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 2, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %entry
  %"$consume_217" = sub i64 %"$gasrem_213", 2
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$b_219" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_220" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_219", i32 0, i32 0
  %"$b_tag_221" = load i8, i8* %"$b_tag_220", align 1
  switch i8 %"$b_tag_221", label %"$empty_default_222" [
    i8 1, label %"$False_223"
    i8 0, label %"$True_233"
  ]

"$False_223":                                     ; preds = %"$have_gas_216"
  %"$b_224" = bitcast %TName_Bool* %"$b_219" to %CName_False*
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$False_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$False_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$adtval_230_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_230_salloc" = call i8* @_salloc(i8* %"$adtval_230_load", i64 1)
  %"$adtval_230" = bitcast i8* %"$adtval_230_salloc" to %CName_False*
  %"$adtgep_231" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_230", i32 0, i32 0
  store i8 1, i8* %"$adtgep_231", align 1
  %"$adtptr_232" = bitcast %CName_False* %"$adtval_230" to %TName_Bool*
  store %TName_Bool* %"$adtptr_232", %TName_Bool** %"$retval_105", align 8
  br label %"$matchsucc_218"

"$True_233":                                      ; preds = %"$have_gas_216"
  %"$b_234" = bitcast %TName_Bool* %"$b_219" to %CName_True*
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$True_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$True_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_105", align 8
  br label %"$matchsucc_218"

"$empty_default_222":                             ; preds = %"$have_gas_216"
  br label %"$matchsucc_218"

"$matchsucc_218":                                 ; preds = %"$have_gas_238", %"$have_gas_228", %"$empty_default_222"
  %"$$retval_105_240" = load %TName_Bool*, %TName_Bool** %"$retval_105", align 8
  ret %TName_Bool* %"$$retval_105_240"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_102"(%"$$fundef_102_env_199"* %0, %TName_Bool* %1) {
entry:
  %"$retval_103" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %entry
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$$fundef_104_envp_205_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_104_envp_205_salloc" = call i8* @_salloc(i8* %"$$fundef_104_envp_205_load", i64 8)
  %"$$fundef_104_envp_205" = bitcast i8* %"$$fundef_104_envp_205_salloc" to %"$$fundef_104_env_198"*
  %"$$fundef_104_env_voidp_207" = bitcast %"$$fundef_104_env_198"* %"$$fundef_104_envp_205" to i8*
  %"$$fundef_104_cloval_208" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_104_env_198"*, %TName_Bool*)* @"$fundef_104" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_104_env_voidp_207", 1
  %"$$fundef_104_env_b_209" = getelementptr inbounds %"$$fundef_104_env_198", %"$$fundef_104_env_198"* %"$$fundef_104_envp_205", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_104_env_b_209", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_104_cloval_208", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_103", align 8
  %"$$retval_103_210" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_103", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_103_210"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %entry
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_102_env_199"*, %TName_Bool*)* @"$fundef_102" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_106" = alloca %TName_Bool*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %entry
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$adtval_259_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_259_salloc" = call i8* @_salloc(i8* %"$adtval_259_load", i64 1)
  %"$adtval_259" = bitcast i8* %"$adtval_259_salloc" to %CName_False*
  %"$adtgep_260" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_259", i32 0, i32 0
  store i8 1, i8* %"$adtgep_260", align 1
  %"$adtptr_261" = bitcast %CName_False* %"$adtval_259" to %TName_Bool*
  store %TName_Bool* %"$adtptr_261", %TName_Bool** %false, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_257"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$adtval_272_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_272_salloc" = call i8* @_salloc(i8* %"$adtval_272_load", i64 1)
  %"$adtval_272" = bitcast i8* %"$adtval_272_salloc" to %CName_True*
  %"$adtgep_273" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_272", i32 0, i32 0
  store i8 0, i8* %"$adtgep_273", align 1
  %"$adtptr_274" = bitcast %CName_True* %"$adtval_272" to %TName_Bool*
  store %TName_Bool* %"$adtptr_274", %TName_Bool** %test, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_270"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 4, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 4
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_input_296" = alloca %Uint32, align 8
  %"$input_297" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_297", %Uint32* %"$to_uint32_input_296", align 4
  %"$$to_uint32_input_296_298" = bitcast %Uint32* %"$to_uint32_input_296" to i8*
  %"$to_uint32_call_299" = call i8* @_to_uint32(i8* %"$execptr_load_295", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", i8* %"$$to_uint32_input_296_298")
  %"$to_uint32_300" = bitcast i8* %"$to_uint32_call_299" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_300", %TName_Option_Uint32** %resopt, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_293"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 2, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 2
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$resopt_312" = load %TName_Option_Uint32*, %TName_Option_Uint32** %resopt, align 8
  %"$resopt_tag_313" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$resopt_312", i32 0, i32 0
  %"$resopt_tag_314" = load i8, i8* %"$resopt_tag_313", align 1
  switch i8 %"$resopt_tag_314", label %"$empty_default_315" [
    i8 0, label %"$Some_316"
    i8 1, label %"$None_361"
  ]

"$Some_316":                                      ; preds = %"$have_gas_309"
  %"$resopt_317" = bitcast %TName_Option_Uint32* %"$resopt_312" to %CName_Some_Uint32*
  %"$res_gep_318" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$resopt_317", i32 0, i32 1
  %"$res_load_319" = load %Uint32, %Uint32* %"$res_gep_318", align 4
  %res = alloca %Uint32, align 8
  store %Uint32 %"$res_load_319", %Uint32* %res, align 4
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$Some_316"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$Some_316"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %input_ = alloca %Uint32, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_, align 4
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 4, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 4
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$execptr_load_340" = load i8*, i8** @_execptr, align 8
  %"$res_341" = load %Uint32, %Uint32* %res, align 4
  %"$input__342" = load %Uint32, %Uint32* %input_, align 4
  %"$eq_call_343" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_340", %Uint32 %"$res_341", %Uint32 %"$input__342")
  store %TName_Bool* %"$eq_call_343", %TName_Bool** %test_, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_338"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$BoolUtils.andb_78" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_350" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_351" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_350", 0
  %"$BoolUtils.andb_envptr_352" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_350", 1
  %"$test_353" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_354" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_351"(i8* %"$BoolUtils.andb_envptr_352", %TName_Bool* %"$test_353")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_354", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_78", align 8
  %"$BoolUtils.andb_79" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_78_355" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_78", align 8
  %"$$BoolUtils.andb_78_fptr_356" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_78_355", 0
  %"$$BoolUtils.andb_78_envptr_357" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_78_355", 1
  %"$test__358" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_78_call_359" = call %TName_Bool* %"$$BoolUtils.andb_78_fptr_356"(i8* %"$$BoolUtils.andb_78_envptr_357", %TName_Bool* %"$test__358")
  store %TName_Bool* %"$$BoolUtils.andb_78_call_359", %TName_Bool** %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_360" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_79", align 8
  store %TName_Bool* %"$$BoolUtils.andb_79_360", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_311"

"$None_361":                                      ; preds = %"$have_gas_309"
  %"$resopt_362" = bitcast %TName_Option_Uint32* %"$resopt_312" to %CName_None_Uint32*
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$None_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$None_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$false_368" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_368", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_311"

"$empty_default_315":                             ; preds = %"$have_gas_309"
  br label %"$matchsucc_311"

"$matchsucc_311":                                 ; preds = %"$have_gas_366", %"$have_gas_348", %"$empty_default_315"
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$matchsucc_311"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$matchsucc_311"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$input_1" = alloca %Uint128, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_1", align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$resopt_2" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 4, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 4
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$execptr_load_389" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_1_390" = alloca %Uint128, align 8
  %"$$input_1_391" = load %Uint128, %Uint128* %"$input_1", align 8
  store %Uint128 %"$$input_1_391", %Uint128* %"$to_uint32_$input_1_390", align 8
  %"$$to_uint32_$input_1_390_392" = bitcast %Uint128* %"$to_uint32_$input_1_390" to i8*
  %"$to_uint32_call_393" = call i8* @_to_uint32(i8* %"$execptr_load_389", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint32_$input_1_390_392")
  %"$to_uint32_394" = bitcast i8* %"$to_uint32_call_393" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_394", %TName_Option_Uint32** %"$resopt_2", align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_387"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %"$test_3" = alloca %TName_Bool*, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 2, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 2
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$$resopt_2_406" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_2", align 8
  %"$$resopt_2_tag_407" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_2_406", i32 0, i32 0
  %"$$resopt_2_tag_408" = load i8, i8* %"$$resopt_2_tag_407", align 1
  switch i8 %"$$resopt_2_tag_408", label %"$empty_default_409" [
    i8 0, label %"$Some_410"
    i8 1, label %"$None_455"
  ]

"$Some_410":                                      ; preds = %"$have_gas_403"
  %"$$resopt_2_411" = bitcast %TName_Option_Uint32* %"$$resopt_2_406" to %CName_Some_Uint32*
  %"$res_gep_412" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_2_411", i32 0, i32 1
  %"$res_load_413" = load %Uint32, %Uint32* %"$res_gep_412", align 4
  %res1 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_413", %Uint32* %res1, align 4
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$Some_410"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$Some_410"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %input_2 = alloca %Uint32, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_2, align 4
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 4, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 4
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$execptr_load_434" = load i8*, i8** @_execptr, align 8
  %"$res_435" = load %Uint32, %Uint32* %res1, align 4
  %"$input__436" = load %Uint32, %Uint32* %input_2, align 4
  %"$eq_call_437" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_434", %Uint32 %"$res_435", %Uint32 %"$input__436")
  store %TName_Bool* %"$eq_call_437", %TName_Bool** %test_3, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_432"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$BoolUtils.andb_80" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_444" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_445" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_444", 0
  %"$BoolUtils.andb_envptr_446" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_444", 1
  %"$$test_0_447" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_448" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_445"(i8* %"$BoolUtils.andb_envptr_446", %TName_Bool* %"$$test_0_447")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_448", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_80", align 8
  %"$BoolUtils.andb_81" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_80_449" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_80", align 8
  %"$$BoolUtils.andb_80_fptr_450" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_80_449", 0
  %"$$BoolUtils.andb_80_envptr_451" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_80_449", 1
  %"$test__452" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_80_call_453" = call %TName_Bool* %"$$BoolUtils.andb_80_fptr_450"(i8* %"$$BoolUtils.andb_80_envptr_451", %TName_Bool* %"$test__452")
  store %TName_Bool* %"$$BoolUtils.andb_80_call_453", %TName_Bool** %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_454" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_81", align 8
  store %TName_Bool* %"$$BoolUtils.andb_81_454", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_405"

"$None_455":                                      ; preds = %"$have_gas_403"
  %"$$resopt_2_456" = bitcast %TName_Option_Uint32* %"$$resopt_2_406" to %CName_None_Uint32*
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$None_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$None_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$false_462" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_462", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_405"

"$empty_default_409":                             ; preds = %"$have_gas_403"
  br label %"$matchsucc_405"

"$matchsucc_405":                                 ; preds = %"$have_gas_460", %"$have_gas_442", %"$empty_default_409"
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$matchsucc_405"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$matchsucc_405"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %"$input_4" = alloca %Uint64, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_4", align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$resopt_5" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 4, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 4
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$execptr_load_483" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_4_484" = alloca %Uint64, align 8
  %"$$input_4_485" = load %Uint64, %Uint64* %"$input_4", align 8
  store %Uint64 %"$$input_4_485", %Uint64* %"$to_uint32_$input_4_484", align 8
  %"$$to_uint32_$input_4_484_486" = bitcast %Uint64* %"$to_uint32_$input_4_484" to i8*
  %"$to_uint32_call_487" = call i8* @_to_uint32(i8* %"$execptr_load_483", %_TyDescrTy_Typ* @"$TyDescr_Uint64_115", i8* %"$$to_uint32_$input_4_484_486")
  %"$to_uint32_488" = bitcast i8* %"$to_uint32_call_487" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_488", %TName_Option_Uint32** %"$resopt_5", align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_481"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 2, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 2
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$$resopt_5_500" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_5", align 8
  %"$$resopt_5_tag_501" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_5_500", i32 0, i32 0
  %"$$resopt_5_tag_502" = load i8, i8* %"$$resopt_5_tag_501", align 1
  switch i8 %"$$resopt_5_tag_502", label %"$empty_default_503" [
    i8 0, label %"$Some_504"
    i8 1, label %"$None_514"
  ]

"$Some_504":                                      ; preds = %"$have_gas_497"
  %"$$resopt_5_505" = bitcast %TName_Option_Uint32* %"$$resopt_5_500" to %CName_Some_Uint32*
  %"$$$resopt_5_67_gep_506" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_5_505", i32 0, i32 1
  %"$$$resopt_5_67_load_507" = load %Uint32, %Uint32* %"$$$resopt_5_67_gep_506", align 4
  %"$$resopt_5_67" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_5_67_load_507", %Uint32* %"$$resopt_5_67", align 4
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$Some_504"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$Some_504"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$false_513" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_513", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_499"

"$None_514":                                      ; preds = %"$have_gas_497"
  %"$$resopt_5_515" = bitcast %TName_Option_Uint32* %"$$resopt_5_500" to %CName_None_Uint32*
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$None_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$None_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$$test_3_521" = load %TName_Bool*, %TName_Bool** %"$test_3", align 8
  store %TName_Bool* %"$$test_3_521", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_499"

"$empty_default_503":                             ; preds = %"$have_gas_497"
  br label %"$matchsucc_499"

"$matchsucc_499":                                 ; preds = %"$have_gas_519", %"$have_gas_511", %"$empty_default_503"
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$matchsucc_499"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$matchsucc_499"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_7", align 8
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 4, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_535"
  %"$consume_541" = sub i64 %"$gasrem_537", 4
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$execptr_load_542" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_7_543" = alloca %Uint128, align 8
  %"$$input_7_544" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_544", %Uint128* %"$to_uint32_$input_7_543", align 8
  %"$$to_uint32_$input_7_543_545" = bitcast %Uint128* %"$to_uint32_$input_7_543" to i8*
  %"$to_uint32_call_546" = call i8* @_to_uint32(i8* %"$execptr_load_542", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint32_$input_7_543_545")
  %"$to_uint32_547" = bitcast i8* %"$to_uint32_call_546" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_547", %TName_Option_Uint32** %"$resopt_8", align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_540"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 2, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_551"
  %"$consume_557" = sub i64 %"$gasrem_553", 2
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %"$$resopt_8_559" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_8", align 8
  %"$$resopt_8_tag_560" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_8_559", i32 0, i32 0
  %"$$resopt_8_tag_561" = load i8, i8* %"$$resopt_8_tag_560", align 1
  switch i8 %"$$resopt_8_tag_561", label %"$empty_default_562" [
    i8 0, label %"$Some_563"
    i8 1, label %"$None_573"
  ]

"$Some_563":                                      ; preds = %"$have_gas_556"
  %"$$resopt_8_564" = bitcast %TName_Option_Uint32* %"$$resopt_8_559" to %CName_Some_Uint32*
  %"$$$resopt_8_68_gep_565" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_8_564", i32 0, i32 1
  %"$$$resopt_8_68_load_566" = load %Uint32, %Uint32* %"$$$resopt_8_68_gep_565", align 4
  %"$$resopt_8_68" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_8_68_load_566", %Uint32* %"$$resopt_8_68", align 4
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$Some_563"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$Some_563"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$false_572" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_572", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_558"

"$None_573":                                      ; preds = %"$have_gas_556"
  %"$$resopt_8_574" = bitcast %TName_Option_Uint32* %"$$resopt_8_559" to %CName_None_Uint32*
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$None_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$None_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$$test_6_580" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  store %TName_Bool* %"$$test_6_580", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_558"

"$empty_default_562":                             ; preds = %"$have_gas_556"
  br label %"$matchsucc_558"

"$matchsucc_558":                                 ; preds = %"$have_gas_578", %"$have_gas_570", %"$empty_default_562"
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$matchsucc_558"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$matchsucc_558"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$input_10" = alloca %Uint256, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551615 }, %Uint256* %"$input_10", align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 4, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 4
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$execptr_load_601" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_10_602" = alloca %Uint256, align 8
  %"$$input_10_603" = load %Uint256, %Uint256* %"$input_10", align 8
  store %Uint256 %"$$input_10_603", %Uint256* %"$to_uint32_$input_10_602", align 8
  %"$$to_uint32_$input_10_602_604" = bitcast %Uint256* %"$to_uint32_$input_10_602" to i8*
  %"$to_uint32_call_605" = call i8* @_to_uint32(i8* %"$execptr_load_601", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint32_$input_10_602_604")
  %"$to_uint32_606" = bitcast i8* %"$to_uint32_call_605" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_606", %TName_Option_Uint32** %"$resopt_11", align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_599"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 2, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_610"
  %"$consume_616" = sub i64 %"$gasrem_612", 2
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$$resopt_11_618" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_11", align 8
  %"$$resopt_11_tag_619" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_11_618", i32 0, i32 0
  %"$$resopt_11_tag_620" = load i8, i8* %"$$resopt_11_tag_619", align 1
  switch i8 %"$$resopt_11_tag_620", label %"$empty_default_621" [
    i8 0, label %"$Some_622"
    i8 1, label %"$None_632"
  ]

"$Some_622":                                      ; preds = %"$have_gas_615"
  %"$$resopt_11_623" = bitcast %TName_Option_Uint32* %"$$resopt_11_618" to %CName_Some_Uint32*
  %"$$$resopt_11_69_gep_624" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_11_623", i32 0, i32 1
  %"$$$resopt_11_69_load_625" = load %Uint32, %Uint32* %"$$$resopt_11_69_gep_624", align 4
  %"$$resopt_11_69" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_11_69_load_625", %Uint32* %"$$resopt_11_69", align 4
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$Some_622"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$Some_622"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$false_631" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_631", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_617"

"$None_632":                                      ; preds = %"$have_gas_615"
  %"$$resopt_11_633" = bitcast %TName_Option_Uint32* %"$$resopt_11_618" to %CName_None_Uint32*
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$None_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$None_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %"$$test_9_639" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  store %TName_Bool* %"$$test_9_639", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_617"

"$empty_default_621":                             ; preds = %"$have_gas_615"
  br label %"$matchsucc_617"

"$matchsucc_617":                                 ; preds = %"$have_gas_637", %"$have_gas_629", %"$empty_default_621"
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$matchsucc_617"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$matchsucc_617"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint32, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %"$input_13", align 4
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 4, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 4
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$execptr_load_660" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_13_661" = alloca %Uint32, align 8
  %"$$input_13_662" = load %Uint32, %Uint32* %"$input_13", align 4
  store %Uint32 %"$$input_13_662", %Uint32* %"$to_uint64_$input_13_661", align 4
  %"$$to_uint64_$input_13_661_663" = bitcast %Uint32* %"$to_uint64_$input_13_661" to i8*
  %"$to_uint64_call_664" = call i8* @_to_uint64(i8* %"$execptr_load_660", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", i8* %"$$to_uint64_$input_13_661_663")
  %"$to_uint64_665" = bitcast i8* %"$to_uint64_call_664" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_665", %TName_Option_Uint64** %"$resopt_14", align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_658"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  %"$gasrem_671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_672" = icmp ugt i64 2, %"$gasrem_671"
  br i1 %"$gascmp_672", label %"$out_of_gas_673", label %"$have_gas_674"

"$out_of_gas_673":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_674"

"$have_gas_674":                                  ; preds = %"$out_of_gas_673", %"$have_gas_669"
  %"$consume_675" = sub i64 %"$gasrem_671", 2
  store i64 %"$consume_675", i64* @_gasrem, align 8
  %"$$resopt_14_677" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_14", align 8
  %"$$resopt_14_tag_678" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_14_677", i32 0, i32 0
  %"$$resopt_14_tag_679" = load i8, i8* %"$$resopt_14_tag_678", align 1
  switch i8 %"$$resopt_14_tag_679", label %"$empty_default_680" [
    i8 0, label %"$Some_681"
    i8 1, label %"$None_726"
  ]

"$Some_681":                                      ; preds = %"$have_gas_674"
  %"$$resopt_14_682" = bitcast %TName_Option_Uint64* %"$$resopt_14_677" to %CName_Some_Uint64*
  %"$res_gep_683" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_14_682", i32 0, i32 1
  %"$res_load_684" = load %Uint64, %Uint64* %"$res_gep_683", align 8
  %res4 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_684", %Uint64* %res4, align 8
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$Some_681"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$Some_681"
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  %input_5 = alloca %Uint64, align 8
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_688"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_688"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %input_5, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_693"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 4, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_698"
  %"$consume_704" = sub i64 %"$gasrem_700", 4
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$execptr_load_705" = load i8*, i8** @_execptr, align 8
  %"$res_706" = load %Uint64, %Uint64* %res4, align 8
  %"$input__707" = load %Uint64, %Uint64* %input_5, align 8
  %"$eq_call_708" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_705", %Uint64 %"$res_706", %Uint64 %"$input__707")
  store %TName_Bool* %"$eq_call_708", %TName_Bool** %test_6, align 8
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_703"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %"$BoolUtils.andb_82" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_715" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_716" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_715", 0
  %"$BoolUtils.andb_envptr_717" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_715", 1
  %"$$test_12_718" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_719" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_716"(i8* %"$BoolUtils.andb_envptr_717", %TName_Bool* %"$$test_12_718")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_719", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_82", align 8
  %"$BoolUtils.andb_83" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_82_720" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_82", align 8
  %"$$BoolUtils.andb_82_fptr_721" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_82_720", 0
  %"$$BoolUtils.andb_82_envptr_722" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_82_720", 1
  %"$test__723" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_82_call_724" = call %TName_Bool* %"$$BoolUtils.andb_82_fptr_721"(i8* %"$$BoolUtils.andb_82_envptr_722", %TName_Bool* %"$test__723")
  store %TName_Bool* %"$$BoolUtils.andb_82_call_724", %TName_Bool** %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_725" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_83", align 8
  store %TName_Bool* %"$$BoolUtils.andb_83_725", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_676"

"$None_726":                                      ; preds = %"$have_gas_674"
  %"$$resopt_14_727" = bitcast %TName_Option_Uint64* %"$$resopt_14_677" to %CName_None_Uint64*
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$None_726"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$None_726"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$false_733" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_733", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_676"

"$empty_default_680":                             ; preds = %"$have_gas_674"
  br label %"$matchsucc_676"

"$matchsucc_676":                                 ; preds = %"$have_gas_731", %"$have_gas_713", %"$empty_default_680"
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$matchsucc_676"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$matchsucc_676"
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint64, align 8
  %"$gasrem_739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_740" = icmp ugt i64 1, %"$gasrem_739"
  br i1 %"$gascmp_740", label %"$out_of_gas_741", label %"$have_gas_742"

"$out_of_gas_741":                                ; preds = %"$have_gas_737"
  call void @_out_of_gas()
  br label %"$have_gas_742"

"$have_gas_742":                                  ; preds = %"$out_of_gas_741", %"$have_gas_737"
  %"$consume_743" = sub i64 %"$gasrem_739", 1
  store i64 %"$consume_743", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_16", align 8
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %"$have_gas_742"
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %"$have_gas_742"
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 4, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$have_gas_747"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$have_gas_747"
  %"$consume_753" = sub i64 %"$gasrem_749", 4
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %"$execptr_load_754" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_16_755" = alloca %Uint64, align 8
  %"$$input_16_756" = load %Uint64, %Uint64* %"$input_16", align 8
  store %Uint64 %"$$input_16_756", %Uint64* %"$to_uint64_$input_16_755", align 8
  %"$$to_uint64_$input_16_755_757" = bitcast %Uint64* %"$to_uint64_$input_16_755" to i8*
  %"$to_uint64_call_758" = call i8* @_to_uint64(i8* %"$execptr_load_754", %_TyDescrTy_Typ* @"$TyDescr_Uint64_115", i8* %"$$to_uint64_$input_16_755_757")
  %"$to_uint64_759" = bitcast i8* %"$to_uint64_call_758" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_759", %TName_Option_Uint64** %"$resopt_17", align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_752"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_752"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 2, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 2
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$$resopt_17_771" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_17", align 8
  %"$$resopt_17_tag_772" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_17_771", i32 0, i32 0
  %"$$resopt_17_tag_773" = load i8, i8* %"$$resopt_17_tag_772", align 1
  switch i8 %"$$resopt_17_tag_773", label %"$empty_default_774" [
    i8 0, label %"$Some_775"
    i8 1, label %"$None_820"
  ]

"$Some_775":                                      ; preds = %"$have_gas_768"
  %"$$resopt_17_776" = bitcast %TName_Option_Uint64* %"$$resopt_17_771" to %CName_Some_Uint64*
  %"$res_gep_777" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_17_776", i32 0, i32 1
  %"$res_load_778" = load %Uint64, %Uint64* %"$res_gep_777", align 8
  %res7 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_778", %Uint64* %res7, align 8
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$Some_775"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$Some_775"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %input_8 = alloca %Uint64, align 8
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 1, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_782"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_782"
  %"$consume_788" = sub i64 %"$gasrem_784", 1
  store i64 %"$consume_788", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_8, align 8
  %"$gasrem_789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %"$have_gas_787"
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 4, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_792"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_792"
  %"$consume_798" = sub i64 %"$gasrem_794", 4
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %"$execptr_load_799" = load i8*, i8** @_execptr, align 8
  %"$res_800" = load %Uint64, %Uint64* %res7, align 8
  %"$input__801" = load %Uint64, %Uint64* %input_8, align 8
  %"$eq_call_802" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_799", %Uint64 %"$res_800", %Uint64 %"$input__801")
  store %TName_Bool* %"$eq_call_802", %TName_Bool** %test_9, align 8
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_797"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %"$BoolUtils.andb_84" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_809" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_810" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_809", 0
  %"$BoolUtils.andb_envptr_811" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_809", 1
  %"$$test_15_812" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  %"$BoolUtils.andb_call_813" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_810"(i8* %"$BoolUtils.andb_envptr_811", %TName_Bool* %"$$test_15_812")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_813", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$BoolUtils.andb_85" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_84_814" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_fptr_815" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_814", 0
  %"$$BoolUtils.andb_84_envptr_816" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_814", 1
  %"$test__817" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_84_call_818" = call %TName_Bool* %"$$BoolUtils.andb_84_fptr_815"(i8* %"$$BoolUtils.andb_84_envptr_816", %TName_Bool* %"$test__817")
  store %TName_Bool* %"$$BoolUtils.andb_84_call_818", %TName_Bool** %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_819" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_85", align 8
  store %TName_Bool* %"$$BoolUtils.andb_85_819", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_770"

"$None_820":                                      ; preds = %"$have_gas_768"
  %"$$resopt_17_821" = bitcast %TName_Option_Uint64* %"$$resopt_17_771" to %CName_None_Uint64*
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 1, %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %"$None_820"
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %"$None_820"
  %"$consume_826" = sub i64 %"$gasrem_822", 1
  store i64 %"$consume_826", i64* @_gasrem, align 8
  %"$false_827" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_827", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_770"

"$empty_default_774":                             ; preds = %"$have_gas_768"
  br label %"$matchsucc_770"

"$matchsucc_770":                                 ; preds = %"$have_gas_825", %"$have_gas_807", %"$empty_default_774"
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$matchsucc_770"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$matchsucc_770"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$input_19" = alloca %Uint128, align 8
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_19", align 8
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_836"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_844" = icmp ugt i64 4, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$have_gas_841"
  %"$consume_847" = sub i64 %"$gasrem_843", 4
  store i64 %"$consume_847", i64* @_gasrem, align 8
  %"$execptr_load_848" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_19_849" = alloca %Uint128, align 8
  %"$$input_19_850" = load %Uint128, %Uint128* %"$input_19", align 8
  store %Uint128 %"$$input_19_850", %Uint128* %"$to_uint64_$input_19_849", align 8
  %"$$to_uint64_$input_19_849_851" = bitcast %Uint128* %"$to_uint64_$input_19_849" to i8*
  %"$to_uint64_call_852" = call i8* @_to_uint64(i8* %"$execptr_load_848", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint64_$input_19_849_851")
  %"$to_uint64_853" = bitcast i8* %"$to_uint64_call_852" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_853", %TName_Option_Uint64** %"$resopt_20", align 8
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 1, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_846"
  %"$consume_858" = sub i64 %"$gasrem_854", 1
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  %"$gasrem_859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_860" = icmp ugt i64 2, %"$gasrem_859"
  br i1 %"$gascmp_860", label %"$out_of_gas_861", label %"$have_gas_862"

"$out_of_gas_861":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_862"

"$have_gas_862":                                  ; preds = %"$out_of_gas_861", %"$have_gas_857"
  %"$consume_863" = sub i64 %"$gasrem_859", 2
  store i64 %"$consume_863", i64* @_gasrem, align 8
  %"$$resopt_20_865" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_20", align 8
  %"$$resopt_20_tag_866" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_20_865", i32 0, i32 0
  %"$$resopt_20_tag_867" = load i8, i8* %"$$resopt_20_tag_866", align 1
  switch i8 %"$$resopt_20_tag_867", label %"$empty_default_868" [
    i8 0, label %"$Some_869"
    i8 1, label %"$None_914"
  ]

"$Some_869":                                      ; preds = %"$have_gas_862"
  %"$$resopt_20_870" = bitcast %TName_Option_Uint64* %"$$resopt_20_865" to %CName_Some_Uint64*
  %"$res_gep_871" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_20_870", i32 0, i32 1
  %"$res_load_872" = load %Uint64, %Uint64* %"$res_gep_871", align 8
  %res10 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_872", %Uint64* %res10, align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$Some_869"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$Some_869"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %input_11 = alloca %Uint64, align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_876"
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_11, align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_881"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 4, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_886"
  %"$consume_892" = sub i64 %"$gasrem_888", 4
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$execptr_load_893" = load i8*, i8** @_execptr, align 8
  %"$res_894" = load %Uint64, %Uint64* %res10, align 8
  %"$input__895" = load %Uint64, %Uint64* %input_11, align 8
  %"$eq_call_896" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_893", %Uint64 %"$res_894", %Uint64 %"$input__895")
  store %TName_Bool* %"$eq_call_896", %TName_Bool** %test_12, align 8
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 1, %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$have_gas_891"
  %"$consume_902" = sub i64 %"$gasrem_898", 1
  store i64 %"$consume_902", i64* @_gasrem, align 8
  %"$BoolUtils.andb_86" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_903" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_904" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_903", 0
  %"$BoolUtils.andb_envptr_905" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_903", 1
  %"$$test_18_906" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_907" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_904"(i8* %"$BoolUtils.andb_envptr_905", %TName_Bool* %"$$test_18_906")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_907", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$BoolUtils.andb_87" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_86_908" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_fptr_909" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_908", 0
  %"$$BoolUtils.andb_86_envptr_910" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_908", 1
  %"$test__911" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_86_call_912" = call %TName_Bool* %"$$BoolUtils.andb_86_fptr_909"(i8* %"$$BoolUtils.andb_86_envptr_910", %TName_Bool* %"$test__911")
  store %TName_Bool* %"$$BoolUtils.andb_86_call_912", %TName_Bool** %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_913" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_87", align 8
  store %TName_Bool* %"$$BoolUtils.andb_87_913", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_864"

"$None_914":                                      ; preds = %"$have_gas_862"
  %"$$resopt_20_915" = bitcast %TName_Option_Uint64* %"$$resopt_20_865" to %CName_None_Uint64*
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$None_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$None_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$false_921" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_921", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_864"

"$empty_default_868":                             ; preds = %"$have_gas_862"
  br label %"$matchsucc_864"

"$matchsucc_864":                                 ; preds = %"$have_gas_919", %"$have_gas_901", %"$empty_default_868"
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$matchsucc_864"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$matchsucc_864"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint128, align 8
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_925"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551616 }, %Uint128* %"$input_22", align 8
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_938" = icmp ugt i64 4, %"$gasrem_937"
  br i1 %"$gascmp_938", label %"$out_of_gas_939", label %"$have_gas_940"

"$out_of_gas_939":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_940"

"$have_gas_940":                                  ; preds = %"$out_of_gas_939", %"$have_gas_935"
  %"$consume_941" = sub i64 %"$gasrem_937", 4
  store i64 %"$consume_941", i64* @_gasrem, align 8
  %"$execptr_load_942" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_22_943" = alloca %Uint128, align 8
  %"$$input_22_944" = load %Uint128, %Uint128* %"$input_22", align 8
  store %Uint128 %"$$input_22_944", %Uint128* %"$to_uint64_$input_22_943", align 8
  %"$$to_uint64_$input_22_943_945" = bitcast %Uint128* %"$to_uint64_$input_22_943" to i8*
  %"$to_uint64_call_946" = call i8* @_to_uint64(i8* %"$execptr_load_942", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint64_$input_22_943_945")
  %"$to_uint64_947" = bitcast i8* %"$to_uint64_call_946" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_947", %TName_Option_Uint64** %"$resopt_23", align 8
  %"$gasrem_948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$have_gas_940"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$have_gas_940"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 2, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_951"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_951"
  %"$consume_957" = sub i64 %"$gasrem_953", 2
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %"$$resopt_23_959" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_23", align 8
  %"$$resopt_23_tag_960" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_23_959", i32 0, i32 0
  %"$$resopt_23_tag_961" = load i8, i8* %"$$resopt_23_tag_960", align 1
  switch i8 %"$$resopt_23_tag_961", label %"$empty_default_962" [
    i8 0, label %"$Some_963"
    i8 1, label %"$None_973"
  ]

"$Some_963":                                      ; preds = %"$have_gas_956"
  %"$$resopt_23_964" = bitcast %TName_Option_Uint64* %"$$resopt_23_959" to %CName_Some_Uint64*
  %"$$$resopt_23_70_gep_965" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_23_964", i32 0, i32 1
  %"$$$resopt_23_70_load_966" = load %Uint64, %Uint64* %"$$$resopt_23_70_gep_965", align 8
  %"$$resopt_23_70" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_23_70_load_966", %Uint64* %"$$resopt_23_70", align 8
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 1, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$Some_963"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$Some_963"
  %"$consume_971" = sub i64 %"$gasrem_967", 1
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %"$false_972" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_972", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_958"

"$None_973":                                      ; preds = %"$have_gas_956"
  %"$$resopt_23_974" = bitcast %TName_Option_Uint64* %"$$resopt_23_959" to %CName_None_Uint64*
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$None_973"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$None_973"
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %"$$test_21_980" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  store %TName_Bool* %"$$test_21_980", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_958"

"$empty_default_962":                             ; preds = %"$have_gas_956"
  br label %"$matchsucc_958"

"$matchsucc_958":                                 ; preds = %"$have_gas_978", %"$have_gas_970", %"$empty_default_962"
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$matchsucc_958"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$matchsucc_958"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  %"$input_25" = alloca %Uint256, align 8
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 1, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_984"
  %"$consume_990" = sub i64 %"$gasrem_986", 1
  store i64 %"$consume_990", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551616 }, %Uint256* %"$input_25", align 8
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 1, %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_989"
  %"$consume_995" = sub i64 %"$gasrem_991", 1
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_997" = icmp ugt i64 4, %"$gasrem_996"
  br i1 %"$gascmp_997", label %"$out_of_gas_998", label %"$have_gas_999"

"$out_of_gas_998":                                ; preds = %"$have_gas_994"
  call void @_out_of_gas()
  br label %"$have_gas_999"

"$have_gas_999":                                  ; preds = %"$out_of_gas_998", %"$have_gas_994"
  %"$consume_1000" = sub i64 %"$gasrem_996", 4
  store i64 %"$consume_1000", i64* @_gasrem, align 8
  %"$execptr_load_1001" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_25_1002" = alloca %Uint256, align 8
  %"$$input_25_1003" = load %Uint256, %Uint256* %"$input_25", align 8
  store %Uint256 %"$$input_25_1003", %Uint256* %"$to_uint64_$input_25_1002", align 8
  %"$$to_uint64_$input_25_1002_1004" = bitcast %Uint256* %"$to_uint64_$input_25_1002" to i8*
  %"$to_uint64_call_1005" = call i8* @_to_uint64(i8* %"$execptr_load_1001", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint64_$input_25_1002_1004")
  %"$to_uint64_1006" = bitcast i8* %"$to_uint64_call_1005" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_1006", %TName_Option_Uint64** %"$resopt_26", align 8
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$have_gas_999"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$have_gas_999"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 2, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1010"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1010"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 2
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$$resopt_26_1018" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_26", align 8
  %"$$resopt_26_tag_1019" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_26_1018", i32 0, i32 0
  %"$$resopt_26_tag_1020" = load i8, i8* %"$$resopt_26_tag_1019", align 1
  switch i8 %"$$resopt_26_tag_1020", label %"$empty_default_1021" [
    i8 0, label %"$Some_1022"
    i8 1, label %"$None_1032"
  ]

"$Some_1022":                                     ; preds = %"$have_gas_1015"
  %"$$resopt_26_1023" = bitcast %TName_Option_Uint64* %"$$resopt_26_1018" to %CName_Some_Uint64*
  %"$$$resopt_26_71_gep_1024" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_26_1023", i32 0, i32 1
  %"$$$resopt_26_71_load_1025" = load %Uint64, %Uint64* %"$$$resopt_26_71_gep_1024", align 8
  %"$$resopt_26_71" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_26_71_load_1025", %Uint64* %"$$resopt_26_71", align 8
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$Some_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$Some_1022"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  %"$false_1031" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1031", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_1017"

"$None_1032":                                     ; preds = %"$have_gas_1015"
  %"$$resopt_26_1033" = bitcast %TName_Option_Uint64* %"$$resopt_26_1018" to %CName_None_Uint64*
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 1, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$None_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$None_1032"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 1
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  %"$$test_24_1039" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  store %TName_Bool* %"$$test_24_1039", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_1017"

"$empty_default_1021":                            ; preds = %"$have_gas_1015"
  br label %"$matchsucc_1017"

"$matchsucc_1017":                                ; preds = %"$have_gas_1037", %"$have_gas_1029", %"$empty_default_1021"
  %"$gasrem_1040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1041" = icmp ugt i64 1, %"$gasrem_1040"
  br i1 %"$gascmp_1041", label %"$out_of_gas_1042", label %"$have_gas_1043"

"$out_of_gas_1042":                               ; preds = %"$matchsucc_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1043"

"$have_gas_1043":                                 ; preds = %"$out_of_gas_1042", %"$matchsucc_1017"
  %"$consume_1044" = sub i64 %"$gasrem_1040", 1
  store i64 %"$consume_1044", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint128, align 8
  %"$gasrem_1045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1046" = icmp ugt i64 1, %"$gasrem_1045"
  br i1 %"$gascmp_1046", label %"$out_of_gas_1047", label %"$have_gas_1048"

"$out_of_gas_1047":                               ; preds = %"$have_gas_1043"
  call void @_out_of_gas()
  br label %"$have_gas_1048"

"$have_gas_1048":                                 ; preds = %"$out_of_gas_1047", %"$have_gas_1043"
  %"$consume_1049" = sub i64 %"$gasrem_1045", 1
  store i64 %"$consume_1049", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_28", align 8
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 1, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$have_gas_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$have_gas_1048"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 1
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 8, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %"$have_gas_1053"
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %"$have_gas_1053"
  %"$consume_1059" = sub i64 %"$gasrem_1055", 8
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %"$execptr_load_1060" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_28_1061" = alloca %Uint128, align 8
  %"$$input_28_1062" = load %Uint128, %Uint128* %"$input_28", align 8
  store %Uint128 %"$$input_28_1062", %Uint128* %"$to_uint128_$input_28_1061", align 8
  %"$$to_uint128_$input_28_1061_1063" = bitcast %Uint128* %"$to_uint128_$input_28_1061" to i8*
  %"$to_uint128_call_1064" = call i8* @_to_uint128(i8* %"$execptr_load_1060", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint128_$input_28_1061_1063")
  %"$to_uint128_1065" = bitcast i8* %"$to_uint128_call_1064" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1065", %TName_Option_Uint128** %"$resopt_29", align 8
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1058"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 2, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 2
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %"$$resopt_29_1077" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_29", align 8
  %"$$resopt_29_tag_1078" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_29_1077", i32 0, i32 0
  %"$$resopt_29_tag_1079" = load i8, i8* %"$$resopt_29_tag_1078", align 1
  switch i8 %"$$resopt_29_tag_1079", label %"$empty_default_1080" [
    i8 0, label %"$Some_1081"
    i8 1, label %"$None_1127"
  ]

"$Some_1081":                                     ; preds = %"$have_gas_1074"
  %"$$resopt_29_1082" = bitcast %TName_Option_Uint128* %"$$resopt_29_1077" to %CName_Some_Uint128*
  %"$res_gep_1083" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_29_1082", i32 0, i32 1
  %"$res_load_1084" = load %Uint128, %Uint128* %"$res_gep_1083", align 8
  %res13 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1084", %Uint128* %res13, align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$Some_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$Some_1081"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %input_14 = alloca %Uint128, align 8
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1088"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %input_14, align 8
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 1, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1093"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 1
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  %"$gasrem_1101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1102" = icmp ugt i64 8, %"$gasrem_1101"
  br i1 %"$gascmp_1102", label %"$out_of_gas_1103", label %"$have_gas_1104"

"$out_of_gas_1103":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1104"

"$have_gas_1104":                                 ; preds = %"$out_of_gas_1103", %"$have_gas_1098"
  %"$consume_1105" = sub i64 %"$gasrem_1101", 8
  store i64 %"$consume_1105", i64* @_gasrem, align 8
  %"$execptr_load_1106" = load i8*, i8** @_execptr, align 8
  %"$res_1107" = load %Uint128, %Uint128* %res13, align 8
  %"$input__1108" = load %Uint128, %Uint128* %input_14, align 8
  %"$eq_call_1109" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1106", %Uint128 %"$res_1107", %Uint128 %"$input__1108")
  store %TName_Bool* %"$eq_call_1109", %TName_Bool** %test_15, align 8
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1104"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1104"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$BoolUtils.andb_88" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1116" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1117" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1116", 0
  %"$BoolUtils.andb_envptr_1118" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1116", 1
  %"$$test_27_1119" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1120" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1117"(i8* %"$BoolUtils.andb_envptr_1118", %TName_Bool* %"$$test_27_1119")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1120", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$BoolUtils.andb_89" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_88_1121" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_fptr_1122" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_1121", 0
  %"$$BoolUtils.andb_88_envptr_1123" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_1121", 1
  %"$test__1124" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_88_call_1125" = call %TName_Bool* %"$$BoolUtils.andb_88_fptr_1122"(i8* %"$$BoolUtils.andb_88_envptr_1123", %TName_Bool* %"$test__1124")
  store %TName_Bool* %"$$BoolUtils.andb_88_call_1125", %TName_Bool** %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_1126" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_89", align 8
  store %TName_Bool* %"$$BoolUtils.andb_89_1126", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_1076"

"$None_1127":                                     ; preds = %"$have_gas_1074"
  %"$$resopt_29_1128" = bitcast %TName_Option_Uint128* %"$$resopt_29_1077" to %CName_None_Uint128*
  %"$gasrem_1129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1130" = icmp ugt i64 1, %"$gasrem_1129"
  br i1 %"$gascmp_1130", label %"$out_of_gas_1131", label %"$have_gas_1132"

"$out_of_gas_1131":                               ; preds = %"$None_1127"
  call void @_out_of_gas()
  br label %"$have_gas_1132"

"$have_gas_1132":                                 ; preds = %"$out_of_gas_1131", %"$None_1127"
  %"$consume_1133" = sub i64 %"$gasrem_1129", 1
  store i64 %"$consume_1133", i64* @_gasrem, align 8
  %"$false_1134" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1134", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_1076"

"$empty_default_1080":                            ; preds = %"$have_gas_1074"
  br label %"$matchsucc_1076"

"$matchsucc_1076":                                ; preds = %"$have_gas_1132", %"$have_gas_1114", %"$empty_default_1080"
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$matchsucc_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$matchsucc_1076"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint128, align 8
  %"$gasrem_1140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1141" = icmp ugt i64 1, %"$gasrem_1140"
  br i1 %"$gascmp_1141", label %"$out_of_gas_1142", label %"$have_gas_1143"

"$out_of_gas_1142":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1143"

"$have_gas_1143":                                 ; preds = %"$out_of_gas_1142", %"$have_gas_1138"
  %"$consume_1144" = sub i64 %"$gasrem_1140", 1
  store i64 %"$consume_1144", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$input_31", align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1143"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1143"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 8, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1148"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 8
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$execptr_load_1155" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_31_1156" = alloca %Uint128, align 8
  %"$$input_31_1157" = load %Uint128, %Uint128* %"$input_31", align 8
  store %Uint128 %"$$input_31_1157", %Uint128* %"$to_uint128_$input_31_1156", align 8
  %"$$to_uint128_$input_31_1156_1158" = bitcast %Uint128* %"$to_uint128_$input_31_1156" to i8*
  %"$to_uint128_call_1159" = call i8* @_to_uint128(i8* %"$execptr_load_1155", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint128_$input_31_1156_1158")
  %"$to_uint128_1160" = bitcast i8* %"$to_uint128_call_1159" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1160", %TName_Option_Uint128** %"$resopt_32", align 8
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1153"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 2, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1164"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 2
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %"$$resopt_32_1172" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_32", align 8
  %"$$resopt_32_tag_1173" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_32_1172", i32 0, i32 0
  %"$$resopt_32_tag_1174" = load i8, i8* %"$$resopt_32_tag_1173", align 1
  switch i8 %"$$resopt_32_tag_1174", label %"$empty_default_1175" [
    i8 0, label %"$Some_1176"
    i8 1, label %"$None_1222"
  ]

"$Some_1176":                                     ; preds = %"$have_gas_1169"
  %"$$resopt_32_1177" = bitcast %TName_Option_Uint128* %"$$resopt_32_1172" to %CName_Some_Uint128*
  %"$res_gep_1178" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_32_1177", i32 0, i32 1
  %"$res_load_1179" = load %Uint128, %Uint128* %"$res_gep_1178", align 8
  %res16 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1179", %Uint128* %res16, align 8
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 1, %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$Some_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$Some_1176"
  %"$consume_1184" = sub i64 %"$gasrem_1180", 1
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  %input_17 = alloca %Uint128, align 8
  %"$gasrem_1185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1186" = icmp ugt i64 1, %"$gasrem_1185"
  br i1 %"$gascmp_1186", label %"$out_of_gas_1187", label %"$have_gas_1188"

"$out_of_gas_1187":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1188"

"$have_gas_1188":                                 ; preds = %"$out_of_gas_1187", %"$have_gas_1183"
  %"$consume_1189" = sub i64 %"$gasrem_1185", 1
  store i64 %"$consume_1189", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %input_17, align 8
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 1, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1188"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1188"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 1
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 8, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1193"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 8
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %"$execptr_load_1201" = load i8*, i8** @_execptr, align 8
  %"$res_1202" = load %Uint128, %Uint128* %res16, align 8
  %"$input__1203" = load %Uint128, %Uint128* %input_17, align 8
  %"$eq_call_1204" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1201", %Uint128 %"$res_1202", %Uint128 %"$input__1203")
  store %TName_Bool* %"$eq_call_1204", %TName_Bool** %test_18, align 8
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1199"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %"$BoolUtils.andb_90" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1211" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1212" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1211", 0
  %"$BoolUtils.andb_envptr_1213" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1211", 1
  %"$$test_30_1214" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1215" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1212"(i8* %"$BoolUtils.andb_envptr_1213", %TName_Bool* %"$$test_30_1214")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1215", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$BoolUtils.andb_91" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_90_1216" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_fptr_1217" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_1216", 0
  %"$$BoolUtils.andb_90_envptr_1218" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_1216", 1
  %"$test__1219" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_90_call_1220" = call %TName_Bool* %"$$BoolUtils.andb_90_fptr_1217"(i8* %"$$BoolUtils.andb_90_envptr_1218", %TName_Bool* %"$test__1219")
  store %TName_Bool* %"$$BoolUtils.andb_90_call_1220", %TName_Bool** %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_1221" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_91", align 8
  store %TName_Bool* %"$$BoolUtils.andb_91_1221", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1171"

"$None_1222":                                     ; preds = %"$have_gas_1169"
  %"$$resopt_32_1223" = bitcast %TName_Option_Uint128* %"$$resopt_32_1172" to %CName_None_Uint128*
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$None_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$None_1222"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %"$false_1229" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1229", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1171"

"$empty_default_1175":                            ; preds = %"$have_gas_1169"
  br label %"$matchsucc_1171"

"$matchsucc_1171":                                ; preds = %"$have_gas_1227", %"$have_gas_1209", %"$empty_default_1175"
  %"$gasrem_1230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1231" = icmp ugt i64 1, %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$matchsucc_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$matchsucc_1171"
  %"$consume_1234" = sub i64 %"$gasrem_1230", 1
  store i64 %"$consume_1234", i64* @_gasrem, align 8
  %"$input_34" = alloca %Uint256, align 8
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 1, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1233"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 1
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_34", align 8
  %"$gasrem_1240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1241" = icmp ugt i64 1, %"$gasrem_1240"
  br i1 %"$gascmp_1241", label %"$out_of_gas_1242", label %"$have_gas_1243"

"$out_of_gas_1242":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1243"

"$have_gas_1243":                                 ; preds = %"$out_of_gas_1242", %"$have_gas_1238"
  %"$consume_1244" = sub i64 %"$gasrem_1240", 1
  store i64 %"$consume_1244", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1246" = icmp ugt i64 8, %"$gasrem_1245"
  br i1 %"$gascmp_1246", label %"$out_of_gas_1247", label %"$have_gas_1248"

"$out_of_gas_1247":                               ; preds = %"$have_gas_1243"
  call void @_out_of_gas()
  br label %"$have_gas_1248"

"$have_gas_1248":                                 ; preds = %"$out_of_gas_1247", %"$have_gas_1243"
  %"$consume_1249" = sub i64 %"$gasrem_1245", 8
  store i64 %"$consume_1249", i64* @_gasrem, align 8
  %"$execptr_load_1250" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_34_1251" = alloca %Uint256, align 8
  %"$$input_34_1252" = load %Uint256, %Uint256* %"$input_34", align 8
  store %Uint256 %"$$input_34_1252", %Uint256* %"$to_uint128_$input_34_1251", align 8
  %"$$to_uint128_$input_34_1251_1253" = bitcast %Uint256* %"$to_uint128_$input_34_1251" to i8*
  %"$to_uint128_call_1254" = call i8* @_to_uint128(i8* %"$execptr_load_1250", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint128_$input_34_1251_1253")
  %"$to_uint128_1255" = bitcast i8* %"$to_uint128_call_1254" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1255", %TName_Option_Uint128** %"$resopt_35", align 8
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 1, %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1248"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1248"
  %"$consume_1260" = sub i64 %"$gasrem_1256", 1
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 2, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1259"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 2
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %"$$resopt_35_1267" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_35", align 8
  %"$$resopt_35_tag_1268" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_35_1267", i32 0, i32 0
  %"$$resopt_35_tag_1269" = load i8, i8* %"$$resopt_35_tag_1268", align 1
  switch i8 %"$$resopt_35_tag_1269", label %"$empty_default_1270" [
    i8 0, label %"$Some_1271"
    i8 1, label %"$None_1281"
  ]

"$Some_1271":                                     ; preds = %"$have_gas_1264"
  %"$$resopt_35_1272" = bitcast %TName_Option_Uint128* %"$$resopt_35_1267" to %CName_Some_Uint128*
  %"$$$resopt_35_72_gep_1273" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_35_1272", i32 0, i32 1
  %"$$$resopt_35_72_load_1274" = load %Uint128, %Uint128* %"$$$resopt_35_72_gep_1273", align 8
  %"$$resopt_35_72" = alloca %Uint128, align 8
  store %Uint128 %"$$$resopt_35_72_load_1274", %Uint128* %"$$resopt_35_72", align 8
  %"$gasrem_1275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1276" = icmp ugt i64 1, %"$gasrem_1275"
  br i1 %"$gascmp_1276", label %"$out_of_gas_1277", label %"$have_gas_1278"

"$out_of_gas_1277":                               ; preds = %"$Some_1271"
  call void @_out_of_gas()
  br label %"$have_gas_1278"

"$have_gas_1278":                                 ; preds = %"$out_of_gas_1277", %"$Some_1271"
  %"$consume_1279" = sub i64 %"$gasrem_1275", 1
  store i64 %"$consume_1279", i64* @_gasrem, align 8
  %"$false_1280" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1280", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1266"

"$None_1281":                                     ; preds = %"$have_gas_1264"
  %"$$resopt_35_1282" = bitcast %TName_Option_Uint128* %"$$resopt_35_1267" to %CName_None_Uint128*
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$None_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$None_1281"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  %"$$test_33_1288" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  store %TName_Bool* %"$$test_33_1288", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1266"

"$empty_default_1270":                            ; preds = %"$have_gas_1264"
  br label %"$matchsucc_1266"

"$matchsucc_1266":                                ; preds = %"$have_gas_1286", %"$have_gas_1278", %"$empty_default_1270"
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$matchsucc_1266"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$matchsucc_1266"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint256, align 8
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 1, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1292"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 1
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_37", align 8
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 1, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1297"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 1
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 16, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1302"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1302"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 16
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$execptr_load_1309" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_37_1310" = alloca %Uint256, align 8
  %"$$input_37_1311" = load %Uint256, %Uint256* %"$input_37", align 8
  store %Uint256 %"$$input_37_1311", %Uint256* %"$to_uint256_$input_37_1310", align 8
  %"$$to_uint256_$input_37_1310_1312" = bitcast %Uint256* %"$to_uint256_$input_37_1310" to i8*
  %"$to_uint256_call_1313" = call i8* @_to_uint256(i8* %"$execptr_load_1309", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint256_$input_37_1310_1312")
  %"$to_uint256_1314" = bitcast i8* %"$to_uint256_call_1313" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1314", %TName_Option_Uint256** %"$resopt_38", align 8
  %"$gasrem_1315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1316" = icmp ugt i64 1, %"$gasrem_1315"
  br i1 %"$gascmp_1316", label %"$out_of_gas_1317", label %"$have_gas_1318"

"$out_of_gas_1317":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1318"

"$have_gas_1318":                                 ; preds = %"$out_of_gas_1317", %"$have_gas_1307"
  %"$consume_1319" = sub i64 %"$gasrem_1315", 1
  store i64 %"$consume_1319", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  %"$gasrem_1320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1321" = icmp ugt i64 2, %"$gasrem_1320"
  br i1 %"$gascmp_1321", label %"$out_of_gas_1322", label %"$have_gas_1323"

"$out_of_gas_1322":                               ; preds = %"$have_gas_1318"
  call void @_out_of_gas()
  br label %"$have_gas_1323"

"$have_gas_1323":                                 ; preds = %"$out_of_gas_1322", %"$have_gas_1318"
  %"$consume_1324" = sub i64 %"$gasrem_1320", 2
  store i64 %"$consume_1324", i64* @_gasrem, align 8
  %"$$resopt_38_1326" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1327" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_38_1326", i32 0, i32 0
  %"$$resopt_38_tag_1328" = load i8, i8* %"$$resopt_38_tag_1327", align 1
  switch i8 %"$$resopt_38_tag_1328", label %"$empty_default_1329" [
    i8 0, label %"$Some_1330"
    i8 1, label %"$None_1378"
  ]

"$Some_1330":                                     ; preds = %"$have_gas_1323"
  %"$$resopt_38_1331" = bitcast %TName_Option_Uint256* %"$$resopt_38_1326" to %CName_Some_Uint256*
  %"$res_gep_1332" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_38_1331", i32 0, i32 1
  %"$res_load_1333" = load %Uint256, %Uint256* %"$res_gep_1332", align 8
  %res19 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1333", %Uint256* %res19, align 8
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$Some_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$Some_1330"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  %input_20 = alloca %Uint256, align 8
  %"$gasrem_1339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1340" = icmp ugt i64 1, %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %"$have_gas_1337"
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %"$have_gas_1337"
  %"$consume_1343" = sub i64 %"$gasrem_1339", 1
  store i64 %"$consume_1343", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %input_20, align 8
  %"$gasrem_1344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1345" = icmp ugt i64 1, %"$gasrem_1344"
  br i1 %"$gascmp_1345", label %"$out_of_gas_1346", label %"$have_gas_1347"

"$out_of_gas_1346":                               ; preds = %"$have_gas_1342"
  call void @_out_of_gas()
  br label %"$have_gas_1347"

"$have_gas_1347":                                 ; preds = %"$out_of_gas_1346", %"$have_gas_1342"
  %"$consume_1348" = sub i64 %"$gasrem_1344", 1
  store i64 %"$consume_1348", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  %"$gasrem_1350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1351" = icmp ugt i64 16, %"$gasrem_1350"
  br i1 %"$gascmp_1351", label %"$out_of_gas_1352", label %"$have_gas_1353"

"$out_of_gas_1352":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1353"

"$have_gas_1353":                                 ; preds = %"$out_of_gas_1352", %"$have_gas_1347"
  %"$consume_1354" = sub i64 %"$gasrem_1350", 16
  store i64 %"$consume_1354", i64* @_gasrem, align 8
  %"$execptr_load_1355" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1356" = alloca %Uint256, align 8
  %"$res_1357" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res_1357", %Uint256* %"$eq_res_1356", align 8
  %"$eq_input__1358" = alloca %Uint256, align 8
  %"$input__1359" = load %Uint256, %Uint256* %input_20, align 8
  store %Uint256 %"$input__1359", %Uint256* %"$eq_input__1358", align 8
  %"$eq_call_1360" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1355", %Uint256* %"$eq_res_1356", %Uint256* %"$eq_input__1358")
  store %TName_Bool* %"$eq_call_1360", %TName_Bool** %test_21, align 8
  %"$gasrem_1362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1363" = icmp ugt i64 1, %"$gasrem_1362"
  br i1 %"$gascmp_1363", label %"$out_of_gas_1364", label %"$have_gas_1365"

"$out_of_gas_1364":                               ; preds = %"$have_gas_1353"
  call void @_out_of_gas()
  br label %"$have_gas_1365"

"$have_gas_1365":                                 ; preds = %"$out_of_gas_1364", %"$have_gas_1353"
  %"$consume_1366" = sub i64 %"$gasrem_1362", 1
  store i64 %"$consume_1366", i64* @_gasrem, align 8
  %"$BoolUtils.andb_92" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1367" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1368" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1367", 0
  %"$BoolUtils.andb_envptr_1369" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1367", 1
  %"$$test_36_1370" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1371" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1368"(i8* %"$BoolUtils.andb_envptr_1369", %TName_Bool* %"$$test_36_1370")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1371", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$BoolUtils.andb_93" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_92_1372" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_fptr_1373" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_1372", 0
  %"$$BoolUtils.andb_92_envptr_1374" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_1372", 1
  %"$test__1375" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_92_call_1376" = call %TName_Bool* %"$$BoolUtils.andb_92_fptr_1373"(i8* %"$$BoolUtils.andb_92_envptr_1374", %TName_Bool* %"$test__1375")
  store %TName_Bool* %"$$BoolUtils.andb_92_call_1376", %TName_Bool** %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_1377" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_93", align 8
  store %TName_Bool* %"$$BoolUtils.andb_93_1377", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1325"

"$None_1378":                                     ; preds = %"$have_gas_1323"
  %"$$resopt_38_1379" = bitcast %TName_Option_Uint256* %"$$resopt_38_1326" to %CName_None_Uint256*
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$None_1378"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$None_1378"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %"$false_1385" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1385", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1325"

"$empty_default_1329":                            ; preds = %"$have_gas_1323"
  br label %"$matchsucc_1325"

"$matchsucc_1325":                                ; preds = %"$have_gas_1383", %"$have_gas_1365", %"$empty_default_1329"
  %"$gasrem_1386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1387" = icmp ugt i64 1, %"$gasrem_1386"
  br i1 %"$gascmp_1387", label %"$out_of_gas_1388", label %"$have_gas_1389"

"$out_of_gas_1388":                               ; preds = %"$matchsucc_1325"
  call void @_out_of_gas()
  br label %"$have_gas_1389"

"$have_gas_1389":                                 ; preds = %"$out_of_gas_1388", %"$matchsucc_1325"
  %"$consume_1390" = sub i64 %"$gasrem_1386", 1
  store i64 %"$consume_1390", i64* @_gasrem, align 8
  %"$input_40" = alloca %Uint32, align 8
  %"$gasrem_1391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1392" = icmp ugt i64 1, %"$gasrem_1391"
  br i1 %"$gascmp_1392", label %"$out_of_gas_1393", label %"$have_gas_1394"

"$out_of_gas_1393":                               ; preds = %"$have_gas_1389"
  call void @_out_of_gas()
  br label %"$have_gas_1394"

"$have_gas_1394":                                 ; preds = %"$out_of_gas_1393", %"$have_gas_1389"
  %"$consume_1395" = sub i64 %"$gasrem_1391", 1
  store i64 %"$consume_1395", i64* @_gasrem, align 8
  store %Uint32 { i32 22 }, %Uint32* %"$input_40", align 4
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 1, %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %"$have_gas_1394"
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %"$have_gas_1394"
  %"$consume_1400" = sub i64 %"$gasrem_1396", 1
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1402" = icmp ugt i64 16, %"$gasrem_1401"
  br i1 %"$gascmp_1402", label %"$out_of_gas_1403", label %"$have_gas_1404"

"$out_of_gas_1403":                               ; preds = %"$have_gas_1399"
  call void @_out_of_gas()
  br label %"$have_gas_1404"

"$have_gas_1404":                                 ; preds = %"$out_of_gas_1403", %"$have_gas_1399"
  %"$consume_1405" = sub i64 %"$gasrem_1401", 16
  store i64 %"$consume_1405", i64* @_gasrem, align 8
  %"$execptr_load_1406" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_40_1407" = alloca %Uint32, align 8
  %"$$input_40_1408" = load %Uint32, %Uint32* %"$input_40", align 4
  store %Uint32 %"$$input_40_1408", %Uint32* %"$to_uint256_$input_40_1407", align 4
  %"$$to_uint256_$input_40_1407_1409" = bitcast %Uint32* %"$to_uint256_$input_40_1407" to i8*
  %"$to_uint256_call_1410" = call i8* @_to_uint256(i8* %"$execptr_load_1406", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", i8* %"$$to_uint256_$input_40_1407_1409")
  %"$to_uint256_1411" = bitcast i8* %"$to_uint256_call_1410" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1411", %TName_Option_Uint256** %"$resopt_41", align 8
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 1, %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1404"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1404"
  %"$consume_1416" = sub i64 %"$gasrem_1412", 1
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1418" = icmp ugt i64 2, %"$gasrem_1417"
  br i1 %"$gascmp_1418", label %"$out_of_gas_1419", label %"$have_gas_1420"

"$out_of_gas_1419":                               ; preds = %"$have_gas_1415"
  call void @_out_of_gas()
  br label %"$have_gas_1420"

"$have_gas_1420":                                 ; preds = %"$out_of_gas_1419", %"$have_gas_1415"
  %"$consume_1421" = sub i64 %"$gasrem_1417", 2
  store i64 %"$consume_1421", i64* @_gasrem, align 8
  %"$$resopt_41_1423" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1424" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_41_1423", i32 0, i32 0
  %"$$resopt_41_tag_1425" = load i8, i8* %"$$resopt_41_tag_1424", align 1
  switch i8 %"$$resopt_41_tag_1425", label %"$empty_default_1426" [
    i8 0, label %"$Some_1427"
    i8 1, label %"$None_1475"
  ]

"$Some_1427":                                     ; preds = %"$have_gas_1420"
  %"$$resopt_41_1428" = bitcast %TName_Option_Uint256* %"$$resopt_41_1423" to %CName_Some_Uint256*
  %"$res_gep_1429" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_41_1428", i32 0, i32 1
  %"$res_load_1430" = load %Uint256, %Uint256* %"$res_gep_1429", align 8
  %res22 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1430", %Uint256* %res22, align 8
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 1, %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$Some_1427"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$Some_1427"
  %"$consume_1435" = sub i64 %"$gasrem_1431", 1
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  %input_23 = alloca %Uint256, align 8
  %"$gasrem_1436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$have_gas_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$have_gas_1434"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem, align 8
  store %Uint256 { i256 22 }, %Uint256* %input_23, align 8
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 1, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 1
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  %"$gasrem_1447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1448" = icmp ugt i64 16, %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1444"
  %"$consume_1451" = sub i64 %"$gasrem_1447", 16
  store i64 %"$consume_1451", i64* @_gasrem, align 8
  %"$execptr_load_1452" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1453" = alloca %Uint256, align 8
  %"$res_1454" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res_1454", %Uint256* %"$eq_res_1453", align 8
  %"$eq_input__1455" = alloca %Uint256, align 8
  %"$input__1456" = load %Uint256, %Uint256* %input_23, align 8
  store %Uint256 %"$input__1456", %Uint256* %"$eq_input__1455", align 8
  %"$eq_call_1457" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1452", %Uint256* %"$eq_res_1453", %Uint256* %"$eq_input__1455")
  store %TName_Bool* %"$eq_call_1457", %TName_Bool** %test_24, align 8
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$have_gas_1450"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$have_gas_1450"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  %"$BoolUtils.andb_94" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1464" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1465" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1464", 0
  %"$BoolUtils.andb_envptr_1466" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1464", 1
  %"$$test_39_1467" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1468" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1465"(i8* %"$BoolUtils.andb_envptr_1466", %TName_Bool* %"$$test_39_1467")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1468", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$BoolUtils.andb_95" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_94_1469" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_fptr_1470" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1469", 0
  %"$$BoolUtils.andb_94_envptr_1471" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1469", 1
  %"$test__1472" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_94_call_1473" = call %TName_Bool* %"$$BoolUtils.andb_94_fptr_1470"(i8* %"$$BoolUtils.andb_94_envptr_1471", %TName_Bool* %"$test__1472")
  store %TName_Bool* %"$$BoolUtils.andb_94_call_1473", %TName_Bool** %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_1474" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_95", align 8
  store %TName_Bool* %"$$BoolUtils.andb_95_1474", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1422"

"$None_1475":                                     ; preds = %"$have_gas_1420"
  %"$$resopt_41_1476" = bitcast %TName_Option_Uint256* %"$$resopt_41_1423" to %CName_None_Uint256*
  %"$gasrem_1477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1478" = icmp ugt i64 1, %"$gasrem_1477"
  br i1 %"$gascmp_1478", label %"$out_of_gas_1479", label %"$have_gas_1480"

"$out_of_gas_1479":                               ; preds = %"$None_1475"
  call void @_out_of_gas()
  br label %"$have_gas_1480"

"$have_gas_1480":                                 ; preds = %"$out_of_gas_1479", %"$None_1475"
  %"$consume_1481" = sub i64 %"$gasrem_1477", 1
  store i64 %"$consume_1481", i64* @_gasrem, align 8
  %"$false_1482" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1482", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1422"

"$empty_default_1426":                            ; preds = %"$have_gas_1420"
  br label %"$matchsucc_1422"

"$matchsucc_1422":                                ; preds = %"$have_gas_1480", %"$have_gas_1462", %"$empty_default_1426"
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$matchsucc_1422"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$matchsucc_1422"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$input_43" = alloca %Int32, align 8
  %"$gasrem_1488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1489" = icmp ugt i64 1, %"$gasrem_1488"
  br i1 %"$gascmp_1489", label %"$out_of_gas_1490", label %"$have_gas_1491"

"$out_of_gas_1490":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1491"

"$have_gas_1491":                                 ; preds = %"$out_of_gas_1490", %"$have_gas_1486"
  %"$consume_1492" = sub i64 %"$gasrem_1488", 1
  store i64 %"$consume_1492", i64* @_gasrem, align 8
  store %Int32 { i32 2147483647 }, %Int32* %"$input_43", align 4
  %"$gasrem_1493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1494" = icmp ugt i64 1, %"$gasrem_1493"
  br i1 %"$gascmp_1494", label %"$out_of_gas_1495", label %"$have_gas_1496"

"$out_of_gas_1495":                               ; preds = %"$have_gas_1491"
  call void @_out_of_gas()
  br label %"$have_gas_1496"

"$have_gas_1496":                                 ; preds = %"$out_of_gas_1495", %"$have_gas_1491"
  %"$consume_1497" = sub i64 %"$gasrem_1493", 1
  store i64 %"$consume_1497", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_1498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1499" = icmp ugt i64 4, %"$gasrem_1498"
  br i1 %"$gascmp_1499", label %"$out_of_gas_1500", label %"$have_gas_1501"

"$out_of_gas_1500":                               ; preds = %"$have_gas_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1501"

"$have_gas_1501":                                 ; preds = %"$out_of_gas_1500", %"$have_gas_1496"
  %"$consume_1502" = sub i64 %"$gasrem_1498", 4
  store i64 %"$consume_1502", i64* @_gasrem, align 8
  %"$execptr_load_1503" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_43_1504" = alloca %Int32, align 8
  %"$$input_43_1505" = load %Int32, %Int32* %"$input_43", align 4
  store %Int32 %"$$input_43_1505", %Int32* %"$to_uint32_$input_43_1504", align 4
  %"$$to_uint32_$input_43_1504_1506" = bitcast %Int32* %"$to_uint32_$input_43_1504" to i8*
  %"$to_uint32_call_1507" = call i8* @_to_uint32(i8* %"$execptr_load_1503", %_TyDescrTy_Typ* @"$TyDescr_Int32_109", i8* %"$$to_uint32_$input_43_1504_1506")
  %"$to_uint32_1508" = bitcast i8* %"$to_uint32_call_1507" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1508", %TName_Option_Uint32** %"$resopt_44", align 8
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1501"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1501"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  %"$gasrem_1514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1515" = icmp ugt i64 2, %"$gasrem_1514"
  br i1 %"$gascmp_1515", label %"$out_of_gas_1516", label %"$have_gas_1517"

"$out_of_gas_1516":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1517"

"$have_gas_1517":                                 ; preds = %"$out_of_gas_1516", %"$have_gas_1512"
  %"$consume_1518" = sub i64 %"$gasrem_1514", 2
  store i64 %"$consume_1518", i64* @_gasrem, align 8
  %"$$resopt_44_1520" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_44", align 8
  %"$$resopt_44_tag_1521" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_44_1520", i32 0, i32 0
  %"$$resopt_44_tag_1522" = load i8, i8* %"$$resopt_44_tag_1521", align 1
  switch i8 %"$$resopt_44_tag_1522", label %"$empty_default_1523" [
    i8 0, label %"$Some_1524"
    i8 1, label %"$None_1569"
  ]

"$Some_1524":                                     ; preds = %"$have_gas_1517"
  %"$$resopt_44_1525" = bitcast %TName_Option_Uint32* %"$$resopt_44_1520" to %CName_Some_Uint32*
  %"$res_gep_1526" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_44_1525", i32 0, i32 1
  %"$res_load_1527" = load %Uint32, %Uint32* %"$res_gep_1526", align 4
  %res25 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_1527", %Uint32* %res25, align 4
  %"$gasrem_1528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1529" = icmp ugt i64 1, %"$gasrem_1528"
  br i1 %"$gascmp_1529", label %"$out_of_gas_1530", label %"$have_gas_1531"

"$out_of_gas_1530":                               ; preds = %"$Some_1524"
  call void @_out_of_gas()
  br label %"$have_gas_1531"

"$have_gas_1531":                                 ; preds = %"$out_of_gas_1530", %"$Some_1524"
  %"$consume_1532" = sub i64 %"$gasrem_1528", 1
  store i64 %"$consume_1532", i64* @_gasrem, align 8
  %input_26 = alloca %Uint32, align 8
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 1, %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$have_gas_1531"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$have_gas_1531"
  %"$consume_1537" = sub i64 %"$gasrem_1533", 1
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  store %Uint32 { i32 2147483647 }, %Uint32* %input_26, align 4
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$have_gas_1536"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$have_gas_1536"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 4, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$have_gas_1541"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 4
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  %"$execptr_load_1548" = load i8*, i8** @_execptr, align 8
  %"$res_1549" = load %Uint32, %Uint32* %res25, align 4
  %"$input__1550" = load %Uint32, %Uint32* %input_26, align 4
  %"$eq_call_1551" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1548", %Uint32 %"$res_1549", %Uint32 %"$input__1550")
  store %TName_Bool* %"$eq_call_1551", %TName_Bool** %test_27, align 8
  %"$gasrem_1553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1554" = icmp ugt i64 1, %"$gasrem_1553"
  br i1 %"$gascmp_1554", label %"$out_of_gas_1555", label %"$have_gas_1556"

"$out_of_gas_1555":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1556"

"$have_gas_1556":                                 ; preds = %"$out_of_gas_1555", %"$have_gas_1546"
  %"$consume_1557" = sub i64 %"$gasrem_1553", 1
  store i64 %"$consume_1557", i64* @_gasrem, align 8
  %"$BoolUtils.andb_96" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1558" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1559" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1558", 0
  %"$BoolUtils.andb_envptr_1560" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1558", 1
  %"$$test_42_1561" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1562" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1559"(i8* %"$BoolUtils.andb_envptr_1560", %TName_Bool* %"$$test_42_1561")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1562", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$BoolUtils.andb_97" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_96_1563" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_fptr_1564" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1563", 0
  %"$$BoolUtils.andb_96_envptr_1565" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1563", 1
  %"$test__1566" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_96_call_1567" = call %TName_Bool* %"$$BoolUtils.andb_96_fptr_1564"(i8* %"$$BoolUtils.andb_96_envptr_1565", %TName_Bool* %"$test__1566")
  store %TName_Bool* %"$$BoolUtils.andb_96_call_1567", %TName_Bool** %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_1568" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_97", align 8
  store %TName_Bool* %"$$BoolUtils.andb_97_1568", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1519"

"$None_1569":                                     ; preds = %"$have_gas_1517"
  %"$$resopt_44_1570" = bitcast %TName_Option_Uint32* %"$$resopt_44_1520" to %CName_None_Uint32*
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 1, %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$None_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$None_1569"
  %"$consume_1575" = sub i64 %"$gasrem_1571", 1
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  %"$false_1576" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1576", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1519"

"$empty_default_1523":                            ; preds = %"$have_gas_1517"
  br label %"$matchsucc_1519"

"$matchsucc_1519":                                ; preds = %"$have_gas_1574", %"$have_gas_1556", %"$empty_default_1523"
  %"$gasrem_1577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1578" = icmp ugt i64 1, %"$gasrem_1577"
  br i1 %"$gascmp_1578", label %"$out_of_gas_1579", label %"$have_gas_1580"

"$out_of_gas_1579":                               ; preds = %"$matchsucc_1519"
  call void @_out_of_gas()
  br label %"$have_gas_1580"

"$have_gas_1580":                                 ; preds = %"$out_of_gas_1579", %"$matchsucc_1519"
  %"$consume_1581" = sub i64 %"$gasrem_1577", 1
  store i64 %"$consume_1581", i64* @_gasrem, align 8
  %"$input_46" = alloca %Int32, align 8
  %"$gasrem_1582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1583" = icmp ugt i64 1, %"$gasrem_1582"
  br i1 %"$gascmp_1583", label %"$out_of_gas_1584", label %"$have_gas_1585"

"$out_of_gas_1584":                               ; preds = %"$have_gas_1580"
  call void @_out_of_gas()
  br label %"$have_gas_1585"

"$have_gas_1585":                                 ; preds = %"$out_of_gas_1584", %"$have_gas_1580"
  %"$consume_1586" = sub i64 %"$gasrem_1582", 1
  store i64 %"$consume_1586", i64* @_gasrem, align 8
  store %Int32 { i32 -2147483648 }, %Int32* %"$input_46", align 4
  %"$gasrem_1587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1588" = icmp ugt i64 1, %"$gasrem_1587"
  br i1 %"$gascmp_1588", label %"$out_of_gas_1589", label %"$have_gas_1590"

"$out_of_gas_1589":                               ; preds = %"$have_gas_1585"
  call void @_out_of_gas()
  br label %"$have_gas_1590"

"$have_gas_1590":                                 ; preds = %"$out_of_gas_1589", %"$have_gas_1585"
  %"$consume_1591" = sub i64 %"$gasrem_1587", 1
  store i64 %"$consume_1591", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 4, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$have_gas_1590"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$have_gas_1590"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 4
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  %"$execptr_load_1597" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_46_1598" = alloca %Int32, align 8
  %"$$input_46_1599" = load %Int32, %Int32* %"$input_46", align 4
  store %Int32 %"$$input_46_1599", %Int32* %"$to_uint32_$input_46_1598", align 4
  %"$$to_uint32_$input_46_1598_1600" = bitcast %Int32* %"$to_uint32_$input_46_1598" to i8*
  %"$to_uint32_call_1601" = call i8* @_to_uint32(i8* %"$execptr_load_1597", %_TyDescrTy_Typ* @"$TyDescr_Int32_109", i8* %"$$to_uint32_$input_46_1598_1600")
  %"$to_uint32_1602" = bitcast i8* %"$to_uint32_call_1601" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1602", %TName_Option_Uint32** %"$resopt_47", align 8
  %"$gasrem_1603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1604" = icmp ugt i64 1, %"$gasrem_1603"
  br i1 %"$gascmp_1604", label %"$out_of_gas_1605", label %"$have_gas_1606"

"$out_of_gas_1605":                               ; preds = %"$have_gas_1595"
  call void @_out_of_gas()
  br label %"$have_gas_1606"

"$have_gas_1606":                                 ; preds = %"$out_of_gas_1605", %"$have_gas_1595"
  %"$consume_1607" = sub i64 %"$gasrem_1603", 1
  store i64 %"$consume_1607", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 2, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1606"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1606"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 2
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %"$$resopt_47_1614" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_47", align 8
  %"$$resopt_47_tag_1615" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_47_1614", i32 0, i32 0
  %"$$resopt_47_tag_1616" = load i8, i8* %"$$resopt_47_tag_1615", align 1
  switch i8 %"$$resopt_47_tag_1616", label %"$empty_default_1617" [
    i8 0, label %"$Some_1618"
    i8 1, label %"$None_1628"
  ]

"$Some_1618":                                     ; preds = %"$have_gas_1611"
  %"$$resopt_47_1619" = bitcast %TName_Option_Uint32* %"$$resopt_47_1614" to %CName_Some_Uint32*
  %"$$$resopt_47_73_gep_1620" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_47_1619", i32 0, i32 1
  %"$$$resopt_47_73_load_1621" = load %Uint32, %Uint32* %"$$$resopt_47_73_gep_1620", align 4
  %"$$resopt_47_73" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_47_73_load_1621", %Uint32* %"$$resopt_47_73", align 4
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$Some_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$Some_1618"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %"$false_1627" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1627", %TName_Bool** %"$test_48", align 8
  br label %"$matchsucc_1613"

"$None_1628":                                     ; preds = %"$have_gas_1611"
  %"$$resopt_47_1629" = bitcast %TName_Option_Uint32* %"$$resopt_47_1614" to %CName_None_Uint32*
  %"$gasrem_1630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1631" = icmp ugt i64 1, %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$None_1628"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$None_1628"
  %"$consume_1634" = sub i64 %"$gasrem_1630", 1
  store i64 %"$consume_1634", i64* @_gasrem, align 8
  %"$$test_45_1635" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  store %TName_Bool* %"$$test_45_1635", %TName_Bool** %"$test_48", align 8
  br label %"$matchsucc_1613"

"$empty_default_1617":                            ; preds = %"$have_gas_1611"
  br label %"$matchsucc_1613"

"$matchsucc_1613":                                ; preds = %"$have_gas_1633", %"$have_gas_1625", %"$empty_default_1617"
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 1, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$matchsucc_1613"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$matchsucc_1613"
  %"$consume_1640" = sub i64 %"$gasrem_1636", 1
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  %"$input_49" = alloca %String, align 8
  %"$gasrem_1641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1642" = icmp ugt i64 1, %"$gasrem_1641"
  br i1 %"$gascmp_1642", label %"$out_of_gas_1643", label %"$have_gas_1644"

"$out_of_gas_1643":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1644"

"$have_gas_1644":                                 ; preds = %"$out_of_gas_1643", %"$have_gas_1639"
  %"$consume_1645" = sub i64 %"$gasrem_1641", 1
  store i64 %"$consume_1645", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1646", i32 0, i32 0), i32 11 }, %String* %"$input_49", align 8
  %"$gasrem_1647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1648" = icmp ugt i64 1, %"$gasrem_1647"
  br i1 %"$gascmp_1648", label %"$out_of_gas_1649", label %"$have_gas_1650"

"$out_of_gas_1649":                               ; preds = %"$have_gas_1644"
  call void @_out_of_gas()
  br label %"$have_gas_1650"

"$have_gas_1650":                                 ; preds = %"$out_of_gas_1649", %"$have_gas_1644"
  %"$consume_1651" = sub i64 %"$gasrem_1647", 1
  store i64 %"$consume_1651", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_1652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1653" = icmp ugt i64 4, %"$gasrem_1652"
  br i1 %"$gascmp_1653", label %"$out_of_gas_1654", label %"$have_gas_1655"

"$out_of_gas_1654":                               ; preds = %"$have_gas_1650"
  call void @_out_of_gas()
  br label %"$have_gas_1655"

"$have_gas_1655":                                 ; preds = %"$out_of_gas_1654", %"$have_gas_1650"
  %"$consume_1656" = sub i64 %"$gasrem_1652", 4
  store i64 %"$consume_1656", i64* @_gasrem, align 8
  %"$execptr_load_1657" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_49_1658" = alloca %String, align 8
  %"$$input_49_1659" = load %String, %String* %"$input_49", align 8
  store %String %"$$input_49_1659", %String* %"$to_uint32_$input_49_1658", align 8
  %"$$to_uint32_$input_49_1658_1660" = bitcast %String* %"$to_uint32_$input_49_1658" to i8*
  %"$to_uint32_call_1661" = call i8* @_to_uint32(i8* %"$execptr_load_1657", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint32_$input_49_1658_1660")
  %"$to_uint32_1662" = bitcast i8* %"$to_uint32_call_1661" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1662", %TName_Option_Uint32** %"$resopt_50", align 8
  %"$gasrem_1663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1664" = icmp ugt i64 1, %"$gasrem_1663"
  br i1 %"$gascmp_1664", label %"$out_of_gas_1665", label %"$have_gas_1666"

"$out_of_gas_1665":                               ; preds = %"$have_gas_1655"
  call void @_out_of_gas()
  br label %"$have_gas_1666"

"$have_gas_1666":                                 ; preds = %"$out_of_gas_1665", %"$have_gas_1655"
  %"$consume_1667" = sub i64 %"$gasrem_1663", 1
  store i64 %"$consume_1667", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  %"$gasrem_1668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1669" = icmp ugt i64 2, %"$gasrem_1668"
  br i1 %"$gascmp_1669", label %"$out_of_gas_1670", label %"$have_gas_1671"

"$out_of_gas_1670":                               ; preds = %"$have_gas_1666"
  call void @_out_of_gas()
  br label %"$have_gas_1671"

"$have_gas_1671":                                 ; preds = %"$out_of_gas_1670", %"$have_gas_1666"
  %"$consume_1672" = sub i64 %"$gasrem_1668", 2
  store i64 %"$consume_1672", i64* @_gasrem, align 8
  %"$$resopt_50_1674" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_50", align 8
  %"$$resopt_50_tag_1675" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_50_1674", i32 0, i32 0
  %"$$resopt_50_tag_1676" = load i8, i8* %"$$resopt_50_tag_1675", align 1
  switch i8 %"$$resopt_50_tag_1676", label %"$empty_default_1677" [
    i8 0, label %"$Some_1678"
    i8 1, label %"$None_1688"
  ]

"$Some_1678":                                     ; preds = %"$have_gas_1671"
  %"$$resopt_50_1679" = bitcast %TName_Option_Uint32* %"$$resopt_50_1674" to %CName_Some_Uint32*
  %"$$$resopt_50_74_gep_1680" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_50_1679", i32 0, i32 1
  %"$$$resopt_50_74_load_1681" = load %Uint32, %Uint32* %"$$$resopt_50_74_gep_1680", align 4
  %"$$resopt_50_74" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_50_74_load_1681", %Uint32* %"$$resopt_50_74", align 4
  %"$gasrem_1682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1683" = icmp ugt i64 1, %"$gasrem_1682"
  br i1 %"$gascmp_1683", label %"$out_of_gas_1684", label %"$have_gas_1685"

"$out_of_gas_1684":                               ; preds = %"$Some_1678"
  call void @_out_of_gas()
  br label %"$have_gas_1685"

"$have_gas_1685":                                 ; preds = %"$out_of_gas_1684", %"$Some_1678"
  %"$consume_1686" = sub i64 %"$gasrem_1682", 1
  store i64 %"$consume_1686", i64* @_gasrem, align 8
  %"$false_1687" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1687", %TName_Bool** %"$test_51", align 8
  br label %"$matchsucc_1673"

"$None_1688":                                     ; preds = %"$have_gas_1671"
  %"$$resopt_50_1689" = bitcast %TName_Option_Uint32* %"$$resopt_50_1674" to %CName_None_Uint32*
  %"$gasrem_1690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1691" = icmp ugt i64 1, %"$gasrem_1690"
  br i1 %"$gascmp_1691", label %"$out_of_gas_1692", label %"$have_gas_1693"

"$out_of_gas_1692":                               ; preds = %"$None_1688"
  call void @_out_of_gas()
  br label %"$have_gas_1693"

"$have_gas_1693":                                 ; preds = %"$out_of_gas_1692", %"$None_1688"
  %"$consume_1694" = sub i64 %"$gasrem_1690", 1
  store i64 %"$consume_1694", i64* @_gasrem, align 8
  %"$$test_48_1695" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  store %TName_Bool* %"$$test_48_1695", %TName_Bool** %"$test_51", align 8
  br label %"$matchsucc_1673"

"$empty_default_1677":                            ; preds = %"$have_gas_1671"
  br label %"$matchsucc_1673"

"$matchsucc_1673":                                ; preds = %"$have_gas_1693", %"$have_gas_1685", %"$empty_default_1677"
  %"$gasrem_1696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1697" = icmp ugt i64 1, %"$gasrem_1696"
  br i1 %"$gascmp_1697", label %"$out_of_gas_1698", label %"$have_gas_1699"

"$out_of_gas_1698":                               ; preds = %"$matchsucc_1673"
  call void @_out_of_gas()
  br label %"$have_gas_1699"

"$have_gas_1699":                                 ; preds = %"$out_of_gas_1698", %"$matchsucc_1673"
  %"$consume_1700" = sub i64 %"$gasrem_1696", 1
  store i64 %"$consume_1700", i64* @_gasrem, align 8
  %"$input_52" = alloca %Int256, align 8
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 1, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1699"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1699"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 1
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$input_52", align 8
  %"$gasrem_1706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1707" = icmp ugt i64 1, %"$gasrem_1706"
  br i1 %"$gascmp_1707", label %"$out_of_gas_1708", label %"$have_gas_1709"

"$out_of_gas_1708":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1709"

"$have_gas_1709":                                 ; preds = %"$out_of_gas_1708", %"$have_gas_1704"
  %"$consume_1710" = sub i64 %"$gasrem_1706", 1
  store i64 %"$consume_1710", i64* @_gasrem, align 8
  %"$resopt_53" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1712" = icmp ugt i64 16, %"$gasrem_1711"
  br i1 %"$gascmp_1712", label %"$out_of_gas_1713", label %"$have_gas_1714"

"$out_of_gas_1713":                               ; preds = %"$have_gas_1709"
  call void @_out_of_gas()
  br label %"$have_gas_1714"

"$have_gas_1714":                                 ; preds = %"$out_of_gas_1713", %"$have_gas_1709"
  %"$consume_1715" = sub i64 %"$gasrem_1711", 16
  store i64 %"$consume_1715", i64* @_gasrem, align 8
  %"$execptr_load_1716" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_52_1717" = alloca %Int256, align 8
  %"$$input_52_1718" = load %Int256, %Int256* %"$input_52", align 8
  store %Int256 %"$$input_52_1718", %Int256* %"$to_uint256_$input_52_1717", align 8
  %"$$to_uint256_$input_52_1717_1719" = bitcast %Int256* %"$to_uint256_$input_52_1717" to i8*
  %"$to_uint256_call_1720" = call i8* @_to_uint256(i8* %"$execptr_load_1716", %_TyDescrTy_Typ* @"$TyDescr_Int256_121", i8* %"$$to_uint256_$input_52_1717_1719")
  %"$to_uint256_1721" = bitcast i8* %"$to_uint256_call_1720" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1721", %TName_Option_Uint256** %"$resopt_53", align 8
  %"$gasrem_1722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1723" = icmp ugt i64 1, %"$gasrem_1722"
  br i1 %"$gascmp_1723", label %"$out_of_gas_1724", label %"$have_gas_1725"

"$out_of_gas_1724":                               ; preds = %"$have_gas_1714"
  call void @_out_of_gas()
  br label %"$have_gas_1725"

"$have_gas_1725":                                 ; preds = %"$out_of_gas_1724", %"$have_gas_1714"
  %"$consume_1726" = sub i64 %"$gasrem_1722", 1
  store i64 %"$consume_1726", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1728" = icmp ugt i64 2, %"$gasrem_1727"
  br i1 %"$gascmp_1728", label %"$out_of_gas_1729", label %"$have_gas_1730"

"$out_of_gas_1729":                               ; preds = %"$have_gas_1725"
  call void @_out_of_gas()
  br label %"$have_gas_1730"

"$have_gas_1730":                                 ; preds = %"$out_of_gas_1729", %"$have_gas_1725"
  %"$consume_1731" = sub i64 %"$gasrem_1727", 2
  store i64 %"$consume_1731", i64* @_gasrem, align 8
  %"$$resopt_53_1733" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_53", align 8
  %"$$resopt_53_tag_1734" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_53_1733", i32 0, i32 0
  %"$$resopt_53_tag_1735" = load i8, i8* %"$$resopt_53_tag_1734", align 1
  switch i8 %"$$resopt_53_tag_1735", label %"$empty_default_1736" [
    i8 0, label %"$Some_1737"
    i8 1, label %"$None_1785"
  ]

"$Some_1737":                                     ; preds = %"$have_gas_1730"
  %"$$resopt_53_1738" = bitcast %TName_Option_Uint256* %"$$resopt_53_1733" to %CName_Some_Uint256*
  %"$res_gep_1739" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_53_1738", i32 0, i32 1
  %"$res_load_1740" = load %Uint256, %Uint256* %"$res_gep_1739", align 8
  %res28 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1740", %Uint256* %res28, align 8
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$Some_1737"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$Some_1737"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %input_29 = alloca %Uint256, align 8
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1744"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1744"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_29, align 8
  %"$gasrem_1751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1752" = icmp ugt i64 1, %"$gasrem_1751"
  br i1 %"$gascmp_1752", label %"$out_of_gas_1753", label %"$have_gas_1754"

"$out_of_gas_1753":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1754"

"$have_gas_1754":                                 ; preds = %"$out_of_gas_1753", %"$have_gas_1749"
  %"$consume_1755" = sub i64 %"$gasrem_1751", 1
  store i64 %"$consume_1755", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  %"$gasrem_1757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1758" = icmp ugt i64 16, %"$gasrem_1757"
  br i1 %"$gascmp_1758", label %"$out_of_gas_1759", label %"$have_gas_1760"

"$out_of_gas_1759":                               ; preds = %"$have_gas_1754"
  call void @_out_of_gas()
  br label %"$have_gas_1760"

"$have_gas_1760":                                 ; preds = %"$out_of_gas_1759", %"$have_gas_1754"
  %"$consume_1761" = sub i64 %"$gasrem_1757", 16
  store i64 %"$consume_1761", i64* @_gasrem, align 8
  %"$execptr_load_1762" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1763" = alloca %Uint256, align 8
  %"$res_1764" = load %Uint256, %Uint256* %res28, align 8
  store %Uint256 %"$res_1764", %Uint256* %"$eq_res_1763", align 8
  %"$eq_input__1765" = alloca %Uint256, align 8
  %"$input__1766" = load %Uint256, %Uint256* %input_29, align 8
  store %Uint256 %"$input__1766", %Uint256* %"$eq_input__1765", align 8
  %"$eq_call_1767" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1762", %Uint256* %"$eq_res_1763", %Uint256* %"$eq_input__1765")
  store %TName_Bool* %"$eq_call_1767", %TName_Bool** %test_30, align 8
  %"$gasrem_1769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1770" = icmp ugt i64 1, %"$gasrem_1769"
  br i1 %"$gascmp_1770", label %"$out_of_gas_1771", label %"$have_gas_1772"

"$out_of_gas_1771":                               ; preds = %"$have_gas_1760"
  call void @_out_of_gas()
  br label %"$have_gas_1772"

"$have_gas_1772":                                 ; preds = %"$out_of_gas_1771", %"$have_gas_1760"
  %"$consume_1773" = sub i64 %"$gasrem_1769", 1
  store i64 %"$consume_1773", i64* @_gasrem, align 8
  %"$BoolUtils.andb_98" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1774" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1775" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1774", 0
  %"$BoolUtils.andb_envptr_1776" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1774", 1
  %"$$test_51_1777" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  %"$BoolUtils.andb_call_1778" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1775"(i8* %"$BoolUtils.andb_envptr_1776", %TName_Bool* %"$$test_51_1777")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1778", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$BoolUtils.andb_99" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_98_1779" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_fptr_1780" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1779", 0
  %"$$BoolUtils.andb_98_envptr_1781" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1779", 1
  %"$test__1782" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_98_call_1783" = call %TName_Bool* %"$$BoolUtils.andb_98_fptr_1780"(i8* %"$$BoolUtils.andb_98_envptr_1781", %TName_Bool* %"$test__1782")
  store %TName_Bool* %"$$BoolUtils.andb_98_call_1783", %TName_Bool** %"$BoolUtils.andb_99", align 8
  %"$$BoolUtils.andb_99_1784" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_99", align 8
  store %TName_Bool* %"$$BoolUtils.andb_99_1784", %TName_Bool** %"$test_54", align 8
  br label %"$matchsucc_1732"

"$None_1785":                                     ; preds = %"$have_gas_1730"
  %"$$resopt_53_1786" = bitcast %TName_Option_Uint256* %"$$resopt_53_1733" to %CName_None_Uint256*
  %"$gasrem_1787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1788" = icmp ugt i64 1, %"$gasrem_1787"
  br i1 %"$gascmp_1788", label %"$out_of_gas_1789", label %"$have_gas_1790"

"$out_of_gas_1789":                               ; preds = %"$None_1785"
  call void @_out_of_gas()
  br label %"$have_gas_1790"

"$have_gas_1790":                                 ; preds = %"$out_of_gas_1789", %"$None_1785"
  %"$consume_1791" = sub i64 %"$gasrem_1787", 1
  store i64 %"$consume_1791", i64* @_gasrem, align 8
  %"$false_1792" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1792", %TName_Bool** %"$test_54", align 8
  br label %"$matchsucc_1732"

"$empty_default_1736":                            ; preds = %"$have_gas_1730"
  br label %"$matchsucc_1732"

"$matchsucc_1732":                                ; preds = %"$have_gas_1790", %"$have_gas_1772", %"$empty_default_1736"
  %"$gasrem_1793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1794" = icmp ugt i64 1, %"$gasrem_1793"
  br i1 %"$gascmp_1794", label %"$out_of_gas_1795", label %"$have_gas_1796"

"$out_of_gas_1795":                               ; preds = %"$matchsucc_1732"
  call void @_out_of_gas()
  br label %"$have_gas_1796"

"$have_gas_1796":                                 ; preds = %"$out_of_gas_1795", %"$matchsucc_1732"
  %"$consume_1797" = sub i64 %"$gasrem_1793", 1
  store i64 %"$consume_1797", i64* @_gasrem, align 8
  %"$input_55" = alloca %String, align 8
  %"$gasrem_1798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1799" = icmp ugt i64 1, %"$gasrem_1798"
  br i1 %"$gascmp_1799", label %"$out_of_gas_1800", label %"$have_gas_1801"

"$out_of_gas_1800":                               ; preds = %"$have_gas_1796"
  call void @_out_of_gas()
  br label %"$have_gas_1801"

"$have_gas_1801":                                 ; preds = %"$out_of_gas_1800", %"$have_gas_1796"
  %"$consume_1802" = sub i64 %"$gasrem_1798", 1
  store i64 %"$consume_1802", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1803", i32 0, i32 0), i32 77 }, %String* %"$input_55", align 8
  %"$gasrem_1804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1805" = icmp ugt i64 1, %"$gasrem_1804"
  br i1 %"$gascmp_1805", label %"$out_of_gas_1806", label %"$have_gas_1807"

"$out_of_gas_1806":                               ; preds = %"$have_gas_1801"
  call void @_out_of_gas()
  br label %"$have_gas_1807"

"$have_gas_1807":                                 ; preds = %"$out_of_gas_1806", %"$have_gas_1801"
  %"$consume_1808" = sub i64 %"$gasrem_1804", 1
  store i64 %"$consume_1808", i64* @_gasrem, align 8
  %"$resopt_56" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 16, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1807"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1807"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 16
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  %"$execptr_load_1814" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_55_1815" = alloca %String, align 8
  %"$$input_55_1816" = load %String, %String* %"$input_55", align 8
  store %String %"$$input_55_1816", %String* %"$to_uint256_$input_55_1815", align 8
  %"$$to_uint256_$input_55_1815_1817" = bitcast %String* %"$to_uint256_$input_55_1815" to i8*
  %"$to_uint256_call_1818" = call i8* @_to_uint256(i8* %"$execptr_load_1814", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint256_$input_55_1815_1817")
  %"$to_uint256_1819" = bitcast i8* %"$to_uint256_call_1818" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1819", %TName_Option_Uint256** %"$resopt_56", align 8
  %"$gasrem_1820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1821" = icmp ugt i64 1, %"$gasrem_1820"
  br i1 %"$gascmp_1821", label %"$out_of_gas_1822", label %"$have_gas_1823"

"$out_of_gas_1822":                               ; preds = %"$have_gas_1812"
  call void @_out_of_gas()
  br label %"$have_gas_1823"

"$have_gas_1823":                                 ; preds = %"$out_of_gas_1822", %"$have_gas_1812"
  %"$consume_1824" = sub i64 %"$gasrem_1820", 1
  store i64 %"$consume_1824", i64* @_gasrem, align 8
  %"$test_57" = alloca %TName_Bool*, align 8
  %"$gasrem_1825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1826" = icmp ugt i64 2, %"$gasrem_1825"
  br i1 %"$gascmp_1826", label %"$out_of_gas_1827", label %"$have_gas_1828"

"$out_of_gas_1827":                               ; preds = %"$have_gas_1823"
  call void @_out_of_gas()
  br label %"$have_gas_1828"

"$have_gas_1828":                                 ; preds = %"$out_of_gas_1827", %"$have_gas_1823"
  %"$consume_1829" = sub i64 %"$gasrem_1825", 2
  store i64 %"$consume_1829", i64* @_gasrem, align 8
  %"$$resopt_56_1831" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_56", align 8
  %"$$resopt_56_tag_1832" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_56_1831", i32 0, i32 0
  %"$$resopt_56_tag_1833" = load i8, i8* %"$$resopt_56_tag_1832", align 1
  switch i8 %"$$resopt_56_tag_1833", label %"$empty_default_1834" [
    i8 0, label %"$Some_1835"
    i8 1, label %"$None_1883"
  ]

"$Some_1835":                                     ; preds = %"$have_gas_1828"
  %"$$resopt_56_1836" = bitcast %TName_Option_Uint256* %"$$resopt_56_1831" to %CName_Some_Uint256*
  %"$res_gep_1837" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_56_1836", i32 0, i32 1
  %"$res_load_1838" = load %Uint256, %Uint256* %"$res_gep_1837", align 8
  %res31 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1838", %Uint256* %res31, align 8
  %"$gasrem_1839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1840" = icmp ugt i64 1, %"$gasrem_1839"
  br i1 %"$gascmp_1840", label %"$out_of_gas_1841", label %"$have_gas_1842"

"$out_of_gas_1841":                               ; preds = %"$Some_1835"
  call void @_out_of_gas()
  br label %"$have_gas_1842"

"$have_gas_1842":                                 ; preds = %"$out_of_gas_1841", %"$Some_1835"
  %"$consume_1843" = sub i64 %"$gasrem_1839", 1
  store i64 %"$consume_1843", i64* @_gasrem, align 8
  %input_32 = alloca %Uint256, align 8
  %"$gasrem_1844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1845" = icmp ugt i64 1, %"$gasrem_1844"
  br i1 %"$gascmp_1845", label %"$out_of_gas_1846", label %"$have_gas_1847"

"$out_of_gas_1846":                               ; preds = %"$have_gas_1842"
  call void @_out_of_gas()
  br label %"$have_gas_1847"

"$have_gas_1847":                                 ; preds = %"$out_of_gas_1846", %"$have_gas_1842"
  %"$consume_1848" = sub i64 %"$gasrem_1844", 1
  store i64 %"$consume_1848", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_32, align 8
  %"$gasrem_1849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1850" = icmp ugt i64 1, %"$gasrem_1849"
  br i1 %"$gascmp_1850", label %"$out_of_gas_1851", label %"$have_gas_1852"

"$out_of_gas_1851":                               ; preds = %"$have_gas_1847"
  call void @_out_of_gas()
  br label %"$have_gas_1852"

"$have_gas_1852":                                 ; preds = %"$out_of_gas_1851", %"$have_gas_1847"
  %"$consume_1853" = sub i64 %"$gasrem_1849", 1
  store i64 %"$consume_1853", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  %"$gasrem_1855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1856" = icmp ugt i64 16, %"$gasrem_1855"
  br i1 %"$gascmp_1856", label %"$out_of_gas_1857", label %"$have_gas_1858"

"$out_of_gas_1857":                               ; preds = %"$have_gas_1852"
  call void @_out_of_gas()
  br label %"$have_gas_1858"

"$have_gas_1858":                                 ; preds = %"$out_of_gas_1857", %"$have_gas_1852"
  %"$consume_1859" = sub i64 %"$gasrem_1855", 16
  store i64 %"$consume_1859", i64* @_gasrem, align 8
  %"$execptr_load_1860" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1861" = alloca %Uint256, align 8
  %"$res_1862" = load %Uint256, %Uint256* %res31, align 8
  store %Uint256 %"$res_1862", %Uint256* %"$eq_res_1861", align 8
  %"$eq_input__1863" = alloca %Uint256, align 8
  %"$input__1864" = load %Uint256, %Uint256* %input_32, align 8
  store %Uint256 %"$input__1864", %Uint256* %"$eq_input__1863", align 8
  %"$eq_call_1865" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1860", %Uint256* %"$eq_res_1861", %Uint256* %"$eq_input__1863")
  store %TName_Bool* %"$eq_call_1865", %TName_Bool** %test_33, align 8
  %"$gasrem_1867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1868" = icmp ugt i64 1, %"$gasrem_1867"
  br i1 %"$gascmp_1868", label %"$out_of_gas_1869", label %"$have_gas_1870"

"$out_of_gas_1869":                               ; preds = %"$have_gas_1858"
  call void @_out_of_gas()
  br label %"$have_gas_1870"

"$have_gas_1870":                                 ; preds = %"$out_of_gas_1869", %"$have_gas_1858"
  %"$consume_1871" = sub i64 %"$gasrem_1867", 1
  store i64 %"$consume_1871", i64* @_gasrem, align 8
  %"$BoolUtils.andb_100" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1872" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1873" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1872", 0
  %"$BoolUtils.andb_envptr_1874" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1872", 1
  %"$$test_54_1875" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1876" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1873"(i8* %"$BoolUtils.andb_envptr_1874", %TName_Bool* %"$$test_54_1875")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1876", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$BoolUtils.andb_101" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_100_1877" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$$BoolUtils.andb_100_fptr_1878" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1877", 0
  %"$$BoolUtils.andb_100_envptr_1879" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1877", 1
  %"$test__1880" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_100_call_1881" = call %TName_Bool* %"$$BoolUtils.andb_100_fptr_1878"(i8* %"$$BoolUtils.andb_100_envptr_1879", %TName_Bool* %"$test__1880")
  store %TName_Bool* %"$$BoolUtils.andb_100_call_1881", %TName_Bool** %"$BoolUtils.andb_101", align 8
  %"$$BoolUtils.andb_101_1882" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_101", align 8
  store %TName_Bool* %"$$BoolUtils.andb_101_1882", %TName_Bool** %"$test_57", align 8
  br label %"$matchsucc_1830"

"$None_1883":                                     ; preds = %"$have_gas_1828"
  %"$$resopt_56_1884" = bitcast %TName_Option_Uint256* %"$$resopt_56_1831" to %CName_None_Uint256*
  %"$gasrem_1885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1886" = icmp ugt i64 1, %"$gasrem_1885"
  br i1 %"$gascmp_1886", label %"$out_of_gas_1887", label %"$have_gas_1888"

"$out_of_gas_1887":                               ; preds = %"$None_1883"
  call void @_out_of_gas()
  br label %"$have_gas_1888"

"$have_gas_1888":                                 ; preds = %"$out_of_gas_1887", %"$None_1883"
  %"$consume_1889" = sub i64 %"$gasrem_1885", 1
  store i64 %"$consume_1889", i64* @_gasrem, align 8
  %"$false_1890" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1890", %TName_Bool** %"$test_57", align 8
  br label %"$matchsucc_1830"

"$empty_default_1834":                            ; preds = %"$have_gas_1828"
  br label %"$matchsucc_1830"

"$matchsucc_1830":                                ; preds = %"$have_gas_1888", %"$have_gas_1870", %"$empty_default_1834"
  %"$gasrem_1891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1892" = icmp ugt i64 1, %"$gasrem_1891"
  br i1 %"$gascmp_1892", label %"$out_of_gas_1893", label %"$have_gas_1894"

"$out_of_gas_1893":                               ; preds = %"$matchsucc_1830"
  call void @_out_of_gas()
  br label %"$have_gas_1894"

"$have_gas_1894":                                 ; preds = %"$out_of_gas_1893", %"$matchsucc_1830"
  %"$consume_1895" = sub i64 %"$gasrem_1891", 1
  store i64 %"$consume_1895", i64* @_gasrem, align 8
  %"$input_58" = alloca %Int256, align 8
  %"$gasrem_1896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1897" = icmp ugt i64 1, %"$gasrem_1896"
  br i1 %"$gascmp_1897", label %"$out_of_gas_1898", label %"$have_gas_1899"

"$out_of_gas_1898":                               ; preds = %"$have_gas_1894"
  call void @_out_of_gas()
  br label %"$have_gas_1899"

"$have_gas_1899":                                 ; preds = %"$out_of_gas_1898", %"$have_gas_1894"
  %"$consume_1900" = sub i64 %"$gasrem_1896", 1
  store i64 %"$consume_1900", i64* @_gasrem, align 8
  store %Int256 { i256 -282366920938463463374607431768211456 }, %Int256* %"$input_58", align 8
  %"$gasrem_1901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1902" = icmp ugt i64 1, %"$gasrem_1901"
  br i1 %"$gascmp_1902", label %"$out_of_gas_1903", label %"$have_gas_1904"

"$out_of_gas_1903":                               ; preds = %"$have_gas_1899"
  call void @_out_of_gas()
  br label %"$have_gas_1904"

"$have_gas_1904":                                 ; preds = %"$out_of_gas_1903", %"$have_gas_1899"
  %"$consume_1905" = sub i64 %"$gasrem_1901", 1
  store i64 %"$consume_1905", i64* @_gasrem, align 8
  %"$resopt_59" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1907" = icmp ugt i64 16, %"$gasrem_1906"
  br i1 %"$gascmp_1907", label %"$out_of_gas_1908", label %"$have_gas_1909"

"$out_of_gas_1908":                               ; preds = %"$have_gas_1904"
  call void @_out_of_gas()
  br label %"$have_gas_1909"

"$have_gas_1909":                                 ; preds = %"$out_of_gas_1908", %"$have_gas_1904"
  %"$consume_1910" = sub i64 %"$gasrem_1906", 16
  store i64 %"$consume_1910", i64* @_gasrem, align 8
  %"$execptr_load_1911" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_58_1912" = alloca %Int256, align 8
  %"$$input_58_1913" = load %Int256, %Int256* %"$input_58", align 8
  store %Int256 %"$$input_58_1913", %Int256* %"$to_uint256_$input_58_1912", align 8
  %"$$to_uint256_$input_58_1912_1914" = bitcast %Int256* %"$to_uint256_$input_58_1912" to i8*
  %"$to_uint256_call_1915" = call i8* @_to_uint256(i8* %"$execptr_load_1911", %_TyDescrTy_Typ* @"$TyDescr_Int256_121", i8* %"$$to_uint256_$input_58_1912_1914")
  %"$to_uint256_1916" = bitcast i8* %"$to_uint256_call_1915" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1916", %TName_Option_Uint256** %"$resopt_59", align 8
  %"$gasrem_1917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1918" = icmp ugt i64 1, %"$gasrem_1917"
  br i1 %"$gascmp_1918", label %"$out_of_gas_1919", label %"$have_gas_1920"

"$out_of_gas_1919":                               ; preds = %"$have_gas_1909"
  call void @_out_of_gas()
  br label %"$have_gas_1920"

"$have_gas_1920":                                 ; preds = %"$out_of_gas_1919", %"$have_gas_1909"
  %"$consume_1921" = sub i64 %"$gasrem_1917", 1
  store i64 %"$consume_1921", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1923" = icmp ugt i64 2, %"$gasrem_1922"
  br i1 %"$gascmp_1923", label %"$out_of_gas_1924", label %"$have_gas_1925"

"$out_of_gas_1924":                               ; preds = %"$have_gas_1920"
  call void @_out_of_gas()
  br label %"$have_gas_1925"

"$have_gas_1925":                                 ; preds = %"$out_of_gas_1924", %"$have_gas_1920"
  %"$consume_1926" = sub i64 %"$gasrem_1922", 2
  store i64 %"$consume_1926", i64* @_gasrem, align 8
  %"$$resopt_59_1928" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_59", align 8
  %"$$resopt_59_tag_1929" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_59_1928", i32 0, i32 0
  %"$$resopt_59_tag_1930" = load i8, i8* %"$$resopt_59_tag_1929", align 1
  switch i8 %"$$resopt_59_tag_1930", label %"$empty_default_1931" [
    i8 0, label %"$Some_1932"
    i8 1, label %"$None_1942"
  ]

"$Some_1932":                                     ; preds = %"$have_gas_1925"
  %"$$resopt_59_1933" = bitcast %TName_Option_Uint256* %"$$resopt_59_1928" to %CName_Some_Uint256*
  %"$$$resopt_59_75_gep_1934" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_59_1933", i32 0, i32 1
  %"$$$resopt_59_75_load_1935" = load %Uint256, %Uint256* %"$$$resopt_59_75_gep_1934", align 8
  %"$$resopt_59_75" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_59_75_load_1935", %Uint256* %"$$resopt_59_75", align 8
  %"$gasrem_1936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1937" = icmp ugt i64 1, %"$gasrem_1936"
  br i1 %"$gascmp_1937", label %"$out_of_gas_1938", label %"$have_gas_1939"

"$out_of_gas_1938":                               ; preds = %"$Some_1932"
  call void @_out_of_gas()
  br label %"$have_gas_1939"

"$have_gas_1939":                                 ; preds = %"$out_of_gas_1938", %"$Some_1932"
  %"$consume_1940" = sub i64 %"$gasrem_1936", 1
  store i64 %"$consume_1940", i64* @_gasrem, align 8
  %"$false_1941" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1941", %TName_Bool** %"$test_60", align 8
  br label %"$matchsucc_1927"

"$None_1942":                                     ; preds = %"$have_gas_1925"
  %"$$resopt_59_1943" = bitcast %TName_Option_Uint256* %"$$resopt_59_1928" to %CName_None_Uint256*
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$None_1942"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$None_1942"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$$test_57_1949" = load %TName_Bool*, %TName_Bool** %"$test_57", align 8
  store %TName_Bool* %"$$test_57_1949", %TName_Bool** %"$test_60", align 8
  br label %"$matchsucc_1927"

"$empty_default_1931":                            ; preds = %"$have_gas_1925"
  br label %"$matchsucc_1927"

"$matchsucc_1927":                                ; preds = %"$have_gas_1947", %"$have_gas_1939", %"$empty_default_1931"
  %"$gasrem_1950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1951" = icmp ugt i64 1, %"$gasrem_1950"
  br i1 %"$gascmp_1951", label %"$out_of_gas_1952", label %"$have_gas_1953"

"$out_of_gas_1952":                               ; preds = %"$matchsucc_1927"
  call void @_out_of_gas()
  br label %"$have_gas_1953"

"$have_gas_1953":                                 ; preds = %"$out_of_gas_1952", %"$matchsucc_1927"
  %"$consume_1954" = sub i64 %"$gasrem_1950", 1
  store i64 %"$consume_1954", i64* @_gasrem, align 8
  %"$input_61" = alloca %String, align 8
  %"$gasrem_1955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1956" = icmp ugt i64 1, %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1953"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1953"
  %"$consume_1959" = sub i64 %"$gasrem_1955", 1
  store i64 %"$consume_1959", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"$stringlit_1960", i32 0, i32 0), i32 37 }, %String* %"$input_61", align 8
  %"$gasrem_1961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1962" = icmp ugt i64 1, %"$gasrem_1961"
  br i1 %"$gascmp_1962", label %"$out_of_gas_1963", label %"$have_gas_1964"

"$out_of_gas_1963":                               ; preds = %"$have_gas_1958"
  call void @_out_of_gas()
  br label %"$have_gas_1964"

"$have_gas_1964":                                 ; preds = %"$out_of_gas_1963", %"$have_gas_1958"
  %"$consume_1965" = sub i64 %"$gasrem_1961", 1
  store i64 %"$consume_1965", i64* @_gasrem, align 8
  %"$resopt_62" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1967" = icmp ugt i64 16, %"$gasrem_1966"
  br i1 %"$gascmp_1967", label %"$out_of_gas_1968", label %"$have_gas_1969"

"$out_of_gas_1968":                               ; preds = %"$have_gas_1964"
  call void @_out_of_gas()
  br label %"$have_gas_1969"

"$have_gas_1969":                                 ; preds = %"$out_of_gas_1968", %"$have_gas_1964"
  %"$consume_1970" = sub i64 %"$gasrem_1966", 16
  store i64 %"$consume_1970", i64* @_gasrem, align 8
  %"$execptr_load_1971" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_61_1972" = alloca %String, align 8
  %"$$input_61_1973" = load %String, %String* %"$input_61", align 8
  store %String %"$$input_61_1973", %String* %"$to_uint256_$input_61_1972", align 8
  %"$$to_uint256_$input_61_1972_1974" = bitcast %String* %"$to_uint256_$input_61_1972" to i8*
  %"$to_uint256_call_1975" = call i8* @_to_uint256(i8* %"$execptr_load_1971", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint256_$input_61_1972_1974")
  %"$to_uint256_1976" = bitcast i8* %"$to_uint256_call_1975" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1976", %TName_Option_Uint256** %"$resopt_62", align 8
  %"$gasrem_1977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1978" = icmp ugt i64 1, %"$gasrem_1977"
  br i1 %"$gascmp_1978", label %"$out_of_gas_1979", label %"$have_gas_1980"

"$out_of_gas_1979":                               ; preds = %"$have_gas_1969"
  call void @_out_of_gas()
  br label %"$have_gas_1980"

"$have_gas_1980":                                 ; preds = %"$out_of_gas_1979", %"$have_gas_1969"
  %"$consume_1981" = sub i64 %"$gasrem_1977", 1
  store i64 %"$consume_1981", i64* @_gasrem, align 8
  %"$test_63" = alloca %TName_Bool*, align 8
  %"$gasrem_1982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1983" = icmp ugt i64 2, %"$gasrem_1982"
  br i1 %"$gascmp_1983", label %"$out_of_gas_1984", label %"$have_gas_1985"

"$out_of_gas_1984":                               ; preds = %"$have_gas_1980"
  call void @_out_of_gas()
  br label %"$have_gas_1985"

"$have_gas_1985":                                 ; preds = %"$out_of_gas_1984", %"$have_gas_1980"
  %"$consume_1986" = sub i64 %"$gasrem_1982", 2
  store i64 %"$consume_1986", i64* @_gasrem, align 8
  %"$$resopt_62_1988" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_62", align 8
  %"$$resopt_62_tag_1989" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_62_1988", i32 0, i32 0
  %"$$resopt_62_tag_1990" = load i8, i8* %"$$resopt_62_tag_1989", align 1
  switch i8 %"$$resopt_62_tag_1990", label %"$empty_default_1991" [
    i8 0, label %"$Some_1992"
    i8 1, label %"$None_2002"
  ]

"$Some_1992":                                     ; preds = %"$have_gas_1985"
  %"$$resopt_62_1993" = bitcast %TName_Option_Uint256* %"$$resopt_62_1988" to %CName_Some_Uint256*
  %"$$$resopt_62_76_gep_1994" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_62_1993", i32 0, i32 1
  %"$$$resopt_62_76_load_1995" = load %Uint256, %Uint256* %"$$$resopt_62_76_gep_1994", align 8
  %"$$resopt_62_76" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_62_76_load_1995", %Uint256* %"$$resopt_62_76", align 8
  %"$gasrem_1996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1997" = icmp ugt i64 1, %"$gasrem_1996"
  br i1 %"$gascmp_1997", label %"$out_of_gas_1998", label %"$have_gas_1999"

"$out_of_gas_1998":                               ; preds = %"$Some_1992"
  call void @_out_of_gas()
  br label %"$have_gas_1999"

"$have_gas_1999":                                 ; preds = %"$out_of_gas_1998", %"$Some_1992"
  %"$consume_2000" = sub i64 %"$gasrem_1996", 1
  store i64 %"$consume_2000", i64* @_gasrem, align 8
  %"$false_2001" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2001", %TName_Bool** %"$test_63", align 8
  br label %"$matchsucc_1987"

"$None_2002":                                     ; preds = %"$have_gas_1985"
  %"$$resopt_62_2003" = bitcast %TName_Option_Uint256* %"$$resopt_62_1988" to %CName_None_Uint256*
  %"$gasrem_2004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2005" = icmp ugt i64 1, %"$gasrem_2004"
  br i1 %"$gascmp_2005", label %"$out_of_gas_2006", label %"$have_gas_2007"

"$out_of_gas_2006":                               ; preds = %"$None_2002"
  call void @_out_of_gas()
  br label %"$have_gas_2007"

"$have_gas_2007":                                 ; preds = %"$out_of_gas_2006", %"$None_2002"
  %"$consume_2008" = sub i64 %"$gasrem_2004", 1
  store i64 %"$consume_2008", i64* @_gasrem, align 8
  %"$$test_60_2009" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  store %TName_Bool* %"$$test_60_2009", %TName_Bool** %"$test_63", align 8
  br label %"$matchsucc_1987"

"$empty_default_1991":                            ; preds = %"$have_gas_1985"
  br label %"$matchsucc_1987"

"$matchsucc_1987":                                ; preds = %"$have_gas_2007", %"$have_gas_1999", %"$empty_default_1991"
  %"$gasrem_2010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2011" = icmp ugt i64 1, %"$gasrem_2010"
  br i1 %"$gascmp_2011", label %"$out_of_gas_2012", label %"$have_gas_2013"

"$out_of_gas_2012":                               ; preds = %"$matchsucc_1987"
  call void @_out_of_gas()
  br label %"$have_gas_2013"

"$have_gas_2013":                                 ; preds = %"$out_of_gas_2012", %"$matchsucc_1987"
  %"$consume_2014" = sub i64 %"$gasrem_2010", 1
  store i64 %"$consume_2014", i64* @_gasrem, align 8
  %"$input_64" = alloca %String, align 8
  %"$gasrem_2015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2016" = icmp ugt i64 1, %"$gasrem_2015"
  br i1 %"$gascmp_2016", label %"$out_of_gas_2017", label %"$have_gas_2018"

"$out_of_gas_2017":                               ; preds = %"$have_gas_2013"
  call void @_out_of_gas()
  br label %"$have_gas_2018"

"$have_gas_2018":                                 ; preds = %"$out_of_gas_2017", %"$have_gas_2013"
  %"$consume_2019" = sub i64 %"$gasrem_2015", 1
  store i64 %"$consume_2019", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_2020", i32 0, i32 0), i32 4 }, %String* %"$input_64", align 8
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 1, %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$have_gas_2018"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$have_gas_2018"
  %"$consume_2025" = sub i64 %"$gasrem_2021", 1
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %"$resopt_65" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 4, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2024"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 4
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$execptr_load_2031" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_64_2032" = alloca %String, align 8
  %"$$input_64_2033" = load %String, %String* %"$input_64", align 8
  store %String %"$$input_64_2033", %String* %"$to_uint64_$input_64_2032", align 8
  %"$$to_uint64_$input_64_2032_2034" = bitcast %String* %"$to_uint64_$input_64_2032" to i8*
  %"$to_uint64_call_2035" = call i8* @_to_uint64(i8* %"$execptr_load_2031", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint64_$input_64_2032_2034")
  %"$to_uint64_2036" = bitcast i8* %"$to_uint64_call_2035" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_2036", %TName_Option_Uint64** %"$resopt_65", align 8
  %"$gasrem_2037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2038" = icmp ugt i64 1, %"$gasrem_2037"
  br i1 %"$gascmp_2038", label %"$out_of_gas_2039", label %"$have_gas_2040"

"$out_of_gas_2039":                               ; preds = %"$have_gas_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2040"

"$have_gas_2040":                                 ; preds = %"$out_of_gas_2039", %"$have_gas_2029"
  %"$consume_2041" = sub i64 %"$gasrem_2037", 1
  store i64 %"$consume_2041", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_2042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2043" = icmp ugt i64 2, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$have_gas_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$have_gas_2040"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 2
  store i64 %"$consume_2046", i64* @_gasrem, align 8
  %"$$resopt_65_2048" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_65", align 8
  %"$$resopt_65_tag_2049" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_65_2048", i32 0, i32 0
  %"$$resopt_65_tag_2050" = load i8, i8* %"$$resopt_65_tag_2049", align 1
  switch i8 %"$$resopt_65_tag_2050", label %"$empty_default_2051" [
    i8 0, label %"$Some_2052"
    i8 1, label %"$None_2062"
  ]

"$Some_2052":                                     ; preds = %"$have_gas_2045"
  %"$$resopt_65_2053" = bitcast %TName_Option_Uint64* %"$$resopt_65_2048" to %CName_Some_Uint64*
  %"$$$resopt_65_77_gep_2054" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_65_2053", i32 0, i32 1
  %"$$$resopt_65_77_load_2055" = load %Uint64, %Uint64* %"$$$resopt_65_77_gep_2054", align 8
  %"$$resopt_65_77" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_65_77_load_2055", %Uint64* %"$$resopt_65_77", align 8
  %"$gasrem_2056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2057" = icmp ugt i64 1, %"$gasrem_2056"
  br i1 %"$gascmp_2057", label %"$out_of_gas_2058", label %"$have_gas_2059"

"$out_of_gas_2058":                               ; preds = %"$Some_2052"
  call void @_out_of_gas()
  br label %"$have_gas_2059"

"$have_gas_2059":                                 ; preds = %"$out_of_gas_2058", %"$Some_2052"
  %"$consume_2060" = sub i64 %"$gasrem_2056", 1
  store i64 %"$consume_2060", i64* @_gasrem, align 8
  %"$false_2061" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2061", %TName_Bool** %"$test_66", align 8
  br label %"$matchsucc_2047"

"$None_2062":                                     ; preds = %"$have_gas_2045"
  %"$$resopt_65_2063" = bitcast %TName_Option_Uint64* %"$$resopt_65_2048" to %CName_None_Uint64*
  %"$gasrem_2064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2065" = icmp ugt i64 1, %"$gasrem_2064"
  br i1 %"$gascmp_2065", label %"$out_of_gas_2066", label %"$have_gas_2067"

"$out_of_gas_2066":                               ; preds = %"$None_2062"
  call void @_out_of_gas()
  br label %"$have_gas_2067"

"$have_gas_2067":                                 ; preds = %"$out_of_gas_2066", %"$None_2062"
  %"$consume_2068" = sub i64 %"$gasrem_2064", 1
  store i64 %"$consume_2068", i64* @_gasrem, align 8
  %"$$test_63_2069" = load %TName_Bool*, %TName_Bool** %"$test_63", align 8
  store %TName_Bool* %"$$test_63_2069", %TName_Bool** %"$test_66", align 8
  br label %"$matchsucc_2047"

"$empty_default_2051":                            ; preds = %"$have_gas_2045"
  br label %"$matchsucc_2047"

"$matchsucc_2047":                                ; preds = %"$have_gas_2067", %"$have_gas_2059", %"$empty_default_2051"
  %"$gasrem_2070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2071" = icmp ugt i64 1, %"$gasrem_2070"
  br i1 %"$gascmp_2071", label %"$out_of_gas_2072", label %"$have_gas_2073"

"$out_of_gas_2072":                               ; preds = %"$matchsucc_2047"
  call void @_out_of_gas()
  br label %"$have_gas_2073"

"$have_gas_2073":                                 ; preds = %"$out_of_gas_2072", %"$matchsucc_2047"
  %"$consume_2074" = sub i64 %"$gasrem_2070", 1
  store i64 %"$consume_2074", i64* @_gasrem, align 8
  %"$$test_66_2075" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  store %TName_Bool* %"$$test_66_2075", %TName_Bool** %"$expr_106", align 8
  %"$$expr_106_2076" = load %TName_Bool*, %TName_Bool** %"$expr_106", align 8
  ret %TName_Bool* %"$$expr_106_2076"
}

declare i8* @_to_uint32(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

declare i8* @_to_uint64(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Uint64(i8*, %Uint64, %Uint64)

declare i8* @_to_uint128(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare i8* @_to_uint256(i8*, %_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2077" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2078" = bitcast %TName_Bool* %"$exprval_2077" to i8*
  %"$execptr_load_2079" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2079", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_143", i8* %"$memvoidcast_2078")
  ret void
}
