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
%"$ParamDescr_2120" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2121" = type { %ParamDescrString, i32, %"$ParamDescr_2120"* }
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
@"$stringlit_1686" = unnamed_addr constant [11 x i8] c"-2147483648"
@"$stringlit_1843" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_2000" = unnamed_addr constant [37 x i8] c"-282366920938463463374607431768211456"
@"$stringlit_2060" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_137", %_TyDescrTy_Typ* @"$TyDescr_Int64_119", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_151", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint256_147", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_149", %_TyDescrTy_Typ* @"$TyDescr_Bnum_133", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", %_TyDescrTy_Typ* @"$TyDescr_Exception_139", %_TyDescrTy_Typ* @"$TyDescr_String_131", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", %_TyDescrTy_Typ* @"$TyDescr_Int128_123", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_148", %_TyDescrTy_Typ* @"$TyDescr_Bystr_143", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_141", %_TyDescrTy_Typ* @"$TyDescr_Message_135", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint32_150", %_TyDescrTy_Typ* @"$TyDescr_Int32_115"]
@_tydescr_table_length = constant i32 20
@_contract_parameters = constant [0 x %"$ParamDescr_2120"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2121"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_110"(%"$$fundef_110_env_206"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_250" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_250", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_250", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_110_env_b_220" = getelementptr inbounds %"$$fundef_110_env_206", %"$$fundef_110_env_206"* %0, i32 0, i32 0
  %"$b_envload_221" = load %TName_Bool*, %TName_Bool** %"$$fundef_110_env_b_220", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_221", %TName_Bool** %b, align 8
  %"$retval_111" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_111", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 2, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %entry
  %"$consume_226" = sub i64 %"$gasrem_222", 2
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$b_228" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_229" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_228", i32 0, i32 0
  %"$b_tag_230" = load i8, i8* %"$b_tag_229", align 1
  switch i8 %"$b_tag_230", label %"$empty_default_231" [
    i8 1, label %"$False_232"
    i8 0, label %"$True_242"
  ], !dbg !14

"$False_232":                                     ; preds = %"$have_gas_225"
  %"$b_233" = bitcast %TName_Bool* %"$b_228" to %CName_False*
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$False_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$False_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$adtval_239_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_239_salloc" = call i8* @_salloc(i8* %"$adtval_239_load", i64 1)
  %"$adtval_239" = bitcast i8* %"$adtval_239_salloc" to %CName_False*
  %"$adtgep_240" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_239", i32 0, i32 0
  store i8 1, i8* %"$adtgep_240", align 1
  %"$adtptr_241" = bitcast %CName_False* %"$adtval_239" to %TName_Bool*
  store %TName_Bool* %"$adtptr_241", %TName_Bool** %"$retval_111", align 8, !dbg !15
  br label %"$matchsucc_227"

"$True_242":                                      ; preds = %"$have_gas_225"
  %"$b_243" = bitcast %TName_Bool* %"$b_228" to %CName_True*
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$True_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$True_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_111", align 8, !dbg !18
  br label %"$matchsucc_227"

"$empty_default_231":                             ; preds = %"$have_gas_225"
  br label %"$matchsucc_227"

"$matchsucc_227":                                 ; preds = %"$have_gas_247", %"$have_gas_237", %"$empty_default_231"
  %"$$retval_111_249" = load %TName_Bool*, %TName_Bool** %"$retval_111", align 8
  ret %TName_Bool* %"$$retval_111_249"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_207"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_219" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_219", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_219", metadata !21, metadata !DIExpression()), !dbg !22
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_110_cloval_216", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_109", align 8, !dbg !23
  %"$$retval_109_218" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_109", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_109_218"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 5, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %entry
  %"$consume_255" = sub i64 %"$gasrem_251", 5
  store i64 %"$consume_255", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 7, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 7
  store i64 %"$consume_260", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_108_env_207"*, %TName_Bool*)* @"$fundef_108" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 196, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_264"
  %"$consume_273" = sub i64 %"$gasrem_269", 196
  store i64 %"$consume_273", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 20, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 20
  store i64 %"$consume_278", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 12, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 12
  store i64 %"$consume_283", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 2, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 2
  store i64 %"$consume_288", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_112" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_112", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %false, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$adtval_299_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_299_salloc" = call i8* @_salloc(i8* %"$adtval_299_load", i64 1)
  %"$adtval_299" = bitcast i8* %"$adtval_299_salloc" to %CName_False*
  %"$adtgep_300" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_299", i32 0, i32 0
  store i8 1, i8* %"$adtgep_300", align 1
  %"$adtptr_301" = bitcast %CName_False* %"$adtval_299" to %TName_Bool*
  store %TName_Bool* %"$adtptr_301", %TName_Bool** %false, align 8, !dbg !30
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_297"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !33, metadata !DIExpression()), !dbg !34
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$adtval_312_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_312_salloc" = call i8* @_salloc(i8* %"$adtval_312_load", i64 1)
  %"$adtval_312" = bitcast i8* %"$adtval_312_salloc" to %CName_True*
  %"$adtgep_313" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_312", i32 0, i32 0
  store i8 0, i8* %"$adtgep_313", align 1
  %"$adtptr_314" = bitcast %CName_True* %"$adtval_312" to %TName_Bool*
  store %TName_Bool* %"$adtptr_314", %TName_Bool** %test, align 8, !dbg !35
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_310"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input, metadata !36, metadata !DIExpression()), !dbg !38
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4, !dbg !39
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %resopt, metadata !40, metadata !DIExpression()), !dbg !43
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 4, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 4
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_input_336" = alloca %Uint32, align 8
  %"$input_337" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_337", %Uint32* %"$to_uint32_input_336", align 4
  %"$$to_uint32_input_336_338" = bitcast %Uint32* %"$to_uint32_input_336" to i8*
  %"$to_uint32_call_339" = call i8* @_to_uint32(i8* %"$execptr_load_335", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint32_input_336_338"), !dbg !44
  %"$to_uint32_340" = bitcast i8* %"$to_uint32_call_339" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_340", %TName_Option_Uint32** %resopt, align 8, !dbg !44
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_333"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 2, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 2
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$resopt_352" = load %TName_Option_Uint32*, %TName_Option_Uint32** %resopt, align 8
  %"$resopt_tag_353" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$resopt_352", i32 0, i32 0
  %"$resopt_tag_354" = load i8, i8* %"$resopt_tag_353", align 1
  switch i8 %"$resopt_tag_354", label %"$empty_default_355" [
    i8 0, label %"$Some_356"
    i8 1, label %"$None_401"
  ], !dbg !47

"$Some_356":                                      ; preds = %"$have_gas_349"
  %"$resopt_357" = bitcast %TName_Option_Uint32* %"$resopt_352" to %CName_Some_Uint32*
  %"$res_gep_358" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$resopt_357", i32 0, i32 1
  %"$res_load_359" = load %Uint32, %Uint32* %"$res_gep_358", align 4
  %res = alloca %Uint32, align 8
  store %Uint32 %"$res_load_359", %Uint32* %res, align 4
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$Some_356"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$Some_356"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %input_ = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input_, metadata !48, metadata !DIExpression()), !dbg !51
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_, align 4, !dbg !52
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !53, metadata !DIExpression()), !dbg !54
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 4, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 4
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$execptr_load_380" = load i8*, i8** @_execptr, align 8
  %"$res_381" = load %Uint32, %Uint32* %res, align 4
  %"$input__382" = load %Uint32, %Uint32* %input_, align 4
  %"$eq_call_383" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_380", %Uint32 %"$res_381", %Uint32 %"$input__382"), !dbg !55
  store %TName_Bool* %"$eq_call_383", %TName_Bool** %test_, align 8, !dbg !55
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_378"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$BoolUtils.andb_84" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_390" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_391" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_390", 0
  %"$BoolUtils.andb_envptr_392" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_390", 1
  %"$test_393" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_394" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_391"(i8* %"$BoolUtils.andb_envptr_392", %TName_Bool* %"$test_393"), !dbg !56
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_394", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8, !dbg !56
  %"$BoolUtils.andb_85" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_85", metadata !57, metadata !DIExpression()), !dbg !56
  %"$$BoolUtils.andb_84_395" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_fptr_396" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_395", 0
  %"$$BoolUtils.andb_84_envptr_397" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_84_395", 1
  %"$test__398" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_84_call_399" = call %TName_Bool* %"$$BoolUtils.andb_84_fptr_396"(i8* %"$$BoolUtils.andb_84_envptr_397", %TName_Bool* %"$test__398"), !dbg !56
  store %TName_Bool* %"$$BoolUtils.andb_84_call_399", %TName_Bool** %"$BoolUtils.andb_85", align 8, !dbg !56
  %"$$BoolUtils.andb_85_400" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_85", align 8
  store %TName_Bool* %"$$BoolUtils.andb_85_400", %TName_Bool** %"$test_6", align 8, !dbg !56
  br label %"$matchsucc_351"

"$None_401":                                      ; preds = %"$have_gas_349"
  %"$resopt_402" = bitcast %TName_Option_Uint32* %"$resopt_352" to %CName_None_Uint32*
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$None_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$None_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$false_408" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_408", %TName_Bool** %"$test_6", align 8, !dbg !58
  br label %"$matchsucc_351"

"$empty_default_355":                             ; preds = %"$have_gas_349"
  br label %"$matchsucc_351"

"$matchsucc_351":                                 ; preds = %"$have_gas_406", %"$have_gas_388", %"$empty_default_355"
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$matchsucc_351"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$matchsucc_351"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_7", metadata !60, metadata !DIExpression()), !dbg !62
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_7", align 8, !dbg !63
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_8", metadata !64, metadata !DIExpression()), !dbg !65
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 4, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 4
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_7_430" = alloca %Uint128, align 8
  %"$$input_7_431" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_431", %Uint128* %"$to_uint32_$input_7_430", align 8
  %"$$to_uint32_$input_7_430_432" = bitcast %Uint128* %"$to_uint32_$input_7_430" to i8*
  %"$to_uint32_call_433" = call i8* @_to_uint32(i8* %"$execptr_load_429", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint32_$input_7_430_432"), !dbg !66
  %"$to_uint32_434" = bitcast i8* %"$to_uint32_call_433" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_434", %TName_Option_Uint32** %"$resopt_8", align 8, !dbg !66
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_427"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_9", metadata !67, metadata !DIExpression()), !dbg !68
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 2, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 2
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$$resopt_8_446" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_8", align 8
  %"$$resopt_8_tag_447" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_8_446", i32 0, i32 0
  %"$$resopt_8_tag_448" = load i8, i8* %"$$resopt_8_tag_447", align 1
  switch i8 %"$$resopt_8_tag_448", label %"$empty_default_449" [
    i8 0, label %"$Some_450"
    i8 1, label %"$None_495"
  ], !dbg !69

"$Some_450":                                      ; preds = %"$have_gas_443"
  %"$$resopt_8_451" = bitcast %TName_Option_Uint32* %"$$resopt_8_446" to %CName_Some_Uint32*
  %"$res_gep_452" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_8_451", i32 0, i32 1
  %"$res_load_453" = load %Uint32, %Uint32* %"$res_gep_452", align 4
  %res1 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_453", %Uint32* %res1, align 4
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$Some_450"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$Some_450"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %input_2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input_2, metadata !70, metadata !DIExpression()), !dbg !73
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_457"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input_2, align 4, !dbg !74
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_3, metadata !75, metadata !DIExpression()), !dbg !76
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 4, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 4
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$execptr_load_474" = load i8*, i8** @_execptr, align 8
  %"$res_475" = load %Uint32, %Uint32* %res1, align 4
  %"$input__476" = load %Uint32, %Uint32* %input_2, align 4
  %"$eq_call_477" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_474", %Uint32 %"$res_475", %Uint32 %"$input__476"), !dbg !77
  store %TName_Bool* %"$eq_call_477", %TName_Bool** %test_3, align 8, !dbg !77
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_472"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$BoolUtils.andb_86" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_484" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_485" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_484", 0
  %"$BoolUtils.andb_envptr_486" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_484", 1
  %"$$test_6_487" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_488" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_485"(i8* %"$BoolUtils.andb_envptr_486", %TName_Bool* %"$$test_6_487"), !dbg !78
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_488", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8, !dbg !78
  %"$BoolUtils.andb_87" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_87", metadata !79, metadata !DIExpression()), !dbg !78
  %"$$BoolUtils.andb_86_489" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_fptr_490" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_489", 0
  %"$$BoolUtils.andb_86_envptr_491" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_86_489", 1
  %"$test__492" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_86_call_493" = call %TName_Bool* %"$$BoolUtils.andb_86_fptr_490"(i8* %"$$BoolUtils.andb_86_envptr_491", %TName_Bool* %"$test__492"), !dbg !78
  store %TName_Bool* %"$$BoolUtils.andb_86_call_493", %TName_Bool** %"$BoolUtils.andb_87", align 8, !dbg !78
  %"$$BoolUtils.andb_87_494" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_87", align 8
  store %TName_Bool* %"$$BoolUtils.andb_87_494", %TName_Bool** %"$test_9", align 8, !dbg !78
  br label %"$matchsucc_445"

"$None_495":                                      ; preds = %"$have_gas_443"
  %"$$resopt_8_496" = bitcast %TName_Option_Uint32* %"$$resopt_8_446" to %CName_None_Uint32*
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$None_495"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$None_495"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$false_502" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_502", %TName_Bool** %"$test_9", align 8, !dbg !80
  br label %"$matchsucc_445"

"$empty_default_449":                             ; preds = %"$have_gas_443"
  br label %"$matchsucc_445"

"$matchsucc_445":                                 ; preds = %"$have_gas_500", %"$have_gas_482", %"$empty_default_449"
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$matchsucc_445"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$matchsucc_445"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$input_10" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_10", metadata !82, metadata !DIExpression()), !dbg !84
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_506"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_10", align 8, !dbg !85
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_11", metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 4, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 4
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$execptr_load_523" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_10_524" = alloca %Uint64, align 8
  %"$$input_10_525" = load %Uint64, %Uint64* %"$input_10", align 8
  store %Uint64 %"$$input_10_525", %Uint64* %"$to_uint32_$input_10_524", align 8
  %"$$to_uint32_$input_10_524_526" = bitcast %Uint64* %"$to_uint32_$input_10_524" to i8*
  %"$to_uint32_call_527" = call i8* @_to_uint32(i8* %"$execptr_load_523", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", i8* %"$$to_uint32_$input_10_524_526"), !dbg !88
  %"$to_uint32_528" = bitcast i8* %"$to_uint32_call_527" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_528", %TName_Option_Uint32** %"$resopt_11", align 8, !dbg !88
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_521"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 2, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 2
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$$resopt_11_540" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_11", align 8
  %"$$resopt_11_tag_541" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_11_540", i32 0, i32 0
  %"$$resopt_11_tag_542" = load i8, i8* %"$$resopt_11_tag_541", align 1
  switch i8 %"$$resopt_11_tag_542", label %"$empty_default_543" [
    i8 0, label %"$Some_544"
    i8 1, label %"$None_554"
  ], !dbg !91

"$Some_544":                                      ; preds = %"$have_gas_537"
  %"$$resopt_11_545" = bitcast %TName_Option_Uint32* %"$$resopt_11_540" to %CName_Some_Uint32*
  %"$$$resopt_11_73_gep_546" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_11_545", i32 0, i32 1
  %"$$$resopt_11_73_load_547" = load %Uint32, %Uint32* %"$$$resopt_11_73_gep_546", align 4
  %"$$resopt_11_73" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_11_73_load_547", %Uint32* %"$$resopt_11_73", align 4
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$Some_544"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$Some_544"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$false_553" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_553", %TName_Bool** %"$test_12", align 8, !dbg !92
  br label %"$matchsucc_539"

"$None_554":                                      ; preds = %"$have_gas_537"
  %"$$resopt_11_555" = bitcast %TName_Option_Uint32* %"$$resopt_11_540" to %CName_None_Uint32*
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$None_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$None_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$$test_9_561" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  store %TName_Bool* %"$$test_9_561", %TName_Bool** %"$test_12", align 8, !dbg !95
  br label %"$matchsucc_539"

"$empty_default_543":                             ; preds = %"$have_gas_537"
  br label %"$matchsucc_539"

"$matchsucc_539":                                 ; preds = %"$have_gas_559", %"$have_gas_551", %"$empty_default_543"
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$matchsucc_539"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$matchsucc_539"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_13", metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_13", align 8, !dbg !99
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_570"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_14", metadata !100, metadata !DIExpression()), !dbg !101
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 4, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 4
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %"$execptr_load_582" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_13_583" = alloca %Uint128, align 8
  %"$$input_13_584" = load %Uint128, %Uint128* %"$input_13", align 8
  store %Uint128 %"$$input_13_584", %Uint128* %"$to_uint32_$input_13_583", align 8
  %"$$to_uint32_$input_13_583_585" = bitcast %Uint128* %"$to_uint32_$input_13_583" to i8*
  %"$to_uint32_call_586" = call i8* @_to_uint32(i8* %"$execptr_load_582", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint32_$input_13_583_585"), !dbg !102
  %"$to_uint32_587" = bitcast i8* %"$to_uint32_call_586" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_587", %TName_Option_Uint32** %"$resopt_14", align 8, !dbg !102
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_580"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_15", metadata !103, metadata !DIExpression()), !dbg !104
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 2, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 2
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %"$$resopt_14_599" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_14", align 8
  %"$$resopt_14_tag_600" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_14_599", i32 0, i32 0
  %"$$resopt_14_tag_601" = load i8, i8* %"$$resopt_14_tag_600", align 1
  switch i8 %"$$resopt_14_tag_601", label %"$empty_default_602" [
    i8 0, label %"$Some_603"
    i8 1, label %"$None_613"
  ], !dbg !105

"$Some_603":                                      ; preds = %"$have_gas_596"
  %"$$resopt_14_604" = bitcast %TName_Option_Uint32* %"$$resopt_14_599" to %CName_Some_Uint32*
  %"$$$resopt_14_74_gep_605" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_14_604", i32 0, i32 1
  %"$$$resopt_14_74_load_606" = load %Uint32, %Uint32* %"$$$resopt_14_74_gep_605", align 4
  %"$$resopt_14_74" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_14_74_load_606", %Uint32* %"$$resopt_14_74", align 4
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$Some_603"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$Some_603"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %"$false_612" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_612", %TName_Bool** %"$test_15", align 8, !dbg !106
  br label %"$matchsucc_598"

"$None_613":                                      ; preds = %"$have_gas_596"
  %"$$resopt_14_614" = bitcast %TName_Option_Uint32* %"$$resopt_14_599" to %CName_None_Uint32*
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$None_613"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$None_613"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$$test_12_620" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  store %TName_Bool* %"$$test_12_620", %TName_Bool** %"$test_15", align 8, !dbg !109
  br label %"$matchsucc_598"

"$empty_default_602":                             ; preds = %"$have_gas_596"
  br label %"$matchsucc_598"

"$matchsucc_598":                                 ; preds = %"$have_gas_618", %"$have_gas_610", %"$empty_default_602"
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$matchsucc_598"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$matchsucc_598"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_16", metadata !111, metadata !DIExpression()), !dbg !113
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_624"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551615 }, %Uint256* %"$input_16", align 8, !dbg !114
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 1, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_629"
  %"$consume_635" = sub i64 %"$gasrem_631", 1
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_17", metadata !115, metadata !DIExpression()), !dbg !116
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 4, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_634"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_634"
  %"$consume_640" = sub i64 %"$gasrem_636", 4
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$execptr_load_641" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_16_642" = alloca %Uint256, align 8
  %"$$input_16_643" = load %Uint256, %Uint256* %"$input_16", align 8
  store %Uint256 %"$$input_16_643", %Uint256* %"$to_uint32_$input_16_642", align 8
  %"$$to_uint32_$input_16_642_644" = bitcast %Uint256* %"$to_uint32_$input_16_642" to i8*
  %"$to_uint32_call_645" = call i8* @_to_uint32(i8* %"$execptr_load_641", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint32_$input_16_642_644"), !dbg !117
  %"$to_uint32_646" = bitcast i8* %"$to_uint32_call_645" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_646", %TName_Option_Uint32** %"$resopt_17", align 8, !dbg !117
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_639"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !118, metadata !DIExpression()), !dbg !119
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 2, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_650"
  %"$consume_656" = sub i64 %"$gasrem_652", 2
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$$resopt_17_658" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_17", align 8
  %"$$resopt_17_tag_659" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_17_658", i32 0, i32 0
  %"$$resopt_17_tag_660" = load i8, i8* %"$$resopt_17_tag_659", align 1
  switch i8 %"$$resopt_17_tag_660", label %"$empty_default_661" [
    i8 0, label %"$Some_662"
    i8 1, label %"$None_672"
  ], !dbg !120

"$Some_662":                                      ; preds = %"$have_gas_655"
  %"$$resopt_17_663" = bitcast %TName_Option_Uint32* %"$$resopt_17_658" to %CName_Some_Uint32*
  %"$$$resopt_17_75_gep_664" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_17_663", i32 0, i32 1
  %"$$$resopt_17_75_load_665" = load %Uint32, %Uint32* %"$$$resopt_17_75_gep_664", align 4
  %"$$resopt_17_75" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_17_75_load_665", %Uint32* %"$$resopt_17_75", align 4
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$Some_662"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$Some_662"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$false_671" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_671", %TName_Bool** %"$test_18", align 8, !dbg !121
  br label %"$matchsucc_657"

"$None_672":                                      ; preds = %"$have_gas_655"
  %"$$resopt_17_673" = bitcast %TName_Option_Uint32* %"$$resopt_17_658" to %CName_None_Uint32*
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$None_672"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$None_672"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$$test_15_679" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  store %TName_Bool* %"$$test_15_679", %TName_Bool** %"$test_18", align 8, !dbg !124
  br label %"$matchsucc_657"

"$empty_default_661":                             ; preds = %"$have_gas_655"
  br label %"$matchsucc_657"

"$matchsucc_657":                                 ; preds = %"$have_gas_677", %"$have_gas_669", %"$empty_default_661"
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$matchsucc_657"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$matchsucc_657"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$input_19" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$input_19", metadata !126, metadata !DIExpression()), !dbg !127
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$have_gas_683"
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %"$input_19", align 4, !dbg !128
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_688"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_688"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_20", metadata !129, metadata !DIExpression()), !dbg !132
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 4, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_693"
  %"$consume_699" = sub i64 %"$gasrem_695", 4
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$execptr_load_700" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_19_701" = alloca %Uint32, align 8
  %"$$input_19_702" = load %Uint32, %Uint32* %"$input_19", align 4
  store %Uint32 %"$$input_19_702", %Uint32* %"$to_uint64_$input_19_701", align 4
  %"$$to_uint64_$input_19_701_703" = bitcast %Uint32* %"$to_uint64_$input_19_701" to i8*
  %"$to_uint64_call_704" = call i8* @_to_uint64(i8* %"$execptr_load_700", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint64_$input_19_701_703"), !dbg !133
  %"$to_uint64_705" = bitcast i8* %"$to_uint64_call_704" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_705", %TName_Option_Uint64** %"$resopt_20", align 8, !dbg !133
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_698"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_21", metadata !134, metadata !DIExpression()), !dbg !135
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 2, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 2
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$$resopt_20_717" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_20", align 8
  %"$$resopt_20_tag_718" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_20_717", i32 0, i32 0
  %"$$resopt_20_tag_719" = load i8, i8* %"$$resopt_20_tag_718", align 1
  switch i8 %"$$resopt_20_tag_719", label %"$empty_default_720" [
    i8 0, label %"$Some_721"
    i8 1, label %"$None_766"
  ], !dbg !136

