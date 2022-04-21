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

%"$TyDescrTy_PrimTyp_113" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_145" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_144"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_144" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_146"**, %"$TyDescrTy_ADTTyp_145"* }
%"$TyDescrTy_ADTTyp_Constr_146" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2118" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2119" = type { %ParamDescrString, i32, %"$ParamDescr_2118"* }
%"$$fundef_110_env_206" = type { %TName_Bool* }
%"$$fundef_108_env_207" = type {}
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
@"$TyDescr_ReplicateContr_Prim_140" = global %"$TyDescrTy_PrimTyp_113" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_141" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_ReplicateContr_Prim_140" to i8*) }
@"$TyDescr_Bystr_Prim_142" = global %"$TyDescrTy_PrimTyp_113" { i32 7, i32 0 }
@"$TyDescr_Bystr_143" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_113"* @"$TyDescr_Bystr_Prim_142" to i8*) }
@"$TyDescr_ADT_Option_Uint256_147" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint256_ADTTyp_Specl_164" to i8*) }
@"$TyDescr_ADT_Option_Uint128_148" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_173" to i8*) }
@"$TyDescr_ADT_Option_Uint64_149" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_182" to i8*) }
@"$TyDescr_ADT_Option_Uint32_150" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint32_ADTTyp_Specl_191" to i8*) }
@"$TyDescr_ADT_Bool_151" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Bool_ADTTyp_Specl_203" to i8*) }
@"$TyDescr_Option_ADTTyp_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_145" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_193", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 4, %"$TyDescrTy_ADTTyp_Specl_144"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_144"*], [4 x %"$TyDescrTy_ADTTyp_Specl_144"*]* @"$TyDescr_Option_ADTTyp_m_specls_192", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint256_Constr_m_args_156" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint256_129"]
@"$TyDescr_ADT_Some_157" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint256_ADTTyp_Constr_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_157", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint256_Constr_m_args_156", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint256_Constr_m_args_159" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_160" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint256_ADTTyp_Constr_161" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_160", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint256_Constr_m_args_159", i32 0, i32 0) }
@"$TyDescr_Option_Uint256_ADTTyp_Specl_m_constrs_162" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_146"*] [%"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_Some_Uint256_ADTTyp_Constr_158", %"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_None_Uint256_ADTTyp_Constr_161"]
@"$TyDescr_Option_Uint256_ADTTyp_Specl_m_TArgs_163" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint256_129"]
@"$TyDescr_Option_Uint256_ADTTyp_Specl_164" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_144" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint256_ADTTyp_Specl_m_TArgs_163", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_146"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_146"*], [2 x %"$TyDescrTy_ADTTyp_Constr_146"*]* @"$TyDescr_Option_Uint256_ADTTyp_Specl_m_constrs_162", i32 0, i32 0), %"$TyDescrTy_ADTTyp_145"* @"$TyDescr_Option_ADTTyp_155" }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_165" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_125"]
@"$TyDescr_ADT_Some_166" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_167" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_166", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_165", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_168" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_169" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_170" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_169", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_168", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_171" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_146"*] [%"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_167", %"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_170"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_172" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_125"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_173" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_144" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_172", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_146"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_146"*], [2 x %"$TyDescrTy_ADTTyp_Constr_146"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_171", i32 0, i32 0), %"$TyDescrTy_ADTTyp_145"* @"$TyDescr_Option_ADTTyp_155" }
@"$TyDescr_Option_Some_Uint64_Constr_m_args_174" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_121"]
@"$TyDescr_ADT_Some_175" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_176" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_175", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint64_Constr_m_args_174", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint64_Constr_m_args_177" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_178" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint64_ADTTyp_Constr_179" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_178", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint64_Constr_m_args_177", i32 0, i32 0) }
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_180" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_146"*] [%"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_176", %"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_None_Uint64_ADTTyp_Constr_179"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_181" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_121"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_182" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_144" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_181", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_146"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_146"*], [2 x %"$TyDescrTy_ADTTyp_Constr_146"*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_180", i32 0, i32 0), %"$TyDescrTy_ADTTyp_145"* @"$TyDescr_Option_ADTTyp_155" }
@"$TyDescr_Option_Some_Uint32_Constr_m_args_183" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_117"]
@"$TyDescr_ADT_Some_184" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint32_ADTTyp_Constr_185" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_184", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint32_Constr_m_args_183", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint32_Constr_m_args_186" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_187" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint32_ADTTyp_Constr_188" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_187", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint32_Constr_m_args_186", i32 0, i32 0) }
@"$TyDescr_Option_Uint32_ADTTyp_Specl_m_constrs_189" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_146"*] [%"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_Some_Uint32_ADTTyp_Constr_185", %"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Option_None_Uint32_ADTTyp_Constr_188"]
@"$TyDescr_Option_Uint32_ADTTyp_Specl_m_TArgs_190" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_117"]
@"$TyDescr_Option_Uint32_ADTTyp_Specl_191" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_144" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint32_ADTTyp_Specl_m_TArgs_190", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_146"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_146"*], [2 x %"$TyDescrTy_ADTTyp_Constr_146"*]* @"$TyDescr_Option_Uint32_ADTTyp_Specl_m_constrs_189", i32 0, i32 0), %"$TyDescrTy_ADTTyp_145"* @"$TyDescr_Option_ADTTyp_155" }
@"$TyDescr_Option_ADTTyp_m_specls_192" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_144"*] [%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint256_ADTTyp_Specl_164", %"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_173", %"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_182", %"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Option_Uint32_ADTTyp_Specl_191"]
@"$TyDescr_ADT_Option_193" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_194" = unnamed_addr constant %"$TyDescrTy_ADTTyp_145" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_205", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_144"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_144"*], [1 x %"$TyDescrTy_ADTTyp_Specl_144"*]* @"$TyDescr_Bool_ADTTyp_m_specls_204", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_195" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_196" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_197" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_196", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_195", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_198" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_199" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_200" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_146" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_199", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_198", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_201" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_146"*] [%"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Bool_True_ADTTyp_Constr_197", %"$TyDescrTy_ADTTyp_Constr_146"* @"$TyDescr_Bool_False_ADTTyp_Constr_200"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_202" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_203" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_144" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_202", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_146"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_146"*], [2 x %"$TyDescrTy_ADTTyp_Constr_146"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_201", i32 0, i32 0), %"$TyDescrTy_ADTTyp_145"* @"$TyDescr_Bool_ADTTyp_194" }
@"$TyDescr_Bool_ADTTyp_m_specls_204" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_144"*] [%"$TyDescrTy_ADTTyp_Specl_144"* @"$TyDescr_Bool_ADTTyp_Specl_203"]
@"$TyDescr_ADT_Bool_205" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_1684" = unnamed_addr constant [11 x i8] c"-2147483648"
@"$stringlit_1841" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1998" = unnamed_addr constant [37 x i8] c"-282366920938463463374607431768211456"
@"$stringlit_2058" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_137", %_TyDescrTy_Typ* @"$TyDescr_Int64_119", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_151", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint256_147", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_149", %_TyDescrTy_Typ* @"$TyDescr_Bnum_133", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", %_TyDescrTy_Typ* @"$TyDescr_Exception_139", %_TyDescrTy_Typ* @"$TyDescr_String_131", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", %_TyDescrTy_Typ* @"$TyDescr_Int128_123", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_148", %_TyDescrTy_Typ* @"$TyDescr_Bystr_143", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_141", %_TyDescrTy_Typ* @"$TyDescr_Message_135", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint32_150", %_TyDescrTy_Typ* @"$TyDescr_Int32_115"]
@_tydescr_table_length = constant i32 20
@_contract_parameters = constant [0 x %"$ParamDescr_2118"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2119"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_110"(%"$$fundef_110_env_206"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$$fundef_110_env_b_219" = getelementptr inbounds %"$$fundef_110_env_206", %"$$fundef_110_env_206"* %0, i32 0, i32 0
  %"$b_envload_220" = load %TName_Bool*, %TName_Bool** %"$$fundef_110_env_b_219", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_220", %TName_Bool** %b, align 8
  %"$retval_111" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_111", metadata !9, metadata !DIExpression()), !dbg !12
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 2, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %entry
  %"$consume_225" = sub i64 %"$gasrem_221", 2
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$b_227" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_228" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_227", i32 0, i32 0
  %"$b_tag_229" = load i8, i8* %"$b_tag_228", align 1
  switch i8 %"$b_tag_229", label %"$empty_default_230" [
    i8 1, label %"$False_231"
    i8 0, label %"$True_241"
  ], !dbg !12

"$False_231":                                     ; preds = %"$have_gas_224"
  %"$b_232" = bitcast %TName_Bool* %"$b_227" to %CName_False*
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$False_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$False_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$adtval_238_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_238_salloc" = call i8* @_salloc(i8* %"$adtval_238_load", i64 1)
  %"$adtval_238" = bitcast i8* %"$adtval_238_salloc" to %CName_False*
  %"$adtgep_239" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_238", i32 0, i32 0
  store i8 1, i8* %"$adtgep_239", align 1
  %"$adtptr_240" = bitcast %CName_False* %"$adtval_238" to %TName_Bool*
  store %TName_Bool* %"$adtptr_240", %TName_Bool** %"$retval_111", align 8, !dbg !13
  br label %"$matchsucc_226"

"$True_241":                                      ; preds = %"$have_gas_224"
  %"$b_242" = bitcast %TName_Bool* %"$b_227" to %CName_True*
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$True_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$True_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_111", align 8, !dbg !16
  br label %"$matchsucc_226"

"$empty_default_230":                             ; preds = %"$have_gas_224"
  br label %"$matchsucc_226"

"$matchsucc_226":                                 ; preds = %"$have_gas_246", %"$have_gas_236", %"$empty_default_230"
  %"$$retval_111_248" = load %TName_Bool*, %TName_Bool** %"$retval_111", align 8
  ret %TName_Bool* %"$$retval_111_248"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_207"* %0, %TName_Bool* %1) !dbg !18 {
entry:
  %"$retval_109" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %entry
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$$fundef_110_envp_213_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_110_envp_213_salloc" = call i8* @_salloc(i8* %"$$fundef_110_envp_213_load", i64 8)
  %"$$fundef_110_envp_213" = bitcast i8* %"$$fundef_110_envp_213_salloc" to %"$$fundef_110_env_206"*
  %"$$fundef_110_env_voidp_215" = bitcast %"$$fundef_110_env_206"* %"$$fundef_110_envp_213" to i8*
  %"$$fundef_110_cloval_216" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_110_env_206"*, %TName_Bool*)* @"$fundef_110" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_110_env_voidp_215", 1
  %"$$fundef_110_env_b_217" = getelementptr inbounds %"$$fundef_110_env_206", %"$$fundef_110_env_206"* %"$$fundef_110_envp_213", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_110_env_b_217", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_110_cloval_216", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_109", align 8, !dbg !19
  %"$$retval_109_218" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_109", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_109_218"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 5, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %entry
  %"$consume_253" = sub i64 %"$gasrem_249", 5
  store i64 %"$consume_253", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !22
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 7, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 7
  store i64 %"$consume_258", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !22
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_108_env_207"*, %TName_Bool*)* @"$fundef_108" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !23
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 196, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_262"
  %"$consume_271" = sub i64 %"$gasrem_267", 196
  store i64 %"$consume_271", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !22
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 20, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 20
  store i64 %"$consume_276", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !22
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 12, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 12
  store i64 %"$consume_281", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !22
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 2, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 2
  store i64 %"$consume_286", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !22
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !24 {
entry:
  %"$expr_112" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_112", metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %entry
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %false, metadata !27, metadata !DIExpression()), !dbg !28
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$adtval_297_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_297_salloc" = call i8* @_salloc(i8* %"$adtval_297_load", i64 1)
  %"$adtval_297" = bitcast i8* %"$adtval_297_salloc" to %CName_False*
  %"$adtgep_298" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_297", i32 0, i32 0
  store i8 1, i8* %"$adtgep_298", align 1
  %"$adtptr_299" = bitcast %CName_False* %"$adtval_297" to %TName_Bool*
  store %TName_Bool* %"$adtptr_299", %TName_Bool** %false, align 8, !dbg !26
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_295"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$adtval_310_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_310_salloc" = call i8* @_salloc(i8* %"$adtval_310_load", i64 1)
  %"$adtval_310" = bitcast i8* %"$adtval_310_salloc" to %CName_True*
  %"$adtgep_311" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_310", i32 0, i32 0
  store i8 0, i8* %"$adtgep_311", align 1
  %"$adtptr_312" = bitcast %CName_True* %"$adtval_310" to %TName_Bool*
  store %TName_Bool* %"$adtptr_312", %TName_Bool** %test, align 8, !dbg !31
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_308"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input, metadata !32, metadata !DIExpression()), !dbg !34
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4, !dbg !35
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_321"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %resopt, metadata !36, metadata !DIExpression()), !dbg !39
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 4, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 4
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$execptr_load_333" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_input_334" = alloca %Uint32, align 8
  %"$input_335" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_335", %Uint32* %"$to_uint32_input_334", align 4
  %"$$to_uint32_input_334_336" = bitcast %Uint32* %"$to_uint32_input_334" to i8*
  %"$to_uint32_call_337" = call i8* @_to_uint32(i8* %"$execptr_load_333", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint32_input_334_336"), !dbg !40
  %"$to_uint32_338" = bitcast i8* %"$to_uint32_call_337" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_338", %TName_Option_Uint32** %resopt, align 8, !dbg !40
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_331"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !41, metadata !DIExpression()), !dbg !42
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 2, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 2
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$resopt_350" = load %TName_Option_Uint32*, %TName_Option_Uint32** %resopt, align 8
  %"$resopt_tag_351" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$resopt_350", i32 0, i32 0
  %"$resopt_tag_352" = load i8, i8* %"$resopt_tag_351", align 1
  switch i8 %"$resopt_tag_352", label %"$empty_default_353" [
    i8 0, label %"$Some_354"
    i8 1, label %"$None_399"
  ], !dbg !43

"$Some_354":                                      ; preds = %"$have_gas_347"
  %"$resopt_355" = bitcast %TName_Option_Uint32* %"$resopt_350" to %CName_Some_Uint32*
  %"$res_gep_356" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$resopt_355", i32 0, i32 1
  %"$res_load_357" = load %Uint32, %Uint32* %"$res_gep_356", align 4
  %res = alloca %Uint32, align 8
  store %Uint32 %"$res_load_357", %Uint32* %res, align 4
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$Some_354"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$Some_354"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %input_ = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input_, metadata !44, metadata !DIExpression()), !dbg !47
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_, align 4, !dbg !48
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 4, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 4
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$execptr_load_378" = load i8*, i8** @_execptr, align 8
  %"$res_379" = load %Uint32, %Uint32* %res, align 4
  %"$input__380" = load %Uint32, %Uint32* %input_, align 4
  %"$eq_call_381" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_378", %Uint32 %"$res_379", %Uint32 %"$input__380"), !dbg !51
  store %TName_Bool* %"$eq_call_381", %TName_Bool** %test_, align 8, !dbg !51
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_376"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$BoolUtils.andb_84" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_388" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_389" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_388", 0
  %"$BoolUtils.andb_envptr_390" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_388", 1
  %"$test_391" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_392" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_389"(i8* %"$BoolUtils.andb_envptr_390", %TName_Bool* %"$test_391"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_392", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8, !dbg !52
  %"$BoolUtils.andb_85" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_85", metadata !53, metadata !DIExpression()), !dbg !52
  %"$$BoolUtils.andb_84_393" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_fptr_394" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_393", 0
  %"$$BoolUtils.andb_84_envptr_395" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_393", 1
  %"$test__396" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_84_call_397" = call %TName_Bool* %"$$BoolUtils.andb_84_fptr_394"(i8* %"$$BoolUtils.andb_84_envptr_395", %TName_Bool* %"$test__396"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_84_call_397", %TName_Bool** %"$BoolUtils.andb_85", align 8, !dbg !52
  %"$$BoolUtils.andb_85_398" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_85", align 8
  store %TName_Bool* %"$$BoolUtils.andb_85_398", %TName_Bool** %"$test_6", align 8, !dbg !52
  br label %"$matchsucc_349"

"$None_399":                                      ; preds = %"$have_gas_347"
  %"$resopt_400" = bitcast %TName_Option_Uint32* %"$resopt_350" to %CName_None_Uint32*
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$None_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$None_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$false_406" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_406", %TName_Bool** %"$test_6", align 8, !dbg !54
  br label %"$matchsucc_349"

"$empty_default_353":                             ; preds = %"$have_gas_347"
  br label %"$matchsucc_349"

"$matchsucc_349":                                 ; preds = %"$have_gas_404", %"$have_gas_386", %"$empty_default_353"
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$matchsucc_349"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$matchsucc_349"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_7", metadata !56, metadata !DIExpression()), !dbg !58
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_410"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_7", align 8, !dbg !59
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_8", metadata !60, metadata !DIExpression()), !dbg !61
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 4, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 4
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %"$execptr_load_427" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_7_428" = alloca %Uint128, align 8
  %"$$input_7_429" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_429", %Uint128* %"$to_uint32_$input_7_428", align 8
  %"$$to_uint32_$input_7_428_430" = bitcast %Uint128* %"$to_uint32_$input_7_428" to i8*
  %"$to_uint32_call_431" = call i8* @_to_uint32(i8* %"$execptr_load_427", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint32_$input_7_428_430"), !dbg !62
  %"$to_uint32_432" = bitcast i8* %"$to_uint32_call_431" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_432", %TName_Option_Uint32** %"$resopt_8", align 8, !dbg !62
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_425"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_9", metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 2, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 2
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$$resopt_8_444" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_8", align 8
  %"$$resopt_8_tag_445" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_8_444", i32 0, i32 0
  %"$$resopt_8_tag_446" = load i8, i8* %"$$resopt_8_tag_445", align 1
  switch i8 %"$$resopt_8_tag_446", label %"$empty_default_447" [
    i8 0, label %"$Some_448"
    i8 1, label %"$None_493"
  ], !dbg !65

"$Some_448":                                      ; preds = %"$have_gas_441"
  %"$$resopt_8_449" = bitcast %TName_Option_Uint32* %"$$resopt_8_444" to %CName_Some_Uint32*
  %"$res_gep_450" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_8_449", i32 0, i32 1
  %"$res_load_451" = load %Uint32, %Uint32* %"$res_gep_450", align 4
  %res1 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_451", %Uint32* %res1, align 4
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$Some_448"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$Some_448"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %input_2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input_2, metadata !66, metadata !DIExpression()), !dbg !69
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_2, align 4, !dbg !70
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_3, metadata !71, metadata !DIExpression()), !dbg !72
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 4, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 4
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %"$execptr_load_472" = load i8*, i8** @_execptr, align 8
  %"$res_473" = load %Uint32, %Uint32* %res1, align 4
  %"$input__474" = load %Uint32, %Uint32* %input_2, align 4
  %"$eq_call_475" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_472", %Uint32 %"$res_473", %Uint32 %"$input__474"), !dbg !73
  store %TName_Bool* %"$eq_call_475", %TName_Bool** %test_3, align 8, !dbg !73
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_470"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$BoolUtils.andb_86" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_482" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_483" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_482", 0
  %"$BoolUtils.andb_envptr_484" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_482", 1
  %"$$test_6_485" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_486" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_483"(i8* %"$BoolUtils.andb_envptr_484", %TName_Bool* %"$$test_6_485"), !dbg !74
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_486", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8, !dbg !74
  %"$BoolUtils.andb_87" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_87", metadata !75, metadata !DIExpression()), !dbg !74
  %"$$BoolUtils.andb_86_487" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_fptr_488" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_487", 0
  %"$$BoolUtils.andb_86_envptr_489" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_487", 1
  %"$test__490" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_86_call_491" = call %TName_Bool* %"$$BoolUtils.andb_86_fptr_488"(i8* %"$$BoolUtils.andb_86_envptr_489", %TName_Bool* %"$test__490"), !dbg !74
  store %TName_Bool* %"$$BoolUtils.andb_86_call_491", %TName_Bool** %"$BoolUtils.andb_87", align 8, !dbg !74
  %"$$BoolUtils.andb_87_492" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_87", align 8
  store %TName_Bool* %"$$BoolUtils.andb_87_492", %TName_Bool** %"$test_9", align 8, !dbg !74
  br label %"$matchsucc_443"

"$None_493":                                      ; preds = %"$have_gas_441"
  %"$$resopt_8_494" = bitcast %TName_Option_Uint32* %"$$resopt_8_444" to %CName_None_Uint32*
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$None_493"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$None_493"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$false_500" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_500", %TName_Bool** %"$test_9", align 8, !dbg !76
  br label %"$matchsucc_443"

"$empty_default_447":                             ; preds = %"$have_gas_441"
  br label %"$matchsucc_443"

"$matchsucc_443":                                 ; preds = %"$have_gas_498", %"$have_gas_480", %"$empty_default_447"
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$matchsucc_443"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$matchsucc_443"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$input_10" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_10", metadata !78, metadata !DIExpression()), !dbg !80
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_10", align 8, !dbg !81
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_11", metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 4, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 4
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_10_522" = alloca %Uint64, align 8
  %"$$input_10_523" = load %Uint64, %Uint64* %"$input_10", align 8
  store %Uint64 %"$$input_10_523", %Uint64* %"$to_uint32_$input_10_522", align 8
  %"$$to_uint32_$input_10_522_524" = bitcast %Uint64* %"$to_uint32_$input_10_522" to i8*
  %"$to_uint32_call_525" = call i8* @_to_uint32(i8* %"$execptr_load_521", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", i8* %"$$to_uint32_$input_10_522_524"), !dbg !84
  %"$to_uint32_526" = bitcast i8* %"$to_uint32_call_525" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_526", %TName_Option_Uint32** %"$resopt_11", align 8, !dbg !84
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_519"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 2, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 2
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$$resopt_11_538" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_11", align 8
  %"$$resopt_11_tag_539" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_11_538", i32 0, i32 0
  %"$$resopt_11_tag_540" = load i8, i8* %"$$resopt_11_tag_539", align 1
  switch i8 %"$$resopt_11_tag_540", label %"$empty_default_541" [
    i8 0, label %"$Some_542"
    i8 1, label %"$None_552"
  ], !dbg !87

"$Some_542":                                      ; preds = %"$have_gas_535"
  %"$$resopt_11_543" = bitcast %TName_Option_Uint32* %"$$resopt_11_538" to %CName_Some_Uint32*
  %"$$$resopt_11_73_gep_544" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_11_543", i32 0, i32 1
  %"$$$resopt_11_73_load_545" = load %Uint32, %Uint32* %"$$$resopt_11_73_gep_544", align 4
  %"$$resopt_11_73" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_11_73_load_545", %Uint32* %"$$resopt_11_73", align 4
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$Some_542"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$Some_542"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %"$false_551" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_551", %TName_Bool** %"$test_12", align 8, !dbg !88
  br label %"$matchsucc_537"

"$None_552":                                      ; preds = %"$have_gas_535"
  %"$$resopt_11_553" = bitcast %TName_Option_Uint32* %"$$resopt_11_538" to %CName_None_Uint32*
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$None_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$None_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$$test_9_559" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  store %TName_Bool* %"$$test_9_559", %TName_Bool** %"$test_12", align 8, !dbg !91
  br label %"$matchsucc_537"

"$empty_default_541":                             ; preds = %"$have_gas_535"
  br label %"$matchsucc_537"

"$matchsucc_537":                                 ; preds = %"$have_gas_557", %"$have_gas_549", %"$empty_default_541"
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$matchsucc_537"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$matchsucc_537"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_13", metadata !93, metadata !DIExpression()), !dbg !94
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_563"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_13", align 8, !dbg !95
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_14", metadata !96, metadata !DIExpression()), !dbg !97
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 4, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 4
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$execptr_load_580" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_13_581" = alloca %Uint128, align 8
  %"$$input_13_582" = load %Uint128, %Uint128* %"$input_13", align 8
  store %Uint128 %"$$input_13_582", %Uint128* %"$to_uint32_$input_13_581", align 8
  %"$$to_uint32_$input_13_581_583" = bitcast %Uint128* %"$to_uint32_$input_13_581" to i8*
  %"$to_uint32_call_584" = call i8* @_to_uint32(i8* %"$execptr_load_580", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint32_$input_13_581_583"), !dbg !98
  %"$to_uint32_585" = bitcast i8* %"$to_uint32_call_584" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_585", %TName_Option_Uint32** %"$resopt_14", align 8, !dbg !98
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_578"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_15", metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 2, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 2
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$$resopt_14_597" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_14", align 8
  %"$$resopt_14_tag_598" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_14_597", i32 0, i32 0
  %"$$resopt_14_tag_599" = load i8, i8* %"$$resopt_14_tag_598", align 1
  switch i8 %"$$resopt_14_tag_599", label %"$empty_default_600" [
    i8 0, label %"$Some_601"
    i8 1, label %"$None_611"
  ], !dbg !101

"$Some_601":                                      ; preds = %"$have_gas_594"
  %"$$resopt_14_602" = bitcast %TName_Option_Uint32* %"$$resopt_14_597" to %CName_Some_Uint32*
  %"$$$resopt_14_74_gep_603" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_14_602", i32 0, i32 1
  %"$$$resopt_14_74_load_604" = load %Uint32, %Uint32* %"$$$resopt_14_74_gep_603", align 4
  %"$$resopt_14_74" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_14_74_load_604", %Uint32* %"$$resopt_14_74", align 4
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$Some_601"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$Some_601"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$false_610" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_610", %TName_Bool** %"$test_15", align 8, !dbg !102
  br label %"$matchsucc_596"

"$None_611":                                      ; preds = %"$have_gas_594"
  %"$$resopt_14_612" = bitcast %TName_Option_Uint32* %"$$resopt_14_597" to %CName_None_Uint32*
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$None_611"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$None_611"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %"$$test_12_618" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  store %TName_Bool* %"$$test_12_618", %TName_Bool** %"$test_15", align 8, !dbg !105
  br label %"$matchsucc_596"

"$empty_default_600":                             ; preds = %"$have_gas_594"
  br label %"$matchsucc_596"

"$matchsucc_596":                                 ; preds = %"$have_gas_616", %"$have_gas_608", %"$empty_default_600"
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$matchsucc_596"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$matchsucc_596"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_16", metadata !107, metadata !DIExpression()), !dbg !109
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_622"
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551615 }, %Uint256* %"$input_16", align 8, !dbg !110
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_627"
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_17", metadata !111, metadata !DIExpression()), !dbg !112
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 4, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 4
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %"$execptr_load_639" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_16_640" = alloca %Uint256, align 8
  %"$$input_16_641" = load %Uint256, %Uint256* %"$input_16", align 8
  store %Uint256 %"$$input_16_641", %Uint256* %"$to_uint32_$input_16_640", align 8
  %"$$to_uint32_$input_16_640_642" = bitcast %Uint256* %"$to_uint32_$input_16_640" to i8*
  %"$to_uint32_call_643" = call i8* @_to_uint32(i8* %"$execptr_load_639", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint32_$input_16_640_642"), !dbg !113
  %"$to_uint32_644" = bitcast i8* %"$to_uint32_call_643" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_644", %TName_Option_Uint32** %"$resopt_17", align 8, !dbg !113
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_637"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !114, metadata !DIExpression()), !dbg !115
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 2, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 2
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %"$$resopt_17_656" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_17", align 8
  %"$$resopt_17_tag_657" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_17_656", i32 0, i32 0
  %"$$resopt_17_tag_658" = load i8, i8* %"$$resopt_17_tag_657", align 1
  switch i8 %"$$resopt_17_tag_658", label %"$empty_default_659" [
    i8 0, label %"$Some_660"
    i8 1, label %"$None_670"
  ], !dbg !116

"$Some_660":                                      ; preds = %"$have_gas_653"
  %"$$resopt_17_661" = bitcast %TName_Option_Uint32* %"$$resopt_17_656" to %CName_Some_Uint32*
  %"$$$resopt_17_75_gep_662" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_17_661", i32 0, i32 1
  %"$$$resopt_17_75_load_663" = load %Uint32, %Uint32* %"$$$resopt_17_75_gep_662", align 4
  %"$$resopt_17_75" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_17_75_load_663", %Uint32* %"$$resopt_17_75", align 4
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$Some_660"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$Some_660"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$false_669" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_669", %TName_Bool** %"$test_18", align 8, !dbg !117
  br label %"$matchsucc_655"

"$None_670":                                      ; preds = %"$have_gas_653"
  %"$$resopt_17_671" = bitcast %TName_Option_Uint32* %"$$resopt_17_656" to %CName_None_Uint32*
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$None_670"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$None_670"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %"$$test_15_677" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  store %TName_Bool* %"$$test_15_677", %TName_Bool** %"$test_18", align 8, !dbg !120
  br label %"$matchsucc_655"

"$empty_default_659":                             ; preds = %"$have_gas_653"
  br label %"$matchsucc_655"

"$matchsucc_655":                                 ; preds = %"$have_gas_675", %"$have_gas_667", %"$empty_default_659"
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %"$matchsucc_655"
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %"$matchsucc_655"
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %"$input_19" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$input_19", metadata !122, metadata !DIExpression()), !dbg !123
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$have_gas_681"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$have_gas_681"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %"$input_19", align 4, !dbg !124
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_686"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_20", metadata !125, metadata !DIExpression()), !dbg !128
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 4, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_691"
  %"$consume_697" = sub i64 %"$gasrem_693", 4
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$execptr_load_698" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_19_699" = alloca %Uint32, align 8
  %"$$input_19_700" = load %Uint32, %Uint32* %"$input_19", align 4
  store %Uint32 %"$$input_19_700", %Uint32* %"$to_uint64_$input_19_699", align 4
  %"$$to_uint64_$input_19_699_701" = bitcast %Uint32* %"$to_uint64_$input_19_699" to i8*
  %"$to_uint64_call_702" = call i8* @_to_uint64(i8* %"$execptr_load_698", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint64_$input_19_699_701"), !dbg !129
  %"$to_uint64_703" = bitcast i8* %"$to_uint64_call_702" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_703", %TName_Option_Uint64** %"$resopt_20", align 8, !dbg !129
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_696"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_696"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_21", metadata !130, metadata !DIExpression()), !dbg !131
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 2, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 2
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$$resopt_20_715" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_20", align 8
  %"$$resopt_20_tag_716" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_20_715", i32 0, i32 0
  %"$$resopt_20_tag_717" = load i8, i8* %"$$resopt_20_tag_716", align 1
  switch i8 %"$$resopt_20_tag_717", label %"$empty_default_718" [
    i8 0, label %"$Some_719"
    i8 1, label %"$None_764"
  ], !dbg !132

"$Some_719":                                      ; preds = %"$have_gas_712"
  %"$$resopt_20_720" = bitcast %TName_Option_Uint64* %"$$resopt_20_715" to %CName_Some_Uint64*
  %"$res_gep_721" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_20_720", i32 0, i32 1
  %"$res_load_722" = load %Uint64, %Uint64* %"$res_gep_721", align 8
  %res4 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_722", %Uint64* %res4, align 8
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$Some_719"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$Some_719"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %input_5 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %input_5, metadata !133, metadata !DIExpression()), !dbg !136
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_726"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %input_5, align 8, !dbg !137
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_731"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_6, metadata !138, metadata !DIExpression()), !dbg !139
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 4, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 4
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$execptr_load_743" = load i8*, i8** @_execptr, align 8
  %"$res_744" = load %Uint64, %Uint64* %res4, align 8
  %"$input__745" = load %Uint64, %Uint64* %input_5, align 8
  %"$eq_call_746" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_743", %Uint64 %"$res_744", %Uint64 %"$input__745"), !dbg !140
  store %TName_Bool* %"$eq_call_746", %TName_Bool** %test_6, align 8, !dbg !140
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_741"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %"$BoolUtils.andb_88" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_753" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_754" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_753", 0
  %"$BoolUtils.andb_envptr_755" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_753", 1
  %"$$test_18_756" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_757" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_754"(i8* %"$BoolUtils.andb_envptr_755", %TName_Bool* %"$$test_18_756"), !dbg !141
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_757", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8, !dbg !141
  %"$BoolUtils.andb_89" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_89", metadata !142, metadata !DIExpression()), !dbg !141
  %"$$BoolUtils.andb_88_758" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_fptr_759" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_758", 0
  %"$$BoolUtils.andb_88_envptr_760" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_758", 1
  %"$test__761" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_88_call_762" = call %TName_Bool* %"$$BoolUtils.andb_88_fptr_759"(i8* %"$$BoolUtils.andb_88_envptr_760", %TName_Bool* %"$test__761"), !dbg !141
  store %TName_Bool* %"$$BoolUtils.andb_88_call_762", %TName_Bool** %"$BoolUtils.andb_89", align 8, !dbg !141
  %"$$BoolUtils.andb_89_763" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_89", align 8
  store %TName_Bool* %"$$BoolUtils.andb_89_763", %TName_Bool** %"$test_21", align 8, !dbg !141
  br label %"$matchsucc_714"

"$None_764":                                      ; preds = %"$have_gas_712"
  %"$$resopt_20_765" = bitcast %TName_Option_Uint64* %"$$resopt_20_715" to %CName_None_Uint64*
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$None_764"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$None_764"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %"$false_771" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_771", %TName_Bool** %"$test_21", align 8, !dbg !143
  br label %"$matchsucc_714"

"$empty_default_718":                             ; preds = %"$have_gas_712"
  br label %"$matchsucc_714"

"$matchsucc_714":                                 ; preds = %"$have_gas_769", %"$have_gas_751", %"$empty_default_718"
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$matchsucc_714"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$matchsucc_714"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_22", metadata !145, metadata !DIExpression()), !dbg !146
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_775"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_22", align 8, !dbg !147
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_780"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_23", metadata !148, metadata !DIExpression()), !dbg !149
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 4, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$have_gas_785"
  %"$consume_791" = sub i64 %"$gasrem_787", 4
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %"$execptr_load_792" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_22_793" = alloca %Uint64, align 8
  %"$$input_22_794" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_794", %Uint64* %"$to_uint64_$input_22_793", align 8
  %"$$to_uint64_$input_22_793_795" = bitcast %Uint64* %"$to_uint64_$input_22_793" to i8*
  %"$to_uint64_call_796" = call i8* @_to_uint64(i8* %"$execptr_load_792", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", i8* %"$$to_uint64_$input_22_793_795"), !dbg !150
  %"$to_uint64_797" = bitcast i8* %"$to_uint64_call_796" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_797", %TName_Option_Uint64** %"$resopt_23", align 8, !dbg !150
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 1, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %"$have_gas_790"
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %"$have_gas_790"
  %"$consume_802" = sub i64 %"$gasrem_798", 1
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !151, metadata !DIExpression()), !dbg !152
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 2, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$have_gas_801"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$have_gas_801"
  %"$consume_807" = sub i64 %"$gasrem_803", 2
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$$resopt_23_809" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_23", align 8
  %"$$resopt_23_tag_810" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_23_809", i32 0, i32 0
  %"$$resopt_23_tag_811" = load i8, i8* %"$$resopt_23_tag_810", align 1
  switch i8 %"$$resopt_23_tag_811", label %"$empty_default_812" [
    i8 0, label %"$Some_813"
    i8 1, label %"$None_858"
  ], !dbg !153

"$Some_813":                                      ; preds = %"$have_gas_806"
  %"$$resopt_23_814" = bitcast %TName_Option_Uint64* %"$$resopt_23_809" to %CName_Some_Uint64*
  %"$res_gep_815" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_23_814", i32 0, i32 1
  %"$res_load_816" = load %Uint64, %Uint64* %"$res_gep_815", align 8
  %res7 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_816", %Uint64* %res7, align 8
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %"$Some_813"
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %"$Some_813"
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  %input_8 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %input_8, metadata !154, metadata !DIExpression()), !dbg !157
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 1, %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %"$have_gas_820"
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %"$have_gas_820"
  %"$consume_826" = sub i64 %"$gasrem_822", 1
  store i64 %"$consume_826", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_8, align 8, !dbg !158
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %"$have_gas_825"
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %"$have_gas_825"
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_9, metadata !159, metadata !DIExpression()), !dbg !160
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 4, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_830"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_830"
  %"$consume_836" = sub i64 %"$gasrem_832", 4
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$execptr_load_837" = load i8*, i8** @_execptr, align 8
  %"$res_838" = load %Uint64, %Uint64* %res7, align 8
  %"$input__839" = load %Uint64, %Uint64* %input_8, align 8
  %"$eq_call_840" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_837", %Uint64 %"$res_838", %Uint64 %"$input__839"), !dbg !161
  store %TName_Bool* %"$eq_call_840", %TName_Bool** %test_9, align 8, !dbg !161
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_835"
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$BoolUtils.andb_90" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_847" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_848" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_847", 0
  %"$BoolUtils.andb_envptr_849" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_847", 1
  %"$$test_21_850" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  %"$BoolUtils.andb_call_851" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_848"(i8* %"$BoolUtils.andb_envptr_849", %TName_Bool* %"$$test_21_850"), !dbg !162
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_851", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8, !dbg !162
  %"$BoolUtils.andb_91" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_91", metadata !163, metadata !DIExpression()), !dbg !162
  %"$$BoolUtils.andb_90_852" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_fptr_853" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_852", 0
  %"$$BoolUtils.andb_90_envptr_854" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_852", 1
  %"$test__855" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_90_call_856" = call %TName_Bool* %"$$BoolUtils.andb_90_fptr_853"(i8* %"$$BoolUtils.andb_90_envptr_854", %TName_Bool* %"$test__855"), !dbg !162
  store %TName_Bool* %"$$BoolUtils.andb_90_call_856", %TName_Bool** %"$BoolUtils.andb_91", align 8, !dbg !162
  %"$$BoolUtils.andb_91_857" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_91", align 8
  store %TName_Bool* %"$$BoolUtils.andb_91_857", %TName_Bool** %"$test_24", align 8, !dbg !162
  br label %"$matchsucc_808"

