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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_113" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_143" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_142"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_142" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_144"**, %"$TyDescrTy_ADTTyp_143"* }
%"$TyDescrTy_ADTTyp_Constr_144" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2116" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2117" = type { %ParamDescrString, i32, %"$ParamDescr_2116"* }
%"$$fundef_110_env_204" = type { %TName_Bool* }
%"$$fundef_108_env_205" = type {}
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
%String = type { i8*, i32 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_114" = global %"$TyDescrTy_PrimTyp_113" zeroinitializer
@"$TyDescr_Int32_115" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Int32_Prim_114" to i8*) }
@"$TyDescr_Uint32_Prim_116" = global %"$TyDescrTy_PrimTyp_113" { i32 1, i32 0 }
@"$TyDescr_Uint32_117" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Uint32_Prim_116" to i8*) }
@"$TyDescr_Int64_Prim_118" = global %"$TyDescrTy_PrimTyp_113" { i32 0, i32 1 }
@"$TyDescr_Int64_119" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Int64_Prim_118" to i8*) }
@"$TyDescr_Uint64_Prim_120" = global %"$TyDescrTy_PrimTyp_113" { i32 1, i32 1 }
@"$TyDescr_Uint64_121" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Uint64_Prim_120" to i8*) }
@"$TyDescr_Int128_Prim_122" = global %"$TyDescrTy_PrimTyp_113" { i32 0, i32 2 }
@"$TyDescr_Int128_123" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Int128_Prim_122" to i8*) }
@"$TyDescr_Uint128_Prim_124" = global %"$TyDescrTy_PrimTyp_113" { i32 1, i32 2 }
@"$TyDescr_Uint128_125" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Uint128_Prim_124" to i8*) }
@"$TyDescr_Int256_Prim_126" = global %"$TyDescrTy_PrimTyp_113" { i32 0, i32 3 }
@"$TyDescr_Int256_127" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Int256_Prim_126" to i8*) }
@"$TyDescr_Uint256_Prim_128" = global %"$TyDescrTy_PrimTyp_113" { i32 1, i32 3 }
@"$TyDescr_Uint256_129" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Uint256_Prim_128" to i8*) }
@"$TyDescr_String_Prim_130" = global %"$TyDescrTy_PrimTyp_113" { i32 2, i32 0 }
@"$TyDescr_String_131" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_String_Prim_130" to i8*) }
@"$TyDescr_Bnum_Prim_132" = global %"$TyDescrTy_PrimTyp_113" { i32 3, i32 0 }
@"$TyDescr_Bnum_133" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Bnum_Prim_132" to i8*) }
@"$TyDescr_Message_Prim_134" = global %"$TyDescrTy_PrimTyp_113" { i32 4, i32 0 }
@"$TyDescr_Message_135" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Message_Prim_134" to i8*) }
@"$TyDescr_Event_Prim_136" = global %"$TyDescrTy_PrimTyp_113" { i32 5, i32 0 }
@"$TyDescr_Event_137" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Event_Prim_136" to i8*) }
@"$TyDescr_Exception_Prim_138" = global %"$TyDescrTy_PrimTyp_113" { i32 6, i32 0 }
@"$TyDescr_Exception_139" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Exception_Prim_138" to i8*) }
@"$TyDescr_Bystr_Prim_140" = global %"$TyDescrTy_PrimTyp_113" { i32 7, i32 0 }
@"$TyDescr_Bystr_141" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Bystr_Prim_140" to i8*) }
@"$TyDescr_ADT_Option_Uint256_145" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint256_ADTTyp_Specl_162" to i8*) }
@"$TyDescr_ADT_Option_Uint128_146" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_171" to i8*) }
@"$TyDescr_ADT_Option_Uint64_147" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_180" to i8*) }
@"$TyDescr_ADT_Option_Uint32_148" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint32_ADTTyp_Specl_189" to i8*) }
@"$TyDescr_ADT_Bool_149" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Bool_ADTTyp_Specl_201" to i8*) }
@"$TyDescr_Option_ADTTyp_153" = unnamed_addr constant %"$TyDescrTy_ADTTyp_143" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_191", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 4, %"$TyDescrTy_ADTTyp_Specl_142"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_142"*], [4 x %"$TyDescrTy_ADTTyp_Specl_142"*]* @"$TyDescr_Option_ADTTyp_m_specls_190", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint256_Constr_m_args_154" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint256_129"]
@"$TyDescr_ADT_Some_155" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint256_ADTTyp_Constr_156" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_155", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint256_Constr_m_args_154", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint256_Constr_m_args_157" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_158" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint256_ADTTyp_Constr_159" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_158", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint256_Constr_m_args_157", i32 0, i32 0) }
@"$TyDescr_Option_Uint256_ADTTyp_Specl_m_constrs_160" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_144"*] [%"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_Some_Uint256_ADTTyp_Constr_156", %"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_None_Uint256_ADTTyp_Constr_159"]
@"$TyDescr_Option_Uint256_ADTTyp_Specl_m_TArgs_161" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint256_129"]
@"$TyDescr_Option_Uint256_ADTTyp_Specl_162" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_142" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint256_ADTTyp_Specl_m_TArgs_161", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_144"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_144"*], [2 x %"$TyDescrTy_ADTTyp_Constr_144"*]* @"$TyDescr_Option_Uint256_ADTTyp_Specl_m_constrs_160", i32 0, i32 0), %"$TyDescrTy_ADTTyp_143"* @"$TyDescr_Option_ADTTyp_153" }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_163" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_125"]
@"$TyDescr_ADT_Some_164" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_165" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_164", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_163", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_166" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_167" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_168" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_167", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_166", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_169" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_144"*] [%"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_165", %"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_168"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_170" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_125"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_171" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_142" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_170", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_144"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_144"*], [2 x %"$TyDescrTy_ADTTyp_Constr_144"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_169", i32 0, i32 0), %"$TyDescrTy_ADTTyp_143"* @"$TyDescr_Option_ADTTyp_153" }
@"$TyDescr_Option_Some_Uint64_Constr_m_args_172" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_121"]
@"$TyDescr_ADT_Some_173" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_174" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_173", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint64_Constr_m_args_172", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint64_Constr_m_args_175" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_176" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint64_ADTTyp_Constr_177" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_176", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint64_Constr_m_args_175", i32 0, i32 0) }
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_178" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_144"*] [%"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_174", %"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_None_Uint64_ADTTyp_Constr_177"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_179" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_121"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_180" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_142" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_179", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_144"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_144"*], [2 x %"$TyDescrTy_ADTTyp_Constr_144"*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_178", i32 0, i32 0), %"$TyDescrTy_ADTTyp_143"* @"$TyDescr_Option_ADTTyp_153" }
@"$TyDescr_Option_Some_Uint32_Constr_m_args_181" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_117"]
@"$TyDescr_ADT_Some_182" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint32_ADTTyp_Constr_183" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_182", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint32_Constr_m_args_181", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint32_Constr_m_args_184" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_185" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint32_ADTTyp_Constr_186" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_185", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint32_Constr_m_args_184", i32 0, i32 0) }
@"$TyDescr_Option_Uint32_ADTTyp_Specl_m_constrs_187" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_144"*] [%"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_Some_Uint32_ADTTyp_Constr_183", %"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Option_None_Uint32_ADTTyp_Constr_186"]
@"$TyDescr_Option_Uint32_ADTTyp_Specl_m_TArgs_188" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_117"]
@"$TyDescr_Option_Uint32_ADTTyp_Specl_189" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_142" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint32_ADTTyp_Specl_m_TArgs_188", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_144"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_144"*], [2 x %"$TyDescrTy_ADTTyp_Constr_144"*]* @"$TyDescr_Option_Uint32_ADTTyp_Specl_m_constrs_187", i32 0, i32 0), %"$TyDescrTy_ADTTyp_143"* @"$TyDescr_Option_ADTTyp_153" }
@"$TyDescr_Option_ADTTyp_m_specls_190" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_142"*] [%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint256_ADTTyp_Specl_162", %"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_171", %"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_180", %"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Option_Uint32_ADTTyp_Specl_189"]
@"$TyDescr_ADT_Option_191" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_192" = unnamed_addr constant %"$TyDescrTy_ADTTyp_143" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_203", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_142"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_142"*], [1 x %"$TyDescrTy_ADTTyp_Specl_142"*]* @"$TyDescr_Bool_ADTTyp_m_specls_202", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_193" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_194" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_195" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_194", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_193", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_196" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_197" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_198" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_144" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_197", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_196", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_199" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_144"*] [%"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Bool_True_ADTTyp_Constr_195", %"$TyDescrTy_ADTTyp_Constr_144"* @"$TyDescr_Bool_False_ADTTyp_Constr_198"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_200" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_201" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_142" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_200", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_144"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_144"*], [2 x %"$TyDescrTy_ADTTyp_Constr_144"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_199", i32 0, i32 0), %"$TyDescrTy_ADTTyp_143"* @"$TyDescr_Bool_ADTTyp_192" }
@"$TyDescr_Bool_ADTTyp_m_specls_202" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_142"*] [%"$TyDescrTy_ADTTyp_Specl_142"* @"$TyDescr_Bool_ADTTyp_Specl_201"]
@"$TyDescr_ADT_Bool_203" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_1682" = unnamed_addr constant [11 x i8] c"-2147483648"
@"$stringlit_1839" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1996" = unnamed_addr constant [37 x i8] c"-282366920938463463374607431768211456"
@"$stringlit_2056" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_137", %_TyDescrTy_Typ* @"$TyDescr_Int64_119", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_149", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint256_145", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_147", %_TyDescrTy_Typ* @"$TyDescr_Bnum_133", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", %_TyDescrTy_Typ* @"$TyDescr_Exception_139", %_TyDescrTy_Typ* @"$TyDescr_String_131", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", %_TyDescrTy_Typ* @"$TyDescr_Int128_123", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_146", %_TyDescrTy_Typ* @"$TyDescr_Bystr_141", %_TyDescrTy_Typ* @"$TyDescr_Message_135", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint32_148", %_TyDescrTy_Typ* @"$TyDescr_Int32_115"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_2116"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2117"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_110"(%"$$fundef_110_env_204"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_110_env_b_217" = getelementptr inbounds %"$$fundef_110_env_204", %"$$fundef_110_env_204"* %0, i32 0, i32 0
  %"$b_envload_218" = load %TName_Bool*, %TName_Bool** %"$$fundef_110_env_b_217", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_218", %TName_Bool** %b, align 8
  %"$retval_111" = alloca %TName_Bool*, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 2, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 2
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$b_225" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_226" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_225", i32 0, i32 0
  %"$b_tag_227" = load i8, i8* %"$b_tag_226", align 1
  switch i8 %"$b_tag_227", label %"$empty_default_228" [
    i8 1, label %"$False_229"
    i8 0, label %"$True_239"
  ], !dbg !9

"$False_229":                                     ; preds = %"$have_gas_222"
  %"$b_230" = bitcast %TName_Bool* %"$b_225" to %CName_False*
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$False_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$False_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$adtval_236_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_236_salloc" = call i8* @_salloc(i8* %"$adtval_236_load", i64 1)
  %"$adtval_236" = bitcast i8* %"$adtval_236_salloc" to %CName_False*
  %"$adtgep_237" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_236", i32 0, i32 0
  store i8 1, i8* %"$adtgep_237", align 1
  %"$adtptr_238" = bitcast %CName_False* %"$adtval_236" to %TName_Bool*
  store %TName_Bool* %"$adtptr_238", %TName_Bool** %"$retval_111", align 8, !dbg !10
  br label %"$matchsucc_224"

"$True_239":                                      ; preds = %"$have_gas_222"
  %"$b_240" = bitcast %TName_Bool* %"$b_225" to %CName_True*
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$True_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$True_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_111", align 8, !dbg !13
  br label %"$matchsucc_224"

"$empty_default_228":                             ; preds = %"$have_gas_222"
  br label %"$matchsucc_224"