"$Some_721":                                      ; preds = %"$have_gas_714"
  %"$$resopt_20_722" = bitcast %TName_Option_Uint64* %"$$resopt_20_717" to %CName_Some_Uint64*
  %"$res_gep_723" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_20_722", i32 0, i32 1
  %"$res_load_724" = load %Uint64, %Uint64* %"$res_gep_723", align 8
  %res4 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_724", %Uint64* %res4, align 8
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$Some_721"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$Some_721"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %input_5 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %input_5, metadata !137, metadata !DIExpression()), !dbg !140
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %input_5, align 8, !dbg !141
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_733"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_6, metadata !142, metadata !DIExpression()), !dbg !143
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 4, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 4
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$execptr_load_745" = load i8*, i8** @_execptr, align 8
  %"$res_746" = load %Uint64, %Uint64* %res4, align 8
  %"$input__747" = load %Uint64, %Uint64* %input_5, align 8
  %"$eq_call_748" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_745", %Uint64 %"$res_746", %Uint64 %"$input__747"), !dbg !144
  store %TName_Bool* %"$eq_call_748", %TName_Bool** %test_6, align 8, !dbg !144
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_743"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$BoolUtils.andb_88" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_755" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_756" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_755", 0
  %"$BoolUtils.andb_envptr_757" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_755", 1
  %"$$test_18_758" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_759" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_756"(i8* %"$BoolUtils.andb_envptr_757", %TName_Bool* %"$$test_18_758"), !dbg !145
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_759", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8, !dbg !145
  %"$BoolUtils.andb_89" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_89", metadata !146, metadata !DIExpression()), !dbg !145
  %"$$BoolUtils.andb_88_760" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_fptr_761" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_760", 0
  %"$$BoolUtils.andb_88_envptr_762" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_88_760", 1
  %"$test__763" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_88_call_764" = call %TName_Bool* %"$$BoolUtils.andb_88_fptr_761"(i8* %"$$BoolUtils.andb_88_envptr_762", %TName_Bool* %"$test__763"), !dbg !145
  store %TName_Bool* %"$$BoolUtils.andb_88_call_764", %TName_Bool** %"$BoolUtils.andb_89", align 8, !dbg !145
  %"$$BoolUtils.andb_89_765" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_89", align 8
  store %TName_Bool* %"$$BoolUtils.andb_89_765", %TName_Bool** %"$test_21", align 8, !dbg !145
  br label %"$matchsucc_716"

"$None_766":                                      ; preds = %"$have_gas_714"
  %"$$resopt_20_767" = bitcast %TName_Option_Uint64* %"$$resopt_20_717" to %CName_None_Uint64*
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$None_766"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$None_766"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$false_773" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_773", %TName_Bool** %"$test_21", align 8, !dbg !147
  br label %"$matchsucc_716"

"$empty_default_720":                             ; preds = %"$have_gas_714"
  br label %"$matchsucc_716"

"$matchsucc_716":                                 ; preds = %"$have_gas_771", %"$have_gas_753", %"$empty_default_720"
  %"$gasrem_774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_775" = icmp ugt i64 1, %"$gasrem_774"
  br i1 %"$gascmp_775", label %"$out_of_gas_776", label %"$have_gas_777"

"$out_of_gas_776":                                ; preds = %"$matchsucc_716"
  call void @_out_of_gas()
  br label %"$have_gas_777"

"$have_gas_777":                                  ; preds = %"$out_of_gas_776", %"$matchsucc_716"
  %"$consume_778" = sub i64 %"$gasrem_774", 1
  store i64 %"$consume_778", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$input_22", metadata !149, metadata !DIExpression()), !dbg !150
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$have_gas_777"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$have_gas_777"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$input_22", align 8, !dbg !151
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 1, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_782"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_782"
  %"$consume_788" = sub i64 %"$gasrem_784", 1
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_23", metadata !152, metadata !DIExpression()), !dbg !153
  %"$gasrem_789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_790" = icmp ugt i64 4, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %"$have_gas_787"
  %"$consume_793" = sub i64 %"$gasrem_789", 4
  store i64 %"$consume_793", i64* @_gasrem, align 8
  %"$execptr_load_794" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_22_795" = alloca %Uint64, align 8
  %"$$input_22_796" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_796", %Uint64* %"$to_uint64_$input_22_795", align 8
  %"$$to_uint64_$input_22_795_797" = bitcast %Uint64* %"$to_uint64_$input_22_795" to i8*
  %"$to_uint64_call_798" = call i8* @_to_uint64(i8* %"$execptr_load_794", %_TyDescrTy_Typ* @"$TyDescr_Uint64_121", i8* %"$$to_uint64_$input_22_795_797"), !dbg !154
  %"$to_uint64_799" = bitcast i8* %"$to_uint64_call_798" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_799", %TName_Option_Uint64** %"$resopt_23", align 8, !dbg !154
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_792"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_792"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !155, metadata !DIExpression()), !dbg !156
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 2, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_803"
  %"$consume_809" = sub i64 %"$gasrem_805", 2
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$$resopt_23_811" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_23", align 8
  %"$$resopt_23_tag_812" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_23_811", i32 0, i32 0
  %"$$resopt_23_tag_813" = load i8, i8* %"$$resopt_23_tag_812", align 1
  switch i8 %"$$resopt_23_tag_813", label %"$empty_default_814" [
    i8 0, label %"$Some_815"
    i8 1, label %"$None_860"
  ], !dbg !157

"$Some_815":                                      ; preds = %"$have_gas_808"
  %"$$resopt_23_816" = bitcast %TName_Option_Uint64* %"$$resopt_23_811" to %CName_Some_Uint64*
  %"$res_gep_817" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_23_816", i32 0, i32 1
  %"$res_load_818" = load %Uint64, %Uint64* %"$res_gep_817", align 8
  %res7 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_818", %Uint64* %res7, align 8
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$Some_815"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$Some_815"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %input_8 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %input_8, metadata !158, metadata !DIExpression()), !dbg !161
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_8, align 8, !dbg !162
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %"$have_gas_827"
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_9, metadata !163, metadata !DIExpression()), !dbg !164
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 4, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 4
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$execptr_load_839" = load i8*, i8** @_execptr, align 8
  %"$res_840" = load %Uint64, %Uint64* %res7, align 8
  %"$input__841" = load %Uint64, %Uint64* %input_8, align 8
  %"$eq_call_842" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_839", %Uint64 %"$res_840", %Uint64 %"$input__841"), !dbg !165
  store %TName_Bool* %"$eq_call_842", %TName_Bool** %test_9, align 8, !dbg !165
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_837"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$BoolUtils.andb_90" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_849" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_850" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_849", 0
  %"$BoolUtils.andb_envptr_851" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_849", 1
  %"$$test_21_852" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  %"$BoolUtils.andb_call_853" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_850"(i8* %"$BoolUtils.andb_envptr_851", %TName_Bool* %"$$test_21_852"), !dbg !166
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_853", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8, !dbg !166
  %"$BoolUtils.andb_91" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_91", metadata !167, metadata !DIExpression()), !dbg !166
  %"$$BoolUtils.andb_90_854" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_fptr_855" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_854", 0
  %"$$BoolUtils.andb_90_envptr_856" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_90_854", 1
  %"$test__857" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_90_call_858" = call %TName_Bool* %"$$BoolUtils.andb_90_fptr_855"(i8* %"$$BoolUtils.andb_90_envptr_856", %TName_Bool* %"$test__857"), !dbg !166
  store %TName_Bool* %"$$BoolUtils.andb_90_call_858", %TName_Bool** %"$BoolUtils.andb_91", align 8, !dbg !166
  %"$$BoolUtils.andb_91_859" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_91", align 8
  store %TName_Bool* %"$$BoolUtils.andb_91_859", %TName_Bool** %"$test_24", align 8, !dbg !166
  br label %"$matchsucc_810"

"$None_860":                                      ; preds = %"$have_gas_808"
  %"$$resopt_23_861" = bitcast %TName_Option_Uint64* %"$$resopt_23_811" to %CName_None_Uint64*
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$None_860"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$None_860"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$false_867" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_867", %TName_Bool** %"$test_24", align 8, !dbg !168
  br label %"$matchsucc_810"

"$empty_default_814":                             ; preds = %"$have_gas_808"
  br label %"$matchsucc_810"

"$matchsucc_810":                                 ; preds = %"$have_gas_865", %"$have_gas_847", %"$empty_default_814"
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$matchsucc_810"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$matchsucc_810"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$input_25" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_25", metadata !170, metadata !DIExpression()), !dbg !171
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_871"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_25", align 8, !dbg !172
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_876"
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_26", metadata !173, metadata !DIExpression()), !dbg !174
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 4, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_881"
  %"$consume_887" = sub i64 %"$gasrem_883", 4
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$execptr_load_888" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_25_889" = alloca %Uint128, align 8
  %"$$input_25_890" = load %Uint128, %Uint128* %"$input_25", align 8
  store %Uint128 %"$$input_25_890", %Uint128* %"$to_uint64_$input_25_889", align 8
  %"$$to_uint64_$input_25_889_891" = bitcast %Uint128* %"$to_uint64_$input_25_889" to i8*
  %"$to_uint64_call_892" = call i8* @_to_uint64(i8* %"$execptr_load_888", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint64_$input_25_889_891"), !dbg !175
  %"$to_uint64_893" = bitcast i8* %"$to_uint64_call_892" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_893", %TName_Option_Uint64** %"$resopt_26", align 8, !dbg !175
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_886"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_27", metadata !176, metadata !DIExpression()), !dbg !177
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 2, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 2
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$$resopt_26_905" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_26", align 8
  %"$$resopt_26_tag_906" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_26_905", i32 0, i32 0
  %"$$resopt_26_tag_907" = load i8, i8* %"$$resopt_26_tag_906", align 1
  switch i8 %"$$resopt_26_tag_907", label %"$empty_default_908" [
    i8 0, label %"$Some_909"
    i8 1, label %"$None_954"
  ], !dbg !178

"$Some_909":                                      ; preds = %"$have_gas_902"
  %"$$resopt_26_910" = bitcast %TName_Option_Uint64* %"$$resopt_26_905" to %CName_Some_Uint64*
  %"$res_gep_911" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_26_910", i32 0, i32 1
  %"$res_load_912" = load %Uint64, %Uint64* %"$res_gep_911", align 8
  %res10 = alloca %Uint64, align 8
  store %Uint64 %"$res_load_912", %Uint64* %res10, align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$Some_909"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$Some_909"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %input_11 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %input_11, metadata !179, metadata !DIExpression()), !dbg !182
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 1, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_916"
  %"$consume_922" = sub i64 %"$gasrem_918", 1
  store i64 %"$consume_922", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %input_11, align 8, !dbg !183
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_921"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_12, metadata !184, metadata !DIExpression()), !dbg !185
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 4, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_926"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_926"
  %"$consume_932" = sub i64 %"$gasrem_928", 4
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$execptr_load_933" = load i8*, i8** @_execptr, align 8
  %"$res_934" = load %Uint64, %Uint64* %res10, align 8
  %"$input__935" = load %Uint64, %Uint64* %input_11, align 8
  %"$eq_call_936" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_933", %Uint64 %"$res_934", %Uint64 %"$input__935"), !dbg !186
  store %TName_Bool* %"$eq_call_936", %TName_Bool** %test_12, align 8, !dbg !186
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_931"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$BoolUtils.andb_92" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_943" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_944" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_943", 0
  %"$BoolUtils.andb_envptr_945" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_943", 1
  %"$$test_24_946" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_947" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_944"(i8* %"$BoolUtils.andb_envptr_945", %TName_Bool* %"$$test_24_946"), !dbg !187
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_947", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8, !dbg !187
  %"$BoolUtils.andb_93" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_93", metadata !188, metadata !DIExpression()), !dbg !187
  %"$$BoolUtils.andb_92_948" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_fptr_949" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_948", 0
  %"$$BoolUtils.andb_92_envptr_950" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_92_948", 1
  %"$test__951" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_92_call_952" = call %TName_Bool* %"$$BoolUtils.andb_92_fptr_949"(i8* %"$$BoolUtils.andb_92_envptr_950", %TName_Bool* %"$test__951"), !dbg !187
  store %TName_Bool* %"$$BoolUtils.andb_92_call_952", %TName_Bool** %"$BoolUtils.andb_93", align 8, !dbg !187
  %"$$BoolUtils.andb_93_953" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_93", align 8
  store %TName_Bool* %"$$BoolUtils.andb_93_953", %TName_Bool** %"$test_27", align 8, !dbg !187
  br label %"$matchsucc_904"

"$None_954":                                      ; preds = %"$have_gas_902"
  %"$$resopt_26_955" = bitcast %TName_Option_Uint64* %"$$resopt_26_905" to %CName_None_Uint64*
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$None_954"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$None_954"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %"$false_961" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_961", %TName_Bool** %"$test_27", align 8, !dbg !189
  br label %"$matchsucc_904"

"$empty_default_908":                             ; preds = %"$have_gas_902"
  br label %"$matchsucc_904"

"$matchsucc_904":                                 ; preds = %"$have_gas_959", %"$have_gas_941", %"$empty_default_908"
  %"$gasrem_962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_963" = icmp ugt i64 1, %"$gasrem_962"
  br i1 %"$gascmp_963", label %"$out_of_gas_964", label %"$have_gas_965"

"$out_of_gas_964":                                ; preds = %"$matchsucc_904"
  call void @_out_of_gas()
  br label %"$have_gas_965"

"$have_gas_965":                                  ; preds = %"$out_of_gas_964", %"$matchsucc_904"
  %"$consume_966" = sub i64 %"$gasrem_962", 1
  store i64 %"$consume_966", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_28", metadata !191, metadata !DIExpression()), !dbg !192
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 1, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$have_gas_965"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$have_gas_965"
  %"$consume_971" = sub i64 %"$gasrem_967", 1
  store i64 %"$consume_971", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551616 }, %Uint128* %"$input_28", align 8, !dbg !193
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 1, %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_970"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_970"
  %"$consume_976" = sub i64 %"$gasrem_972", 1
  store i64 %"$consume_976", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_29", metadata !194, metadata !DIExpression()), !dbg !195
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
  %"$to_uint64_$input_28_983" = alloca %Uint128, align 8
  %"$$input_28_984" = load %Uint128, %Uint128* %"$input_28", align 8
  store %Uint128 %"$$input_28_984", %Uint128* %"$to_uint64_$input_28_983", align 8
  %"$$to_uint64_$input_28_983_985" = bitcast %Uint128* %"$to_uint64_$input_28_983" to i8*
  %"$to_uint64_call_986" = call i8* @_to_uint64(i8* %"$execptr_load_982", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint64_$input_28_983_985"), !dbg !196
  %"$to_uint64_987" = bitcast i8* %"$to_uint64_call_986" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_987", %TName_Option_Uint64** %"$resopt_29", align 8, !dbg !196
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
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !197, metadata !DIExpression()), !dbg !198
  %"$gasrem_993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_994" = icmp ugt i64 2, %"$gasrem_993"
  br i1 %"$gascmp_994", label %"$out_of_gas_995", label %"$have_gas_996"

"$out_of_gas_995":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_996"

"$have_gas_996":                                  ; preds = %"$out_of_gas_995", %"$have_gas_991"
  %"$consume_997" = sub i64 %"$gasrem_993", 2
  store i64 %"$consume_997", i64* @_gasrem, align 8
  %"$$resopt_29_999" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_29", align 8
  %"$$resopt_29_tag_1000" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_29_999", i32 0, i32 0
  %"$$resopt_29_tag_1001" = load i8, i8* %"$$resopt_29_tag_1000", align 1
  switch i8 %"$$resopt_29_tag_1001", label %"$empty_default_1002" [
    i8 0, label %"$Some_1003"
    i8 1, label %"$None_1013"
  ], !dbg !199

"$Some_1003":                                     ; preds = %"$have_gas_996"
  %"$$resopt_29_1004" = bitcast %TName_Option_Uint64* %"$$resopt_29_999" to %CName_Some_Uint64*
  %"$$$resopt_29_76_gep_1005" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_29_1004", i32 0, i32 1
  %"$$$resopt_29_76_load_1006" = load %Uint64, %Uint64* %"$$$resopt_29_76_gep_1005", align 8
  %"$$resopt_29_76" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_29_76_load_1006", %Uint64* %"$$resopt_29_76", align 8
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$Some_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$Some_1003"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %"$false_1012" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1012", %TName_Bool** %"$test_30", align 8, !dbg !200
  br label %"$matchsucc_998"

"$None_1013":                                     ; preds = %"$have_gas_996"
  %"$$resopt_29_1014" = bitcast %TName_Option_Uint64* %"$$resopt_29_999" to %CName_None_Uint64*
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$None_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$None_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %"$$test_27_1020" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  store %TName_Bool* %"$$test_27_1020", %TName_Bool** %"$test_30", align 8, !dbg !203
  br label %"$matchsucc_998"

"$empty_default_1002":                            ; preds = %"$have_gas_996"
  br label %"$matchsucc_998"

"$matchsucc_998":                                 ; preds = %"$have_gas_1018", %"$have_gas_1010", %"$empty_default_1002"
  %"$gasrem_1021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1022" = icmp ugt i64 1, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %"$matchsucc_998"
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %"$matchsucc_998"
  %"$consume_1025" = sub i64 %"$gasrem_1021", 1
  store i64 %"$consume_1025", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_31", metadata !205, metadata !DIExpression()), !dbg !206
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1024"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  store %Uint256 { i256 18446744073709551616 }, %Uint256* %"$input_31", align 8, !dbg !207
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1029"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_32", metadata !208, metadata !DIExpression()), !dbg !209
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 4, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %"$have_gas_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %"$have_gas_1034"
  %"$consume_1040" = sub i64 %"$gasrem_1036", 4
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  %"$execptr_load_1041" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_31_1042" = alloca %Uint256, align 8
  %"$$input_31_1043" = load %Uint256, %Uint256* %"$input_31", align 8
  store %Uint256 %"$$input_31_1043", %Uint256* %"$to_uint64_$input_31_1042", align 8
  %"$$to_uint64_$input_31_1042_1044" = bitcast %Uint256* %"$to_uint64_$input_31_1042" to i8*
  %"$to_uint64_call_1045" = call i8* @_to_uint64(i8* %"$execptr_load_1041", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint64_$input_31_1042_1044"), !dbg !210
  %"$to_uint64_1046" = bitcast i8* %"$to_uint64_call_1045" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_1046", %TName_Option_Uint64** %"$resopt_32", align 8, !dbg !210
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1039"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_33", metadata !211, metadata !DIExpression()), !dbg !212
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 2, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1050"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 2
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$$resopt_32_1058" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_32", align 8
  %"$$resopt_32_tag_1059" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_32_1058", i32 0, i32 0
  %"$$resopt_32_tag_1060" = load i8, i8* %"$$resopt_32_tag_1059", align 1
  switch i8 %"$$resopt_32_tag_1060", label %"$empty_default_1061" [
    i8 0, label %"$Some_1062"
    i8 1, label %"$None_1072"
  ], !dbg !213

"$Some_1062":                                     ; preds = %"$have_gas_1055"
  %"$$resopt_32_1063" = bitcast %TName_Option_Uint64* %"$$resopt_32_1058" to %CName_Some_Uint64*
  %"$$$resopt_32_77_gep_1064" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_32_1063", i32 0, i32 1
  %"$$$resopt_32_77_load_1065" = load %Uint64, %Uint64* %"$$$resopt_32_77_gep_1064", align 8
  %"$$resopt_32_77" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_32_77_load_1065", %Uint64* %"$$resopt_32_77", align 8
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$Some_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$Some_1062"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %"$false_1071" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1071", %TName_Bool** %"$test_33", align 8, !dbg !214
  br label %"$matchsucc_1057"

"$None_1072":                                     ; preds = %"$have_gas_1055"
  %"$$resopt_32_1073" = bitcast %TName_Option_Uint64* %"$$resopt_32_1058" to %CName_None_Uint64*
  %"$gasrem_1074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1075" = icmp ugt i64 1, %"$gasrem_1074"
  br i1 %"$gascmp_1075", label %"$out_of_gas_1076", label %"$have_gas_1077"

"$out_of_gas_1076":                               ; preds = %"$None_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1077"

"$have_gas_1077":                                 ; preds = %"$out_of_gas_1076", %"$None_1072"
  %"$consume_1078" = sub i64 %"$gasrem_1074", 1
  store i64 %"$consume_1078", i64* @_gasrem, align 8
  %"$$test_30_1079" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  store %TName_Bool* %"$$test_30_1079", %TName_Bool** %"$test_33", align 8, !dbg !217
  br label %"$matchsucc_1057"

"$empty_default_1061":                            ; preds = %"$have_gas_1055"
  br label %"$matchsucc_1057"