"$None_858":                                      ; preds = %"$have_gas_806"
  %"$$resopt_23_859" = bitcast %TName_Option_Uint64* %"$$resopt_23_809" to %CName_None_Uint64*
  %"$gasrem_860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_861" = icmp ugt i64 1, %"$gasrem_860"
  br i1 %"$gascmp_861", label %"$out_of_gas_862", label %"$have_gas_863"

"$out_of_gas_862":                                ; preds = %"$None_858"
  call void @_out_of_gas()
  br label %"$have_gas_863"

"$have_gas_863":                                  ; preds = %"$out_of_gas_862", %"$None_858"
  %"$consume_864" = sub i64 %"$gasrem_860", 1
  store i64 %"$consume_864", i64* @_gasrem, align 8
  %"$false_865" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_865", %TName_Bool** %"$test_24", align 8, !dbg !164
  br label %"$matchsucc_808"

"$empty_default_812":                             ; preds = %"$have_gas_806"
  br label %"$matchsucc_808"

"$matchsucc_808":                                 ; preds = %"$have_gas_863", %"$have_gas_845", %"$empty_default_812"
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$matchsucc_808"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$matchsucc_808"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$input_25" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_25", metadata !166, metadata !DIExpression()), !dbg !167
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_25", align 8, !dbg !168
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_874"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_26", metadata !169, metadata !DIExpression()), !dbg !170
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 4, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 4
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$execptr_load_886" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_25_887" = alloca %Uint128, align 8
  %"$$input_25_888" = load %Uint128, %Uint128* %"$input_25", align 8
  store %Uint128 %"$$input_25_888", %Uint128* %"$to_uint64_$input_25_887", align 8
  %"$$to_uint64_$input_25_887_889" = bitcast %Uint128* %"$to_uint64_$input_25_887" to i8*
  %"$to_uint64_call_890" = call i8* @_to_uint64(i8* %"$execptr_load_886", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint64_$input_25_887_889"), !dbg !171
  %"$to_uint64_891" = bitcast i8* %"$to_uint64_call_890" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_891", %TName_Option_Uint64** %"$resopt_26", align 8, !dbg !171
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_884"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_27", metadata !172, metadata !DIExpression()), !dbg !173
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 2, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_895"
  %"$consume_901" = sub i64 %"$gasrem_897", 2
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$$resopt_26_903" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_26", align 8
  %"$$resopt_26_tag_904" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_26_903", i32 0, i32 0
  %"$$resopt_26_tag_905" = load i8, i8* %"$$resopt_26_tag_904", align 1
  switch i8 %"$$resopt_26_tag_905", label %"$empty_default_906" [
    i8 0, label %"$Some_907"
    i8 1, label %"$None_952"
  ], !dbg !174

"$Some_907":                                      ; preds = %"$have_gas_900"
  %"$$resopt_26_908" = bitcast %TName_Option_Uint64* %"$$resopt_26_903" to %CName_Some_Uint64*
  %"$res_gep_909" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_26_908", i32 0, i32 1
  %"$res_load_910" = load %Uint64, %Uint64* %"$res_gep_909", align 8
  %res10 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_910", %Uint64* %res10, align 8
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$Some_907"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$Some_907"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %input_11 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %input_11, metadata !175, metadata !DIExpression()), !dbg !178
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_11, align 8, !dbg !179
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_12, metadata !180, metadata !DIExpression()), !dbg !181
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 4, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 4
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$execptr_load_931" = load i8*, i8** @_execptr, align 8
  %"$res_932" = load %Uint64, %Uint64* %res10, align 8
  %"$input__933" = load %Uint64, %Uint64* %input_11, align 8
  %"$eq_call_934" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_931", %Uint64 %"$res_932", %Uint64 %"$input__933"), !dbg !182
  store %TName_Bool* %"$eq_call_934", %TName_Bool** %test_12, align 8, !dbg !182
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_929"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$BoolUtils.andb_92" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_941" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_942" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_941", 0
  %"$BoolUtils.andb_envptr_943" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_941", 1
  %"$$test_24_944" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_945" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_942"(i8* %"$BoolUtils.andb_envptr_943", %TName_Bool* %"$$test_24_944"), !dbg !183
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_945", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8, !dbg !183
  %"$BoolUtils.andb_93" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_93", metadata !184, metadata !DIExpression()), !dbg !183
  %"$$BoolUtils.andb_92_946" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_fptr_947" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_946", 0
  %"$$BoolUtils.andb_92_envptr_948" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_946", 1
  %"$test__949" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_92_call_950" = call %TName_Bool* %"$$BoolUtils.andb_92_fptr_947"(i8* %"$$BoolUtils.andb_92_envptr_948", %TName_Bool* %"$test__949"), !dbg !183
  store %TName_Bool* %"$$BoolUtils.andb_92_call_950", %TName_Bool** %"$BoolUtils.andb_93", align 8, !dbg !183
  %"$$BoolUtils.andb_93_951" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_93", align 8
  store %TName_Bool* %"$$BoolUtils.andb_93_951", %TName_Bool** %"$test_27", align 8, !dbg !183
  br label %"$matchsucc_902"

"$None_952":                                      ; preds = %"$have_gas_900"
  %"$$resopt_26_953" = bitcast %TName_Option_Uint64* %"$$resopt_26_903" to %CName_None_Uint64*
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$None_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$None_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$false_959" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_959", %TName_Bool** %"$test_27", align 8, !dbg !185
  br label %"$matchsucc_902"

"$empty_default_906":                             ; preds = %"$have_gas_900"
  br label %"$matchsucc_902"

"$matchsucc_902":                                 ; preds = %"$have_gas_957", %"$have_gas_939", %"$empty_default_906"
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$matchsucc_902"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$matchsucc_902"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_28", metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551616 }, %Uint128* %"$input_28", align 8, !dbg !189
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_968"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_29", metadata !190, metadata !DIExpression()), !dbg !191
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
  %"$to_uint64_$input_28_981" = alloca %Uint128, align 8
  %"$$input_28_982" = load %Uint128, %Uint128* %"$input_28", align 8
  store %Uint128 %"$$input_28_982", %Uint128* %"$to_uint64_$input_28_981", align 8
  %"$$to_uint64_$input_28_981_983" = bitcast %Uint128* %"$to_uint64_$input_28_981" to i8*
  %"$to_uint64_call_984" = call i8* @_to_uint64(i8* %"$execptr_load_980", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint64_$input_28_981_983"), !dbg !192
  %"$to_uint64_985" = bitcast i8* %"$to_uint64_call_984" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_985", %TName_Option_Uint64** %"$resopt_29", align 8, !dbg !192
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
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !193, metadata !DIExpression()), !dbg !194
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 2, %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_989"
  %"$consume_995" = sub i64 %"$gasrem_991", 2
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$$resopt_29_997" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_29", align 8
  %"$$resopt_29_tag_998" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_29_997", i32 0, i32 0
  %"$$resopt_29_tag_999" = load i8, i8* %"$$resopt_29_tag_998", align 1
  switch i8 %"$$resopt_29_tag_999", label %"$empty_default_1000" [
    i8 0, label %"$Some_1001"
    i8 1, label %"$None_1011"
  ], !dbg !195

"$Some_1001":                                     ; preds = %"$have_gas_994"
  %"$$resopt_29_1002" = bitcast %TName_Option_Uint64* %"$$resopt_29_997" to %CName_Some_Uint64*
  %"$$$resopt_29_76_gep_1003" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_29_1002", i32 0, i32 1
  %"$$$resopt_29_76_load_1004" = load %Uint64, %Uint64* %"$$$resopt_29_76_gep_1003", align 8
  %"$$resopt_29_76" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_29_76_load_1004", %Uint64* %"$$resopt_29_76", align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$Some_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$Some_1001"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %"$false_1010" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1010", %TName_Bool** %"$test_30", align 8, !dbg !196
  br label %"$matchsucc_996"

"$None_1011":                                     ; preds = %"$have_gas_994"
  %"$$resopt_29_1012" = bitcast %TName_Option_Uint64* %"$$resopt_29_997" to %CName_None_Uint64*
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$None_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$None_1011"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %"$$test_27_1018" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  store %TName_Bool* %"$$test_27_1018", %TName_Bool** %"$test_30", align 8, !dbg !199
  br label %"$matchsucc_996"

"$empty_default_1000":                            ; preds = %"$have_gas_994"
  br label %"$matchsucc_996"