"$matchsucc_224":                                 ; preds = %"$have_gas_244", %"$have_gas_234", %"$empty_default_228"
  %"$$retval_111_246" = load %TName_Bool*, %TName_Bool** %"$retval_111", align 8
  ret %TName_Bool* %"$$retval_111_246"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_205"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_109" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %entry
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$$fundef_110_envp_211_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_110_envp_211_salloc" = call i8* @_salloc(i8* %"$$fundef_110_envp_211_load", i64 8)
  %"$$fundef_110_envp_211" = bitcast i8* %"$$fundef_110_envp_211_salloc" to %"$$fundef_110_env_204"*
  %"$$fundef_110_env_voidp_213" = bitcast %"$$fundef_110_env_204"* %"$$fundef_110_envp_211" to i8*
  %"$$fundef_110_cloval_214" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_110_env_204"*, %TName_Bool*)* @"$fundef_110" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_110_env_voidp_213", 1
  %"$$fundef_110_env_b_215" = getelementptr inbounds %"$$fundef_110_env_204", %"$$fundef_110_env_204"* %"$$fundef_110_envp_211", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_110_env_b_215", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_110_cloval_214", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_109", align 8, !dbg !16
  %"$$retval_109_216" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_109", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_109_216"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 5, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %entry
  %"$consume_251" = sub i64 %"$gasrem_247", 5
  store i64 %"$consume_251", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !19
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 7, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 7
  store i64 %"$consume_256", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !19
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_108_env_205"*, %TName_Bool*)* @"$fundef_108" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !20
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 196, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_260"
  %"$consume_269" = sub i64 %"$gasrem_265", 196
  store i64 %"$consume_269", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !19
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 20, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 20
  store i64 %"$consume_274", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !19
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 12, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 12
  store i64 %"$consume_279", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !19
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 2, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 2
  store i64 %"$consume_284", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_112" = alloca %TName_Bool*, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %entry
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$adtval_295_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_295_salloc" = call i8* @_salloc(i8* %"$adtval_295_load", i64 1)
  %"$adtval_295" = bitcast i8* %"$adtval_295_salloc" to %CName_False*
  %"$adtgep_296" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_295", i32 0, i32 0
  store i8 1, i8* %"$adtgep_296", align 1
  %"$adtptr_297" = bitcast %CName_False* %"$adtval_295" to %TName_Bool*
  store %TName_Bool* %"$adtptr_297", %TName_Bool** %false, align 8, !dbg !22
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_293"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_301"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$adtval_308_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_308_salloc" = call i8* @_salloc(i8* %"$adtval_308_load", i64 1)
  %"$adtval_308" = bitcast i8* %"$adtval_308_salloc" to %CName_True*
  %"$adtgep_309" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_308", i32 0, i32 0
  store i8 0, i8* %"$adtgep_309", align 1
  %"$adtptr_310" = bitcast %CName_True* %"$adtval_308" to %TName_Bool*
  store %TName_Bool* %"$adtptr_310", %TName_Bool** %test, align 8, !dbg !23
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_306"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_314"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4, !dbg !24
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_319"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 4, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 4
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$execptr_load_331" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_input_332" = alloca %Uint32, align 8
  %"$input_333" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_333", %Uint32* %"$to_uint32_input_332", align 4
  %"$$to_uint32_input_332_334" = bitcast %Uint32* %"$to_uint32_input_332" to i8*
  %"$to_uint32_call_335" = call i8* @_to_uint32(i8* %"$execptr_load_331", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint32_input_332_334"), !dbg !25
  %"$to_uint32_336" = bitcast i8* %"$to_uint32_call_335" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_336", %TName_Option_Uint32** %resopt, align 8, !dbg !25
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_329"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 2, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 2
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$resopt_348" = load %TName_Option_Uint32*, %TName_Option_Uint32** %resopt, align 8
  %"$resopt_tag_349" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$resopt_348", i32 0, i32 0
  %"$resopt_tag_350" = load i8, i8* %"$resopt_tag_349", align 1
  switch i8 %"$resopt_tag_350", label %"$empty_default_351" [
    i8 0, label %"$Some_352"
    i8 1, label %"$None_397"
  ], !dbg !26

"$Some_352":                                      ; preds = %"$have_gas_345"
  %"$resopt_353" = bitcast %TName_Option_Uint32* %"$resopt_348" to %CName_Some_Uint32*
  %"$res_gep_354" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$resopt_353", i32 0, i32 1
  %"$res_load_355" = load %Uint32, %Uint32* %"$res_gep_354", align 4
  %res = alloca %Uint32, align 8
  store %Uint32 %"$res_load_355", %Uint32* %res, align 4
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$Some_352"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$Some_352"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %input_ = alloca %Uint32, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_, align 4, !dbg !27
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 4, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 4
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$execptr_load_376" = load i8*, i8** @_execptr, align 8
  %"$res_377" = load %Uint32, %Uint32* %res, align 4
  %"$input__378" = load %Uint32, %Uint32* %input_, align 4
  %"$eq_call_379" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_376", %Uint32 %"$res_377", %Uint32 %"$input__378"), !dbg !30
  store %TName_Bool* %"$eq_call_379", %TName_Bool** %test_, align 8, !dbg !30
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_374"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$BoolUtils.andb_84" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_386" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_387" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_386", 0
  %"$BoolUtils.andb_envptr_388" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_386", 1
  %"$test_389" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_390" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_387"(i8* %"$BoolUtils.andb_envptr_388", %TName_Bool* %"$test_389"), !dbg !31
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_390", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8, !dbg !31
  %"$BoolUtils.andb_85" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_84_391" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_fptr_392" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_391", 0
  %"$$BoolUtils.andb_84_envptr_393" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_391", 1
  %"$test__394" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_84_call_395" = call %TName_Bool* %"$$BoolUtils.andb_84_fptr_392"(i8* %"$$BoolUtils.andb_84_envptr_393", %TName_Bool* %"$test__394"), !dbg !31
  store %TName_Bool* %"$$BoolUtils.andb_84_call_395", %TName_Bool** %"$BoolUtils.andb_85", align 8, !dbg !31
  %"$$BoolUtils.andb_85_396" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_85", align 8
  store %TName_Bool* %"$$BoolUtils.andb_85_396", %TName_Bool** %"$test_6", align 8, !dbg !31
  br label %"$matchsucc_347"

"$None_397":                                      ; preds = %"$have_gas_345"
  %"$resopt_398" = bitcast %TName_Option_Uint32* %"$resopt_348" to %CName_None_Uint32*
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$None_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$None_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$false_404" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_404", %TName_Bool** %"$test_6", align 8, !dbg !32
  br label %"$matchsucc_347"

"$empty_default_351":                             ; preds = %"$have_gas_345"
  br label %"$matchsucc_347"

"$matchsucc_347":                                 ; preds = %"$have_gas_402", %"$have_gas_384", %"$empty_default_351"
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$matchsucc_347"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$matchsucc_347"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_7", align 8, !dbg !34
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 4, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 4
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$execptr_load_425" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_7_426" = alloca %Uint128, align 8
  %"$$input_7_427" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_427", %Uint128* %"$to_uint32_$input_7_426", align 8
  %"$$to_uint32_$input_7_426_428" = bitcast %Uint128* %"$to_uint32_$input_7_426" to i8*
  %"$to_uint32_call_429" = call i8* @_to_uint32(i8* %"$execptr_load_425", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint32_$input_7_426_428"), !dbg !35
  %"$to_uint32_430" = bitcast i8* %"$to_uint32_call_429" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_430", %TName_Option_Uint32** %"$resopt_8", align 8, !dbg !35
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_423"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 2, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 2
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$$resopt_8_442" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_8", align 8
  %"$$resopt_8_tag_443" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_8_442", i32 0, i32 0
  %"$$resopt_8_tag_444" = load i8, i8* %"$$resopt_8_tag_443", align 1
  switch i8 %"$$resopt_8_tag_444", label %"$empty_default_445" [
    i8 0, label %"$Some_446"
    i8 1, label %"$None_491"
  ], !dbg !36

"$Some_446":                                      ; preds = %"$have_gas_439"
  %"$$resopt_8_447" = bitcast %TName_Option_Uint32* %"$$resopt_8_442" to %CName_Some_Uint32*
  %"$res_gep_448" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_8_447", i32 0, i32 1
  %"$res_load_449" = load %Uint32, %Uint32* %"$res_gep_448", align 4
  %res1 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_449", %Uint32* %res1, align 4
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$Some_446"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$Some_446"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %input_2 = alloca %Uint32, align 8
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_2, align 4, !dbg !37
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 4, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 4
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %"$execptr_load_470" = load i8*, i8** @_execptr, align 8
  %"$res_471" = load %Uint32, %Uint32* %res1, align 4
  %"$input__472" = load %Uint32, %Uint32* %input_2, align 4
  %"$eq_call_473" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_470", %Uint32 %"$res_471", %Uint32 %"$input__472"), !dbg !40
  store %TName_Bool* %"$eq_call_473", %TName_Bool** %test_3, align 8, !dbg !40
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_468"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$BoolUtils.andb_86" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_480" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_481" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_480", 0
  %"$BoolUtils.andb_envptr_482" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_480", 1
  %"$$test_6_483" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_484" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_481"(i8* %"$BoolUtils.andb_envptr_482", %TName_Bool* %"$$test_6_483"), !dbg !41
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_484", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8, !dbg !41
  %"$BoolUtils.andb_87" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_86_485" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_fptr_486" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_485", 0
  %"$$BoolUtils.andb_86_envptr_487" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_485", 1
  %"$test__488" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_86_call_489" = call %TName_Bool* %"$$BoolUtils.andb_86_fptr_486"(i8* %"$$BoolUtils.andb_86_envptr_487", %TName_Bool* %"$test__488"), !dbg !41
  store %TName_Bool* %"$$BoolUtils.andb_86_call_489", %TName_Bool** %"$BoolUtils.andb_87", align 8, !dbg !41
  %"$$BoolUtils.andb_87_490" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_87", align 8
  store %TName_Bool* %"$$BoolUtils.andb_87_490", %TName_Bool** %"$test_9", align 8, !dbg !41
  br label %"$matchsucc_441"

"$None_491":                                      ; preds = %"$have_gas_439"
  %"$$resopt_8_492" = bitcast %TName_Option_Uint32* %"$$resopt_8_442" to %CName_None_Uint32*
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$None_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$None_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$false_498" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_498", %TName_Bool** %"$test_9", align 8, !dbg !42
  br label %"$matchsucc_441"

"$empty_default_445":                             ; preds = %"$have_gas_439"
  br label %"$matchsucc_441"

"$matchsucc_441":                                 ; preds = %"$have_gas_496", %"$have_gas_478", %"$empty_default_445"
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$matchsucc_441"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$matchsucc_441"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$input_10" = alloca %Uint64, align 8
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_10", align 8, !dbg !44
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 4, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 4
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$execptr_load_519" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_10_520" = alloca %Uint64, align 8
  %"$$input_10_521" = load %Uint64, %Uint64* %"$input_10", align 8
  store %Uint64 %"$$input_10_521", %Uint64* %"$to_uint32_$input_10_520", align 8
  %"$$to_uint32_$input_10_520_522" = bitcast %Uint64* %"$to_uint32_$input_10_520" to i8*
  %"$to_uint32_call_523" = call i8* @_to_uint32(i8* %"$execptr_load_519", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", i8* %"$$to_uint32_$input_10_520_522"), !dbg !45
  %"$to_uint32_524" = bitcast i8* %"$to_uint32_call_523" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_524", %TName_Option_Uint32** %"$resopt_11", align 8, !dbg !45
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_517"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 2, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_528"
  %"$consume_534" = sub i64 %"$gasrem_530", 2
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$$resopt_11_536" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_11", align 8
  %"$$resopt_11_tag_537" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_11_536", i32 0, i32 0
  %"$$resopt_11_tag_538" = load i8, i8* %"$$resopt_11_tag_537", align 1
  switch i8 %"$$resopt_11_tag_538", label %"$empty_default_539" [
    i8 0, label %"$Some_540"
    i8 1, label %"$None_550"
  ], !dbg !46

"$Some_540":                                      ; preds = %"$have_gas_533"
  %"$$resopt_11_541" = bitcast %TName_Option_Uint32* %"$$resopt_11_536" to %CName_Some_Uint32*
  %"$$$resopt_11_73_gep_542" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_11_541", i32 0, i32 1
  %"$$$resopt_11_73_load_543" = load %Uint32, %Uint32* %"$$$resopt_11_73_gep_542", align 4
  %"$$resopt_11_73" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_11_73_load_543", %Uint32* %"$$resopt_11_73", align 4
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$Some_540"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$Some_540"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$false_549" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_549", %TName_Bool** %"$test_12", align 8, !dbg !47
  br label %"$matchsucc_535"

"$None_550":                                      ; preds = %"$have_gas_533"
  %"$$resopt_11_551" = bitcast %TName_Option_Uint32* %"$$resopt_11_536" to %CName_None_Uint32*
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$None_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$None_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$$test_9_557" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  store %TName_Bool* %"$$test_9_557", %TName_Bool** %"$test_12", align 8, !dbg !50
  br label %"$matchsucc_535"

"$empty_default_539":                             ; preds = %"$have_gas_533"
  br label %"$matchsucc_535"

"$matchsucc_535":                                 ; preds = %"$have_gas_555", %"$have_gas_547", %"$empty_default_539"
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$matchsucc_535"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$matchsucc_535"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint128, align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_13", align 8, !dbg !52
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_566"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 4, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 4
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %"$execptr_load_578" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_13_579" = alloca %Uint128, align 8
  %"$$input_13_580" = load %Uint128, %Uint128* %"$input_13", align 8
  store %Uint128 %"$$input_13_580", %Uint128* %"$to_uint32_$input_13_579", align 8
  %"$$to_uint32_$input_13_579_581" = bitcast %Uint128* %"$to_uint32_$input_13_579" to i8*
  %"$to_uint32_call_582" = call i8* @_to_uint32(i8* %"$execptr_load_578", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint32_$input_13_579_581"), !dbg !53
  %"$to_uint32_583" = bitcast i8* %"$to_uint32_call_582" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_583", %TName_Option_Uint32** %"$resopt_14", align 8, !dbg !53
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 1, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_576"
  %"$consume_588" = sub i64 %"$gasrem_584", 1
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 2, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_587"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_587"
  %"$consume_593" = sub i64 %"$gasrem_589", 2
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %"$$resopt_14_595" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_14", align 8
  %"$$resopt_14_tag_596" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_14_595", i32 0, i32 0
  %"$$resopt_14_tag_597" = load i8, i8* %"$$resopt_14_tag_596", align 1
  switch i8 %"$$resopt_14_tag_597", label %"$empty_default_598" [
    i8 0, label %"$Some_599"
    i8 1, label %"$None_609"
  ], !dbg !54

"$Some_599":                                      ; preds = %"$have_gas_592"
  %"$$resopt_14_600" = bitcast %TName_Option_Uint32* %"$$resopt_14_595" to %CName_Some_Uint32*
  %"$$$resopt_14_74_gep_601" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_14_600", i32 0, i32 1
  %"$$$resopt_14_74_load_602" = load %Uint32, %Uint32* %"$$$resopt_14_74_gep_601", align 4
  %"$$resopt_14_74" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_14_74_load_602", %Uint32* %"$$resopt_14_74", align 4
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$Some_599"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$Some_599"
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$false_608" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_608", %TName_Bool** %"$test_15", align 8, !dbg !55
  br label %"$matchsucc_594"

"$None_609":                                      ; preds = %"$have_gas_592"
  %"$$resopt_14_610" = bitcast %TName_Option_Uint32* %"$$resopt_14_595" to %CName_None_Uint32*
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 1, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$None_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$None_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 1
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$$test_12_616" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  store %TName_Bool* %"$$test_12_616", %TName_Bool** %"$test_15", align 8, !dbg !58
  br label %"$matchsucc_594"

"$empty_default_598":                             ; preds = %"$have_gas_592"
  br label %"$matchsucc_594"

"$matchsucc_594":                                 ; preds = %"$have_gas_614", %"$have_gas_606", %"$empty_default_598"
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$matchsucc_594"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$matchsucc_594"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint256, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551615 }, %Uint256* %"$input_16", align 8, !dbg !60
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_625"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 4, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 4
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %"$execptr_load_637" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_16_638" = alloca %Uint256, align 8
  %"$$input_16_639" = load %Uint256, %Uint256* %"$input_16", align 8
  store %Uint256 %"$$input_16_639", %Uint256* %"$to_uint32_$input_16_638", align 8
  %"$$to_uint32_$input_16_638_640" = bitcast %Uint256* %"$to_uint32_$input_16_638" to i8*
  %"$to_uint32_call_641" = call i8* @_to_uint32(i8* %"$execptr_load_637", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint32_$input_16_638_640"), !dbg !61
  %"$to_uint32_642" = bitcast i8* %"$to_uint32_call_641" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_642", %TName_Option_Uint32** %"$resopt_17", align 8, !dbg !61
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 1, %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %"$have_gas_635"
  %"$consume_647" = sub i64 %"$gasrem_643", 1
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 2, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %"$have_gas_646"
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %"$have_gas_646"
  %"$consume_652" = sub i64 %"$gasrem_648", 2
  store i64 %"$consume_652", i64* @_gasrem, align 8
  %"$$resopt_17_654" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_17", align 8
  %"$$resopt_17_tag_655" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_17_654", i32 0, i32 0
  %"$$resopt_17_tag_656" = load i8, i8* %"$$resopt_17_tag_655", align 1
  switch i8 %"$$resopt_17_tag_656", label %"$empty_default_657" [
    i8 0, label %"$Some_658"
    i8 1, label %"$None_668"
  ], !dbg !62

"$Some_658":                                      ; preds = %"$have_gas_651"
  %"$$resopt_17_659" = bitcast %TName_Option_Uint32* %"$$resopt_17_654" to %CName_Some_Uint32*
  %"$$$resopt_17_75_gep_660" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_17_659", i32 0, i32 1
  %"$$$resopt_17_75_load_661" = load %Uint32, %Uint32* %"$$$resopt_17_75_gep_660", align 4
  %"$$resopt_17_75" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_17_75_load_661", %Uint32* %"$$resopt_17_75", align 4
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$Some_658"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$Some_658"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$false_667" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_667", %TName_Bool** %"$test_18", align 8, !dbg !63
  br label %"$matchsucc_653"

"$None_668":                                      ; preds = %"$have_gas_651"
  %"$$resopt_17_669" = bitcast %TName_Option_Uint32* %"$$resopt_17_654" to %CName_None_Uint32*
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$None_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$None_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$$test_15_675" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  store %TName_Bool* %"$$test_15_675", %TName_Bool** %"$test_18", align 8, !dbg !66
  br label %"$matchsucc_653"

"$empty_default_657":                             ; preds = %"$have_gas_651"
  br label %"$matchsucc_653"

"$matchsucc_653":                                 ; preds = %"$have_gas_673", %"$have_gas_665", %"$empty_default_657"
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$matchsucc_653"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$matchsucc_653"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  %"$input_19" = alloca %Uint32, align 8
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_679"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_679"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %"$input_19", align 4, !dbg !68
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 4, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 4
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$execptr_load_696" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_19_697" = alloca %Uint32, align 8
  %"$$input_19_698" = load %Uint32, %Uint32* %"$input_19", align 4
  store %Uint32 %"$$input_19_698", %Uint32* %"$to_uint64_$input_19_697", align 4
  %"$$to_uint64_$input_19_697_699" = bitcast %Uint32* %"$to_uint64_$input_19_697" to i8*
  %"$to_uint64_call_700" = call i8* @_to_uint64(i8* %"$execptr_load_696", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint64_$input_19_697_699"), !dbg !69
  %"$to_uint64_701" = bitcast i8* %"$to_uint64_call_700" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_701", %TName_Option_Uint64** %"$resopt_20", align 8, !dbg !69
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_694"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 2, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_705"
  %"$consume_711" = sub i64 %"$gasrem_707", 2
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$$resopt_20_713" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_20", align 8
  %"$$resopt_20_tag_714" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_20_713", i32 0, i32 0
  %"$$resopt_20_tag_715" = load i8, i8* %"$$resopt_20_tag_714", align 1
  switch i8 %"$$resopt_20_tag_715", label %"$empty_default_716" [
    i8 0, label %"$Some_717"
    i8 1, label %"$None_762"
  ], !dbg !70

"$Some_717":                                      ; preds = %"$have_gas_710"
  %"$$resopt_20_718" = bitcast %TName_Option_Uint64* %"$$resopt_20_713" to %CName_Some_Uint64*
  %"$res_gep_719" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_20_718", i32 0, i32 1
  %"$res_load_720" = load %Uint64, %Uint64* %"$res_gep_719", align 8
  %res4 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_720", %Uint64* %res4, align 8
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$Some_717"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$Some_717"
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem, align 8
  %input_5 = alloca %Uint64, align 8
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_724"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_724"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %input_5, align 8, !dbg !71
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 1, %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %"$have_gas_729"
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %"$have_gas_729"
  %"$consume_735" = sub i64 %"$gasrem_731", 1
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 4, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_734"
  %"$consume_740" = sub i64 %"$gasrem_736", 4
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$execptr_load_741" = load i8*, i8** @_execptr, align 8
  %"$res_742" = load %Uint64, %Uint64* %res4, align 8
  %"$input__743" = load %Uint64, %Uint64* %input_5, align 8
  %"$eq_call_744" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_741", %Uint64 %"$res_742", %Uint64 %"$input__743"), !dbg !74
  store %TName_Bool* %"$eq_call_744", %TName_Bool** %test_6, align 8, !dbg !74
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_739"
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$BoolUtils.andb_88" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_751" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_752" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_751", 0
  %"$BoolUtils.andb_envptr_753" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_751", 1
  %"$$test_18_754" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_755" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_752"(i8* %"$BoolUtils.andb_envptr_753", %TName_Bool* %"$$test_18_754"), !dbg !75
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_755", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8, !dbg !75
  %"$BoolUtils.andb_89" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_88_756" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_fptr_757" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_756", 0
  %"$$BoolUtils.andb_88_envptr_758" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_756", 1
  %"$test__759" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_88_call_760" = call %TName_Bool* %"$$BoolUtils.andb_88_fptr_757"(i8* %"$$BoolUtils.andb_88_envptr_758", %TName_Bool* %"$test__759"), !dbg !75
  store %TName_Bool* %"$$BoolUtils.andb_88_call_760", %TName_Bool** %"$BoolUtils.andb_89", align 8, !dbg !75
  %"$$BoolUtils.andb_89_761" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_89", align 8
  store %TName_Bool* %"$$BoolUtils.andb_89_761", %TName_Bool** %"$test_21", align 8, !dbg !75
  br label %"$matchsucc_712"

"$None_762":                                      ; preds = %"$have_gas_710"
  %"$$resopt_20_763" = bitcast %TName_Option_Uint64* %"$$resopt_20_713" to %CName_None_Uint64*
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$None_762"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$None_762"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$false_769" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_769", %TName_Bool** %"$test_21", align 8, !dbg !76
  br label %"$matchsucc_712"

"$empty_default_716":                             ; preds = %"$have_gas_710"
  br label %"$matchsucc_712"

"$matchsucc_712":                                 ; preds = %"$have_gas_767", %"$have_gas_749", %"$empty_default_716"
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 1, %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$matchsucc_712"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$matchsucc_712"
  %"$consume_774" = sub i64 %"$gasrem_770", 1
  store i64 %"$consume_774", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_773"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_773"
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_22", align 8, !dbg !78
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_778"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 4, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_783"
  %"$consume_789" = sub i64 %"$gasrem_785", 4
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$execptr_load_790" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_22_791" = alloca %Uint64, align 8
  %"$$input_22_792" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_792", %Uint64* %"$to_uint64_$input_22_791", align 8
  %"$$to_uint64_$input_22_791_793" = bitcast %Uint64* %"$to_uint64_$input_22_791" to i8*
  %"$to_uint64_call_794" = call i8* @_to_uint64(i8* %"$execptr_load_790", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", i8* %"$$to_uint64_$input_22_791_793"), !dbg !79
  %"$to_uint64_795" = bitcast i8* %"$to_uint64_call_794" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_795", %TName_Option_Uint64** %"$resopt_23", align 8, !dbg !79
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$have_gas_788"
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_802" = icmp ugt i64 2, %"$gasrem_801"
  br i1 %"$gascmp_802", label %"$out_of_gas_803", label %"$have_gas_804"

"$out_of_gas_803":                                ; preds = %"$have_gas_799"
  call void @_out_of_gas()
  br label %"$have_gas_804"

"$have_gas_804":                                  ; preds = %"$out_of_gas_803", %"$have_gas_799"
  %"$consume_805" = sub i64 %"$gasrem_801", 2
  store i64 %"$consume_805", i64* @_gasrem, align 8
  %"$$resopt_23_807" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_23", align 8
  %"$$resopt_23_tag_808" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_23_807", i32 0, i32 0
  %"$$resopt_23_tag_809" = load i8, i8* %"$$resopt_23_tag_808", align 1
  switch i8 %"$$resopt_23_tag_809", label %"$empty_default_810" [
    i8 0, label %"$Some_811"
    i8 1, label %"$None_856"
  ], !dbg !80

"$Some_811":                                      ; preds = %"$have_gas_804"
  %"$$resopt_23_812" = bitcast %TName_Option_Uint64* %"$$resopt_23_807" to %CName_Some_Uint64*
  %"$res_gep_813" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_23_812", i32 0, i32 1
  %"$res_load_814" = load %Uint64, %Uint64* %"$res_gep_813", align 8
  %res7 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_814", %Uint64* %res7, align 8
  %"$gasrem_815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_816" = icmp ugt i64 1, %"$gasrem_815"
  br i1 %"$gascmp_816", label %"$out_of_gas_817", label %"$have_gas_818"

"$out_of_gas_817":                                ; preds = %"$Some_811"
  call void @_out_of_gas()
  br label %"$have_gas_818"

"$have_gas_818":                                  ; preds = %"$out_of_gas_817", %"$Some_811"
  %"$consume_819" = sub i64 %"$gasrem_815", 1
  store i64 %"$consume_819", i64* @_gasrem, align 8
  %input_8 = alloca %Uint64, align 8
  %"$gasrem_820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %"$have_gas_818"
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %"$have_gas_818"
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_8, align 8, !dbg !81
  %"$gasrem_825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_826" = icmp ugt i64 1, %"$gasrem_825"
  br i1 %"$gascmp_826", label %"$out_of_gas_827", label %"$have_gas_828"

"$out_of_gas_827":                                ; preds = %"$have_gas_823"
  call void @_out_of_gas()
  br label %"$have_gas_828"

"$have_gas_828":                                  ; preds = %"$out_of_gas_827", %"$have_gas_823"
  %"$consume_829" = sub i64 %"$gasrem_825", 1
  store i64 %"$consume_829", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  %"$gasrem_830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_831" = icmp ugt i64 4, %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %"$have_gas_828"
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %"$have_gas_828"
  %"$consume_834" = sub i64 %"$gasrem_830", 4
  store i64 %"$consume_834", i64* @_gasrem, align 8
  %"$execptr_load_835" = load i8*, i8** @_execptr, align 8
  %"$res_836" = load %Uint64, %Uint64* %res7, align 8
  %"$input__837" = load %Uint64, %Uint64* %input_8, align 8
  %"$eq_call_838" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_835", %Uint64 %"$res_836", %Uint64 %"$input__837"), !dbg !84
  store %TName_Bool* %"$eq_call_838", %TName_Bool** %test_9, align 8, !dbg !84
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_833"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_833"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$BoolUtils.andb_90" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_845" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_846" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_845", 0
  %"$BoolUtils.andb_envptr_847" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_845", 1
  %"$$test_21_848" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  %"$BoolUtils.andb_call_849" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_846"(i8* %"$BoolUtils.andb_envptr_847", %TName_Bool* %"$$test_21_848"), !dbg !85
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_849", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8, !dbg !85
  %"$BoolUtils.andb_91" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_90_850" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_fptr_851" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_850", 0
  %"$$BoolUtils.andb_90_envptr_852" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_850", 1
  %"$test__853" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_90_call_854" = call %TName_Bool* %"$$BoolUtils.andb_90_fptr_851"(i8* %"$$BoolUtils.andb_90_envptr_852", %TName_Bool* %"$test__853"), !dbg !85
  store %TName_Bool* %"$$BoolUtils.andb_90_call_854", %TName_Bool** %"$BoolUtils.andb_91", align 8, !dbg !85
  %"$$BoolUtils.andb_91_855" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_91", align 8
  store %TName_Bool* %"$$BoolUtils.andb_91_855", %TName_Bool** %"$test_24", align 8, !dbg !85
  br label %"$matchsucc_806"

"$None_856":                                      ; preds = %"$have_gas_804"
  %"$$resopt_23_857" = bitcast %TName_Option_Uint64* %"$$resopt_23_807" to %CName_None_Uint64*
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$None_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$None_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$false_863" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_863", %TName_Bool** %"$test_24", align 8, !dbg !86
  br label %"$matchsucc_806"

"$empty_default_810":                             ; preds = %"$have_gas_804"
  br label %"$matchsucc_806"

"$matchsucc_806":                                 ; preds = %"$have_gas_861", %"$have_gas_843", %"$empty_default_810"
  %"$gasrem_864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_865" = icmp ugt i64 1, %"$gasrem_864"
  br i1 %"$gascmp_865", label %"$out_of_gas_866", label %"$have_gas_867"

"$out_of_gas_866":                                ; preds = %"$matchsucc_806"
  call void @_out_of_gas()
  br label %"$have_gas_867"

"$have_gas_867":                                  ; preds = %"$out_of_gas_866", %"$matchsucc_806"
  %"$consume_868" = sub i64 %"$gasrem_864", 1
  store i64 %"$consume_868", i64* @_gasrem, align 8
  %"$input_25" = alloca %Uint128, align 8
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_867"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_867"
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_25", align 8, !dbg !88
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 1, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %"$have_gas_872"
  %"$consume_878" = sub i64 %"$gasrem_874", 1
  store i64 %"$consume_878", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 4, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_877"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_877"
  %"$consume_883" = sub i64 %"$gasrem_879", 4
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %"$execptr_load_884" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_25_885" = alloca %Uint128, align 8
  %"$$input_25_886" = load %Uint128, %Uint128* %"$input_25", align 8
  store %Uint128 %"$$input_25_886", %Uint128* %"$to_uint64_$input_25_885", align 8
  %"$$to_uint64_$input_25_885_887" = bitcast %Uint128* %"$to_uint64_$input_25_885" to i8*
  %"$to_uint64_call_888" = call i8* @_to_uint64(i8* %"$execptr_load_884", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint64_$input_25_885_887"), !dbg !89
  %"$to_uint64_889" = bitcast i8* %"$to_uint64_call_888" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_889", %TName_Option_Uint64** %"$resopt_26", align 8, !dbg !89
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_882"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 2, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_893"
  %"$consume_899" = sub i64 %"$gasrem_895", 2
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %"$$resopt_26_901" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_26", align 8
  %"$$resopt_26_tag_902" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_26_901", i32 0, i32 0
  %"$$resopt_26_tag_903" = load i8, i8* %"$$resopt_26_tag_902", align 1
  switch i8 %"$$resopt_26_tag_903", label %"$empty_default_904" [
    i8 0, label %"$Some_905"
    i8 1, label %"$None_950"
  ], !dbg !90

"$Some_905":                                      ; preds = %"$have_gas_898"
  %"$$resopt_26_906" = bitcast %TName_Option_Uint64* %"$$resopt_26_901" to %CName_Some_Uint64*
  %"$res_gep_907" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_26_906", i32 0, i32 1
  %"$res_load_908" = load %Uint64, %Uint64* %"$res_gep_907", align 8
  %res10 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_908", %Uint64* %res10, align 8
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$Some_905"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$Some_905"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %input_11 = alloca %Uint64, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_11, align 8, !dbg !91
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 1, %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_917"
  %"$consume_923" = sub i64 %"$gasrem_919", 1
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 4, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 4
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$execptr_load_929" = load i8*, i8** @_execptr, align 8
  %"$res_930" = load %Uint64, %Uint64* %res10, align 8
  %"$input__931" = load %Uint64, %Uint64* %input_11, align 8
  %"$eq_call_932" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_929", %Uint64 %"$res_930", %Uint64 %"$input__931"), !dbg !94
  store %TName_Bool* %"$eq_call_932", %TName_Bool** %test_12, align 8, !dbg !94
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 1, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_927"
  %"$consume_938" = sub i64 %"$gasrem_934", 1
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$BoolUtils.andb_92" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_939" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_940" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_939", 0
  %"$BoolUtils.andb_envptr_941" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_939", 1
  %"$$test_24_942" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_943" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_940"(i8* %"$BoolUtils.andb_envptr_941", %TName_Bool* %"$$test_24_942"), !dbg !95
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_943", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8, !dbg !95
  %"$BoolUtils.andb_93" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_92_944" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_fptr_945" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_944", 0
  %"$$BoolUtils.andb_92_envptr_946" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_944", 1
  %"$test__947" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_92_call_948" = call %TName_Bool* %"$$BoolUtils.andb_92_fptr_945"(i8* %"$$BoolUtils.andb_92_envptr_946", %TName_Bool* %"$test__947"), !dbg !95
  store %TName_Bool* %"$$BoolUtils.andb_92_call_948", %TName_Bool** %"$BoolUtils.andb_93", align 8, !dbg !95
  %"$$BoolUtils.andb_93_949" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_93", align 8
  store %TName_Bool* %"$$BoolUtils.andb_93_949", %TName_Bool** %"$test_27", align 8, !dbg !95
  br label %"$matchsucc_900"

"$None_950":                                      ; preds = %"$have_gas_898"
  %"$$resopt_26_951" = bitcast %TName_Option_Uint64* %"$$resopt_26_901" to %CName_None_Uint64*
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$None_950"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$None_950"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$false_957" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_957", %TName_Bool** %"$test_27", align 8, !dbg !96
  br label %"$matchsucc_900"

"$empty_default_904":                             ; preds = %"$have_gas_898"
  br label %"$matchsucc_900"

"$matchsucc_900":                                 ; preds = %"$have_gas_955", %"$have_gas_937", %"$empty_default_904"
  %"$gasrem_958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_959" = icmp ugt i64 1, %"$gasrem_958"
  br i1 %"$gascmp_959", label %"$out_of_gas_960", label %"$have_gas_961"

"$out_of_gas_960":                                ; preds = %"$matchsucc_900"
  call void @_out_of_gas()
  br label %"$have_gas_961"

"$have_gas_961":                                  ; preds = %"$out_of_gas_960", %"$matchsucc_900"
  %"$consume_962" = sub i64 %"$gasrem_958", 1
  store i64 %"$consume_962", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint128, align 8
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 1, %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %"$have_gas_961"
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %"$have_gas_961"
  %"$consume_967" = sub i64 %"$gasrem_963", 1
  store i64 %"$consume_967", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551616 }, %Uint128* %"$input_28", align 8, !dbg !98
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_966"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_966"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 4, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_971"
  %"$consume_977" = sub i64 %"$gasrem_973", 4
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$execptr_load_978" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_28_979" = alloca %Uint128, align 8
  %"$$input_28_980" = load %Uint128, %Uint128* %"$input_28", align 8
  store %Uint128 %"$$input_28_980", %Uint128* %"$to_uint64_$input_28_979", align 8
  %"$$to_uint64_$input_28_979_981" = bitcast %Uint128* %"$to_uint64_$input_28_979" to i8*
  %"$to_uint64_call_982" = call i8* @_to_uint64(i8* %"$execptr_load_978", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint64_$input_28_979_981"), !dbg !99
  %"$to_uint64_983" = bitcast i8* %"$to_uint64_call_982" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_983", %TName_Option_Uint64** %"$resopt_29", align 8, !dbg !99
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 1, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_976"
  %"$consume_988" = sub i64 %"$gasrem_984", 1
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 2, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_987"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_987"
  %"$consume_993" = sub i64 %"$gasrem_989", 2
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$$resopt_29_995" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_29", align 8
  %"$$resopt_29_tag_996" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_29_995", i32 0, i32 0
  %"$$resopt_29_tag_997" = load i8, i8* %"$$resopt_29_tag_996", align 1
  switch i8 %"$$resopt_29_tag_997", label %"$empty_default_998" [
    i8 0, label %"$Some_999"
    i8 1, label %"$None_1009"
  ], !dbg !100

"$Some_999":                                      ; preds = %"$have_gas_992"
  %"$$resopt_29_1000" = bitcast %TName_Option_Uint64* %"$$resopt_29_995" to %CName_Some_Uint64*
  %"$$$resopt_29_76_gep_1001" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_29_1000", i32 0, i32 1
  %"$$$resopt_29_76_load_1002" = load %Uint64, %Uint64* %"$$$resopt_29_76_gep_1001", align 8
  %"$$resopt_29_76" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_29_76_load_1002", %Uint64* %"$$resopt_29_76", align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$Some_999"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$Some_999"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %"$false_1008" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1008", %TName_Bool** %"$test_30", align 8, !dbg !101
  br label %"$matchsucc_994"

"$None_1009":                                     ; preds = %"$have_gas_992"
  %"$$resopt_29_1010" = bitcast %TName_Option_Uint64* %"$$resopt_29_995" to %CName_None_Uint64*
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$None_1009"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$None_1009"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  %"$$test_27_1016" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  store %TName_Bool* %"$$test_27_1016", %TName_Bool** %"$test_30", align 8, !dbg !104
  br label %"$matchsucc_994"

"$empty_default_998":                             ; preds = %"$have_gas_992"
  br label %"$matchsucc_994"

"$matchsucc_994":                                 ; preds = %"$have_gas_1014", %"$have_gas_1006", %"$empty_default_998"
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 1, %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$matchsucc_994"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$matchsucc_994"
  %"$consume_1021" = sub i64 %"$gasrem_1017", 1
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint256, align 8
  %"$gasrem_1022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1023" = icmp ugt i64 1, %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1020"
  %"$consume_1026" = sub i64 %"$gasrem_1022", 1
  store i64 %"$consume_1026", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551616 }, %Uint256* %"$input_31", align 8, !dbg !106
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 1, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1025"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1025"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 1
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 4, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1030"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1030"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 4
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$execptr_load_1037" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_31_1038" = alloca %Uint256, align 8
  %"$$input_31_1039" = load %Uint256, %Uint256* %"$input_31", align 8
  store %Uint256 %"$$input_31_1039", %Uint256* %"$to_uint64_$input_31_1038", align 8
  %"$$to_uint64_$input_31_1038_1040" = bitcast %Uint256* %"$to_uint64_$input_31_1038" to i8*
  %"$to_uint64_call_1041" = call i8* @_to_uint64(i8* %"$execptr_load_1037", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint64_$input_31_1038_1040"), !dbg !107
  %"$to_uint64_1042" = bitcast i8* %"$to_uint64_call_1041" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_1042", %TName_Option_Uint64** %"$resopt_32", align 8, !dbg !107
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1035"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 2, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1046"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 2
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %"$$resopt_32_1054" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_32", align 8
  %"$$resopt_32_tag_1055" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_32_1054", i32 0, i32 0
  %"$$resopt_32_tag_1056" = load i8, i8* %"$$resopt_32_tag_1055", align 1
  switch i8 %"$$resopt_32_tag_1056", label %"$empty_default_1057" [
    i8 0, label %"$Some_1058"
    i8 1, label %"$None_1068"
  ], !dbg !108

"$Some_1058":                                     ; preds = %"$have_gas_1051"
  %"$$resopt_32_1059" = bitcast %TName_Option_Uint64* %"$$resopt_32_1054" to %CName_Some_Uint64*
  %"$$$resopt_32_77_gep_1060" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_32_1059", i32 0, i32 1
  %"$$$resopt_32_77_load_1061" = load %Uint64, %Uint64* %"$$$resopt_32_77_gep_1060", align 8
  %"$$resopt_32_77" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_32_77_load_1061", %Uint64* %"$$resopt_32_77", align 8
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 1, %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$Some_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$Some_1058"
  %"$consume_1066" = sub i64 %"$gasrem_1062", 1
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  %"$false_1067" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1067", %TName_Bool** %"$test_33", align 8, !dbg !109
  br label %"$matchsucc_1053"

"$None_1068":                                     ; preds = %"$have_gas_1051"
  %"$$resopt_32_1069" = bitcast %TName_Option_Uint64* %"$$resopt_32_1054" to %CName_None_Uint64*
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$None_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$None_1068"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %"$$test_30_1075" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  store %TName_Bool* %"$$test_30_1075", %TName_Bool** %"$test_33", align 8, !dbg !112
  br label %"$matchsucc_1053"

"$empty_default_1057":                            ; preds = %"$have_gas_1051"
  br label %"$matchsucc_1053"

"$matchsucc_1053":                                ; preds = %"$have_gas_1073", %"$have_gas_1065", %"$empty_default_1057"
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$matchsucc_1053"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$matchsucc_1053"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %"$input_34" = alloca %Uint128, align 8
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1079"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_34", align 8, !dbg !114
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1084"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1092" = icmp ugt i64 8, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1089"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 8
  store i64 %"$consume_1095", i64* @_gasrem, align 8
  %"$execptr_load_1096" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_34_1097" = alloca %Uint128, align 8
  %"$$input_34_1098" = load %Uint128, %Uint128* %"$input_34", align 8
  store %Uint128 %"$$input_34_1098", %Uint128* %"$to_uint128_$input_34_1097", align 8
  %"$$to_uint128_$input_34_1097_1099" = bitcast %Uint128* %"$to_uint128_$input_34_1097" to i8*
  %"$to_uint128_call_1100" = call i8* @_to_uint128(i8* %"$execptr_load_1096", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint128_$input_34_1097_1099"), !dbg !115
  %"$to_uint128_1101" = bitcast i8* %"$to_uint128_call_1100" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1101", %TName_Option_Uint128** %"$resopt_35", align 8, !dbg !115
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1094"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 2, %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1105"
  %"$consume_1111" = sub i64 %"$gasrem_1107", 2
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  %"$$resopt_35_1113" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_35", align 8
  %"$$resopt_35_tag_1114" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_35_1113", i32 0, i32 0
  %"$$resopt_35_tag_1115" = load i8, i8* %"$$resopt_35_tag_1114", align 1
  switch i8 %"$$resopt_35_tag_1115", label %"$empty_default_1116" [
    i8 0, label %"$Some_1117"
    i8 1, label %"$None_1163"
  ], !dbg !116

"$Some_1117":                                     ; preds = %"$have_gas_1110"
  %"$$resopt_35_1118" = bitcast %TName_Option_Uint128* %"$$resopt_35_1113" to %CName_Some_Uint128*
  %"$res_gep_1119" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_35_1118", i32 0, i32 1
  %"$res_load_1120" = load %Uint128, %Uint128* %"$res_gep_1119", align 8
  %res13 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1120", %Uint128* %res13, align 8
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$Some_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$Some_1117"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %input_14 = alloca %Uint128, align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %input_14, align 8, !dbg !117
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 1, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1129"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 1
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 8, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1134"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1134"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 8
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %"$execptr_load_1142" = load i8*, i8** @_execptr, align 8
  %"$res_1143" = load %Uint128, %Uint128* %res13, align 8
  %"$input__1144" = load %Uint128, %Uint128* %input_14, align 8
  %"$eq_call_1145" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1142", %Uint128 %"$res_1143", %Uint128 %"$input__1144"), !dbg !120
  store %TName_Bool* %"$eq_call_1145", %TName_Bool** %test_15, align 8, !dbg !120
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1140"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  %"$BoolUtils.andb_94" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1152" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1153" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1152", 0
  %"$BoolUtils.andb_envptr_1154" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1152", 1
  %"$$test_33_1155" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1156" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1153"(i8* %"$BoolUtils.andb_envptr_1154", %TName_Bool* %"$$test_33_1155"), !dbg !121
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1156", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8, !dbg !121
  %"$BoolUtils.andb_95" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_94_1157" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_fptr_1158" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1157", 0
  %"$$BoolUtils.andb_94_envptr_1159" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1157", 1
  %"$test__1160" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_94_call_1161" = call %TName_Bool* %"$$BoolUtils.andb_94_fptr_1158"(i8* %"$$BoolUtils.andb_94_envptr_1159", %TName_Bool* %"$test__1160"), !dbg !121
  store %TName_Bool* %"$$BoolUtils.andb_94_call_1161", %TName_Bool** %"$BoolUtils.andb_95", align 8, !dbg !121
  %"$$BoolUtils.andb_95_1162" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_95", align 8
  store %TName_Bool* %"$$BoolUtils.andb_95_1162", %TName_Bool** %"$test_36", align 8, !dbg !121
  br label %"$matchsucc_1112"

"$None_1163":                                     ; preds = %"$have_gas_1110"
  %"$$resopt_35_1164" = bitcast %TName_Option_Uint128* %"$$resopt_35_1113" to %CName_None_Uint128*
  %"$gasrem_1165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1166" = icmp ugt i64 1, %"$gasrem_1165"
  br i1 %"$gascmp_1166", label %"$out_of_gas_1167", label %"$have_gas_1168"

"$out_of_gas_1167":                               ; preds = %"$None_1163"
  call void @_out_of_gas()
  br label %"$have_gas_1168"

"$have_gas_1168":                                 ; preds = %"$out_of_gas_1167", %"$None_1163"
  %"$consume_1169" = sub i64 %"$gasrem_1165", 1
  store i64 %"$consume_1169", i64* @_gasrem, align 8
  %"$false_1170" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1170", %TName_Bool** %"$test_36", align 8, !dbg !122
  br label %"$matchsucc_1112"

"$empty_default_1116":                            ; preds = %"$have_gas_1110"
  br label %"$matchsucc_1112"

"$matchsucc_1112":                                ; preds = %"$have_gas_1168", %"$have_gas_1150", %"$empty_default_1116"
  %"$gasrem_1171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1172" = icmp ugt i64 1, %"$gasrem_1171"
  br i1 %"$gascmp_1172", label %"$out_of_gas_1173", label %"$have_gas_1174"

"$out_of_gas_1173":                               ; preds = %"$matchsucc_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1174"

"$have_gas_1174":                                 ; preds = %"$out_of_gas_1173", %"$matchsucc_1112"
  %"$consume_1175" = sub i64 %"$gasrem_1171", 1
  store i64 %"$consume_1175", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint128, align 8
  %"$gasrem_1176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1177" = icmp ugt i64 1, %"$gasrem_1176"
  br i1 %"$gascmp_1177", label %"$out_of_gas_1178", label %"$have_gas_1179"

"$out_of_gas_1178":                               ; preds = %"$have_gas_1174"
  call void @_out_of_gas()
  br label %"$have_gas_1179"

"$have_gas_1179":                                 ; preds = %"$out_of_gas_1178", %"$have_gas_1174"
  %"$consume_1180" = sub i64 %"$gasrem_1176", 1
  store i64 %"$consume_1180", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$input_37", align 8, !dbg !124
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 1, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1179"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1179"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 1
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 8, %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1184"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1184"
  %"$consume_1190" = sub i64 %"$gasrem_1186", 8
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$execptr_load_1191" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_37_1192" = alloca %Uint128, align 8
  %"$$input_37_1193" = load %Uint128, %Uint128* %"$input_37", align 8
  store %Uint128 %"$$input_37_1193", %Uint128* %"$to_uint128_$input_37_1192", align 8
  %"$$to_uint128_$input_37_1192_1194" = bitcast %Uint128* %"$to_uint128_$input_37_1192" to i8*
  %"$to_uint128_call_1195" = call i8* @_to_uint128(i8* %"$execptr_load_1191", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint128_$input_37_1192_1194"), !dbg !125
  %"$to_uint128_1196" = bitcast i8* %"$to_uint128_call_1195" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1196", %TName_Option_Uint128** %"$resopt_38", align 8, !dbg !125
  %"$gasrem_1197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1198" = icmp ugt i64 1, %"$gasrem_1197"
  br i1 %"$gascmp_1198", label %"$out_of_gas_1199", label %"$have_gas_1200"

"$out_of_gas_1199":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1200"

"$have_gas_1200":                                 ; preds = %"$out_of_gas_1199", %"$have_gas_1189"
  %"$consume_1201" = sub i64 %"$gasrem_1197", 1
  store i64 %"$consume_1201", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 2, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1200"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1200"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 2
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %"$$resopt_38_1208" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_38", align 8
  %"$$resopt_38_tag_1209" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_38_1208", i32 0, i32 0
  %"$$resopt_38_tag_1210" = load i8, i8* %"$$resopt_38_tag_1209", align 1
  switch i8 %"$$resopt_38_tag_1210", label %"$empty_default_1211" [
    i8 0, label %"$Some_1212"
    i8 1, label %"$None_1258"
  ], !dbg !126

"$Some_1212":                                     ; preds = %"$have_gas_1205"
  %"$$resopt_38_1213" = bitcast %TName_Option_Uint128* %"$$resopt_38_1208" to %CName_Some_Uint128*
  %"$res_gep_1214" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_38_1213", i32 0, i32 1
  %"$res_load_1215" = load %Uint128, %Uint128* %"$res_gep_1214", align 8
  %res16 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1215", %Uint128* %res16, align 8
  %"$gasrem_1216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1217" = icmp ugt i64 1, %"$gasrem_1216"
  br i1 %"$gascmp_1217", label %"$out_of_gas_1218", label %"$have_gas_1219"

"$out_of_gas_1218":                               ; preds = %"$Some_1212"
  call void @_out_of_gas()
  br label %"$have_gas_1219"

"$have_gas_1219":                                 ; preds = %"$out_of_gas_1218", %"$Some_1212"
  %"$consume_1220" = sub i64 %"$gasrem_1216", 1
  store i64 %"$consume_1220", i64* @_gasrem, align 8
  %input_17 = alloca %Uint128, align 8
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %"$have_gas_1219"
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %"$have_gas_1219"
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %input_17, align 8, !dbg !127
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1224"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1224"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 8, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1229"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 8
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %"$execptr_load_1237" = load i8*, i8** @_execptr, align 8
  %"$res_1238" = load %Uint128, %Uint128* %res16, align 8
  %"$input__1239" = load %Uint128, %Uint128* %input_17, align 8
  %"$eq_call_1240" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1237", %Uint128 %"$res_1238", %Uint128 %"$input__1239"), !dbg !130
  store %TName_Bool* %"$eq_call_1240", %TName_Bool** %test_18, align 8, !dbg !130
  %"$gasrem_1242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1243" = icmp ugt i64 1, %"$gasrem_1242"
  br i1 %"$gascmp_1243", label %"$out_of_gas_1244", label %"$have_gas_1245"

"$out_of_gas_1244":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1245"

"$have_gas_1245":                                 ; preds = %"$out_of_gas_1244", %"$have_gas_1235"
  %"$consume_1246" = sub i64 %"$gasrem_1242", 1
  store i64 %"$consume_1246", i64* @_gasrem, align 8
  %"$BoolUtils.andb_96" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1247" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1248" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1247", 0
  %"$BoolUtils.andb_envptr_1249" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1247", 1
  %"$$test_36_1250" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1251" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1248"(i8* %"$BoolUtils.andb_envptr_1249", %TName_Bool* %"$$test_36_1250"), !dbg !131
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1251", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8, !dbg !131
  %"$BoolUtils.andb_97" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_96_1252" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_fptr_1253" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1252", 0
  %"$$BoolUtils.andb_96_envptr_1254" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1252", 1
  %"$test__1255" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_96_call_1256" = call %TName_Bool* %"$$BoolUtils.andb_96_fptr_1253"(i8* %"$$BoolUtils.andb_96_envptr_1254", %TName_Bool* %"$test__1255"), !dbg !131
  store %TName_Bool* %"$$BoolUtils.andb_96_call_1256", %TName_Bool** %"$BoolUtils.andb_97", align 8, !dbg !131
  %"$$BoolUtils.andb_97_1257" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_97", align 8
  store %TName_Bool* %"$$BoolUtils.andb_97_1257", %TName_Bool** %"$test_39", align 8, !dbg !131
  br label %"$matchsucc_1207"

"$None_1258":                                     ; preds = %"$have_gas_1205"
  %"$$resopt_38_1259" = bitcast %TName_Option_Uint128* %"$$resopt_38_1208" to %CName_None_Uint128*
  %"$gasrem_1260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1261" = icmp ugt i64 1, %"$gasrem_1260"
  br i1 %"$gascmp_1261", label %"$out_of_gas_1262", label %"$have_gas_1263"

"$out_of_gas_1262":                               ; preds = %"$None_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1263"

"$have_gas_1263":                                 ; preds = %"$out_of_gas_1262", %"$None_1258"
  %"$consume_1264" = sub i64 %"$gasrem_1260", 1
  store i64 %"$consume_1264", i64* @_gasrem, align 8
  %"$false_1265" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1265", %TName_Bool** %"$test_39", align 8, !dbg !132
  br label %"$matchsucc_1207"

"$empty_default_1211":                            ; preds = %"$have_gas_1205"
  br label %"$matchsucc_1207"

"$matchsucc_1207":                                ; preds = %"$have_gas_1263", %"$have_gas_1245", %"$empty_default_1211"
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 1, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$matchsucc_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$matchsucc_1207"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 1
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  %"$input_40" = alloca %Uint256, align 8
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 1, %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1269"
  %"$consume_1275" = sub i64 %"$gasrem_1271", 1
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_40", align 8, !dbg !134
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 1, %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1274"
  %"$consume_1280" = sub i64 %"$gasrem_1276", 1
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 8, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1279"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 8
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  %"$execptr_load_1286" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_40_1287" = alloca %Uint256, align 8
  %"$$input_40_1288" = load %Uint256, %Uint256* %"$input_40", align 8
  store %Uint256 %"$$input_40_1288", %Uint256* %"$to_uint128_$input_40_1287", align 8
  %"$$to_uint128_$input_40_1287_1289" = bitcast %Uint256* %"$to_uint128_$input_40_1287" to i8*
  %"$to_uint128_call_1290" = call i8* @_to_uint128(i8* %"$execptr_load_1286", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint128_$input_40_1287_1289"), !dbg !135
  %"$to_uint128_1291" = bitcast i8* %"$to_uint128_call_1290" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1291", %TName_Option_Uint128** %"$resopt_41", align 8, !dbg !135
  %"$gasrem_1292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1293" = icmp ugt i64 1, %"$gasrem_1292"
  br i1 %"$gascmp_1293", label %"$out_of_gas_1294", label %"$have_gas_1295"

"$out_of_gas_1294":                               ; preds = %"$have_gas_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1295"

"$have_gas_1295":                                 ; preds = %"$out_of_gas_1294", %"$have_gas_1284"
  %"$consume_1296" = sub i64 %"$gasrem_1292", 1
  store i64 %"$consume_1296", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1298" = icmp ugt i64 2, %"$gasrem_1297"
  br i1 %"$gascmp_1298", label %"$out_of_gas_1299", label %"$have_gas_1300"

"$out_of_gas_1299":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1300"

"$have_gas_1300":                                 ; preds = %"$out_of_gas_1299", %"$have_gas_1295"
  %"$consume_1301" = sub i64 %"$gasrem_1297", 2
  store i64 %"$consume_1301", i64* @_gasrem, align 8
  %"$$resopt_41_1303" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_41", align 8
  %"$$resopt_41_tag_1304" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_41_1303", i32 0, i32 0
  %"$$resopt_41_tag_1305" = load i8, i8* %"$$resopt_41_tag_1304", align 1
  switch i8 %"$$resopt_41_tag_1305", label %"$empty_default_1306" [
    i8 0, label %"$Some_1307"
    i8 1, label %"$None_1317"
  ], !dbg !136

"$Some_1307":                                     ; preds = %"$have_gas_1300"
  %"$$resopt_41_1308" = bitcast %TName_Option_Uint128* %"$$resopt_41_1303" to %CName_Some_Uint128*
  %"$$$resopt_41_78_gep_1309" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_41_1308", i32 0, i32 1
  %"$$$resopt_41_78_load_1310" = load %Uint128, %Uint128* %"$$$resopt_41_78_gep_1309", align 8
  %"$$resopt_41_78" = alloca %Uint128, align 8
  store %Uint128 %"$$$resopt_41_78_load_1310", %Uint128* %"$$resopt_41_78", align 8
  %"$gasrem_1311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1312" = icmp ugt i64 1, %"$gasrem_1311"
  br i1 %"$gascmp_1312", label %"$out_of_gas_1313", label %"$have_gas_1314"

"$out_of_gas_1313":                               ; preds = %"$Some_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1314"

"$have_gas_1314":                                 ; preds = %"$out_of_gas_1313", %"$Some_1307"
  %"$consume_1315" = sub i64 %"$gasrem_1311", 1
  store i64 %"$consume_1315", i64* @_gasrem, align 8
  %"$false_1316" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1316", %TName_Bool** %"$test_42", align 8, !dbg !137
  br label %"$matchsucc_1302"

"$None_1317":                                     ; preds = %"$have_gas_1300"
  %"$$resopt_41_1318" = bitcast %TName_Option_Uint128* %"$$resopt_41_1303" to %CName_None_Uint128*
  %"$gasrem_1319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1320" = icmp ugt i64 1, %"$gasrem_1319"
  br i1 %"$gascmp_1320", label %"$out_of_gas_1321", label %"$have_gas_1322"

"$out_of_gas_1321":                               ; preds = %"$None_1317"
  call void @_out_of_gas()
  br label %"$have_gas_1322"

"$have_gas_1322":                                 ; preds = %"$out_of_gas_1321", %"$None_1317"
  %"$consume_1323" = sub i64 %"$gasrem_1319", 1
  store i64 %"$consume_1323", i64* @_gasrem, align 8
  %"$$test_39_1324" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  store %TName_Bool* %"$$test_39_1324", %TName_Bool** %"$test_42", align 8, !dbg !140
  br label %"$matchsucc_1302"

"$empty_default_1306":                            ; preds = %"$have_gas_1300"
  br label %"$matchsucc_1302"

"$matchsucc_1302":                                ; preds = %"$have_gas_1322", %"$have_gas_1314", %"$empty_default_1306"
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 1, %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$matchsucc_1302"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$matchsucc_1302"
  %"$consume_1329" = sub i64 %"$gasrem_1325", 1
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  %"$input_43" = alloca %Uint256, align 8
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1328"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_43", align 8, !dbg !142
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 16, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1338"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 16
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %"$execptr_load_1345" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_43_1346" = alloca %Uint256, align 8
  %"$$input_43_1347" = load %Uint256, %Uint256* %"$input_43", align 8
  store %Uint256 %"$$input_43_1347", %Uint256* %"$to_uint256_$input_43_1346", align 8
  %"$$to_uint256_$input_43_1346_1348" = bitcast %Uint256* %"$to_uint256_$input_43_1346" to i8*
  %"$to_uint256_call_1349" = call i8* @_to_uint256(i8* %"$execptr_load_1345", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint256_$input_43_1346_1348"), !dbg !143
  %"$to_uint256_1350" = bitcast i8* %"$to_uint256_call_1349" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1350", %TName_Option_Uint256** %"$resopt_44", align 8, !dbg !143
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 1, %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1343"
  %"$consume_1355" = sub i64 %"$gasrem_1351", 1
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  %"$gasrem_1356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1357" = icmp ugt i64 2, %"$gasrem_1356"
  br i1 %"$gascmp_1357", label %"$out_of_gas_1358", label %"$have_gas_1359"

"$out_of_gas_1358":                               ; preds = %"$have_gas_1354"
  call void @_out_of_gas()
  br label %"$have_gas_1359"

"$have_gas_1359":                                 ; preds = %"$out_of_gas_1358", %"$have_gas_1354"
  %"$consume_1360" = sub i64 %"$gasrem_1356", 2
  store i64 %"$consume_1360", i64* @_gasrem, align 8
  %"$$resopt_44_1362" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_44", align 8
  %"$$resopt_44_tag_1363" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_44_1362", i32 0, i32 0
  %"$$resopt_44_tag_1364" = load i8, i8* %"$$resopt_44_tag_1363", align 1
  switch i8 %"$$resopt_44_tag_1364", label %"$empty_default_1365" [
    i8 0, label %"$Some_1366"
    i8 1, label %"$None_1414"
  ], !dbg !144

"$Some_1366":                                     ; preds = %"$have_gas_1359"
  %"$$resopt_44_1367" = bitcast %TName_Option_Uint256* %"$$resopt_44_1362" to %CName_Some_Uint256*
  %"$res_gep_1368" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_44_1367", i32 0, i32 1
  %"$res_load_1369" = load %Uint256, %Uint256* %"$res_gep_1368", align 8
  %res19 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1369", %Uint256* %res19, align 8
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 1, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$Some_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$Some_1366"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 1
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  %input_20 = alloca %Uint256, align 8
  %"$gasrem_1375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1376" = icmp ugt i64 1, %"$gasrem_1375"
  br i1 %"$gascmp_1376", label %"$out_of_gas_1377", label %"$have_gas_1378"

"$out_of_gas_1377":                               ; preds = %"$have_gas_1373"
  call void @_out_of_gas()
  br label %"$have_gas_1378"

"$have_gas_1378":                                 ; preds = %"$out_of_gas_1377", %"$have_gas_1373"
  %"$consume_1379" = sub i64 %"$gasrem_1375", 1
  store i64 %"$consume_1379", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %input_20, align 8, !dbg !145
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1378"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1378"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  %"$gasrem_1386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1387" = icmp ugt i64 16, %"$gasrem_1386"
  br i1 %"$gascmp_1387", label %"$out_of_gas_1388", label %"$have_gas_1389"

"$out_of_gas_1388":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1389"

"$have_gas_1389":                                 ; preds = %"$out_of_gas_1388", %"$have_gas_1383"
  %"$consume_1390" = sub i64 %"$gasrem_1386", 16
  store i64 %"$consume_1390", i64* @_gasrem, align 8
  %"$execptr_load_1391" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1392" = alloca %Uint256, align 8
  %"$res_1393" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res_1393", %Uint256* %"$eq_res_1392", align 8
  %"$eq_input__1394" = alloca %Uint256, align 8
  %"$input__1395" = load %Uint256, %Uint256* %input_20, align 8
  store %Uint256 %"$input__1395", %Uint256* %"$eq_input__1394", align 8
  %"$eq_call_1396" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1391", %Uint256* %"$eq_res_1392", %Uint256* %"$eq_input__1394"), !dbg !148
  store %TName_Bool* %"$eq_call_1396", %TName_Bool** %test_21, align 8, !dbg !148
  %"$gasrem_1398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1399" = icmp ugt i64 1, %"$gasrem_1398"
  br i1 %"$gascmp_1399", label %"$out_of_gas_1400", label %"$have_gas_1401"

"$out_of_gas_1400":                               ; preds = %"$have_gas_1389"
  call void @_out_of_gas()
  br label %"$have_gas_1401"

"$have_gas_1401":                                 ; preds = %"$out_of_gas_1400", %"$have_gas_1389"
  %"$consume_1402" = sub i64 %"$gasrem_1398", 1
  store i64 %"$consume_1402", i64* @_gasrem, align 8
  %"$BoolUtils.andb_98" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1403" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1404" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1403", 0
  %"$BoolUtils.andb_envptr_1405" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1403", 1
  %"$$test_42_1406" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1407" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1404"(i8* %"$BoolUtils.andb_envptr_1405", %TName_Bool* %"$$test_42_1406"), !dbg !149
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1407", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8, !dbg !149
  %"$BoolUtils.andb_99" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_98_1408" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_fptr_1409" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1408", 0
  %"$$BoolUtils.andb_98_envptr_1410" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1408", 1
  %"$test__1411" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_98_call_1412" = call %TName_Bool* %"$$BoolUtils.andb_98_fptr_1409"(i8* %"$$BoolUtils.andb_98_envptr_1410", %TName_Bool* %"$test__1411"), !dbg !149
  store %TName_Bool* %"$$BoolUtils.andb_98_call_1412", %TName_Bool** %"$BoolUtils.andb_99", align 8, !dbg !149
  %"$$BoolUtils.andb_99_1413" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_99", align 8
  store %TName_Bool* %"$$BoolUtils.andb_99_1413", %TName_Bool** %"$test_45", align 8, !dbg !149
  br label %"$matchsucc_1361"

"$None_1414":                                     ; preds = %"$have_gas_1359"
  %"$$resopt_44_1415" = bitcast %TName_Option_Uint256* %"$$resopt_44_1362" to %CName_None_Uint256*
  %"$gasrem_1416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1417" = icmp ugt i64 1, %"$gasrem_1416"
  br i1 %"$gascmp_1417", label %"$out_of_gas_1418", label %"$have_gas_1419"

"$out_of_gas_1418":                               ; preds = %"$None_1414"
  call void @_out_of_gas()
  br label %"$have_gas_1419"

"$have_gas_1419":                                 ; preds = %"$out_of_gas_1418", %"$None_1414"
  %"$consume_1420" = sub i64 %"$gasrem_1416", 1
  store i64 %"$consume_1420", i64* @_gasrem, align 8
  %"$false_1421" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1421", %TName_Bool** %"$test_45", align 8, !dbg !150
  br label %"$matchsucc_1361"

"$empty_default_1365":                            ; preds = %"$have_gas_1359"
  br label %"$matchsucc_1361"

"$matchsucc_1361":                                ; preds = %"$have_gas_1419", %"$have_gas_1401", %"$empty_default_1365"
  %"$gasrem_1422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1423" = icmp ugt i64 1, %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %"$matchsucc_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %"$matchsucc_1361"
  %"$consume_1426" = sub i64 %"$gasrem_1422", 1
  store i64 %"$consume_1426", i64* @_gasrem, align 8
  %"$input_46" = alloca %Uint32, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1425"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1425"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  store %Uint32 { i32 22 }, %Uint32* %"$input_46", align 4, !dbg !152
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$have_gas_1430"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1438" = icmp ugt i64 16, %"$gasrem_1437"
  br i1 %"$gascmp_1438", label %"$out_of_gas_1439", label %"$have_gas_1440"

"$out_of_gas_1439":                               ; preds = %"$have_gas_1435"
  call void @_out_of_gas()
  br label %"$have_gas_1440"

"$have_gas_1440":                                 ; preds = %"$out_of_gas_1439", %"$have_gas_1435"
  %"$consume_1441" = sub i64 %"$gasrem_1437", 16
  store i64 %"$consume_1441", i64* @_gasrem, align 8
  %"$execptr_load_1442" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_46_1443" = alloca %Uint32, align 8
  %"$$input_46_1444" = load %Uint32, %Uint32* %"$input_46", align 4
  store %Uint32 %"$$input_46_1444", %Uint32* %"$to_uint256_$input_46_1443", align 4
  %"$$to_uint256_$input_46_1443_1445" = bitcast %Uint32* %"$to_uint256_$input_46_1443" to i8*
  %"$to_uint256_call_1446" = call i8* @_to_uint256(i8* %"$execptr_load_1442", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint256_$input_46_1443_1445"), !dbg !153
  %"$to_uint256_1447" = bitcast i8* %"$to_uint256_call_1446" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1447", %TName_Option_Uint256** %"$resopt_47", align 8, !dbg !153
  %"$gasrem_1448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1449" = icmp ugt i64 1, %"$gasrem_1448"
  br i1 %"$gascmp_1449", label %"$out_of_gas_1450", label %"$have_gas_1451"

"$out_of_gas_1450":                               ; preds = %"$have_gas_1440"
  call void @_out_of_gas()
  br label %"$have_gas_1451"

"$have_gas_1451":                                 ; preds = %"$out_of_gas_1450", %"$have_gas_1440"
  %"$consume_1452" = sub i64 %"$gasrem_1448", 1
  store i64 %"$consume_1452", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_1453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1454" = icmp ugt i64 2, %"$gasrem_1453"
  br i1 %"$gascmp_1454", label %"$out_of_gas_1455", label %"$have_gas_1456"

"$out_of_gas_1455":                               ; preds = %"$have_gas_1451"
  call void @_out_of_gas()
  br label %"$have_gas_1456"

"$have_gas_1456":                                 ; preds = %"$out_of_gas_1455", %"$have_gas_1451"
  %"$consume_1457" = sub i64 %"$gasrem_1453", 2
  store i64 %"$consume_1457", i64* @_gasrem, align 8
  %"$$resopt_47_1459" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_47", align 8
  %"$$resopt_47_tag_1460" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_47_1459", i32 0, i32 0
  %"$$resopt_47_tag_1461" = load i8, i8* %"$$resopt_47_tag_1460", align 1
  switch i8 %"$$resopt_47_tag_1461", label %"$empty_default_1462" [
    i8 0, label %"$Some_1463"
    i8 1, label %"$None_1511"
  ], !dbg !154

"$Some_1463":                                     ; preds = %"$have_gas_1456"
  %"$$resopt_47_1464" = bitcast %TName_Option_Uint256* %"$$resopt_47_1459" to %CName_Some_Uint256*
  %"$res_gep_1465" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_47_1464", i32 0, i32 1
  %"$res_load_1466" = load %Uint256, %Uint256* %"$res_gep_1465", align 8
  %res22 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1466", %Uint256* %res22, align 8
  %"$gasrem_1467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1468" = icmp ugt i64 1, %"$gasrem_1467"
  br i1 %"$gascmp_1468", label %"$out_of_gas_1469", label %"$have_gas_1470"

"$out_of_gas_1469":                               ; preds = %"$Some_1463"
  call void @_out_of_gas()
  br label %"$have_gas_1470"

"$have_gas_1470":                                 ; preds = %"$out_of_gas_1469", %"$Some_1463"
  %"$consume_1471" = sub i64 %"$gasrem_1467", 1
  store i64 %"$consume_1471", i64* @_gasrem, align 8
  %input_23 = alloca %Uint256, align 8
  %"$gasrem_1472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1473" = icmp ugt i64 1, %"$gasrem_1472"
  br i1 %"$gascmp_1473", label %"$out_of_gas_1474", label %"$have_gas_1475"

"$out_of_gas_1474":                               ; preds = %"$have_gas_1470"
  call void @_out_of_gas()
  br label %"$have_gas_1475"

"$have_gas_1475":                                 ; preds = %"$out_of_gas_1474", %"$have_gas_1470"
  %"$consume_1476" = sub i64 %"$gasrem_1472", 1
  store i64 %"$consume_1476", i64* @_gasrem, align 8
  store %Uint256 { i256 22 }, %Uint256* %input_23, align 8, !dbg !155
  %"$gasrem_1477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1478" = icmp ugt i64 1, %"$gasrem_1477"
  br i1 %"$gascmp_1478", label %"$out_of_gas_1479", label %"$have_gas_1480"

"$out_of_gas_1479":                               ; preds = %"$have_gas_1475"
  call void @_out_of_gas()
  br label %"$have_gas_1480"

"$have_gas_1480":                                 ; preds = %"$out_of_gas_1479", %"$have_gas_1475"
  %"$consume_1481" = sub i64 %"$gasrem_1477", 1
  store i64 %"$consume_1481", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 16, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$have_gas_1480"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$have_gas_1480"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 16
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$execptr_load_1488" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1489" = alloca %Uint256, align 8
  %"$res_1490" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res_1490", %Uint256* %"$eq_res_1489", align 8
  %"$eq_input__1491" = alloca %Uint256, align 8
  %"$input__1492" = load %Uint256, %Uint256* %input_23, align 8
  store %Uint256 %"$input__1492", %Uint256* %"$eq_input__1491", align 8
  %"$eq_call_1493" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1488", %Uint256* %"$eq_res_1489", %Uint256* %"$eq_input__1491"), !dbg !158
  store %TName_Bool* %"$eq_call_1493", %TName_Bool** %test_24, align 8, !dbg !158
  %"$gasrem_1495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1496" = icmp ugt i64 1, %"$gasrem_1495"
  br i1 %"$gascmp_1496", label %"$out_of_gas_1497", label %"$have_gas_1498"

"$out_of_gas_1497":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1498"

"$have_gas_1498":                                 ; preds = %"$out_of_gas_1497", %"$have_gas_1486"
  %"$consume_1499" = sub i64 %"$gasrem_1495", 1
  store i64 %"$consume_1499", i64* @_gasrem, align 8
  %"$BoolUtils.andb_100" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1500" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1501" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1500", 0
  %"$BoolUtils.andb_envptr_1502" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1500", 1
  %"$$test_45_1503" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  %"$BoolUtils.andb_call_1504" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1501"(i8* %"$BoolUtils.andb_envptr_1502", %TName_Bool* %"$$test_45_1503"), !dbg !159
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1504", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8, !dbg !159
  %"$BoolUtils.andb_101" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_100_1505" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$$BoolUtils.andb_100_fptr_1506" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1505", 0
  %"$$BoolUtils.andb_100_envptr_1507" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1505", 1
  %"$test__1508" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_100_call_1509" = call %TName_Bool* %"$$BoolUtils.andb_100_fptr_1506"(i8* %"$$BoolUtils.andb_100_envptr_1507", %TName_Bool* %"$test__1508"), !dbg !159
  store %TName_Bool* %"$$BoolUtils.andb_100_call_1509", %TName_Bool** %"$BoolUtils.andb_101", align 8, !dbg !159
  %"$$BoolUtils.andb_101_1510" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_101", align 8
  store %TName_Bool* %"$$BoolUtils.andb_101_1510", %TName_Bool** %"$test_48", align 8, !dbg !159
  br label %"$matchsucc_1458"

"$None_1511":                                     ; preds = %"$have_gas_1456"
  %"$$resopt_47_1512" = bitcast %TName_Option_Uint256* %"$$resopt_47_1459" to %CName_None_Uint256*
  %"$gasrem_1513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1514" = icmp ugt i64 1, %"$gasrem_1513"
  br i1 %"$gascmp_1514", label %"$out_of_gas_1515", label %"$have_gas_1516"

"$out_of_gas_1515":                               ; preds = %"$None_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1516"

"$have_gas_1516":                                 ; preds = %"$out_of_gas_1515", %"$None_1511"
  %"$consume_1517" = sub i64 %"$gasrem_1513", 1
  store i64 %"$consume_1517", i64* @_gasrem, align 8
  %"$false_1518" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1518", %TName_Bool** %"$test_48", align 8, !dbg !160
  br label %"$matchsucc_1458"

"$empty_default_1462":                            ; preds = %"$have_gas_1456"
  br label %"$matchsucc_1458"

"$matchsucc_1458":                                ; preds = %"$have_gas_1516", %"$have_gas_1498", %"$empty_default_1462"
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 1, %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$matchsucc_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$matchsucc_1458"
  %"$consume_1523" = sub i64 %"$gasrem_1519", 1
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %"$input_49" = alloca %Int32, align 8
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 1, %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$have_gas_1522"
  %"$consume_1528" = sub i64 %"$gasrem_1524", 1
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  store %Int32 { i32 2147483647 }, %Int32* %"$input_49", align 4, !dbg !162
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 1, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1527"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1527"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 1
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_1534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1535" = icmp ugt i64 4, %"$gasrem_1534"
  br i1 %"$gascmp_1535", label %"$out_of_gas_1536", label %"$have_gas_1537"

"$out_of_gas_1536":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1537"

"$have_gas_1537":                                 ; preds = %"$out_of_gas_1536", %"$have_gas_1532"
  %"$consume_1538" = sub i64 %"$gasrem_1534", 4
  store i64 %"$consume_1538", i64* @_gasrem, align 8
  %"$execptr_load_1539" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_49_1540" = alloca %Int32, align 8
  %"$$input_49_1541" = load %Int32, %Int32* %"$input_49", align 4
  store %Int32 %"$$input_49_1541", %Int32* %"$to_uint32_$input_49_1540", align 4
  %"$$to_uint32_$input_49_1540_1542" = bitcast %Int32* %"$to_uint32_$input_49_1540" to i8*
  %"$to_uint32_call_1543" = call i8* @_to_uint32(i8* %"$execptr_load_1539", %_TyDescrTy_Typ* @"$TyDescr_Int32_115", i8* %"$$to_uint32_$input_49_1540_1542"), !dbg !163
  %"$to_uint32_1544" = bitcast i8* %"$to_uint32_call_1543" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1544", %TName_Option_Uint32** %"$resopt_50", align 8, !dbg !163
  %"$gasrem_1545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1546" = icmp ugt i64 1, %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1537"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1537"
  %"$consume_1549" = sub i64 %"$gasrem_1545", 1
  store i64 %"$consume_1549", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  %"$gasrem_1550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1551" = icmp ugt i64 2, %"$gasrem_1550"
  br i1 %"$gascmp_1551", label %"$out_of_gas_1552", label %"$have_gas_1553"

"$out_of_gas_1552":                               ; preds = %"$have_gas_1548"
  call void @_out_of_gas()
  br label %"$have_gas_1553"

"$have_gas_1553":                                 ; preds = %"$out_of_gas_1552", %"$have_gas_1548"
  %"$consume_1554" = sub i64 %"$gasrem_1550", 2
  store i64 %"$consume_1554", i64* @_gasrem, align 8
  %"$$resopt_50_1556" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_50", align 8
  %"$$resopt_50_tag_1557" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_50_1556", i32 0, i32 0
  %"$$resopt_50_tag_1558" = load i8, i8* %"$$resopt_50_tag_1557", align 1
  switch i8 %"$$resopt_50_tag_1558", label %"$empty_default_1559" [
    i8 0, label %"$Some_1560"
    i8 1, label %"$None_1605"
  ], !dbg !164

"$Some_1560":                                     ; preds = %"$have_gas_1553"
  %"$$resopt_50_1561" = bitcast %TName_Option_Uint32* %"$$resopt_50_1556" to %CName_Some_Uint32*
  %"$res_gep_1562" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_50_1561", i32 0, i32 1
  %"$res_load_1563" = load %Uint32, %Uint32* %"$res_gep_1562", align 4
  %res25 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_1563", %Uint32* %res25, align 4
  %"$gasrem_1564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1565" = icmp ugt i64 1, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$Some_1560"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$Some_1560"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 1
  store i64 %"$consume_1568", i64* @_gasrem, align 8
  %input_26 = alloca %Uint32, align 8
  %"$gasrem_1569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1570" = icmp ugt i64 1, %"$gasrem_1569"
  br i1 %"$gascmp_1570", label %"$out_of_gas_1571", label %"$have_gas_1572"

"$out_of_gas_1571":                               ; preds = %"$have_gas_1567"
  call void @_out_of_gas()
  br label %"$have_gas_1572"

"$have_gas_1572":                                 ; preds = %"$out_of_gas_1571", %"$have_gas_1567"
  %"$consume_1573" = sub i64 %"$gasrem_1569", 1
  store i64 %"$consume_1573", i64* @_gasrem, align 8
  store %Uint32 { i32 2147483647 }, %Uint32* %input_26, align 4, !dbg !165
  %"$gasrem_1574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1575" = icmp ugt i64 1, %"$gasrem_1574"
  br i1 %"$gascmp_1575", label %"$out_of_gas_1576", label %"$have_gas_1577"

"$out_of_gas_1576":                               ; preds = %"$have_gas_1572"
  call void @_out_of_gas()
  br label %"$have_gas_1577"

"$have_gas_1577":                                 ; preds = %"$out_of_gas_1576", %"$have_gas_1572"
  %"$consume_1578" = sub i64 %"$gasrem_1574", 1
  store i64 %"$consume_1578", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  %"$gasrem_1579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1580" = icmp ugt i64 4, %"$gasrem_1579"
  br i1 %"$gascmp_1580", label %"$out_of_gas_1581", label %"$have_gas_1582"

"$out_of_gas_1581":                               ; preds = %"$have_gas_1577"
  call void @_out_of_gas()
  br label %"$have_gas_1582"

"$have_gas_1582":                                 ; preds = %"$out_of_gas_1581", %"$have_gas_1577"
  %"$consume_1583" = sub i64 %"$gasrem_1579", 4
  store i64 %"$consume_1583", i64* @_gasrem, align 8
  %"$execptr_load_1584" = load i8*, i8** @_execptr, align 8
  %"$res_1585" = load %Uint32, %Uint32* %res25, align 4
  %"$input__1586" = load %Uint32, %Uint32* %input_26, align 4
  %"$eq_call_1587" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1584", %Uint32 %"$res_1585", %Uint32 %"$input__1586"), !dbg !168
  store %TName_Bool* %"$eq_call_1587", %TName_Bool** %test_27, align 8, !dbg !168
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1582"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1582"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  %"$BoolUtils.andb_102" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1594" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1595" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1594", 0
  %"$BoolUtils.andb_envptr_1596" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1594", 1
  %"$$test_48_1597" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1598" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1595"(i8* %"$BoolUtils.andb_envptr_1596", %TName_Bool* %"$$test_48_1597"), !dbg !169
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1598", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_102", align 8, !dbg !169
  %"$BoolUtils.andb_103" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_102_1599" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_102", align 8
  %"$$BoolUtils.andb_102_fptr_1600" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_102_1599", 0
  %"$$BoolUtils.andb_102_envptr_1601" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_102_1599", 1
  %"$test__1602" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_102_call_1603" = call %TName_Bool* %"$$BoolUtils.andb_102_fptr_1600"(i8* %"$$BoolUtils.andb_102_envptr_1601", %TName_Bool* %"$test__1602"), !dbg !169
  store %TName_Bool* %"$$BoolUtils.andb_102_call_1603", %TName_Bool** %"$BoolUtils.andb_103", align 8, !dbg !169
  %"$$BoolUtils.andb_103_1604" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_103", align 8
  store %TName_Bool* %"$$BoolUtils.andb_103_1604", %TName_Bool** %"$test_51", align 8, !dbg !169
  br label %"$matchsucc_1555"

"$None_1605":                                     ; preds = %"$have_gas_1553"
  %"$$resopt_50_1606" = bitcast %TName_Option_Uint32* %"$$resopt_50_1556" to %CName_None_Uint32*
  %"$gasrem_1607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1608" = icmp ugt i64 1, %"$gasrem_1607"
  br i1 %"$gascmp_1608", label %"$out_of_gas_1609", label %"$have_gas_1610"

"$out_of_gas_1609":                               ; preds = %"$None_1605"
  call void @_out_of_gas()
  br label %"$have_gas_1610"

"$have_gas_1610":                                 ; preds = %"$out_of_gas_1609", %"$None_1605"
  %"$consume_1611" = sub i64 %"$gasrem_1607", 1
  store i64 %"$consume_1611", i64* @_gasrem, align 8
  %"$false_1612" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1612", %TName_Bool** %"$test_51", align 8, !dbg !170
  br label %"$matchsucc_1555"

"$empty_default_1559":                            ; preds = %"$have_gas_1553"
  br label %"$matchsucc_1555"

"$matchsucc_1555":                                ; preds = %"$have_gas_1610", %"$have_gas_1592", %"$empty_default_1559"
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 1, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$matchsucc_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$matchsucc_1555"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 1
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %"$input_52" = alloca %Int32, align 8
  %"$gasrem_1618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1619" = icmp ugt i64 1, %"$gasrem_1618"
  br i1 %"$gascmp_1619", label %"$out_of_gas_1620", label %"$have_gas_1621"

"$out_of_gas_1620":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1621"

"$have_gas_1621":                                 ; preds = %"$out_of_gas_1620", %"$have_gas_1616"
  %"$consume_1622" = sub i64 %"$gasrem_1618", 1
  store i64 %"$consume_1622", i64* @_gasrem, align 8
  store %Int32 { i32 -2147483648 }, %Int32* %"$input_52", align 4, !dbg !172
  %"$gasrem_1623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1624" = icmp ugt i64 1, %"$gasrem_1623"
  br i1 %"$gascmp_1624", label %"$out_of_gas_1625", label %"$have_gas_1626"

"$out_of_gas_1625":                               ; preds = %"$have_gas_1621"
  call void @_out_of_gas()
  br label %"$have_gas_1626"

"$have_gas_1626":                                 ; preds = %"$out_of_gas_1625", %"$have_gas_1621"
  %"$consume_1627" = sub i64 %"$gasrem_1623", 1
  store i64 %"$consume_1627", i64* @_gasrem, align 8
  %"$resopt_53" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_1628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1629" = icmp ugt i64 4, %"$gasrem_1628"
  br i1 %"$gascmp_1629", label %"$out_of_gas_1630", label %"$have_gas_1631"

"$out_of_gas_1630":                               ; preds = %"$have_gas_1626"
  call void @_out_of_gas()
  br label %"$have_gas_1631"

"$have_gas_1631":                                 ; preds = %"$out_of_gas_1630", %"$have_gas_1626"
  %"$consume_1632" = sub i64 %"$gasrem_1628", 4
  store i64 %"$consume_1632", i64* @_gasrem, align 8
  %"$execptr_load_1633" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_52_1634" = alloca %Int32, align 8
  %"$$input_52_1635" = load %Int32, %Int32* %"$input_52", align 4
  store %Int32 %"$$input_52_1635", %Int32* %"$to_uint32_$input_52_1634", align 4
  %"$$to_uint32_$input_52_1634_1636" = bitcast %Int32* %"$to_uint32_$input_52_1634" to i8*
  %"$to_uint32_call_1637" = call i8* @_to_uint32(i8* %"$execptr_load_1633", %_TyDescrTy_Typ* @"$TyDescr_Int32_115", i8* %"$$to_uint32_$input_52_1634_1636"), !dbg !173
  %"$to_uint32_1638" = bitcast i8* %"$to_uint32_call_1637" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1638", %TName_Option_Uint32** %"$resopt_53", align 8, !dbg !173
  %"$gasrem_1639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1640" = icmp ugt i64 1, %"$gasrem_1639"
  br i1 %"$gascmp_1640", label %"$out_of_gas_1641", label %"$have_gas_1642"

"$out_of_gas_1641":                               ; preds = %"$have_gas_1631"
  call void @_out_of_gas()
  br label %"$have_gas_1642"

"$have_gas_1642":                                 ; preds = %"$out_of_gas_1641", %"$have_gas_1631"
  %"$consume_1643" = sub i64 %"$gasrem_1639", 1
  store i64 %"$consume_1643", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 2, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$have_gas_1642"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$have_gas_1642"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 2
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  %"$$resopt_53_1650" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_53", align 8
  %"$$resopt_53_tag_1651" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_53_1650", i32 0, i32 0
  %"$$resopt_53_tag_1652" = load i8, i8* %"$$resopt_53_tag_1651", align 1
  switch i8 %"$$resopt_53_tag_1652", label %"$empty_default_1653" [
    i8 0, label %"$Some_1654"
    i8 1, label %"$None_1664"
  ], !dbg !174

"$Some_1654":                                     ; preds = %"$have_gas_1647"
  %"$$resopt_53_1655" = bitcast %TName_Option_Uint32* %"$$resopt_53_1650" to %CName_Some_Uint32*
  %"$$$resopt_53_79_gep_1656" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_53_1655", i32 0, i32 1
  %"$$$resopt_53_79_load_1657" = load %Uint32, %Uint32* %"$$$resopt_53_79_gep_1656", align 4
  %"$$resopt_53_79" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_53_79_load_1657", %Uint32* %"$$resopt_53_79", align 4
  %"$gasrem_1658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1659" = icmp ugt i64 1, %"$gasrem_1658"
  br i1 %"$gascmp_1659", label %"$out_of_gas_1660", label %"$have_gas_1661"

"$out_of_gas_1660":                               ; preds = %"$Some_1654"
  call void @_out_of_gas()
  br label %"$have_gas_1661"

"$have_gas_1661":                                 ; preds = %"$out_of_gas_1660", %"$Some_1654"
  %"$consume_1662" = sub i64 %"$gasrem_1658", 1
  store i64 %"$consume_1662", i64* @_gasrem, align 8
  %"$false_1663" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1663", %TName_Bool** %"$test_54", align 8, !dbg !175
  br label %"$matchsucc_1649"

"$None_1664":                                     ; preds = %"$have_gas_1647"
  %"$$resopt_53_1665" = bitcast %TName_Option_Uint32* %"$$resopt_53_1650" to %CName_None_Uint32*
  %"$gasrem_1666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1667" = icmp ugt i64 1, %"$gasrem_1666"
  br i1 %"$gascmp_1667", label %"$out_of_gas_1668", label %"$have_gas_1669"

"$out_of_gas_1668":                               ; preds = %"$None_1664"
  call void @_out_of_gas()
  br label %"$have_gas_1669"

"$have_gas_1669":                                 ; preds = %"$out_of_gas_1668", %"$None_1664"
  %"$consume_1670" = sub i64 %"$gasrem_1666", 1
  store i64 %"$consume_1670", i64* @_gasrem, align 8
  %"$$test_51_1671" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  store %TName_Bool* %"$$test_51_1671", %TName_Bool** %"$test_54", align 8, !dbg !178
  br label %"$matchsucc_1649"

"$empty_default_1653":                            ; preds = %"$have_gas_1647"
  br label %"$matchsucc_1649"

"$matchsucc_1649":                                ; preds = %"$have_gas_1669", %"$have_gas_1661", %"$empty_default_1653"
  %"$gasrem_1672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1673" = icmp ugt i64 1, %"$gasrem_1672"
  br i1 %"$gascmp_1673", label %"$out_of_gas_1674", label %"$have_gas_1675"

"$out_of_gas_1674":                               ; preds = %"$matchsucc_1649"
  call void @_out_of_gas()
  br label %"$have_gas_1675"

"$have_gas_1675":                                 ; preds = %"$out_of_gas_1674", %"$matchsucc_1649"
  %"$consume_1676" = sub i64 %"$gasrem_1672", 1
  store i64 %"$consume_1676", i64* @_gasrem, align 8
  %"$input_55" = alloca %String, align 8
  %"$gasrem_1677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1678" = icmp ugt i64 1, %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$have_gas_1675"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$have_gas_1675"
  %"$consume_1681" = sub i64 %"$gasrem_1677", 1
  store i64 %"$consume_1681", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1682", i32 0, i32 0), i32 11 }, %String* %"$input_55", align 8, !dbg !180
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 1, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$have_gas_1680"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$have_gas_1680"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 1
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  %"$resopt_56" = alloca %TName_Option_Uint32*, align 8
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 4, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$have_gas_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$have_gas_1686"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 4
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  %"$execptr_load_1693" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_55_1694" = alloca %String, align 8
  %"$$input_55_1695" = load %String, %String* %"$input_55", align 8
  store %String %"$$input_55_1695", %String* %"$to_uint32_$input_55_1694", align 8
  %"$$to_uint32_$input_55_1694_1696" = bitcast %String* %"$to_uint32_$input_55_1694" to i8*
  %"$to_uint32_call_1697" = call i8* @_to_uint32(i8* %"$execptr_load_1693", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint32_$input_55_1694_1696"), !dbg !181
  %"$to_uint32_1698" = bitcast i8* %"$to_uint32_call_1697" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1698", %TName_Option_Uint32** %"$resopt_56", align 8, !dbg !181
  %"$gasrem_1699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1700" = icmp ugt i64 1, %"$gasrem_1699"
  br i1 %"$gascmp_1700", label %"$out_of_gas_1701", label %"$have_gas_1702"

"$out_of_gas_1701":                               ; preds = %"$have_gas_1691"
  call void @_out_of_gas()
  br label %"$have_gas_1702"

"$have_gas_1702":                                 ; preds = %"$out_of_gas_1701", %"$have_gas_1691"
  %"$consume_1703" = sub i64 %"$gasrem_1699", 1
  store i64 %"$consume_1703", i64* @_gasrem, align 8
  %"$test_57" = alloca %TName_Bool*, align 8
  %"$gasrem_1704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1705" = icmp ugt i64 2, %"$gasrem_1704"
  br i1 %"$gascmp_1705", label %"$out_of_gas_1706", label %"$have_gas_1707"

"$out_of_gas_1706":                               ; preds = %"$have_gas_1702"
  call void @_out_of_gas()
  br label %"$have_gas_1707"

"$have_gas_1707":                                 ; preds = %"$out_of_gas_1706", %"$have_gas_1702"
  %"$consume_1708" = sub i64 %"$gasrem_1704", 2
  store i64 %"$consume_1708", i64* @_gasrem, align 8
  %"$$resopt_56_1710" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_56", align 8
  %"$$resopt_56_tag_1711" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_56_1710", i32 0, i32 0
  %"$$resopt_56_tag_1712" = load i8, i8* %"$$resopt_56_tag_1711", align 1
  switch i8 %"$$resopt_56_tag_1712", label %"$empty_default_1713" [
    i8 0, label %"$Some_1714"
    i8 1, label %"$None_1724"
  ], !dbg !182

"$Some_1714":                                     ; preds = %"$have_gas_1707"
  %"$$resopt_56_1715" = bitcast %TName_Option_Uint32* %"$$resopt_56_1710" to %CName_Some_Uint32*
  %"$$$resopt_56_80_gep_1716" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_56_1715", i32 0, i32 1
  %"$$$resopt_56_80_load_1717" = load %Uint32, %Uint32* %"$$$resopt_56_80_gep_1716", align 4
  %"$$resopt_56_80" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_56_80_load_1717", %Uint32* %"$$resopt_56_80", align 4
  %"$gasrem_1718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1719" = icmp ugt i64 1, %"$gasrem_1718"
  br i1 %"$gascmp_1719", label %"$out_of_gas_1720", label %"$have_gas_1721"

"$out_of_gas_1720":                               ; preds = %"$Some_1714"
  call void @_out_of_gas()
  br label %"$have_gas_1721"

"$have_gas_1721":                                 ; preds = %"$out_of_gas_1720", %"$Some_1714"
  %"$consume_1722" = sub i64 %"$gasrem_1718", 1
  store i64 %"$consume_1722", i64* @_gasrem, align 8
  %"$false_1723" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1723", %TName_Bool** %"$test_57", align 8, !dbg !183
  br label %"$matchsucc_1709"

"$None_1724":                                     ; preds = %"$have_gas_1707"
  %"$$resopt_56_1725" = bitcast %TName_Option_Uint32* %"$$resopt_56_1710" to %CName_None_Uint32*
  %"$gasrem_1726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1727" = icmp ugt i64 1, %"$gasrem_1726"
  br i1 %"$gascmp_1727", label %"$out_of_gas_1728", label %"$have_gas_1729"

"$out_of_gas_1728":                               ; preds = %"$None_1724"
  call void @_out_of_gas()
  br label %"$have_gas_1729"

"$have_gas_1729":                                 ; preds = %"$out_of_gas_1728", %"$None_1724"
  %"$consume_1730" = sub i64 %"$gasrem_1726", 1
  store i64 %"$consume_1730", i64* @_gasrem, align 8
  %"$$test_54_1731" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  store %TName_Bool* %"$$test_54_1731", %TName_Bool** %"$test_57", align 8, !dbg !186
  br label %"$matchsucc_1709"

"$empty_default_1713":                            ; preds = %"$have_gas_1707"
  br label %"$matchsucc_1709"

"$matchsucc_1709":                                ; preds = %"$have_gas_1729", %"$have_gas_1721", %"$empty_default_1713"
  %"$gasrem_1732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1733" = icmp ugt i64 1, %"$gasrem_1732"
  br i1 %"$gascmp_1733", label %"$out_of_gas_1734", label %"$have_gas_1735"

"$out_of_gas_1734":                               ; preds = %"$matchsucc_1709"
  call void @_out_of_gas()
  br label %"$have_gas_1735"

"$have_gas_1735":                                 ; preds = %"$out_of_gas_1734", %"$matchsucc_1709"
  %"$consume_1736" = sub i64 %"$gasrem_1732", 1
  store i64 %"$consume_1736", i64* @_gasrem, align 8
  %"$input_58" = alloca %Int256, align 8
  %"$gasrem_1737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1738" = icmp ugt i64 1, %"$gasrem_1737"
  br i1 %"$gascmp_1738", label %"$out_of_gas_1739", label %"$have_gas_1740"

"$out_of_gas_1739":                               ; preds = %"$have_gas_1735"
  call void @_out_of_gas()
  br label %"$have_gas_1740"

"$have_gas_1740":                                 ; preds = %"$out_of_gas_1739", %"$have_gas_1735"
  %"$consume_1741" = sub i64 %"$gasrem_1737", 1
  store i64 %"$consume_1741", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$input_58", align 8, !dbg !188
  %"$gasrem_1742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1743" = icmp ugt i64 1, %"$gasrem_1742"
  br i1 %"$gascmp_1743", label %"$out_of_gas_1744", label %"$have_gas_1745"

"$out_of_gas_1744":                               ; preds = %"$have_gas_1740"
  call void @_out_of_gas()
  br label %"$have_gas_1745"

"$have_gas_1745":                                 ; preds = %"$out_of_gas_1744", %"$have_gas_1740"
  %"$consume_1746" = sub i64 %"$gasrem_1742", 1
  store i64 %"$consume_1746", i64* @_gasrem, align 8
  %"$resopt_59" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1748" = icmp ugt i64 16, %"$gasrem_1747"
  br i1 %"$gascmp_1748", label %"$out_of_gas_1749", label %"$have_gas_1750"

"$out_of_gas_1749":                               ; preds = %"$have_gas_1745"
  call void @_out_of_gas()
  br label %"$have_gas_1750"

"$have_gas_1750":                                 ; preds = %"$out_of_gas_1749", %"$have_gas_1745"
  %"$consume_1751" = sub i64 %"$gasrem_1747", 16
  store i64 %"$consume_1751", i64* @_gasrem, align 8
  %"$execptr_load_1752" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_58_1753" = alloca %Int256, align 8
  %"$$input_58_1754" = load %Int256, %Int256* %"$input_58", align 8
  store %Int256 %"$$input_58_1754", %Int256* %"$to_uint256_$input_58_1753", align 8
  %"$$to_uint256_$input_58_1753_1755" = bitcast %Int256* %"$to_uint256_$input_58_1753" to i8*
  %"$to_uint256_call_1756" = call i8* @_to_uint256(i8* %"$execptr_load_1752", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", i8* %"$$to_uint256_$input_58_1753_1755"), !dbg !189
  %"$to_uint256_1757" = bitcast i8* %"$to_uint256_call_1756" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1757", %TName_Option_Uint256** %"$resopt_59", align 8, !dbg !189
  %"$gasrem_1758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1759" = icmp ugt i64 1, %"$gasrem_1758"
  br i1 %"$gascmp_1759", label %"$out_of_gas_1760", label %"$have_gas_1761"

"$out_of_gas_1760":                               ; preds = %"$have_gas_1750"
  call void @_out_of_gas()
  br label %"$have_gas_1761"

"$have_gas_1761":                                 ; preds = %"$out_of_gas_1760", %"$have_gas_1750"
  %"$consume_1762" = sub i64 %"$gasrem_1758", 1
  store i64 %"$consume_1762", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1764" = icmp ugt i64 2, %"$gasrem_1763"
  br i1 %"$gascmp_1764", label %"$out_of_gas_1765", label %"$have_gas_1766"

"$out_of_gas_1765":                               ; preds = %"$have_gas_1761"
  call void @_out_of_gas()
  br label %"$have_gas_1766"

"$have_gas_1766":                                 ; preds = %"$out_of_gas_1765", %"$have_gas_1761"
  %"$consume_1767" = sub i64 %"$gasrem_1763", 2
  store i64 %"$consume_1767", i64* @_gasrem, align 8
  %"$$resopt_59_1769" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_59", align 8
  %"$$resopt_59_tag_1770" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_59_1769", i32 0, i32 0
  %"$$resopt_59_tag_1771" = load i8, i8* %"$$resopt_59_tag_1770", align 1
  switch i8 %"$$resopt_59_tag_1771", label %"$empty_default_1772" [
    i8 0, label %"$Some_1773"
    i8 1, label %"$None_1821"
  ], !dbg !190

"$Some_1773":                                     ; preds = %"$have_gas_1766"
  %"$$resopt_59_1774" = bitcast %TName_Option_Uint256* %"$$resopt_59_1769" to %CName_Some_Uint256*
  %"$res_gep_1775" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_59_1774", i32 0, i32 1
  %"$res_load_1776" = load %Uint256, %Uint256* %"$res_gep_1775", align 8
  %res28 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1776", %Uint256* %res28, align 8
  %"$gasrem_1777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1778" = icmp ugt i64 1, %"$gasrem_1777"
  br i1 %"$gascmp_1778", label %"$out_of_gas_1779", label %"$have_gas_1780"

"$out_of_gas_1779":                               ; preds = %"$Some_1773"
  call void @_out_of_gas()
  br label %"$have_gas_1780"

"$have_gas_1780":                                 ; preds = %"$out_of_gas_1779", %"$Some_1773"
  %"$consume_1781" = sub i64 %"$gasrem_1777", 1
  store i64 %"$consume_1781", i64* @_gasrem, align 8
  %input_29 = alloca %Uint256, align 8
  %"$gasrem_1782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1783" = icmp ugt i64 1, %"$gasrem_1782"
  br i1 %"$gascmp_1783", label %"$out_of_gas_1784", label %"$have_gas_1785"

"$out_of_gas_1784":                               ; preds = %"$have_gas_1780"
  call void @_out_of_gas()
  br label %"$have_gas_1785"

"$have_gas_1785":                                 ; preds = %"$out_of_gas_1784", %"$have_gas_1780"
  %"$consume_1786" = sub i64 %"$gasrem_1782", 1
  store i64 %"$consume_1786", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_29, align 8, !dbg !191
  %"$gasrem_1787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1788" = icmp ugt i64 1, %"$gasrem_1787"
  br i1 %"$gascmp_1788", label %"$out_of_gas_1789", label %"$have_gas_1790"

"$out_of_gas_1789":                               ; preds = %"$have_gas_1785"
  call void @_out_of_gas()
  br label %"$have_gas_1790"

"$have_gas_1790":                                 ; preds = %"$out_of_gas_1789", %"$have_gas_1785"
  %"$consume_1791" = sub i64 %"$gasrem_1787", 1
  store i64 %"$consume_1791", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  %"$gasrem_1793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1794" = icmp ugt i64 16, %"$gasrem_1793"
  br i1 %"$gascmp_1794", label %"$out_of_gas_1795", label %"$have_gas_1796"

"$out_of_gas_1795":                               ; preds = %"$have_gas_1790"
  call void @_out_of_gas()
  br label %"$have_gas_1796"

"$have_gas_1796":                                 ; preds = %"$out_of_gas_1795", %"$have_gas_1790"
  %"$consume_1797" = sub i64 %"$gasrem_1793", 16
  store i64 %"$consume_1797", i64* @_gasrem, align 8
  %"$execptr_load_1798" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1799" = alloca %Uint256, align 8
  %"$res_1800" = load %Uint256, %Uint256* %res28, align 8
  store %Uint256 %"$res_1800", %Uint256* %"$eq_res_1799", align 8
  %"$eq_input__1801" = alloca %Uint256, align 8
  %"$input__1802" = load %Uint256, %Uint256* %input_29, align 8
  store %Uint256 %"$input__1802", %Uint256* %"$eq_input__1801", align 8
  %"$eq_call_1803" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1798", %Uint256* %"$eq_res_1799", %Uint256* %"$eq_input__1801"), !dbg !194
  store %TName_Bool* %"$eq_call_1803", %TName_Bool** %test_30, align 8, !dbg !194
  %"$gasrem_1805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1806" = icmp ugt i64 1, %"$gasrem_1805"
  br i1 %"$gascmp_1806", label %"$out_of_gas_1807", label %"$have_gas_1808"

"$out_of_gas_1807":                               ; preds = %"$have_gas_1796"
  call void @_out_of_gas()
  br label %"$have_gas_1808"

"$have_gas_1808":                                 ; preds = %"$out_of_gas_1807", %"$have_gas_1796"
  %"$consume_1809" = sub i64 %"$gasrem_1805", 1
  store i64 %"$consume_1809", i64* @_gasrem, align 8
  %"$BoolUtils.andb_104" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1810" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1811" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1810", 0
  %"$BoolUtils.andb_envptr_1812" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1810", 1
  %"$$test_57_1813" = load %TName_Bool*, %TName_Bool** %"$test_57", align 8
  %"$BoolUtils.andb_call_1814" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1811"(i8* %"$BoolUtils.andb_envptr_1812", %TName_Bool* %"$$test_57_1813"), !dbg !195
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1814", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_104", align 8, !dbg !195
  %"$BoolUtils.andb_105" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_104_1815" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_104", align 8
  %"$$BoolUtils.andb_104_fptr_1816" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_104_1815", 0
  %"$$BoolUtils.andb_104_envptr_1817" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_104_1815", 1
  %"$test__1818" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_104_call_1819" = call %TName_Bool* %"$$BoolUtils.andb_104_fptr_1816"(i8* %"$$BoolUtils.andb_104_envptr_1817", %TName_Bool* %"$test__1818"), !dbg !195
  store %TName_Bool* %"$$BoolUtils.andb_104_call_1819", %TName_Bool** %"$BoolUtils.andb_105", align 8, !dbg !195
  %"$$BoolUtils.andb_105_1820" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_105", align 8
  store %TName_Bool* %"$$BoolUtils.andb_105_1820", %TName_Bool** %"$test_60", align 8, !dbg !195
  br label %"$matchsucc_1768"

"$None_1821":                                     ; preds = %"$have_gas_1766"
  %"$$resopt_59_1822" = bitcast %TName_Option_Uint256* %"$$resopt_59_1769" to %CName_None_Uint256*
  %"$gasrem_1823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1824" = icmp ugt i64 1, %"$gasrem_1823"
  br i1 %"$gascmp_1824", label %"$out_of_gas_1825", label %"$have_gas_1826"

"$out_of_gas_1825":                               ; preds = %"$None_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1826"

"$have_gas_1826":                                 ; preds = %"$out_of_gas_1825", %"$None_1821"
  %"$consume_1827" = sub i64 %"$gasrem_1823", 1
  store i64 %"$consume_1827", i64* @_gasrem, align 8
  %"$false_1828" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1828", %TName_Bool** %"$test_60", align 8, !dbg !196
  br label %"$matchsucc_1768"

"$empty_default_1772":                            ; preds = %"$have_gas_1766"
  br label %"$matchsucc_1768"

"$matchsucc_1768":                                ; preds = %"$have_gas_1826", %"$have_gas_1808", %"$empty_default_1772"
  %"$gasrem_1829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1830" = icmp ugt i64 1, %"$gasrem_1829"
  br i1 %"$gascmp_1830", label %"$out_of_gas_1831", label %"$have_gas_1832"

"$out_of_gas_1831":                               ; preds = %"$matchsucc_1768"
  call void @_out_of_gas()
  br label %"$have_gas_1832"

"$have_gas_1832":                                 ; preds = %"$out_of_gas_1831", %"$matchsucc_1768"
  %"$consume_1833" = sub i64 %"$gasrem_1829", 1
  store i64 %"$consume_1833", i64* @_gasrem, align 8
  %"$input_61" = alloca %String, align 8
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 1, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$have_gas_1832"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$have_gas_1832"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 1
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1839", i32 0, i32 0), i32 77 }, %String* %"$input_61", align 8, !dbg !198
  %"$gasrem_1840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1841" = icmp ugt i64 1, %"$gasrem_1840"
  br i1 %"$gascmp_1841", label %"$out_of_gas_1842", label %"$have_gas_1843"

"$out_of_gas_1842":                               ; preds = %"$have_gas_1837"
  call void @_out_of_gas()
  br label %"$have_gas_1843"

"$have_gas_1843":                                 ; preds = %"$out_of_gas_1842", %"$have_gas_1837"
  %"$consume_1844" = sub i64 %"$gasrem_1840", 1
  store i64 %"$consume_1844", i64* @_gasrem, align 8
  %"$resopt_62" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1846" = icmp ugt i64 16, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %"$have_gas_1843"
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %"$have_gas_1843"
  %"$consume_1849" = sub i64 %"$gasrem_1845", 16
  store i64 %"$consume_1849", i64* @_gasrem, align 8
  %"$execptr_load_1850" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_61_1851" = alloca %String, align 8
  %"$$input_61_1852" = load %String, %String* %"$input_61", align 8
  store %String %"$$input_61_1852", %String* %"$to_uint256_$input_61_1851", align 8
  %"$$to_uint256_$input_61_1851_1853" = bitcast %String* %"$to_uint256_$input_61_1851" to i8*
  %"$to_uint256_call_1854" = call i8* @_to_uint256(i8* %"$execptr_load_1850", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint256_$input_61_1851_1853"), !dbg !199
  %"$to_uint256_1855" = bitcast i8* %"$to_uint256_call_1854" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1855", %TName_Option_Uint256** %"$resopt_62", align 8, !dbg !199
  %"$gasrem_1856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1857" = icmp ugt i64 1, %"$gasrem_1856"
  br i1 %"$gascmp_1857", label %"$out_of_gas_1858", label %"$have_gas_1859"

"$out_of_gas_1858":                               ; preds = %"$have_gas_1848"
  call void @_out_of_gas()
  br label %"$have_gas_1859"

"$have_gas_1859":                                 ; preds = %"$out_of_gas_1858", %"$have_gas_1848"
  %"$consume_1860" = sub i64 %"$gasrem_1856", 1
  store i64 %"$consume_1860", i64* @_gasrem, align 8
  %"$test_63" = alloca %TName_Bool*, align 8
  %"$gasrem_1861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1862" = icmp ugt i64 2, %"$gasrem_1861"
  br i1 %"$gascmp_1862", label %"$out_of_gas_1863", label %"$have_gas_1864"

"$out_of_gas_1863":                               ; preds = %"$have_gas_1859"
  call void @_out_of_gas()
  br label %"$have_gas_1864"

"$have_gas_1864":                                 ; preds = %"$out_of_gas_1863", %"$have_gas_1859"
  %"$consume_1865" = sub i64 %"$gasrem_1861", 2
  store i64 %"$consume_1865", i64* @_gasrem, align 8
  %"$$resopt_62_1867" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_62", align 8
  %"$$resopt_62_tag_1868" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_62_1867", i32 0, i32 0
  %"$$resopt_62_tag_1869" = load i8, i8* %"$$resopt_62_tag_1868", align 1
  switch i8 %"$$resopt_62_tag_1869", label %"$empty_default_1870" [
    i8 0, label %"$Some_1871"
    i8 1, label %"$None_1919"
  ], !dbg !200

"$Some_1871":                                     ; preds = %"$have_gas_1864"
  %"$$resopt_62_1872" = bitcast %TName_Option_Uint256* %"$$resopt_62_1867" to %CName_Some_Uint256*
  %"$res_gep_1873" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_62_1872", i32 0, i32 1
  %"$res_load_1874" = load %Uint256, %Uint256* %"$res_gep_1873", align 8
  %res31 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1874", %Uint256* %res31, align 8
  %"$gasrem_1875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1876" = icmp ugt i64 1, %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$Some_1871"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$Some_1871"
  %"$consume_1879" = sub i64 %"$gasrem_1875", 1
  store i64 %"$consume_1879", i64* @_gasrem, align 8
  %input_32 = alloca %Uint256, align 8
  %"$gasrem_1880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1881" = icmp ugt i64 1, %"$gasrem_1880"
  br i1 %"$gascmp_1881", label %"$out_of_gas_1882", label %"$have_gas_1883"

"$out_of_gas_1882":                               ; preds = %"$have_gas_1878"
  call void @_out_of_gas()
  br label %"$have_gas_1883"

"$have_gas_1883":                                 ; preds = %"$out_of_gas_1882", %"$have_gas_1878"
  %"$consume_1884" = sub i64 %"$gasrem_1880", 1
  store i64 %"$consume_1884", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_32, align 8, !dbg !201
  %"$gasrem_1885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1886" = icmp ugt i64 1, %"$gasrem_1885"
  br i1 %"$gascmp_1886", label %"$out_of_gas_1887", label %"$have_gas_1888"

"$out_of_gas_1887":                               ; preds = %"$have_gas_1883"
  call void @_out_of_gas()
  br label %"$have_gas_1888"

"$have_gas_1888":                                 ; preds = %"$out_of_gas_1887", %"$have_gas_1883"
  %"$consume_1889" = sub i64 %"$gasrem_1885", 1
  store i64 %"$consume_1889", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  %"$gasrem_1891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1892" = icmp ugt i64 16, %"$gasrem_1891"
  br i1 %"$gascmp_1892", label %"$out_of_gas_1893", label %"$have_gas_1894"

"$out_of_gas_1893":                               ; preds = %"$have_gas_1888"
  call void @_out_of_gas()
  br label %"$have_gas_1894"

"$have_gas_1894":                                 ; preds = %"$out_of_gas_1893", %"$have_gas_1888"
  %"$consume_1895" = sub i64 %"$gasrem_1891", 16
  store i64 %"$consume_1895", i64* @_gasrem, align 8
  %"$execptr_load_1896" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1897" = alloca %Uint256, align 8
  %"$res_1898" = load %Uint256, %Uint256* %res31, align 8
  store %Uint256 %"$res_1898", %Uint256* %"$eq_res_1897", align 8
  %"$eq_input__1899" = alloca %Uint256, align 8
  %"$input__1900" = load %Uint256, %Uint256* %input_32, align 8
  store %Uint256 %"$input__1900", %Uint256* %"$eq_input__1899", align 8
  %"$eq_call_1901" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1896", %Uint256* %"$eq_res_1897", %Uint256* %"$eq_input__1899"), !dbg !204
  store %TName_Bool* %"$eq_call_1901", %TName_Bool** %test_33, align 8, !dbg !204
  %"$gasrem_1903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1904" = icmp ugt i64 1, %"$gasrem_1903"
  br i1 %"$gascmp_1904", label %"$out_of_gas_1905", label %"$have_gas_1906"

"$out_of_gas_1905":                               ; preds = %"$have_gas_1894"
  call void @_out_of_gas()
  br label %"$have_gas_1906"

"$have_gas_1906":                                 ; preds = %"$out_of_gas_1905", %"$have_gas_1894"
  %"$consume_1907" = sub i64 %"$gasrem_1903", 1
  store i64 %"$consume_1907", i64* @_gasrem, align 8
  %"$BoolUtils.andb_106" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1908" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1909" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1908", 0
  %"$BoolUtils.andb_envptr_1910" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1908", 1
  %"$$test_60_1911" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1912" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1909"(i8* %"$BoolUtils.andb_envptr_1910", %TName_Bool* %"$$test_60_1911"), !dbg !205
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1912", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_106", align 8, !dbg !205
  %"$BoolUtils.andb_107" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_106_1913" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_106", align 8
  %"$$BoolUtils.andb_106_fptr_1914" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_106_1913", 0
  %"$$BoolUtils.andb_106_envptr_1915" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_106_1913", 1
  %"$test__1916" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_106_call_1917" = call %TName_Bool* %"$$BoolUtils.andb_106_fptr_1914"(i8* %"$$BoolUtils.andb_106_envptr_1915", %TName_Bool* %"$test__1916"), !dbg !205
  store %TName_Bool* %"$$BoolUtils.andb_106_call_1917", %TName_Bool** %"$BoolUtils.andb_107", align 8, !dbg !205
  %"$$BoolUtils.andb_107_1918" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_107", align 8
  store %TName_Bool* %"$$BoolUtils.andb_107_1918", %TName_Bool** %"$test_63", align 8, !dbg !205
  br label %"$matchsucc_1866"

"$None_1919":                                     ; preds = %"$have_gas_1864"
  %"$$resopt_62_1920" = bitcast %TName_Option_Uint256* %"$$resopt_62_1867" to %CName_None_Uint256*
  %"$gasrem_1921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1922" = icmp ugt i64 1, %"$gasrem_1921"
  br i1 %"$gascmp_1922", label %"$out_of_gas_1923", label %"$have_gas_1924"

"$out_of_gas_1923":                               ; preds = %"$None_1919"
  call void @_out_of_gas()
  br label %"$have_gas_1924"

"$have_gas_1924":                                 ; preds = %"$out_of_gas_1923", %"$None_1919"
  %"$consume_1925" = sub i64 %"$gasrem_1921", 1
  store i64 %"$consume_1925", i64* @_gasrem, align 8
  %"$false_1926" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1926", %TName_Bool** %"$test_63", align 8, !dbg !206
  br label %"$matchsucc_1866"

"$empty_default_1870":                            ; preds = %"$have_gas_1864"
  br label %"$matchsucc_1866"

"$matchsucc_1866":                                ; preds = %"$have_gas_1924", %"$have_gas_1906", %"$empty_default_1870"
  %"$gasrem_1927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1928" = icmp ugt i64 1, %"$gasrem_1927"
  br i1 %"$gascmp_1928", label %"$out_of_gas_1929", label %"$have_gas_1930"

"$out_of_gas_1929":                               ; preds = %"$matchsucc_1866"
  call void @_out_of_gas()
  br label %"$have_gas_1930"

"$have_gas_1930":                                 ; preds = %"$out_of_gas_1929", %"$matchsucc_1866"
  %"$consume_1931" = sub i64 %"$gasrem_1927", 1
  store i64 %"$consume_1931", i64* @_gasrem, align 8
  %"$input_64" = alloca %Int256, align 8
  %"$gasrem_1932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1933" = icmp ugt i64 1, %"$gasrem_1932"
  br i1 %"$gascmp_1933", label %"$out_of_gas_1934", label %"$have_gas_1935"

"$out_of_gas_1934":                               ; preds = %"$have_gas_1930"
  call void @_out_of_gas()
  br label %"$have_gas_1935"

"$have_gas_1935":                                 ; preds = %"$out_of_gas_1934", %"$have_gas_1930"
  %"$consume_1936" = sub i64 %"$gasrem_1932", 1
  store i64 %"$consume_1936", i64* @_gasrem, align 8
  store %Int256 { i256 -282366920938463463374607431768211456 }, %Int256* %"$input_64", align 8, !dbg !208
  %"$gasrem_1937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1938" = icmp ugt i64 1, %"$gasrem_1937"
  br i1 %"$gascmp_1938", label %"$out_of_gas_1939", label %"$have_gas_1940"

"$out_of_gas_1939":                               ; preds = %"$have_gas_1935"
  call void @_out_of_gas()
  br label %"$have_gas_1940"

"$have_gas_1940":                                 ; preds = %"$out_of_gas_1939", %"$have_gas_1935"
  %"$consume_1941" = sub i64 %"$gasrem_1937", 1
  store i64 %"$consume_1941", i64* @_gasrem, align 8
  %"$resopt_65" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_1942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1943" = icmp ugt i64 16, %"$gasrem_1942"
  br i1 %"$gascmp_1943", label %"$out_of_gas_1944", label %"$have_gas_1945"

"$out_of_gas_1944":                               ; preds = %"$have_gas_1940"
  call void @_out_of_gas()
  br label %"$have_gas_1945"

"$have_gas_1945":                                 ; preds = %"$out_of_gas_1944", %"$have_gas_1940"
  %"$consume_1946" = sub i64 %"$gasrem_1942", 16
  store i64 %"$consume_1946", i64* @_gasrem, align 8
  %"$execptr_load_1947" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_64_1948" = alloca %Int256, align 8
  %"$$input_64_1949" = load %Int256, %Int256* %"$input_64", align 8
  store %Int256 %"$$input_64_1949", %Int256* %"$to_uint256_$input_64_1948", align 8
  %"$$to_uint256_$input_64_1948_1950" = bitcast %Int256* %"$to_uint256_$input_64_1948" to i8*
  %"$to_uint256_call_1951" = call i8* @_to_uint256(i8* %"$execptr_load_1947", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", i8* %"$$to_uint256_$input_64_1948_1950"), !dbg !209
  %"$to_uint256_1952" = bitcast i8* %"$to_uint256_call_1951" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1952", %TName_Option_Uint256** %"$resopt_65", align 8, !dbg !209
  %"$gasrem_1953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1954" = icmp ugt i64 1, %"$gasrem_1953"
  br i1 %"$gascmp_1954", label %"$out_of_gas_1955", label %"$have_gas_1956"

"$out_of_gas_1955":                               ; preds = %"$have_gas_1945"
  call void @_out_of_gas()
  br label %"$have_gas_1956"

"$have_gas_1956":                                 ; preds = %"$out_of_gas_1955", %"$have_gas_1945"
  %"$consume_1957" = sub i64 %"$gasrem_1953", 1
  store i64 %"$consume_1957", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 2, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1956"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1956"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 2
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %"$$resopt_65_1964" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_65", align 8
  %"$$resopt_65_tag_1965" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_65_1964", i32 0, i32 0
  %"$$resopt_65_tag_1966" = load i8, i8* %"$$resopt_65_tag_1965", align 1
  switch i8 %"$$resopt_65_tag_1966", label %"$empty_default_1967" [
    i8 0, label %"$Some_1968"
    i8 1, label %"$None_1978"
  ], !dbg !210

"$Some_1968":                                     ; preds = %"$have_gas_1961"
  %"$$resopt_65_1969" = bitcast %TName_Option_Uint256* %"$$resopt_65_1964" to %CName_Some_Uint256*
  %"$$$resopt_65_81_gep_1970" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_65_1969", i32 0, i32 1
  %"$$$resopt_65_81_load_1971" = load %Uint256, %Uint256* %"$$$resopt_65_81_gep_1970", align 8
  %"$$resopt_65_81" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_65_81_load_1971", %Uint256* %"$$resopt_65_81", align 8
  %"$gasrem_1972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1973" = icmp ugt i64 1, %"$gasrem_1972"
  br i1 %"$gascmp_1973", label %"$out_of_gas_1974", label %"$have_gas_1975"

"$out_of_gas_1974":                               ; preds = %"$Some_1968"
  call void @_out_of_gas()
  br label %"$have_gas_1975"

"$have_gas_1975":                                 ; preds = %"$out_of_gas_1974", %"$Some_1968"
  %"$consume_1976" = sub i64 %"$gasrem_1972", 1
  store i64 %"$consume_1976", i64* @_gasrem, align 8
  %"$false_1977" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1977", %TName_Bool** %"$test_66", align 8, !dbg !211
  br label %"$matchsucc_1963"

"$None_1978":                                     ; preds = %"$have_gas_1961"
  %"$$resopt_65_1979" = bitcast %TName_Option_Uint256* %"$$resopt_65_1964" to %CName_None_Uint256*
  %"$gasrem_1980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1981" = icmp ugt i64 1, %"$gasrem_1980"
  br i1 %"$gascmp_1981", label %"$out_of_gas_1982", label %"$have_gas_1983"

"$out_of_gas_1982":                               ; preds = %"$None_1978"
  call void @_out_of_gas()
  br label %"$have_gas_1983"

"$have_gas_1983":                                 ; preds = %"$out_of_gas_1982", %"$None_1978"
  %"$consume_1984" = sub i64 %"$gasrem_1980", 1
  store i64 %"$consume_1984", i64* @_gasrem, align 8
  %"$$test_63_1985" = load %TName_Bool*, %TName_Bool** %"$test_63", align 8
  store %TName_Bool* %"$$test_63_1985", %TName_Bool** %"$test_66", align 8, !dbg !214
  br label %"$matchsucc_1963"

"$empty_default_1967":                            ; preds = %"$have_gas_1961"
  br label %"$matchsucc_1963"

"$matchsucc_1963":                                ; preds = %"$have_gas_1983", %"$have_gas_1975", %"$empty_default_1967"
  %"$gasrem_1986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1987" = icmp ugt i64 1, %"$gasrem_1986"
  br i1 %"$gascmp_1987", label %"$out_of_gas_1988", label %"$have_gas_1989"

"$out_of_gas_1988":                               ; preds = %"$matchsucc_1963"
  call void @_out_of_gas()
  br label %"$have_gas_1989"

"$have_gas_1989":                                 ; preds = %"$out_of_gas_1988", %"$matchsucc_1963"
  %"$consume_1990" = sub i64 %"$gasrem_1986", 1
  store i64 %"$consume_1990", i64* @_gasrem, align 8
  %"$input_67" = alloca %String, align 8
  %"$gasrem_1991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1992" = icmp ugt i64 1, %"$gasrem_1991"
  br i1 %"$gascmp_1992", label %"$out_of_gas_1993", label %"$have_gas_1994"

"$out_of_gas_1993":                               ; preds = %"$have_gas_1989"
  call void @_out_of_gas()
  br label %"$have_gas_1994"

"$have_gas_1994":                                 ; preds = %"$out_of_gas_1993", %"$have_gas_1989"
  %"$consume_1995" = sub i64 %"$gasrem_1991", 1
  store i64 %"$consume_1995", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"$stringlit_1996", i32 0, i32 0), i32 37 }, %String* %"$input_67", align 8, !dbg !216
  %"$gasrem_1997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1998" = icmp ugt i64 1, %"$gasrem_1997"
  br i1 %"$gascmp_1998", label %"$out_of_gas_1999", label %"$have_gas_2000"

"$out_of_gas_1999":                               ; preds = %"$have_gas_1994"
  call void @_out_of_gas()
  br label %"$have_gas_2000"

"$have_gas_2000":                                 ; preds = %"$out_of_gas_1999", %"$have_gas_1994"
  %"$consume_2001" = sub i64 %"$gasrem_1997", 1
  store i64 %"$consume_2001", i64* @_gasrem, align 8
  %"$resopt_68" = alloca %TName_Option_Uint256*, align 8
  %"$gasrem_2002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2003" = icmp ugt i64 16, %"$gasrem_2002"
  br i1 %"$gascmp_2003", label %"$out_of_gas_2004", label %"$have_gas_2005"

"$out_of_gas_2004":                               ; preds = %"$have_gas_2000"
  call void @_out_of_gas()
  br label %"$have_gas_2005"

"$have_gas_2005":                                 ; preds = %"$out_of_gas_2004", %"$have_gas_2000"
  %"$consume_2006" = sub i64 %"$gasrem_2002", 16
  store i64 %"$consume_2006", i64* @_gasrem, align 8
  %"$execptr_load_2007" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_67_2008" = alloca %String, align 8
  %"$$input_67_2009" = load %String, %String* %"$input_67", align 8
  store %String %"$$input_67_2009", %String* %"$to_uint256_$input_67_2008", align 8
  %"$$to_uint256_$input_67_2008_2010" = bitcast %String* %"$to_uint256_$input_67_2008" to i8*
  %"$to_uint256_call_2011" = call i8* @_to_uint256(i8* %"$execptr_load_2007", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint256_$input_67_2008_2010"), !dbg !217
  %"$to_uint256_2012" = bitcast i8* %"$to_uint256_call_2011" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_2012", %TName_Option_Uint256** %"$resopt_68", align 8, !dbg !217
  %"$gasrem_2013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2014" = icmp ugt i64 1, %"$gasrem_2013"
  br i1 %"$gascmp_2014", label %"$out_of_gas_2015", label %"$have_gas_2016"

"$out_of_gas_2015":                               ; preds = %"$have_gas_2005"
  call void @_out_of_gas()
  br label %"$have_gas_2016"

"$have_gas_2016":                                 ; preds = %"$out_of_gas_2015", %"$have_gas_2005"
  %"$consume_2017" = sub i64 %"$gasrem_2013", 1
  store i64 %"$consume_2017", i64* @_gasrem, align 8
  %"$test_69" = alloca %TName_Bool*, align 8
  %"$gasrem_2018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2019" = icmp ugt i64 2, %"$gasrem_2018"
  br i1 %"$gascmp_2019", label %"$out_of_gas_2020", label %"$have_gas_2021"

"$out_of_gas_2020":                               ; preds = %"$have_gas_2016"
  call void @_out_of_gas()
  br label %"$have_gas_2021"

"$have_gas_2021":                                 ; preds = %"$out_of_gas_2020", %"$have_gas_2016"
  %"$consume_2022" = sub i64 %"$gasrem_2018", 2
  store i64 %"$consume_2022", i64* @_gasrem, align 8
  %"$$resopt_68_2024" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_68", align 8
  %"$$resopt_68_tag_2025" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_68_2024", i32 0, i32 0
  %"$$resopt_68_tag_2026" = load i8, i8* %"$$resopt_68_tag_2025", align 1
  switch i8 %"$$resopt_68_tag_2026", label %"$empty_default_2027" [
    i8 0, label %"$Some_2028"
    i8 1, label %"$None_2038"
  ], !dbg !218

"$Some_2028":                                     ; preds = %"$have_gas_2021"
  %"$$resopt_68_2029" = bitcast %TName_Option_Uint256* %"$$resopt_68_2024" to %CName_Some_Uint256*
  %"$$$resopt_68_82_gep_2030" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_68_2029", i32 0, i32 1
  %"$$$resopt_68_82_load_2031" = load %Uint256, %Uint256* %"$$$resopt_68_82_gep_2030", align 8
  %"$$resopt_68_82" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_68_82_load_2031", %Uint256* %"$$resopt_68_82", align 8
  %"$gasrem_2032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2033" = icmp ugt i64 1, %"$gasrem_2032"
  br i1 %"$gascmp_2033", label %"$out_of_gas_2034", label %"$have_gas_2035"

"$out_of_gas_2034":                               ; preds = %"$Some_2028"
  call void @_out_of_gas()
  br label %"$have_gas_2035"

"$have_gas_2035":                                 ; preds = %"$out_of_gas_2034", %"$Some_2028"
  %"$consume_2036" = sub i64 %"$gasrem_2032", 1
  store i64 %"$consume_2036", i64* @_gasrem, align 8
  %"$false_2037" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2037", %TName_Bool** %"$test_69", align 8, !dbg !219
  br label %"$matchsucc_2023"

"$None_2038":                                     ; preds = %"$have_gas_2021"
  %"$$resopt_68_2039" = bitcast %TName_Option_Uint256* %"$$resopt_68_2024" to %CName_None_Uint256*
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$None_2038"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$None_2038"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  %"$$test_66_2045" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  store %TName_Bool* %"$$test_66_2045", %TName_Bool** %"$test_69", align 8, !dbg !222
  br label %"$matchsucc_2023"

"$empty_default_2027":                            ; preds = %"$have_gas_2021"
  br label %"$matchsucc_2023"

"$matchsucc_2023":                                ; preds = %"$have_gas_2043", %"$have_gas_2035", %"$empty_default_2027"
  %"$gasrem_2046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2047" = icmp ugt i64 1, %"$gasrem_2046"
  br i1 %"$gascmp_2047", label %"$out_of_gas_2048", label %"$have_gas_2049"

"$out_of_gas_2048":                               ; preds = %"$matchsucc_2023"
  call void @_out_of_gas()
  br label %"$have_gas_2049"

"$have_gas_2049":                                 ; preds = %"$out_of_gas_2048", %"$matchsucc_2023"
  %"$consume_2050" = sub i64 %"$gasrem_2046", 1
  store i64 %"$consume_2050", i64* @_gasrem, align 8
  %"$input_70" = alloca %String, align 8
  %"$gasrem_2051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2052" = icmp ugt i64 1, %"$gasrem_2051"
  br i1 %"$gascmp_2052", label %"$out_of_gas_2053", label %"$have_gas_2054"

"$out_of_gas_2053":                               ; preds = %"$have_gas_2049"
  call void @_out_of_gas()
  br label %"$have_gas_2054"

"$have_gas_2054":                                 ; preds = %"$out_of_gas_2053", %"$have_gas_2049"
  %"$consume_2055" = sub i64 %"$gasrem_2051", 1
  store i64 %"$consume_2055", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_2056", i32 0, i32 0), i32 4 }, %String* %"$input_70", align 8, !dbg !224
  %"$gasrem_2057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2058" = icmp ugt i64 1, %"$gasrem_2057"
  br i1 %"$gascmp_2058", label %"$out_of_gas_2059", label %"$have_gas_2060"

"$out_of_gas_2059":                               ; preds = %"$have_gas_2054"
  call void @_out_of_gas()
  br label %"$have_gas_2060"

"$have_gas_2060":                                 ; preds = %"$out_of_gas_2059", %"$have_gas_2054"
  %"$consume_2061" = sub i64 %"$gasrem_2057", 1
  store i64 %"$consume_2061", i64* @_gasrem, align 8
  %"$resopt_71" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_2062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2063" = icmp ugt i64 4, %"$gasrem_2062"
  br i1 %"$gascmp_2063", label %"$out_of_gas_2064", label %"$have_gas_2065"

"$out_of_gas_2064":                               ; preds = %"$have_gas_2060"
  call void @_out_of_gas()
  br label %"$have_gas_2065"

"$have_gas_2065":                                 ; preds = %"$out_of_gas_2064", %"$have_gas_2060"
  %"$consume_2066" = sub i64 %"$gasrem_2062", 4
  store i64 %"$consume_2066", i64* @_gasrem, align 8
  %"$execptr_load_2067" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_70_2068" = alloca %String, align 8
  %"$$input_70_2069" = load %String, %String* %"$input_70", align 8
  store %String %"$$input_70_2069", %String* %"$to_uint64_$input_70_2068", align 8
  %"$$to_uint64_$input_70_2068_2070" = bitcast %String* %"$to_uint64_$input_70_2068" to i8*
  %"$to_uint64_call_2071" = call i8* @_to_uint64(i8* %"$execptr_load_2067", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint64_$input_70_2068_2070"), !dbg !225
  %"$to_uint64_2072" = bitcast i8* %"$to_uint64_call_2071" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_2072", %TName_Option_Uint64** %"$resopt_71", align 8, !dbg !225
  %"$gasrem_2073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2074" = icmp ugt i64 1, %"$gasrem_2073"
  br i1 %"$gascmp_2074", label %"$out_of_gas_2075", label %"$have_gas_2076"

"$out_of_gas_2075":                               ; preds = %"$have_gas_2065"
  call void @_out_of_gas()
  br label %"$have_gas_2076"

"$have_gas_2076":                                 ; preds = %"$out_of_gas_2075", %"$have_gas_2065"
  %"$consume_2077" = sub i64 %"$gasrem_2073", 1
  store i64 %"$consume_2077", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_2078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2079" = icmp ugt i64 2, %"$gasrem_2078"
  br i1 %"$gascmp_2079", label %"$out_of_gas_2080", label %"$have_gas_2081"

"$out_of_gas_2080":                               ; preds = %"$have_gas_2076"
  call void @_out_of_gas()
  br label %"$have_gas_2081"

"$have_gas_2081":                                 ; preds = %"$out_of_gas_2080", %"$have_gas_2076"
  %"$consume_2082" = sub i64 %"$gasrem_2078", 2
  store i64 %"$consume_2082", i64* @_gasrem, align 8
  %"$$resopt_71_2084" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_71", align 8
  %"$$resopt_71_tag_2085" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_71_2084", i32 0, i32 0
  %"$$resopt_71_tag_2086" = load i8, i8* %"$$resopt_71_tag_2085", align 1
  switch i8 %"$$resopt_71_tag_2086", label %"$empty_default_2087" [
    i8 0, label %"$Some_2088"
    i8 1, label %"$None_2098"
  ], !dbg !226

"$Some_2088":                                     ; preds = %"$have_gas_2081"
  %"$$resopt_71_2089" = bitcast %TName_Option_Uint64* %"$$resopt_71_2084" to %CName_Some_Uint64*
  %"$$$resopt_71_83_gep_2090" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_71_2089", i32 0, i32 1
  %"$$$resopt_71_83_load_2091" = load %Uint64, %Uint64* %"$$$resopt_71_83_gep_2090", align 8
  %"$$resopt_71_83" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_71_83_load_2091", %Uint64* %"$$resopt_71_83", align 8
  %"$gasrem_2092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2093" = icmp ugt i64 1, %"$gasrem_2092"
  br i1 %"$gascmp_2093", label %"$out_of_gas_2094", label %"$have_gas_2095"

"$out_of_gas_2094":                               ; preds = %"$Some_2088"
  call void @_out_of_gas()
  br label %"$have_gas_2095"

"$have_gas_2095":                                 ; preds = %"$out_of_gas_2094", %"$Some_2088"
  %"$consume_2096" = sub i64 %"$gasrem_2092", 1
  store i64 %"$consume_2096", i64* @_gasrem, align 8
  %"$false_2097" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2097", %TName_Bool** %"$test_72", align 8, !dbg !227
  br label %"$matchsucc_2083"

"$None_2098":                                     ; preds = %"$have_gas_2081"
  %"$$resopt_71_2099" = bitcast %TName_Option_Uint64* %"$$resopt_71_2084" to %CName_None_Uint64*
  %"$gasrem_2100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2101" = icmp ugt i64 1, %"$gasrem_2100"
  br i1 %"$gascmp_2101", label %"$out_of_gas_2102", label %"$have_gas_2103"

"$out_of_gas_2102":                               ; preds = %"$None_2098"
  call void @_out_of_gas()
  br label %"$have_gas_2103"

"$have_gas_2103":                                 ; preds = %"$out_of_gas_2102", %"$None_2098"
  %"$consume_2104" = sub i64 %"$gasrem_2100", 1
  store i64 %"$consume_2104", i64* @_gasrem, align 8
  %"$$test_69_2105" = load %TName_Bool*, %TName_Bool** %"$test_69", align 8
  store %TName_Bool* %"$$test_69_2105", %TName_Bool** %"$test_72", align 8, !dbg !230
  br label %"$matchsucc_2083"

"$empty_default_2087":                            ; preds = %"$have_gas_2081"
  br label %"$matchsucc_2083"

"$matchsucc_2083":                                ; preds = %"$have_gas_2103", %"$have_gas_2095", %"$empty_default_2087"
  %"$gasrem_2106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2107" = icmp ugt i64 1, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$matchsucc_2083"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$matchsucc_2083"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 1
  store i64 %"$consume_2110", i64* @_gasrem, align 8
  %"$$test_72_2111" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  store %TName_Bool* %"$$test_72_2111", %TName_Bool** %"$expr_112", align 8, !dbg !232
  %"$$expr_112_2112" = load %TName_Bool*, %TName_Bool** %"$expr_112", align 8
  ret %TName_Bool* %"$$expr_112_2112"
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
  %"$exprval_2113" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2114" = bitcast %TName_Bool* %"$exprval_2113" to i8*
  %"$execptr_load_2115" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2115", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_149", i8* %"$memvoidcast_2114")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_uint.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_110", linkageName: "$fundef_110", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_108", linkageName: "$fundef_108", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 0, scope: !17)
!20 = !DILocation(line: 7, column: 3, scope: !17)
!21 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 1, column: 13, scope: !21)
!23 = !DILocation(line: 2, column: 12, scope: !21)
!24 = !DILocation(line: 4, column: 13, scope: !21)
!25 = !DILocation(line: 5, column: 14, scope: !21)
!26 = !DILocation(line: 7, column: 3, scope: !21)
!27 = !DILocation(line: 9, column: 18, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !2, line: 8, column: 5)
!29 = distinct !DILexicalBlock(scope: !21, file: !2, line: 7, column: 3)
!30 = !DILocation(line: 10, column: 17, scope: !28)
!31 = !DILocation(line: 11, column: 5, scope: !28)
!32 = !DILocation(line: 12, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !2, line: 12, column: 5)
!34 = !DILocation(line: 16, column: 13, scope: !21)
!35 = !DILocation(line: 17, column: 14, scope: !21)
!36 = !DILocation(line: 19, column: 3, scope: !21)
!37 = !DILocation(line: 21, column: 18, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !2, line: 20, column: 5)
!39 = distinct !DILexicalBlock(scope: !21, file: !2, line: 19, column: 3)
!40 = !DILocation(line: 22, column: 17, scope: !38)
!41 = !DILocation(line: 23, column: 5, scope: !38)
!42 = !DILocation(line: 24, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !2, line: 24, column: 5)
!44 = !DILocation(line: 28, column: 13, scope: !21)
!45 = !DILocation(line: 29, column: 14, scope: !21)
!46 = !DILocation(line: 31, column: 3, scope: !21)
!47 = !DILocation(line: 32, column: 15, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !2, line: 32, column: 5)
!49 = distinct !DILexicalBlock(scope: !21, file: !2, line: 31, column: 3)
!50 = !DILocation(line: 33, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !49, file: !2, line: 33, column: 5)
!52 = !DILocation(line: 37, column: 13, scope: !21)
!53 = !DILocation(line: 38, column: 14, scope: !21)
!54 = !DILocation(line: 40, column: 3, scope: !21)
!55 = !DILocation(line: 41, column: 15, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !2, line: 41, column: 5)
!57 = distinct !DILexicalBlock(scope: !21, file: !2, line: 40, column: 3)
!58 = !DILocation(line: 42, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !57, file: !2, line: 42, column: 5)
!60 = !DILocation(line: 46, column: 13, scope: !21)
!61 = !DILocation(line: 47, column: 14, scope: !21)
!62 = !DILocation(line: 49, column: 3, scope: !21)
!63 = !DILocation(line: 50, column: 15, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !2, line: 50, column: 5)
!65 = distinct !DILexicalBlock(scope: !21, file: !2, line: 49, column: 3)
!66 = !DILocation(line: 51, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !65, file: !2, line: 51, column: 5)
!68 = !DILocation(line: 55, column: 13, scope: !21)
!69 = !DILocation(line: 56, column: 14, scope: !21)
!70 = !DILocation(line: 58, column: 3, scope: !21)
!71 = !DILocation(line: 60, column: 18, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 59, column: 5)
!73 = distinct !DILexicalBlock(scope: !21, file: !2, line: 58, column: 3)
!74 = !DILocation(line: 61, column: 17, scope: !72)
!75 = !DILocation(line: 62, column: 5, scope: !72)
!76 = !DILocation(line: 63, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !2, line: 63, column: 5)
!78 = !DILocation(line: 67, column: 13, scope: !21)
!79 = !DILocation(line: 68, column: 14, scope: !21)
!80 = !DILocation(line: 70, column: 3, scope: !21)
!81 = !DILocation(line: 72, column: 18, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 71, column: 5)
!83 = distinct !DILexicalBlock(scope: !21, file: !2, line: 70, column: 3)
!84 = !DILocation(line: 73, column: 17, scope: !82)
!85 = !DILocation(line: 74, column: 5, scope: !82)
!86 = !DILocation(line: 75, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !2, line: 75, column: 5)
!88 = !DILocation(line: 79, column: 13, scope: !21)
!89 = !DILocation(line: 80, column: 14, scope: !21)
!90 = !DILocation(line: 82, column: 3, scope: !21)
!91 = !DILocation(line: 84, column: 18, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 83, column: 5)
!93 = distinct !DILexicalBlock(scope: !21, file: !2, line: 82, column: 3)
!94 = !DILocation(line: 85, column: 17, scope: !92)
!95 = !DILocation(line: 86, column: 5, scope: !92)
!96 = !DILocation(line: 87, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !2, line: 87, column: 5)
!98 = !DILocation(line: 91, column: 13, scope: !21)
!99 = !DILocation(line: 92, column: 14, scope: !21)
!100 = !DILocation(line: 94, column: 3, scope: !21)
!101 = !DILocation(line: 95, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 95, column: 5)
!103 = distinct !DILexicalBlock(scope: !21, file: !2, line: 94, column: 3)
!104 = !DILocation(line: 96, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !2, line: 96, column: 5)
!106 = !DILocation(line: 100, column: 13, scope: !21)
!107 = !DILocation(line: 101, column: 14, scope: !21)
!108 = !DILocation(line: 103, column: 3, scope: !21)
!109 = !DILocation(line: 104, column: 15, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 104, column: 5)
!111 = distinct !DILexicalBlock(scope: !21, file: !2, line: 103, column: 3)
!112 = !DILocation(line: 105, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !111, file: !2, line: 105, column: 5)
!114 = !DILocation(line: 109, column: 13, scope: !21)
!115 = !DILocation(line: 110, column: 14, scope: !21)
!116 = !DILocation(line: 112, column: 3, scope: !21)
!117 = !DILocation(line: 114, column: 18, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 113, column: 5)
!119 = distinct !DILexicalBlock(scope: !21, file: !2, line: 112, column: 3)
!120 = !DILocation(line: 115, column: 17, scope: !118)
!121 = !DILocation(line: 116, column: 5, scope: !118)
!122 = !DILocation(line: 117, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !2, line: 117, column: 5)
!124 = !DILocation(line: 121, column: 13, scope: !21)
!125 = !DILocation(line: 122, column: 14, scope: !21)
!126 = !DILocation(line: 124, column: 3, scope: !21)
!127 = !DILocation(line: 126, column: 18, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 125, column: 5)
!129 = distinct !DILexicalBlock(scope: !21, file: !2, line: 124, column: 3)
!130 = !DILocation(line: 127, column: 17, scope: !128)
!131 = !DILocation(line: 128, column: 5, scope: !128)
!132 = !DILocation(line: 129, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !2, line: 129, column: 5)
!134 = !DILocation(line: 133, column: 13, scope: !21)
!135 = !DILocation(line: 134, column: 14, scope: !21)
!136 = !DILocation(line: 136, column: 3, scope: !21)
!137 = !DILocation(line: 137, column: 15, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 137, column: 5)
!139 = distinct !DILexicalBlock(scope: !21, file: !2, line: 136, column: 3)
!140 = !DILocation(line: 138, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !2, line: 138, column: 5)
!142 = !DILocation(line: 142, column: 13, scope: !21)
!143 = !DILocation(line: 143, column: 14, scope: !21)
!144 = !DILocation(line: 145, column: 3, scope: !21)
!145 = !DILocation(line: 147, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 146, column: 5)
!147 = distinct !DILexicalBlock(scope: !21, file: !2, line: 145, column: 3)
!148 = !DILocation(line: 148, column: 17, scope: !146)
!149 = !DILocation(line: 149, column: 5, scope: !146)
!150 = !DILocation(line: 150, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !2, line: 150, column: 5)
!152 = !DILocation(line: 154, column: 13, scope: !21)
!153 = !DILocation(line: 155, column: 14, scope: !21)
!154 = !DILocation(line: 157, column: 3, scope: !21)
!155 = !DILocation(line: 159, column: 18, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 158, column: 5)
!157 = distinct !DILexicalBlock(scope: !21, file: !2, line: 157, column: 3)
!158 = !DILocation(line: 160, column: 17, scope: !156)
!159 = !DILocation(line: 161, column: 5, scope: !156)
!160 = !DILocation(line: 162, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !2, line: 162, column: 5)
!162 = !DILocation(line: 166, column: 13, scope: !21)
!163 = !DILocation(line: 167, column: 14, scope: !21)
!164 = !DILocation(line: 169, column: 3, scope: !21)
!165 = !DILocation(line: 171, column: 18, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 170, column: 5)
!167 = distinct !DILexicalBlock(scope: !21, file: !2, line: 169, column: 3)
!168 = !DILocation(line: 172, column: 17, scope: !166)
!169 = !DILocation(line: 173, column: 5, scope: !166)
!170 = !DILocation(line: 174, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !2, line: 174, column: 5)
!172 = !DILocation(line: 178, column: 13, scope: !21)
!173 = !DILocation(line: 179, column: 14, scope: !21)
!174 = !DILocation(line: 181, column: 3, scope: !21)
!175 = !DILocation(line: 182, column: 15, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 182, column: 5)
!177 = distinct !DILexicalBlock(scope: !21, file: !2, line: 181, column: 3)
!178 = !DILocation(line: 183, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !177, file: !2, line: 183, column: 5)
!180 = !DILocation(line: 187, column: 25, scope: !21)
!181 = !DILocation(line: 188, column: 14, scope: !21)
!182 = !DILocation(line: 190, column: 3, scope: !21)
!183 = !DILocation(line: 191, column: 15, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 191, column: 5)
!185 = distinct !DILexicalBlock(scope: !21, file: !2, line: 190, column: 3)
!186 = !DILocation(line: 192, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !2, line: 192, column: 5)
!188 = !DILocation(line: 196, column: 13, scope: !21)
!189 = !DILocation(line: 197, column: 14, scope: !21)
!190 = !DILocation(line: 199, column: 3, scope: !21)
!191 = !DILocation(line: 201, column: 18, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 200, column: 5)
!193 = distinct !DILexicalBlock(scope: !21, file: !2, line: 199, column: 3)
!194 = !DILocation(line: 202, column: 17, scope: !192)
!195 = !DILocation(line: 203, column: 5, scope: !192)
!196 = !DILocation(line: 204, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !2, line: 204, column: 5)
!198 = !DILocation(line: 208, column: 91, scope: !21)
!199 = !DILocation(line: 209, column: 14, scope: !21)
!200 = !DILocation(line: 211, column: 3, scope: !21)
!201 = !DILocation(line: 213, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 212, column: 5)
!203 = distinct !DILexicalBlock(scope: !21, file: !2, line: 211, column: 3)
!204 = !DILocation(line: 214, column: 17, scope: !202)
!205 = !DILocation(line: 215, column: 5, scope: !202)
!206 = !DILocation(line: 216, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !2, line: 216, column: 5)
!208 = !DILocation(line: 220, column: 13, scope: !21)
!209 = !DILocation(line: 221, column: 14, scope: !21)
!210 = !DILocation(line: 223, column: 3, scope: !21)
!211 = !DILocation(line: 224, column: 15, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 224, column: 5)
!213 = distinct !DILexicalBlock(scope: !21, file: !2, line: 223, column: 3)
!214 = !DILocation(line: 225, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !2, line: 225, column: 5)
!216 = !DILocation(line: 229, column: 51, scope: !21)
!217 = !DILocation(line: 230, column: 14, scope: !21)
!218 = !DILocation(line: 232, column: 3, scope: !21)
!219 = !DILocation(line: 233, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 233, column: 5)
!221 = distinct !DILexicalBlock(scope: !21, file: !2, line: 232, column: 3)
!222 = !DILocation(line: 234, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !2, line: 234, column: 5)
!224 = !DILocation(line: 238, column: 18, scope: !21)
!225 = !DILocation(line: 239, column: 14, scope: !21)
!226 = !DILocation(line: 241, column: 3, scope: !21)
!227 = !DILocation(line: 242, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 242, column: 5)
!229 = distinct !DILexicalBlock(scope: !21, file: !2, line: 241, column: 3)
!230 = !DILocation(line: 243, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !229, file: !2, line: 243, column: 5)
!232 = !DILocation(line: 247, column: 1, scope: !21)