"$matchsucc_1057":                                ; preds = %"$have_gas_1077", %"$have_gas_1069", %"$empty_default_1061"
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$matchsucc_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$matchsucc_1057"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  %"$input_34" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_34", metadata !219, metadata !DIExpression()), !dbg !220
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1083"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %"$input_34", align 8, !dbg !221
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1088"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$resopt_35", metadata !222, metadata !DIExpression()), !dbg !225
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 8, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1093"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 8
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  %"$execptr_load_1100" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_34_1101" = alloca %Uint128, align 8
  %"$$input_34_1102" = load %Uint128, %Uint128* %"$input_34", align 8
  store %Uint128 %"$$input_34_1102", %Uint128* %"$to_uint128_$input_34_1101", align 8
  %"$$to_uint128_$input_34_1101_1103" = bitcast %Uint128* %"$to_uint128_$input_34_1101" to i8*
  %"$to_uint128_call_1104" = call i8* @_to_uint128(i8* %"$execptr_load_1100", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint128_$input_34_1101_1103"), !dbg !226
  %"$to_uint128_1105" = bitcast i8* %"$to_uint128_call_1104" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1105", %TName_Option_Uint128** %"$resopt_35", align 8, !dbg !226
  %"$gasrem_1106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1107" = icmp ugt i64 1, %"$gasrem_1106"
  br i1 %"$gascmp_1107", label %"$out_of_gas_1108", label %"$have_gas_1109"

"$out_of_gas_1108":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1109"

"$have_gas_1109":                                 ; preds = %"$out_of_gas_1108", %"$have_gas_1098"
  %"$consume_1110" = sub i64 %"$gasrem_1106", 1
  store i64 %"$consume_1110", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !227, metadata !DIExpression()), !dbg !228
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 2, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1109"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1109"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 2
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$$resopt_35_1117" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_35", align 8
  %"$$resopt_35_tag_1118" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_35_1117", i32 0, i32 0
  %"$$resopt_35_tag_1119" = load i8, i8* %"$$resopt_35_tag_1118", align 1
  switch i8 %"$$resopt_35_tag_1119", label %"$empty_default_1120" [
    i8 0, label %"$Some_1121"
    i8 1, label %"$None_1167"
  ], !dbg !229

"$Some_1121":                                     ; preds = %"$have_gas_1114"
  %"$$resopt_35_1122" = bitcast %TName_Option_Uint128* %"$$resopt_35_1117" to %CName_Some_Uint128*
  %"$res_gep_1123" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_35_1122", i32 0, i32 1
  %"$res_load_1124" = load %Uint128, %Uint128* %"$res_gep_1123", align 8
  %res13 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1124", %Uint128* %res13, align 8
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$Some_1121"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$Some_1121"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %input_14 = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %input_14, metadata !230, metadata !DIExpression()), !dbg !233
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1128"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  store %Uint128 { i128 18446744073709551615 }, %Uint128* %input_14, align 8, !dbg !234
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1133"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1133"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_15, metadata !235, metadata !DIExpression()), !dbg !236
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 8, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1138"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 8
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %"$execptr_load_1146" = load i8*, i8** @_execptr, align 8
  %"$res_1147" = load %Uint128, %Uint128* %res13, align 8
  %"$input__1148" = load %Uint128, %Uint128* %input_14, align 8
  %"$eq_call_1149" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1146", %Uint128 %"$res_1147", %Uint128 %"$input__1148"), !dbg !237
  store %TName_Bool* %"$eq_call_1149", %TName_Bool** %test_15, align 8, !dbg !237
  %"$gasrem_1151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1152" = icmp ugt i64 1, %"$gasrem_1151"
  br i1 %"$gascmp_1152", label %"$out_of_gas_1153", label %"$have_gas_1154"

"$out_of_gas_1153":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1154"

"$have_gas_1154":                                 ; preds = %"$out_of_gas_1153", %"$have_gas_1144"
  %"$consume_1155" = sub i64 %"$gasrem_1151", 1
  store i64 %"$consume_1155", i64* @_gasrem, align 8
  %"$BoolUtils.andb_94" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1156" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1157" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1156", 0
  %"$BoolUtils.andb_envptr_1158" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1156", 1
  %"$$test_33_1159" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1160" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1157"(i8* %"$BoolUtils.andb_envptr_1158", %TName_Bool* %"$$test_33_1159"), !dbg !238
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1160", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8, !dbg !238
  %"$BoolUtils.andb_95" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_95", metadata !239, metadata !DIExpression()), !dbg !238
  %"$$BoolUtils.andb_94_1161" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_fptr_1162" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1161", 0
  %"$$BoolUtils.andb_94_envptr_1163" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_94_1161", 1
  %"$test__1164" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_94_call_1165" = call %TName_Bool* %"$$BoolUtils.andb_94_fptr_1162"(i8* %"$$BoolUtils.andb_94_envptr_1163", %TName_Bool* %"$test__1164"), !dbg !238
  store %TName_Bool* %"$$BoolUtils.andb_94_call_1165", %TName_Bool** %"$BoolUtils.andb_95", align 8, !dbg !238
  %"$$BoolUtils.andb_95_1166" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_95", align 8
  store %TName_Bool* %"$$BoolUtils.andb_95_1166", %TName_Bool** %"$test_36", align 8, !dbg !238
  br label %"$matchsucc_1116"

"$None_1167":                                     ; preds = %"$have_gas_1114"
  %"$$resopt_35_1168" = bitcast %TName_Option_Uint128* %"$$resopt_35_1117" to %CName_None_Uint128*
  %"$gasrem_1169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1170" = icmp ugt i64 1, %"$gasrem_1169"
  br i1 %"$gascmp_1170", label %"$out_of_gas_1171", label %"$have_gas_1172"

"$out_of_gas_1171":                               ; preds = %"$None_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1172"

"$have_gas_1172":                                 ; preds = %"$out_of_gas_1171", %"$None_1167"
  %"$consume_1173" = sub i64 %"$gasrem_1169", 1
  store i64 %"$consume_1173", i64* @_gasrem, align 8
  %"$false_1174" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1174", %TName_Bool** %"$test_36", align 8, !dbg !240
  br label %"$matchsucc_1116"

"$empty_default_1120":                            ; preds = %"$have_gas_1114"
  br label %"$matchsucc_1116"

"$matchsucc_1116":                                ; preds = %"$have_gas_1172", %"$have_gas_1154", %"$empty_default_1120"
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 1, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$matchsucc_1116"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$matchsucc_1116"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 1
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$input_37", metadata !242, metadata !DIExpression()), !dbg !243
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 1, %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$have_gas_1178"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$have_gas_1178"
  %"$consume_1184" = sub i64 %"$gasrem_1180", 1
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$input_37", align 8, !dbg !244
  %"$gasrem_1185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1186" = icmp ugt i64 1, %"$gasrem_1185"
  br i1 %"$gascmp_1186", label %"$out_of_gas_1187", label %"$have_gas_1188"

"$out_of_gas_1187":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1188"

"$have_gas_1188":                                 ; preds = %"$out_of_gas_1187", %"$have_gas_1183"
  %"$consume_1189" = sub i64 %"$gasrem_1185", 1
  store i64 %"$consume_1189", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$resopt_38", metadata !245, metadata !DIExpression()), !dbg !246
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 8, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1188"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1188"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 8
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %"$execptr_load_1195" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_37_1196" = alloca %Uint128, align 8
  %"$$input_37_1197" = load %Uint128, %Uint128* %"$input_37", align 8
  store %Uint128 %"$$input_37_1197", %Uint128* %"$to_uint128_$input_37_1196", align 8
  %"$$to_uint128_$input_37_1196_1198" = bitcast %Uint128* %"$to_uint128_$input_37_1196" to i8*
  %"$to_uint128_call_1199" = call i8* @_to_uint128(i8* %"$execptr_load_1195", %_TyDescrTy_Typ* @"$TyDescr_Uint128_125", i8* %"$$to_uint128_$input_37_1196_1198"), !dbg !247
  %"$to_uint128_1200" = bitcast i8* %"$to_uint128_call_1199" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1200", %TName_Option_Uint128** %"$resopt_38", align 8, !dbg !247
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1193"
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_39", metadata !248, metadata !DIExpression()), !dbg !249
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 2, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1204"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 2
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %"$$resopt_38_1212" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_38", align 8
  %"$$resopt_38_tag_1213" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_38_1212", i32 0, i32 0
  %"$$resopt_38_tag_1214" = load i8, i8* %"$$resopt_38_tag_1213", align 1
  switch i8 %"$$resopt_38_tag_1214", label %"$empty_default_1215" [
    i8 0, label %"$Some_1216"
    i8 1, label %"$None_1262"
  ], !dbg !250

"$Some_1216":                                     ; preds = %"$have_gas_1209"
  %"$$resopt_38_1217" = bitcast %TName_Option_Uint128* %"$$resopt_38_1212" to %CName_Some_Uint128*
  %"$res_gep_1218" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_38_1217", i32 0, i32 1
  %"$res_load_1219" = load %Uint128, %Uint128* %"$res_gep_1218", align 8
  %res16 = alloca %Uint128, align 8
  store %Uint128 %"$res_load_1219", %Uint128* %res16, align 8
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 1, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$Some_1216"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$Some_1216"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 1
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  %input_17 = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %input_17, metadata !251, metadata !DIExpression()), !dbg !254
  %"$gasrem_1225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1226" = icmp ugt i64 1, %"$gasrem_1225"
  br i1 %"$gascmp_1226", label %"$out_of_gas_1227", label %"$have_gas_1228"

"$out_of_gas_1227":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1228"

"$have_gas_1228":                                 ; preds = %"$out_of_gas_1227", %"$have_gas_1223"
  %"$consume_1229" = sub i64 %"$gasrem_1225", 1
  store i64 %"$consume_1229", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %input_17, align 8, !dbg !255
  %"$gasrem_1230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1231" = icmp ugt i64 1, %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$have_gas_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$have_gas_1228"
  %"$consume_1234" = sub i64 %"$gasrem_1230", 1
  store i64 %"$consume_1234", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_18, metadata !256, metadata !DIExpression()), !dbg !257
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 8, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1233"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 8
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %"$execptr_load_1241" = load i8*, i8** @_execptr, align 8
  %"$res_1242" = load %Uint128, %Uint128* %res16, align 8
  %"$input__1243" = load %Uint128, %Uint128* %input_17, align 8
  %"$eq_call_1244" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1241", %Uint128 %"$res_1242", %Uint128 %"$input__1243"), !dbg !258
  store %TName_Bool* %"$eq_call_1244", %TName_Bool** %test_18, align 8, !dbg !258
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1239"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %"$BoolUtils.andb_96" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1251" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1252" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1251", 0
  %"$BoolUtils.andb_envptr_1253" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1251", 1
  %"$$test_36_1254" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1255" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1252"(i8* %"$BoolUtils.andb_envptr_1253", %TName_Bool* %"$$test_36_1254"), !dbg !259
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1255", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8, !dbg !259
  %"$BoolUtils.andb_97" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_97", metadata !260, metadata !DIExpression()), !dbg !259
  %"$$BoolUtils.andb_96_1256" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_fptr_1257" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1256", 0
  %"$$BoolUtils.andb_96_envptr_1258" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_96_1256", 1
  %"$test__1259" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_96_call_1260" = call %TName_Bool* %"$$BoolUtils.andb_96_fptr_1257"(i8* %"$$BoolUtils.andb_96_envptr_1258", %TName_Bool* %"$test__1259"), !dbg !259
  store %TName_Bool* %"$$BoolUtils.andb_96_call_1260", %TName_Bool** %"$BoolUtils.andb_97", align 8, !dbg !259
  %"$$BoolUtils.andb_97_1261" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_97", align 8
  store %TName_Bool* %"$$BoolUtils.andb_97_1261", %TName_Bool** %"$test_39", align 8, !dbg !259
  br label %"$matchsucc_1211"

"$None_1262":                                     ; preds = %"$have_gas_1209"
  %"$$resopt_38_1263" = bitcast %TName_Option_Uint128* %"$$resopt_38_1212" to %CName_None_Uint128*
  %"$gasrem_1264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1265" = icmp ugt i64 1, %"$gasrem_1264"
  br i1 %"$gascmp_1265", label %"$out_of_gas_1266", label %"$have_gas_1267"

"$out_of_gas_1266":                               ; preds = %"$None_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1267"

"$have_gas_1267":                                 ; preds = %"$out_of_gas_1266", %"$None_1262"
  %"$consume_1268" = sub i64 %"$gasrem_1264", 1
  store i64 %"$consume_1268", i64* @_gasrem, align 8
  %"$false_1269" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1269", %TName_Bool** %"$test_39", align 8, !dbg !261
  br label %"$matchsucc_1211"

"$empty_default_1215":                            ; preds = %"$have_gas_1209"
  br label %"$matchsucc_1211"

"$matchsucc_1211":                                ; preds = %"$have_gas_1267", %"$have_gas_1249", %"$empty_default_1215"
  %"$gasrem_1270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1271" = icmp ugt i64 1, %"$gasrem_1270"
  br i1 %"$gascmp_1271", label %"$out_of_gas_1272", label %"$have_gas_1273"

"$out_of_gas_1272":                               ; preds = %"$matchsucc_1211"
  call void @_out_of_gas()
  br label %"$have_gas_1273"

"$have_gas_1273":                                 ; preds = %"$out_of_gas_1272", %"$matchsucc_1211"
  %"$consume_1274" = sub i64 %"$gasrem_1270", 1
  store i64 %"$consume_1274", i64* @_gasrem, align 8
  %"$input_40" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_40", metadata !263, metadata !DIExpression()), !dbg !264
  %"$gasrem_1275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1276" = icmp ugt i64 1, %"$gasrem_1275"
  br i1 %"$gascmp_1276", label %"$out_of_gas_1277", label %"$have_gas_1278"

"$out_of_gas_1277":                               ; preds = %"$have_gas_1273"
  call void @_out_of_gas()
  br label %"$have_gas_1278"

"$have_gas_1278":                                 ; preds = %"$out_of_gas_1277", %"$have_gas_1273"
  %"$consume_1279" = sub i64 %"$gasrem_1275", 1
  store i64 %"$consume_1279", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_40", align 8, !dbg !265
  %"$gasrem_1280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1281" = icmp ugt i64 1, %"$gasrem_1280"
  br i1 %"$gascmp_1281", label %"$out_of_gas_1282", label %"$have_gas_1283"

"$out_of_gas_1282":                               ; preds = %"$have_gas_1278"
  call void @_out_of_gas()
  br label %"$have_gas_1283"

"$have_gas_1283":                                 ; preds = %"$out_of_gas_1282", %"$have_gas_1278"
  %"$consume_1284" = sub i64 %"$gasrem_1280", 1
  store i64 %"$consume_1284", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$resopt_41", metadata !266, metadata !DIExpression()), !dbg !267
  %"$gasrem_1285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1286" = icmp ugt i64 8, %"$gasrem_1285"
  br i1 %"$gascmp_1286", label %"$out_of_gas_1287", label %"$have_gas_1288"

"$out_of_gas_1287":                               ; preds = %"$have_gas_1283"
  call void @_out_of_gas()
  br label %"$have_gas_1288"

"$have_gas_1288":                                 ; preds = %"$out_of_gas_1287", %"$have_gas_1283"
  %"$consume_1289" = sub i64 %"$gasrem_1285", 8
  store i64 %"$consume_1289", i64* @_gasrem, align 8
  %"$execptr_load_1290" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_$input_40_1291" = alloca %Uint256, align 8
  %"$$input_40_1292" = load %Uint256, %Uint256* %"$input_40", align 8
  store %Uint256 %"$$input_40_1292", %Uint256* %"$to_uint128_$input_40_1291", align 8
  %"$$to_uint128_$input_40_1291_1293" = bitcast %Uint256* %"$to_uint128_$input_40_1291" to i8*
  %"$to_uint128_call_1294" = call i8* @_to_uint128(i8* %"$execptr_load_1290", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint128_$input_40_1291_1293"), !dbg !268
  %"$to_uint128_1295" = bitcast i8* %"$to_uint128_call_1294" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$to_uint128_1295", %TName_Option_Uint128** %"$resopt_41", align 8, !dbg !268
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 1, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$have_gas_1288"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$have_gas_1288"
  %"$consume_1300" = sub i64 %"$gasrem_1296", 1
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !269, metadata !DIExpression()), !dbg !270
  %"$gasrem_1301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1302" = icmp ugt i64 2, %"$gasrem_1301"
  br i1 %"$gascmp_1302", label %"$out_of_gas_1303", label %"$have_gas_1304"

"$out_of_gas_1303":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1304"

"$have_gas_1304":                                 ; preds = %"$out_of_gas_1303", %"$have_gas_1299"
  %"$consume_1305" = sub i64 %"$gasrem_1301", 2
  store i64 %"$consume_1305", i64* @_gasrem, align 8
  %"$$resopt_41_1307" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$resopt_41", align 8
  %"$$resopt_41_tag_1308" = getelementptr inbounds %TName_Option_Uint128, %TName_Option_Uint128* %"$$resopt_41_1307", i32 0, i32 0
  %"$$resopt_41_tag_1309" = load i8, i8* %"$$resopt_41_tag_1308", align 1
  switch i8 %"$$resopt_41_tag_1309", label %"$empty_default_1310" [
    i8 0, label %"$Some_1311"
    i8 1, label %"$None_1321"
  ], !dbg !271

"$Some_1311":                                     ; preds = %"$have_gas_1304"
  %"$$resopt_41_1312" = bitcast %TName_Option_Uint128* %"$$resopt_41_1307" to %CName_Some_Uint128*
  %"$$$resopt_41_78_gep_1313" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$$resopt_41_1312", i32 0, i32 1
  %"$$$resopt_41_78_load_1314" = load %Uint128, %Uint128* %"$$$resopt_41_78_gep_1313", align 8
  %"$$resopt_41_78" = alloca %Uint128, align 8
  store %Uint128 %"$$$resopt_41_78_load_1314", %Uint128* %"$$resopt_41_78", align 8
  %"$gasrem_1315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1316" = icmp ugt i64 1, %"$gasrem_1315"
  br i1 %"$gascmp_1316", label %"$out_of_gas_1317", label %"$have_gas_1318"

"$out_of_gas_1317":                               ; preds = %"$Some_1311"
  call void @_out_of_gas()
  br label %"$have_gas_1318"

"$have_gas_1318":                                 ; preds = %"$out_of_gas_1317", %"$Some_1311"
  %"$consume_1319" = sub i64 %"$gasrem_1315", 1
  store i64 %"$consume_1319", i64* @_gasrem, align 8
  %"$false_1320" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1320", %TName_Bool** %"$test_42", align 8, !dbg !272
  br label %"$matchsucc_1306"

"$None_1321":                                     ; preds = %"$have_gas_1304"
  %"$$resopt_41_1322" = bitcast %TName_Option_Uint128* %"$$resopt_41_1307" to %CName_None_Uint128*
  %"$gasrem_1323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1324" = icmp ugt i64 1, %"$gasrem_1323"
  br i1 %"$gascmp_1324", label %"$out_of_gas_1325", label %"$have_gas_1326"

"$out_of_gas_1325":                               ; preds = %"$None_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1326"

"$have_gas_1326":                                 ; preds = %"$out_of_gas_1325", %"$None_1321"
  %"$consume_1327" = sub i64 %"$gasrem_1323", 1
  store i64 %"$consume_1327", i64* @_gasrem, align 8
  %"$$test_39_1328" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  store %TName_Bool* %"$$test_39_1328", %TName_Bool** %"$test_42", align 8, !dbg !275
  br label %"$matchsucc_1306"

"$empty_default_1310":                            ; preds = %"$have_gas_1304"
  br label %"$matchsucc_1306"

"$matchsucc_1306":                                ; preds = %"$have_gas_1326", %"$have_gas_1318", %"$empty_default_1310"
  %"$gasrem_1329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1330" = icmp ugt i64 1, %"$gasrem_1329"
  br i1 %"$gascmp_1330", label %"$out_of_gas_1331", label %"$have_gas_1332"

"$out_of_gas_1331":                               ; preds = %"$matchsucc_1306"
  call void @_out_of_gas()
  br label %"$have_gas_1332"

"$have_gas_1332":                                 ; preds = %"$out_of_gas_1331", %"$matchsucc_1306"
  %"$consume_1333" = sub i64 %"$gasrem_1329", 1
  store i64 %"$consume_1333", i64* @_gasrem, align 8
  %"$input_43" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$input_43", metadata !277, metadata !DIExpression()), !dbg !278
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$have_gas_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$have_gas_1332"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %"$input_43", align 8, !dbg !279
  %"$gasrem_1339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1340" = icmp ugt i64 1, %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %"$have_gas_1337"
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %"$have_gas_1337"
  %"$consume_1343" = sub i64 %"$gasrem_1339", 1
  store i64 %"$consume_1343", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_44", metadata !280, metadata !DIExpression()), !dbg !283
  %"$gasrem_1344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1345" = icmp ugt i64 16, %"$gasrem_1344"
  br i1 %"$gascmp_1345", label %"$out_of_gas_1346", label %"$have_gas_1347"

"$out_of_gas_1346":                               ; preds = %"$have_gas_1342"
  call void @_out_of_gas()
  br label %"$have_gas_1347"

"$have_gas_1347":                                 ; preds = %"$out_of_gas_1346", %"$have_gas_1342"
  %"$consume_1348" = sub i64 %"$gasrem_1344", 16
  store i64 %"$consume_1348", i64* @_gasrem, align 8
  %"$execptr_load_1349" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_43_1350" = alloca %Uint256, align 8
  %"$$input_43_1351" = load %Uint256, %Uint256* %"$input_43", align 8
  store %Uint256 %"$$input_43_1351", %Uint256* %"$to_uint256_$input_43_1350", align 8
  %"$$to_uint256_$input_43_1350_1352" = bitcast %Uint256* %"$to_uint256_$input_43_1350" to i8*
  %"$to_uint256_call_1353" = call i8* @_to_uint256(i8* %"$execptr_load_1349", %_TyDescrTy_Typ* @"$TyDescr_Uint256_129", i8* %"$$to_uint256_$input_43_1350_1352"), !dbg !284
  %"$to_uint256_1354" = bitcast i8* %"$to_uint256_call_1353" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1354", %TName_Option_Uint256** %"$resopt_44", align 8, !dbg !284
  %"$gasrem_1355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1356" = icmp ugt i64 1, %"$gasrem_1355"
  br i1 %"$gascmp_1356", label %"$out_of_gas_1357", label %"$have_gas_1358"

"$out_of_gas_1357":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1358"

