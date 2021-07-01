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
%"$ParamDescr_1899" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1900" = type { %ParamDescrString, i32, %"$ParamDescr_1899"* }
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
@"$stringlit_1507" = unnamed_addr constant [11 x i8] c"-2147483648"
@"$stringlit_1648" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1789" = unnamed_addr constant [37 x i8] c"-282366920938463463374607431768211456"
@"$stringlit_1844" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_131", %_TyDescrTy_Typ* @"$TyDescr_Int64_113", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_143", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint256_139", %_TyDescrTy_Typ* @"$TyDescr_Uint64_115", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_141", %_TyDescrTy_Typ* @"$TyDescr_Bnum_127", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", %_TyDescrTy_Typ* @"$TyDescr_Exception_133", %_TyDescrTy_Typ* @"$TyDescr_String_125", %_TyDescrTy_Typ* @"$TyDescr_Int256_121", %_TyDescrTy_Typ* @"$TyDescr_Int128_117", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_140", %_TyDescrTy_Typ* @"$TyDescr_Bystr_135", %_TyDescrTy_Typ* @"$TyDescr_Message_129", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint32_142", %_TyDescrTy_Typ* @"$TyDescr_Int32_109"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_1899"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1900"] zeroinitializer
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
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_input_291" = alloca %Uint32, align 8
  %"$input_292" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_292", %Uint32* %"$to_uint32_input_291", align 4
  %"$$to_uint32_input_291_293" = bitcast %Uint32* %"$to_uint32_input_291" to i8*
  %"$to_uint32_call_294" = call i8* @_to_uint32(i8* %"$execptr_load_290", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", i8* %"$$to_uint32_input_291_293")
  %"$to_uint32_295" = bitcast i8* %"$to_uint32_call_294" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_295", %TName_Option_Uint32** %resopt, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_288"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 2, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 2
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$resopt_307" = load %TName_Option_Uint32*, %TName_Option_Uint32** %resopt, align 8
  %"$resopt_tag_308" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$resopt_307", i32 0, i32 0
  %"$resopt_tag_309" = load i8, i8* %"$resopt_tag_308", align 1
  switch i8 %"$resopt_tag_309", label %"$empty_default_310" [
    i8 0, label %"$Some_311"
    i8 1, label %"$None_351"
  ]

"$Some_311":                                      ; preds = %"$have_gas_304"
  %"$resopt_312" = bitcast %TName_Option_Uint32* %"$resopt_307" to %CName_Some_Uint32*
  %"$res_gep_313" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$resopt_312", i32 0, i32 1
  %"$res_load_314" = load %Uint32, %Uint32* %"$res_gep_313", align 4
  %res = alloca %Uint32, align 8
  store %Uint32 %"$res_load_314", %Uint32* %res, align 4
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$Some_311"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$Some_311"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %input_ = alloca %Uint32, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_, align 4
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$execptr_load_330" = load i8*, i8** @_execptr, align 8
  %"$res_331" = load %Uint32, %Uint32* %res, align 4
  %"$input__332" = load %Uint32, %Uint32* %input_, align 4
  %"$eq_call_333" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_330", %Uint32 %"$res_331", %Uint32 %"$input__332")
  store %TName_Bool* %"$eq_call_333", %TName_Bool** %test_, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_328"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$BoolUtils.andb_78" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_340" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_341" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_340", 0
  %"$BoolUtils.andb_envptr_342" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_340", 1
  %"$test_343" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_344" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_341"(i8* %"$BoolUtils.andb_envptr_342", %TName_Bool* %"$test_343")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_344", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_78", align 8
  %"$BoolUtils.andb_79" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_78_345" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_78", align 8
  %"$$BoolUtils.andb_78_fptr_346" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_78_345", 0
  %"$$BoolUtils.andb_78_envptr_347" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_78_345", 1
  %"$test__348" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_78_call_349" = call %TName_Bool* %"$$BoolUtils.andb_78_fptr_346"(i8* %"$$BoolUtils.andb_78_envptr_347", %TName_Bool* %"$test__348")
  store %TName_Bool* %"$$BoolUtils.andb_78_call_349", %TName_Bool** %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_350" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_79", align 8
  store %TName_Bool* %"$$BoolUtils.andb_79_350", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_306"

"$None_351":                                      ; preds = %"$have_gas_304"
  %"$resopt_352" = bitcast %TName_Option_Uint32* %"$resopt_307" to %CName_None_Uint32*
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$None_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$None_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$false_358" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_358", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_306"

"$empty_default_310":                             ; preds = %"$have_gas_304"
  br label %"$matchsucc_306"

"$matchsucc_306":                                 ; preds = %"$have_gas_356", %"$have_gas_338", %"$empty_default_310"
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$matchsucc_306"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$matchsucc_306"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$input_1" = alloca %Uint128, align 8
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_1", align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$resopt_2" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_374" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_1_375" = alloca %Uint128, align 8
  %"$$input_1_376" = load %Uint128, %Uint128* %"$input_1", align 8
  store %Uint128 %"$$input_1_376", %Uint128* %"$to_uint32_$input_1_375", align 8
  %"$$to_uint32_$input_1_375_377" = bitcast %Uint128* %"$to_uint32_$input_1_375" to i8*
  %"$to_uint32_call_378" = call i8* @_to_uint32(i8* %"$execptr_load_374", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint32_$input_1_375_377")
  %"$to_uint32_379" = bitcast i8* %"$to_uint32_call_378" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_379", %TName_Option_Uint32** %"$resopt_2", align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_372"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$test_3" = alloca %TName_Bool*, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 2, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 2
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$$resopt_2_391" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_2", align 8
  %"$$resopt_2_tag_392" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_2_391", i32 0, i32 0
  %"$$resopt_2_tag_393" = load i8, i8* %"$$resopt_2_tag_392", align 1
  switch i8 %"$$resopt_2_tag_393", label %"$empty_default_394" [
    i8 0, label %"$Some_395"
    i8 1, label %"$None_435"
  ]

"$Some_395":                                      ; preds = %"$have_gas_388"
  %"$$resopt_2_396" = bitcast %TName_Option_Uint32* %"$$resopt_2_391" to %CName_Some_Uint32*
  %"$res_gep_397" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_2_396", i32 0, i32 1
  %"$res_load_398" = load %Uint32, %Uint32* %"$res_gep_397", align 4
  %res1 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_398", %Uint32* %res1, align 4
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$Some_395"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$Some_395"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %input_2 = alloca %Uint32, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_2, align 4
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  %"$execptr_load_414" = load i8*, i8** @_execptr, align 8
  %"$res_415" = load %Uint32, %Uint32* %res1, align 4
  %"$input__416" = load %Uint32, %Uint32* %input_2, align 4
  %"$eq_call_417" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_414", %Uint32 %"$res_415", %Uint32 %"$input__416")
  store %TName_Bool* %"$eq_call_417", %TName_Bool** %test_3, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_412"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$BoolUtils.andb_80" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_424" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_425" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_424", 0
  %"$BoolUtils.andb_envptr_426" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_424", 1
  %"$$test_0_427" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_428" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_425"(i8* %"$BoolUtils.andb_envptr_426", %TName_Bool* %"$$test_0_427")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_428", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_80", align 8
  %"$BoolUtils.andb_81" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_80_429" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_80", align 8
  %"$$BoolUtils.andb_80_fptr_430" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_80_429", 0
  %"$$BoolUtils.andb_80_envptr_431" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_80_429", 1
  %"$test__432" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_80_call_433" = call %TName_Bool* %"$$BoolUtils.andb_80_fptr_430"(i8* %"$$BoolUtils.andb_80_envptr_431", %TName_Bool* %"$test__432")
  store %TName_Bool* %"$$BoolUtils.andb_80_call_433", %TName_Bool** %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_434" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_81", align 8
  store %TName_Bool* %"$$BoolUtils.andb_81_434", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_390"

"$None_435":                                      ; preds = %"$have_gas_388"
  %"$$resopt_2_436" = bitcast %TName_Option_Uint32* %"$$resopt_2_391" to %CName_None_Uint32*
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 1, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$None_435"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$None_435"
  %"$consume_441" = sub i64 %"$gasrem_437", 1
  store i64 %"$consume_441", i64* @_gasrem, align 8
  %"$false_442" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_442", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_390"

"$empty_default_394":                             ; preds = %"$have_gas_388"
  br label %"$matchsucc_390"

"$matchsucc_390":                                 ; preds = %"$have_gas_440", %"$have_gas_422", %"$empty_default_394"
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$matchsucc_390"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$matchsucc_390"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$input_4" = alloca %Uint64, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_4", align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$resopt_5" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_458" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_4_459" = alloca %Uint64, align 8
  %"$$input_4_460" = load %Uint64, %Uint64* %"$input_4", align 8
  store %Uint64 %"$$input_4_460", %Uint64* %"$to_uint32_$input_4_459", align 8
  %"$$to_uint32_$input_4_459_461" = bitcast %Uint64* %"$to_uint32_$input_4_459" to i8*
  %"$to_uint32_call_462" = call i8* @_to_uint32(i8* %"$execptr_load_458", %_TyDescrTy_Typ* @"$TyDescr_Uint64_115", i8* %"$$to_uint32_$input_4_459_461")
  %"$to_uint32_463" = bitcast i8* %"$to_uint32_call_462" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_463", %TName_Option_Uint32** %"$resopt_5", align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_456"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 2, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 2
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$$resopt_5_475" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_5", align 8
  %"$$resopt_5_tag_476" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_5_475", i32 0, i32 0
  %"$$resopt_5_tag_477" = load i8, i8* %"$$resopt_5_tag_476", align 1
  switch i8 %"$$resopt_5_tag_477", label %"$empty_default_478" [
    i8 0, label %"$Some_479"
    i8 1, label %"$None_489"
  ]

"$Some_479":                                      ; preds = %"$have_gas_472"
  %"$$resopt_5_480" = bitcast %TName_Option_Uint32* %"$$resopt_5_475" to %CName_Some_Uint32*
  %"$$$resopt_5_67_gep_481" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_5_480", i32 0, i32 1
  %"$$$resopt_5_67_load_482" = load %Uint32, %Uint32* %"$$$resopt_5_67_gep_481", align 4
  %"$$resopt_5_67" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_5_67_load_482", %Uint32* %"$$resopt_5_67", align 4
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$Some_479"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$Some_479"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$false_488" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_488", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_474"

"$None_489":                                      ; preds = %"$have_gas_472"
  %"$$resopt_5_490" = bitcast %TName_Option_Uint32* %"$$resopt_5_475" to %CName_None_Uint32*
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$None_489"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$None_489"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$$test_3_496" = load %TName_Bool*, %TName_Bool** %"$test_3", align 8
  store %TName_Bool* %"$$test_3_496", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_474"

"$empty_default_478":                             ; preds = %"$have_gas_472"
  br label %"$matchsucc_474"

"$matchsucc_474":                                 ; preds = %"$have_gas_494", %"$have_gas_486", %"$empty_default_478"
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$matchsucc_474"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$matchsucc_474"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_7", align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_505"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_512" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_7_513" = alloca %Uint128, align 8
  %"$$input_7_514" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_514", %Uint128* %"$to_uint32_$input_7_513", align 8
  %"$$to_uint32_$input_7_513_515" = bitcast %Uint128* %"$to_uint32_$input_7_513" to i8*
  %"$to_uint32_call_516" = call i8* @_to_uint32(i8* %"$execptr_load_512", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint32_$input_7_513_515")
  %"$to_uint32_517" = bitcast i8* %"$to_uint32_call_516" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_517", %TName_Option_Uint32** %"$resopt_8", align 8
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_510"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 2, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 2
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$$resopt_8_529" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_8", align 8
  %"$$resopt_8_tag_530" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_8_529", i32 0, i32 0
  %"$$resopt_8_tag_531" = load i8, i8* %"$$resopt_8_tag_530", align 1
  switch i8 %"$$resopt_8_tag_531", label %"$empty_default_532" [
    i8 0, label %"$Some_533"
    i8 1, label %"$None_543"
  ]

"$Some_533":                                      ; preds = %"$have_gas_526"
  %"$$resopt_8_534" = bitcast %TName_Option_Uint32* %"$$resopt_8_529" to %CName_Some_Uint32*
  %"$$$resopt_8_68_gep_535" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_8_534", i32 0, i32 1
  %"$$$resopt_8_68_load_536" = load %Uint32, %Uint32* %"$$$resopt_8_68_gep_535", align 4
  %"$$resopt_8_68" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_8_68_load_536", %Uint32* %"$$resopt_8_68", align 4
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$Some_533"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$Some_533"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$false_542" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_542", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_528"

"$None_543":                                      ; preds = %"$have_gas_526"
  %"$$resopt_8_544" = bitcast %TName_Option_Uint32* %"$$resopt_8_529" to %CName_None_Uint32*
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$None_543"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$None_543"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %"$$test_6_550" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  store %TName_Bool* %"$$test_6_550", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_528"

"$empty_default_532":                             ; preds = %"$have_gas_526"
  br label %"$matchsucc_528"

"$matchsucc_528":                                 ; preds = %"$have_gas_548", %"$have_gas_540", %"$empty_default_532"
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$matchsucc_528"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$matchsucc_528"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$input_10" = alloca %Uint256, align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551615 }, %Uint256* %"$input_10", align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_566" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_10_567" = alloca %Uint256, align 8
  %"$$input_10_568" = load %Uint256, %Uint256* %"$input_10", align 8
  store %Uint256 %"$$input_10_568", %Uint256* %"$to_uint32_$input_10_567", align 8
  %"$$to_uint32_$input_10_567_569" = bitcast %Uint256* %"$to_uint32_$input_10_567" to i8*
  %"$to_uint32_call_570" = call i8* @_to_uint32(i8* %"$execptr_load_566", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint32_$input_10_567_569")
  %"$to_uint32_571" = bitcast i8* %"$to_uint32_call_570" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_571", %TName_Option_Uint32** %"$resopt_11", align 8
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_564"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 2, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 2
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %"$$resopt_11_583" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_11", align 8
  %"$$resopt_11_tag_584" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_11_583", i32 0, i32 0
  %"$$resopt_11_tag_585" = load i8, i8* %"$$resopt_11_tag_584", align 1
  switch i8 %"$$resopt_11_tag_585", label %"$empty_default_586" [
    i8 0, label %"$Some_587"
    i8 1, label %"$None_597"
  ]

"$Some_587":                                      ; preds = %"$have_gas_580"
  %"$$resopt_11_588" = bitcast %TName_Option_Uint32* %"$$resopt_11_583" to %CName_Some_Uint32*
  %"$$$resopt_11_69_gep_589" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_11_588", i32 0, i32 1
  %"$$$resopt_11_69_load_590" = load %Uint32, %Uint32* %"$$$resopt_11_69_gep_589", align 4
  %"$$resopt_11_69" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_11_69_load_590", %Uint32* %"$$resopt_11_69", align 4
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$Some_587"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$Some_587"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$false_596" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_596", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_582"

"$None_597":                                      ; preds = %"$have_gas_580"
  %"$$resopt_11_598" = bitcast %TName_Option_Uint32* %"$$resopt_11_583" to %CName_None_Uint32*
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$None_597"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$None_597"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %"$$test_9_604" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  store %TName_Bool* %"$$test_9_604", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_582"

"$empty_default_586":                             ; preds = %"$have_gas_580"
  br label %"$matchsucc_582"

"$matchsucc_582":                                 ; preds = %"$have_gas_602", %"$have_gas_594", %"$empty_default_586"
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$matchsucc_582"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$matchsucc_582"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint32, align 8
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_608"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %"$input_13", align 4
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_613"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Uint64*, align 8
  %"$execptr_load_620" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_13_621" = alloca %Uint32, align 8
  %"$$input_13_622" = load %Uint32, %Uint32* %"$input_13", align 4
  store %Uint32 %"$$input_13_622", %Uint32* %"$to_uint64_$input_13_621", align 4
  %"$$to_uint64_$input_13_621_623" = bitcast %Uint32* %"$to_uint64_$input_13_621" to i8*
  %"$to_uint64_call_624" = call i8* @_to_uint64(i8* %"$execptr_load_620", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", i8* %"$$to_uint64_$input_13_621_623")
  %"$to_uint64_625" = bitcast i8* %"$to_uint64_call_624" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_625", %TName_Option_Uint64** %"$resopt_14", align 8
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_618"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 2, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_629"
  %"$consume_635" = sub i64 %"$gasrem_631", 2
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$$resopt_14_637" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_14", align 8
  %"$$resopt_14_tag_638" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_14_637", i32 0, i32 0
  %"$$resopt_14_tag_639" = load i8, i8* %"$$resopt_14_tag_638", align 1
  switch i8 %"$$resopt_14_tag_639", label %"$empty_default_640" [
    i8 0, label %"$Some_641"
    i8 1, label %"$None_681"
  ]

"$Some_641":                                      ; preds = %"$have_gas_634"
  %"$$resopt_14_642" = bitcast %TName_Option_Uint64* %"$$resopt_14_637" to %CName_Some_Uint64*
  %"$res_gep_643" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_14_642", i32 0, i32 1
  %"$res_load_644" = load %Uint64, %Uint64* %"$res_gep_643", align 8
  %res4 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_644", %Uint64* %res4, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$Some_641"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$Some_641"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %input_5 = alloca %Uint64, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %input_5, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  %"$execptr_load_660" = load i8*, i8** @_execptr, align 8
  %"$res_661" = load %Uint64, %Uint64* %res4, align 8
  %"$input__662" = load %Uint64, %Uint64* %input_5, align 8
  %"$eq_call_663" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_660", %Uint64 %"$res_661", %Uint64 %"$input__662")
  store %TName_Bool* %"$eq_call_663", %TName_Bool** %test_6, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_658"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %"$BoolUtils.andb_82" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_670" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_671" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_670", 0
  %"$BoolUtils.andb_envptr_672" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_670", 1
  %"$$test_12_673" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_674" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_671"(i8* %"$BoolUtils.andb_envptr_672", %TName_Bool* %"$$test_12_673")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_674", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_82", align 8
  %"$BoolUtils.andb_83" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_82_675" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_82", align 8
  %"$$BoolUtils.andb_82_fptr_676" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_82_675", 0
  %"$$BoolUtils.andb_82_envptr_677" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_82_675", 1
  %"$test__678" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_82_call_679" = call %TName_Bool* %"$$BoolUtils.andb_82_fptr_676"(i8* %"$$BoolUtils.andb_82_envptr_677", %TName_Bool* %"$test__678")
  store %TName_Bool* %"$$BoolUtils.andb_82_call_679", %TName_Bool** %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_680" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_83", align 8
  store %TName_Bool* %"$$BoolUtils.andb_83_680", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_636"

"$None_681":                                      ; preds = %"$have_gas_634"
  %"$$resopt_14_682" = bitcast %TName_Option_Uint64* %"$$resopt_14_637" to %CName_None_Uint64*
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$None_681"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$None_681"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %"$false_688" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_688", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_636"

"$empty_default_640":                             ; preds = %"$have_gas_634"
  br label %"$matchsucc_636"

"$matchsucc_636":                                 ; preds = %"$have_gas_686", %"$have_gas_668", %"$empty_default_640"
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %"$matchsucc_636"
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %"$matchsucc_636"
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint64, align 8
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_692"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_692"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_16", align 8
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_697"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_697"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Uint64*, align 8
  %"$execptr_load_704" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_16_705" = alloca %Uint64, align 8
  %"$$input_16_706" = load %Uint64, %Uint64* %"$input_16", align 8
  store %Uint64 %"$$input_16_706", %Uint64* %"$to_uint64_$input_16_705", align 8
  %"$$to_uint64_$input_16_705_707" = bitcast %Uint64* %"$to_uint64_$input_16_705" to i8*
  %"$to_uint64_call_708" = call i8* @_to_uint64(i8* %"$execptr_load_704", %_TyDescrTy_Typ* @"$TyDescr_Uint64_115", i8* %"$$to_uint64_$input_16_705_707")
  %"$to_uint64_709" = bitcast i8* %"$to_uint64_call_708" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_709", %TName_Option_Uint64** %"$resopt_17", align 8
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_702"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 2, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$have_gas_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 2
  store i64 %"$consume_719", i64* @_gasrem, align 8
  %"$$resopt_17_721" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_17", align 8
  %"$$resopt_17_tag_722" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_17_721", i32 0, i32 0
  %"$$resopt_17_tag_723" = load i8, i8* %"$$resopt_17_tag_722", align 1
  switch i8 %"$$resopt_17_tag_723", label %"$empty_default_724" [
    i8 0, label %"$Some_725"
    i8 1, label %"$None_765"
  ]

"$Some_725":                                      ; preds = %"$have_gas_718"
  %"$$resopt_17_726" = bitcast %TName_Option_Uint64* %"$$resopt_17_721" to %CName_Some_Uint64*
  %"$res_gep_727" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_17_726", i32 0, i32 1
  %"$res_load_728" = load %Uint64, %Uint64* %"$res_gep_727", align 8
  %res7 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_728", %Uint64* %res7, align 8
  %"$gasrem_729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_730" = icmp ugt i64 1, %"$gasrem_729"
  br i1 %"$gascmp_730", label %"$out_of_gas_731", label %"$have_gas_732"

"$out_of_gas_731":                                ; preds = %"$Some_725"
  call void @_out_of_gas()
  br label %"$have_gas_732"

"$have_gas_732":                                  ; preds = %"$out_of_gas_731", %"$Some_725"
  %"$consume_733" = sub i64 %"$gasrem_729", 1
  store i64 %"$consume_733", i64* @_gasrem, align 8
  %input_8 = alloca %Uint64, align 8
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$have_gas_732"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$have_gas_732"
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_8, align 8
  %"$gasrem_739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_740" = icmp ugt i64 1, %"$gasrem_739"
  br i1 %"$gascmp_740", label %"$out_of_gas_741", label %"$have_gas_742"

"$out_of_gas_741":                                ; preds = %"$have_gas_737"
  call void @_out_of_gas()
  br label %"$have_gas_742"

"$have_gas_742":                                  ; preds = %"$out_of_gas_741", %"$have_gas_737"
  %"$consume_743" = sub i64 %"$gasrem_739", 1
  store i64 %"$consume_743", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  %"$execptr_load_744" = load i8*, i8** @_execptr, align 8
  %"$res_745" = load %Uint64, %Uint64* %res7, align 8
  %"$input__746" = load %Uint64, %Uint64* %input_8, align 8
  %"$eq_call_747" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_744", %Uint64 %"$res_745", %Uint64 %"$input__746")
  store %TName_Bool* %"$eq_call_747", %TName_Bool** %test_9, align 8
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$have_gas_742"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$have_gas_742"
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %"$BoolUtils.andb_84" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_754" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_755" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_754", 0
  %"$BoolUtils.andb_envptr_756" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_754", 1
  %"$$test_15_757" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  %"$BoolUtils.andb_call_758" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_755"(i8* %"$BoolUtils.andb_envptr_756", %TName_Bool* %"$$test_15_757")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_758", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$BoolUtils.andb_85" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_84_759" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_fptr_760" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_759", 0
  %"$$BoolUtils.andb_84_envptr_761" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_759", 1
  %"$test__762" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_84_call_763" = call %TName_Bool* %"$$BoolUtils.andb_84_fptr_760"(i8* %"$$BoolUtils.andb_84_envptr_761", %TName_Bool* %"$test__762")
  store %TName_Bool* %"$$BoolUtils.andb_84_call_763", %TName_Bool** %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_764" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_85", align 8
  store %TName_Bool* %"$$BoolUtils.andb_85_764", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_720"

"$None_765":                                      ; preds = %"$have_gas_718"
  %"$$resopt_17_766" = bitcast %TName_Option_Uint64* %"$$resopt_17_721" to %CName_None_Uint64*
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$None_765"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$None_765"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$false_772" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_772", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_720"

"$empty_default_724":                             ; preds = %"$have_gas_718"
  br label %"$matchsucc_720"

"$matchsucc_720":                                 ; preds = %"$have_gas_770", %"$have_gas_752", %"$empty_default_724"
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$matchsucc_720"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$matchsucc_720"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$input_19" = alloca %Uint128, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_776"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_19", align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Uint64*, align 8
  %"$execptr_load_788" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_19_789" = alloca %Uint128, align 8
  %"$$input_19_790" = load %Uint128, %Uint128* %"$input_19", align 8
  store %Uint128 %"$$input_19_790", %Uint128* %"$to_uint64_$input_19_789", align 8
  %"$$to_uint64_$input_19_789_791" = bitcast %Uint128* %"$to_uint64_$input_19_789" to i8*
  %"$to_uint64_call_792" = call i8* @_to_uint64(i8* %"$execptr_load_788", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint64_$input_19_789_791")
  %"$to_uint64_793" = bitcast i8* %"$to_uint64_call_792" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_793", %TName_Option_Uint64** %"$resopt_20", align 8
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 1, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_786"
  %"$consume_798" = sub i64 %"$gasrem_794", 1
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 2, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_797"
  %"$consume_803" = sub i64 %"$gasrem_799", 2
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$$resopt_20_805" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_20", align 8
  %"$$resopt_20_tag_806" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_20_805", i32 0, i32 0
  %"$$resopt_20_tag_807" = load i8, i8* %"$$resopt_20_tag_806", align 1
  switch i8 %"$$resopt_20_tag_807", label %"$empty_default_808" [
    i8 0, label %"$Some_809"
    i8 1, label %"$None_849"
  ]

"$Some_809":                                      ; preds = %"$have_gas_802"
  %"$$resopt_20_810" = bitcast %TName_Option_Uint64* %"$$resopt_20_805" to %CName_Some_Uint64*
  %"$res_gep_811" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_20_810", i32 0, i32 1
  %"$res_load_812" = load %Uint64, %Uint64* %"$res_gep_811", align 8
  %res10 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_812", %Uint64* %res10, align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$Some_809"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$Some_809"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %input_11 = alloca %Uint64, align 8
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_11, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  %"$execptr_load_828" = load i8*, i8** @_execptr, align 8
  %"$res_829" = load %Uint64, %Uint64* %res10, align 8
  %"$input__830" = load %Uint64, %Uint64* %input_11, align 8
  %"$eq_call_831" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_828", %Uint64 %"$res_829", %Uint64 %"$input__830")
  store %TName_Bool* %"$eq_call_831", %TName_Bool** %test_12, align 8
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_826"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %"$BoolUtils.andb_86" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_838" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_839" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_838", 0
  %"$BoolUtils.andb_envptr_840" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_838", 1
  %"$$test_18_841" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_842" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_839"(i8* %"$BoolUtils.andb_envptr_840", %TName_Bool* %"$$test_18_841")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_842", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$BoolUtils.andb_87" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_86_843" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_fptr_844" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_843", 0
  %"$$BoolUtils.andb_86_envptr_845" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_843", 1
  %"$test__846" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_86_call_847" = call %TName_Bool* %"$$BoolUtils.andb_86_fptr_844"(i8* %"$$BoolUtils.andb_86_envptr_845", %TName_Bool* %"$test__846")
  store %TName_Bool* %"$$BoolUtils.andb_86_call_847", %TName_Bool** %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_848" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_87", align 8
  store %TName_Bool* %"$$BoolUtils.andb_87_848", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_804"

"$None_849":                                      ; preds = %"$have_gas_802"
  %"$$resopt_20_850" = bitcast %TName_Option_Uint64* %"$$resopt_20_805" to %CName_None_Uint64*
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %"$None_849"
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %"$None_849"
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem, align 8
  %"$false_856" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_856", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_804"

"$empty_default_808":                             ; preds = %"$have_gas_802"
  br label %"$matchsucc_804"

"$matchsucc_804":                                 ; preds = %"$have_gas_854", %"$have_gas_836", %"$empty_default_808"
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$matchsucc_804"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$matchsucc_804"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint128, align 8
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$have_gas_860"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551616 }, %Uint128* %"$input_22", align 8
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_865"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Uint64*, align 8
  %"$execptr_load_872" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_22_873" = alloca %Uint128, align 8
  %"$$input_22_874" = load %Uint128, %Uint128* %"$input_22", align 8
  store %Uint128 %"$$input_22_874", %Uint128* %"$to_uint64_$input_22_873", align 8
  %"$$to_uint64_$input_22_873_875" = bitcast %Uint128* %"$to_uint64_$input_22_873" to i8*
  %"$to_uint64_call_876" = call i8* @_to_uint64(i8* %"$execptr_load_872", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint64_$input_22_873_875")
  %"$to_uint64_877" = bitcast i8* %"$to_uint64_call_876" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_877", %TName_Option_Uint64** %"$resopt_23", align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_870"
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 2, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_881"
  %"$consume_887" = sub i64 %"$gasrem_883", 2
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$$resopt_23_889" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_23", align 8
  %"$$resopt_23_tag_890" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_23_889", i32 0, i32 0
  %"$$resopt_23_tag_891" = load i8, i8* %"$$resopt_23_tag_890", align 1
  switch i8 %"$$resopt_23_tag_891", label %"$empty_default_892" [
    i8 0, label %"$Some_893"
    i8 1, label %"$None_903"
  ]

"$Some_893":                                      ; preds = %"$have_gas_886"
  %"$$resopt_23_894" = bitcast %TName_Option_Uint64* %"$$resopt_23_889" to %CName_Some_Uint64*
  %"$$$resopt_23_70_gep_895" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_23_894", i32 0, i32 1
  %"$$$resopt_23_70_load_896" = load %Uint64, %Uint64* %"$$$resopt_23_70_gep_895", align 8
  %"$$resopt_23_70" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_23_70_load_896", %Uint64* %"$$resopt_23_70", align 8
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$Some_893"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$Some_893"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$false_902" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_902", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_888"

"$None_903":                                      ; preds = %"$have_gas_886"
  %"$$resopt_23_904" = bitcast %TName_Option_Uint64* %"$$resopt_23_889" to %CName_None_Uint64*
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$None_903"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$None_903"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  %"$$test_21_910" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  store %TName_Bool* %"$$test_21_910", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_888"

"$empty_default_892":                             ; preds = %"$have_gas_886"
  br label %"$matchsucc_888"

"$matchsucc_888":                                 ; preds = %"$have_gas_908", %"$have_gas_900", %"$empty_default_892"
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$matchsucc_888"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$matchsucc_888"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$input_25" = alloca %Uint256, align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551616 }, %Uint256* %"$input_25", align 8
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Uint64*, align 8
  %"$execptr_load_926" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_25_927" = alloca %Uint256, align 8
  %"$$input_25_928" = load %Uint256, %Uint256* %"$input_25", align 8
  store %Uint256 %"$$input_25_928", %Uint256* %"$to_uint64_$input_25_927", align 8
  %"$$to_uint64_$input_25_927_929" = bitcast %Uint256* %"$to_uint64_$input_25_927" to i8*
  %"$to_uint64_call_930" = call i8* @_to_uint64(i8* %"$execptr_load_926", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint64_$input_25_927_929")
  %"$to_uint64_931" = bitcast i8* %"$to_uint64_call_930" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_931", %TName_Option_Uint64** %"$resopt_26", align 8
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_924"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  %"$gasrem_937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_938" = icmp ugt i64 2, %"$gasrem_937"
  br i1 %"$gascmp_938", label %"$out_of_gas_939", label %"$have_gas_940"

"$out_of_gas_939":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_940"

"$have_gas_940":                                  ; preds = %"$out_of_gas_939", %"$have_gas_935"
  %"$consume_941" = sub i64 %"$gasrem_937", 2
  store i64 %"$consume_941", i64* @_gasrem, align 8
  %"$$resopt_26_943" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_26", align 8
  %"$$resopt_26_tag_944" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_26_943", i32 0, i32 0
  %"$$resopt_26_tag_945" = load i8, i8* %"$$resopt_26_tag_944", align 1
  switch i8 %"$$resopt_26_tag_945", label %"$empty_default_946" [
    i8 0, label %"$Some_947"
    i8 1, label %"$None_957"
  ]

"$Some_947":                                      ; preds = %"$have_gas_940"
  %"$$resopt_26_948" = bitcast %TName_Option_Uint64* %"$$resopt_26_943" to %CName_Some_Uint64*
  %"$$$resopt_26_71_gep_949" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_26_948", i32 0, i32 1
  %"$$$resopt_26_71_load_950" = load %Uint64, %Uint64* %"$$$resopt_26_71_gep_949", align 8
  %"$$resopt_26_71" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_26_71_load_950", %Uint64* %"$$resopt_26_71", align 8
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$Some_947"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$Some_947"
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$false_956" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_956", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_942"

"$None_957":                                      ; preds = %"$have_gas_940"
  %"$$resopt_26_958" = bitcast %TName_Option_Uint64* %"$$resopt_26_943" to %CName_None_Uint64*
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$None_957"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$None_957"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %"$$test_24_964" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  store %TName_Bool* %"$$test_24_964", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_942"

"$empty_default_946":                             ; preds = %"$have_gas_940"
  br label %"$matchsucc_942"

"$matchsucc_942":                                 ; preds = %"$have_gas_962", %"$have_gas_954", %"$empty_default_946"
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$matchsucc_942"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$matchsucc_942"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint128, align 8
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_968"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_28", align 8
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_973"
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Uint128*, align 8
  %"$execptr_load_980" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_28_981" = alloca %Uint128, align 8
  %"$$input_28_982" = load %Uint128, %Uint128* %"$input_28", align 8
  store %Uint128 %"$$input_28_982", %Uint128* %"$to_uint128_$input_28_981", align 8
  %"$$to_uint128_$input_28_981_983" = bitcast %Uint128* %"$to_uint128_$input_28_981" to i8*
  %"$to_uint128_call_984" = call i8* @_to_uint128(i8* %"$execptr_load_980", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint128_$input_28_981_983")
  %"$to_uint128_985" = bitcast i8* %"$to_uint128_call_984" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_985", %TName_Option_Uint128** %"$resopt_29", align 8
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
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 2, %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_989"
  %"$consume_995" = sub i64 %"$gasrem_991", 2
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$$resopt_29_997" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_29", align 8
  %"$$resopt_29_tag_998" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_29_997", i32 0, i32 0
  %"$$resopt_29_tag_999" = load i8, i8* %"$$resopt_29_tag_998", align 1
  switch i8 %"$$resopt_29_tag_999", label %"$empty_default_1000" [
    i8 0, label %"$Some_1001"
    i8 1, label %"$None_1041"
  ]

"$Some_1001":                                     ; preds = %"$have_gas_994"
  %"$$resopt_29_1002" = bitcast %TName_Option_Uint128* %"$$resopt_29_997" to %CName_Some_Uint128*
  %"$res_gep_1003" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_29_1002", i32 0, i32 1
  %"$res_load_1004" = load %Uint128, %Uint128* %"$res_gep_1003", align 8
  %res13 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1004", %Uint128* %res13, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$Some_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$Some_1001"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %input_14 = alloca %Uint128, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %input_14, align 8
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  %"$execptr_load_1020" = load i8*, i8** @_execptr, align 8
  %"$res_1021" = load %Uint128, %Uint128* %res13, align 8
  %"$input__1022" = load %Uint128, %Uint128* %input_14, align 8
  %"$eq_call_1023" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1020", %Uint128 %"$res_1021", %Uint128 %"$input__1022")
  store %TName_Bool* %"$eq_call_1023", %TName_Bool** %test_15, align 8
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 1, %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1018"
  %"$consume_1029" = sub i64 %"$gasrem_1025", 1
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %"$BoolUtils.andb_88" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1030" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1031" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1030", 0
  %"$BoolUtils.andb_envptr_1032" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1030", 1
  %"$$test_27_1033" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1034" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1031"(i8* %"$BoolUtils.andb_envptr_1032", %TName_Bool* %"$$test_27_1033")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1034", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$BoolUtils.andb_89" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_88_1035" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_fptr_1036" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_1035", 0
  %"$$BoolUtils.andb_88_envptr_1037" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_1035", 1
  %"$test__1038" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_88_call_1039" = call %TName_Bool* %"$$BoolUtils.andb_88_fptr_1036"(i8* %"$$BoolUtils.andb_88_envptr_1037", %TName_Bool* %"$test__1038")
  store %TName_Bool* %"$$BoolUtils.andb_88_call_1039", %TName_Bool** %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_1040" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_89", align 8
  store %TName_Bool* %"$$BoolUtils.andb_89_1040", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_996"

"$None_1041":                                     ; preds = %"$have_gas_994"
  %"$$resopt_29_1042" = bitcast %TName_Option_Uint128* %"$$resopt_29_997" to %CName_None_Uint128*
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$None_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$None_1041"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$false_1048" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1048", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_996"

"$empty_default_1000":                            ; preds = %"$have_gas_994"
  br label %"$matchsucc_996"

"$matchsucc_996":                                 ; preds = %"$have_gas_1046", %"$have_gas_1028", %"$empty_default_1000"
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$matchsucc_996"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$matchsucc_996"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint128, align 8
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1052"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$input_31", align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Uint128*, align 8
  %"$execptr_load_1064" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_31_1065" = alloca %Uint128, align 8
  %"$$input_31_1066" = load %Uint128, %Uint128* %"$input_31", align 8
  store %Uint128 %"$$input_31_1066", %Uint128* %"$to_uint128_$input_31_1065", align 8
  %"$$to_uint128_$input_31_1065_1067" = bitcast %Uint128* %"$to_uint128_$input_31_1065" to i8*
  %"$to_uint128_call_1068" = call i8* @_to_uint128(i8* %"$execptr_load_1064", %_TyDescrTy_Typ* @"$TyDescr_Uint128_119", i8* %"$$to_uint128_$input_31_1065_1067")
  %"$to_uint128_1069" = bitcast i8* %"$to_uint128_call_1068" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1069", %TName_Option_Uint128** %"$resopt_32", align 8
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1062"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 2, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1073"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 2
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %"$$resopt_32_1081" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_32", align 8
  %"$$resopt_32_tag_1082" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_32_1081", i32 0, i32 0
  %"$$resopt_32_tag_1083" = load i8, i8* %"$$resopt_32_tag_1082", align 1
  switch i8 %"$$resopt_32_tag_1083", label %"$empty_default_1084" [
    i8 0, label %"$Some_1085"
    i8 1, label %"$None_1125"
  ]

"$Some_1085":                                     ; preds = %"$have_gas_1078"
  %"$$resopt_32_1086" = bitcast %TName_Option_Uint128* %"$$resopt_32_1081" to %CName_Some_Uint128*
  %"$res_gep_1087" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_32_1086", i32 0, i32 1
  %"$res_load_1088" = load %Uint128, %Uint128* %"$res_gep_1087", align 8
  %res16 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1088", %Uint128* %res16, align 8
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$Some_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$Some_1085"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  %input_17 = alloca %Uint128, align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1092"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %input_17, align 8
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  %"$execptr_load_1104" = load i8*, i8** @_execptr, align 8
  %"$res_1105" = load %Uint128, %Uint128* %res16, align 8
  %"$input__1106" = load %Uint128, %Uint128* %input_17, align 8
  %"$eq_call_1107" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1104", %Uint128 %"$res_1105", %Uint128 %"$input__1106")
  store %TName_Bool* %"$eq_call_1107", %TName_Bool** %test_18, align 8
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1102"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %"$BoolUtils.andb_90" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1114" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1115" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1114", 0
  %"$BoolUtils.andb_envptr_1116" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1114", 1
  %"$$test_30_1117" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1118" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1115"(i8* %"$BoolUtils.andb_envptr_1116", %TName_Bool* %"$$test_30_1117")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1118", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$BoolUtils.andb_91" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_90_1119" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_fptr_1120" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_1119", 0
  %"$$BoolUtils.andb_90_envptr_1121" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_1119", 1
  %"$test__1122" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_90_call_1123" = call %TName_Bool* %"$$BoolUtils.andb_90_fptr_1120"(i8* %"$$BoolUtils.andb_90_envptr_1121", %TName_Bool* %"$test__1122")
  store %TName_Bool* %"$$BoolUtils.andb_90_call_1123", %TName_Bool** %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_1124" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_91", align 8
  store %TName_Bool* %"$$BoolUtils.andb_91_1124", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1080"

"$None_1125":                                     ; preds = %"$have_gas_1078"
  %"$$resopt_32_1126" = bitcast %TName_Option_Uint128* %"$$resopt_32_1081" to %CName_None_Uint128*
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$None_1125"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$None_1125"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$false_1132" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1132", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1080"

"$empty_default_1084":                            ; preds = %"$have_gas_1078"
  br label %"$matchsucc_1080"

"$matchsucc_1080":                                ; preds = %"$have_gas_1130", %"$have_gas_1112", %"$empty_default_1084"
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 1, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %"$matchsucc_1080"
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %"$matchsucc_1080"
  %"$consume_1137" = sub i64 %"$gasrem_1133", 1
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %"$input_34" = alloca %Uint256, align 8
  %"$gasrem_1138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1139" = icmp ugt i64 1, %"$gasrem_1138"
  br i1 %"$gascmp_1139", label %"$out_of_gas_1140", label %"$have_gas_1141"

"$out_of_gas_1140":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1141"

"$have_gas_1141":                                 ; preds = %"$out_of_gas_1140", %"$have_gas_1136"
  %"$consume_1142" = sub i64 %"$gasrem_1138", 1
  store i64 %"$consume_1142", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_34", align 8
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 1, %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1141"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1141"
  %"$consume_1147" = sub i64 %"$gasrem_1143", 1
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Uint128*, align 8
  %"$execptr_load_1148" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_34_1149" = alloca %Uint256, align 8
  %"$$input_34_1150" = load %Uint256, %Uint256* %"$input_34", align 8
  store %Uint256 %"$$input_34_1150", %Uint256* %"$to_uint128_$input_34_1149", align 8
  %"$$to_uint128_$input_34_1149_1151" = bitcast %Uint256* %"$to_uint128_$input_34_1149" to i8*
  %"$to_uint128_call_1152" = call i8* @_to_uint128(i8* %"$execptr_load_1148", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint128_$input_34_1149_1151")
  %"$to_uint128_1153" = bitcast i8* %"$to_uint128_call_1152" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1153", %TName_Option_Uint128** %"$resopt_35", align 8
  %"$gasrem_1154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1155" = icmp ugt i64 1, %"$gasrem_1154"
  br i1 %"$gascmp_1155", label %"$out_of_gas_1156", label %"$have_gas_1157"

"$out_of_gas_1156":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1157"

"$have_gas_1157":                                 ; preds = %"$out_of_gas_1156", %"$have_gas_1146"
  %"$consume_1158" = sub i64 %"$gasrem_1154", 1
  store i64 %"$consume_1158", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 2, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1157"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1157"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 2
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  %"$$resopt_35_1165" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_35", align 8
  %"$$resopt_35_tag_1166" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_35_1165", i32 0, i32 0
  %"$$resopt_35_tag_1167" = load i8, i8* %"$$resopt_35_tag_1166", align 1
  switch i8 %"$$resopt_35_tag_1167", label %"$empty_default_1168" [
    i8 0, label %"$Some_1169"
    i8 1, label %"$None_1179"
  ]

"$Some_1169":                                     ; preds = %"$have_gas_1162"
  %"$$resopt_35_1170" = bitcast %TName_Option_Uint128* %"$$resopt_35_1165" to %CName_Some_Uint128*
  %"$$$resopt_35_72_gep_1171" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_35_1170", i32 0, i32 1
  %"$$$resopt_35_72_load_1172" = load %Uint128, %Uint128* %"$$$resopt_35_72_gep_1171", align 8
  %"$$resopt_35_72" = alloca %Uint128, align 8
  store %Uint128 %"$$$resopt_35_72_load_1172", %Uint128* %"$$resopt_35_72", align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$Some_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$Some_1169"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$false_1178" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1178", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1164"

"$None_1179":                                     ; preds = %"$have_gas_1162"
  %"$$resopt_35_1180" = bitcast %TName_Option_Uint128* %"$$resopt_35_1165" to %CName_None_Uint128*
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 1, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$None_1179"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$None_1179"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 1
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$$test_33_1186" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  store %TName_Bool* %"$$test_33_1186", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1164"

"$empty_default_1168":                            ; preds = %"$have_gas_1162"
  br label %"$matchsucc_1164"

"$matchsucc_1164":                                ; preds = %"$have_gas_1184", %"$have_gas_1176", %"$empty_default_1168"
  %"$gasrem_1187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1188" = icmp ugt i64 1, %"$gasrem_1187"
  br i1 %"$gascmp_1188", label %"$out_of_gas_1189", label %"$have_gas_1190"

"$out_of_gas_1189":                               ; preds = %"$matchsucc_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1190"

"$have_gas_1190":                                 ; preds = %"$out_of_gas_1189", %"$matchsucc_1164"
  %"$consume_1191" = sub i64 %"$gasrem_1187", 1
  store i64 %"$consume_1191", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint256, align 8
  %"$gasrem_1192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1193" = icmp ugt i64 1, %"$gasrem_1192"
  br i1 %"$gascmp_1193", label %"$out_of_gas_1194", label %"$have_gas_1195"

"$out_of_gas_1194":                               ; preds = %"$have_gas_1190"
  call void @_out_of_gas()
  br label %"$have_gas_1195"

"$have_gas_1195":                                 ; preds = %"$out_of_gas_1194", %"$have_gas_1190"
  %"$consume_1196" = sub i64 %"$gasrem_1192", 1
  store i64 %"$consume_1196", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_37", align 8
  %"$gasrem_1197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1198" = icmp ugt i64 1, %"$gasrem_1197"
  br i1 %"$gascmp_1198", label %"$out_of_gas_1199", label %"$have_gas_1200"

"$out_of_gas_1199":                               ; preds = %"$have_gas_1195"
  call void @_out_of_gas()
  br label %"$have_gas_1200"

"$have_gas_1200":                                 ; preds = %"$out_of_gas_1199", %"$have_gas_1195"
  %"$consume_1201" = sub i64 %"$gasrem_1197", 1
  store i64 %"$consume_1201", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Uint256*, align 8
  %"$execptr_load_1202" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_37_1203" = alloca %Uint256, align 8
  %"$$input_37_1204" = load %Uint256, %Uint256* %"$input_37", align 8
  store %Uint256 %"$$input_37_1204", %Uint256* %"$to_uint256_$input_37_1203", align 8
  %"$$to_uint256_$input_37_1203_1205" = bitcast %Uint256* %"$to_uint256_$input_37_1203" to i8*
  %"$to_uint256_call_1206" = call i8* @_to_uint256(i8* %"$execptr_load_1202", %_TyDescrTy_Typ* @"$TyDescr_Uint256_123", i8* %"$$to_uint256_$input_37_1203_1205")
  %"$to_uint256_1207" = bitcast i8* %"$to_uint256_call_1206" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1207", %TName_Option_Uint256** %"$resopt_38", align 8
  %"$gasrem_1208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1209" = icmp ugt i64 1, %"$gasrem_1208"
  br i1 %"$gascmp_1209", label %"$out_of_gas_1210", label %"$have_gas_1211"

"$out_of_gas_1210":                               ; preds = %"$have_gas_1200"
  call void @_out_of_gas()
  br label %"$have_gas_1211"

"$have_gas_1211":                                 ; preds = %"$out_of_gas_1210", %"$have_gas_1200"
  %"$consume_1212" = sub i64 %"$gasrem_1208", 1
  store i64 %"$consume_1212", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  %"$gasrem_1213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1214" = icmp ugt i64 2, %"$gasrem_1213"
  br i1 %"$gascmp_1214", label %"$out_of_gas_1215", label %"$have_gas_1216"

"$out_of_gas_1215":                               ; preds = %"$have_gas_1211"
  call void @_out_of_gas()
  br label %"$have_gas_1216"

"$have_gas_1216":                                 ; preds = %"$out_of_gas_1215", %"$have_gas_1211"
  %"$consume_1217" = sub i64 %"$gasrem_1213", 2
  store i64 %"$consume_1217", i64* @_gasrem, align 8
  %"$$resopt_38_1219" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1220" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_38_1219", i32 0, i32 0
  %"$$resopt_38_tag_1221" = load i8, i8* %"$$resopt_38_tag_1220", align 1
  switch i8 %"$$resopt_38_tag_1221", label %"$empty_default_1222" [
    i8 0, label %"$Some_1223"
    i8 1, label %"$None_1265"
  ]

"$Some_1223":                                     ; preds = %"$have_gas_1216"
  %"$$resopt_38_1224" = bitcast %TName_Option_Uint256* %"$$resopt_38_1219" to %CName_Some_Uint256*
  %"$res_gep_1225" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_38_1224", i32 0, i32 1
  %"$res_load_1226" = load %Uint256, %Uint256* %"$res_gep_1225", align 8
  %res19 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1226", %Uint256* %res19, align 8
  %"$gasrem_1227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1228" = icmp ugt i64 1, %"$gasrem_1227"
  br i1 %"$gascmp_1228", label %"$out_of_gas_1229", label %"$have_gas_1230"

"$out_of_gas_1229":                               ; preds = %"$Some_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1230"

"$have_gas_1230":                                 ; preds = %"$out_of_gas_1229", %"$Some_1223"
  %"$consume_1231" = sub i64 %"$gasrem_1227", 1
  store i64 %"$consume_1231", i64* @_gasrem, align 8
  %input_20 = alloca %Uint256, align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1230"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1230"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %input_20, align 8
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 1, %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1235"
  %"$consume_1241" = sub i64 %"$gasrem_1237", 1
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  %"$execptr_load_1242" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1243" = alloca %Uint256, align 8
  %"$res_1244" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res_1244", %Uint256* %"$eq_res_1243", align 8
  %"$eq_input__1245" = alloca %Uint256, align 8
  %"$input__1246" = load %Uint256, %Uint256* %input_20, align 8
  store %Uint256 %"$input__1246", %Uint256* %"$eq_input__1245", align 8
  %"$eq_call_1247" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1242", %Uint256* %"$eq_res_1243", %Uint256* %"$eq_input__1245")
  store %TName_Bool* %"$eq_call_1247", %TName_Bool** %test_21, align 8
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 1, %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1240"
  %"$consume_1253" = sub i64 %"$gasrem_1249", 1
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  %"$BoolUtils.andb_92" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1254" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1255" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1254", 0
  %"$BoolUtils.andb_envptr_1256" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1254", 1
  %"$$test_36_1257" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1258" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1255"(i8* %"$BoolUtils.andb_envptr_1256", %TName_Bool* %"$$test_36_1257")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1258", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$BoolUtils.andb_93" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_92_1259" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_fptr_1260" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_1259", 0
  %"$$BoolUtils.andb_92_envptr_1261" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_1259", 1
  %"$test__1262" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_92_call_1263" = call %TName_Bool* %"$$BoolUtils.andb_92_fptr_1260"(i8* %"$$BoolUtils.andb_92_envptr_1261", %TName_Bool* %"$test__1262")
  store %TName_Bool* %"$$BoolUtils.andb_92_call_1263", %TName_Bool** %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_1264" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_93", align 8
  store %TName_Bool* %"$$BoolUtils.andb_93_1264", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1218"

"$None_1265":                                     ; preds = %"$have_gas_1216"
  %"$$resopt_38_1266" = bitcast %TName_Option_Uint256* %"$$resopt_38_1219" to %CName_None_Uint256*
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$None_1265"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$None_1265"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %"$false_1272" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1272", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1218"

"$empty_default_1222":                            ; preds = %"$have_gas_1216"
  br label %"$matchsucc_1218"

"$matchsucc_1218":                                ; preds = %"$have_gas_1270", %"$have_gas_1252", %"$empty_default_1222"
  %"$gasrem_1273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1274" = icmp ugt i64 1, %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$matchsucc_1218"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$matchsucc_1218"
  %"$consume_1277" = sub i64 %"$gasrem_1273", 1
  store i64 %"$consume_1277", i64* @_gasrem, align 8
  %"$input_40" = alloca %Uint32, align 8
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1276"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  store %Uint32 { i32 22 }, %Uint32* %"$input_40", align 4
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1281"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Uint256*, align 8
  %"$execptr_load_1288" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_40_1289" = alloca %Uint32, align 8
  %"$$input_40_1290" = load %Uint32, %Uint32* %"$input_40", align 4
  store %Uint32 %"$$input_40_1290", %Uint32* %"$to_uint256_$input_40_1289", align 4
  %"$$to_uint256_$input_40_1289_1291" = bitcast %Uint32* %"$to_uint256_$input_40_1289" to i8*
  %"$to_uint256_call_1292" = call i8* @_to_uint256(i8* %"$execptr_load_1288", %_TyDescrTy_Typ* @"$TyDescr_Uint32_111", i8* %"$$to_uint256_$input_40_1289_1291")
  %"$to_uint256_1293" = bitcast i8* %"$to_uint256_call_1292" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1293", %TName_Option_Uint256** %"$resopt_41", align 8
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 1, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1286"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1286"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 1
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 2, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1297"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 2
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %"$$resopt_41_1305" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1306" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_41_1305", i32 0, i32 0
  %"$$resopt_41_tag_1307" = load i8, i8* %"$$resopt_41_tag_1306", align 1
  switch i8 %"$$resopt_41_tag_1307", label %"$empty_default_1308" [
    i8 0, label %"$Some_1309"
    i8 1, label %"$None_1351"
  ]

"$Some_1309":                                     ; preds = %"$have_gas_1302"
  %"$$resopt_41_1310" = bitcast %TName_Option_Uint256* %"$$resopt_41_1305" to %CName_Some_Uint256*
  %"$res_gep_1311" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_41_1310", i32 0, i32 1
  %"$res_load_1312" = load %Uint256, %Uint256* %"$res_gep_1311", align 8
  %res22 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1312", %Uint256* %res22, align 8
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 1, %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$Some_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$Some_1309"
  %"$consume_1317" = sub i64 %"$gasrem_1313", 1
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %input_23 = alloca %Uint256, align 8
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1316"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1316"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  store %Uint256 { i256 22 }, %Uint256* %input_23, align 8
  %"$gasrem_1323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1324" = icmp ugt i64 1, %"$gasrem_1323"
  br i1 %"$gascmp_1324", label %"$out_of_gas_1325", label %"$have_gas_1326"

"$out_of_gas_1325":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1326"

"$have_gas_1326":                                 ; preds = %"$out_of_gas_1325", %"$have_gas_1321"
  %"$consume_1327" = sub i64 %"$gasrem_1323", 1
  store i64 %"$consume_1327", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  %"$execptr_load_1328" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1329" = alloca %Uint256, align 8
  %"$res_1330" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res_1330", %Uint256* %"$eq_res_1329", align 8
  %"$eq_input__1331" = alloca %Uint256, align 8
  %"$input__1332" = load %Uint256, %Uint256* %input_23, align 8
  store %Uint256 %"$input__1332", %Uint256* %"$eq_input__1331", align 8
  %"$eq_call_1333" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1328", %Uint256* %"$eq_res_1329", %Uint256* %"$eq_input__1331")
  store %TName_Bool* %"$eq_call_1333", %TName_Bool** %test_24, align 8
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1326"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1326"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$BoolUtils.andb_94" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1340" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1341" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1340", 0
  %"$BoolUtils.andb_envptr_1342" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1340", 1
  %"$$test_39_1343" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1344" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1341"(i8* %"$BoolUtils.andb_envptr_1342", %TName_Bool* %"$$test_39_1343")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1344", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$BoolUtils.andb_95" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_94_1345" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_fptr_1346" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1345", 0
  %"$$BoolUtils.andb_94_envptr_1347" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1345", 1
  %"$test__1348" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_94_call_1349" = call %TName_Bool* %"$$BoolUtils.andb_94_fptr_1346"(i8* %"$$BoolUtils.andb_94_envptr_1347", %TName_Bool* %"$test__1348")
  store %TName_Bool* %"$$BoolUtils.andb_94_call_1349", %TName_Bool** %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_1350" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_95", align 8
  store %TName_Bool* %"$$BoolUtils.andb_95_1350", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1304"

"$None_1351":                                     ; preds = %"$have_gas_1302"
  %"$$resopt_41_1352" = bitcast %TName_Option_Uint256* %"$$resopt_41_1305" to %CName_None_Uint256*
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$None_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$None_1351"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$false_1358" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1358", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1304"

"$empty_default_1308":                            ; preds = %"$have_gas_1302"
  br label %"$matchsucc_1304"

"$matchsucc_1304":                                ; preds = %"$have_gas_1356", %"$have_gas_1338", %"$empty_default_1308"
  %"$gasrem_1359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1360" = icmp ugt i64 1, %"$gasrem_1359"
  br i1 %"$gascmp_1360", label %"$out_of_gas_1361", label %"$have_gas_1362"

"$out_of_gas_1361":                               ; preds = %"$matchsucc_1304"
  call void @_out_of_gas()
  br label %"$have_gas_1362"

"$have_gas_1362":                                 ; preds = %"$out_of_gas_1361", %"$matchsucc_1304"
  %"$consume_1363" = sub i64 %"$gasrem_1359", 1
  store i64 %"$consume_1363", i64* @_gasrem, align 8
  %"$input_43" = alloca %Int32, align 8
  %"$gasrem_1364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1365" = icmp ugt i64 1, %"$gasrem_1364"
  br i1 %"$gascmp_1365", label %"$out_of_gas_1366", label %"$have_gas_1367"

"$out_of_gas_1366":                               ; preds = %"$have_gas_1362"
  call void @_out_of_gas()
  br label %"$have_gas_1367"

"$have_gas_1367":                                 ; preds = %"$out_of_gas_1366", %"$have_gas_1362"
  %"$consume_1368" = sub i64 %"$gasrem_1364", 1
  store i64 %"$consume_1368", i64* @_gasrem, align 8
  store %Int32 { i32 2147483647 }, %Int32* %"$input_43", align 4
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 1, %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1367"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1367"
  %"$consume_1373" = sub i64 %"$gasrem_1369", 1
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_1374" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_43_1375" = alloca %Int32, align 8
  %"$$input_43_1376" = load %Int32, %Int32* %"$input_43", align 4
  store %Int32 %"$$input_43_1376", %Int32* %"$to_uint32_$input_43_1375", align 4
  %"$$to_uint32_$input_43_1375_1377" = bitcast %Int32* %"$to_uint32_$input_43_1375" to i8*
  %"$to_uint32_call_1378" = call i8* @_to_uint32(i8* %"$execptr_load_1374", %_TyDescrTy_Typ* @"$TyDescr_Int32_109", i8* %"$$to_uint32_$input_43_1375_1377")
  %"$to_uint32_1379" = bitcast i8* %"$to_uint32_call_1378" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1379", %TName_Option_Uint32** %"$resopt_44", align 8
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1372"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 2, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 2
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %"$$resopt_44_1391" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_44", align 8
  %"$$resopt_44_tag_1392" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_44_1391", i32 0, i32 0
  %"$$resopt_44_tag_1393" = load i8, i8* %"$$resopt_44_tag_1392", align 1
  switch i8 %"$$resopt_44_tag_1393", label %"$empty_default_1394" [
    i8 0, label %"$Some_1395"
    i8 1, label %"$None_1435"
  ]

"$Some_1395":                                     ; preds = %"$have_gas_1388"
  %"$$resopt_44_1396" = bitcast %TName_Option_Uint32* %"$$resopt_44_1391" to %CName_Some_Uint32*
  %"$res_gep_1397" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_44_1396", i32 0, i32 1
  %"$res_load_1398" = load %Uint32, %Uint32* %"$res_gep_1397", align 4
  %res25 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_1398", %Uint32* %res25, align 4
  %"$gasrem_1399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1400" = icmp ugt i64 1, %"$gasrem_1399"
  br i1 %"$gascmp_1400", label %"$out_of_gas_1401", label %"$have_gas_1402"

"$out_of_gas_1401":                               ; preds = %"$Some_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1402"

"$have_gas_1402":                                 ; preds = %"$out_of_gas_1401", %"$Some_1395"
  %"$consume_1403" = sub i64 %"$gasrem_1399", 1
  store i64 %"$consume_1403", i64* @_gasrem, align 8
  %input_26 = alloca %Uint32, align 8
  %"$gasrem_1404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1405" = icmp ugt i64 1, %"$gasrem_1404"
  br i1 %"$gascmp_1405", label %"$out_of_gas_1406", label %"$have_gas_1407"

"$out_of_gas_1406":                               ; preds = %"$have_gas_1402"
  call void @_out_of_gas()
  br label %"$have_gas_1407"

"$have_gas_1407":                                 ; preds = %"$out_of_gas_1406", %"$have_gas_1402"
  %"$consume_1408" = sub i64 %"$gasrem_1404", 1
  store i64 %"$consume_1408", i64* @_gasrem, align 8
  store %Uint32 { i32 2147483647 }, %Uint32* %input_26, align 4
  %"$gasrem_1409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1410" = icmp ugt i64 1, %"$gasrem_1409"
  br i1 %"$gascmp_1410", label %"$out_of_gas_1411", label %"$have_gas_1412"

"$out_of_gas_1411":                               ; preds = %"$have_gas_1407"
  call void @_out_of_gas()
  br label %"$have_gas_1412"

"$have_gas_1412":                                 ; preds = %"$out_of_gas_1411", %"$have_gas_1407"
  %"$consume_1413" = sub i64 %"$gasrem_1409", 1
  store i64 %"$consume_1413", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  %"$execptr_load_1414" = load i8*, i8** @_execptr, align 8
  %"$res_1415" = load %Uint32, %Uint32* %res25, align 4
  %"$input__1416" = load %Uint32, %Uint32* %input_26, align 4
  %"$eq_call_1417" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1414", %Uint32 %"$res_1415", %Uint32 %"$input__1416")
  store %TName_Bool* %"$eq_call_1417", %TName_Bool** %test_27, align 8
  %"$gasrem_1419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1420" = icmp ugt i64 1, %"$gasrem_1419"
  br i1 %"$gascmp_1420", label %"$out_of_gas_1421", label %"$have_gas_1422"

"$out_of_gas_1421":                               ; preds = %"$have_gas_1412"
  call void @_out_of_gas()
  br label %"$have_gas_1422"

"$have_gas_1422":                                 ; preds = %"$out_of_gas_1421", %"$have_gas_1412"
  %"$consume_1423" = sub i64 %"$gasrem_1419", 1
  store i64 %"$consume_1423", i64* @_gasrem, align 8
  %"$BoolUtils.andb_96" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1424" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1425" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1424", 0
  %"$BoolUtils.andb_envptr_1426" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1424", 1
  %"$$test_42_1427" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1428" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1425"(i8* %"$BoolUtils.andb_envptr_1426", %TName_Bool* %"$$test_42_1427")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1428", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$BoolUtils.andb_97" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_96_1429" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_fptr_1430" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1429", 0
  %"$$BoolUtils.andb_96_envptr_1431" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1429", 1
  %"$test__1432" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_96_call_1433" = call %TName_Bool* %"$$BoolUtils.andb_96_fptr_1430"(i8* %"$$BoolUtils.andb_96_envptr_1431", %TName_Bool* %"$test__1432")
  store %TName_Bool* %"$$BoolUtils.andb_96_call_1433", %TName_Bool** %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_1434" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_97", align 8
  store %TName_Bool* %"$$BoolUtils.andb_97_1434", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1390"

"$None_1435":                                     ; preds = %"$have_gas_1388"
  %"$$resopt_44_1436" = bitcast %TName_Option_Uint32* %"$$resopt_44_1391" to %CName_None_Uint32*
  %"$gasrem_1437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1438" = icmp ugt i64 1, %"$gasrem_1437"
  br i1 %"$gascmp_1438", label %"$out_of_gas_1439", label %"$have_gas_1440"

"$out_of_gas_1439":                               ; preds = %"$None_1435"
  call void @_out_of_gas()
  br label %"$have_gas_1440"

"$have_gas_1440":                                 ; preds = %"$out_of_gas_1439", %"$None_1435"
  %"$consume_1441" = sub i64 %"$gasrem_1437", 1
  store i64 %"$consume_1441", i64* @_gasrem, align 8
  %"$false_1442" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1442", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1390"

"$empty_default_1394":                            ; preds = %"$have_gas_1388"
  br label %"$matchsucc_1390"

"$matchsucc_1390":                                ; preds = %"$have_gas_1440", %"$have_gas_1422", %"$empty_default_1394"
  %"$gasrem_1443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1444" = icmp ugt i64 1, %"$gasrem_1443"
  br i1 %"$gascmp_1444", label %"$out_of_gas_1445", label %"$have_gas_1446"

"$out_of_gas_1445":                               ; preds = %"$matchsucc_1390"
  call void @_out_of_gas()
  br label %"$have_gas_1446"

"$have_gas_1446":                                 ; preds = %"$out_of_gas_1445", %"$matchsucc_1390"
  %"$consume_1447" = sub i64 %"$gasrem_1443", 1
  store i64 %"$consume_1447", i64* @_gasrem, align 8
  %"$input_46" = alloca %Int32, align 8
  %"$gasrem_1448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1449" = icmp ugt i64 1, %"$gasrem_1448"
  br i1 %"$gascmp_1449", label %"$out_of_gas_1450", label %"$have_gas_1451"

"$out_of_gas_1450":                               ; preds = %"$have_gas_1446"
  call void @_out_of_gas()
  br label %"$have_gas_1451"

"$have_gas_1451":                                 ; preds = %"$out_of_gas_1450", %"$have_gas_1446"
  %"$consume_1452" = sub i64 %"$gasrem_1448", 1
  store i64 %"$consume_1452", i64* @_gasrem, align 8
  store %Int32 { i32 -2147483648 }, %Int32* %"$input_46", align 4
  %"$gasrem_1453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1454" = icmp ugt i64 1, %"$gasrem_1453"
  br i1 %"$gascmp_1454", label %"$out_of_gas_1455", label %"$have_gas_1456"

"$out_of_gas_1455":                               ; preds = %"$have_gas_1451"
  call void @_out_of_gas()
  br label %"$have_gas_1456"

"$have_gas_1456":                                 ; preds = %"$out_of_gas_1455", %"$have_gas_1451"
  %"$consume_1457" = sub i64 %"$gasrem_1453", 1
  store i64 %"$consume_1457", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_1458" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_46_1459" = alloca %Int32, align 8
  %"$$input_46_1460" = load %Int32, %Int32* %"$input_46", align 4
  store %Int32 %"$$input_46_1460", %Int32* %"$to_uint32_$input_46_1459", align 4
  %"$$to_uint32_$input_46_1459_1461" = bitcast %Int32* %"$to_uint32_$input_46_1459" to i8*
  %"$to_uint32_call_1462" = call i8* @_to_uint32(i8* %"$execptr_load_1458", %_TyDescrTy_Typ* @"$TyDescr_Int32_109", i8* %"$$to_uint32_$input_46_1459_1461")
  %"$to_uint32_1463" = bitcast i8* %"$to_uint32_call_1462" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1463", %TName_Option_Uint32** %"$resopt_47", align 8
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1456"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1456"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_1469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1470" = icmp ugt i64 2, %"$gasrem_1469"
  br i1 %"$gascmp_1470", label %"$out_of_gas_1471", label %"$have_gas_1472"

"$out_of_gas_1471":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1472"

"$have_gas_1472":                                 ; preds = %"$out_of_gas_1471", %"$have_gas_1467"
  %"$consume_1473" = sub i64 %"$gasrem_1469", 2
  store i64 %"$consume_1473", i64* @_gasrem, align 8
  %"$$resopt_47_1475" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_47", align 8
  %"$$resopt_47_tag_1476" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_47_1475", i32 0, i32 0
  %"$$resopt_47_tag_1477" = load i8, i8* %"$$resopt_47_tag_1476", align 1
  switch i8 %"$$resopt_47_tag_1477", label %"$empty_default_1478" [
    i8 0, label %"$Some_1479"
    i8 1, label %"$None_1489"
  ]

"$Some_1479":                                     ; preds = %"$have_gas_1472"
  %"$$resopt_47_1480" = bitcast %TName_Option_Uint32* %"$$resopt_47_1475" to %CName_Some_Uint32*
  %"$$$resopt_47_73_gep_1481" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_47_1480", i32 0, i32 1
  %"$$$resopt_47_73_load_1482" = load %Uint32, %Uint32* %"$$$resopt_47_73_gep_1481", align 4
  %"$$resopt_47_73" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_47_73_load_1482", %Uint32* %"$$resopt_47_73", align 4
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$Some_1479"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$Some_1479"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$false_1488" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1488", %TName_Bool** %"$test_48", align 8
  br label %"$matchsucc_1474"

"$None_1489":                                     ; preds = %"$have_gas_1472"
  %"$$resopt_47_1490" = bitcast %TName_Option_Uint32* %"$$resopt_47_1475" to %CName_None_Uint32*
  %"$gasrem_1491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1492" = icmp ugt i64 1, %"$gasrem_1491"
  br i1 %"$gascmp_1492", label %"$out_of_gas_1493", label %"$have_gas_1494"

"$out_of_gas_1493":                               ; preds = %"$None_1489"
  call void @_out_of_gas()
  br label %"$have_gas_1494"

"$have_gas_1494":                                 ; preds = %"$out_of_gas_1493", %"$None_1489"
  %"$consume_1495" = sub i64 %"$gasrem_1491", 1
  store i64 %"$consume_1495", i64* @_gasrem, align 8
  %"$$test_45_1496" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  store %TName_Bool* %"$$test_45_1496", %TName_Bool** %"$test_48", align 8
  br label %"$matchsucc_1474"

"$empty_default_1478":                            ; preds = %"$have_gas_1472"
  br label %"$matchsucc_1474"

"$matchsucc_1474":                                ; preds = %"$have_gas_1494", %"$have_gas_1486", %"$empty_default_1478"
  %"$gasrem_1497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1498" = icmp ugt i64 1, %"$gasrem_1497"
  br i1 %"$gascmp_1498", label %"$out_of_gas_1499", label %"$have_gas_1500"

"$out_of_gas_1499":                               ; preds = %"$matchsucc_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1500"

"$have_gas_1500":                                 ; preds = %"$out_of_gas_1499", %"$matchsucc_1474"
  %"$consume_1501" = sub i64 %"$gasrem_1497", 1
  store i64 %"$consume_1501", i64* @_gasrem, align 8
  %"$input_49" = alloca %String, align 8
  %"$gasrem_1502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1503" = icmp ugt i64 1, %"$gasrem_1502"
  br i1 %"$gascmp_1503", label %"$out_of_gas_1504", label %"$have_gas_1505"

"$out_of_gas_1504":                               ; preds = %"$have_gas_1500"
  call void @_out_of_gas()
  br label %"$have_gas_1505"

"$have_gas_1505":                                 ; preds = %"$out_of_gas_1504", %"$have_gas_1500"
  %"$consume_1506" = sub i64 %"$gasrem_1502", 1
  store i64 %"$consume_1506", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1507", i32 0, i32 0), i32 11 }, %String* %"$input_49", align 8
  %"$gasrem_1508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1509" = icmp ugt i64 1, %"$gasrem_1508"
  br i1 %"$gascmp_1509", label %"$out_of_gas_1510", label %"$have_gas_1511"

"$out_of_gas_1510":                               ; preds = %"$have_gas_1505"
  call void @_out_of_gas()
  br label %"$have_gas_1511"

"$have_gas_1511":                                 ; preds = %"$out_of_gas_1510", %"$have_gas_1505"
  %"$consume_1512" = sub i64 %"$gasrem_1508", 1
  store i64 %"$consume_1512", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Uint32*, align 8
  %"$execptr_load_1513" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_49_1514" = alloca %String, align 8
  %"$$input_49_1515" = load %String, %String* %"$input_49", align 8
  store %String %"$$input_49_1515", %String* %"$to_uint32_$input_49_1514", align 8
  %"$$to_uint32_$input_49_1514_1516" = bitcast %String* %"$to_uint32_$input_49_1514" to i8*
  %"$to_uint32_call_1517" = call i8* @_to_uint32(i8* %"$execptr_load_1513", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint32_$input_49_1514_1516")
  %"$to_uint32_1518" = bitcast i8* %"$to_uint32_call_1517" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1518", %TName_Option_Uint32** %"$resopt_50", align 8
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 1, %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$have_gas_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$have_gas_1511"
  %"$consume_1523" = sub i64 %"$gasrem_1519", 1
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 2, %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$have_gas_1522"
  %"$consume_1528" = sub i64 %"$gasrem_1524", 2
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  %"$$resopt_50_1530" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_50", align 8
  %"$$resopt_50_tag_1531" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_50_1530", i32 0, i32 0
  %"$$resopt_50_tag_1532" = load i8, i8* %"$$resopt_50_tag_1531", align 1
  switch i8 %"$$resopt_50_tag_1532", label %"$empty_default_1533" [
    i8 0, label %"$Some_1534"
    i8 1, label %"$None_1544"
  ]

"$Some_1534":                                     ; preds = %"$have_gas_1527"
  %"$$resopt_50_1535" = bitcast %TName_Option_Uint32* %"$$resopt_50_1530" to %CName_Some_Uint32*
  %"$$$resopt_50_74_gep_1536" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_50_1535", i32 0, i32 1
  %"$$$resopt_50_74_load_1537" = load %Uint32, %Uint32* %"$$$resopt_50_74_gep_1536", align 4
  %"$$resopt_50_74" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_50_74_load_1537", %Uint32* %"$$resopt_50_74", align 4
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$Some_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$Some_1534"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %"$false_1543" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1543", %TName_Bool** %"$test_51", align 8
  br label %"$matchsucc_1529"

"$None_1544":                                     ; preds = %"$have_gas_1527"
  %"$$resopt_50_1545" = bitcast %TName_Option_Uint32* %"$$resopt_50_1530" to %CName_None_Uint32*
  %"$gasrem_1546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1547" = icmp ugt i64 1, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$None_1544"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$None_1544"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 1
  store i64 %"$consume_1550", i64* @_gasrem, align 8
  %"$$test_48_1551" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  store %TName_Bool* %"$$test_48_1551", %TName_Bool** %"$test_51", align 8
  br label %"$matchsucc_1529"

"$empty_default_1533":                            ; preds = %"$have_gas_1527"
  br label %"$matchsucc_1529"

"$matchsucc_1529":                                ; preds = %"$have_gas_1549", %"$have_gas_1541", %"$empty_default_1533"
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 1, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %"$matchsucc_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %"$matchsucc_1529"
  %"$consume_1556" = sub i64 %"$gasrem_1552", 1
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %"$input_52" = alloca %Int256, align 8
  %"$gasrem_1557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1558" = icmp ugt i64 1, %"$gasrem_1557"
  br i1 %"$gascmp_1558", label %"$out_of_gas_1559", label %"$have_gas_1560"

"$out_of_gas_1559":                               ; preds = %"$have_gas_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1560"

"$have_gas_1560":                                 ; preds = %"$out_of_gas_1559", %"$have_gas_1555"
  %"$consume_1561" = sub i64 %"$gasrem_1557", 1
  store i64 %"$consume_1561", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$input_52", align 8
  %"$gasrem_1562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1560"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1560"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem, align 8
  %"$resopt_53" = alloca %TName_Option_Uint256*, align 8
  %"$execptr_load_1567" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_52_1568" = alloca %Int256, align 8
  %"$$input_52_1569" = load %Int256, %Int256* %"$input_52", align 8
  store %Int256 %"$$input_52_1569", %Int256* %"$to_uint256_$input_52_1568", align 8
  %"$$to_uint256_$input_52_1568_1570" = bitcast %Int256* %"$to_uint256_$input_52_1568" to i8*
  %"$to_uint256_call_1571" = call i8* @_to_uint256(i8* %"$execptr_load_1567", %_TyDescrTy_Typ* @"$TyDescr_Int256_121", i8* %"$$to_uint256_$input_52_1568_1570")
  %"$to_uint256_1572" = bitcast i8* %"$to_uint256_call_1571" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1572", %TName_Option_Uint256** %"$resopt_53", align 8
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1565"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 2, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1576"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 2
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  %"$$resopt_53_1584" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_53", align 8
  %"$$resopt_53_tag_1585" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_53_1584", i32 0, i32 0
  %"$$resopt_53_tag_1586" = load i8, i8* %"$$resopt_53_tag_1585", align 1
  switch i8 %"$$resopt_53_tag_1586", label %"$empty_default_1587" [
    i8 0, label %"$Some_1588"
    i8 1, label %"$None_1630"
  ]

"$Some_1588":                                     ; preds = %"$have_gas_1581"
  %"$$resopt_53_1589" = bitcast %TName_Option_Uint256* %"$$resopt_53_1584" to %CName_Some_Uint256*
  %"$res_gep_1590" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_53_1589", i32 0, i32 1
  %"$res_load_1591" = load %Uint256, %Uint256* %"$res_gep_1590", align 8
  %res28 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1591", %Uint256* %res28, align 8
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 1, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$Some_1588"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$Some_1588"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 1
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  %input_29 = alloca %Uint256, align 8
  %"$gasrem_1597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1598" = icmp ugt i64 1, %"$gasrem_1597"
  br i1 %"$gascmp_1598", label %"$out_of_gas_1599", label %"$have_gas_1600"

"$out_of_gas_1599":                               ; preds = %"$have_gas_1595"
  call void @_out_of_gas()
  br label %"$have_gas_1600"

"$have_gas_1600":                                 ; preds = %"$out_of_gas_1599", %"$have_gas_1595"
  %"$consume_1601" = sub i64 %"$gasrem_1597", 1
  store i64 %"$consume_1601", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_29, align 8
  %"$gasrem_1602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1603" = icmp ugt i64 1, %"$gasrem_1602"
  br i1 %"$gascmp_1603", label %"$out_of_gas_1604", label %"$have_gas_1605"

"$out_of_gas_1604":                               ; preds = %"$have_gas_1600"
  call void @_out_of_gas()
  br label %"$have_gas_1605"

"$have_gas_1605":                                 ; preds = %"$out_of_gas_1604", %"$have_gas_1600"
  %"$consume_1606" = sub i64 %"$gasrem_1602", 1
  store i64 %"$consume_1606", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  %"$execptr_load_1607" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1608" = alloca %Uint256, align 8
  %"$res_1609" = load %Uint256, %Uint256* %res28, align 8
  store %Uint256 %"$res_1609", %Uint256* %"$eq_res_1608", align 8
  %"$eq_input__1610" = alloca %Uint256, align 8
  %"$input__1611" = load %Uint256, %Uint256* %input_29, align 8
  store %Uint256 %"$input__1611", %Uint256* %"$eq_input__1610", align 8
  %"$eq_call_1612" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1607", %Uint256* %"$eq_res_1608", %Uint256* %"$eq_input__1610")
  store %TName_Bool* %"$eq_call_1612", %TName_Bool** %test_30, align 8
  %"$gasrem_1614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1615" = icmp ugt i64 1, %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$have_gas_1605"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$have_gas_1605"
  %"$consume_1618" = sub i64 %"$gasrem_1614", 1
  store i64 %"$consume_1618", i64* @_gasrem, align 8
  %"$BoolUtils.andb_98" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1619" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1620" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1619", 0
  %"$BoolUtils.andb_envptr_1621" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1619", 1
  %"$$test_51_1622" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  %"$BoolUtils.andb_call_1623" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1620"(i8* %"$BoolUtils.andb_envptr_1621", %TName_Bool* %"$$test_51_1622")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1623", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$BoolUtils.andb_99" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_98_1624" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_fptr_1625" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1624", 0
  %"$$BoolUtils.andb_98_envptr_1626" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1624", 1
  %"$test__1627" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_98_call_1628" = call %TName_Bool* %"$$BoolUtils.andb_98_fptr_1625"(i8* %"$$BoolUtils.andb_98_envptr_1626", %TName_Bool* %"$test__1627")
  store %TName_Bool* %"$$BoolUtils.andb_98_call_1628", %TName_Bool** %"$BoolUtils.andb_99", align 8
  %"$$BoolUtils.andb_99_1629" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_99", align 8
  store %TName_Bool* %"$$BoolUtils.andb_99_1629", %TName_Bool** %"$test_54", align 8
  br label %"$matchsucc_1583"

"$None_1630":                                     ; preds = %"$have_gas_1581"
  %"$$resopt_53_1631" = bitcast %TName_Option_Uint256* %"$$resopt_53_1584" to %CName_None_Uint256*
  %"$gasrem_1632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1633" = icmp ugt i64 1, %"$gasrem_1632"
  br i1 %"$gascmp_1633", label %"$out_of_gas_1634", label %"$have_gas_1635"

"$out_of_gas_1634":                               ; preds = %"$None_1630"
  call void @_out_of_gas()
  br label %"$have_gas_1635"

"$have_gas_1635":                                 ; preds = %"$out_of_gas_1634", %"$None_1630"
  %"$consume_1636" = sub i64 %"$gasrem_1632", 1
  store i64 %"$consume_1636", i64* @_gasrem, align 8
  %"$false_1637" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1637", %TName_Bool** %"$test_54", align 8
  br label %"$matchsucc_1583"

"$empty_default_1587":                            ; preds = %"$have_gas_1581"
  br label %"$matchsucc_1583"

"$matchsucc_1583":                                ; preds = %"$have_gas_1635", %"$have_gas_1617", %"$empty_default_1587"
  %"$gasrem_1638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1639" = icmp ugt i64 1, %"$gasrem_1638"
  br i1 %"$gascmp_1639", label %"$out_of_gas_1640", label %"$have_gas_1641"

"$out_of_gas_1640":                               ; preds = %"$matchsucc_1583"
  call void @_out_of_gas()
  br label %"$have_gas_1641"

"$have_gas_1641":                                 ; preds = %"$out_of_gas_1640", %"$matchsucc_1583"
  %"$consume_1642" = sub i64 %"$gasrem_1638", 1
  store i64 %"$consume_1642", i64* @_gasrem, align 8
  %"$input_55" = alloca %String, align 8
  %"$gasrem_1643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1644" = icmp ugt i64 1, %"$gasrem_1643"
  br i1 %"$gascmp_1644", label %"$out_of_gas_1645", label %"$have_gas_1646"

"$out_of_gas_1645":                               ; preds = %"$have_gas_1641"
  call void @_out_of_gas()
  br label %"$have_gas_1646"

"$have_gas_1646":                                 ; preds = %"$out_of_gas_1645", %"$have_gas_1641"
  %"$consume_1647" = sub i64 %"$gasrem_1643", 1
  store i64 %"$consume_1647", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1648", i32 0, i32 0), i32 77 }, %String* %"$input_55", align 8
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$have_gas_1646"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$have_gas_1646"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %"$resopt_56" = alloca %TName_Option_Uint256*, align 8
  %"$execptr_load_1654" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_55_1655" = alloca %String, align 8
  %"$$input_55_1656" = load %String, %String* %"$input_55", align 8
  store %String %"$$input_55_1656", %String* %"$to_uint256_$input_55_1655", align 8
  %"$$to_uint256_$input_55_1655_1657" = bitcast %String* %"$to_uint256_$input_55_1655" to i8*
  %"$to_uint256_call_1658" = call i8* @_to_uint256(i8* %"$execptr_load_1654", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint256_$input_55_1655_1657")
  %"$to_uint256_1659" = bitcast i8* %"$to_uint256_call_1658" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1659", %TName_Option_Uint256** %"$resopt_56", align 8
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1652"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %"$test_57" = alloca %TName_Bool*, align 8
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 2, %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1663"
  %"$consume_1669" = sub i64 %"$gasrem_1665", 2
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$$resopt_56_1671" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_56", align 8
  %"$$resopt_56_tag_1672" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_56_1671", i32 0, i32 0
  %"$$resopt_56_tag_1673" = load i8, i8* %"$$resopt_56_tag_1672", align 1
  switch i8 %"$$resopt_56_tag_1673", label %"$empty_default_1674" [
    i8 0, label %"$Some_1675"
    i8 1, label %"$None_1717"
  ]

"$Some_1675":                                     ; preds = %"$have_gas_1668"
  %"$$resopt_56_1676" = bitcast %TName_Option_Uint256* %"$$resopt_56_1671" to %CName_Some_Uint256*
  %"$res_gep_1677" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_56_1676", i32 0, i32 1
  %"$res_load_1678" = load %Uint256, %Uint256* %"$res_gep_1677", align 8
  %res31 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1678", %Uint256* %res31, align 8
  %"$gasrem_1679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1680" = icmp ugt i64 1, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$Some_1675"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$Some_1675"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 1
  store i64 %"$consume_1683", i64* @_gasrem, align 8
  %input_32 = alloca %Uint256, align 8
  %"$gasrem_1684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1685" = icmp ugt i64 1, %"$gasrem_1684"
  br i1 %"$gascmp_1685", label %"$out_of_gas_1686", label %"$have_gas_1687"

"$out_of_gas_1686":                               ; preds = %"$have_gas_1682"
  call void @_out_of_gas()
  br label %"$have_gas_1687"

"$have_gas_1687":                                 ; preds = %"$out_of_gas_1686", %"$have_gas_1682"
  %"$consume_1688" = sub i64 %"$gasrem_1684", 1
  store i64 %"$consume_1688", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_32, align 8
  %"$gasrem_1689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1690" = icmp ugt i64 1, %"$gasrem_1689"
  br i1 %"$gascmp_1690", label %"$out_of_gas_1691", label %"$have_gas_1692"

"$out_of_gas_1691":                               ; preds = %"$have_gas_1687"
  call void @_out_of_gas()
  br label %"$have_gas_1692"

"$have_gas_1692":                                 ; preds = %"$out_of_gas_1691", %"$have_gas_1687"
  %"$consume_1693" = sub i64 %"$gasrem_1689", 1
  store i64 %"$consume_1693", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  %"$execptr_load_1694" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1695" = alloca %Uint256, align 8
  %"$res_1696" = load %Uint256, %Uint256* %res31, align 8
  store %Uint256 %"$res_1696", %Uint256* %"$eq_res_1695", align 8
  %"$eq_input__1697" = alloca %Uint256, align 8
  %"$input__1698" = load %Uint256, %Uint256* %input_32, align 8
  store %Uint256 %"$input__1698", %Uint256* %"$eq_input__1697", align 8
  %"$eq_call_1699" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1694", %Uint256* %"$eq_res_1695", %Uint256* %"$eq_input__1697")
  store %TName_Bool* %"$eq_call_1699", %TName_Bool** %test_33, align 8
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 1, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1692"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1692"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 1
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$BoolUtils.andb_100" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1706" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1707" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1706", 0
  %"$BoolUtils.andb_envptr_1708" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1706", 1
  %"$$test_54_1709" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1710" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1707"(i8* %"$BoolUtils.andb_envptr_1708", %TName_Bool* %"$$test_54_1709")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1710", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$BoolUtils.andb_101" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_100_1711" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$$BoolUtils.andb_100_fptr_1712" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1711", 0
  %"$$BoolUtils.andb_100_envptr_1713" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1711", 1
  %"$test__1714" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_100_call_1715" = call %TName_Bool* %"$$BoolUtils.andb_100_fptr_1712"(i8* %"$$BoolUtils.andb_100_envptr_1713", %TName_Bool* %"$test__1714")
  store %TName_Bool* %"$$BoolUtils.andb_100_call_1715", %TName_Bool** %"$BoolUtils.andb_101", align 8
  %"$$BoolUtils.andb_101_1716" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_101", align 8
  store %TName_Bool* %"$$BoolUtils.andb_101_1716", %TName_Bool** %"$test_57", align 8
  br label %"$matchsucc_1670"

"$None_1717":                                     ; preds = %"$have_gas_1668"
  %"$$resopt_56_1718" = bitcast %TName_Option_Uint256* %"$$resopt_56_1671" to %CName_None_Uint256*
  %"$gasrem_1719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1720" = icmp ugt i64 1, %"$gasrem_1719"
  br i1 %"$gascmp_1720", label %"$out_of_gas_1721", label %"$have_gas_1722"

"$out_of_gas_1721":                               ; preds = %"$None_1717"
  call void @_out_of_gas()
  br label %"$have_gas_1722"

"$have_gas_1722":                                 ; preds = %"$out_of_gas_1721", %"$None_1717"
  %"$consume_1723" = sub i64 %"$gasrem_1719", 1
  store i64 %"$consume_1723", i64* @_gasrem, align 8
  %"$false_1724" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1724", %TName_Bool** %"$test_57", align 8
  br label %"$matchsucc_1670"

"$empty_default_1674":                            ; preds = %"$have_gas_1668"
  br label %"$matchsucc_1670"

"$matchsucc_1670":                                ; preds = %"$have_gas_1722", %"$have_gas_1704", %"$empty_default_1674"
  %"$gasrem_1725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1726" = icmp ugt i64 1, %"$gasrem_1725"
  br i1 %"$gascmp_1726", label %"$out_of_gas_1727", label %"$have_gas_1728"

"$out_of_gas_1727":                               ; preds = %"$matchsucc_1670"
  call void @_out_of_gas()
  br label %"$have_gas_1728"

"$have_gas_1728":                                 ; preds = %"$out_of_gas_1727", %"$matchsucc_1670"
  %"$consume_1729" = sub i64 %"$gasrem_1725", 1
  store i64 %"$consume_1729", i64* @_gasrem, align 8
  %"$input_58" = alloca %Int256, align 8
  %"$gasrem_1730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1731" = icmp ugt i64 1, %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$have_gas_1728"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$have_gas_1728"
  %"$consume_1734" = sub i64 %"$gasrem_1730", 1
  store i64 %"$consume_1734", i64* @_gasrem, align 8
  store %Int256 { i256 -282366920938463463374607431768211456 }, %Int256* %"$input_58", align 8
  %"$gasrem_1735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1736" = icmp ugt i64 1, %"$gasrem_1735"
  br i1 %"$gascmp_1736", label %"$out_of_gas_1737", label %"$have_gas_1738"

"$out_of_gas_1737":                               ; preds = %"$have_gas_1733"
  call void @_out_of_gas()
  br label %"$have_gas_1738"

"$have_gas_1738":                                 ; preds = %"$out_of_gas_1737", %"$have_gas_1733"
  %"$consume_1739" = sub i64 %"$gasrem_1735", 1
  store i64 %"$consume_1739", i64* @_gasrem, align 8
  %"$resopt_59" = alloca %TName_Option_Uint256*, align 8
  %"$execptr_load_1740" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_58_1741" = alloca %Int256, align 8
  %"$$input_58_1742" = load %Int256, %Int256* %"$input_58", align 8
  store %Int256 %"$$input_58_1742", %Int256* %"$to_uint256_$input_58_1741", align 8
  %"$$to_uint256_$input_58_1741_1743" = bitcast %Int256* %"$to_uint256_$input_58_1741" to i8*
  %"$to_uint256_call_1744" = call i8* @_to_uint256(i8* %"$execptr_load_1740", %_TyDescrTy_Typ* @"$TyDescr_Int256_121", i8* %"$$to_uint256_$input_58_1741_1743")
  %"$to_uint256_1745" = bitcast i8* %"$to_uint256_call_1744" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1745", %TName_Option_Uint256** %"$resopt_59", align 8
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1738"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1738"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1752" = icmp ugt i64 2, %"$gasrem_1751"
  br i1 %"$gascmp_1752", label %"$out_of_gas_1753", label %"$have_gas_1754"

"$out_of_gas_1753":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1754"

"$have_gas_1754":                                 ; preds = %"$out_of_gas_1753", %"$have_gas_1749"
  %"$consume_1755" = sub i64 %"$gasrem_1751", 2
  store i64 %"$consume_1755", i64* @_gasrem, align 8
  %"$$resopt_59_1757" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_59", align 8
  %"$$resopt_59_tag_1758" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_59_1757", i32 0, i32 0
  %"$$resopt_59_tag_1759" = load i8, i8* %"$$resopt_59_tag_1758", align 1
  switch i8 %"$$resopt_59_tag_1759", label %"$empty_default_1760" [
    i8 0, label %"$Some_1761"
    i8 1, label %"$None_1771"
  ]

"$Some_1761":                                     ; preds = %"$have_gas_1754"
  %"$$resopt_59_1762" = bitcast %TName_Option_Uint256* %"$$resopt_59_1757" to %CName_Some_Uint256*
  %"$$$resopt_59_75_gep_1763" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_59_1762", i32 0, i32 1
  %"$$$resopt_59_75_load_1764" = load %Uint256, %Uint256* %"$$$resopt_59_75_gep_1763", align 8
  %"$$resopt_59_75" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_59_75_load_1764", %Uint256* %"$$resopt_59_75", align 8
  %"$gasrem_1765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1766" = icmp ugt i64 1, %"$gasrem_1765"
  br i1 %"$gascmp_1766", label %"$out_of_gas_1767", label %"$have_gas_1768"

"$out_of_gas_1767":                               ; preds = %"$Some_1761"
  call void @_out_of_gas()
  br label %"$have_gas_1768"

"$have_gas_1768":                                 ; preds = %"$out_of_gas_1767", %"$Some_1761"
  %"$consume_1769" = sub i64 %"$gasrem_1765", 1
  store i64 %"$consume_1769", i64* @_gasrem, align 8
  %"$false_1770" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1770", %TName_Bool** %"$test_60", align 8
  br label %"$matchsucc_1756"

"$None_1771":                                     ; preds = %"$have_gas_1754"
  %"$$resopt_59_1772" = bitcast %TName_Option_Uint256* %"$$resopt_59_1757" to %CName_None_Uint256*
  %"$gasrem_1773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1774" = icmp ugt i64 1, %"$gasrem_1773"
  br i1 %"$gascmp_1774", label %"$out_of_gas_1775", label %"$have_gas_1776"

"$out_of_gas_1775":                               ; preds = %"$None_1771"
  call void @_out_of_gas()
  br label %"$have_gas_1776"

"$have_gas_1776":                                 ; preds = %"$out_of_gas_1775", %"$None_1771"
  %"$consume_1777" = sub i64 %"$gasrem_1773", 1
  store i64 %"$consume_1777", i64* @_gasrem, align 8
  %"$$test_57_1778" = load %TName_Bool*, %TName_Bool** %"$test_57", align 8
  store %TName_Bool* %"$$test_57_1778", %TName_Bool** %"$test_60", align 8
  br label %"$matchsucc_1756"

"$empty_default_1760":                            ; preds = %"$have_gas_1754"
  br label %"$matchsucc_1756"

"$matchsucc_1756":                                ; preds = %"$have_gas_1776", %"$have_gas_1768", %"$empty_default_1760"
  %"$gasrem_1779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1780" = icmp ugt i64 1, %"$gasrem_1779"
  br i1 %"$gascmp_1780", label %"$out_of_gas_1781", label %"$have_gas_1782"

"$out_of_gas_1781":                               ; preds = %"$matchsucc_1756"
  call void @_out_of_gas()
  br label %"$have_gas_1782"

"$have_gas_1782":                                 ; preds = %"$out_of_gas_1781", %"$matchsucc_1756"
  %"$consume_1783" = sub i64 %"$gasrem_1779", 1
  store i64 %"$consume_1783", i64* @_gasrem, align 8
  %"$input_61" = alloca %String, align 8
  %"$gasrem_1784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1785" = icmp ugt i64 1, %"$gasrem_1784"
  br i1 %"$gascmp_1785", label %"$out_of_gas_1786", label %"$have_gas_1787"

"$out_of_gas_1786":                               ; preds = %"$have_gas_1782"
  call void @_out_of_gas()
  br label %"$have_gas_1787"

"$have_gas_1787":                                 ; preds = %"$out_of_gas_1786", %"$have_gas_1782"
  %"$consume_1788" = sub i64 %"$gasrem_1784", 1
  store i64 %"$consume_1788", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"$stringlit_1789", i32 0, i32 0), i32 37 }, %String* %"$input_61", align 8
  %"$gasrem_1790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1791" = icmp ugt i64 1, %"$gasrem_1790"
  br i1 %"$gascmp_1791", label %"$out_of_gas_1792", label %"$have_gas_1793"

"$out_of_gas_1792":                               ; preds = %"$have_gas_1787"
  call void @_out_of_gas()
  br label %"$have_gas_1793"

"$have_gas_1793":                                 ; preds = %"$out_of_gas_1792", %"$have_gas_1787"
  %"$consume_1794" = sub i64 %"$gasrem_1790", 1
  store i64 %"$consume_1794", i64* @_gasrem, align 8
  %"$resopt_62" = alloca %TName_Option_Uint256*, align 8
  %"$execptr_load_1795" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_61_1796" = alloca %String, align 8
  %"$$input_61_1797" = load %String, %String* %"$input_61", align 8
  store %String %"$$input_61_1797", %String* %"$to_uint256_$input_61_1796", align 8
  %"$$to_uint256_$input_61_1796_1798" = bitcast %String* %"$to_uint256_$input_61_1796" to i8*
  %"$to_uint256_call_1799" = call i8* @_to_uint256(i8* %"$execptr_load_1795", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint256_$input_61_1796_1798")
  %"$to_uint256_1800" = bitcast i8* %"$to_uint256_call_1799" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1800", %TName_Option_Uint256** %"$resopt_62", align 8
  %"$gasrem_1801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1802" = icmp ugt i64 1, %"$gasrem_1801"
  br i1 %"$gascmp_1802", label %"$out_of_gas_1803", label %"$have_gas_1804"

"$out_of_gas_1803":                               ; preds = %"$have_gas_1793"
  call void @_out_of_gas()
  br label %"$have_gas_1804"

"$have_gas_1804":                                 ; preds = %"$out_of_gas_1803", %"$have_gas_1793"
  %"$consume_1805" = sub i64 %"$gasrem_1801", 1
  store i64 %"$consume_1805", i64* @_gasrem, align 8
  %"$test_63" = alloca %TName_Bool*, align 8
  %"$gasrem_1806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1807" = icmp ugt i64 2, %"$gasrem_1806"
  br i1 %"$gascmp_1807", label %"$out_of_gas_1808", label %"$have_gas_1809"

"$out_of_gas_1808":                               ; preds = %"$have_gas_1804"
  call void @_out_of_gas()
  br label %"$have_gas_1809"

"$have_gas_1809":                                 ; preds = %"$out_of_gas_1808", %"$have_gas_1804"
  %"$consume_1810" = sub i64 %"$gasrem_1806", 2
  store i64 %"$consume_1810", i64* @_gasrem, align 8
  %"$$resopt_62_1812" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_62", align 8
  %"$$resopt_62_tag_1813" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_62_1812", i32 0, i32 0
  %"$$resopt_62_tag_1814" = load i8, i8* %"$$resopt_62_tag_1813", align 1
  switch i8 %"$$resopt_62_tag_1814", label %"$empty_default_1815" [
    i8 0, label %"$Some_1816"
    i8 1, label %"$None_1826"
  ]

"$Some_1816":                                     ; preds = %"$have_gas_1809"
  %"$$resopt_62_1817" = bitcast %TName_Option_Uint256* %"$$resopt_62_1812" to %CName_Some_Uint256*
  %"$$$resopt_62_76_gep_1818" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_62_1817", i32 0, i32 1
  %"$$$resopt_62_76_load_1819" = load %Uint256, %Uint256* %"$$$resopt_62_76_gep_1818", align 8
  %"$$resopt_62_76" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_62_76_load_1819", %Uint256* %"$$resopt_62_76", align 8
  %"$gasrem_1820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1821" = icmp ugt i64 1, %"$gasrem_1820"
  br i1 %"$gascmp_1821", label %"$out_of_gas_1822", label %"$have_gas_1823"

"$out_of_gas_1822":                               ; preds = %"$Some_1816"
  call void @_out_of_gas()
  br label %"$have_gas_1823"

"$have_gas_1823":                                 ; preds = %"$out_of_gas_1822", %"$Some_1816"
  %"$consume_1824" = sub i64 %"$gasrem_1820", 1
  store i64 %"$consume_1824", i64* @_gasrem, align 8
  %"$false_1825" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1825", %TName_Bool** %"$test_63", align 8
  br label %"$matchsucc_1811"

"$None_1826":                                     ; preds = %"$have_gas_1809"
  %"$$resopt_62_1827" = bitcast %TName_Option_Uint256* %"$$resopt_62_1812" to %CName_None_Uint256*
  %"$gasrem_1828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1829" = icmp ugt i64 1, %"$gasrem_1828"
  br i1 %"$gascmp_1829", label %"$out_of_gas_1830", label %"$have_gas_1831"

"$out_of_gas_1830":                               ; preds = %"$None_1826"
  call void @_out_of_gas()
  br label %"$have_gas_1831"

"$have_gas_1831":                                 ; preds = %"$out_of_gas_1830", %"$None_1826"
  %"$consume_1832" = sub i64 %"$gasrem_1828", 1
  store i64 %"$consume_1832", i64* @_gasrem, align 8
  %"$$test_60_1833" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  store %TName_Bool* %"$$test_60_1833", %TName_Bool** %"$test_63", align 8
  br label %"$matchsucc_1811"

"$empty_default_1815":                            ; preds = %"$have_gas_1809"
  br label %"$matchsucc_1811"

"$matchsucc_1811":                                ; preds = %"$have_gas_1831", %"$have_gas_1823", %"$empty_default_1815"
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 1, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$matchsucc_1811"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$matchsucc_1811"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 1
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  %"$input_64" = alloca %String, align 8
  %"$gasrem_1839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1840" = icmp ugt i64 1, %"$gasrem_1839"
  br i1 %"$gascmp_1840", label %"$out_of_gas_1841", label %"$have_gas_1842"

"$out_of_gas_1841":                               ; preds = %"$have_gas_1837"
  call void @_out_of_gas()
  br label %"$have_gas_1842"

"$have_gas_1842":                                 ; preds = %"$out_of_gas_1841", %"$have_gas_1837"
  %"$consume_1843" = sub i64 %"$gasrem_1839", 1
  store i64 %"$consume_1843", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1844", i32 0, i32 0), i32 4 }, %String* %"$input_64", align 8
  %"$gasrem_1845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1846" = icmp ugt i64 1, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %"$have_gas_1842"
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %"$have_gas_1842"
  %"$consume_1849" = sub i64 %"$gasrem_1845", 1
  store i64 %"$consume_1849", i64* @_gasrem, align 8
  %"$resopt_65" = alloca %TName_Option_Uint64*, align 8
  %"$execptr_load_1850" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_64_1851" = alloca %String, align 8
  %"$$input_64_1852" = load %String, %String* %"$input_64", align 8
  store %String %"$$input_64_1852", %String* %"$to_uint64_$input_64_1851", align 8
  %"$$to_uint64_$input_64_1851_1853" = bitcast %String* %"$to_uint64_$input_64_1851" to i8*
  %"$to_uint64_call_1854" = call i8* @_to_uint64(i8* %"$execptr_load_1850", %_TyDescrTy_Typ* @"$TyDescr_String_125", i8* %"$$to_uint64_$input_64_1851_1853")
  %"$to_uint64_1855" = bitcast i8* %"$to_uint64_call_1854" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_1855", %TName_Option_Uint64** %"$resopt_65", align 8
  %"$gasrem_1856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1857" = icmp ugt i64 1, %"$gasrem_1856"
  br i1 %"$gascmp_1857", label %"$out_of_gas_1858", label %"$have_gas_1859"

"$out_of_gas_1858":                               ; preds = %"$have_gas_1848"
  call void @_out_of_gas()
  br label %"$have_gas_1859"

"$have_gas_1859":                                 ; preds = %"$out_of_gas_1858", %"$have_gas_1848"
  %"$consume_1860" = sub i64 %"$gasrem_1856", 1
  store i64 %"$consume_1860", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1862" = icmp ugt i64 2, %"$gasrem_1861"
  br i1 %"$gascmp_1862", label %"$out_of_gas_1863", label %"$have_gas_1864"

"$out_of_gas_1863":                               ; preds = %"$have_gas_1859"
  call void @_out_of_gas()
  br label %"$have_gas_1864"

"$have_gas_1864":                                 ; preds = %"$out_of_gas_1863", %"$have_gas_1859"
  %"$consume_1865" = sub i64 %"$gasrem_1861", 2
  store i64 %"$consume_1865", i64* @_gasrem, align 8
  %"$$resopt_65_1867" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_65", align 8
  %"$$resopt_65_tag_1868" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_65_1867", i32 0, i32 0
  %"$$resopt_65_tag_1869" = load i8, i8* %"$$resopt_65_tag_1868", align 1
  switch i8 %"$$resopt_65_tag_1869", label %"$empty_default_1870" [
    i8 0, label %"$Some_1871"
    i8 1, label %"$None_1881"
  ]

"$Some_1871":                                     ; preds = %"$have_gas_1864"
  %"$$resopt_65_1872" = bitcast %TName_Option_Uint64* %"$$resopt_65_1867" to %CName_Some_Uint64*
  %"$$$resopt_65_77_gep_1873" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_65_1872", i32 0, i32 1
  %"$$$resopt_65_77_load_1874" = load %Uint64, %Uint64* %"$$$resopt_65_77_gep_1873", align 8
  %"$$resopt_65_77" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_65_77_load_1874", %Uint64* %"$$resopt_65_77", align 8
  %"$gasrem_1875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1876" = icmp ugt i64 1, %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$Some_1871"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$Some_1871"
  %"$consume_1879" = sub i64 %"$gasrem_1875", 1
  store i64 %"$consume_1879", i64* @_gasrem, align 8
  %"$false_1880" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1880", %TName_Bool** %"$test_66", align 8
  br label %"$matchsucc_1866"

"$None_1881":                                     ; preds = %"$have_gas_1864"
  %"$$resopt_65_1882" = bitcast %TName_Option_Uint64* %"$$resopt_65_1867" to %CName_None_Uint64*
  %"$gasrem_1883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1884" = icmp ugt i64 1, %"$gasrem_1883"
  br i1 %"$gascmp_1884", label %"$out_of_gas_1885", label %"$have_gas_1886"

"$out_of_gas_1885":                               ; preds = %"$None_1881"
  call void @_out_of_gas()
  br label %"$have_gas_1886"

"$have_gas_1886":                                 ; preds = %"$out_of_gas_1885", %"$None_1881"
  %"$consume_1887" = sub i64 %"$gasrem_1883", 1
  store i64 %"$consume_1887", i64* @_gasrem, align 8
  %"$$test_63_1888" = load %TName_Bool*, %TName_Bool** %"$test_63", align 8
  store %TName_Bool* %"$$test_63_1888", %TName_Bool** %"$test_66", align 8
  br label %"$matchsucc_1866"

"$empty_default_1870":                            ; preds = %"$have_gas_1864"
  br label %"$matchsucc_1866"

"$matchsucc_1866":                                ; preds = %"$have_gas_1886", %"$have_gas_1878", %"$empty_default_1870"
  %"$gasrem_1889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1890" = icmp ugt i64 1, %"$gasrem_1889"
  br i1 %"$gascmp_1890", label %"$out_of_gas_1891", label %"$have_gas_1892"

"$out_of_gas_1891":                               ; preds = %"$matchsucc_1866"
  call void @_out_of_gas()
  br label %"$have_gas_1892"

"$have_gas_1892":                                 ; preds = %"$out_of_gas_1891", %"$matchsucc_1866"
  %"$consume_1893" = sub i64 %"$gasrem_1889", 1
  store i64 %"$consume_1893", i64* @_gasrem, align 8
  %"$$test_66_1894" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  store %TName_Bool* %"$$test_66_1894", %TName_Bool** %"$expr_106", align 8
  %"$$expr_106_1895" = load %TName_Bool*, %TName_Bool** %"$expr_106", align 8
  ret %TName_Bool* %"$$expr_106_1895"
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
  %"$exprval_1896" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1897" = bitcast %TName_Bool* %"$exprval_1896" to i8*
  %"$execptr_load_1898" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1898", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_143", i8* %"$memvoidcast_1897")
  ret void
}