"$matchsucc_996":                                 ; preds = %"$have_gas_1016", %"$have_gas_1008", %"$empty_default_1000"
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 1, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$matchsucc_996"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$matchsucc_996"
  %"$consume_1023" = sub i64 %"$gasrem_1019", 1
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_31", metadata !201, metadata !DIExpression()), !dbg !202
  %"$gasrem_1024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1025" = icmp ugt i64 1, %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %"$have_gas_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %"$have_gas_1022"
  %"$consume_1028" = sub i64 %"$gasrem_1024", 1
  store i64 %"$consume_1028", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551616 }, %Uint256* %"$input_31", align 8, !dbg !203
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %"$have_gas_1027"
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %"$have_gas_1027"
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_32", metadata !204, metadata !DIExpression()), !dbg !205
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 4, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$have_gas_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$have_gas_1032"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 4
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  %"$execptr_load_1039" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_31_1040" = alloca %Uint256, align 8
  %"$$input_31_1041" = load %Uint256, %Uint256* %"$input_31", align 8
  store %Uint256 %"$$input_31_1041", %Uint256* %"$to_uint64_$input_31_1040", align 8
  %"$$to_uint64_$input_31_1040_1042" = bitcast %Uint256* %"$to_uint64_$input_31_1040" to i8*
  %"$to_uint64_call_1043" = call i8* @_to_uint64(i8* %"$execptr_load_1039", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint64_$input_31_1040_1042"), !dbg !206
  %"$to_uint64_1044" = bitcast i8* %"$to_uint64_call_1043" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_1044", %TName_Option_Uint64** %"$resopt_32", align 8, !dbg !206
  %"$gasrem_1045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1046" = icmp ugt i64 1, %"$gasrem_1045"
  br i1 %"$gascmp_1046", label %"$out_of_gas_1047", label %"$have_gas_1048"

"$out_of_gas_1047":                               ; preds = %"$have_gas_1037"
  call void @_out_of_gas()
  br label %"$have_gas_1048"

"$have_gas_1048":                                 ; preds = %"$out_of_gas_1047", %"$have_gas_1037"
  %"$consume_1049" = sub i64 %"$gasrem_1045", 1
  store i64 %"$consume_1049", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_33", metadata !207, metadata !DIExpression()), !dbg !208
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 2, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$have_gas_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$have_gas_1048"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 2
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  %"$$resopt_32_1056" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_32", align 8
  %"$$resopt_32_tag_1057" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_32_1056", i32 0, i32 0
  %"$$resopt_32_tag_1058" = load i8, i8* %"$$resopt_32_tag_1057", align 1
  switch i8 %"$$resopt_32_tag_1058", label %"$empty_default_1059" [
    i8 0, label %"$Some_1060"
    i8 1, label %"$None_1070"
  ], !dbg !209

"$Some_1060":                                     ; preds = %"$have_gas_1053"
  %"$$resopt_32_1061" = bitcast %TName_Option_Uint64* %"$$resopt_32_1056" to %CName_Some_Uint64*
  %"$$$resopt_32_77_gep_1062" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_32_1061", i32 0, i32 1
  %"$$$resopt_32_77_load_1063" = load %Uint64, %Uint64* %"$$$resopt_32_77_gep_1062", align 8
  %"$$resopt_32_77" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_32_77_load_1063", %Uint64* %"$$resopt_32_77", align 8
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$Some_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$Some_1060"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %"$false_1069" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1069", %TName_Bool** %"$test_33", align 8, !dbg !210
  br label %"$matchsucc_1055"

"$None_1070":                                     ; preds = %"$have_gas_1053"
  %"$$resopt_32_1071" = bitcast %TName_Option_Uint64* %"$$resopt_32_1056" to %CName_None_Uint64*
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 1, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %"$None_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %"$None_1070"
  %"$consume_1076" = sub i64 %"$gasrem_1072", 1
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %"$$test_30_1077" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  store %TName_Bool* %"$$test_30_1077", %TName_Bool** %"$test_33", align 8, !dbg !213
  br label %"$matchsucc_1055"

"$empty_default_1059":                            ; preds = %"$have_gas_1053"
  br label %"$matchsucc_1055"

"$matchsucc_1055":                                ; preds = %"$have_gas_1075", %"$have_gas_1067", %"$empty_default_1059"
  %"$gasrem_1078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$matchsucc_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$matchsucc_1055"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem, align 8
  %"$input_34" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_34", metadata !215, metadata !DIExpression()), !dbg !216
  %"$gasrem_1083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1084" = icmp ugt i64 1, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1081"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 1
  store i64 %"$consume_1087", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_34", align 8, !dbg !217
  %"$gasrem_1088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1089" = icmp ugt i64 1, %"$gasrem_1088"
  br i1 %"$gascmp_1089", label %"$out_of_gas_1090", label %"$have_gas_1091"

"$out_of_gas_1090":                               ; preds = %"$have_gas_1086"
  call void @_out_of_gas()
  br label %"$have_gas_1091"

"$have_gas_1091":                                 ; preds = %"$out_of_gas_1090", %"$have_gas_1086"
  %"$consume_1092" = sub i64 %"$gasrem_1088", 1
  store i64 %"$consume_1092", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$resopt_35", metadata !218, metadata !DIExpression()), !dbg !221
  %"$gasrem_1093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1094" = icmp ugt i64 8, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$have_gas_1091"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$have_gas_1091"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 8
  store i64 %"$consume_1097", i64* @_gasrem, align 8
  %"$execptr_load_1098" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_34_1099" = alloca %Uint128, align 8
  %"$$input_34_1100" = load %Uint128, %Uint128* %"$input_34", align 8
  store %Uint128 %"$$input_34_1100", %Uint128* %"$to_uint128_$input_34_1099", align 8
  %"$$to_uint128_$input_34_1099_1101" = bitcast %Uint128* %"$to_uint128_$input_34_1099" to i8*
  %"$to_uint128_call_1102" = call i8* @_to_uint128(i8* %"$execptr_load_1098", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint128_$input_34_1099_1101"), !dbg !222
  %"$to_uint128_1103" = bitcast i8* %"$to_uint128_call_1102" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1103", %TName_Option_Uint128** %"$resopt_35", align 8, !dbg !222
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1096"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1096"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !223, metadata !DIExpression()), !dbg !224
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 2, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1107"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 2
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %"$$resopt_35_1115" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_35", align 8
  %"$$resopt_35_tag_1116" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_35_1115", i32 0, i32 0
  %"$$resopt_35_tag_1117" = load i8, i8* %"$$resopt_35_tag_1116", align 1
  switch i8 %"$$resopt_35_tag_1117", label %"$empty_default_1118" [
    i8 0, label %"$Some_1119"
    i8 1, label %"$None_1165"
  ], !dbg !225

"$Some_1119":                                     ; preds = %"$have_gas_1112"
  %"$$resopt_35_1120" = bitcast %TName_Option_Uint128* %"$$resopt_35_1115" to %CName_Some_Uint128*
  %"$res_gep_1121" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_35_1120", i32 0, i32 1
  %"$res_load_1122" = load %Uint128, %Uint128* %"$res_gep_1121", align 8
  %res13 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1122", %Uint128* %res13, align 8
  %"$gasrem_1123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1124" = icmp ugt i64 1, %"$gasrem_1123"
  br i1 %"$gascmp_1124", label %"$out_of_gas_1125", label %"$have_gas_1126"

"$out_of_gas_1125":                               ; preds = %"$Some_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1126"

"$have_gas_1126":                                 ; preds = %"$out_of_gas_1125", %"$Some_1119"
  %"$consume_1127" = sub i64 %"$gasrem_1123", 1
  store i64 %"$consume_1127", i64* @_gasrem, align 8
  %input_14 = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %input_14, metadata !226, metadata !DIExpression()), !dbg !229
  %"$gasrem_1128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1129" = icmp ugt i64 1, %"$gasrem_1128"
  br i1 %"$gascmp_1129", label %"$out_of_gas_1130", label %"$have_gas_1131"

"$out_of_gas_1130":                               ; preds = %"$have_gas_1126"
  call void @_out_of_gas()
  br label %"$have_gas_1131"

"$have_gas_1131":                                 ; preds = %"$out_of_gas_1130", %"$have_gas_1126"
  %"$consume_1132" = sub i64 %"$gasrem_1128", 1
  store i64 %"$consume_1132", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %input_14, align 8, !dbg !230
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 1, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %"$have_gas_1131"
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %"$have_gas_1131"
  %"$consume_1137" = sub i64 %"$gasrem_1133", 1
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_15, metadata !231, metadata !DIExpression()), !dbg !232
  %"$gasrem_1139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1140" = icmp ugt i64 8, %"$gasrem_1139"
  br i1 %"$gascmp_1140", label %"$out_of_gas_1141", label %"$have_gas_1142"

"$out_of_gas_1141":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1142"

"$have_gas_1142":                                 ; preds = %"$out_of_gas_1141", %"$have_gas_1136"
  %"$consume_1143" = sub i64 %"$gasrem_1139", 8
  store i64 %"$consume_1143", i64* @_gasrem, align 8
  %"$execptr_load_1144" = load i8*, i8** @_execptr, align 8
  %"$res_1145" = load %Uint128, %Uint128* %res13, align 8
  %"$input__1146" = load %Uint128, %Uint128* %input_14, align 8
  %"$eq_call_1147" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1144", %Uint128 %"$res_1145", %Uint128 %"$input__1146"), !dbg !233
  store %TName_Bool* %"$eq_call_1147", %TName_Bool** %test_15, align 8, !dbg !233
  %"$gasrem_1149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1150" = icmp ugt i64 1, %"$gasrem_1149"
  br i1 %"$gascmp_1150", label %"$out_of_gas_1151", label %"$have_gas_1152"

"$out_of_gas_1151":                               ; preds = %"$have_gas_1142"
  call void @_out_of_gas()
  br label %"$have_gas_1152"

"$have_gas_1152":                                 ; preds = %"$out_of_gas_1151", %"$have_gas_1142"
  %"$consume_1153" = sub i64 %"$gasrem_1149", 1
  store i64 %"$consume_1153", i64* @_gasrem, align 8
  %"$BoolUtils.andb_94" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1154" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1155" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1154", 0
  %"$BoolUtils.andb_envptr_1156" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1154", 1
  %"$$test_33_1157" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1158" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1155"(i8* %"$BoolUtils.andb_envptr_1156", %TName_Bool* %"$$test_33_1157"), !dbg !234
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1158", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8, !dbg !234
  %"$BoolUtils.andb_95" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_95", metadata !235, metadata !DIExpression()), !dbg !234
  %"$$BoolUtils.andb_94_1159" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_fptr_1160" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1159", 0
  %"$$BoolUtils.andb_94_envptr_1161" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1159", 1
  %"$test__1162" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_94_call_1163" = call %TName_Bool* %"$$BoolUtils.andb_94_fptr_1160"(i8* %"$$BoolUtils.andb_94_envptr_1161", %TName_Bool* %"$test__1162"), !dbg !234
  store %TName_Bool* %"$$BoolUtils.andb_94_call_1163", %TName_Bool** %"$BoolUtils.andb_95", align 8, !dbg !234
  %"$$BoolUtils.andb_95_1164" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_95", align 8
  store %TName_Bool* %"$$BoolUtils.andb_95_1164", %TName_Bool** %"$test_36", align 8, !dbg !234
  br label %"$matchsucc_1114"

"$None_1165":                                     ; preds = %"$have_gas_1112"
  %"$$resopt_35_1166" = bitcast %TName_Option_Uint128* %"$$resopt_35_1115" to %CName_None_Uint128*
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$None_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$None_1165"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$false_1172" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1172", %TName_Bool** %"$test_36", align 8, !dbg !236
  br label %"$matchsucc_1114"

"$empty_default_1118":                            ; preds = %"$have_gas_1112"
  br label %"$matchsucc_1114"

"$matchsucc_1114":                                ; preds = %"$have_gas_1170", %"$have_gas_1152", %"$empty_default_1118"
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$matchsucc_1114"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$matchsucc_1114"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_37", metadata !238, metadata !DIExpression()), !dbg !239
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$input_37", align 8, !dbg !240
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1181"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$resopt_38", metadata !241, metadata !DIExpression()), !dbg !242
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 8, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1186"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 8
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %"$execptr_load_1193" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_37_1194" = alloca %Uint128, align 8
  %"$$input_37_1195" = load %Uint128, %Uint128* %"$input_37", align 8
  store %Uint128 %"$$input_37_1195", %Uint128* %"$to_uint128_$input_37_1194", align 8
  %"$$to_uint128_$input_37_1194_1196" = bitcast %Uint128* %"$to_uint128_$input_37_1194" to i8*
  %"$to_uint128_call_1197" = call i8* @_to_uint128(i8* %"$execptr_load_1193", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint128_$input_37_1194_1196"), !dbg !243
  %"$to_uint128_1198" = bitcast i8* %"$to_uint128_call_1197" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1198", %TName_Option_Uint128** %"$resopt_38", align 8, !dbg !243
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$have_gas_1191"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_39", metadata !244, metadata !DIExpression()), !dbg !245
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 2, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1202"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 2
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  %"$$resopt_38_1210" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_38", align 8
  %"$$resopt_38_tag_1211" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_38_1210", i32 0, i32 0
  %"$$resopt_38_tag_1212" = load i8, i8* %"$$resopt_38_tag_1211", align 1
  switch i8 %"$$resopt_38_tag_1212", label %"$empty_default_1213" [
    i8 0, label %"$Some_1214"
    i8 1, label %"$None_1260"
  ], !dbg !246

"$Some_1214":                                     ; preds = %"$have_gas_1207"
  %"$$resopt_38_1215" = bitcast %TName_Option_Uint128* %"$$resopt_38_1210" to %CName_Some_Uint128*
  %"$res_gep_1216" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_38_1215", i32 0, i32 1
  %"$res_load_1217" = load %Uint128, %Uint128* %"$res_gep_1216", align 8
  %res16 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1217", %Uint128* %res16, align 8
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 1, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$Some_1214"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$Some_1214"
  %"$consume_1222" = sub i64 %"$gasrem_1218", 1
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %input_17 = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %input_17, metadata !247, metadata !DIExpression()), !dbg !250
  %"$gasrem_1223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1224" = icmp ugt i64 1, %"$gasrem_1223"
  br i1 %"$gascmp_1224", label %"$out_of_gas_1225", label %"$have_gas_1226"

"$out_of_gas_1225":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1226"

"$have_gas_1226":                                 ; preds = %"$out_of_gas_1225", %"$have_gas_1221"
  %"$consume_1227" = sub i64 %"$gasrem_1223", 1
  store i64 %"$consume_1227", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %input_17, align 8, !dbg !251
  %"$gasrem_1228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1229" = icmp ugt i64 1, %"$gasrem_1228"
  br i1 %"$gascmp_1229", label %"$out_of_gas_1230", label %"$have_gas_1231"

"$out_of_gas_1230":                               ; preds = %"$have_gas_1226"
  call void @_out_of_gas()
  br label %"$have_gas_1231"

"$have_gas_1231":                                 ; preds = %"$out_of_gas_1230", %"$have_gas_1226"
  %"$consume_1232" = sub i64 %"$gasrem_1228", 1
  store i64 %"$consume_1232", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_18, metadata !252, metadata !DIExpression()), !dbg !253
  %"$gasrem_1234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1235" = icmp ugt i64 8, %"$gasrem_1234"
  br i1 %"$gascmp_1235", label %"$out_of_gas_1236", label %"$have_gas_1237"

"$out_of_gas_1236":                               ; preds = %"$have_gas_1231"
  call void @_out_of_gas()
  br label %"$have_gas_1237"

"$have_gas_1237":                                 ; preds = %"$out_of_gas_1236", %"$have_gas_1231"
  %"$consume_1238" = sub i64 %"$gasrem_1234", 8
  store i64 %"$consume_1238", i64* @_gasrem, align 8
  %"$execptr_load_1239" = load i8*, i8** @_execptr, align 8
  %"$res_1240" = load %Uint128, %Uint128* %res16, align 8
  %"$input__1241" = load %Uint128, %Uint128* %input_17, align 8
  %"$eq_call_1242" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1239", %Uint128 %"$res_1240", %Uint128 %"$input__1241"), !dbg !254
  store %TName_Bool* %"$eq_call_1242", %TName_Bool** %test_18, align 8, !dbg !254
  %"$gasrem_1244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1245" = icmp ugt i64 1, %"$gasrem_1244"
  br i1 %"$gascmp_1245", label %"$out_of_gas_1246", label %"$have_gas_1247"

"$out_of_gas_1246":                               ; preds = %"$have_gas_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1247"

"$have_gas_1247":                                 ; preds = %"$out_of_gas_1246", %"$have_gas_1237"
  %"$consume_1248" = sub i64 %"$gasrem_1244", 1
  store i64 %"$consume_1248", i64* @_gasrem, align 8
  %"$BoolUtils.andb_96" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1249" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1250" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1249", 0
  %"$BoolUtils.andb_envptr_1251" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1249", 1
  %"$$test_36_1252" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1253" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1250"(i8* %"$BoolUtils.andb_envptr_1251", %TName_Bool* %"$$test_36_1252"), !dbg !255
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1253", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8, !dbg !255
  %"$BoolUtils.andb_97" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_97", metadata !256, metadata !DIExpression()), !dbg !255
  %"$$BoolUtils.andb_96_1254" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_fptr_1255" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1254", 0
  %"$$BoolUtils.andb_96_envptr_1256" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1254", 1
  %"$test__1257" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_96_call_1258" = call %TName_Bool* %"$$BoolUtils.andb_96_fptr_1255"(i8* %"$$BoolUtils.andb_96_envptr_1256", %TName_Bool* %"$test__1257"), !dbg !255
  store %TName_Bool* %"$$BoolUtils.andb_96_call_1258", %TName_Bool** %"$BoolUtils.andb_97", align 8, !dbg !255
  %"$$BoolUtils.andb_97_1259" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_97", align 8
  store %TName_Bool* %"$$BoolUtils.andb_97_1259", %TName_Bool** %"$test_39", align 8, !dbg !255
  br label %"$matchsucc_1209"

"$None_1260":                                     ; preds = %"$have_gas_1207"
  %"$$resopt_38_1261" = bitcast %TName_Option_Uint128* %"$$resopt_38_1210" to %CName_None_Uint128*
  %"$gasrem_1262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1263" = icmp ugt i64 1, %"$gasrem_1262"
  br i1 %"$gascmp_1263", label %"$out_of_gas_1264", label %"$have_gas_1265"

"$out_of_gas_1264":                               ; preds = %"$None_1260"
  call void @_out_of_gas()
  br label %"$have_gas_1265"

"$have_gas_1265":                                 ; preds = %"$out_of_gas_1264", %"$None_1260"
  %"$consume_1266" = sub i64 %"$gasrem_1262", 1
  store i64 %"$consume_1266", i64* @_gasrem, align 8
  %"$false_1267" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1267", %TName_Bool** %"$test_39", align 8, !dbg !257
  br label %"$matchsucc_1209"

"$empty_default_1213":                            ; preds = %"$have_gas_1207"
  br label %"$matchsucc_1209"

"$matchsucc_1209":                                ; preds = %"$have_gas_1265", %"$have_gas_1247", %"$empty_default_1213"
  %"$gasrem_1268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1269" = icmp ugt i64 1, %"$gasrem_1268"
  br i1 %"$gascmp_1269", label %"$out_of_gas_1270", label %"$have_gas_1271"

"$out_of_gas_1270":                               ; preds = %"$matchsucc_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1271"

"$have_gas_1271":                                 ; preds = %"$out_of_gas_1270", %"$matchsucc_1209"
  %"$consume_1272" = sub i64 %"$gasrem_1268", 1
  store i64 %"$consume_1272", i64* @_gasrem, align 8
  %"$input_40" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_40", metadata !259, metadata !DIExpression()), !dbg !260
  %"$gasrem_1273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1274" = icmp ugt i64 1, %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$have_gas_1271"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$have_gas_1271"
  %"$consume_1277" = sub i64 %"$gasrem_1273", 1
  store i64 %"$consume_1277", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_40", align 8, !dbg !261
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1276"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$resopt_41", metadata !262, metadata !DIExpression()), !dbg !263
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 8, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1281"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 8
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  %"$execptr_load_1288" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_40_1289" = alloca %Uint256, align 8
  %"$$input_40_1290" = load %Uint256, %Uint256* %"$input_40", align 8
  store %Uint256 %"$$input_40_1290", %Uint256* %"$to_uint128_$input_40_1289", align 8
  %"$$to_uint128_$input_40_1289_1291" = bitcast %Uint256* %"$to_uint128_$input_40_1289" to i8*
  %"$to_uint128_call_1292" = call i8* @_to_uint128(i8* %"$execptr_load_1288", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint128_$input_40_1289_1291"), !dbg !264
  %"$to_uint128_1293" = bitcast i8* %"$to_uint128_call_1292" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1293", %TName_Option_Uint128** %"$resopt_41", align 8, !dbg !264
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
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !265, metadata !DIExpression()), !dbg !266
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 2, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1297"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 2
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %"$$resopt_41_1305" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_41", align 8
  %"$$resopt_41_tag_1306" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_41_1305", i32 0, i32 0
  %"$$resopt_41_tag_1307" = load i8, i8* %"$$resopt_41_tag_1306", align 1
  switch i8 %"$$resopt_41_tag_1307", label %"$empty_default_1308" [
    i8 0, label %"$Some_1309"
    i8 1, label %"$None_1319"
  ], !dbg !267

"$Some_1309":                                     ; preds = %"$have_gas_1302"
  %"$$resopt_41_1310" = bitcast %TName_Option_Uint128* %"$$resopt_41_1305" to %CName_Some_Uint128*
  %"$$$resopt_41_78_gep_1311" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_41_1310", i32 0, i32 1
  %"$$$resopt_41_78_load_1312" = load %Uint128, %Uint128* %"$$$resopt_41_78_gep_1311", align 8
  %"$$resopt_41_78" = alloca %Uint128, align 8
  store %Uint128 %"$$$resopt_41_78_load_1312", %Uint128* %"$$resopt_41_78", align 8
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 1, %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$Some_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$Some_1309"
  %"$consume_1317" = sub i64 %"$gasrem_1313", 1
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %"$false_1318" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1318", %TName_Bool** %"$test_42", align 8, !dbg !268
  br label %"$matchsucc_1304"

"$None_1319":                                     ; preds = %"$have_gas_1302"
  %"$$resopt_41_1320" = bitcast %TName_Option_Uint128* %"$$resopt_41_1305" to %CName_None_Uint128*
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 1, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$None_1319"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$None_1319"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 1
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %"$$test_39_1326" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  store %TName_Bool* %"$$test_39_1326", %TName_Bool** %"$test_42", align 8, !dbg !271
  br label %"$matchsucc_1304"

"$empty_default_1308":                            ; preds = %"$have_gas_1302"
  br label %"$matchsucc_1304"

"$matchsucc_1304":                                ; preds = %"$have_gas_1324", %"$have_gas_1316", %"$empty_default_1308"
  %"$gasrem_1327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1328" = icmp ugt i64 1, %"$gasrem_1327"
  br i1 %"$gascmp_1328", label %"$out_of_gas_1329", label %"$have_gas_1330"

"$out_of_gas_1329":                               ; preds = %"$matchsucc_1304"
  call void @_out_of_gas()
  br label %"$have_gas_1330"