"$have_gas_1358":                                 ; preds = %"$out_of_gas_1357", %"$have_gas_1347"
  %"$consume_1359" = sub i64 %"$gasrem_1355", 1
  store i64 %"$consume_1359", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_45", metadata !285, metadata !DIExpression()), !dbg !286
  %"$gasrem_1360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1361" = icmp ugt i64 2, %"$gasrem_1360"
  br i1 %"$gascmp_1361", label %"$out_of_gas_1362", label %"$have_gas_1363"

"$out_of_gas_1362":                               ; preds = %"$have_gas_1358"
  call void @_out_of_gas()
  br label %"$have_gas_1363"

"$have_gas_1363":                                 ; preds = %"$out_of_gas_1362", %"$have_gas_1358"
  %"$consume_1364" = sub i64 %"$gasrem_1360", 2
  store i64 %"$consume_1364", i64* @_gasrem, align 8
  %"$$resopt_44_1366" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_44", align 8
  %"$$resopt_44_tag_1367" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_44_1366", i32 0, i32 0
  %"$$resopt_44_tag_1368" = load i8, i8* %"$$resopt_44_tag_1367", align 1
  switch i8 %"$$resopt_44_tag_1368", label %"$empty_default_1369" [
    i8 0, label %"$Some_1370"
    i8 1, label %"$None_1418"
  ], !dbg !287

"$Some_1370":                                     ; preds = %"$have_gas_1363"
  %"$$resopt_44_1371" = bitcast %TName_Option_Uint256* %"$$resopt_44_1366" to %CName_Some_Uint256*
  %"$res_gep_1372" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_44_1371", i32 0, i32 1
  %"$res_load_1373" = load %Uint256, %Uint256* %"$res_gep_1372", align 8
  %res19 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1373", %Uint256* %res19, align 8
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 1, %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$Some_1370"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$Some_1370"
  %"$consume_1378" = sub i64 %"$gasrem_1374", 1
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  %input_20 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_20, metadata !288, metadata !DIExpression()), !dbg !291
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1377"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1377"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211456 }, %Uint256* %input_20, align 8, !dbg !292
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1382"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_21, metadata !293, metadata !DIExpression()), !dbg !294
  %"$gasrem_1390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1391" = icmp ugt i64 16, %"$gasrem_1390"
  br i1 %"$gascmp_1391", label %"$out_of_gas_1392", label %"$have_gas_1393"

"$out_of_gas_1392":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1393"

"$have_gas_1393":                                 ; preds = %"$out_of_gas_1392", %"$have_gas_1387"
  %"$consume_1394" = sub i64 %"$gasrem_1390", 16
  store i64 %"$consume_1394", i64* @_gasrem, align 8
  %"$execptr_load_1395" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1396" = alloca %Uint256, align 8
  %"$res_1397" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res_1397", %Uint256* %"$eq_res_1396", align 8
  %"$eq_input__1398" = alloca %Uint256, align 8
  %"$input__1399" = load %Uint256, %Uint256* %input_20, align 8
  store %Uint256 %"$input__1399", %Uint256* %"$eq_input__1398", align 8
  %"$eq_call_1400" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1395", %Uint256* %"$eq_res_1396", %Uint256* %"$eq_input__1398"), !dbg !295
  store %TName_Bool* %"$eq_call_1400", %TName_Bool** %test_21, align 8, !dbg !295
  %"$gasrem_1402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1403" = icmp ugt i64 1, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$have_gas_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$have_gas_1393"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 1
  store i64 %"$consume_1406", i64* @_gasrem, align 8
  %"$BoolUtils.andb_98" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1407" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1408" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1407", 0
  %"$BoolUtils.andb_envptr_1409" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1407", 1
  %"$$test_42_1410" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1411" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1408"(i8* %"$BoolUtils.andb_envptr_1409", %TName_Bool* %"$$test_42_1410"), !dbg !296
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1411", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8, !dbg !296
  %"$BoolUtils.andb_99" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_99", metadata !297, metadata !DIExpression()), !dbg !296
  %"$$BoolUtils.andb_98_1412" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_fptr_1413" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1412", 0
  %"$$BoolUtils.andb_98_envptr_1414" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_98_1412", 1
  %"$test__1415" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_98_call_1416" = call %TName_Bool* %"$$BoolUtils.andb_98_fptr_1413"(i8* %"$$BoolUtils.andb_98_envptr_1414", %TName_Bool* %"$test__1415"), !dbg !296
  store %TName_Bool* %"$$BoolUtils.andb_98_call_1416", %TName_Bool** %"$BoolUtils.andb_99", align 8, !dbg !296
  %"$$BoolUtils.andb_99_1417" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_99", align 8
  store %TName_Bool* %"$$BoolUtils.andb_99_1417", %TName_Bool** %"$test_45", align 8, !dbg !296
  br label %"$matchsucc_1365"

"$None_1418":                                     ; preds = %"$have_gas_1363"
  %"$$resopt_44_1419" = bitcast %TName_Option_Uint256* %"$$resopt_44_1366" to %CName_None_Uint256*
  %"$gasrem_1420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1421" = icmp ugt i64 1, %"$gasrem_1420"
  br i1 %"$gascmp_1421", label %"$out_of_gas_1422", label %"$have_gas_1423"

"$out_of_gas_1422":                               ; preds = %"$None_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1423"

"$have_gas_1423":                                 ; preds = %"$out_of_gas_1422", %"$None_1418"
  %"$consume_1424" = sub i64 %"$gasrem_1420", 1
  store i64 %"$consume_1424", i64* @_gasrem, align 8
  %"$false_1425" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1425", %TName_Bool** %"$test_45", align 8, !dbg !298
  br label %"$matchsucc_1365"

"$empty_default_1369":                            ; preds = %"$have_gas_1363"
  br label %"$matchsucc_1365"

"$matchsucc_1365":                                ; preds = %"$have_gas_1423", %"$have_gas_1405", %"$empty_default_1369"
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 1, %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %"$matchsucc_1365"
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %"$matchsucc_1365"
  %"$consume_1430" = sub i64 %"$gasrem_1426", 1
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %"$input_46" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$input_46", metadata !300, metadata !DIExpression()), !dbg !301
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 1, %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$have_gas_1429"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$have_gas_1429"
  %"$consume_1435" = sub i64 %"$gasrem_1431", 1
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  store %Uint32 { i32 22 }, %Uint32* %"$input_46", align 4, !dbg !302
  %"$gasrem_1436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$have_gas_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$have_gas_1434"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_47", metadata !303, metadata !DIExpression()), !dbg !304
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 16, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 16
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %"$execptr_load_1446" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_46_1447" = alloca %Uint32, align 8
  %"$$input_46_1448" = load %Uint32, %Uint32* %"$input_46", align 4
  store %Uint32 %"$$input_46_1448", %Uint32* %"$to_uint256_$input_46_1447", align 4
  %"$$to_uint256_$input_46_1447_1449" = bitcast %Uint32* %"$to_uint256_$input_46_1447" to i8*
  %"$to_uint256_call_1450" = call i8* @_to_uint256(i8* %"$execptr_load_1446", %_TyDescrTy_Typ* @"$TyDescr_Uint32_117", i8* %"$$to_uint256_$input_46_1447_1449"), !dbg !305
  %"$to_uint256_1451" = bitcast i8* %"$to_uint256_call_1450" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1451", %TName_Option_Uint256** %"$resopt_47", align 8, !dbg !305
  %"$gasrem_1452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1453" = icmp ugt i64 1, %"$gasrem_1452"
  br i1 %"$gascmp_1453", label %"$out_of_gas_1454", label %"$have_gas_1455"

"$out_of_gas_1454":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1455"

"$have_gas_1455":                                 ; preds = %"$out_of_gas_1454", %"$have_gas_1444"
  %"$consume_1456" = sub i64 %"$gasrem_1452", 1
  store i64 %"$consume_1456", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !306, metadata !DIExpression()), !dbg !307
  %"$gasrem_1457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1458" = icmp ugt i64 2, %"$gasrem_1457"
  br i1 %"$gascmp_1458", label %"$out_of_gas_1459", label %"$have_gas_1460"

"$out_of_gas_1459":                               ; preds = %"$have_gas_1455"
  call void @_out_of_gas()
  br label %"$have_gas_1460"

"$have_gas_1460":                                 ; preds = %"$out_of_gas_1459", %"$have_gas_1455"
  %"$consume_1461" = sub i64 %"$gasrem_1457", 2
  store i64 %"$consume_1461", i64* @_gasrem, align 8
  %"$$resopt_47_1463" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_47", align 8
  %"$$resopt_47_tag_1464" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_47_1463", i32 0, i32 0
  %"$$resopt_47_tag_1465" = load i8, i8* %"$$resopt_47_tag_1464", align 1
  switch i8 %"$$resopt_47_tag_1465", label %"$empty_default_1466" [
    i8 0, label %"$Some_1467"
    i8 1, label %"$None_1515"
  ], !dbg !308

"$Some_1467":                                     ; preds = %"$have_gas_1460"
  %"$$resopt_47_1468" = bitcast %TName_Option_Uint256* %"$$resopt_47_1463" to %CName_Some_Uint256*
  %"$res_gep_1469" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_47_1468", i32 0, i32 1
  %"$res_load_1470" = load %Uint256, %Uint256* %"$res_gep_1469", align 8
  %res22 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1470", %Uint256* %res22, align 8
  %"$gasrem_1471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1472" = icmp ugt i64 1, %"$gasrem_1471"
  br i1 %"$gascmp_1472", label %"$out_of_gas_1473", label %"$have_gas_1474"

"$out_of_gas_1473":                               ; preds = %"$Some_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1474"

"$have_gas_1474":                                 ; preds = %"$out_of_gas_1473", %"$Some_1467"
  %"$consume_1475" = sub i64 %"$gasrem_1471", 1
  store i64 %"$consume_1475", i64* @_gasrem, align 8
  %input_23 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_23, metadata !309, metadata !DIExpression()), !dbg !312
  %"$gasrem_1476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1477" = icmp ugt i64 1, %"$gasrem_1476"
  br i1 %"$gascmp_1477", label %"$out_of_gas_1478", label %"$have_gas_1479"

"$out_of_gas_1478":                               ; preds = %"$have_gas_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1479"

"$have_gas_1479":                                 ; preds = %"$out_of_gas_1478", %"$have_gas_1474"
  %"$consume_1480" = sub i64 %"$gasrem_1476", 1
  store i64 %"$consume_1480", i64* @_gasrem, align 8
  store %Uint256 { i256 22 }, %Uint256* %input_23, align 8, !dbg !313
  %"$gasrem_1481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1482" = icmp ugt i64 1, %"$gasrem_1481"
  br i1 %"$gascmp_1482", label %"$out_of_gas_1483", label %"$have_gas_1484"

"$out_of_gas_1483":                               ; preds = %"$have_gas_1479"
  call void @_out_of_gas()
  br label %"$have_gas_1484"

"$have_gas_1484":                                 ; preds = %"$out_of_gas_1483", %"$have_gas_1479"
  %"$consume_1485" = sub i64 %"$gasrem_1481", 1
  store i64 %"$consume_1485", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_24, metadata !314, metadata !DIExpression()), !dbg !315
  %"$gasrem_1487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1488" = icmp ugt i64 16, %"$gasrem_1487"
  br i1 %"$gascmp_1488", label %"$out_of_gas_1489", label %"$have_gas_1490"

"$out_of_gas_1489":                               ; preds = %"$have_gas_1484"
  call void @_out_of_gas()
  br label %"$have_gas_1490"

"$have_gas_1490":                                 ; preds = %"$out_of_gas_1489", %"$have_gas_1484"
  %"$consume_1491" = sub i64 %"$gasrem_1487", 16
  store i64 %"$consume_1491", i64* @_gasrem, align 8
  %"$execptr_load_1492" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1493" = alloca %Uint256, align 8
  %"$res_1494" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res_1494", %Uint256* %"$eq_res_1493", align 8
  %"$eq_input__1495" = alloca %Uint256, align 8
  %"$input__1496" = load %Uint256, %Uint256* %input_23, align 8
  store %Uint256 %"$input__1496", %Uint256* %"$eq_input__1495", align 8
  %"$eq_call_1497" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1492", %Uint256* %"$eq_res_1493", %Uint256* %"$eq_input__1495"), !dbg !316
  store %TName_Bool* %"$eq_call_1497", %TName_Bool** %test_24, align 8, !dbg !316
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1490"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1490"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  %"$BoolUtils.andb_100" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1504" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1505" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1504", 0
  %"$BoolUtils.andb_envptr_1506" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1504", 1
  %"$$test_45_1507" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  %"$BoolUtils.andb_call_1508" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1505"(i8* %"$BoolUtils.andb_envptr_1506", %TName_Bool* %"$$test_45_1507"), !dbg !317
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1508", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8, !dbg !317
  %"$BoolUtils.andb_101" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_101", metadata !318, metadata !DIExpression()), !dbg !317
  %"$$BoolUtils.andb_100_1509" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_100", align 8
  %"$$BoolUtils.andb_100_fptr_1510" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1509", 0
  %"$$BoolUtils.andb_100_envptr_1511" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_100_1509", 1
  %"$test__1512" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_100_call_1513" = call %TName_Bool* %"$$BoolUtils.andb_100_fptr_1510"(i8* %"$$BoolUtils.andb_100_envptr_1511", %TName_Bool* %"$test__1512"), !dbg !317
  store %TName_Bool* %"$$BoolUtils.andb_100_call_1513", %TName_Bool** %"$BoolUtils.andb_101", align 8, !dbg !317
  %"$$BoolUtils.andb_101_1514" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_101", align 8
  store %TName_Bool* %"$$BoolUtils.andb_101_1514", %TName_Bool** %"$test_48", align 8, !dbg !317
  br label %"$matchsucc_1462"

"$None_1515":                                     ; preds = %"$have_gas_1460"
  %"$$resopt_47_1516" = bitcast %TName_Option_Uint256* %"$$resopt_47_1463" to %CName_None_Uint256*
  %"$gasrem_1517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1518" = icmp ugt i64 1, %"$gasrem_1517"
  br i1 %"$gascmp_1518", label %"$out_of_gas_1519", label %"$have_gas_1520"

"$out_of_gas_1519":                               ; preds = %"$None_1515"
  call void @_out_of_gas()
  br label %"$have_gas_1520"

"$have_gas_1520":                                 ; preds = %"$out_of_gas_1519", %"$None_1515"
  %"$consume_1521" = sub i64 %"$gasrem_1517", 1
  store i64 %"$consume_1521", i64* @_gasrem, align 8
  %"$false_1522" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1522", %TName_Bool** %"$test_48", align 8, !dbg !319
  br label %"$matchsucc_1462"

"$empty_default_1466":                            ; preds = %"$have_gas_1460"
  br label %"$matchsucc_1462"

"$matchsucc_1462":                                ; preds = %"$have_gas_1520", %"$have_gas_1502", %"$empty_default_1466"
  %"$gasrem_1523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1524" = icmp ugt i64 1, %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %"$matchsucc_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %"$matchsucc_1462"
  %"$consume_1527" = sub i64 %"$gasrem_1523", 1
  store i64 %"$consume_1527", i64* @_gasrem, align 8
  %"$input_49" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$input_49", metadata !321, metadata !DIExpression()), !dbg !323
  %"$gasrem_1528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1529" = icmp ugt i64 1, %"$gasrem_1528"
  br i1 %"$gascmp_1529", label %"$out_of_gas_1530", label %"$have_gas_1531"

"$out_of_gas_1530":                               ; preds = %"$have_gas_1526"
  call void @_out_of_gas()
  br label %"$have_gas_1531"

"$have_gas_1531":                                 ; preds = %"$out_of_gas_1530", %"$have_gas_1526"
  %"$consume_1532" = sub i64 %"$gasrem_1528", 1
  store i64 %"$consume_1532", i64* @_gasrem, align 8
  store %Int32 { i32 2147483647 }, %Int32* %"$input_49", align 4, !dbg !324
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 1, %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$have_gas_1531"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$have_gas_1531"
  %"$consume_1537" = sub i64 %"$gasrem_1533", 1
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_50", metadata !325, metadata !DIExpression()), !dbg !326
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 4, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$have_gas_1536"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$have_gas_1536"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 4
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %"$execptr_load_1543" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_49_1544" = alloca %Int32, align 8
  %"$$input_49_1545" = load %Int32, %Int32* %"$input_49", align 4
  store %Int32 %"$$input_49_1545", %Int32* %"$to_uint32_$input_49_1544", align 4
  %"$$to_uint32_$input_49_1544_1546" = bitcast %Int32* %"$to_uint32_$input_49_1544" to i8*
  %"$to_uint32_call_1547" = call i8* @_to_uint32(i8* %"$execptr_load_1543", %_TyDescrTy_Typ* @"$TyDescr_Int32_115", i8* %"$$to_uint32_$input_49_1544_1546"), !dbg !327
  %"$to_uint32_1548" = bitcast i8* %"$to_uint32_call_1547" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1548", %TName_Option_Uint32** %"$resopt_50", align 8, !dbg !327
  %"$gasrem_1549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1550" = icmp ugt i64 1, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %"$have_gas_1541"
  %"$consume_1553" = sub i64 %"$gasrem_1549", 1
  store i64 %"$consume_1553", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_51", metadata !328, metadata !DIExpression()), !dbg !329
  %"$gasrem_1554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1555" = icmp ugt i64 2, %"$gasrem_1554"
  br i1 %"$gascmp_1555", label %"$out_of_gas_1556", label %"$have_gas_1557"

"$out_of_gas_1556":                               ; preds = %"$have_gas_1552"
  call void @_out_of_gas()
  br label %"$have_gas_1557"

"$have_gas_1557":                                 ; preds = %"$out_of_gas_1556", %"$have_gas_1552"
  %"$consume_1558" = sub i64 %"$gasrem_1554", 2
  store i64 %"$consume_1558", i64* @_gasrem, align 8
  %"$$resopt_50_1560" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_50", align 8
  %"$$resopt_50_tag_1561" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_50_1560", i32 0, i32 0
  %"$$resopt_50_tag_1562" = load i8, i8* %"$$resopt_50_tag_1561", align 1
  switch i8 %"$$resopt_50_tag_1562", label %"$empty_default_1563" [
    i8 0, label %"$Some_1564"
    i8 1, label %"$None_1609"
  ], !dbg !330

"$Some_1564":                                     ; preds = %"$have_gas_1557"
  %"$$resopt_50_1565" = bitcast %TName_Option_Uint32* %"$$resopt_50_1560" to %CName_Some_Uint32*
  %"$res_gep_1566" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_50_1565", i32 0, i32 1
  %"$res_load_1567" = load %Uint32, %Uint32* %"$res_gep_1566", align 4
  %res25 = alloca %Uint32, align 8
  store %Uint32 %"$res_load_1567", %Uint32* %res25, align 4
  %"$gasrem_1568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1569" = icmp ugt i64 1, %"$gasrem_1568"
  br i1 %"$gascmp_1569", label %"$out_of_gas_1570", label %"$have_gas_1571"

"$out_of_gas_1570":                               ; preds = %"$Some_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1571"

"$have_gas_1571":                                 ; preds = %"$out_of_gas_1570", %"$Some_1564"
  %"$consume_1572" = sub i64 %"$gasrem_1568", 1
  store i64 %"$consume_1572", i64* @_gasrem, align 8
  %input_26 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %input_26, metadata !331, metadata !DIExpression()), !dbg !334
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1571"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1571"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  store %Uint32 { i32 2147483647 }, %Uint32* %input_26, align 4, !dbg !335
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1576"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_27, metadata !336, metadata !DIExpression()), !dbg !337
  %"$gasrem_1583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1584" = icmp ugt i64 4, %"$gasrem_1583"
  br i1 %"$gascmp_1584", label %"$out_of_gas_1585", label %"$have_gas_1586"

"$out_of_gas_1585":                               ; preds = %"$have_gas_1581"
  call void @_out_of_gas()
  br label %"$have_gas_1586"

"$have_gas_1586":                                 ; preds = %"$out_of_gas_1585", %"$have_gas_1581"
  %"$consume_1587" = sub i64 %"$gasrem_1583", 4
  store i64 %"$consume_1587", i64* @_gasrem, align 8
  %"$execptr_load_1588" = load i8*, i8** @_execptr, align 8
  %"$res_1589" = load %Uint32, %Uint32* %res25, align 4
  %"$input__1590" = load %Uint32, %Uint32* %input_26, align 4
  %"$eq_call_1591" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1588", %Uint32 %"$res_1589", %Uint32 %"$input__1590"), !dbg !338
  store %TName_Bool* %"$eq_call_1591", %TName_Bool** %test_27, align 8, !dbg !338
  %"$gasrem_1593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1594" = icmp ugt i64 1, %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1586"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1586"
  %"$consume_1597" = sub i64 %"$gasrem_1593", 1
  store i64 %"$consume_1597", i64* @_gasrem, align 8
  %"$BoolUtils.andb_102" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1598" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1599" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1598", 0
  %"$BoolUtils.andb_envptr_1600" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1598", 1
  %"$$test_48_1601" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1602" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1599"(i8* %"$BoolUtils.andb_envptr_1600", %TName_Bool* %"$$test_48_1601"), !dbg !339
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1602", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_102", align 8, !dbg !339
  %"$BoolUtils.andb_103" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_103", metadata !340, metadata !DIExpression()), !dbg !339
  %"$$BoolUtils.andb_102_1603" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_102", align 8
  %"$$BoolUtils.andb_102_fptr_1604" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_102_1603", 0
  %"$$BoolUtils.andb_102_envptr_1605" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_102_1603", 1
  %"$test__1606" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_102_call_1607" = call %TName_Bool* %"$$BoolUtils.andb_102_fptr_1604"(i8* %"$$BoolUtils.andb_102_envptr_1605", %TName_Bool* %"$test__1606"), !dbg !339
  store %TName_Bool* %"$$BoolUtils.andb_102_call_1607", %TName_Bool** %"$BoolUtils.andb_103", align 8, !dbg !339
  %"$$BoolUtils.andb_103_1608" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_103", align 8
  store %TName_Bool* %"$$BoolUtils.andb_103_1608", %TName_Bool** %"$test_51", align 8, !dbg !339
  br label %"$matchsucc_1559"

"$None_1609":                                     ; preds = %"$have_gas_1557"
  %"$$resopt_50_1610" = bitcast %TName_Option_Uint32* %"$$resopt_50_1560" to %CName_None_Uint32*
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$None_1609"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$None_1609"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  %"$false_1616" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1616", %TName_Bool** %"$test_51", align 8, !dbg !341
  br label %"$matchsucc_1559"

"$empty_default_1563":                            ; preds = %"$have_gas_1557"
  br label %"$matchsucc_1559"

"$matchsucc_1559":                                ; preds = %"$have_gas_1614", %"$have_gas_1596", %"$empty_default_1563"
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$matchsucc_1559"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$matchsucc_1559"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$input_52" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$input_52", metadata !343, metadata !DIExpression()), !dbg !344
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$have_gas_1620"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  store %Int32 { i32 -2147483648 }, %Int32* %"$input_52", align 4, !dbg !345
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 1, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %"$have_gas_1625"
  %"$consume_1631" = sub i64 %"$gasrem_1627", 1
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  %"$resopt_53" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_53", metadata !346, metadata !DIExpression()), !dbg !347
  %"$gasrem_1632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1633" = icmp ugt i64 4, %"$gasrem_1632"
  br i1 %"$gascmp_1633", label %"$out_of_gas_1634", label %"$have_gas_1635"

"$out_of_gas_1634":                               ; preds = %"$have_gas_1630"
  call void @_out_of_gas()
  br label %"$have_gas_1635"

"$have_gas_1635":                                 ; preds = %"$out_of_gas_1634", %"$have_gas_1630"
  %"$consume_1636" = sub i64 %"$gasrem_1632", 4
  store i64 %"$consume_1636", i64* @_gasrem, align 8
  %"$execptr_load_1637" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_52_1638" = alloca %Int32, align 8
  %"$$input_52_1639" = load %Int32, %Int32* %"$input_52", align 4
  store %Int32 %"$$input_52_1639", %Int32* %"$to_uint32_$input_52_1638", align 4
  %"$$to_uint32_$input_52_1638_1640" = bitcast %Int32* %"$to_uint32_$input_52_1638" to i8*
  %"$to_uint32_call_1641" = call i8* @_to_uint32(i8* %"$execptr_load_1637", %_TyDescrTy_Typ* @"$TyDescr_Int32_115", i8* %"$$to_uint32_$input_52_1638_1640"), !dbg !348
  %"$to_uint32_1642" = bitcast i8* %"$to_uint32_call_1641" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1642", %TName_Option_Uint32** %"$resopt_53", align 8, !dbg !348
  %"$gasrem_1643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1644" = icmp ugt i64 1, %"$gasrem_1643"
  br i1 %"$gascmp_1644", label %"$out_of_gas_1645", label %"$have_gas_1646"

"$out_of_gas_1645":                               ; preds = %"$have_gas_1635"
  call void @_out_of_gas()
  br label %"$have_gas_1646"

"$have_gas_1646":                                 ; preds = %"$out_of_gas_1645", %"$have_gas_1635"
  %"$consume_1647" = sub i64 %"$gasrem_1643", 1
  store i64 %"$consume_1647", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_54", metadata !349, metadata !DIExpression()), !dbg !350
  %"$gasrem_1648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1649" = icmp ugt i64 2, %"$gasrem_1648"
  br i1 %"$gascmp_1649", label %"$out_of_gas_1650", label %"$have_gas_1651"

"$out_of_gas_1650":                               ; preds = %"$have_gas_1646"
  call void @_out_of_gas()
  br label %"$have_gas_1651"

"$have_gas_1651":                                 ; preds = %"$out_of_gas_1650", %"$have_gas_1646"
  %"$consume_1652" = sub i64 %"$gasrem_1648", 2
  store i64 %"$consume_1652", i64* @_gasrem, align 8
  %"$$resopt_53_1654" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_53", align 8
  %"$$resopt_53_tag_1655" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_53_1654", i32 0, i32 0
  %"$$resopt_53_tag_1656" = load i8, i8* %"$$resopt_53_tag_1655", align 1
  switch i8 %"$$resopt_53_tag_1656", label %"$empty_default_1657" [
    i8 0, label %"$Some_1658"
    i8 1, label %"$None_1668"
  ], !dbg !351

"$Some_1658":                                     ; preds = %"$have_gas_1651"
  %"$$resopt_53_1659" = bitcast %TName_Option_Uint32* %"$$resopt_53_1654" to %CName_Some_Uint32*
  %"$$$resopt_53_79_gep_1660" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_53_1659", i32 0, i32 1
  %"$$$resopt_53_79_load_1661" = load %Uint32, %Uint32* %"$$$resopt_53_79_gep_1660", align 4
  %"$$resopt_53_79" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_53_79_load_1661", %Uint32* %"$$resopt_53_79", align 4
  %"$gasrem_1662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1663" = icmp ugt i64 1, %"$gasrem_1662"
  br i1 %"$gascmp_1663", label %"$out_of_gas_1664", label %"$have_gas_1665"

"$out_of_gas_1664":                               ; preds = %"$Some_1658"
  call void @_out_of_gas()
  br label %"$have_gas_1665"

"$have_gas_1665":                                 ; preds = %"$out_of_gas_1664", %"$Some_1658"
  %"$consume_1666" = sub i64 %"$gasrem_1662", 1
  store i64 %"$consume_1666", i64* @_gasrem, align 8
  %"$false_1667" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1667", %TName_Bool** %"$test_54", align 8, !dbg !352
  br label %"$matchsucc_1653"

"$None_1668":                                     ; preds = %"$have_gas_1651"
  %"$$resopt_53_1669" = bitcast %TName_Option_Uint32* %"$$resopt_53_1654" to %CName_None_Uint32*
  %"$gasrem_1670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1671" = icmp ugt i64 1, %"$gasrem_1670"
  br i1 %"$gascmp_1671", label %"$out_of_gas_1672", label %"$have_gas_1673"

"$out_of_gas_1672":                               ; preds = %"$None_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1673"

"$have_gas_1673":                                 ; preds = %"$out_of_gas_1672", %"$None_1668"
  %"$consume_1674" = sub i64 %"$gasrem_1670", 1
  store i64 %"$consume_1674", i64* @_gasrem, align 8
  %"$$test_51_1675" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  store %TName_Bool* %"$$test_51_1675", %TName_Bool** %"$test_54", align 8, !dbg !355
  br label %"$matchsucc_1653"

"$empty_default_1657":                            ; preds = %"$have_gas_1651"
  br label %"$matchsucc_1653"

"$matchsucc_1653":                                ; preds = %"$have_gas_1673", %"$have_gas_1665", %"$empty_default_1657"
  %"$gasrem_1676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1677" = icmp ugt i64 1, %"$gasrem_1676"
  br i1 %"$gascmp_1677", label %"$out_of_gas_1678", label %"$have_gas_1679"

"$out_of_gas_1678":                               ; preds = %"$matchsucc_1653"
  call void @_out_of_gas()
  br label %"$have_gas_1679"

"$have_gas_1679":                                 ; preds = %"$out_of_gas_1678", %"$matchsucc_1653"
  %"$consume_1680" = sub i64 %"$gasrem_1676", 1
  store i64 %"$consume_1680", i64* @_gasrem, align 8
  %"$input_55" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_55", metadata !357, metadata !DIExpression()), !dbg !359
  %"$gasrem_1681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1682" = icmp ugt i64 1, %"$gasrem_1681"
  br i1 %"$gascmp_1682", label %"$out_of_gas_1683", label %"$have_gas_1684"

"$out_of_gas_1683":                               ; preds = %"$have_gas_1679"
  call void @_out_of_gas()
  br label %"$have_gas_1684"

"$have_gas_1684":                                 ; preds = %"$out_of_gas_1683", %"$have_gas_1679"
  %"$consume_1685" = sub i64 %"$gasrem_1681", 1
  store i64 %"$consume_1685", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1686", i32 0, i32 0), i32 11 }, %String* %"$input_55", align 8, !dbg !360
  %"$gasrem_1687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1688" = icmp ugt i64 1, %"$gasrem_1687"
  br i1 %"$gascmp_1688", label %"$out_of_gas_1689", label %"$have_gas_1690"

"$out_of_gas_1689":                               ; preds = %"$have_gas_1684"
  call void @_out_of_gas()
  br label %"$have_gas_1690"

"$have_gas_1690":                                 ; preds = %"$out_of_gas_1689", %"$have_gas_1684"
  %"$consume_1691" = sub i64 %"$gasrem_1687", 1
  store i64 %"$consume_1691", i64* @_gasrem, align 8
  %"$resopt_56" = alloca %TName_Option_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint32** %"$resopt_56", metadata !361, metadata !DIExpression()), !dbg !362
  %"$gasrem_1692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1693" = icmp ugt i64 4, %"$gasrem_1692"
  br i1 %"$gascmp_1693", label %"$out_of_gas_1694", label %"$have_gas_1695"

"$out_of_gas_1694":                               ; preds = %"$have_gas_1690"
  call void @_out_of_gas()
  br label %"$have_gas_1695"

"$have_gas_1695":                                 ; preds = %"$out_of_gas_1694", %"$have_gas_1690"
  %"$consume_1696" = sub i64 %"$gasrem_1692", 4
  store i64 %"$consume_1696", i64* @_gasrem, align 8
  %"$execptr_load_1697" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_$input_55_1698" = alloca %String, align 8
  %"$$input_55_1699" = load %String, %String* %"$input_55", align 8
  store %String %"$$input_55_1699", %String* %"$to_uint32_$input_55_1698", align 8
  %"$$to_uint32_$input_55_1698_1700" = bitcast %String* %"$to_uint32_$input_55_1698" to i8*
  %"$to_uint32_call_1701" = call i8* @_to_uint32(i8* %"$execptr_load_1697", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint32_$input_55_1698_1700"), !dbg !363
  %"$to_uint32_1702" = bitcast i8* %"$to_uint32_call_1701" to %TName_Option_Uint32*
  store %TName_Option_Uint32* %"$to_uint32_1702", %TName_Option_Uint32** %"$resopt_56", align 8, !dbg !363
  %"$gasrem_1703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1704" = icmp ugt i64 1, %"$gasrem_1703"
  br i1 %"$gascmp_1704", label %"$out_of_gas_1705", label %"$have_gas_1706"

"$out_of_gas_1705":                               ; preds = %"$have_gas_1695"
  call void @_out_of_gas()
  br label %"$have_gas_1706"

"$have_gas_1706":                                 ; preds = %"$out_of_gas_1705", %"$have_gas_1695"
  %"$consume_1707" = sub i64 %"$gasrem_1703", 1
  store i64 %"$consume_1707", i64* @_gasrem, align 8
  %"$test_57" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_57", metadata !364, metadata !DIExpression()), !dbg !365
  %"$gasrem_1708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1709" = icmp ugt i64 2, %"$gasrem_1708"
  br i1 %"$gascmp_1709", label %"$out_of_gas_1710", label %"$have_gas_1711"

"$out_of_gas_1710":                               ; preds = %"$have_gas_1706"
  call void @_out_of_gas()
  br label %"$have_gas_1711"

"$have_gas_1711":                                 ; preds = %"$out_of_gas_1710", %"$have_gas_1706"
  %"$consume_1712" = sub i64 %"$gasrem_1708", 2
  store i64 %"$consume_1712", i64* @_gasrem, align 8
  %"$$resopt_56_1714" = load %TName_Option_Uint32*, %TName_Option_Uint32** %"$resopt_56", align 8
  %"$$resopt_56_tag_1715" = getelementptr inbounds %TName_Option_Uint32, %TName_Option_Uint32* %"$$resopt_56_1714", i32 0, i32 0
  %"$$resopt_56_tag_1716" = load i8, i8* %"$$resopt_56_tag_1715", align 1
  switch i8 %"$$resopt_56_tag_1716", label %"$empty_default_1717" [
    i8 0, label %"$Some_1718"
    i8 1, label %"$None_1728"
  ], !dbg !366

"$Some_1718":                                     ; preds = %"$have_gas_1711"
  %"$$resopt_56_1719" = bitcast %TName_Option_Uint32* %"$$resopt_56_1714" to %CName_Some_Uint32*
  %"$$$resopt_56_80_gep_1720" = getelementptr inbounds %CName_Some_Uint32, %CName_Some_Uint32* %"$$resopt_56_1719", i32 0, i32 1
  %"$$$resopt_56_80_load_1721" = load %Uint32, %Uint32* %"$$$resopt_56_80_gep_1720", align 4
  %"$$resopt_56_80" = alloca %Uint32, align 8
  store %Uint32 %"$$$resopt_56_80_load_1721", %Uint32* %"$$resopt_56_80", align 4
  %"$gasrem_1722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1723" = icmp ugt i64 1, %"$gasrem_1722"
  br i1 %"$gascmp_1723", label %"$out_of_gas_1724", label %"$have_gas_1725"

"$out_of_gas_1724":                               ; preds = %"$Some_1718"
  call void @_out_of_gas()
  br label %"$have_gas_1725"

"$have_gas_1725":                                 ; preds = %"$out_of_gas_1724", %"$Some_1718"
  %"$consume_1726" = sub i64 %"$gasrem_1722", 1
  store i64 %"$consume_1726", i64* @_gasrem, align 8
  %"$false_1727" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1727", %TName_Bool** %"$test_57", align 8, !dbg !367
  br label %"$matchsucc_1713"

"$None_1728":                                     ; preds = %"$have_gas_1711"
  %"$$resopt_56_1729" = bitcast %TName_Option_Uint32* %"$$resopt_56_1714" to %CName_None_Uint32*
  %"$gasrem_1730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1731" = icmp ugt i64 1, %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$None_1728"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$None_1728"
  %"$consume_1734" = sub i64 %"$gasrem_1730", 1
  store i64 %"$consume_1734", i64* @_gasrem, align 8
  %"$$test_54_1735" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  store %TName_Bool* %"$$test_54_1735", %TName_Bool** %"$test_57", align 8, !dbg !370
  br label %"$matchsucc_1713"

"$empty_default_1717":                            ; preds = %"$have_gas_1711"
  br label %"$matchsucc_1713"

"$matchsucc_1713":                                ; preds = %"$have_gas_1733", %"$have_gas_1725", %"$empty_default_1717"
  %"$gasrem_1736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1737" = icmp ugt i64 1, %"$gasrem_1736"
  br i1 %"$gascmp_1737", label %"$out_of_gas_1738", label %"$have_gas_1739"

"$out_of_gas_1738":                               ; preds = %"$matchsucc_1713"
  call void @_out_of_gas()
  br label %"$have_gas_1739"

"$have_gas_1739":                                 ; preds = %"$out_of_gas_1738", %"$matchsucc_1713"
  %"$consume_1740" = sub i64 %"$gasrem_1736", 1
  store i64 %"$consume_1740", i64* @_gasrem, align 8
  %"$input_58" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$input_58", metadata !372, metadata !DIExpression()), !dbg !374
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$have_gas_1739"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$have_gas_1739"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$input_58", align 8, !dbg !375
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1744"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1744"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  %"$resopt_59" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_59", metadata !376, metadata !DIExpression()), !dbg !377
  %"$gasrem_1751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1752" = icmp ugt i64 16, %"$gasrem_1751"
  br i1 %"$gascmp_1752", label %"$out_of_gas_1753", label %"$have_gas_1754"

"$out_of_gas_1753":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1754"

"$have_gas_1754":                                 ; preds = %"$out_of_gas_1753", %"$have_gas_1749"
  %"$consume_1755" = sub i64 %"$gasrem_1751", 16
  store i64 %"$consume_1755", i64* @_gasrem, align 8
  %"$execptr_load_1756" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_58_1757" = alloca %Int256, align 8
  %"$$input_58_1758" = load %Int256, %Int256* %"$input_58", align 8
  store %Int256 %"$$input_58_1758", %Int256* %"$to_uint256_$input_58_1757", align 8
  %"$$to_uint256_$input_58_1757_1759" = bitcast %Int256* %"$to_uint256_$input_58_1757" to i8*
  %"$to_uint256_call_1760" = call i8* @_to_uint256(i8* %"$execptr_load_1756", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", i8* %"$$to_uint256_$input_58_1757_1759"), !dbg !378
  %"$to_uint256_1761" = bitcast i8* %"$to_uint256_call_1760" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1761", %TName_Option_Uint256** %"$resopt_59", align 8, !dbg !378
  %"$gasrem_1762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1763" = icmp ugt i64 1, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %"$have_gas_1754"
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %"$have_gas_1754"
  %"$consume_1766" = sub i64 %"$gasrem_1762", 1
  store i64 %"$consume_1766", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_60", metadata !379, metadata !DIExpression()), !dbg !380
  %"$gasrem_1767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1768" = icmp ugt i64 2, %"$gasrem_1767"
  br i1 %"$gascmp_1768", label %"$out_of_gas_1769", label %"$have_gas_1770"

"$out_of_gas_1769":                               ; preds = %"$have_gas_1765"
  call void @_out_of_gas()
  br label %"$have_gas_1770"

"$have_gas_1770":                                 ; preds = %"$out_of_gas_1769", %"$have_gas_1765"
  %"$consume_1771" = sub i64 %"$gasrem_1767", 2
  store i64 %"$consume_1771", i64* @_gasrem, align 8
  %"$$resopt_59_1773" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_59", align 8
  %"$$resopt_59_tag_1774" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_59_1773", i32 0, i32 0
  %"$$resopt_59_tag_1775" = load i8, i8* %"$$resopt_59_tag_1774", align 1
  switch i8 %"$$resopt_59_tag_1775", label %"$empty_default_1776" [
    i8 0, label %"$Some_1777"
    i8 1, label %"$None_1825"
  ], !dbg !381

"$Some_1777":                                     ; preds = %"$have_gas_1770"
  %"$$resopt_59_1778" = bitcast %TName_Option_Uint256* %"$$resopt_59_1773" to %CName_Some_Uint256*
  %"$res_gep_1779" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_59_1778", i32 0, i32 1
  %"$res_load_1780" = load %Uint256, %Uint256* %"$res_gep_1779", align 8
  %res28 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1780", %Uint256* %res28, align 8
  %"$gasrem_1781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1782" = icmp ugt i64 1, %"$gasrem_1781"
  br i1 %"$gascmp_1782", label %"$out_of_gas_1783", label %"$have_gas_1784"

"$out_of_gas_1783":                               ; preds = %"$Some_1777"
  call void @_out_of_gas()
  br label %"$have_gas_1784"

"$have_gas_1784":                                 ; preds = %"$out_of_gas_1783", %"$Some_1777"
  %"$consume_1785" = sub i64 %"$gasrem_1781", 1
  store i64 %"$consume_1785", i64* @_gasrem, align 8
  %input_29 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_29, metadata !382, metadata !DIExpression()), !dbg !385
  %"$gasrem_1786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1787" = icmp ugt i64 1, %"$gasrem_1786"
  br i1 %"$gascmp_1787", label %"$out_of_gas_1788", label %"$have_gas_1789"

"$out_of_gas_1788":                               ; preds = %"$have_gas_1784"
  call void @_out_of_gas()
  br label %"$have_gas_1789"

"$have_gas_1789":                                 ; preds = %"$out_of_gas_1788", %"$have_gas_1784"
  %"$consume_1790" = sub i64 %"$gasrem_1786", 1
  store i64 %"$consume_1790", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_29, align 8, !dbg !386
  %"$gasrem_1791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1792" = icmp ugt i64 1, %"$gasrem_1791"
  br i1 %"$gascmp_1792", label %"$out_of_gas_1793", label %"$have_gas_1794"

"$out_of_gas_1793":                               ; preds = %"$have_gas_1789"
  call void @_out_of_gas()
  br label %"$have_gas_1794"

"$have_gas_1794":                                 ; preds = %"$out_of_gas_1793", %"$have_gas_1789"
  %"$consume_1795" = sub i64 %"$gasrem_1791", 1
  store i64 %"$consume_1795", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_30, metadata !387, metadata !DIExpression()), !dbg !388
  %"$gasrem_1797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1798" = icmp ugt i64 16, %"$gasrem_1797"
  br i1 %"$gascmp_1798", label %"$out_of_gas_1799", label %"$have_gas_1800"

"$out_of_gas_1799":                               ; preds = %"$have_gas_1794"
  call void @_out_of_gas()
  br label %"$have_gas_1800"

"$have_gas_1800":                                 ; preds = %"$out_of_gas_1799", %"$have_gas_1794"
  %"$consume_1801" = sub i64 %"$gasrem_1797", 16
  store i64 %"$consume_1801", i64* @_gasrem, align 8
  %"$execptr_load_1802" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1803" = alloca %Uint256, align 8
  %"$res_1804" = load %Uint256, %Uint256* %res28, align 8
  store %Uint256 %"$res_1804", %Uint256* %"$eq_res_1803", align 8
  %"$eq_input__1805" = alloca %Uint256, align 8
  %"$input__1806" = load %Uint256, %Uint256* %input_29, align 8
  store %Uint256 %"$input__1806", %Uint256* %"$eq_input__1805", align 8
  %"$eq_call_1807" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1802", %Uint256* %"$eq_res_1803", %Uint256* %"$eq_input__1805"), !dbg !389
  store %TName_Bool* %"$eq_call_1807", %TName_Bool** %test_30, align 8, !dbg !389
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 1, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1800"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1800"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 1
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  %"$BoolUtils.andb_104" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1814" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1815" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1814", 0
  %"$BoolUtils.andb_envptr_1816" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1814", 1
  %"$$test_57_1817" = load %TName_Bool*, %TName_Bool** %"$test_57", align 8
  %"$BoolUtils.andb_call_1818" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1815"(i8* %"$BoolUtils.andb_envptr_1816", %TName_Bool* %"$$test_57_1817"), !dbg !390
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1818", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_104", align 8, !dbg !390
  %"$BoolUtils.andb_105" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_105", metadata !391, metadata !DIExpression()), !dbg !390
  %"$$BoolUtils.andb_104_1819" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_104", align 8
  %"$$BoolUtils.andb_104_fptr_1820" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_104_1819", 0
  %"$$BoolUtils.andb_104_envptr_1821" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_104_1819", 1
  %"$test__1822" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_104_call_1823" = call %TName_Bool* %"$$BoolUtils.andb_104_fptr_1820"(i8* %"$$BoolUtils.andb_104_envptr_1821", %TName_Bool* %"$test__1822"), !dbg !390
  store %TName_Bool* %"$$BoolUtils.andb_104_call_1823", %TName_Bool** %"$BoolUtils.andb_105", align 8, !dbg !390
  %"$$BoolUtils.andb_105_1824" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_105", align 8
  store %TName_Bool* %"$$BoolUtils.andb_105_1824", %TName_Bool** %"$test_60", align 8, !dbg !390
  br label %"$matchsucc_1772"