"$have_gas_1330":                                 ; preds = %"$out_of_gas_1329", %"$matchsucc_1304"
  %"$consume_1331" = sub i64 %"$gasrem_1327", 1
  store i64 %"$consume_1331", i64* @_gasrem, align 8
  %"$input_43" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_43", metadata !273, metadata !DIExpression()), !dbg !274
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$have_gas_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$have_gas_1330"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_43", align 8, !dbg !275
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1335"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1335"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_44", metadata !276, metadata !DIExpression()), !dbg !279
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 16, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1340"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 16
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$execptr_load_1347" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_43_1348" = alloca %Uint256, align 8
  %"$$input_43_1349" = load %Uint256, %Uint256* %"$input_43", align 8
  store %Uint256 %"$$input_43_1349", %Uint256* %"$to_uint256_$input_43_1348", align 8
  %"$$to_uint256_$input_43_1348_1350" = bitcast %Uint256* %"$to_uint256_$input_43_1348" to i8*
  %"$to_uint256_call_1351" = call i8* @_to_uint256(i8* %"$execptr_load_1347", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint256_$input_43_1348_1350"), !dbg !280
  %"$to_uint256_1352" = bitcast i8* %"$to_uint256_call_1351" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1352", %TName_Option_Uint256** %"$resopt_44", align 8, !dbg !280
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1345"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_45", metadata !281, metadata !DIExpression()), !dbg !282
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 2, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1356"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 2
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %"$$resopt_44_1364" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_44", align 8
  %"$$resopt_44_tag_1365" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_44_1364", i32 0, i32 0
  %"$$resopt_44_tag_1366" = load i8, i8* %"$$resopt_44_tag_1365", align 1
  switch i8 %"$$resopt_44_tag_1366", label %"$empty_default_1367" [
    i8 0, label %"$Some_1368"
    i8 1, label %"$None_1416"
  ], !dbg !283

"$Some_1368":                                     ; preds = %"$have_gas_1361"
  %"$$resopt_44_1369" = bitcast %TName_Option_Uint256* %"$$resopt_44_1364" to %CName_Some_Uint256*
  %"$res_gep_1370" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_44_1369", i32 0, i32 1
  %"$res_load_1371" = load %Uint256, %Uint256* %"$res_gep_1370", align 8
  %res19 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1371", %Uint256* %res19, align 8
  %"$gasrem_1372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1373" = icmp ugt i64 1, %"$gasrem_1372"
  br i1 %"$gascmp_1373", label %"$out_of_gas_1374", label %"$have_gas_1375"

"$out_of_gas_1374":                               ; preds = %"$Some_1368"
  call void @_out_of_gas()
  br label %"$have_gas_1375"

"$have_gas_1375":                                 ; preds = %"$out_of_gas_1374", %"$Some_1368"
  %"$consume_1376" = sub i64 %"$gasrem_1372", 1
  store i64 %"$consume_1376", i64* @_gasrem, align 8
  %input_20 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_20, metadata !284, metadata !DIExpression()), !dbg !287
  %"$gasrem_1377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1378" = icmp ugt i64 1, %"$gasrem_1377"
  br i1 %"$gascmp_1378", label %"$out_of_gas_1379", label %"$have_gas_1380"

"$out_of_gas_1379":                               ; preds = %"$have_gas_1375"
  call void @_out_of_gas()
  br label %"$have_gas_1380"

"$have_gas_1380":                                 ; preds = %"$out_of_gas_1379", %"$have_gas_1375"
  %"$consume_1381" = sub i64 %"$gasrem_1377", 1
  store i64 %"$consume_1381", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %input_20, align 8, !dbg !288
  %"$gasrem_1382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1383" = icmp ugt i64 1, %"$gasrem_1382"
  br i1 %"$gascmp_1383", label %"$out_of_gas_1384", label %"$have_gas_1385"

"$out_of_gas_1384":                               ; preds = %"$have_gas_1380"
  call void @_out_of_gas()
  br label %"$have_gas_1385"

"$have_gas_1385":                                 ; preds = %"$out_of_gas_1384", %"$have_gas_1380"
  %"$consume_1386" = sub i64 %"$gasrem_1382", 1
  store i64 %"$consume_1386", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_21, metadata !289, metadata !DIExpression()), !dbg !290
  %"$gasrem_1388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1389" = icmp ugt i64 16, %"$gasrem_1388"
  br i1 %"$gascmp_1389", label %"$out_of_gas_1390", label %"$have_gas_1391"

"$out_of_gas_1390":                               ; preds = %"$have_gas_1385"
  call void @_out_of_gas()
  br label %"$have_gas_1391"

"$have_gas_1391":                                 ; preds = %"$out_of_gas_1390", %"$have_gas_1385"
  %"$consume_1392" = sub i64 %"$gasrem_1388", 16
  store i64 %"$consume_1392", i64* @_gasrem, align 8
  %"$execptr_load_1393" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1394" = alloca %Uint256, align 8
  %"$res_1395" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res_1395", %Uint256* %"$eq_res_1394", align 8
  %"$eq_input__1396" = alloca %Uint256, align 8
  %"$input__1397" = load %Uint256, %Uint256* %input_20, align 8
  store %Uint256 %"$input__1397", %Uint256* %"$eq_input__1396", align 8
  %"$eq_call_1398" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1393", %Uint256* %"$eq_res_1394", %Uint256* %"$eq_input__1396"), !dbg !291
  store %TName_Bool* %"$eq_call_1398", %TName_Bool** %test_21, align 8, !dbg !291
  %"$gasrem_1400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1401" = icmp ugt i64 1, %"$gasrem_1400"
  br i1 %"$gascmp_1401", label %"$out_of_gas_1402", label %"$have_gas_1403"

"$out_of_gas_1402":                               ; preds = %"$have_gas_1391"
  call void @_out_of_gas()
  br label %"$have_gas_1403"

"$have_gas_1403":                                 ; preds = %"$out_of_gas_1402", %"$have_gas_1391"
  %"$consume_1404" = sub i64 %"$gasrem_1400", 1
  store i64 %"$consume_1404", i64* @_gasrem, align 8
  %"$BoolUtils.andb_98" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1405" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1406" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1405", 0
  %"$BoolUtils.andb_envptr_1407" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1405", 1
  %"$$test_42_1408" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1409" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1406"(i8* %"$BoolUtils.andb_envptr_1407", %TName_Bool* %"$$test_42_1408"), !dbg !292
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1409", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8, !dbg !292
  %"$BoolUtils.andb_99" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_99", metadata !293, metadata !DIExpression()), !dbg !292
  %"$$BoolUtils.andb_98_1410" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_fptr_1411" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1410", 0
  %"$$BoolUtils.andb_98_envptr_1412" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1410", 1
  %"$test__1413" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_98_call_1414" = call %TName_Bool* %"$$BoolUtils.andb_98_fptr_1411"(i8* %"$$BoolUtils.andb_98_envptr_1412", %TName_Bool* %"$test__1413"), !dbg !292
  store %TName_Bool* %"$$BoolUtils.andb_98_call_1414", %TName_Bool** %"$BoolUtils.andb_99", align 8, !dbg !292
  %"$$BoolUtils.andb_99_1415" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_99", align 8
  store %TName_Bool* %"$$BoolUtils.andb_99_1415", %TName_Bool** %"$test_45", align 8, !dbg !292
  br label %"$matchsucc_1363"

"$None_1416":                                     ; preds = %"$have_gas_1361"
  %"$$resopt_44_1417" = bitcast %TName_Option_Uint256* %"$$resopt_44_1364" to %CName_None_Uint256*
  %"$gasrem_1418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1419" = icmp ugt i64 1, %"$gasrem_1418"
  br i1 %"$gascmp_1419", label %"$out_of_gas_1420", label %"$have_gas_1421"

"$out_of_gas_1420":                               ; preds = %"$None_1416"
  call void @_out_of_gas()
  br label %"$have_gas_1421"

"$have_gas_1421":                                 ; preds = %"$out_of_gas_1420", %"$None_1416"
  %"$consume_1422" = sub i64 %"$gasrem_1418", 1
  store i64 %"$consume_1422", i64* @_gasrem, align 8
  %"$false_1423" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1423", %TName_Bool** %"$test_45", align 8, !dbg !294
  br label %"$matchsucc_1363"

"$empty_default_1367":                            ; preds = %"$have_gas_1361"
  br label %"$matchsucc_1363"

"$matchsucc_1363":                                ; preds = %"$have_gas_1421", %"$have_gas_1403", %"$empty_default_1367"
  %"$gasrem_1424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1425" = icmp ugt i64 1, %"$gasrem_1424"
  br i1 %"$gascmp_1425", label %"$out_of_gas_1426", label %"$have_gas_1427"

"$out_of_gas_1426":                               ; preds = %"$matchsucc_1363"
  call void @_out_of_gas()
  br label %"$have_gas_1427"

"$have_gas_1427":                                 ; preds = %"$out_of_gas_1426", %"$matchsucc_1363"
  %"$consume_1428" = sub i64 %"$gasrem_1424", 1
  store i64 %"$consume_1428", i64* @_gasrem, align 8
  %"$input_46" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$input_46", metadata !296, metadata !DIExpression()), !dbg !297
  %"$gasrem_1429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1430" = icmp ugt i64 1, %"$gasrem_1429"
  br i1 %"$gascmp_1430", label %"$out_of_gas_1431", label %"$have_gas_1432"

"$out_of_gas_1431":                               ; preds = %"$have_gas_1427"
  call void @_out_of_gas()
  br label %"$have_gas_1432"

"$have_gas_1432":                                 ; preds = %"$out_of_gas_1431", %"$have_gas_1427"
  %"$consume_1433" = sub i64 %"$gasrem_1429", 1
  store i64 %"$consume_1433", i64* @_gasrem, align 8
  store %Uint32 { i32 22 }, %Uint32* %"$input_46", align 4, !dbg !298
  %"$gasrem_1434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1435" = icmp ugt i64 1, %"$gasrem_1434"
  br i1 %"$gascmp_1435", label %"$out_of_gas_1436", label %"$have_gas_1437"

"$out_of_gas_1436":                               ; preds = %"$have_gas_1432"
  call void @_out_of_gas()
  br label %"$have_gas_1437"

"$have_gas_1437":                                 ; preds = %"$out_of_gas_1436", %"$have_gas_1432"
  %"$consume_1438" = sub i64 %"$gasrem_1434", 1
  store i64 %"$consume_1438", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_47", metadata !299, metadata !DIExpression()), !dbg !300
  %"$gasrem_1439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1440" = icmp ugt i64 16, %"$gasrem_1439"
  br i1 %"$gascmp_1440", label %"$out_of_gas_1441", label %"$have_gas_1442"

"$out_of_gas_1441":                               ; preds = %"$have_gas_1437"
  call void @_out_of_gas()
  br label %"$have_gas_1442"

"$have_gas_1442":                                 ; preds = %"$out_of_gas_1441", %"$have_gas_1437"
  %"$consume_1443" = sub i64 %"$gasrem_1439", 16
  store i64 %"$consume_1443", i64* @_gasrem, align 8
  %"$execptr_load_1444" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_46_1445" = alloca %Uint32, align 8
  %"$$input_46_1446" = load %Uint32, %Uint32* %"$input_46", align 4
  store %Uint32 %"$$input_46_1446", %Uint32* %"$to_uint256_$input_46_1445", align 4
  %"$$to_uint256_$input_46_1445_1447" = bitcast %Uint32* %"$to_uint256_$input_46_1445" to i8*
  %"$to_uint256_call_1448" = call i8* @_to_uint256(i8* %"$execptr_load_1444", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint256_$input_46_1445_1447"), !dbg !301
  %"$to_uint256_1449" = bitcast i8* %"$to_uint256_call_1448" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1449", %TName_Option_Uint256** %"$resopt_47", align 8, !dbg !301
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1442"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1442"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !302, metadata !DIExpression()), !dbg !303
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 2, %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1453"
  %"$consume_1459" = sub i64 %"$gasrem_1455", 2
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  %"$$resopt_47_1461" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_47", align 8
  %"$$resopt_47_tag_1462" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_47_1461", i32 0, i32 0
  %"$$resopt_47_tag_1463" = load i8, i8* %"$$resopt_47_tag_1462", align 1
  switch i8 %"$$resopt_47_tag_1463", label %"$empty_default_1464" [
    i8 0, label %"$Some_1465"
    i8 1, label %"$None_1513"
  ], !dbg !304

"$Some_1465":                                     ; preds = %"$have_gas_1458"
  %"$$resopt_47_1466" = bitcast %TName_Option_Uint256* %"$$resopt_47_1461" to %CName_Some_Uint256*
  %"$res_gep_1467" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_47_1466", i32 0, i32 1
  %"$res_load_1468" = load %Uint256, %Uint256* %"$res_gep_1467", align 8
  %res22 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1468", %Uint256* %res22, align 8
  %"$gasrem_1469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1470" = icmp ugt i64 1, %"$gasrem_1469"
  br i1 %"$gascmp_1470", label %"$out_of_gas_1471", label %"$have_gas_1472"

"$out_of_gas_1471":                               ; preds = %"$Some_1465"
  call void @_out_of_gas()
  br label %"$have_gas_1472"

"$have_gas_1472":                                 ; preds = %"$out_of_gas_1471", %"$Some_1465"
  %"$consume_1473" = sub i64 %"$gasrem_1469", 1
  store i64 %"$consume_1473", i64* @_gasrem, align 8
  %input_23 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_23, metadata !305, metadata !DIExpression()), !dbg !308
  %"$gasrem_1474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1475" = icmp ugt i64 1, %"$gasrem_1474"
  br i1 %"$gascmp_1475", label %"$out_of_gas_1476", label %"$have_gas_1477"

"$out_of_gas_1476":                               ; preds = %"$have_gas_1472"
  call void @_out_of_gas()
  br label %"$have_gas_1477"

"$have_gas_1477":                                 ; preds = %"$out_of_gas_1476", %"$have_gas_1472"
  %"$consume_1478" = sub i64 %"$gasrem_1474", 1
  store i64 %"$consume_1478", i64* @_gasrem, align 8
  store %Uint256 { i256 22 }, %Uint256* %input_23, align 8, !dbg !309
  %"$gasrem_1479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1480" = icmp ugt i64 1, %"$gasrem_1479"
  br i1 %"$gascmp_1480", label %"$out_of_gas_1481", label %"$have_gas_1482"

"$out_of_gas_1481":                               ; preds = %"$have_gas_1477"
  call void @_out_of_gas()
  br label %"$have_gas_1482"

"$have_gas_1482":                                 ; preds = %"$out_of_gas_1481", %"$have_gas_1477"
  %"$consume_1483" = sub i64 %"$gasrem_1479", 1
  store i64 %"$consume_1483", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_24, metadata !310, metadata !DIExpression()), !dbg !311
  %"$gasrem_1485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1486" = icmp ugt i64 16, %"$gasrem_1485"
  br i1 %"$gascmp_1486", label %"$out_of_gas_1487", label %"$have_gas_1488"

"$out_of_gas_1487":                               ; preds = %"$have_gas_1482"
  call void @_out_of_gas()
  br label %"$have_gas_1488"

"$have_gas_1488":                                 ; preds = %"$out_of_gas_1487", %"$have_gas_1482"
  %"$consume_1489" = sub i64 %"$gasrem_1485", 16
  store i64 %"$consume_1489", i64* @_gasrem, align 8
  %"$execptr_load_1490" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1491" = alloca %Uint256, align 8
  %"$res_1492" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res_1492", %Uint256* %"$eq_res_1491", align 8
  %"$eq_input__1493" = alloca %Uint256, align 8
  %"$input__1494" = load %Uint256, %Uint256* %input_23, align 8
  store %Uint256 %"$input__1494", %Uint256* %"$eq_input__1493", align 8
  %"$eq_call_1495" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1490", %Uint256* %"$eq_res_1491", %Uint256* %"$eq_input__1493"), !dbg !312
  store %TName_Bool* %"$eq_call_1495", %TName_Bool** %test_24, align 8, !dbg !312
  %"$gasrem_1497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1498" = icmp ugt i64 1, %"$gasrem_1497"
  br i1 %"$gascmp_1498", label %"$out_of_gas_1499", label %"$have_gas_1500"

"$out_of_gas_1499":                               ; preds = %"$have_gas_1488"
  call void @_out_of_gas()
  br label %"$have_gas_1500"

"$have_gas_1500":                                 ; preds = %"$out_of_gas_1499", %"$have_gas_1488"
  %"$consume_1501" = sub i64 %"$gasrem_1497", 1
  store i64 %"$consume_1501", i64* @_gasrem, align 8
  %"$BoolUtils.andb_100" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1502" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1503" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1502", 0
  %"$BoolUtils.andb_envptr_1504" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1502", 1
  %"$$test_45_1505" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  %"$BoolUtils.andb_call_1506" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1503"(i8* %"$BoolUtils.andb_envptr_1504", %TName_Bool* %"$$test_45_1505"), !dbg !313
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1506", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8, !dbg !313
  %"$BoolUtils.andb_101" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_101", metadata !314, metadata !DIExpression()), !dbg !313
  %"$$BoolUtils.andb_100_1507" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$$BoolUtils.andb_100_fptr_1508" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1507", 0
  %"$$BoolUtils.andb_100_envptr_1509" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1507", 1
  %"$test__1510" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_100_call_1511" = call %TName_Bool* %"$$BoolUtils.andb_100_fptr_1508"(i8* %"$$BoolUtils.andb_100_envptr_1509", %TName_Bool* %"$test__1510"), !dbg !313
  store %TName_Bool* %"$$BoolUtils.andb_100_call_1511", %TName_Bool** %"$BoolUtils.andb_101", align 8, !dbg !313
  %"$$BoolUtils.andb_101_1512" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_101", align 8
  store %TName_Bool* %"$$BoolUtils.andb_101_1512", %TName_Bool** %"$test_48", align 8, !dbg !313
  br label %"$matchsucc_1460"

"$None_1513":                                     ; preds = %"$have_gas_1458"
  %"$$resopt_47_1514" = bitcast %TName_Option_Uint256* %"$$resopt_47_1461" to %CName_None_Uint256*
  %"$gasrem_1515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1516" = icmp ugt i64 1, %"$gasrem_1515"
  br i1 %"$gascmp_1516", label %"$out_of_gas_1517", label %"$have_gas_1518"

"$out_of_gas_1517":                               ; preds = %"$None_1513"
  call void @_out_of_gas()
  br label %"$have_gas_1518"

"$have_gas_1518":                                 ; preds = %"$out_of_gas_1517", %"$None_1513"
  %"$consume_1519" = sub i64 %"$gasrem_1515", 1
  store i64 %"$consume_1519", i64* @_gasrem, align 8
  %"$false_1520" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1520", %TName_Bool** %"$test_48", align 8, !dbg !315
  br label %"$matchsucc_1460"

"$empty_default_1464":                            ; preds = %"$have_gas_1458"
  br label %"$matchsucc_1460"

"$matchsucc_1460":                                ; preds = %"$have_gas_1518", %"$have_gas_1500", %"$empty_default_1464"
  %"$gasrem_1521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1522" = icmp ugt i64 1, %"$gasrem_1521"
  br i1 %"$gascmp_1522", label %"$out_of_gas_1523", label %"$have_gas_1524"

"$out_of_gas_1523":                               ; preds = %"$matchsucc_1460"
  call void @_out_of_gas()
  br label %"$have_gas_1524"

"$have_gas_1524":                                 ; preds = %"$out_of_gas_1523", %"$matchsucc_1460"
  %"$consume_1525" = sub i64 %"$gasrem_1521", 1
  store i64 %"$consume_1525", i64* @_gasrem, align 8
  %"$input_49" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$input_49", metadata !317, metadata !DIExpression()), !dbg !319
  %"$gasrem_1526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1527" = icmp ugt i64 1, %"$gasrem_1526"
  br i1 %"$gascmp_1527", label %"$out_of_gas_1528", label %"$have_gas_1529"

"$out_of_gas_1528":                               ; preds = %"$have_gas_1524"
  call void @_out_of_gas()
  br label %"$have_gas_1529"

"$have_gas_1529":                                 ; preds = %"$out_of_gas_1528", %"$have_gas_1524"
  %"$consume_1530" = sub i64 %"$gasrem_1526", 1
  store i64 %"$consume_1530", i64* @_gasrem, align 8
  store %Int32 { i32 2147483647 }, %Int32* %"$input_49", align 4, !dbg !320
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$have_gas_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$have_gas_1529"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_50", metadata !321, metadata !DIExpression()), !dbg !322
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 4, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$have_gas_1534"
  %"$consume_1540" = sub i64 %"$gasrem_1536", 4
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %"$execptr_load_1541" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_49_1542" = alloca %Int32, align 8
  %"$$input_49_1543" = load %Int32, %Int32* %"$input_49", align 4
  store %Int32 %"$$input_49_1543", %Int32* %"$to_uint32_$input_49_1542", align 4
  %"$$to_uint32_$input_49_1542_1544" = bitcast %Int32* %"$to_uint32_$input_49_1542" to i8*
  %"$to_uint32_call_1545" = call i8* @_to_uint32(i8* %"$execptr_load_1541", %_TyDescrTy_Typ* @"$TyDescr_Int32_115", i8* %"$$to_uint32_$input_49_1542_1544"), !dbg !323
  %"$to_uint32_1546" = bitcast i8* %"$to_uint32_call_1545" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1546", %TName_Option_Uint32** %"$resopt_50", align 8, !dbg !323
  %"$gasrem_1547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1548" = icmp ugt i64 1, %"$gasrem_1547"
  br i1 %"$gascmp_1548", label %"$out_of_gas_1549", label %"$have_gas_1550"

"$out_of_gas_1549":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1550"

"$have_gas_1550":                                 ; preds = %"$out_of_gas_1549", %"$have_gas_1539"
  %"$consume_1551" = sub i64 %"$gasrem_1547", 1
  store i64 %"$consume_1551", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_51", metadata !324, metadata !DIExpression()), !dbg !325
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 2, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %"$have_gas_1550"
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %"$have_gas_1550"
  %"$consume_1556" = sub i64 %"$gasrem_1552", 2
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %"$$resopt_50_1558" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_50", align 8
  %"$$resopt_50_tag_1559" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_50_1558", i32 0, i32 0
  %"$$resopt_50_tag_1560" = load i8, i8* %"$$resopt_50_tag_1559", align 1
  switch i8 %"$$resopt_50_tag_1560", label %"$empty_default_1561" [
    i8 0, label %"$Some_1562"
    i8 1, label %"$None_1607"
  ], !dbg !326

"$Some_1562":                                     ; preds = %"$have_gas_1555"
  %"$$resopt_50_1563" = bitcast %TName_Option_Uint32* %"$$resopt_50_1558" to %CName_Some_Uint32*
  %"$res_gep_1564" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_50_1563", i32 0, i32 1
  %"$res_load_1565" = load %Uint32, %Uint32* %"$res_gep_1564", align 4
  %res25 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_1565", %Uint32* %res25, align 4
  %"$gasrem_1566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1567" = icmp ugt i64 1, %"$gasrem_1566"
  br i1 %"$gascmp_1567", label %"$out_of_gas_1568", label %"$have_gas_1569"

"$out_of_gas_1568":                               ; preds = %"$Some_1562"
  call void @_out_of_gas()
  br label %"$have_gas_1569"