"$None_1825":                                     ; preds = %"$have_gas_1770"
  %"$$resopt_59_1826" = bitcast %TName_Option_Uint256* %"$$resopt_59_1773" to %CName_None_Uint256*
  %"$gasrem_1827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1828" = icmp ugt i64 1, %"$gasrem_1827"
  br i1 %"$gascmp_1828", label %"$out_of_gas_1829", label %"$have_gas_1830"

"$out_of_gas_1829":                               ; preds = %"$None_1825"
  call void @_out_of_gas()
  br label %"$have_gas_1830"

"$have_gas_1830":                                 ; preds = %"$out_of_gas_1829", %"$None_1825"
  %"$consume_1831" = sub i64 %"$gasrem_1827", 1
  store i64 %"$consume_1831", i64* @_gasrem, align 8
  %"$false_1832" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1832", %TName_Bool** %"$test_60", align 8, !dbg !392
  br label %"$matchsucc_1772"

"$empty_default_1776":                            ; preds = %"$have_gas_1770"
  br label %"$matchsucc_1772"

"$matchsucc_1772":                                ; preds = %"$have_gas_1830", %"$have_gas_1812", %"$empty_default_1776"
  %"$gasrem_1833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1834" = icmp ugt i64 1, %"$gasrem_1833"
  br i1 %"$gascmp_1834", label %"$out_of_gas_1835", label %"$have_gas_1836"

"$out_of_gas_1835":                               ; preds = %"$matchsucc_1772"
  call void @_out_of_gas()
  br label %"$have_gas_1836"

"$have_gas_1836":                                 ; preds = %"$out_of_gas_1835", %"$matchsucc_1772"
  %"$consume_1837" = sub i64 %"$gasrem_1833", 1
  store i64 %"$consume_1837", i64* @_gasrem, align 8
  %"$input_61" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_61", metadata !394, metadata !DIExpression()), !dbg !395
  %"$gasrem_1838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1839" = icmp ugt i64 1, %"$gasrem_1838"
  br i1 %"$gascmp_1839", label %"$out_of_gas_1840", label %"$have_gas_1841"

"$out_of_gas_1840":                               ; preds = %"$have_gas_1836"
  call void @_out_of_gas()
  br label %"$have_gas_1841"

"$have_gas_1841":                                 ; preds = %"$out_of_gas_1840", %"$have_gas_1836"
  %"$consume_1842" = sub i64 %"$gasrem_1838", 1
  store i64 %"$consume_1842", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1843", i32 0, i32 0), i32 77 }, %String* %"$input_61", align 8, !dbg !396
  %"$gasrem_1844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1845" = icmp ugt i64 1, %"$gasrem_1844"
  br i1 %"$gascmp_1845", label %"$out_of_gas_1846", label %"$have_gas_1847"

"$out_of_gas_1846":                               ; preds = %"$have_gas_1841"
  call void @_out_of_gas()
  br label %"$have_gas_1847"

"$have_gas_1847":                                 ; preds = %"$out_of_gas_1846", %"$have_gas_1841"
  %"$consume_1848" = sub i64 %"$gasrem_1844", 1
  store i64 %"$consume_1848", i64* @_gasrem, align 8
  %"$resopt_62" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_62", metadata !397, metadata !DIExpression()), !dbg !398
  %"$gasrem_1849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1850" = icmp ugt i64 16, %"$gasrem_1849"
  br i1 %"$gascmp_1850", label %"$out_of_gas_1851", label %"$have_gas_1852"

"$out_of_gas_1851":                               ; preds = %"$have_gas_1847"
  call void @_out_of_gas()
  br label %"$have_gas_1852"

"$have_gas_1852":                                 ; preds = %"$out_of_gas_1851", %"$have_gas_1847"
  %"$consume_1853" = sub i64 %"$gasrem_1849", 16
  store i64 %"$consume_1853", i64* @_gasrem, align 8
  %"$execptr_load_1854" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_61_1855" = alloca %String, align 8
  %"$$input_61_1856" = load %String, %String* %"$input_61", align 8
  store %String %"$$input_61_1856", %String* %"$to_uint256_$input_61_1855", align 8
  %"$$to_uint256_$input_61_1855_1857" = bitcast %String* %"$to_uint256_$input_61_1855" to i8*
  %"$to_uint256_call_1858" = call i8* @_to_uint256(i8* %"$execptr_load_1854", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint256_$input_61_1855_1857"), !dbg !399
  %"$to_uint256_1859" = bitcast i8* %"$to_uint256_call_1858" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1859", %TName_Option_Uint256** %"$resopt_62", align 8, !dbg !399
  %"$gasrem_1860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1861" = icmp ugt i64 1, %"$gasrem_1860"
  br i1 %"$gascmp_1861", label %"$out_of_gas_1862", label %"$have_gas_1863"

"$out_of_gas_1862":                               ; preds = %"$have_gas_1852"
  call void @_out_of_gas()
  br label %"$have_gas_1863"

"$have_gas_1863":                                 ; preds = %"$out_of_gas_1862", %"$have_gas_1852"
  %"$consume_1864" = sub i64 %"$gasrem_1860", 1
  store i64 %"$consume_1864", i64* @_gasrem, align 8
  %"$test_63" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_63", metadata !400, metadata !DIExpression()), !dbg !401
  %"$gasrem_1865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1866" = icmp ugt i64 2, %"$gasrem_1865"
  br i1 %"$gascmp_1866", label %"$out_of_gas_1867", label %"$have_gas_1868"

"$out_of_gas_1867":                               ; preds = %"$have_gas_1863"
  call void @_out_of_gas()
  br label %"$have_gas_1868"

"$have_gas_1868":                                 ; preds = %"$out_of_gas_1867", %"$have_gas_1863"
  %"$consume_1869" = sub i64 %"$gasrem_1865", 2
  store i64 %"$consume_1869", i64* @_gasrem, align 8
  %"$$resopt_62_1871" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_62", align 8
  %"$$resopt_62_tag_1872" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_62_1871", i32 0, i32 0
  %"$$resopt_62_tag_1873" = load i8, i8* %"$$resopt_62_tag_1872", align 1
  switch i8 %"$$resopt_62_tag_1873", label %"$empty_default_1874" [
    i8 0, label %"$Some_1875"
    i8 1, label %"$None_1923"
  ], !dbg !402

"$Some_1875":                                     ; preds = %"$have_gas_1868"
  %"$$resopt_62_1876" = bitcast %TName_Option_Uint256* %"$$resopt_62_1871" to %CName_Some_Uint256*
  %"$res_gep_1877" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_62_1876", i32 0, i32 1
  %"$res_load_1878" = load %Uint256, %Uint256* %"$res_gep_1877", align 8
  %res31 = alloca %Uint256, align 8
  store %Uint256 %"$res_load_1878", %Uint256* %res31, align 8
  %"$gasrem_1879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1880" = icmp ugt i64 1, %"$gasrem_1879"
  br i1 %"$gascmp_1880", label %"$out_of_gas_1881", label %"$have_gas_1882"

"$out_of_gas_1881":                               ; preds = %"$Some_1875"
  call void @_out_of_gas()
  br label %"$have_gas_1882"

"$have_gas_1882":                                 ; preds = %"$out_of_gas_1881", %"$Some_1875"
  %"$consume_1883" = sub i64 %"$gasrem_1879", 1
  store i64 %"$consume_1883", i64* @_gasrem, align 8
  %input_32 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %input_32, metadata !403, metadata !DIExpression()), !dbg !406
  %"$gasrem_1884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1885" = icmp ugt i64 1, %"$gasrem_1884"
  br i1 %"$gascmp_1885", label %"$out_of_gas_1886", label %"$have_gas_1887"

"$out_of_gas_1886":                               ; preds = %"$have_gas_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1887"

"$have_gas_1887":                                 ; preds = %"$out_of_gas_1886", %"$have_gas_1882"
  %"$consume_1888" = sub i64 %"$gasrem_1884", 1
  store i64 %"$consume_1888", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %input_32, align 8, !dbg !407
  %"$gasrem_1889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1890" = icmp ugt i64 1, %"$gasrem_1889"
  br i1 %"$gascmp_1890", label %"$out_of_gas_1891", label %"$have_gas_1892"

"$out_of_gas_1891":                               ; preds = %"$have_gas_1887"
  call void @_out_of_gas()
  br label %"$have_gas_1892"

"$have_gas_1892":                                 ; preds = %"$out_of_gas_1891", %"$have_gas_1887"
  %"$consume_1893" = sub i64 %"$gasrem_1889", 1
  store i64 %"$consume_1893", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_33, metadata !408, metadata !DIExpression()), !dbg !409
  %"$gasrem_1895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1896" = icmp ugt i64 16, %"$gasrem_1895"
  br i1 %"$gascmp_1896", label %"$out_of_gas_1897", label %"$have_gas_1898"

"$out_of_gas_1897":                               ; preds = %"$have_gas_1892"
  call void @_out_of_gas()
  br label %"$have_gas_1898"

"$have_gas_1898":                                 ; preds = %"$out_of_gas_1897", %"$have_gas_1892"
  %"$consume_1899" = sub i64 %"$gasrem_1895", 16
  store i64 %"$consume_1899", i64* @_gasrem, align 8
  %"$execptr_load_1900" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1901" = alloca %Uint256, align 8
  %"$res_1902" = load %Uint256, %Uint256* %res31, align 8
  store %Uint256 %"$res_1902", %Uint256* %"$eq_res_1901", align 8
  %"$eq_input__1903" = alloca %Uint256, align 8
  %"$input__1904" = load %Uint256, %Uint256* %input_32, align 8
  store %Uint256 %"$input__1904", %Uint256* %"$eq_input__1903", align 8
  %"$eq_call_1905" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1900", %Uint256* %"$eq_res_1901", %Uint256* %"$eq_input__1903"), !dbg !410
  store %TName_Bool* %"$eq_call_1905", %TName_Bool** %test_33, align 8, !dbg !410
  %"$gasrem_1907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1908" = icmp ugt i64 1, %"$gasrem_1907"
  br i1 %"$gascmp_1908", label %"$out_of_gas_1909", label %"$have_gas_1910"

"$out_of_gas_1909":                               ; preds = %"$have_gas_1898"
  call void @_out_of_gas()
  br label %"$have_gas_1910"

"$have_gas_1910":                                 ; preds = %"$out_of_gas_1909", %"$have_gas_1898"
  %"$consume_1911" = sub i64 %"$gasrem_1907", 1
  store i64 %"$consume_1911", i64* @_gasrem, align 8
  %"$BoolUtils.andb_106" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1912" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1913" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1912", 0
  %"$BoolUtils.andb_envptr_1914" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1912", 1
  %"$$test_60_1915" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1916" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1913"(i8* %"$BoolUtils.andb_envptr_1914", %TName_Bool* %"$$test_60_1915"), !dbg !411
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1916", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_106", align 8, !dbg !411
  %"$BoolUtils.andb_107" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_107", metadata !412, metadata !DIExpression()), !dbg !411
  %"$$BoolUtils.andb_106_1917" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_106", align 8
  %"$$BoolUtils.andb_106_fptr_1918" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_106_1917", 0
  %"$$BoolUtils.andb_106_envptr_1919" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_106_1917", 1
  %"$test__1920" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_106_call_1921" = call %TName_Bool* %"$$BoolUtils.andb_106_fptr_1918"(i8* %"$$BoolUtils.andb_106_envptr_1919", %TName_Bool* %"$test__1920"), !dbg !411
  store %TName_Bool* %"$$BoolUtils.andb_106_call_1921", %TName_Bool** %"$BoolUtils.andb_107", align 8, !dbg !411
  %"$$BoolUtils.andb_107_1922" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_107", align 8
  store %TName_Bool* %"$$BoolUtils.andb_107_1922", %TName_Bool** %"$test_63", align 8, !dbg !411
  br label %"$matchsucc_1870"

"$None_1923":                                     ; preds = %"$have_gas_1868"
  %"$$resopt_62_1924" = bitcast %TName_Option_Uint256* %"$$resopt_62_1871" to %CName_None_Uint256*
  %"$gasrem_1925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1926" = icmp ugt i64 1, %"$gasrem_1925"
  br i1 %"$gascmp_1926", label %"$out_of_gas_1927", label %"$have_gas_1928"

"$out_of_gas_1927":                               ; preds = %"$None_1923"
  call void @_out_of_gas()
  br label %"$have_gas_1928"

"$have_gas_1928":                                 ; preds = %"$out_of_gas_1927", %"$None_1923"
  %"$consume_1929" = sub i64 %"$gasrem_1925", 1
  store i64 %"$consume_1929", i64* @_gasrem, align 8
  %"$false_1930" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1930", %TName_Bool** %"$test_63", align 8, !dbg !413
  br label %"$matchsucc_1870"

"$empty_default_1874":                            ; preds = %"$have_gas_1868"
  br label %"$matchsucc_1870"

"$matchsucc_1870":                                ; preds = %"$have_gas_1928", %"$have_gas_1910", %"$empty_default_1874"
  %"$gasrem_1931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1932" = icmp ugt i64 1, %"$gasrem_1931"
  br i1 %"$gascmp_1932", label %"$out_of_gas_1933", label %"$have_gas_1934"

"$out_of_gas_1933":                               ; preds = %"$matchsucc_1870"
  call void @_out_of_gas()
  br label %"$have_gas_1934"

"$have_gas_1934":                                 ; preds = %"$out_of_gas_1933", %"$matchsucc_1870"
  %"$consume_1935" = sub i64 %"$gasrem_1931", 1
  store i64 %"$consume_1935", i64* @_gasrem, align 8
  %"$input_64" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$input_64", metadata !415, metadata !DIExpression()), !dbg !416
  %"$gasrem_1936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1937" = icmp ugt i64 1, %"$gasrem_1936"
  br i1 %"$gascmp_1937", label %"$out_of_gas_1938", label %"$have_gas_1939"

"$out_of_gas_1938":                               ; preds = %"$have_gas_1934"
  call void @_out_of_gas()
  br label %"$have_gas_1939"

"$have_gas_1939":                                 ; preds = %"$out_of_gas_1938", %"$have_gas_1934"
  %"$consume_1940" = sub i64 %"$gasrem_1936", 1
  store i64 %"$consume_1940", i64* @_gasrem, align 8
  store %Int256 { i256 -282366920938463463374607431768211456 }, %Int256* %"$input_64", align 8, !dbg !417
  %"$gasrem_1941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1942" = icmp ugt i64 1, %"$gasrem_1941"
  br i1 %"$gascmp_1942", label %"$out_of_gas_1943", label %"$have_gas_1944"

"$out_of_gas_1943":                               ; preds = %"$have_gas_1939"
  call void @_out_of_gas()
  br label %"$have_gas_1944"

"$have_gas_1944":                                 ; preds = %"$out_of_gas_1943", %"$have_gas_1939"
  %"$consume_1945" = sub i64 %"$gasrem_1941", 1
  store i64 %"$consume_1945", i64* @_gasrem, align 8
  %"$resopt_65" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_65", metadata !418, metadata !DIExpression()), !dbg !419
  %"$gasrem_1946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1947" = icmp ugt i64 16, %"$gasrem_1946"
  br i1 %"$gascmp_1947", label %"$out_of_gas_1948", label %"$have_gas_1949"

"$out_of_gas_1948":                               ; preds = %"$have_gas_1944"
  call void @_out_of_gas()
  br label %"$have_gas_1949"

"$have_gas_1949":                                 ; preds = %"$out_of_gas_1948", %"$have_gas_1944"
  %"$consume_1950" = sub i64 %"$gasrem_1946", 16
  store i64 %"$consume_1950", i64* @_gasrem, align 8
  %"$execptr_load_1951" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_64_1952" = alloca %Int256, align 8
  %"$$input_64_1953" = load %Int256, %Int256* %"$input_64", align 8
  store %Int256 %"$$input_64_1953", %Int256* %"$to_uint256_$input_64_1952", align 8
  %"$$to_uint256_$input_64_1952_1954" = bitcast %Int256* %"$to_uint256_$input_64_1952" to i8*
  %"$to_uint256_call_1955" = call i8* @_to_uint256(i8* %"$execptr_load_1951", %_TyDescrTy_Typ* @"$TyDescr_Int256_127", i8* %"$$to_uint256_$input_64_1952_1954"), !dbg !420
  %"$to_uint256_1956" = bitcast i8* %"$to_uint256_call_1955" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_1956", %TName_Option_Uint256** %"$resopt_65", align 8, !dbg !420
  %"$gasrem_1957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1958" = icmp ugt i64 1, %"$gasrem_1957"
  br i1 %"$gascmp_1958", label %"$out_of_gas_1959", label %"$have_gas_1960"

"$out_of_gas_1959":                               ; preds = %"$have_gas_1949"
  call void @_out_of_gas()
  br label %"$have_gas_1960"

"$have_gas_1960":                                 ; preds = %"$out_of_gas_1959", %"$have_gas_1949"
  %"$consume_1961" = sub i64 %"$gasrem_1957", 1
  store i64 %"$consume_1961", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_66", metadata !421, metadata !DIExpression()), !dbg !422
  %"$gasrem_1962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1963" = icmp ugt i64 2, %"$gasrem_1962"
  br i1 %"$gascmp_1963", label %"$out_of_gas_1964", label %"$have_gas_1965"

"$out_of_gas_1964":                               ; preds = %"$have_gas_1960"
  call void @_out_of_gas()
  br label %"$have_gas_1965"

"$have_gas_1965":                                 ; preds = %"$out_of_gas_1964", %"$have_gas_1960"
  %"$consume_1966" = sub i64 %"$gasrem_1962", 2
  store i64 %"$consume_1966", i64* @_gasrem, align 8
  %"$$resopt_65_1968" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_65", align 8
  %"$$resopt_65_tag_1969" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_65_1968", i32 0, i32 0
  %"$$resopt_65_tag_1970" = load i8, i8* %"$$resopt_65_tag_1969", align 1
  switch i8 %"$$resopt_65_tag_1970", label %"$empty_default_1971" [
    i8 0, label %"$Some_1972"
    i8 1, label %"$None_1982"
  ], !dbg !423

"$Some_1972":                                     ; preds = %"$have_gas_1965"
  %"$$resopt_65_1973" = bitcast %TName_Option_Uint256* %"$$resopt_65_1968" to %CName_Some_Uint256*
  %"$$$resopt_65_81_gep_1974" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_65_1973", i32 0, i32 1
  %"$$$resopt_65_81_load_1975" = load %Uint256, %Uint256* %"$$$resopt_65_81_gep_1974", align 8
  %"$$resopt_65_81" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_65_81_load_1975", %Uint256* %"$$resopt_65_81", align 8
  %"$gasrem_1976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1977" = icmp ugt i64 1, %"$gasrem_1976"
  br i1 %"$gascmp_1977", label %"$out_of_gas_1978", label %"$have_gas_1979"

"$out_of_gas_1978":                               ; preds = %"$Some_1972"
  call void @_out_of_gas()
  br label %"$have_gas_1979"

"$have_gas_1979":                                 ; preds = %"$out_of_gas_1978", %"$Some_1972"
  %"$consume_1980" = sub i64 %"$gasrem_1976", 1
  store i64 %"$consume_1980", i64* @_gasrem, align 8
  %"$false_1981" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1981", %TName_Bool** %"$test_66", align 8, !dbg !424
  br label %"$matchsucc_1967"

"$None_1982":                                     ; preds = %"$have_gas_1965"
  %"$$resopt_65_1983" = bitcast %TName_Option_Uint256* %"$$resopt_65_1968" to %CName_None_Uint256*
  %"$gasrem_1984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1985" = icmp ugt i64 1, %"$gasrem_1984"
  br i1 %"$gascmp_1985", label %"$out_of_gas_1986", label %"$have_gas_1987"

"$out_of_gas_1986":                               ; preds = %"$None_1982"
  call void @_out_of_gas()
  br label %"$have_gas_1987"

"$have_gas_1987":                                 ; preds = %"$out_of_gas_1986", %"$None_1982"
  %"$consume_1988" = sub i64 %"$gasrem_1984", 1
  store i64 %"$consume_1988", i64* @_gasrem, align 8
  %"$$test_63_1989" = load %TName_Bool*, %TName_Bool** %"$test_63", align 8
  store %TName_Bool* %"$$test_63_1989", %TName_Bool** %"$test_66", align 8, !dbg !427
  br label %"$matchsucc_1967"

"$empty_default_1971":                            ; preds = %"$have_gas_1965"
  br label %"$matchsucc_1967"

"$matchsucc_1967":                                ; preds = %"$have_gas_1987", %"$have_gas_1979", %"$empty_default_1971"
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %"$matchsucc_1967"
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %"$matchsucc_1967"
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  %"$input_67" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_67", metadata !429, metadata !DIExpression()), !dbg !430
  %"$gasrem_1995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1996" = icmp ugt i64 1, %"$gasrem_1995"
  br i1 %"$gascmp_1996", label %"$out_of_gas_1997", label %"$have_gas_1998"

"$out_of_gas_1997":                               ; preds = %"$have_gas_1993"
  call void @_out_of_gas()
  br label %"$have_gas_1998"

"$have_gas_1998":                                 ; preds = %"$out_of_gas_1997", %"$have_gas_1993"
  %"$consume_1999" = sub i64 %"$gasrem_1995", 1
  store i64 %"$consume_1999", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"$stringlit_2000", i32 0, i32 0), i32 37 }, %String* %"$input_67", align 8, !dbg !431
  %"$gasrem_2001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2002" = icmp ugt i64 1, %"$gasrem_2001"
  br i1 %"$gascmp_2002", label %"$out_of_gas_2003", label %"$have_gas_2004"

"$out_of_gas_2003":                               ; preds = %"$have_gas_1998"
  call void @_out_of_gas()
  br label %"$have_gas_2004"

"$have_gas_2004":                                 ; preds = %"$out_of_gas_2003", %"$have_gas_1998"
  %"$consume_2005" = sub i64 %"$gasrem_2001", 1
  store i64 %"$consume_2005", i64* @_gasrem, align 8
  %"$resopt_68" = alloca %TName_Option_Uint256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint256** %"$resopt_68", metadata !432, metadata !DIExpression()), !dbg !433
  %"$gasrem_2006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2007" = icmp ugt i64 16, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %"$have_gas_2004"
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %"$have_gas_2004"
  %"$consume_2010" = sub i64 %"$gasrem_2006", 16
  store i64 %"$consume_2010", i64* @_gasrem, align 8
  %"$execptr_load_2011" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_$input_67_2012" = alloca %String, align 8
  %"$$input_67_2013" = load %String, %String* %"$input_67", align 8
  store %String %"$$input_67_2013", %String* %"$to_uint256_$input_67_2012", align 8
  %"$$to_uint256_$input_67_2012_2014" = bitcast %String* %"$to_uint256_$input_67_2012" to i8*
  %"$to_uint256_call_2015" = call i8* @_to_uint256(i8* %"$execptr_load_2011", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint256_$input_67_2012_2014"), !dbg !434
  %"$to_uint256_2016" = bitcast i8* %"$to_uint256_call_2015" to %TName_Option_Uint256*
  store %TName_Option_Uint256* %"$to_uint256_2016", %TName_Option_Uint256** %"$resopt_68", align 8, !dbg !434
  %"$gasrem_2017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2018" = icmp ugt i64 1, %"$gasrem_2017"
  br i1 %"$gascmp_2018", label %"$out_of_gas_2019", label %"$have_gas_2020"

"$out_of_gas_2019":                               ; preds = %"$have_gas_2009"
  call void @_out_of_gas()
  br label %"$have_gas_2020"

"$have_gas_2020":                                 ; preds = %"$out_of_gas_2019", %"$have_gas_2009"
  %"$consume_2021" = sub i64 %"$gasrem_2017", 1
  store i64 %"$consume_2021", i64* @_gasrem, align 8
  %"$test_69" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_69", metadata !435, metadata !DIExpression()), !dbg !436
  %"$gasrem_2022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2023" = icmp ugt i64 2, %"$gasrem_2022"
  br i1 %"$gascmp_2023", label %"$out_of_gas_2024", label %"$have_gas_2025"

"$out_of_gas_2024":                               ; preds = %"$have_gas_2020"
  call void @_out_of_gas()
  br label %"$have_gas_2025"

"$have_gas_2025":                                 ; preds = %"$out_of_gas_2024", %"$have_gas_2020"
  %"$consume_2026" = sub i64 %"$gasrem_2022", 2
  store i64 %"$consume_2026", i64* @_gasrem, align 8
  %"$$resopt_68_2028" = load %TName_Option_Uint256*, %TName_Option_Uint256** %"$resopt_68", align 8
  %"$$resopt_68_tag_2029" = getelementptr inbounds %TName_Option_Uint256, %TName_Option_Uint256* %"$$resopt_68_2028", i32 0, i32 0
  %"$$resopt_68_tag_2030" = load i8, i8* %"$$resopt_68_tag_2029", align 1
  switch i8 %"$$resopt_68_tag_2030", label %"$empty_default_2031" [
    i8 0, label %"$Some_2032"
    i8 1, label %"$None_2042"
  ], !dbg !437

"$Some_2032":                                     ; preds = %"$have_gas_2025"
  %"$$resopt_68_2033" = bitcast %TName_Option_Uint256* %"$$resopt_68_2028" to %CName_Some_Uint256*
  %"$$$resopt_68_82_gep_2034" = getelementptr inbounds %CName_Some_Uint256, %CName_Some_Uint256* %"$$resopt_68_2033", i32 0, i32 1
  %"$$$resopt_68_82_load_2035" = load %Uint256, %Uint256* %"$$$resopt_68_82_gep_2034", align 8
  %"$$resopt_68_82" = alloca %Uint256, align 8
  store %Uint256 %"$$$resopt_68_82_load_2035", %Uint256* %"$$resopt_68_82", align 8
  %"$gasrem_2036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2037" = icmp ugt i64 1, %"$gasrem_2036"
  br i1 %"$gascmp_2037", label %"$out_of_gas_2038", label %"$have_gas_2039"

"$out_of_gas_2038":                               ; preds = %"$Some_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2039"

"$have_gas_2039":                                 ; preds = %"$out_of_gas_2038", %"$Some_2032"
  %"$consume_2040" = sub i64 %"$gasrem_2036", 1
  store i64 %"$consume_2040", i64* @_gasrem, align 8
  %"$false_2041" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2041", %TName_Bool** %"$test_69", align 8, !dbg !438
  br label %"$matchsucc_2027"

"$None_2042":                                     ; preds = %"$have_gas_2025"
  %"$$resopt_68_2043" = bitcast %TName_Option_Uint256* %"$$resopt_68_2028" to %CName_None_Uint256*
  %"$gasrem_2044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2045" = icmp ugt i64 1, %"$gasrem_2044"
  br i1 %"$gascmp_2045", label %"$out_of_gas_2046", label %"$have_gas_2047"

"$out_of_gas_2046":                               ; preds = %"$None_2042"
  call void @_out_of_gas()
  br label %"$have_gas_2047"

"$have_gas_2047":                                 ; preds = %"$out_of_gas_2046", %"$None_2042"
  %"$consume_2048" = sub i64 %"$gasrem_2044", 1
  store i64 %"$consume_2048", i64* @_gasrem, align 8
  %"$$test_66_2049" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  store %TName_Bool* %"$$test_66_2049", %TName_Bool** %"$test_69", align 8, !dbg !441
  br label %"$matchsucc_2027"

"$empty_default_2031":                            ; preds = %"$have_gas_2025"
  br label %"$matchsucc_2027"

"$matchsucc_2027":                                ; preds = %"$have_gas_2047", %"$have_gas_2039", %"$empty_default_2031"
  %"$gasrem_2050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2051" = icmp ugt i64 1, %"$gasrem_2050"
  br i1 %"$gascmp_2051", label %"$out_of_gas_2052", label %"$have_gas_2053"

"$out_of_gas_2052":                               ; preds = %"$matchsucc_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2053"

"$have_gas_2053":                                 ; preds = %"$out_of_gas_2052", %"$matchsucc_2027"
  %"$consume_2054" = sub i64 %"$gasrem_2050", 1
  store i64 %"$consume_2054", i64* @_gasrem, align 8
  %"$input_70" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$input_70", metadata !443, metadata !DIExpression()), !dbg !444
  %"$gasrem_2055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2056" = icmp ugt i64 1, %"$gasrem_2055"
  br i1 %"$gascmp_2056", label %"$out_of_gas_2057", label %"$have_gas_2058"

"$out_of_gas_2057":                               ; preds = %"$have_gas_2053"
  call void @_out_of_gas()
  br label %"$have_gas_2058"

"$have_gas_2058":                                 ; preds = %"$out_of_gas_2057", %"$have_gas_2053"
  %"$consume_2059" = sub i64 %"$gasrem_2055", 1
  store i64 %"$consume_2059", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_2060", i32 0, i32 0), i32 4 }, %String* %"$input_70", align 8, !dbg !445
  %"$gasrem_2061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2062" = icmp ugt i64 1, %"$gasrem_2061"
  br i1 %"$gascmp_2062", label %"$out_of_gas_2063", label %"$have_gas_2064"

"$out_of_gas_2063":                               ; preds = %"$have_gas_2058"
  call void @_out_of_gas()
  br label %"$have_gas_2064"

"$have_gas_2064":                                 ; preds = %"$out_of_gas_2063", %"$have_gas_2058"
  %"$consume_2065" = sub i64 %"$gasrem_2061", 1
  store i64 %"$consume_2065", i64* @_gasrem, align 8
  %"$resopt_71" = alloca %TName_Option_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint64** %"$resopt_71", metadata !446, metadata !DIExpression()), !dbg !447
  %"$gasrem_2066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2067" = icmp ugt i64 4, %"$gasrem_2066"
  br i1 %"$gascmp_2067", label %"$out_of_gas_2068", label %"$have_gas_2069"

"$out_of_gas_2068":                               ; preds = %"$have_gas_2064"
  call void @_out_of_gas()
  br label %"$have_gas_2069"

"$have_gas_2069":                                 ; preds = %"$out_of_gas_2068", %"$have_gas_2064"
  %"$consume_2070" = sub i64 %"$gasrem_2066", 4
  store i64 %"$consume_2070", i64* @_gasrem, align 8
  %"$execptr_load_2071" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_$input_70_2072" = alloca %String, align 8
  %"$$input_70_2073" = load %String, %String* %"$input_70", align 8
  store %String %"$$input_70_2073", %String* %"$to_uint64_$input_70_2072", align 8
  %"$$to_uint64_$input_70_2072_2074" = bitcast %String* %"$to_uint64_$input_70_2072" to i8*
  %"$to_uint64_call_2075" = call i8* @_to_uint64(i8* %"$execptr_load_2071", %_TyDescrTy_Typ* @"$TyDescr_String_131", i8* %"$$to_uint64_$input_70_2072_2074"), !dbg !448
  %"$to_uint64_2076" = bitcast i8* %"$to_uint64_call_2075" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_2076", %TName_Option_Uint64** %"$resopt_71", align 8, !dbg !448
  %"$gasrem_2077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2078" = icmp ugt i64 1, %"$gasrem_2077"
  br i1 %"$gascmp_2078", label %"$out_of_gas_2079", label %"$have_gas_2080"

"$out_of_gas_2079":                               ; preds = %"$have_gas_2069"
  call void @_out_of_gas()
  br label %"$have_gas_2080"

"$have_gas_2080":                                 ; preds = %"$out_of_gas_2079", %"$have_gas_2069"
  %"$consume_2081" = sub i64 %"$gasrem_2077", 1
  store i64 %"$consume_2081", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_72", metadata !449, metadata !DIExpression()), !dbg !450
  %"$gasrem_2082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2083" = icmp ugt i64 2, %"$gasrem_2082"
  br i1 %"$gascmp_2083", label %"$out_of_gas_2084", label %"$have_gas_2085"

"$out_of_gas_2084":                               ; preds = %"$have_gas_2080"
  call void @_out_of_gas()
  br label %"$have_gas_2085"

"$have_gas_2085":                                 ; preds = %"$out_of_gas_2084", %"$have_gas_2080"
  %"$consume_2086" = sub i64 %"$gasrem_2082", 2
  store i64 %"$consume_2086", i64* @_gasrem, align 8
  %"$$resopt_71_2088" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$resopt_71", align 8
  %"$$resopt_71_tag_2089" = getelementptr inbounds %TName_Option_Uint64, %TName_Option_Uint64* %"$$resopt_71_2088", i32 0, i32 0
  %"$$resopt_71_tag_2090" = load i8, i8* %"$$resopt_71_tag_2089", align 1
  switch i8 %"$$resopt_71_tag_2090", label %"$empty_default_2091" [
    i8 0, label %"$Some_2092"
    i8 1, label %"$None_2102"
  ], !dbg !451

"$Some_2092":                                     ; preds = %"$have_gas_2085"
  %"$$resopt_71_2093" = bitcast %TName_Option_Uint64* %"$$resopt_71_2088" to %CName_Some_Uint64*
  %"$$$resopt_71_83_gep_2094" = getelementptr inbounds %CName_Some_Uint64, %CName_Some_Uint64* %"$$resopt_71_2093", i32 0, i32 1
  %"$$$resopt_71_83_load_2095" = load %Uint64, %Uint64* %"$$$resopt_71_83_gep_2094", align 8
  %"$$resopt_71_83" = alloca %Uint64, align 8
  store %Uint64 %"$$$resopt_71_83_load_2095", %Uint64* %"$$resopt_71_83", align 8
  %"$gasrem_2096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2097" = icmp ugt i64 1, %"$gasrem_2096"
  br i1 %"$gascmp_2097", label %"$out_of_gas_2098", label %"$have_gas_2099"

"$out_of_gas_2098":                               ; preds = %"$Some_2092"
  call void @_out_of_gas()
  br label %"$have_gas_2099"

"$have_gas_2099":                                 ; preds = %"$out_of_gas_2098", %"$Some_2092"
  %"$consume_2100" = sub i64 %"$gasrem_2096", 1
  store i64 %"$consume_2100", i64* @_gasrem, align 8
  %"$false_2101" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_2101", %TName_Bool** %"$test_72", align 8, !dbg !452
  br label %"$matchsucc_2087"

"$None_2102":                                     ; preds = %"$have_gas_2085"
  %"$$resopt_71_2103" = bitcast %TName_Option_Uint64* %"$$resopt_71_2088" to %CName_None_Uint64*
  %"$gasrem_2104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2105" = icmp ugt i64 1, %"$gasrem_2104"
  br i1 %"$gascmp_2105", label %"$out_of_gas_2106", label %"$have_gas_2107"

"$out_of_gas_2106":                               ; preds = %"$None_2102"
  call void @_out_of_gas()
  br label %"$have_gas_2107"

"$have_gas_2107":                                 ; preds = %"$out_of_gas_2106", %"$None_2102"
  %"$consume_2108" = sub i64 %"$gasrem_2104", 1
  store i64 %"$consume_2108", i64* @_gasrem, align 8
  %"$$test_69_2109" = load %TName_Bool*, %TName_Bool** %"$test_69", align 8
  store %TName_Bool* %"$$test_69_2109", %TName_Bool** %"$test_72", align 8, !dbg !455
  br label %"$matchsucc_2087"

"$empty_default_2091":                            ; preds = %"$have_gas_2085"
  br label %"$matchsucc_2087"

"$matchsucc_2087":                                ; preds = %"$have_gas_2107", %"$have_gas_2099", %"$empty_default_2091"
  %"$gasrem_2110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2111" = icmp ugt i64 1, %"$gasrem_2110"
  br i1 %"$gascmp_2111", label %"$out_of_gas_2112", label %"$have_gas_2113"

"$out_of_gas_2112":                               ; preds = %"$matchsucc_2087"
  call void @_out_of_gas()
  br label %"$have_gas_2113"