"$have_gas_1569":                                 ; preds = %"$out_of_gas_1568", %"$Some_1562"
  %"$consume_1570" = sub i64 %"$gasrem_1566", 1
  store i64 %"$consume_1570", i64* @_gasrem, align 8
  %input_26 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input_26, metadata !327, metadata !DIExpression()), !dbg !330
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 1, %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$have_gas_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$have_gas_1569"
  %"$consume_1575" = sub i64 %"$gasrem_1571", 1
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  store %Uint32 { i32 2147483647 }, %Uint32* %input_26, align 4, !dbg !331
  %"$gasrem_1576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1577" = icmp ugt i64 1, %"$gasrem_1576"
  br i1 %"$gascmp_1577", label %"$out_of_gas_1578", label %"$have_gas_1579"

"$out_of_gas_1578":                               ; preds = %"$have_gas_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1579"

"$have_gas_1579":                                 ; preds = %"$out_of_gas_1578", %"$have_gas_1574"
  %"$consume_1580" = sub i64 %"$gasrem_1576", 1
  store i64 %"$consume_1580", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_27, metadata !332, metadata !DIExpression()), !dbg !333
  %"$gasrem_1581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1582" = icmp ugt i64 4, %"$gasrem_1581"
  br i1 %"$gascmp_1582", label %"$out_of_gas_1583", label %"$have_gas_1584"

"$out_of_gas_1583":                               ; preds = %"$have_gas_1579"
  call void @_out_of_gas()
  br label %"$have_gas_1584"

"$have_gas_1584":                                 ; preds = %"$out_of_gas_1583", %"$have_gas_1579"
  %"$consume_1585" = sub i64 %"$gasrem_1581", 4
  store i64 %"$consume_1585", i64* @_gasrem, align 8
  %"$execptr_load_1586" = load i8*, i8** @_execptr, align 8
  %"$res_1587" = load %Uint32, %Uint32* %res25, align 4
  %"$input__1588" = load %Uint32, %Uint32* %input_26, align 4
  %"$eq_call_1589" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1586", %Uint32 %"$res_1587", %Uint32 %"$input__1588"), !dbg !334
  store %TName_Bool* %"$eq_call_1589", %TName_Bool** %test_27, align 8, !dbg !334
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 1, %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1584"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1584"
  %"$consume_1595" = sub i64 %"$gasrem_1591", 1
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  %"$BoolUtils.andb_102" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1596" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1597" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1596", 0
  %"$BoolUtils.andb_envptr_1598" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1596", 1
  %"$$test_48_1599" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1600" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1597"(i8* %"$BoolUtils.andb_envptr_1598", %TName_Bool* %"$$test_48_1599"), !dbg !335
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1600", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_102", align 8, !dbg !335
  %"$BoolUtils.andb_103" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_103", metadata !336, metadata !DIExpression()), !dbg !335
  %"$$BoolUtils.andb_102_1601" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_102", align 8
  %"$$BoolUtils.andb_102_fptr_1602" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_102_1601", 0
  %"$$BoolUtils.andb_102_envptr_1603" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_102_1601", 1
  %"$test__1604" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_102_call_1605" = call %TName_Bool* %"$$BoolUtils.andb_102_fptr_1602"(i8* %"$$BoolUtils.andb_102_envptr_1603", %TName_Bool* %"$test__1604"), !dbg !335
  store %TName_Bool* %"$$BoolUtils.andb_102_call_1605", %TName_Bool** %"$BoolUtils.andb_103", align 8, !dbg !335
  %"$$BoolUtils.andb_103_1606" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_103", align 8
  store %TName_Bool* %"$$BoolUtils.andb_103_1606", %TName_Bool** %"$test_51", align 8, !dbg !335
  br label %"$matchsucc_1557"

"$None_1607":                                     ; preds = %"$have_gas_1555"
  %"$$resopt_50_1608" = bitcast %TName_Option_Uint32* %"$$resopt_50_1558" to %CName_None_Uint32*
  %"$gasrem_1609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1610" = icmp ugt i64 1, %"$gasrem_1609"
  br i1 %"$gascmp_1610", label %"$out_of_gas_1611", label %"$have_gas_1612"

"$out_of_gas_1611":                               ; preds = %"$None_1607"
  call void @_out_of_gas()
  br label %"$have_gas_1612"

"$have_gas_1612":                                 ; preds = %"$out_of_gas_1611", %"$None_1607"
  %"$consume_1613" = sub i64 %"$gasrem_1609", 1
  store i64 %"$consume_1613", i64* @_gasrem, align 8
  %"$false_1614" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1614", %TName_Bool** %"$test_51", align 8, !dbg !337
  br label %"$matchsucc_1557"

"$empty_default_1561":                            ; preds = %"$have_gas_1555"
  br label %"$matchsucc_1557"

"$matchsucc_1557":                                ; preds = %"$have_gas_1612", %"$have_gas_1594", %"$empty_default_1561"
  %"$gasrem_1615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1616" = icmp ugt i64 1, %"$gasrem_1615"
  br i1 %"$gascmp_1616", label %"$out_of_gas_1617", label %"$have_gas_1618"

"$out_of_gas_1617":                               ; preds = %"$matchsucc_1557"
  call void @_out_of_gas()
  br label %"$have_gas_1618"

"$have_gas_1618":                                 ; preds = %"$out_of_gas_1617", %"$matchsucc_1557"
  %"$consume_1619" = sub i64 %"$gasrem_1615", 1
  store i64 %"$consume_1619", i64* @_gasrem, align 8
  %"$input_52" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$input_52", metadata !339, metadata !DIExpression()), !dbg !340
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 1, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1618"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 1
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  store %Int32 { i32 -2147483648 }, %Int32* %"$input_52", align 4, !dbg !341
  %"$gasrem_1625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1626" = icmp ugt i64 1, %"$gasrem_1625"
  br i1 %"$gascmp_1626", label %"$out_of_gas_1627", label %"$have_gas_1628"

"$out_of_gas_1627":                               ; preds = %"$have_gas_1623"
  call void @_out_of_gas()
  br label %"$have_gas_1628"

"$have_gas_1628":                                 ; preds = %"$out_of_gas_1627", %"$have_gas_1623"
  %"$consume_1629" = sub i64 %"$gasrem_1625", 1
  store i64 %"$consume_1629", i64* @_gasrem, align 8
  %"$resopt_53" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_53", metadata !342, metadata !DIExpression()), !dbg !343
  %"$gasrem_1630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1631" = icmp ugt i64 4, %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$have_gas_1628"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$have_gas_1628"
  %"$consume_1634" = sub i64 %"$gasrem_1630", 4
  store i64 %"$consume_1634", i64* @_gasrem, align 8
  %"$execptr_load_1635" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_52_1636" = alloca %Int32, align 8
  %"$$input_52_1637" = load %Int32, %Int32* %"$input_52", align 4
  store %Int32 %"$$input_52_1637", %Int32* %"$to_uint32_$input_52_1636", align 4
  %"$$to_uint32_$input_52_1636_1638" = bitcast %Int32* %"$to_uint32_$input_52_1636" to i8*
  %"$to_uint32_call_1639" = call i8* @_to_uint32(i8* %"$execptr_load_1635", %_TyDescrTy_Typ* @"$TyDescr_Int32_115", i8* %"$$to_uint32_$input_52_1636_1638"), !dbg !344
  %"$to_uint32_1640" = bitcast i8* %"$to_uint32_call_1639" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1640", %TName_Option_Uint32** %"$resopt_53", align 8, !dbg !344
  %"$gasrem_1641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1642" = icmp ugt i64 1, %"$gasrem_1641"
  br i1 %"$gascmp_1642", label %"$out_of_gas_1643", label %"$have_gas_1644"

"$out_of_gas_1643":                               ; preds = %"$have_gas_1633"
  call void @_out_of_gas()
  br label %"$have_gas_1644"

"$have_gas_1644":                                 ; preds = %"$out_of_gas_1643", %"$have_gas_1633"
  %"$consume_1645" = sub i64 %"$gasrem_1641", 1
  store i64 %"$consume_1645", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_54", metadata !345, metadata !DIExpression()), !dbg !346
  %"$gasrem_1646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1647" = icmp ugt i64 2, %"$gasrem_1646"
  br i1 %"$gascmp_1647", label %"$out_of_gas_1648", label %"$have_gas_1649"

"$out_of_gas_1648":                               ; preds = %"$have_gas_1644"
  call void @_out_of_gas()
  br label %"$have_gas_1649"

"$have_gas_1649":                                 ; preds = %"$out_of_gas_1648", %"$have_gas_1644"
  %"$consume_1650" = sub i64 %"$gasrem_1646", 2
  store i64 %"$consume_1650", i64* @_gasrem, align 8
  %"$$resopt_53_1652" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_53", align 8
  %"$$resopt_53_tag_1653" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_53_1652", i32 0, i32 0
  %"$$resopt_53_tag_1654" = load i8, i8* %"$$resopt_53_tag_1653", align 1
  switch i8 %"$$resopt_53_tag_1654", label %"$empty_default_1655" [
    i8 0, label %"$Some_1656"
    i8 1, label %"$None_1666"
  ], !dbg !347

"$Some_1656":                                     ; preds = %"$have_gas_1649"
  %"$$resopt_53_1657" = bitcast %TName_Option_Uint32* %"$$resopt_53_1652" to %CName_Some_Uint32*
  %"$$$resopt_53_79_gep_1658" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_53_1657", i32 0, i32 1
  %"$$$resopt_53_79_load_1659" = load %Uint32, %Uint32* %"$$$resopt_53_79_gep_1658", align 4
  %"$$resopt_53_79" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_53_79_load_1659", %Uint32* %"$$resopt_53_79", align 4
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$Some_1656"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$Some_1656"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %"$false_1665" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1665", %TName_Bool** %"$test_54", align 8, !dbg !348
  br label %"$matchsucc_1651"

"$None_1666":                                     ; preds = %"$have_gas_1649"
  %"$$resopt_53_1667" = bitcast %TName_Option_Uint32* %"$$resopt_53_1652" to %CName_None_Uint32*
  %"$gasrem_1668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1669" = icmp ugt i64 1, %"$gasrem_1668"
  br i1 %"$gascmp_1669", label %"$out_of_gas_1670", label %"$have_gas_1671"

"$out_of_gas_1670":                               ; preds = %"$None_1666"
  call void @_out_of_gas()
  br label %"$have_gas_1671"

"$have_gas_1671":                                 ; preds = %"$out_of_gas_1670", %"$None_1666"
  %"$consume_1672" = sub i64 %"$gasrem_1668", 1
  store i64 %"$consume_1672", i64* @_gasrem, align 8
  %"$$test_51_1673" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  store %TName_Bool* %"$$test_51_1673", %TName_Bool** %"$test_54", align 8, !dbg !351
  br label %"$matchsucc_1651"

"$empty_default_1655":                            ; preds = %"$have_gas_1649"
  br label %"$matchsucc_1651"

"$matchsucc_1651":                                ; preds = %"$have_gas_1671", %"$have_gas_1663", %"$empty_default_1655"
  %"$gasrem_1674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1675" = icmp ugt i64 1, %"$gasrem_1674"
  br i1 %"$gascmp_1675", label %"$out_of_gas_1676", label %"$have_gas_1677"

"$out_of_gas_1676":                               ; preds = %"$matchsucc_1651"
  call void @_out_of_gas()
  br label %"$have_gas_1677"

"$have_gas_1677":                                 ; preds = %"$out_of_gas_1676", %"$matchsucc_1651"
  %"$consume_1678" = sub i64 %"$gasrem_1674", 1
  store i64 %"$consume_1678", i64* @_gasrem, align 8
  %"$input_55" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_55", metadata !353, metadata !DIExpression()), !dbg !355
  %"$gasrem_1679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1680" = icmp ugt i64 1, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$have_gas_1677"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$have_gas_1677"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 1
  store i64 %"$consume_1683", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1684", i32 0, i32 0), i32 11 }, %String* %"$input_55", align 8, !dbg !356
  %"$gasrem_1685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1686" = icmp ugt i64 1, %"$gasrem_1685"
  br i1 %"$gascmp_1686", label %"$out_of_gas_1687", label %"$have_gas_1688"

"$out_of_gas_1687":                               ; preds = %"$have_gas_1682"
  call void @_out_of_gas()
  br label %"$have_gas_1688"

"$have_gas_1688":                                 ; preds = %"$out_of_gas_1687", %"$have_gas_1682"
  %"$consume_1689" = sub i64 %"$gasrem_1685", 1
  store i64 %"$consume_1689", i64* @_gasrem, align 8
  %"$resopt_56" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_56", metadata !357, metadata !DIExpression()), !dbg !358
  %"$gasrem_1690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1691" = icmp ugt i64 4, %"$gasrem_1690"
  br i1 %"$gascmp_1691", label %"$out_of_gas_1692", label %"$have_gas_1693"

"$out_of_gas_1692":                               ; preds = %"$have_gas_1688"
  call void @_out_of_gas()
  br label %"$have_gas_1693"

"$have_gas_1693":                                 ; preds = %"$out_of_gas_1692", %"$have_gas_1688"
  %"$consume_1694" = sub i64 %"$gasrem_1690", 4
  store i64 %"$consume_1694", i64* @_gasrem, align 8
  %"$execptr_load_1695" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_55_1696" = alloca %String, align 8
  %"$$input_55_1697" = load %String, %String* %"$input_55", align 8
  store %String %"$$input_55_1697", %String* %"$to_uint32_$input_55_1696", align 8
  %"$$to_uint32_$input_55_1696_1698" = bitcast %String* %"$to_uint32_$input_55_1696" to i8*
  %"$to_uint32_call_1699" = call i8* @_to_uint32(i8* %"$execptr_load_1695", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint32_$input_55_1696_1698"), !dbg !359
  %"$to_uint32_1700" = bitcast i8* %"$to_uint32_call_1699" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1700", %TName_Option_Uint32** %"$resopt_56", align 8, !dbg !359
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 1, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1693"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1693"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 1
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$test_57" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_57", metadata !360, metadata !DIExpression()), !dbg !361
  %"$gasrem_1706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1707" = icmp ugt i64 2, %"$gasrem_1706"
  br i1 %"$gascmp_1707", label %"$out_of_gas_1708", label %"$have_gas_1709"

"$out_of_gas_1708":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1709"

"$have_gas_1709":                                 ; preds = %"$out_of_gas_1708", %"$have_gas_1704"
  %"$consume_1710" = sub i64 %"$gasrem_1706", 2
  store i64 %"$consume_1710", i64* @_gasrem, align 8
  %"$$resopt_56_1712" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_56", align 8
  %"$$resopt_56_tag_1713" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_56_1712", i32 0, i32 0
  %"$$resopt_56_tag_1714" = load i8, i8* %"$$resopt_56_tag_1713", align 1
  switch i8 %"$$resopt_56_tag_1714", label %"$empty_default_1715" [
    i8 0, label %"$Some_1716"
    i8 1, label %"$None_1726"
  ], !dbg !362

"$Some_1716":                                     ; preds = %"$have_gas_1709"
  %"$$resopt_56_1717" = bitcast %TName_Option_Uint32* %"$$resopt_56_1712" to %CName_Some_Uint32*
  %"$$$resopt_56_80_gep_1718" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_56_1717", i32 0, i32 1
  %"$$$resopt_56_80_load_1719" = load %Uint32, %Uint32* %"$$$resopt_56_80_gep_1718", align 4
  %"$$resopt_56_80" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_56_80_load_1719", %Uint32* %"$$resopt_56_80", align 4
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %"$Some_1716"
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %"$Some_1716"
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  %"$false_1725" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1725", %TName_Bool** %"$test_57", align 8, !dbg !363
  br label %"$matchsucc_1711"

"$None_1726":                                     ; preds = %"$have_gas_1709"
  %"$$resopt_56_1727" = bitcast %TName_Option_Uint32* %"$$resopt_56_1712" to %CName_None_Uint32*
  %"$gasrem_1728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1729" = icmp ugt i64 1, %"$gasrem_1728"
  br i1 %"$gascmp_1729", label %"$out_of_gas_1730", label %"$have_gas_1731"

"$out_of_gas_1730":                               ; preds = %"$None_1726"
  call void @_out_of_gas()
  br label %"$have_gas_1731"

"$have_gas_1731":                                 ; preds = %"$out_of_gas_1730", %"$None_1726"
  %"$consume_1732" = sub i64 %"$gasrem_1728", 1
  store i64 %"$consume_1732", i64* @_gasrem, align 8
  %"$$test_54_1733" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  store %TName_Bool* %"$$test_54_1733", %TName_Bool** %"$test_57", align 8, !dbg !366
  br label %"$matchsucc_1711"

"$empty_default_1715":                            ; preds = %"$have_gas_1709"
  br label %"$matchsucc_1711"

"$matchsucc_1711":                                ; preds = %"$have_gas_1731", %"$have_gas_1723", %"$empty_default_1715"
  %"$gasrem_1734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1735" = icmp ugt i64 1, %"$gasrem_1734"
  br i1 %"$gascmp_1735", label %"$out_of_gas_1736", label %"$have_gas_1737"

"$out_of_gas_1736":                               ; preds = %"$matchsucc_1711"
  call void @_out_of_gas()
  br label %"$have_gas_1737"

"$have_gas_1737":                                 ; preds = %"$out_of_gas_1736", %"$matchsucc_1711"
  %"$consume_1738" = sub i64 %"$gasrem_1734", 1
  store i64 %"$consume_1738", i64* @_gasrem, align 8
  %"$input_58" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$input_58", metadata !368, metadata !DIExpression()), !dbg !370
  %"$gasrem_1739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1740" = icmp ugt i64 1, %"$gasrem_1739"
  br i1 %"$gascmp_1740", label %"$out_of_gas_1741", label %"$have_gas_1742"

"$out_of_gas_1741":                               ; preds = %"$have_gas_1737"
  call void @_out_of_gas()
  br label %"$have_gas_1742"

"$have_gas_1742":                                 ; preds = %"$out_of_gas_1741", %"$have_gas_1737"
  %"$consume_1743" = sub i64 %"$gasrem_1739", 1
  store i64 %"$consume_1743", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$input_58", align 8, !dbg !371
  %"$gasrem_1744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1745" = icmp ugt i64 1, %"$gasrem_1744"
  br i1 %"$gascmp_1745", label %"$out_of_gas_1746", label %"$have_gas_1747"

"$out_of_gas_1746":                               ; preds = %"$have_gas_1742"
  call void @_out_of_gas()
  br label %"$have_gas_1747"

"$have_gas_1747":                                 ; preds = %"$out_of_gas_1746", %"$have_gas_1742"
  %"$consume_1748" = sub i64 %"$gasrem_1744", 1
  store i64 %"$consume_1748", i64* @_gasrem, align 8
  %"$resopt_59" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_59", metadata !372, metadata !DIExpression()), !dbg !373
  %"$gasrem_1749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1750" = icmp ugt i64 16, %"$gasrem_1749"
  br i1 %"$gascmp_1750", label %"$out_of_gas_1751", label %"$have_gas_1752"

"$out_of_gas_1751":                               ; preds = %"$have_gas_1747"
  call void @_out_of_gas()
  br label %"$have_gas_1752"

"$have_gas_1752":                                 ; preds = %"$out_of_gas_1751", %"$have_gas_1747"
  %"$consume_1753" = sub i64 %"$gasrem_1749", 16
  store i64 %"$consume_1753", i64* @_gasrem, align 8
  %"$execptr_load_1754" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_58_1755" = alloca %Int256, align 8
  %"$$input_58_1756" = load %Int256, %Int256* %"$input_58", align 8
  store %Int256 %"$$input_58_1756", %Int256* %"$to_uint256_$input_58_1755", align 8
  %"$$to_uint256_$input_58_1755_1757" = bitcast %Int256* %"$to_uint256_$input_58_1755" to i8*
  %"$to_uint256_call_1758" = call i8* @_to_uint256(i8* %"$execptr_load_1754", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", i8* %"$$to_uint256_$input_58_1755_1757"), !dbg !374
  %"$to_uint256_1759" = bitcast i8* %"$to_uint256_call_1758" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1759", %TName_Option_Uint256** %"$resopt_59", align 8, !dbg !374
  %"$gasrem_1760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1761" = icmp ugt i64 1, %"$gasrem_1760"
  br i1 %"$gascmp_1761", label %"$out_of_gas_1762", label %"$have_gas_1763"

"$out_of_gas_1762":                               ; preds = %"$have_gas_1752"
  call void @_out_of_gas()
  br label %"$have_gas_1763"

"$have_gas_1763":                                 ; preds = %"$out_of_gas_1762", %"$have_gas_1752"
  %"$consume_1764" = sub i64 %"$gasrem_1760", 1
  store i64 %"$consume_1764", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_60", metadata !375, metadata !DIExpression()), !dbg !376
  %"$gasrem_1765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1766" = icmp ugt i64 2, %"$gasrem_1765"
  br i1 %"$gascmp_1766", label %"$out_of_gas_1767", label %"$have_gas_1768"

"$out_of_gas_1767":                               ; preds = %"$have_gas_1763"
  call void @_out_of_gas()
  br label %"$have_gas_1768"

"$have_gas_1768":                                 ; preds = %"$out_of_gas_1767", %"$have_gas_1763"
  %"$consume_1769" = sub i64 %"$gasrem_1765", 2
  store i64 %"$consume_1769", i64* @_gasrem, align 8
  %"$$resopt_59_1771" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_59", align 8
  %"$$resopt_59_tag_1772" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_59_1771", i32 0, i32 0
  %"$$resopt_59_tag_1773" = load i8, i8* %"$$resopt_59_tag_1772", align 1
  switch i8 %"$$resopt_59_tag_1773", label %"$empty_default_1774" [
    i8 0, label %"$Some_1775"
    i8 1, label %"$None_1823"
  ], !dbg !377

"$Some_1775":                                     ; preds = %"$have_gas_1768"
  %"$$resopt_59_1776" = bitcast %TName_Option_Uint256* %"$$resopt_59_1771" to %CName_Some_Uint256*
  %"$res_gep_1777" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_59_1776", i32 0, i32 1
  %"$res_load_1778" = load %Uint256, %Uint256* %"$res_gep_1777", align 8
  %res28 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1778", %Uint256* %res28, align 8
  %"$gasrem_1779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1780" = icmp ugt i64 1, %"$gasrem_1779"
  br i1 %"$gascmp_1780", label %"$out_of_gas_1781", label %"$have_gas_1782"

"$out_of_gas_1781":                               ; preds = %"$Some_1775"
  call void @_out_of_gas()
  br label %"$have_gas_1782"

"$have_gas_1782":                                 ; preds = %"$out_of_gas_1781", %"$Some_1775"
  %"$consume_1783" = sub i64 %"$gasrem_1779", 1
  store i64 %"$consume_1783", i64* @_gasrem, align 8
  %input_29 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_29, metadata !378, metadata !DIExpression()), !dbg !381
  %"$gasrem_1784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1785" = icmp ugt i64 1, %"$gasrem_1784"
  br i1 %"$gascmp_1785", label %"$out_of_gas_1786", label %"$have_gas_1787"

"$out_of_gas_1786":                               ; preds = %"$have_gas_1782"
  call void @_out_of_gas()
  br label %"$have_gas_1787"

"$have_gas_1787":                                 ; preds = %"$out_of_gas_1786", %"$have_gas_1782"
  %"$consume_1788" = sub i64 %"$gasrem_1784", 1
  store i64 %"$consume_1788", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_29, align 8, !dbg !382
  %"$gasrem_1789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1790" = icmp ugt i64 1, %"$gasrem_1789"
  br i1 %"$gascmp_1790", label %"$out_of_gas_1791", label %"$have_gas_1792"

"$out_of_gas_1791":                               ; preds = %"$have_gas_1787"
  call void @_out_of_gas()
  br label %"$have_gas_1792"

"$have_gas_1792":                                 ; preds = %"$out_of_gas_1791", %"$have_gas_1787"
  %"$consume_1793" = sub i64 %"$gasrem_1789", 1
  store i64 %"$consume_1793", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_30, metadata !383, metadata !DIExpression()), !dbg !384
  %"$gasrem_1795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1796" = icmp ugt i64 16, %"$gasrem_1795"
  br i1 %"$gascmp_1796", label %"$out_of_gas_1797", label %"$have_gas_1798"

"$out_of_gas_1797":                               ; preds = %"$have_gas_1792"
  call void @_out_of_gas()
  br label %"$have_gas_1798"

"$have_gas_1798":                                 ; preds = %"$out_of_gas_1797", %"$have_gas_1792"
  %"$consume_1799" = sub i64 %"$gasrem_1795", 16
  store i64 %"$consume_1799", i64* @_gasrem, align 8
  %"$execptr_load_1800" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1801" = alloca %Uint256, align 8
  %"$res_1802" = load %Uint256, %Uint256* %res28, align 8
  store %Uint256 %"$res_1802", %Uint256* %"$eq_res_1801", align 8
  %"$eq_input__1803" = alloca %Uint256, align 8
  %"$input__1804" = load %Uint256, %Uint256* %input_29, align 8
  store %Uint256 %"$input__1804", %Uint256* %"$eq_input__1803", align 8
  %"$eq_call_1805" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1800", %Uint256* %"$eq_res_1801", %Uint256* %"$eq_input__1803"), !dbg !385
  store %TName_Bool* %"$eq_call_1805", %TName_Bool** %test_30, align 8, !dbg !385
  %"$gasrem_1807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1808" = icmp ugt i64 1, %"$gasrem_1807"
  br i1 %"$gascmp_1808", label %"$out_of_gas_1809", label %"$have_gas_1810"

"$out_of_gas_1809":                               ; preds = %"$have_gas_1798"
  call void @_out_of_gas()
  br label %"$have_gas_1810"

"$have_gas_1810":                                 ; preds = %"$out_of_gas_1809", %"$have_gas_1798"
  %"$consume_1811" = sub i64 %"$gasrem_1807", 1
  store i64 %"$consume_1811", i64* @_gasrem, align 8
  %"$BoolUtils.andb_104" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1812" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1813" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1812", 0
  %"$BoolUtils.andb_envptr_1814" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1812", 1
  %"$$test_57_1815" = load %TName_Bool*, %TName_Bool** %"$test_57", align 8
  %"$BoolUtils.andb_call_1816" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1813"(i8* %"$BoolUtils.andb_envptr_1814", %TName_Bool* %"$$test_57_1815"), !dbg !386
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1816", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_104", align 8, !dbg !386
  %"$BoolUtils.andb_105" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_105", metadata !387, metadata !DIExpression()), !dbg !386
  %"$$BoolUtils.andb_104_1817" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_104", align 8
  %"$$BoolUtils.andb_104_fptr_1818" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_104_1817", 0
  %"$$BoolUtils.andb_104_envptr_1819" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_104_1817", 1
  %"$test__1820" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_104_call_1821" = call %TName_Bool* %"$$BoolUtils.andb_104_fptr_1818"(i8* %"$$BoolUtils.andb_104_envptr_1819", %TName_Bool* %"$test__1820"), !dbg !386
  store %TName_Bool* %"$$BoolUtils.andb_104_call_1821", %TName_Bool** %"$BoolUtils.andb_105", align 8, !dbg !386
  %"$$BoolUtils.andb_105_1822" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_105", align 8
  store %TName_Bool* %"$$BoolUtils.andb_105_1822", %TName_Bool** %"$test_60", align 8, !dbg !386
  br label %"$matchsucc_1770"

"$None_1823":                                     ; preds = %"$have_gas_1768"
  %"$$resopt_59_1824" = bitcast %TName_Option_Uint256* %"$$resopt_59_1771" to %CName_None_Uint256*
  %"$gasrem_1825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1826" = icmp ugt i64 1, %"$gasrem_1825"
  br i1 %"$gascmp_1826", label %"$out_of_gas_1827", label %"$have_gas_1828"

"$out_of_gas_1827":                               ; preds = %"$None_1823"
  call void @_out_of_gas()
  br label %"$have_gas_1828"

"$have_gas_1828":                                 ; preds = %"$out_of_gas_1827", %"$None_1823"
  %"$consume_1829" = sub i64 %"$gasrem_1825", 1
  store i64 %"$consume_1829", i64* @_gasrem, align 8
  %"$false_1830" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1830", %TName_Bool** %"$test_60", align 8, !dbg !388
  br label %"$matchsucc_1770"

"$empty_default_1774":                            ; preds = %"$have_gas_1768"
  br label %"$matchsucc_1770"

"$matchsucc_1770":                                ; preds = %"$have_gas_1828", %"$have_gas_1810", %"$empty_default_1774"
  %"$gasrem_1831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1832" = icmp ugt i64 1, %"$gasrem_1831"
  br i1 %"$gascmp_1832", label %"$out_of_gas_1833", label %"$have_gas_1834"

"$out_of_gas_1833":                               ; preds = %"$matchsucc_1770"
  call void @_out_of_gas()
  br label %"$have_gas_1834"

"$have_gas_1834":                                 ; preds = %"$out_of_gas_1833", %"$matchsucc_1770"
  %"$consume_1835" = sub i64 %"$gasrem_1831", 1
  store i64 %"$consume_1835", i64* @_gasrem, align 8
  %"$input_61" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_61", metadata !390, metadata !DIExpression()), !dbg !391
  %"$gasrem_1836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1837" = icmp ugt i64 1, %"$gasrem_1836"
  br i1 %"$gascmp_1837", label %"$out_of_gas_1838", label %"$have_gas_1839"

"$out_of_gas_1838":                               ; preds = %"$have_gas_1834"
  call void @_out_of_gas()
  br label %"$have_gas_1839"

"$have_gas_1839":                                 ; preds = %"$out_of_gas_1838", %"$have_gas_1834"
  %"$consume_1840" = sub i64 %"$gasrem_1836", 1
  store i64 %"$consume_1840", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1841", i32 0, i32 0), i32 77 }, %String* %"$input_61", align 8, !dbg !392
  %"$gasrem_1842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1843" = icmp ugt i64 1, %"$gasrem_1842"
  br i1 %"$gascmp_1843", label %"$out_of_gas_1844", label %"$have_gas_1845"

"$out_of_gas_1844":                               ; preds = %"$have_gas_1839"
  call void @_out_of_gas()
  br label %"$have_gas_1845"

"$have_gas_1845":                                 ; preds = %"$out_of_gas_1844", %"$have_gas_1839"
  %"$consume_1846" = sub i64 %"$gasrem_1842", 1
  store i64 %"$consume_1846", i64* @_gasrem, align 8
  %"$resopt_62" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_62", metadata !393, metadata !DIExpression()), !dbg !394
  %"$gasrem_1847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1848" = icmp ugt i64 16, %"$gasrem_1847"
  br i1 %"$gascmp_1848", label %"$out_of_gas_1849", label %"$have_gas_1850"

"$out_of_gas_1849":                               ; preds = %"$have_gas_1845"
  call void @_out_of_gas()
  br label %"$have_gas_1850"

"$have_gas_1850":                                 ; preds = %"$out_of_gas_1849", %"$have_gas_1845"
  %"$consume_1851" = sub i64 %"$gasrem_1847", 16
  store i64 %"$consume_1851", i64* @_gasrem, align 8
  %"$execptr_load_1852" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_61_1853" = alloca %String, align 8
  %"$$input_61_1854" = load %String, %String* %"$input_61", align 8
  store %String %"$$input_61_1854", %String* %"$to_uint256_$input_61_1853", align 8
  %"$$to_uint256_$input_61_1853_1855" = bitcast %String* %"$to_uint256_$input_61_1853" to i8*
  %"$to_uint256_call_1856" = call i8* @_to_uint256(i8* %"$execptr_load_1852", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint256_$input_61_1853_1855"), !dbg !395
  %"$to_uint256_1857" = bitcast i8* %"$to_uint256_call_1856" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1857", %TName_Option_Uint256** %"$resopt_62", align 8, !dbg !395
  %"$gasrem_1858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1859" = icmp ugt i64 1, %"$gasrem_1858"
  br i1 %"$gascmp_1859", label %"$out_of_gas_1860", label %"$have_gas_1861"

"$out_of_gas_1860":                               ; preds = %"$have_gas_1850"
  call void @_out_of_gas()
  br label %"$have_gas_1861"

"$have_gas_1861":                                 ; preds = %"$out_of_gas_1860", %"$have_gas_1850"
  %"$consume_1862" = sub i64 %"$gasrem_1858", 1
  store i64 %"$consume_1862", i64* @_gasrem, align 8
  %"$test_63" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_63", metadata !396, metadata !DIExpression()), !dbg !397
  %"$gasrem_1863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1864" = icmp ugt i64 2, %"$gasrem_1863"
  br i1 %"$gascmp_1864", label %"$out_of_gas_1865", label %"$have_gas_1866"

"$out_of_gas_1865":                               ; preds = %"$have_gas_1861"
  call void @_out_of_gas()
  br label %"$have_gas_1866"

"$have_gas_1866":                                 ; preds = %"$out_of_gas_1865", %"$have_gas_1861"
  %"$consume_1867" = sub i64 %"$gasrem_1863", 2
  store i64 %"$consume_1867", i64* @_gasrem, align 8
  %"$$resopt_62_1869" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_62", align 8
  %"$$resopt_62_tag_1870" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_62_1869", i32 0, i32 0
  %"$$resopt_62_tag_1871" = load i8, i8* %"$$resopt_62_tag_1870", align 1
  switch i8 %"$$resopt_62_tag_1871", label %"$empty_default_1872" [
    i8 0, label %"$Some_1873"
    i8 1, label %"$None_1921"
  ], !dbg !398

"$Some_1873":                                     ; preds = %"$have_gas_1866"
  %"$$resopt_62_1874" = bitcast %TName_Option_Uint256* %"$$resopt_62_1869" to %CName_Some_Uint256*
  %"$res_gep_1875" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_62_1874", i32 0, i32 1
  %"$res_load_1876" = load %Uint256, %Uint256* %"$res_gep_1875", align 8
  %res31 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1876", %Uint256* %res31, align 8
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$Some_1873"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$Some_1873"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %input_32 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_32, metadata !399, metadata !DIExpression()), !dbg !402
  %"$gasrem_1882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1883" = icmp ugt i64 1, %"$gasrem_1882"
  br i1 %"$gascmp_1883", label %"$out_of_gas_1884", label %"$have_gas_1885"

"$out_of_gas_1884":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1885"

"$have_gas_1885":                                 ; preds = %"$out_of_gas_1884", %"$have_gas_1880"
  %"$consume_1886" = sub i64 %"$gasrem_1882", 1
  store i64 %"$consume_1886", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_32, align 8, !dbg !403
  %"$gasrem_1887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1888" = icmp ugt i64 1, %"$gasrem_1887"
  br i1 %"$gascmp_1888", label %"$out_of_gas_1889", label %"$have_gas_1890"

"$out_of_gas_1889":                               ; preds = %"$have_gas_1885"
  call void @_out_of_gas()
  br label %"$have_gas_1890"

"$have_gas_1890":                                 ; preds = %"$out_of_gas_1889", %"$have_gas_1885"
  %"$consume_1891" = sub i64 %"$gasrem_1887", 1
  store i64 %"$consume_1891", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_33, metadata !404, metadata !DIExpression()), !dbg !405
  %"$gasrem_1893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1894" = icmp ugt i64 16, %"$gasrem_1893"
  br i1 %"$gascmp_1894", label %"$out_of_gas_1895", label %"$have_gas_1896"

"$out_of_gas_1895":                               ; preds = %"$have_gas_1890"
  call void @_out_of_gas()
  br label %"$have_gas_1896"

"$have_gas_1896":                                 ; preds = %"$out_of_gas_1895", %"$have_gas_1890"
  %"$consume_1897" = sub i64 %"$gasrem_1893", 16
  store i64 %"$consume_1897", i64* @_gasrem, align 8
  %"$execptr_load_1898" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1899" = alloca %Uint256, align 8
  %"$res_1900" = load %Uint256, %Uint256* %res31, align 8
  store %Uint256 %"$res_1900", %Uint256* %"$eq_res_1899", align 8
  %"$eq_input__1901" = alloca %Uint256, align 8
  %"$input__1902" = load %Uint256, %Uint256* %input_32, align 8
  store %Uint256 %"$input__1902", %Uint256* %"$eq_input__1901", align 8
  %"$eq_call_1903" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1898", %Uint256* %"$eq_res_1899", %Uint256* %"$eq_input__1901"), !dbg !406
  store %TName_Bool* %"$eq_call_1903", %TName_Bool** %test_33, align 8, !dbg !406
  %"$gasrem_1905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1906" = icmp ugt i64 1, %"$gasrem_1905"
  br i1 %"$gascmp_1906", label %"$out_of_gas_1907", label %"$have_gas_1908"

"$out_of_gas_1907":                               ; preds = %"$have_gas_1896"
  call void @_out_of_gas()
  br label %"$have_gas_1908"

"$have_gas_1908":                                 ; preds = %"$out_of_gas_1907", %"$have_gas_1896"
  %"$consume_1909" = sub i64 %"$gasrem_1905", 1
  store i64 %"$consume_1909", i64* @_gasrem, align 8
  %"$BoolUtils.andb_106" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1910" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1911" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1910", 0
  %"$BoolUtils.andb_envptr_1912" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1910", 1
  %"$$test_60_1913" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1914" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1911"(i8* %"$BoolUtils.andb_envptr_1912", %TName_Bool* %"$$test_60_1913"), !dbg !407
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1914", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_106", align 8, !dbg !407
  %"$BoolUtils.andb_107" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_107", metadata !408, metadata !DIExpression()), !dbg !407
  %"$$BoolUtils.andb_106_1915" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_106", align 8
  %"$$BoolUtils.andb_106_fptr_1916" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_106_1915", 0
  %"$$BoolUtils.andb_106_envptr_1917" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_106_1915", 1
  %"$test__1918" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_106_call_1919" = call %TName_Bool* %"$$BoolUtils.andb_106_fptr_1916"(i8* %"$$BoolUtils.andb_106_envptr_1917", %TName_Bool* %"$test__1918"), !dbg !407
  store %TName_Bool* %"$$BoolUtils.andb_106_call_1919", %TName_Bool** %"$BoolUtils.andb_107", align 8, !dbg !407
  %"$$BoolUtils.andb_107_1920" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_107", align 8
  store %TName_Bool* %"$$BoolUtils.andb_107_1920", %TName_Bool** %"$test_63", align 8, !dbg !407
  br label %"$matchsucc_1868"

"$None_1921":                                     ; preds = %"$have_gas_1866"
  %"$$resopt_62_1922" = bitcast %TName_Option_Uint256* %"$$resopt_62_1869" to %CName_None_Uint256*
  %"$gasrem_1923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1924" = icmp ugt i64 1, %"$gasrem_1923"
  br i1 %"$gascmp_1924", label %"$out_of_gas_1925", label %"$have_gas_1926"

"$out_of_gas_1925":                               ; preds = %"$None_1921"
  call void @_out_of_gas()
  br label %"$have_gas_1926"

"$have_gas_1926":                                 ; preds = %"$out_of_gas_1925", %"$None_1921"
  %"$consume_1927" = sub i64 %"$gasrem_1923", 1
  store i64 %"$consume_1927", i64* @_gasrem, align 8
  %"$false_1928" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1928", %TName_Bool** %"$test_63", align 8, !dbg !409
  br label %"$matchsucc_1868"

"$empty_default_1872":                            ; preds = %"$have_gas_1866"
  br label %"$matchsucc_1868"

"$matchsucc_1868":                                ; preds = %"$have_gas_1926", %"$have_gas_1908", %"$empty_default_1872"
  %"$gasrem_1929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1930" = icmp ugt i64 1, %"$gasrem_1929"
  br i1 %"$gascmp_1930", label %"$out_of_gas_1931", label %"$have_gas_1932"

"$out_of_gas_1931":                               ; preds = %"$matchsucc_1868"
  call void @_out_of_gas()
  br label %"$have_gas_1932"

"$have_gas_1932":                                 ; preds = %"$out_of_gas_1931", %"$matchsucc_1868"
  %"$consume_1933" = sub i64 %"$gasrem_1929", 1
  store i64 %"$consume_1933", i64* @_gasrem, align 8
  %"$input_64" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$input_64", metadata !411, metadata !DIExpression()), !dbg !412
  %"$gasrem_1934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1935" = icmp ugt i64 1, %"$gasrem_1934"
  br i1 %"$gascmp_1935", label %"$out_of_gas_1936", label %"$have_gas_1937"

"$out_of_gas_1936":                               ; preds = %"$have_gas_1932"
  call void @_out_of_gas()
  br label %"$have_gas_1937"

"$have_gas_1937":                                 ; preds = %"$out_of_gas_1936", %"$have_gas_1932"
  %"$consume_1938" = sub i64 %"$gasrem_1934", 1
  store i64 %"$consume_1938", i64* @_gasrem, align 8
  store %Int256 { i256 -282366920938463463374607431768211456 }, %Int256* %"$input_64", align 8, !dbg !413
  %"$gasrem_1939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1940" = icmp ugt i64 1, %"$gasrem_1939"
  br i1 %"$gascmp_1940", label %"$out_of_gas_1941", label %"$have_gas_1942"

"$out_of_gas_1941":                               ; preds = %"$have_gas_1937"
  call void @_out_of_gas()
  br label %"$have_gas_1942"

"$have_gas_1942":                                 ; preds = %"$out_of_gas_1941", %"$have_gas_1937"
  %"$consume_1943" = sub i64 %"$gasrem_1939", 1
  store i64 %"$consume_1943", i64* @_gasrem, align 8
  %"$resopt_65" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_65", metadata !414, metadata !DIExpression()), !dbg !415
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 16, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$have_gas_1942"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$have_gas_1942"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 16
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$execptr_load_1949" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_64_1950" = alloca %Int256, align 8
  %"$$input_64_1951" = load %Int256, %Int256* %"$input_64", align 8
  store %Int256 %"$$input_64_1951", %Int256* %"$to_uint256_$input_64_1950", align 8
  %"$$to_uint256_$input_64_1950_1952" = bitcast %Int256* %"$to_uint256_$input_64_1950" to i8*
  %"$to_uint256_call_1953" = call i8* @_to_uint256(i8* %"$execptr_load_1949", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", i8* %"$$to_uint256_$input_64_1950_1952"), !dbg !416
  %"$to_uint256_1954" = bitcast i8* %"$to_uint256_call_1953" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1954", %TName_Option_Uint256** %"$resopt_65", align 8, !dbg !416
  %"$gasrem_1955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1956" = icmp ugt i64 1, %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1947"
  %"$consume_1959" = sub i64 %"$gasrem_1955", 1
  store i64 %"$consume_1959", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_66", metadata !417, metadata !DIExpression()), !dbg !418
  %"$gasrem_1960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1961" = icmp ugt i64 2, %"$gasrem_1960"
  br i1 %"$gascmp_1961", label %"$out_of_gas_1962", label %"$have_gas_1963"

"$out_of_gas_1962":                               ; preds = %"$have_gas_1958"
  call void @_out_of_gas()
  br label %"$have_gas_1963"

"$have_gas_1963":                                 ; preds = %"$out_of_gas_1962", %"$have_gas_1958"
  %"$consume_1964" = sub i64 %"$gasrem_1960", 2
  store i64 %"$consume_1964", i64* @_gasrem, align 8
  %"$$resopt_65_1966" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_65", align 8
  %"$$resopt_65_tag_1967" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_65_1966", i32 0, i32 0
  %"$$resopt_65_tag_1968" = load i8, i8* %"$$resopt_65_tag_1967", align 1
  switch i8 %"$$resopt_65_tag_1968", label %"$empty_default_1969" [
    i8 0, label %"$Some_1970"
    i8 1, label %"$None_1980"
  ], !dbg !419

"$Some_1970":                                     ; preds = %"$have_gas_1963"
  %"$$resopt_65_1971" = bitcast %TName_Option_Uint256* %"$$resopt_65_1966" to %CName_Some_Uint256*
  %"$$$resopt_65_81_gep_1972" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_65_1971", i32 0, i32 1
  %"$$$resopt_65_81_load_1973" = load %Uint256, %Uint256* %"$$$resopt_65_81_gep_1972", align 8
  %"$$resopt_65_81" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_65_81_load_1973", %Uint256* %"$$resopt_65_81", align 8
  %"$gasrem_1974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1975" = icmp ugt i64 1, %"$gasrem_1974"
  br i1 %"$gascmp_1975", label %"$out_of_gas_1976", label %"$have_gas_1977"

"$out_of_gas_1976":                               ; preds = %"$Some_1970"
  call void @_out_of_gas()
  br label %"$have_gas_1977"

"$have_gas_1977":                                 ; preds = %"$out_of_gas_1976", %"$Some_1970"
  %"$consume_1978" = sub i64 %"$gasrem_1974", 1
  store i64 %"$consume_1978", i64* @_gasrem, align 8
  %"$false_1979" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1979", %TName_Bool** %"$test_66", align 8, !dbg !420
  br label %"$matchsucc_1965"

"$None_1980":                                     ; preds = %"$have_gas_1963"
  %"$$resopt_65_1981" = bitcast %TName_Option_Uint256* %"$$resopt_65_1966" to %CName_None_Uint256*
  %"$gasrem_1982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1983" = icmp ugt i64 1, %"$gasrem_1982"
  br i1 %"$gascmp_1983", label %"$out_of_gas_1984", label %"$have_gas_1985"

"$out_of_gas_1984":                               ; preds = %"$None_1980"
  call void @_out_of_gas()
  br label %"$have_gas_1985"

"$have_gas_1985":                                 ; preds = %"$out_of_gas_1984", %"$None_1980"
  %"$consume_1986" = sub i64 %"$gasrem_1982", 1
  store i64 %"$consume_1986", i64* @_gasrem, align 8
  %"$$test_63_1987" = load %TName_Bool*, %TName_Bool** %"$test_63", align 8
  store %TName_Bool* %"$$test_63_1987", %TName_Bool** %"$test_66", align 8, !dbg !423
  br label %"$matchsucc_1965"

"$empty_default_1969":                            ; preds = %"$have_gas_1963"
  br label %"$matchsucc_1965"

"$matchsucc_1965":                                ; preds = %"$have_gas_1985", %"$have_gas_1977", %"$empty_default_1969"
  %"$gasrem_1988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1989" = icmp ugt i64 1, %"$gasrem_1988"
  br i1 %"$gascmp_1989", label %"$out_of_gas_1990", label %"$have_gas_1991"

"$out_of_gas_1990":                               ; preds = %"$matchsucc_1965"
  call void @_out_of_gas()
  br label %"$have_gas_1991"

"$have_gas_1991":                                 ; preds = %"$out_of_gas_1990", %"$matchsucc_1965"
  %"$consume_1992" = sub i64 %"$gasrem_1988", 1
  store i64 %"$consume_1992", i64* @_gasrem, align 8
  %"$input_67" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_67", metadata !425, metadata !DIExpression()), !dbg !426
  %"$gasrem_1993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1994" = icmp ugt i64 1, %"$gasrem_1993"
  br i1 %"$gascmp_1994", label %"$out_of_gas_1995", label %"$have_gas_1996"

"$out_of_gas_1995":                               ; preds = %"$have_gas_1991"
  call void @_out_of_gas()
  br label %"$have_gas_1996"

"$have_gas_1996":                                 ; preds = %"$out_of_gas_1995", %"$have_gas_1991"
  %"$consume_1997" = sub i64 %"$gasrem_1993", 1
  store i64 %"$consume_1997", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"$stringlit_1998", i32 0, i32 0), i32 37 }, %String* %"$input_67", align 8, !dbg !427
  %"$gasrem_1999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2000" = icmp ugt i64 1, %"$gasrem_1999"
  br i1 %"$gascmp_2000", label %"$out_of_gas_2001", label %"$have_gas_2002"