"$have_gas_2113":                                 ; preds = %"$out_of_gas_2112", %"$matchsucc_2087"
  %"$consume_2114" = sub i64 %"$gasrem_2110", 1
  store i64 %"$consume_2114", i64* @_gasrem, align 8
  %"$$test_72_2115" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  store %TName_Bool* %"$$test_72_2115", %TName_Bool** %"$expr_112", align 8, !dbg !457
  %"$$expr_112_2116" = load %TName_Bool*, %TName_Bool** %"$expr_112", align 8
  ret %TName_Bool* %"$$expr_112_2116"
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
  %"$exprval_2117" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2118" = bitcast %TName_Bool* %"$exprval_2117" to i8*
  %"$execptr_load_2119" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2119", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_151", i8* %"$memvoidcast_2118")
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
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_111", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_108", linkageName: "$fundef_108", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$expr_112", scope: !28, file: !2, line: 1, type: !10)
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
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint32)", baseType: !42, size: 8, align: 8, dwarfAddressSpace: 0)
!42 = !DIBasicType(name: "Option (Uint32)", size: 8)
!43 = !DILocation(line: 5, column: 5, scope: !28)
!44 = !DILocation(line: 5, column: 14, scope: !28)
!45 = !DILocalVariable(name: "$test_6", scope: !28, file: !2, line: 6, type: !10)
!46 = !DILocation(line: 6, column: 5, scope: !28)
!47 = !DILocation(line: 7, column: 3, scope: !28)
!48 = !DILocalVariable(name: "input_", scope: !49, file: !2, line: 9, type: !37)
!49 = distinct !DILexicalBlock(scope: !50, file: !2, line: 8, column: 5)
!50 = distinct !DILexicalBlock(scope: !28, file: !2, line: 7, column: 3)
!51 = !DILocation(line: 9, column: 9, scope: !49)
!52 = !DILocation(line: 9, column: 18, scope: !49)
!53 = !DILocalVariable(name: "test_", scope: !49, file: !2, line: 10, type: !10)
!54 = !DILocation(line: 10, column: 9, scope: !49)
!55 = !DILocation(line: 10, column: 17, scope: !49)
!56 = !DILocation(line: 11, column: 5, scope: !49)
!57 = !DILocalVariable(name: "$BoolUtils.andb_85", scope: !49, file: !2, line: 11, type: !10)
!58 = !DILocation(line: 12, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !2, line: 12, column: 5)
!60 = !DILocalVariable(name: "$input_7", scope: !28, file: !2, line: 16, type: !61)
!61 = !DIBasicType(name: "Uint128", size: 16)
!62 = !DILocation(line: 16, column: 5, scope: !28)
!63 = !DILocation(line: 16, column: 13, scope: !28)
!64 = !DILocalVariable(name: "$resopt_8", scope: !28, file: !2, line: 17, type: !41)
!65 = !DILocation(line: 17, column: 5, scope: !28)
!66 = !DILocation(line: 17, column: 14, scope: !28)
!67 = !DILocalVariable(name: "$test_9", scope: !28, file: !2, line: 18, type: !10)
!68 = !DILocation(line: 18, column: 5, scope: !28)
!69 = !DILocation(line: 19, column: 3, scope: !28)
!70 = !DILocalVariable(name: "input_", scope: !71, file: !2, line: 21, type: !37)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 20, column: 5)
!72 = distinct !DILexicalBlock(scope: !28, file: !2, line: 19, column: 3)
!73 = !DILocation(line: 21, column: 9, scope: !71)
!74 = !DILocation(line: 21, column: 18, scope: !71)
!75 = !DILocalVariable(name: "test_", scope: !71, file: !2, line: 22, type: !10)
!76 = !DILocation(line: 22, column: 9, scope: !71)
!77 = !DILocation(line: 22, column: 17, scope: !71)
!78 = !DILocation(line: 23, column: 5, scope: !71)
!79 = !DILocalVariable(name: "$BoolUtils.andb_87", scope: !71, file: !2, line: 23, type: !10)
!80 = !DILocation(line: 24, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !2, line: 24, column: 5)
!82 = !DILocalVariable(name: "$input_10", scope: !28, file: !2, line: 28, type: !83)
!83 = !DIBasicType(name: "Uint64", size: 8)
!84 = !DILocation(line: 28, column: 5, scope: !28)
!85 = !DILocation(line: 28, column: 13, scope: !28)
!86 = !DILocalVariable(name: "$resopt_11", scope: !28, file: !2, line: 29, type: !41)
!87 = !DILocation(line: 29, column: 5, scope: !28)
!88 = !DILocation(line: 29, column: 14, scope: !28)
!89 = !DILocalVariable(name: "$test_12", scope: !28, file: !2, line: 30, type: !10)
!90 = !DILocation(line: 30, column: 5, scope: !28)
!91 = !DILocation(line: 31, column: 3, scope: !28)
!92 = !DILocation(line: 32, column: 15, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 32, column: 5)
!94 = distinct !DILexicalBlock(scope: !28, file: !2, line: 31, column: 3)
!95 = !DILocation(line: 33, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !94, file: !2, line: 33, column: 5)
!97 = !DILocalVariable(name: "$input_13", scope: !28, file: !2, line: 37, type: !61)
!98 = !DILocation(line: 37, column: 5, scope: !28)
!99 = !DILocation(line: 37, column: 13, scope: !28)
!100 = !DILocalVariable(name: "$resopt_14", scope: !28, file: !2, line: 38, type: !41)
!101 = !DILocation(line: 38, column: 5, scope: !28)
!102 = !DILocation(line: 38, column: 14, scope: !28)
!103 = !DILocalVariable(name: "$test_15", scope: !28, file: !2, line: 39, type: !10)
!104 = !DILocation(line: 39, column: 5, scope: !28)
!105 = !DILocation(line: 40, column: 3, scope: !28)
!106 = !DILocation(line: 41, column: 15, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 41, column: 5)
!108 = distinct !DILexicalBlock(scope: !28, file: !2, line: 40, column: 3)
!109 = !DILocation(line: 42, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !108, file: !2, line: 42, column: 5)
!111 = !DILocalVariable(name: "$input_16", scope: !28, file: !2, line: 46, type: !112)
!112 = !DIBasicType(name: "Uint256", size: 32)
!113 = !DILocation(line: 46, column: 5, scope: !28)
!114 = !DILocation(line: 46, column: 13, scope: !28)
!115 = !DILocalVariable(name: "$resopt_17", scope: !28, file: !2, line: 47, type: !41)
!116 = !DILocation(line: 47, column: 5, scope: !28)
!117 = !DILocation(line: 47, column: 14, scope: !28)
!118 = !DILocalVariable(name: "$test_18", scope: !28, file: !2, line: 48, type: !10)
!119 = !DILocation(line: 48, column: 5, scope: !28)
!120 = !DILocation(line: 49, column: 3, scope: !28)
!121 = !DILocation(line: 50, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 50, column: 5)
!123 = distinct !DILexicalBlock(scope: !28, file: !2, line: 49, column: 3)
!124 = !DILocation(line: 51, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !123, file: !2, line: 51, column: 5)
!126 = !DILocalVariable(name: "$input_19", scope: !28, file: !2, line: 55, type: !37)
!127 = !DILocation(line: 55, column: 5, scope: !28)
!128 = !DILocation(line: 55, column: 13, scope: !28)
!129 = !DILocalVariable(name: "$resopt_20", scope: !28, file: !2, line: 56, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint64)", baseType: !131, size: 8, align: 8, dwarfAddressSpace: 0)
!131 = !DIBasicType(name: "Option (Uint64)", size: 8)
!132 = !DILocation(line: 56, column: 5, scope: !28)
!133 = !DILocation(line: 56, column: 14, scope: !28)
!134 = !DILocalVariable(name: "$test_21", scope: !28, file: !2, line: 57, type: !10)
!135 = !DILocation(line: 57, column: 5, scope: !28)
!136 = !DILocation(line: 58, column: 3, scope: !28)
!137 = !DILocalVariable(name: "input_", scope: !138, file: !2, line: 60, type: !83)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 59, column: 5)
!139 = distinct !DILexicalBlock(scope: !28, file: !2, line: 58, column: 3)
!140 = !DILocation(line: 60, column: 9, scope: !138)
!141 = !DILocation(line: 60, column: 18, scope: !138)
!142 = !DILocalVariable(name: "test_", scope: !138, file: !2, line: 61, type: !10)
!143 = !DILocation(line: 61, column: 9, scope: !138)
!144 = !DILocation(line: 61, column: 17, scope: !138)
!145 = !DILocation(line: 62, column: 5, scope: !138)
!146 = !DILocalVariable(name: "$BoolUtils.andb_89", scope: !138, file: !2, line: 62, type: !10)
!147 = !DILocation(line: 63, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !139, file: !2, line: 63, column: 5)
!149 = !DILocalVariable(name: "$input_22", scope: !28, file: !2, line: 67, type: !83)
!150 = !DILocation(line: 67, column: 5, scope: !28)
!151 = !DILocation(line: 67, column: 13, scope: !28)
!152 = !DILocalVariable(name: "$resopt_23", scope: !28, file: !2, line: 68, type: !130)
!153 = !DILocation(line: 68, column: 5, scope: !28)
!154 = !DILocation(line: 68, column: 14, scope: !28)
!155 = !DILocalVariable(name: "$test_24", scope: !28, file: !2, line: 69, type: !10)
!156 = !DILocation(line: 69, column: 5, scope: !28)
!157 = !DILocation(line: 70, column: 3, scope: !28)
!158 = !DILocalVariable(name: "input_", scope: !159, file: !2, line: 72, type: !83)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 71, column: 5)
!160 = distinct !DILexicalBlock(scope: !28, file: !2, line: 70, column: 3)
!161 = !DILocation(line: 72, column: 9, scope: !159)
!162 = !DILocation(line: 72, column: 18, scope: !159)
!163 = !DILocalVariable(name: "test_", scope: !159, file: !2, line: 73, type: !10)
!164 = !DILocation(line: 73, column: 9, scope: !159)
!165 = !DILocation(line: 73, column: 17, scope: !159)
!166 = !DILocation(line: 74, column: 5, scope: !159)
!167 = !DILocalVariable(name: "$BoolUtils.andb_91", scope: !159, file: !2, line: 74, type: !10)
!168 = !DILocation(line: 75, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !2, line: 75, column: 5)
!170 = !DILocalVariable(name: "$input_25", scope: !28, file: !2, line: 79, type: !61)
!171 = !DILocation(line: 79, column: 5, scope: !28)
!172 = !DILocation(line: 79, column: 13, scope: !28)
!173 = !DILocalVariable(name: "$resopt_26", scope: !28, file: !2, line: 80, type: !130)
!174 = !DILocation(line: 80, column: 5, scope: !28)
!175 = !DILocation(line: 80, column: 14, scope: !28)
!176 = !DILocalVariable(name: "$test_27", scope: !28, file: !2, line: 81, type: !10)
!177 = !DILocation(line: 81, column: 5, scope: !28)
!178 = !DILocation(line: 82, column: 3, scope: !28)
!179 = !DILocalVariable(name: "input_", scope: !180, file: !2, line: 84, type: !83)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 83, column: 5)
!181 = distinct !DILexicalBlock(scope: !28, file: !2, line: 82, column: 3)
!182 = !DILocation(line: 84, column: 9, scope: !180)
!183 = !DILocation(line: 84, column: 18, scope: !180)
!184 = !DILocalVariable(name: "test_", scope: !180, file: !2, line: 85, type: !10)
!185 = !DILocation(line: 85, column: 9, scope: !180)
!186 = !DILocation(line: 85, column: 17, scope: !180)
!187 = !DILocation(line: 86, column: 5, scope: !180)
!188 = !DILocalVariable(name: "$BoolUtils.andb_93", scope: !180, file: !2, line: 86, type: !10)
!189 = !DILocation(line: 87, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !2, line: 87, column: 5)
!191 = !DILocalVariable(name: "$input_28", scope: !28, file: !2, line: 91, type: !61)
!192 = !DILocation(line: 91, column: 5, scope: !28)
!193 = !DILocation(line: 91, column: 13, scope: !28)
!194 = !DILocalVariable(name: "$resopt_29", scope: !28, file: !2, line: 92, type: !130)
!195 = !DILocation(line: 92, column: 5, scope: !28)
!196 = !DILocation(line: 92, column: 14, scope: !28)
!197 = !DILocalVariable(name: "$test_30", scope: !28, file: !2, line: 93, type: !10)
!198 = !DILocation(line: 93, column: 5, scope: !28)
!199 = !DILocation(line: 94, column: 3, scope: !28)
!200 = !DILocation(line: 95, column: 15, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 95, column: 5)
!202 = distinct !DILexicalBlock(scope: !28, file: !2, line: 94, column: 3)
!203 = !DILocation(line: 96, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !202, file: !2, line: 96, column: 5)
!205 = !DILocalVariable(name: "$input_31", scope: !28, file: !2, line: 100, type: !112)
!206 = !DILocation(line: 100, column: 5, scope: !28)
!207 = !DILocation(line: 100, column: 13, scope: !28)
!208 = !DILocalVariable(name: "$resopt_32", scope: !28, file: !2, line: 101, type: !130)
!209 = !DILocation(line: 101, column: 5, scope: !28)
!210 = !DILocation(line: 101, column: 14, scope: !28)
!211 = !DILocalVariable(name: "$test_33", scope: !28, file: !2, line: 102, type: !10)
!212 = !DILocation(line: 102, column: 5, scope: !28)
!213 = !DILocation(line: 103, column: 3, scope: !28)
!214 = !DILocation(line: 104, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 104, column: 5)
!216 = distinct !DILexicalBlock(scope: !28, file: !2, line: 103, column: 3)
!217 = !DILocation(line: 105, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !216, file: !2, line: 105, column: 5)
!219 = !DILocalVariable(name: "$input_34", scope: !28, file: !2, line: 109, type: !61)
!220 = !DILocation(line: 109, column: 5, scope: !28)
!221 = !DILocation(line: 109, column: 13, scope: !28)
!222 = !DILocalVariable(name: "$resopt_35", scope: !28, file: !2, line: 110, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint128)", baseType: !224, size: 8, align: 8, dwarfAddressSpace: 0)
!224 = !DIBasicType(name: "Option (Uint128)", size: 8)
!225 = !DILocation(line: 110, column: 5, scope: !28)
!226 = !DILocation(line: 110, column: 14, scope: !28)
!227 = !DILocalVariable(name: "$test_36", scope: !28, file: !2, line: 111, type: !10)
!228 = !DILocation(line: 111, column: 5, scope: !28)
!229 = !DILocation(line: 112, column: 3, scope: !28)
!230 = !DILocalVariable(name: "input_", scope: !231, file: !2, line: 114, type: !61)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 113, column: 5)
!232 = distinct !DILexicalBlock(scope: !28, file: !2, line: 112, column: 3)
!233 = !DILocation(line: 114, column: 9, scope: !231)
!234 = !DILocation(line: 114, column: 18, scope: !231)
!235 = !DILocalVariable(name: "test_", scope: !231, file: !2, line: 115, type: !10)
!236 = !DILocation(line: 115, column: 9, scope: !231)
!237 = !DILocation(line: 115, column: 17, scope: !231)
!238 = !DILocation(line: 116, column: 5, scope: !231)
!239 = !DILocalVariable(name: "$BoolUtils.andb_95", scope: !231, file: !2, line: 116, type: !10)
!240 = !DILocation(line: 117, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !232, file: !2, line: 117, column: 5)
!242 = !DILocalVariable(name: "$input_37", scope: !28, file: !2, line: 121, type: !61)
!243 = !DILocation(line: 121, column: 5, scope: !28)
!244 = !DILocation(line: 121, column: 13, scope: !28)
!245 = !DILocalVariable(name: "$resopt_38", scope: !28, file: !2, line: 122, type: !223)
!246 = !DILocation(line: 122, column: 5, scope: !28)
!247 = !DILocation(line: 122, column: 14, scope: !28)
!248 = !DILocalVariable(name: "$test_39", scope: !28, file: !2, line: 123, type: !10)
!249 = !DILocation(line: 123, column: 5, scope: !28)
!250 = !DILocation(line: 124, column: 3, scope: !28)
!251 = !DILocalVariable(name: "input_", scope: !252, file: !2, line: 126, type: !61)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 125, column: 5)
!253 = distinct !DILexicalBlock(scope: !28, file: !2, line: 124, column: 3)
!254 = !DILocation(line: 126, column: 9, scope: !252)
!255 = !DILocation(line: 126, column: 18, scope: !252)
!256 = !DILocalVariable(name: "test_", scope: !252, file: !2, line: 127, type: !10)
!257 = !DILocation(line: 127, column: 9, scope: !252)
!258 = !DILocation(line: 127, column: 17, scope: !252)
!259 = !DILocation(line: 128, column: 5, scope: !252)
!260 = !DILocalVariable(name: "$BoolUtils.andb_97", scope: !252, file: !2, line: 128, type: !10)
!261 = !DILocation(line: 129, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !253, file: !2, line: 129, column: 5)
!263 = !DILocalVariable(name: "$input_40", scope: !28, file: !2, line: 133, type: !112)
!264 = !DILocation(line: 133, column: 5, scope: !28)
!265 = !DILocation(line: 133, column: 13, scope: !28)
!266 = !DILocalVariable(name: "$resopt_41", scope: !28, file: !2, line: 134, type: !223)
!267 = !DILocation(line: 134, column: 5, scope: !28)
!268 = !DILocation(line: 134, column: 14, scope: !28)
!269 = !DILocalVariable(name: "$test_42", scope: !28, file: !2, line: 135, type: !10)
!270 = !DILocation(line: 135, column: 5, scope: !28)
!271 = !DILocation(line: 136, column: 3, scope: !28)
!272 = !DILocation(line: 137, column: 15, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 137, column: 5)
!274 = distinct !DILexicalBlock(scope: !28, file: !2, line: 136, column: 3)
!275 = !DILocation(line: 138, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !2, line: 138, column: 5)
!277 = !DILocalVariable(name: "$input_43", scope: !28, file: !2, line: 142, type: !112)
!278 = !DILocation(line: 142, column: 5, scope: !28)
!279 = !DILocation(line: 142, column: 13, scope: !28)
!280 = !DILocalVariable(name: "$resopt_44", scope: !28, file: !2, line: 143, type: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint256)", baseType: !282, size: 8, align: 8, dwarfAddressSpace: 0)
!282 = !DIBasicType(name: "Option (Uint256)", size: 8)
!283 = !DILocation(line: 143, column: 5, scope: !28)
!284 = !DILocation(line: 143, column: 14, scope: !28)
!285 = !DILocalVariable(name: "$test_45", scope: !28, file: !2, line: 144, type: !10)
!286 = !DILocation(line: 144, column: 5, scope: !28)
!287 = !DILocation(line: 145, column: 3, scope: !28)
!288 = !DILocalVariable(name: "input_", scope: !289, file: !2, line: 147, type: !112)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 146, column: 5)
!290 = distinct !DILexicalBlock(scope: !28, file: !2, line: 145, column: 3)
!291 = !DILocation(line: 147, column: 9, scope: !289)
!292 = !DILocation(line: 147, column: 18, scope: !289)
!293 = !DILocalVariable(name: "test_", scope: !289, file: !2, line: 148, type: !10)
!294 = !DILocation(line: 148, column: 9, scope: !289)
!295 = !DILocation(line: 148, column: 17, scope: !289)
!296 = !DILocation(line: 149, column: 5, scope: !289)
!297 = !DILocalVariable(name: "$BoolUtils.andb_99", scope: !289, file: !2, line: 149, type: !10)
!298 = !DILocation(line: 150, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !290, file: !2, line: 150, column: 5)
!300 = !DILocalVariable(name: "$input_46", scope: !28, file: !2, line: 154, type: !37)
!301 = !DILocation(line: 154, column: 5, scope: !28)
!302 = !DILocation(line: 154, column: 13, scope: !28)
!303 = !DILocalVariable(name: "$resopt_47", scope: !28, file: !2, line: 155, type: !281)
!304 = !DILocation(line: 155, column: 5, scope: !28)
!305 = !DILocation(line: 155, column: 14, scope: !28)
!306 = !DILocalVariable(name: "$test_48", scope: !28, file: !2, line: 156, type: !10)
!307 = !DILocation(line: 156, column: 5, scope: !28)
!308 = !DILocation(line: 157, column: 3, scope: !28)
!309 = !DILocalVariable(name: "input_", scope: !310, file: !2, line: 159, type: !112)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 158, column: 5)
!311 = distinct !DILexicalBlock(scope: !28, file: !2, line: 157, column: 3)
!312 = !DILocation(line: 159, column: 9, scope: !310)
!313 = !DILocation(line: 159, column: 18, scope: !310)
!314 = !DILocalVariable(name: "test_", scope: !310, file: !2, line: 160, type: !10)
!315 = !DILocation(line: 160, column: 9, scope: !310)
!316 = !DILocation(line: 160, column: 17, scope: !310)
!317 = !DILocation(line: 161, column: 5, scope: !310)
!318 = !DILocalVariable(name: "$BoolUtils.andb_101", scope: !310, file: !2, line: 161, type: !10)
!319 = !DILocation(line: 162, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !311, file: !2, line: 162, column: 5)
!321 = !DILocalVariable(name: "$input_49", scope: !28, file: !2, line: 166, type: !322)
!322 = !DIBasicType(name: "Int32", size: 4)
!323 = !DILocation(line: 166, column: 5, scope: !28)
!324 = !DILocation(line: 166, column: 13, scope: !28)
!325 = !DILocalVariable(name: "$resopt_50", scope: !28, file: !2, line: 167, type: !41)
!326 = !DILocation(line: 167, column: 5, scope: !28)
!327 = !DILocation(line: 167, column: 14, scope: !28)
!328 = !DILocalVariable(name: "$test_51", scope: !28, file: !2, line: 168, type: !10)
!329 = !DILocation(line: 168, column: 5, scope: !28)
!330 = !DILocation(line: 169, column: 3, scope: !28)
!331 = !DILocalVariable(name: "input_", scope: !332, file: !2, line: 171, type: !37)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 170, column: 5)
!333 = distinct !DILexicalBlock(scope: !28, file: !2, line: 169, column: 3)
!334 = !DILocation(line: 171, column: 9, scope: !332)
!335 = !DILocation(line: 171, column: 18, scope: !332)
!336 = !DILocalVariable(name: "test_", scope: !332, file: !2, line: 172, type: !10)
!337 = !DILocation(line: 172, column: 9, scope: !332)
!338 = !DILocation(line: 172, column: 17, scope: !332)
!339 = !DILocation(line: 173, column: 5, scope: !332)
!340 = !DILocalVariable(name: "$BoolUtils.andb_103", scope: !332, file: !2, line: 173, type: !10)
!341 = !DILocation(line: 174, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !333, file: !2, line: 174, column: 5)
!343 = !DILocalVariable(name: "$input_52", scope: !28, file: !2, line: 178, type: !322)
!344 = !DILocation(line: 178, column: 5, scope: !28)
!345 = !DILocation(line: 178, column: 13, scope: !28)
!346 = !DILocalVariable(name: "$resopt_53", scope: !28, file: !2, line: 179, type: !41)
!347 = !DILocation(line: 179, column: 5, scope: !28)
!348 = !DILocation(line: 179, column: 14, scope: !28)
!349 = !DILocalVariable(name: "$test_54", scope: !28, file: !2, line: 180, type: !10)
!350 = !DILocation(line: 180, column: 5, scope: !28)
!351 = !DILocation(line: 181, column: 3, scope: !28)
!352 = !DILocation(line: 182, column: 15, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 182, column: 5)
!354 = distinct !DILexicalBlock(scope: !28, file: !2, line: 181, column: 3)
!355 = !DILocation(line: 183, column: 13, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !2, line: 183, column: 5)
!357 = !DILocalVariable(name: "$input_55", scope: !28, file: !2, line: 187, type: !358)
!358 = !DIBasicType(name: "String", size: 16)
!359 = !DILocation(line: 187, column: 5, scope: !28)
!360 = !DILocation(line: 187, column: 25, scope: !28)
!361 = !DILocalVariable(name: "$resopt_56", scope: !28, file: !2, line: 188, type: !41)
!362 = !DILocation(line: 188, column: 5, scope: !28)
!363 = !DILocation(line: 188, column: 14, scope: !28)
!364 = !DILocalVariable(name: "$test_57", scope: !28, file: !2, line: 189, type: !10)
!365 = !DILocation(line: 189, column: 5, scope: !28)
!366 = !DILocation(line: 190, column: 3, scope: !28)
!367 = !DILocation(line: 191, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 191, column: 5)
!369 = distinct !DILexicalBlock(scope: !28, file: !2, line: 190, column: 3)
!370 = !DILocation(line: 192, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !369, file: !2, line: 192, column: 5)
!372 = !DILocalVariable(name: "$input_58", scope: !28, file: !2, line: 196, type: !373)
!373 = !DIBasicType(name: "Int256", size: 32)
!374 = !DILocation(line: 196, column: 5, scope: !28)
!375 = !DILocation(line: 196, column: 13, scope: !28)
!376 = !DILocalVariable(name: "$resopt_59", scope: !28, file: !2, line: 197, type: !281)
!377 = !DILocation(line: 197, column: 5, scope: !28)
!378 = !DILocation(line: 197, column: 14, scope: !28)
!379 = !DILocalVariable(name: "$test_60", scope: !28, file: !2, line: 198, type: !10)
!380 = !DILocation(line: 198, column: 5, scope: !28)
!381 = !DILocation(line: 199, column: 3, scope: !28)
!382 = !DILocalVariable(name: "input_", scope: !383, file: !2, line: 201, type: !112)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 200, column: 5)
!384 = distinct !DILexicalBlock(scope: !28, file: !2, line: 199, column: 3)
!385 = !DILocation(line: 201, column: 9, scope: !383)
!386 = !DILocation(line: 201, column: 18, scope: !383)
!387 = !DILocalVariable(name: "test_", scope: !383, file: !2, line: 202, type: !10)
!388 = !DILocation(line: 202, column: 9, scope: !383)
!389 = !DILocation(line: 202, column: 17, scope: !383)
!390 = !DILocation(line: 203, column: 5, scope: !383)
!391 = !DILocalVariable(name: "$BoolUtils.andb_105", scope: !383, file: !2, line: 203, type: !10)
!392 = !DILocation(line: 204, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !384, file: !2, line: 204, column: 5)
!394 = !DILocalVariable(name: "$input_61", scope: !28, file: !2, line: 208, type: !358)
!395 = !DILocation(line: 208, column: 5, scope: !28)
!396 = !DILocation(line: 208, column: 91, scope: !28)
!397 = !DILocalVariable(name: "$resopt_62", scope: !28, file: !2, line: 209, type: !281)
!398 = !DILocation(line: 209, column: 5, scope: !28)
!399 = !DILocation(line: 209, column: 14, scope: !28)
!400 = !DILocalVariable(name: "$test_63", scope: !28, file: !2, line: 210, type: !10)
!401 = !DILocation(line: 210, column: 5, scope: !28)
!402 = !DILocation(line: 211, column: 3, scope: !28)
!403 = !DILocalVariable(name: "input_", scope: !404, file: !2, line: 213, type: !112)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 212, column: 5)
!405 = distinct !DILexicalBlock(scope: !28, file: !2, line: 211, column: 3)
!406 = !DILocation(line: 213, column: 9, scope: !404)
!407 = !DILocation(line: 213, column: 18, scope: !404)
!408 = !DILocalVariable(name: "test_", scope: !404, file: !2, line: 214, type: !10)
!409 = !DILocation(line: 214, column: 9, scope: !404)
!410 = !DILocation(line: 214, column: 17, scope: !404)
!411 = !DILocation(line: 215, column: 5, scope: !404)
!412 = !DILocalVariable(name: "$BoolUtils.andb_107", scope: !404, file: !2, line: 215, type: !10)
!413 = !DILocation(line: 216, column: 13, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !2, line: 216, column: 5)
!415 = !DILocalVariable(name: "$input_64", scope: !28, file: !2, line: 220, type: !373)
!416 = !DILocation(line: 220, column: 5, scope: !28)
!417 = !DILocation(line: 220, column: 13, scope: !28)
!418 = !DILocalVariable(name: "$resopt_65", scope: !28, file: !2, line: 221, type: !281)
!419 = !DILocation(line: 221, column: 5, scope: !28)
!420 = !DILocation(line: 221, column: 14, scope: !28)
!421 = !DILocalVariable(name: "$test_66", scope: !28, file: !2, line: 222, type: !10)
!422 = !DILocation(line: 222, column: 5, scope: !28)
!423 = !DILocation(line: 223, column: 3, scope: !28)
!424 = !DILocation(line: 224, column: 15, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !2, line: 224, column: 5)
!426 = distinct !DILexicalBlock(scope: !28, file: !2, line: 223, column: 3)
!427 = !DILocation(line: 225, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !426, file: !2, line: 225, column: 5)
!429 = !DILocalVariable(name: "$input_67", scope: !28, file: !2, line: 229, type: !358)
!430 = !DILocation(line: 229, column: 5, scope: !28)
!431 = !DILocation(line: 229, column: 51, scope: !28)
!432 = !DILocalVariable(name: "$resopt_68", scope: !28, file: !2, line: 230, type: !281)
!433 = !DILocation(line: 230, column: 5, scope: !28)
!434 = !DILocation(line: 230, column: 14, scope: !28)
!435 = !DILocalVariable(name: "$test_69", scope: !28, file: !2, line: 231, type: !10)
!436 = !DILocation(line: 231, column: 5, scope: !28)
!437 = !DILocation(line: 232, column: 3, scope: !28)
!438 = !DILocation(line: 233, column: 15, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 233, column: 5)
!440 = distinct !DILexicalBlock(scope: !28, file: !2, line: 232, column: 3)
!441 = !DILocation(line: 234, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !440, file: !2, line: 234, column: 5)
!443 = !DILocalVariable(name: "$input_70", scope: !28, file: !2, line: 238, type: !358)
!444 = !DILocation(line: 238, column: 5, scope: !28)
!445 = !DILocation(line: 238, column: 18, scope: !28)
!446 = !DILocalVariable(name: "$resopt_71", scope: !28, file: !2, line: 239, type: !130)
!447 = !DILocation(line: 239, column: 5, scope: !28)
!448 = !DILocation(line: 239, column: 14, scope: !28)
!449 = !DILocalVariable(name: "$test_72", scope: !28, file: !2, line: 240, type: !10)
!450 = !DILocation(line: 240, column: 5, scope: !28)
!451 = !DILocation(line: 241, column: 3, scope: !28)
!452 = !DILocation(line: 242, column: 15, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 242, column: 5)
!454 = distinct !DILexicalBlock(scope: !28, file: !2, line: 241, column: 3)
!455 = !DILocation(line: 243, column: 13, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !2, line: 243, column: 5)
!457 = !DILocation(line: 247, column: 1, scope: !28)