"$out_of_gas_2001":                               ; preds = %"$have_gas_1996"
  call void @_out_of_gas()
  br label %"$have_gas_2002"

"$have_gas_2002":                                 ; preds = %"$out_of_gas_2001", %"$have_gas_1996"
  %"$consume_2003" = sub i64 %"$gasrem_1999", 1
  store i64 %"$consume_2003", i64* @_gasrem, align 8
  %"$resopt_68" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_68", metadata !428, metadata !DIExpression()), !dbg !429
  %"$gasrem_2004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2005" = icmp ugt i64 16, %"$gasrem_2004"
  br i1 %"$gascmp_2005", label %"$out_of_gas_2006", label %"$have_gas_2007"

"$out_of_gas_2006":                               ; preds = %"$have_gas_2002"
  call void @_out_of_gas()
  br label %"$have_gas_2007"

"$have_gas_2007":                                 ; preds = %"$out_of_gas_2006", %"$have_gas_2002"
  %"$consume_2008" = sub i64 %"$gasrem_2004", 16
  store i64 %"$consume_2008", i64* @_gasrem, align 8
  %"$execptr_load_2009" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_67_2010" = alloca %String, align 8
  %"$$input_67_2011" = load %String, %String* %"$input_67", align 8
  store %String %"$$input_67_2011", %String* %"$to_uint256_$input_67_2010", align 8
  %"$$to_uint256_$input_67_2010_2012" = bitcast %String* %"$to_uint256_$input_67_2010" to i8*
  %"$to_uint256_call_2013" = call i8* @_to_uint256(i8* %"$execptr_load_2009", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint256_$input_67_2010_2012"), !dbg !430
  %"$to_uint256_2014" = bitcast i8* %"$to_uint256_call_2013" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_2014", %TName_Option_Uint256** %"$resopt_68", align 8, !dbg !430
  %"$gasrem_2015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2016" = icmp ugt i64 1, %"$gasrem_2015"
  br i1 %"$gascmp_2016", label %"$out_of_gas_2017", label %"$have_gas_2018"

"$out_of_gas_2017":                               ; preds = %"$have_gas_2007"
  call void @_out_of_gas()
  br label %"$have_gas_2018"

"$have_gas_2018":                                 ; preds = %"$out_of_gas_2017", %"$have_gas_2007"
  %"$consume_2019" = sub i64 %"$gasrem_2015", 1
  store i64 %"$consume_2019", i64* @_gasrem, align 8
  %"$test_69" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_69", metadata !431, metadata !DIExpression()), !dbg !432
  %"$gasrem_2020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2021" = icmp ugt i64 2, %"$gasrem_2020"
  br i1 %"$gascmp_2021", label %"$out_of_gas_2022", label %"$have_gas_2023"

"$out_of_gas_2022":                               ; preds = %"$have_gas_2018"
  call void @_out_of_gas()
  br label %"$have_gas_2023"

"$have_gas_2023":                                 ; preds = %"$out_of_gas_2022", %"$have_gas_2018"
  %"$consume_2024" = sub i64 %"$gasrem_2020", 2
  store i64 %"$consume_2024", i64* @_gasrem, align 8
  %"$$resopt_68_2026" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_68", align 8
  %"$$resopt_68_tag_2027" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_68_2026", i32 0, i32 0
  %"$$resopt_68_tag_2028" = load i8, i8* %"$$resopt_68_tag_2027", align 1
  switch i8 %"$$resopt_68_tag_2028", label %"$empty_default_2029" [
    i8 0, label %"$Some_2030"
    i8 1, label %"$None_2040"
  ], !dbg !433

"$Some_2030":                                     ; preds = %"$have_gas_2023"
  %"$$resopt_68_2031" = bitcast %TName_Option_Uint256* %"$$resopt_68_2026" to %CName_Some_Uint256*
  %"$$$resopt_68_82_gep_2032" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_68_2031", i32 0, i32 1
  %"$$$resopt_68_82_load_2033" = load %Uint256, %Uint256* %"$$$resopt_68_82_gep_2032", align 8
  %"$$resopt_68_82" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_68_82_load_2033", %Uint256* %"$$resopt_68_82", align 8
  %"$gasrem_2034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2035" = icmp ugt i64 1, %"$gasrem_2034"
  br i1 %"$gascmp_2035", label %"$out_of_gas_2036", label %"$have_gas_2037"

"$out_of_gas_2036":                               ; preds = %"$Some_2030"
  call void @_out_of_gas()
  br label %"$have_gas_2037"

"$have_gas_2037":                                 ; preds = %"$out_of_gas_2036", %"$Some_2030"
  %"$consume_2038" = sub i64 %"$gasrem_2034", 1
  store i64 %"$consume_2038", i64* @_gasrem, align 8
  %"$false_2039" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2039", %TName_Bool** %"$test_69", align 8, !dbg !434
  br label %"$matchsucc_2025"

"$None_2040":                                     ; preds = %"$have_gas_2023"
  %"$$resopt_68_2041" = bitcast %TName_Option_Uint256* %"$$resopt_68_2026" to %CName_None_Uint256*
  %"$gasrem_2042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2043" = icmp ugt i64 1, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$None_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$None_2040"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 1
  store i64 %"$consume_2046", i64* @_gasrem, align 8
  %"$$test_66_2047" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  store %TName_Bool* %"$$test_66_2047", %TName_Bool** %"$test_69", align 8, !dbg !437
  br label %"$matchsucc_2025"

"$empty_default_2029":                            ; preds = %"$have_gas_2023"
  br label %"$matchsucc_2025"

"$matchsucc_2025":                                ; preds = %"$have_gas_2045", %"$have_gas_2037", %"$empty_default_2029"
  %"$gasrem_2048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2049" = icmp ugt i64 1, %"$gasrem_2048"
  br i1 %"$gascmp_2049", label %"$out_of_gas_2050", label %"$have_gas_2051"

"$out_of_gas_2050":                               ; preds = %"$matchsucc_2025"
  call void @_out_of_gas()
  br label %"$have_gas_2051"

"$have_gas_2051":                                 ; preds = %"$out_of_gas_2050", %"$matchsucc_2025"
  %"$consume_2052" = sub i64 %"$gasrem_2048", 1
  store i64 %"$consume_2052", i64* @_gasrem, align 8
  %"$input_70" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_70", metadata !439, metadata !DIExpression()), !dbg !440
  %"$gasrem_2053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2054" = icmp ugt i64 1, %"$gasrem_2053"
  br i1 %"$gascmp_2054", label %"$out_of_gas_2055", label %"$have_gas_2056"

"$out_of_gas_2055":                               ; preds = %"$have_gas_2051"
  call void @_out_of_gas()
  br label %"$have_gas_2056"

"$have_gas_2056":                                 ; preds = %"$out_of_gas_2055", %"$have_gas_2051"
  %"$consume_2057" = sub i64 %"$gasrem_2053", 1
  store i64 %"$consume_2057", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_2058", i32 0, i32 0), i32 4 }, %String* %"$input_70", align 8, !dbg !441
  %"$gasrem_2059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2060" = icmp ugt i64 1, %"$gasrem_2059"
  br i1 %"$gascmp_2060", label %"$out_of_gas_2061", label %"$have_gas_2062"

"$out_of_gas_2061":                               ; preds = %"$have_gas_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2062"

"$have_gas_2062":                                 ; preds = %"$out_of_gas_2061", %"$have_gas_2056"
  %"$consume_2063" = sub i64 %"$gasrem_2059", 1
  store i64 %"$consume_2063", i64* @_gasrem, align 8
  %"$resopt_71" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_71", metadata !442, metadata !DIExpression()), !dbg !443
  %"$gasrem_2064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2065" = icmp ugt i64 4, %"$gasrem_2064"
  br i1 %"$gascmp_2065", label %"$out_of_gas_2066", label %"$have_gas_2067"

"$out_of_gas_2066":                               ; preds = %"$have_gas_2062"
  call void @_out_of_gas()
  br label %"$have_gas_2067"

"$have_gas_2067":                                 ; preds = %"$out_of_gas_2066", %"$have_gas_2062"
  %"$consume_2068" = sub i64 %"$gasrem_2064", 4
  store i64 %"$consume_2068", i64* @_gasrem, align 8
  %"$execptr_load_2069" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_70_2070" = alloca %String, align 8
  %"$$input_70_2071" = load %String, %String* %"$input_70", align 8
  store %String %"$$input_70_2071", %String* %"$to_uint64_$input_70_2070", align 8
  %"$$to_uint64_$input_70_2070_2072" = bitcast %String* %"$to_uint64_$input_70_2070" to i8*
  %"$to_uint64_call_2073" = call i8* @_to_uint64(i8* %"$execptr_load_2069", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint64_$input_70_2070_2072"), !dbg !444
  %"$to_uint64_2074" = bitcast i8* %"$to_uint64_call_2073" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_2074", %TName_Option_Uint64** %"$resopt_71", align 8, !dbg !444
  %"$gasrem_2075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2076" = icmp ugt i64 1, %"$gasrem_2075"
  br i1 %"$gascmp_2076", label %"$out_of_gas_2077", label %"$have_gas_2078"

"$out_of_gas_2077":                               ; preds = %"$have_gas_2067"
  call void @_out_of_gas()
  br label %"$have_gas_2078"

"$have_gas_2078":                                 ; preds = %"$out_of_gas_2077", %"$have_gas_2067"
  %"$consume_2079" = sub i64 %"$gasrem_2075", 1
  store i64 %"$consume_2079", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_72", metadata !445, metadata !DIExpression()), !dbg !446
  %"$gasrem_2080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2081" = icmp ugt i64 2, %"$gasrem_2080"
  br i1 %"$gascmp_2081", label %"$out_of_gas_2082", label %"$have_gas_2083"

"$out_of_gas_2082":                               ; preds = %"$have_gas_2078"
  call void @_out_of_gas()
  br label %"$have_gas_2083"

"$have_gas_2083":                                 ; preds = %"$out_of_gas_2082", %"$have_gas_2078"
  %"$consume_2084" = sub i64 %"$gasrem_2080", 2
  store i64 %"$consume_2084", i64* @_gasrem, align 8
  %"$$resopt_71_2086" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_71", align 8
  %"$$resopt_71_tag_2087" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_71_2086", i32 0, i32 0
  %"$$resopt_71_tag_2088" = load i8, i8* %"$$resopt_71_tag_2087", align 1
  switch i8 %"$$resopt_71_tag_2088", label %"$empty_default_2089" [
    i8 0, label %"$Some_2090"
    i8 1, label %"$None_2100"
  ], !dbg !447

"$Some_2090":                                     ; preds = %"$have_gas_2083"
  %"$$resopt_71_2091" = bitcast %TName_Option_Uint64* %"$$resopt_71_2086" to %CName_Some_Uint64*
  %"$$$resopt_71_83_gep_2092" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_71_2091", i32 0, i32 1
  %"$$$resopt_71_83_load_2093" = load %Uint64, %Uint64* %"$$$resopt_71_83_gep_2092", align 8
  %"$$resopt_71_83" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_71_83_load_2093", %Uint64* %"$$resopt_71_83", align 8
  %"$gasrem_2094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2095" = icmp ugt i64 1, %"$gasrem_2094"
  br i1 %"$gascmp_2095", label %"$out_of_gas_2096", label %"$have_gas_2097"

"$out_of_gas_2096":                               ; preds = %"$Some_2090"
  call void @_out_of_gas()
  br label %"$have_gas_2097"

"$have_gas_2097":                                 ; preds = %"$out_of_gas_2096", %"$Some_2090"
  %"$consume_2098" = sub i64 %"$gasrem_2094", 1
  store i64 %"$consume_2098", i64* @_gasrem, align 8
  %"$false_2099" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2099", %TName_Bool** %"$test_72", align 8, !dbg !448
  br label %"$matchsucc_2085"

"$None_2100":                                     ; preds = %"$have_gas_2083"
  %"$$resopt_71_2101" = bitcast %TName_Option_Uint64* %"$$resopt_71_2086" to %CName_None_Uint64*
  %"$gasrem_2102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2103" = icmp ugt i64 1, %"$gasrem_2102"
  br i1 %"$gascmp_2103", label %"$out_of_gas_2104", label %"$have_gas_2105"

"$out_of_gas_2104":                               ; preds = %"$None_2100"
  call void @_out_of_gas()
  br label %"$have_gas_2105"

"$have_gas_2105":                                 ; preds = %"$out_of_gas_2104", %"$None_2100"
  %"$consume_2106" = sub i64 %"$gasrem_2102", 1
  store i64 %"$consume_2106", i64* @_gasrem, align 8
  %"$$test_69_2107" = load %TName_Bool*, %TName_Bool** %"$test_69", align 8
  store %TName_Bool* %"$$test_69_2107", %TName_Bool** %"$test_72", align 8, !dbg !451
  br label %"$matchsucc_2085"

"$empty_default_2089":                            ; preds = %"$have_gas_2083"
  br label %"$matchsucc_2085"

"$matchsucc_2085":                                ; preds = %"$have_gas_2105", %"$have_gas_2097", %"$empty_default_2089"
  %"$gasrem_2108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2109" = icmp ugt i64 1, %"$gasrem_2108"
  br i1 %"$gascmp_2109", label %"$out_of_gas_2110", label %"$have_gas_2111"

"$out_of_gas_2110":                               ; preds = %"$matchsucc_2085"
  call void @_out_of_gas()
  br label %"$have_gas_2111"

"$have_gas_2111":                                 ; preds = %"$out_of_gas_2110", %"$matchsucc_2085"
  %"$consume_2112" = sub i64 %"$gasrem_2108", 1
  store i64 %"$consume_2112", i64* @_gasrem, align 8
  %"$$test_72_2113" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  store %TName_Bool* %"$$test_72_2113", %TName_Bool** %"$expr_112", align 8, !dbg !453
  %"$$expr_112_2114" = load %TName_Bool*, %TName_Bool** %"$expr_112", align 8
  ret %TName_Bool* %"$$expr_112_2114"
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
  %"$exprval_2115" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2116" = bitcast %TName_Bool* %"$exprval_2115" to i8*
  %"$execptr_load_2117" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2117", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_151", i8* %"$memvoidcast_2116")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_uint.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_110", linkageName: "$fundef_110", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "$retval_111", scope: !3, file: !4, line: 8, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 8, column: 5, scope: !3)
!13 = !DILocation(line: 9, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !15, file: !4, line: 9, column: 7)
!15 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!16 = !DILocation(line: 10, column: 16, scope: !17)
!17 = distinct !DILexicalBlock(scope: !15, file: !4, line: 10, column: 7)
!18 = distinct !DISubprogram(name: "$fundef_108", linkageName: "$fundef_108", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!19 = !DILocation(line: 8, column: 5, scope: !18)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 7, column: 3, scope: !20)
!24 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DILocalVariable(name: "$expr_112", scope: !24, file: !2, line: 1, type: !10)
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
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint32)", baseType: !38, size: 8, align: 8, dwarfAddressSpace: 0)
!38 = !DIBasicType(name: "Option (Uint32)", size: 8)
!39 = !DILocation(line: 5, column: 5, scope: !24)
!40 = !DILocation(line: 5, column: 14, scope: !24)
!41 = !DILocalVariable(name: "$test_6", scope: !24, file: !2, line: 6, type: !10)
!42 = !DILocation(line: 6, column: 5, scope: !24)
!43 = !DILocation(line: 7, column: 3, scope: !24)
!44 = !DILocalVariable(name: "input_", scope: !45, file: !2, line: 9, type: !33)
!45 = distinct !DILexicalBlock(scope: !46, file: !2, line: 8, column: 5)
!46 = distinct !DILexicalBlock(scope: !24, file: !2, line: 7, column: 3)
!47 = !DILocation(line: 9, column: 9, scope: !45)
!48 = !DILocation(line: 9, column: 18, scope: !45)
!49 = !DILocalVariable(name: "test_", scope: !45, file: !2, line: 10, type: !10)
!50 = !DILocation(line: 10, column: 9, scope: !45)
!51 = !DILocation(line: 10, column: 17, scope: !45)
!52 = !DILocation(line: 11, column: 5, scope: !45)
!53 = !DILocalVariable(name: "$BoolUtils.andb_85", scope: !45, file: !2, line: 11, type: !10)
!54 = !DILocation(line: 12, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !2, line: 12, column: 5)
!56 = !DILocalVariable(name: "$input_7", scope: !24, file: !2, line: 16, type: !57)
!57 = !DIBasicType(name: "Uint128", size: 16)
!58 = !DILocation(line: 16, column: 5, scope: !24)
!59 = !DILocation(line: 16, column: 13, scope: !24)
!60 = !DILocalVariable(name: "$resopt_8", scope: !24, file: !2, line: 17, type: !37)
!61 = !DILocation(line: 17, column: 5, scope: !24)
!62 = !DILocation(line: 17, column: 14, scope: !24)
!63 = !DILocalVariable(name: "$test_9", scope: !24, file: !2, line: 18, type: !10)
!64 = !DILocation(line: 18, column: 5, scope: !24)
!65 = !DILocation(line: 19, column: 3, scope: !24)
!66 = !DILocalVariable(name: "input_", scope: !67, file: !2, line: 21, type: !33)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 20, column: 5)
!68 = distinct !DILexicalBlock(scope: !24, file: !2, line: 19, column: 3)
!69 = !DILocation(line: 21, column: 9, scope: !67)
!70 = !DILocation(line: 21, column: 18, scope: !67)
!71 = !DILocalVariable(name: "test_", scope: !67, file: !2, line: 22, type: !10)
!72 = !DILocation(line: 22, column: 9, scope: !67)
!73 = !DILocation(line: 22, column: 17, scope: !67)
!74 = !DILocation(line: 23, column: 5, scope: !67)
!75 = !DILocalVariable(name: "$BoolUtils.andb_87", scope: !67, file: !2, line: 23, type: !10)
!76 = !DILocation(line: 24, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 5)
!78 = !DILocalVariable(name: "$input_10", scope: !24, file: !2, line: 28, type: !79)
!79 = !DIBasicType(name: "Uint64", size: 8)
!80 = !DILocation(line: 28, column: 5, scope: !24)
!81 = !DILocation(line: 28, column: 13, scope: !24)
!82 = !DILocalVariable(name: "$resopt_11", scope: !24, file: !2, line: 29, type: !37)
!83 = !DILocation(line: 29, column: 5, scope: !24)
!84 = !DILocation(line: 29, column: 14, scope: !24)
!85 = !DILocalVariable(name: "$test_12", scope: !24, file: !2, line: 30, type: !10)
!86 = !DILocation(line: 30, column: 5, scope: !24)
!87 = !DILocation(line: 31, column: 3, scope: !24)
!88 = !DILocation(line: 32, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 32, column: 5)
!90 = distinct !DILexicalBlock(scope: !24, file: !2, line: 31, column: 3)
!91 = !DILocation(line: 33, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !90, file: !2, line: 33, column: 5)
!93 = !DILocalVariable(name: "$input_13", scope: !24, file: !2, line: 37, type: !57)
!94 = !DILocation(line: 37, column: 5, scope: !24)
!95 = !DILocation(line: 37, column: 13, scope: !24)
!96 = !DILocalVariable(name: "$resopt_14", scope: !24, file: !2, line: 38, type: !37)
!97 = !DILocation(line: 38, column: 5, scope: !24)
!98 = !DILocation(line: 38, column: 14, scope: !24)
!99 = !DILocalVariable(name: "$test_15", scope: !24, file: !2, line: 39, type: !10)
!100 = !DILocation(line: 39, column: 5, scope: !24)
!101 = !DILocation(line: 40, column: 3, scope: !24)
!102 = !DILocation(line: 41, column: 15, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 41, column: 5)
!104 = distinct !DILexicalBlock(scope: !24, file: !2, line: 40, column: 3)
!105 = !DILocation(line: 42, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !104, file: !2, line: 42, column: 5)
!107 = !DILocalVariable(name: "$input_16", scope: !24, file: !2, line: 46, type: !108)
!108 = !DIBasicType(name: "Uint256", size: 32)
!109 = !DILocation(line: 46, column: 5, scope: !24)
!110 = !DILocation(line: 46, column: 13, scope: !24)
!111 = !DILocalVariable(name: "$resopt_17", scope: !24, file: !2, line: 47, type: !37)
!112 = !DILocation(line: 47, column: 5, scope: !24)
!113 = !DILocation(line: 47, column: 14, scope: !24)
!114 = !DILocalVariable(name: "$test_18", scope: !24, file: !2, line: 48, type: !10)
!115 = !DILocation(line: 48, column: 5, scope: !24)
!116 = !DILocation(line: 49, column: 3, scope: !24)
!117 = !DILocation(line: 50, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 50, column: 5)
!119 = distinct !DILexicalBlock(scope: !24, file: !2, line: 49, column: 3)
!120 = !DILocation(line: 51, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !2, line: 51, column: 5)
!122 = !DILocalVariable(name: "$input_19", scope: !24, file: !2, line: 55, type: !33)
!123 = !DILocation(line: 55, column: 5, scope: !24)
!124 = !DILocation(line: 55, column: 13, scope: !24)
!125 = !DILocalVariable(name: "$resopt_20", scope: !24, file: !2, line: 56, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint64)", baseType: !127, size: 8, align: 8, dwarfAddressSpace: 0)
!127 = !DIBasicType(name: "Option (Uint64)", size: 8)
!128 = !DILocation(line: 56, column: 5, scope: !24)
!129 = !DILocation(line: 56, column: 14, scope: !24)
!130 = !DILocalVariable(name: "$test_21", scope: !24, file: !2, line: 57, type: !10)
!131 = !DILocation(line: 57, column: 5, scope: !24)
!132 = !DILocation(line: 58, column: 3, scope: !24)
!133 = !DILocalVariable(name: "input_", scope: !134, file: !2, line: 60, type: !79)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 59, column: 5)
!135 = distinct !DILexicalBlock(scope: !24, file: !2, line: 58, column: 3)
!136 = !DILocation(line: 60, column: 9, scope: !134)
!137 = !DILocation(line: 60, column: 18, scope: !134)
!138 = !DILocalVariable(name: "test_", scope: !134, file: !2, line: 61, type: !10)
!139 = !DILocation(line: 61, column: 9, scope: !134)
!140 = !DILocation(line: 61, column: 17, scope: !134)
!141 = !DILocation(line: 62, column: 5, scope: !134)
!142 = !DILocalVariable(name: "$BoolUtils.andb_89", scope: !134, file: !2, line: 62, type: !10)
!143 = !DILocation(line: 63, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !135, file: !2, line: 63, column: 5)
!145 = !DILocalVariable(name: "$input_22", scope: !24, file: !2, line: 67, type: !79)
!146 = !DILocation(line: 67, column: 5, scope: !24)
!147 = !DILocation(line: 67, column: 13, scope: !24)
!148 = !DILocalVariable(name: "$resopt_23", scope: !24, file: !2, line: 68, type: !126)
!149 = !DILocation(line: 68, column: 5, scope: !24)
!150 = !DILocation(line: 68, column: 14, scope: !24)
!151 = !DILocalVariable(name: "$test_24", scope: !24, file: !2, line: 69, type: !10)
!152 = !DILocation(line: 69, column: 5, scope: !24)
!153 = !DILocation(line: 70, column: 3, scope: !24)
!154 = !DILocalVariable(name: "input_", scope: !155, file: !2, line: 72, type: !79)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 71, column: 5)
!156 = distinct !DILexicalBlock(scope: !24, file: !2, line: 70, column: 3)
!157 = !DILocation(line: 72, column: 9, scope: !155)
!158 = !DILocation(line: 72, column: 18, scope: !155)
!159 = !DILocalVariable(name: "test_", scope: !155, file: !2, line: 73, type: !10)
!160 = !DILocation(line: 73, column: 9, scope: !155)
!161 = !DILocation(line: 73, column: 17, scope: !155)
!162 = !DILocation(line: 74, column: 5, scope: !155)
!163 = !DILocalVariable(name: "$BoolUtils.andb_91", scope: !155, file: !2, line: 74, type: !10)
!164 = !DILocation(line: 75, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !156, file: !2, line: 75, column: 5)
!166 = !DILocalVariable(name: "$input_25", scope: !24, file: !2, line: 79, type: !57)
!167 = !DILocation(line: 79, column: 5, scope: !24)
!168 = !DILocation(line: 79, column: 13, scope: !24)
!169 = !DILocalVariable(name: "$resopt_26", scope: !24, file: !2, line: 80, type: !126)
!170 = !DILocation(line: 80, column: 5, scope: !24)
!171 = !DILocation(line: 80, column: 14, scope: !24)
!172 = !DILocalVariable(name: "$test_27", scope: !24, file: !2, line: 81, type: !10)
!173 = !DILocation(line: 81, column: 5, scope: !24)
!174 = !DILocation(line: 82, column: 3, scope: !24)
!175 = !DILocalVariable(name: "input_", scope: !176, file: !2, line: 84, type: !79)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 83, column: 5)
!177 = distinct !DILexicalBlock(scope: !24, file: !2, line: 82, column: 3)
!178 = !DILocation(line: 84, column: 9, scope: !176)
!179 = !DILocation(line: 84, column: 18, scope: !176)
!180 = !DILocalVariable(name: "test_", scope: !176, file: !2, line: 85, type: !10)
!181 = !DILocation(line: 85, column: 9, scope: !176)
!182 = !DILocation(line: 85, column: 17, scope: !176)
!183 = !DILocation(line: 86, column: 5, scope: !176)
!184 = !DILocalVariable(name: "$BoolUtils.andb_93", scope: !176, file: !2, line: 86, type: !10)
!185 = !DILocation(line: 87, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !177, file: !2, line: 87, column: 5)
!187 = !DILocalVariable(name: "$input_28", scope: !24, file: !2, line: 91, type: !57)
!188 = !DILocation(line: 91, column: 5, scope: !24)
!189 = !DILocation(line: 91, column: 13, scope: !24)
!190 = !DILocalVariable(name: "$resopt_29", scope: !24, file: !2, line: 92, type: !126)
!191 = !DILocation(line: 92, column: 5, scope: !24)
!192 = !DILocation(line: 92, column: 14, scope: !24)
!193 = !DILocalVariable(name: "$test_30", scope: !24, file: !2, line: 93, type: !10)
!194 = !DILocation(line: 93, column: 5, scope: !24)
!195 = !DILocation(line: 94, column: 3, scope: !24)
!196 = !DILocation(line: 95, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 95, column: 5)
!198 = distinct !DILexicalBlock(scope: !24, file: !2, line: 94, column: 3)
!199 = !DILocation(line: 96, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !2, line: 96, column: 5)
!201 = !DILocalVariable(name: "$input_31", scope: !24, file: !2, line: 100, type: !108)
!202 = !DILocation(line: 100, column: 5, scope: !24)
!203 = !DILocation(line: 100, column: 13, scope: !24)
!204 = !DILocalVariable(name: "$resopt_32", scope: !24, file: !2, line: 101, type: !126)
!205 = !DILocation(line: 101, column: 5, scope: !24)
!206 = !DILocation(line: 101, column: 14, scope: !24)
!207 = !DILocalVariable(name: "$test_33", scope: !24, file: !2, line: 102, type: !10)
!208 = !DILocation(line: 102, column: 5, scope: !24)
!209 = !DILocation(line: 103, column: 3, scope: !24)
!210 = !DILocation(line: 104, column: 15, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 104, column: 5)
!212 = distinct !DILexicalBlock(scope: !24, file: !2, line: 103, column: 3)
!213 = !DILocation(line: 105, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !212, file: !2, line: 105, column: 5)
!215 = !DILocalVariable(name: "$input_34", scope: !24, file: !2, line: 109, type: !57)
!216 = !DILocation(line: 109, column: 5, scope: !24)
!217 = !DILocation(line: 109, column: 13, scope: !24)
!218 = !DILocalVariable(name: "$resopt_35", scope: !24, file: !2, line: 110, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint128)", baseType: !220, size: 8, align: 8, dwarfAddressSpace: 0)
!220 = !DIBasicType(name: "Option (Uint128)", size: 8)
!221 = !DILocation(line: 110, column: 5, scope: !24)
!222 = !DILocation(line: 110, column: 14, scope: !24)
!223 = !DILocalVariable(name: "$test_36", scope: !24, file: !2, line: 111, type: !10)
!224 = !DILocation(line: 111, column: 5, scope: !24)
!225 = !DILocation(line: 112, column: 3, scope: !24)
!226 = !DILocalVariable(name: "input_", scope: !227, file: !2, line: 114, type: !57)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 113, column: 5)
!228 = distinct !DILexicalBlock(scope: !24, file: !2, line: 112, column: 3)
!229 = !DILocation(line: 114, column: 9, scope: !227)
!230 = !DILocation(line: 114, column: 18, scope: !227)
!231 = !DILocalVariable(name: "test_", scope: !227, file: !2, line: 115, type: !10)
!232 = !DILocation(line: 115, column: 9, scope: !227)
!233 = !DILocation(line: 115, column: 17, scope: !227)
!234 = !DILocation(line: 116, column: 5, scope: !227)
!235 = !DILocalVariable(name: "$BoolUtils.andb_95", scope: !227, file: !2, line: 116, type: !10)
!236 = !DILocation(line: 117, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !2, line: 117, column: 5)
!238 = !DILocalVariable(name: "$input_37", scope: !24, file: !2, line: 121, type: !57)
!239 = !DILocation(line: 121, column: 5, scope: !24)
!240 = !DILocation(line: 121, column: 13, scope: !24)
!241 = !DILocalVariable(name: "$resopt_38", scope: !24, file: !2, line: 122, type: !219)
!242 = !DILocation(line: 122, column: 5, scope: !24)
!243 = !DILocation(line: 122, column: 14, scope: !24)
!244 = !DILocalVariable(name: "$test_39", scope: !24, file: !2, line: 123, type: !10)
!245 = !DILocation(line: 123, column: 5, scope: !24)
!246 = !DILocation(line: 124, column: 3, scope: !24)
!247 = !DILocalVariable(name: "input_", scope: !248, file: !2, line: 126, type: !57)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 125, column: 5)
!249 = distinct !DILexicalBlock(scope: !24, file: !2, line: 124, column: 3)
!250 = !DILocation(line: 126, column: 9, scope: !248)
!251 = !DILocation(line: 126, column: 18, scope: !248)
!252 = !DILocalVariable(name: "test_", scope: !248, file: !2, line: 127, type: !10)
!253 = !DILocation(line: 127, column: 9, scope: !248)
!254 = !DILocation(line: 127, column: 17, scope: !248)
!255 = !DILocation(line: 128, column: 5, scope: !248)
!256 = !DILocalVariable(name: "$BoolUtils.andb_97", scope: !248, file: !2, line: 128, type: !10)
!257 = !DILocation(line: 129, column: 13, scope: !258)
!258 = distinct !DILexicalBlock(scope: !249, file: !2, line: 129, column: 5)
!259 = !DILocalVariable(name: "$input_40", scope: !24, file: !2, line: 133, type: !108)
!260 = !DILocation(line: 133, column: 5, scope: !24)
!261 = !DILocation(line: 133, column: 13, scope: !24)
!262 = !DILocalVariable(name: "$resopt_41", scope: !24, file: !2, line: 134, type: !219)
!263 = !DILocation(line: 134, column: 5, scope: !24)
!264 = !DILocation(line: 134, column: 14, scope: !24)
!265 = !DILocalVariable(name: "$test_42", scope: !24, file: !2, line: 135, type: !10)
!266 = !DILocation(line: 135, column: 5, scope: !24)
!267 = !DILocation(line: 136, column: 3, scope: !24)
!268 = !DILocation(line: 137, column: 15, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 137, column: 5)
!270 = distinct !DILexicalBlock(scope: !24, file: !2, line: 136, column: 3)
!271 = !DILocation(line: 138, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !270, file: !2, line: 138, column: 5)
!273 = !DILocalVariable(name: "$input_43", scope: !24, file: !2, line: 142, type: !108)
!274 = !DILocation(line: 142, column: 5, scope: !24)
!275 = !DILocation(line: 142, column: 13, scope: !24)
!276 = !DILocalVariable(name: "$resopt_44", scope: !24, file: !2, line: 143, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint256)", baseType: !278, size: 8, align: 8, dwarfAddressSpace: 0)
!278 = !DIBasicType(name: "Option (Uint256)", size: 8)
!279 = !DILocation(line: 143, column: 5, scope: !24)
!280 = !DILocation(line: 143, column: 14, scope: !24)
!281 = !DILocalVariable(name: "$test_45", scope: !24, file: !2, line: 144, type: !10)
!282 = !DILocation(line: 144, column: 5, scope: !24)
!283 = !DILocation(line: 145, column: 3, scope: !24)
!284 = !DILocalVariable(name: "input_", scope: !285, file: !2, line: 147, type: !108)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 146, column: 5)
!286 = distinct !DILexicalBlock(scope: !24, file: !2, line: 145, column: 3)
!287 = !DILocation(line: 147, column: 9, scope: !285)
!288 = !DILocation(line: 147, column: 18, scope: !285)
!289 = !DILocalVariable(name: "test_", scope: !285, file: !2, line: 148, type: !10)
!290 = !DILocation(line: 148, column: 9, scope: !285)
!291 = !DILocation(line: 148, column: 17, scope: !285)
!292 = !DILocation(line: 149, column: 5, scope: !285)
!293 = !DILocalVariable(name: "$BoolUtils.andb_99", scope: !285, file: !2, line: 149, type: !10)
!294 = !DILocation(line: 150, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !286, file: !2, line: 150, column: 5)
!296 = !DILocalVariable(name: "$input_46", scope: !24, file: !2, line: 154, type: !33)
!297 = !DILocation(line: 154, column: 5, scope: !24)
!298 = !DILocation(line: 154, column: 13, scope: !24)
!299 = !DILocalVariable(name: "$resopt_47", scope: !24, file: !2, line: 155, type: !277)
!300 = !DILocation(line: 155, column: 5, scope: !24)
!301 = !DILocation(line: 155, column: 14, scope: !24)
!302 = !DILocalVariable(name: "$test_48", scope: !24, file: !2, line: 156, type: !10)
!303 = !DILocation(line: 156, column: 5, scope: !24)
!304 = !DILocation(line: 157, column: 3, scope: !24)
!305 = !DILocalVariable(name: "input_", scope: !306, file: !2, line: 159, type: !108)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 158, column: 5)
!307 = distinct !DILexicalBlock(scope: !24, file: !2, line: 157, column: 3)
!308 = !DILocation(line: 159, column: 9, scope: !306)
!309 = !DILocation(line: 159, column: 18, scope: !306)
!310 = !DILocalVariable(name: "test_", scope: !306, file: !2, line: 160, type: !10)
!311 = !DILocation(line: 160, column: 9, scope: !306)
!312 = !DILocation(line: 160, column: 17, scope: !306)
!313 = !DILocation(line: 161, column: 5, scope: !306)
!314 = !DILocalVariable(name: "$BoolUtils.andb_101", scope: !306, file: !2, line: 161, type: !10)
!315 = !DILocation(line: 162, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !307, file: !2, line: 162, column: 5)
!317 = !DILocalVariable(name: "$input_49", scope: !24, file: !2, line: 166, type: !318)
!318 = !DIBasicType(name: "Int32", size: 4)
!319 = !DILocation(line: 166, column: 5, scope: !24)
!320 = !DILocation(line: 166, column: 13, scope: !24)
!321 = !DILocalVariable(name: "$resopt_50", scope: !24, file: !2, line: 167, type: !37)
!322 = !DILocation(line: 167, column: 5, scope: !24)
!323 = !DILocation(line: 167, column: 14, scope: !24)
!324 = !DILocalVariable(name: "$test_51", scope: !24, file: !2, line: 168, type: !10)
!325 = !DILocation(line: 168, column: 5, scope: !24)
!326 = !DILocation(line: 169, column: 3, scope: !24)
!327 = !DILocalVariable(name: "input_", scope: !328, file: !2, line: 171, type: !33)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 170, column: 5)
!329 = distinct !DILexicalBlock(scope: !24, file: !2, line: 169, column: 3)
!330 = !DILocation(line: 171, column: 9, scope: !328)
!331 = !DILocation(line: 171, column: 18, scope: !328)
!332 = !DILocalVariable(name: "test_", scope: !328, file: !2, line: 172, type: !10)
!333 = !DILocation(line: 172, column: 9, scope: !328)
!334 = !DILocation(line: 172, column: 17, scope: !328)
!335 = !DILocation(line: 173, column: 5, scope: !328)
!336 = !DILocalVariable(name: "$BoolUtils.andb_103", scope: !328, file: !2, line: 173, type: !10)
!337 = !DILocation(line: 174, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !2, line: 174, column: 5)
!339 = !DILocalVariable(name: "$input_52", scope: !24, file: !2, line: 178, type: !318)
!340 = !DILocation(line: 178, column: 5, scope: !24)
!341 = !DILocation(line: 178, column: 13, scope: !24)
!342 = !DILocalVariable(name: "$resopt_53", scope: !24, file: !2, line: 179, type: !37)
!343 = !DILocation(line: 179, column: 5, scope: !24)
!344 = !DILocation(line: 179, column: 14, scope: !24)
!345 = !DILocalVariable(name: "$test_54", scope: !24, file: !2, line: 180, type: !10)
!346 = !DILocation(line: 180, column: 5, scope: !24)
!347 = !DILocation(line: 181, column: 3, scope: !24)
!348 = !DILocation(line: 182, column: 15, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 182, column: 5)
!350 = distinct !DILexicalBlock(scope: !24, file: !2, line: 181, column: 3)
!351 = !DILocation(line: 183, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !2, line: 183, column: 5)
!353 = !DILocalVariable(name: "$input_55", scope: !24, file: !2, line: 187, type: !354)
!354 = !DIBasicType(name: "String", size: 16)
!355 = !DILocation(line: 187, column: 5, scope: !24)
!356 = !DILocation(line: 187, column: 25, scope: !24)
!357 = !DILocalVariable(name: "$resopt_56", scope: !24, file: !2, line: 188, type: !37)
!358 = !DILocation(line: 188, column: 5, scope: !24)
!359 = !DILocation(line: 188, column: 14, scope: !24)
!360 = !DILocalVariable(name: "$test_57", scope: !24, file: !2, line: 189, type: !10)
!361 = !DILocation(line: 189, column: 5, scope: !24)
!362 = !DILocation(line: 190, column: 3, scope: !24)
!363 = !DILocation(line: 191, column: 15, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 191, column: 5)
!365 = distinct !DILexicalBlock(scope: !24, file: !2, line: 190, column: 3)
!366 = !DILocation(line: 192, column: 13, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !2, line: 192, column: 5)
!368 = !DILocalVariable(name: "$input_58", scope: !24, file: !2, line: 196, type: !369)
!369 = !DIBasicType(name: "Int256", size: 32)
!370 = !DILocation(line: 196, column: 5, scope: !24)
!371 = !DILocation(line: 196, column: 13, scope: !24)
!372 = !DILocalVariable(name: "$resopt_59", scope: !24, file: !2, line: 197, type: !277)
!373 = !DILocation(line: 197, column: 5, scope: !24)
!374 = !DILocation(line: 197, column: 14, scope: !24)
!375 = !DILocalVariable(name: "$test_60", scope: !24, file: !2, line: 198, type: !10)
!376 = !DILocation(line: 198, column: 5, scope: !24)
!377 = !DILocation(line: 199, column: 3, scope: !24)
!378 = !DILocalVariable(name: "input_", scope: !379, file: !2, line: 201, type: !108)
!379 = distinct !DILexicalBlock(scope: !380, file: !2, line: 200, column: 5)
!380 = distinct !DILexicalBlock(scope: !24, file: !2, line: 199, column: 3)
!381 = !DILocation(line: 201, column: 9, scope: !379)
!382 = !DILocation(line: 201, column: 18, scope: !379)
!383 = !DILocalVariable(name: "test_", scope: !379, file: !2, line: 202, type: !10)
!384 = !DILocation(line: 202, column: 9, scope: !379)
!385 = !DILocation(line: 202, column: 17, scope: !379)
!386 = !DILocation(line: 203, column: 5, scope: !379)
!387 = !DILocalVariable(name: "$BoolUtils.andb_105", scope: !379, file: !2, line: 203, type: !10)
!388 = !DILocation(line: 204, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !380, file: !2, line: 204, column: 5)
!390 = !DILocalVariable(name: "$input_61", scope: !24, file: !2, line: 208, type: !354)
!391 = !DILocation(line: 208, column: 5, scope: !24)
!392 = !DILocation(line: 208, column: 91, scope: !24)
!393 = !DILocalVariable(name: "$resopt_62", scope: !24, file: !2, line: 209, type: !277)
!394 = !DILocation(line: 209, column: 5, scope: !24)
!395 = !DILocation(line: 209, column: 14, scope: !24)
!396 = !DILocalVariable(name: "$test_63", scope: !24, file: !2, line: 210, type: !10)
!397 = !DILocation(line: 210, column: 5, scope: !24)
!398 = !DILocation(line: 211, column: 3, scope: !24)
!399 = !DILocalVariable(name: "input_", scope: !400, file: !2, line: 213, type: !108)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 212, column: 5)
!401 = distinct !DILexicalBlock(scope: !24, file: !2, line: 211, column: 3)
!402 = !DILocation(line: 213, column: 9, scope: !400)
!403 = !DILocation(line: 213, column: 18, scope: !400)
!404 = !DILocalVariable(name: "test_", scope: !400, file: !2, line: 214, type: !10)
!405 = !DILocation(line: 214, column: 9, scope: !400)
!406 = !DILocation(line: 214, column: 17, scope: !400)
!407 = !DILocation(line: 215, column: 5, scope: !400)
!408 = !DILocalVariable(name: "$BoolUtils.andb_107", scope: !400, file: !2, line: 215, type: !10)
!409 = !DILocation(line: 216, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !2, line: 216, column: 5)
!411 = !DILocalVariable(name: "$input_64", scope: !24, file: !2, line: 220, type: !369)
!412 = !DILocation(line: 220, column: 5, scope: !24)
!413 = !DILocation(line: 220, column: 13, scope: !24)
!414 = !DILocalVariable(name: "$resopt_65", scope: !24, file: !2, line: 221, type: !277)
!415 = !DILocation(line: 221, column: 5, scope: !24)
!416 = !DILocation(line: 221, column: 14, scope: !24)
!417 = !DILocalVariable(name: "$test_66", scope: !24, file: !2, line: 222, type: !10)
!418 = !DILocation(line: 222, column: 5, scope: !24)
!419 = !DILocation(line: 223, column: 3, scope: !24)
!420 = !DILocation(line: 224, column: 15, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 224, column: 5)
!422 = distinct !DILexicalBlock(scope: !24, file: !2, line: 223, column: 3)
!423 = !DILocation(line: 225, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !422, file: !2, line: 225, column: 5)
!425 = !DILocalVariable(name: "$input_67", scope: !24, file: !2, line: 229, type: !354)
!426 = !DILocation(line: 229, column: 5, scope: !24)
!427 = !DILocation(line: 229, column: 51, scope: !24)
!428 = !DILocalVariable(name: "$resopt_68", scope: !24, file: !2, line: 230, type: !277)
!429 = !DILocation(line: 230, column: 5, scope: !24)
!430 = !DILocation(line: 230, column: 14, scope: !24)
!431 = !DILocalVariable(name: "$test_69", scope: !24, file: !2, line: 231, type: !10)
!432 = !DILocation(line: 231, column: 5, scope: !24)
!433 = !DILocation(line: 232, column: 3, scope: !24)
!434 = !DILocation(line: 233, column: 15, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 233, column: 5)
!436 = distinct !DILexicalBlock(scope: !24, file: !2, line: 232, column: 3)
!437 = !DILocation(line: 234, column: 13, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !2, line: 234, column: 5)
!439 = !DILocalVariable(name: "$input_70", scope: !24, file: !2, line: 238, type: !354)
!440 = !DILocation(line: 238, column: 5, scope: !24)
!441 = !DILocation(line: 238, column: 18, scope: !24)
!442 = !DILocalVariable(name: "$resopt_71", scope: !24, file: !2, line: 239, type: !126)
!443 = !DILocation(line: 239, column: 5, scope: !24)
!444 = !DILocation(line: 239, column: 14, scope: !24)
!445 = !DILocalVariable(name: "$test_72", scope: !24, file: !2, line: 240, type: !10)
!446 = !DILocation(line: 240, column: 5, scope: !24)
!447 = !DILocation(line: 241, column: 3, scope: !24)
!448 = !DILocation(line: 242, column: 15, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 242, column: 5)
!450 = distinct !DILexicalBlock(scope: !24, file: !2, line: 241, column: 3)
!451 = !DILocation(line: 243, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !2, line: 243, column: 5)
!453 = !DILocation(line: 247, column: 1, scope: !24)
