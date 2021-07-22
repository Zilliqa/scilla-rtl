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

%"$TyDescrTy_PrimTyp_80" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_110" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_109"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_109" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_111"**, %"$TyDescrTy_ADTTyp_110"* }
%"$TyDescrTy_ADTTyp_Constr_111" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1665" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1666" = type { %ParamDescrString, i32, %"$ParamDescr_1665"* }
%"$$fundef_77_env_161" = type { %TName_Bool* }
%"$$fundef_75_env_162" = type {}
%Uint32 = type { i32 }
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%Int32 = type { i32 }
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
@"$TyDescr_ADT_Option_Int256_112" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Option_Int256_ADTTyp_Specl_128" to i8*) }
@"$TyDescr_ADT_Option_Int64_113" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Option_Int64_ADTTyp_Specl_137" to i8*) }
@"$TyDescr_ADT_Option_Int32_114" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Option_Int32_ADTTyp_Specl_146" to i8*) }
@"$TyDescr_ADT_Bool_115" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Bool_ADTTyp_Specl_158" to i8*) }
@"$TyDescr_Option_ADTTyp_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_110" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_148", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_109"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_109"*], [3 x %"$TyDescrTy_ADTTyp_Specl_109"*]* @"$TyDescr_Option_ADTTyp_m_specls_147", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int256_Constr_m_args_120" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_94"]
@"$TyDescr_ADT_Some_121" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int256_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_121", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int256_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_Option_None_Int256_Constr_m_args_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_124" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int256_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_124", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int256_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_126" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_111"*] [%"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Option_Some_Int256_ADTTyp_Constr_122", %"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Option_None_Int256_ADTTyp_Constr_125"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_127" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_94"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_109" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_111"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_111"*], [2 x %"$TyDescrTy_ADTTyp_Constr_111"*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_110"* @"$TyDescr_Option_ADTTyp_119" }
@"$TyDescr_Option_Some_Int64_Constr_m_args_129" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_86"]
@"$TyDescr_ADT_Some_130" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int64_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_130", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int64_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_Option_None_Int64_Constr_m_args_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_133" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int64_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_133", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int64_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_Option_Int64_ADTTyp_Specl_m_constrs_135" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_111"*] [%"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Option_Some_Int64_ADTTyp_Constr_131", %"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Option_None_Int64_ADTTyp_Constr_134"]
@"$TyDescr_Option_Int64_ADTTyp_Specl_m_TArgs_136" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_86"]
@"$TyDescr_Option_Int64_ADTTyp_Specl_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_109" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int64_ADTTyp_Specl_m_TArgs_136", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_111"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_111"*], [2 x %"$TyDescrTy_ADTTyp_Constr_111"*]* @"$TyDescr_Option_Int64_ADTTyp_Specl_m_constrs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_110"* @"$TyDescr_Option_ADTTyp_119" }
@"$TyDescr_Option_Some_Int32_Constr_m_args_138" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_82"]
@"$TyDescr_ADT_Some_139" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_139", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_138", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_141" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_142" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_142", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_141", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_144" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_111"*] [%"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_140", %"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_143"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_145" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_82"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_109" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_145", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_111"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_111"*], [2 x %"$TyDescrTy_ADTTyp_Constr_111"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_144", i32 0, i32 0), %"$TyDescrTy_ADTTyp_110"* @"$TyDescr_Option_ADTTyp_119" }
@"$TyDescr_Option_ADTTyp_m_specls_147" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_109"*] [%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Option_Int256_ADTTyp_Specl_128", %"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Option_Int64_ADTTyp_Specl_137", %"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Option_Int32_ADTTyp_Specl_146"]
@"$TyDescr_ADT_Option_148" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_110" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_160", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_109"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_109"*], [1 x %"$TyDescrTy_ADTTyp_Specl_109"*]* @"$TyDescr_Bool_ADTTyp_m_specls_159", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_150" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_151" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_151", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_150", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_153" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_154" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_111" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_154", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_153", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_156" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_111"*] [%"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Bool_True_ADTTyp_Constr_152", %"$TyDescrTy_ADTTyp_Constr_111"* @"$TyDescr_Bool_False_ADTTyp_Constr_155"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_157" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_109" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_157", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_111"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_111"*], [2 x %"$TyDescrTy_ADTTyp_Constr_111"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_156", i32 0, i32 0), %"$TyDescrTy_ADTTyp_110"* @"$TyDescr_Bool_ADTTyp_149" }
@"$TyDescr_Bool_ADTTyp_m_specls_159" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_109"*] [%"$TyDescrTy_ADTTyp_Specl_109"* @"$TyDescr_Bool_ADTTyp_Specl_158"]
@"$TyDescr_ADT_Bool_160" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$stringlit_436" = unnamed_addr constant [4 x i8] c"1844"
@"$stringlit_872" = unnamed_addr constant [19 x i8] c"9223372036854775808"
@"$stringlit_1120" = unnamed_addr constant [20 x i8] c"-9223372036854775808"
@"$stringlit_1312" = unnamed_addr constant [19 x i8] c"9223372036854775807"
@"$stringlit_1507" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1605" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_112", %_TyDescrTy_Typ* @"$TyDescr_Event_104", %_TyDescrTy_Typ* @"$TyDescr_Int64_86", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_115", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int64_113", %_TyDescrTy_Typ* @"$TyDescr_Uint256_96", %_TyDescrTy_Typ* @"$TyDescr_Uint32_84", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", %_TyDescrTy_Typ* @"$TyDescr_Bnum_100", %_TyDescrTy_Typ* @"$TyDescr_Uint128_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_114", %_TyDescrTy_Typ* @"$TyDescr_Exception_106", %_TyDescrTy_Typ* @"$TyDescr_String_98", %_TyDescrTy_Typ* @"$TyDescr_Int256_94", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", %_TyDescrTy_Typ* @"$TyDescr_Bystr_108", %_TyDescrTy_Typ* @"$TyDescr_Message_102", %_TyDescrTy_Typ* @"$TyDescr_Int32_82"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1665"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1666"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_77"(%"$$fundef_77_env_161"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_77_env_b_174" = getelementptr inbounds %"$$fundef_77_env_161", %"$$fundef_77_env_161"* %0, i32 0, i32 0
  %"$b_envload_175" = load %TName_Bool*, %TName_Bool** %"$$fundef_77_env_b_174", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_175", %TName_Bool** %b, align 8
  %"$retval_78" = alloca %TName_Bool*, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 2, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 2
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$b_182" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_183" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_182", i32 0, i32 0
  %"$b_tag_184" = load i8, i8* %"$b_tag_183", align 1
  switch i8 %"$b_tag_184", label %"$empty_default_185" [
    i8 1, label %"$False_186"
    i8 0, label %"$True_196"
  ]

"$False_186":                                     ; preds = %"$have_gas_179"
  %"$b_187" = bitcast %TName_Bool* %"$b_182" to %CName_False*
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$False_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$False_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$adtval_193_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_193_salloc" = call i8* @_salloc(i8* %"$adtval_193_load", i64 1)
  %"$adtval_193" = bitcast i8* %"$adtval_193_salloc" to %CName_False*
  %"$adtgep_194" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_193", i32 0, i32 0
  store i8 1, i8* %"$adtgep_194", align 1
  %"$adtptr_195" = bitcast %CName_False* %"$adtval_193" to %TName_Bool*
  store %TName_Bool* %"$adtptr_195", %TName_Bool** %"$retval_78", align 8
  br label %"$matchsucc_181"

"$True_196":                                      ; preds = %"$have_gas_179"
  %"$b_197" = bitcast %TName_Bool* %"$b_182" to %CName_True*
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$True_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$True_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_78", align 8
  br label %"$matchsucc_181"

"$empty_default_185":                             ; preds = %"$have_gas_179"
  br label %"$matchsucc_181"

"$matchsucc_181":                                 ; preds = %"$have_gas_201", %"$have_gas_191", %"$empty_default_185"
  %"$$retval_78_203" = load %TName_Bool*, %TName_Bool** %"$retval_78", align 8
  ret %TName_Bool* %"$$retval_78_203"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_75"(%"$$fundef_75_env_162"* %0, %TName_Bool* %1) {
entry:
  %"$retval_76" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$$fundef_77_envp_168_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_77_envp_168_salloc" = call i8* @_salloc(i8* %"$$fundef_77_envp_168_load", i64 8)
  %"$$fundef_77_envp_168" = bitcast i8* %"$$fundef_77_envp_168_salloc" to %"$$fundef_77_env_161"*
  %"$$fundef_77_env_voidp_170" = bitcast %"$$fundef_77_env_161"* %"$$fundef_77_envp_168" to i8*
  %"$$fundef_77_cloval_171" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_77_env_161"*, %TName_Bool*)* @"$fundef_77" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_77_env_voidp_170", 1
  %"$$fundef_77_env_b_172" = getelementptr inbounds %"$$fundef_77_env_161", %"$$fundef_77_env_161"* %"$$fundef_77_envp_168", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_77_env_b_172", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_77_cloval_171", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_76", align 8
  %"$$retval_76_173" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_76", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_76_173"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %entry
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_75_env_162"*, %TName_Bool*)* @"$fundef_75" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_79" = alloca %TName_Bool*, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %entry
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$adtval_222_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_222_salloc" = call i8* @_salloc(i8* %"$adtval_222_load", i64 1)
  %"$adtval_222" = bitcast i8* %"$adtval_222_salloc" to %CName_False*
  %"$adtgep_223" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_222", i32 0, i32 0
  store i8 1, i8* %"$adtgep_223", align 1
  %"$adtptr_224" = bitcast %CName_False* %"$adtval_222" to %TName_Bool*
  store %TName_Bool* %"$adtptr_224", %TName_Bool** %false, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_220"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$adtval_235_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_235_salloc" = call i8* @_salloc(i8* %"$adtval_235_load", i64 1)
  %"$adtval_235" = bitcast i8* %"$adtval_235_salloc" to %CName_True*
  %"$adtgep_236" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_235", i32 0, i32 0
  store i8 0, i8* %"$adtgep_236", align 1
  %"$adtptr_237" = bitcast %CName_True* %"$adtval_235" to %TName_Bool*
  store %TName_Bool* %"$adtptr_237", %TName_Bool** %test, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_233"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Int32*, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 4, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 4
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$execptr_load_258" = load i8*, i8** @_execptr, align 8
  %"$to_int32_input_259" = alloca %Uint32, align 8
  %"$input_260" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_260", %Uint32* %"$to_int32_input_259", align 4
  %"$$to_int32_input_259_261" = bitcast %Uint32* %"$to_int32_input_259" to i8*
  %"$to_int32_call_262" = call i8* @_to_int32(i8* %"$execptr_load_258", %_TyDescrTy_Typ* @"$TyDescr_Uint32_84", i8* %"$$to_int32_input_259_261")
  %"$to_int32_263" = bitcast i8* %"$to_int32_call_262" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_263", %TName_Option_Int32** %resopt, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_256"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 2, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 2
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$resopt_275" = load %TName_Option_Int32*, %TName_Option_Int32** %resopt, align 8
  %"$resopt_tag_276" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$resopt_275", i32 0, i32 0
  %"$resopt_tag_277" = load i8, i8* %"$resopt_tag_276", align 1
  switch i8 %"$resopt_tag_277", label %"$empty_default_278" [
    i8 0, label %"$Some_279"
    i8 1, label %"$None_324"
  ]

"$Some_279":                                      ; preds = %"$have_gas_272"
  %"$resopt_280" = bitcast %TName_Option_Int32* %"$resopt_275" to %CName_Some_Int32*
  %"$res_gep_281" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$resopt_280", i32 0, i32 1
  %"$res_load_282" = load %Int32, %Int32* %"$res_gep_281", align 4
  %res = alloca %Int32, align 8
  store %Int32 %"$res_load_282", %Int32* %res, align 4
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$Some_279"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$Some_279"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %input_ = alloca %Int32, align 8
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_, align 4
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 4, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 4
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$execptr_load_303" = load i8*, i8** @_execptr, align 8
  %"$res_304" = load %Int32, %Int32* %res, align 4
  %"$input__305" = load %Int32, %Int32* %input_, align 4
  %"$eq_call_306" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_303", %Int32 %"$res_304", %Int32 %"$input__305")
  store %TName_Bool* %"$eq_call_306", %TName_Bool** %test_, align 8
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_301"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$BoolUtils.andb_49" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_313" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_314" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_313", 0
  %"$BoolUtils.andb_envptr_315" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_313", 1
  %"$test_316" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_317" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_314"(i8* %"$BoolUtils.andb_envptr_315", %TName_Bool* %"$test_316")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_317", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_49", align 8
  %"$BoolUtils.andb_50" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_49_318" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_49", align 8
  %"$$BoolUtils.andb_49_fptr_319" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_49_318", 0
  %"$$BoolUtils.andb_49_envptr_320" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_49_318", 1
  %"$test__321" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_49_call_322" = call %TName_Bool* %"$$BoolUtils.andb_49_fptr_319"(i8* %"$$BoolUtils.andb_49_envptr_320", %TName_Bool* %"$test__321")
  store %TName_Bool* %"$$BoolUtils.andb_49_call_322", %TName_Bool** %"$BoolUtils.andb_50", align 8
  %"$$BoolUtils.andb_50_323" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_50", align 8
  store %TName_Bool* %"$$BoolUtils.andb_50_323", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_274"

"$None_324":                                      ; preds = %"$have_gas_272"
  %"$resopt_325" = bitcast %TName_Option_Int32* %"$resopt_275" to %CName_None_Int32*
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$None_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$None_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$false_331" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_331", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_274"

"$empty_default_278":                             ; preds = %"$have_gas_272"
  br label %"$matchsucc_274"

"$matchsucc_274":                                 ; preds = %"$have_gas_329", %"$have_gas_311", %"$empty_default_278"
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$matchsucc_274"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$matchsucc_274"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$input_1" = alloca %Int32, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$input_1", align 4
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$resopt_2" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 4, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 4
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$execptr_load_352" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_1_353" = alloca %Int32, align 8
  %"$$input_1_354" = load %Int32, %Int32* %"$input_1", align 4
  store %Int32 %"$$input_1_354", %Int32* %"$to_int32_$input_1_353", align 4
  %"$$to_int32_$input_1_353_355" = bitcast %Int32* %"$to_int32_$input_1_353" to i8*
  %"$to_int32_call_356" = call i8* @_to_int32(i8* %"$execptr_load_352", %_TyDescrTy_Typ* @"$TyDescr_Int32_82", i8* %"$$to_int32_$input_1_353_355")
  %"$to_int32_357" = bitcast i8* %"$to_int32_call_356" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_357", %TName_Option_Int32** %"$resopt_2", align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_350"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$test_3" = alloca %TName_Bool*, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 2, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 2
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$$resopt_2_369" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_2", align 8
  %"$$resopt_2_tag_370" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_2_369", i32 0, i32 0
  %"$$resopt_2_tag_371" = load i8, i8* %"$$resopt_2_tag_370", align 1
  switch i8 %"$$resopt_2_tag_371", label %"$empty_default_372" [
    i8 0, label %"$Some_373"
    i8 1, label %"$None_418"
  ]

"$Some_373":                                      ; preds = %"$have_gas_366"
  %"$$resopt_2_374" = bitcast %TName_Option_Int32* %"$$resopt_2_369" to %CName_Some_Int32*
  %"$res_gep_375" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_2_374", i32 0, i32 1
  %"$res_load_376" = load %Int32, %Int32* %"$res_gep_375", align 4
  %res1 = alloca %Int32, align 8
  store %Int32 %"$res_load_376", %Int32* %res1, align 4
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$Some_373"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$Some_373"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %input_2 = alloca %Int32, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_2, align 4
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 4, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 4
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$execptr_load_397" = load i8*, i8** @_execptr, align 8
  %"$res_398" = load %Int32, %Int32* %res1, align 4
  %"$input__399" = load %Int32, %Int32* %input_2, align 4
  %"$eq_call_400" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_397", %Int32 %"$res_398", %Int32 %"$input__399")
  store %TName_Bool* %"$eq_call_400", %TName_Bool** %test_3, align 8
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_395"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$BoolUtils.andb_51" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_407" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_408" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_407", 0
  %"$BoolUtils.andb_envptr_409" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_407", 1
  %"$$test_0_410" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_411" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_408"(i8* %"$BoolUtils.andb_envptr_409", %TName_Bool* %"$$test_0_410")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_411", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_51", align 8
  %"$BoolUtils.andb_52" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_51_412" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_51", align 8
  %"$$BoolUtils.andb_51_fptr_413" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_51_412", 0
  %"$$BoolUtils.andb_51_envptr_414" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_51_412", 1
  %"$test__415" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_51_call_416" = call %TName_Bool* %"$$BoolUtils.andb_51_fptr_413"(i8* %"$$BoolUtils.andb_51_envptr_414", %TName_Bool* %"$test__415")
  store %TName_Bool* %"$$BoolUtils.andb_51_call_416", %TName_Bool** %"$BoolUtils.andb_52", align 8
  %"$$BoolUtils.andb_52_417" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_52", align 8
  store %TName_Bool* %"$$BoolUtils.andb_52_417", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_368"

"$None_418":                                      ; preds = %"$have_gas_366"
  %"$$resopt_2_419" = bitcast %TName_Option_Int32* %"$$resopt_2_369" to %CName_None_Int32*
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$None_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$None_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$false_425" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_425", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_368"

"$empty_default_372":                             ; preds = %"$have_gas_366"
  br label %"$matchsucc_368"

"$matchsucc_368":                                 ; preds = %"$have_gas_423", %"$have_gas_405", %"$empty_default_372"
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$matchsucc_368"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$matchsucc_368"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$input_4" = alloca %String, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_429"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_436", i32 0, i32 0), i32 4 }, %String* %"$input_4", align 8
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 1, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_434"
  %"$consume_441" = sub i64 %"$gasrem_437", 1
  store i64 %"$consume_441", i64* @_gasrem, align 8
  %"$resopt_5" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 4, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_440"
  %"$consume_446" = sub i64 %"$gasrem_442", 4
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$execptr_load_447" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_4_448" = alloca %String, align 8
  %"$$input_4_449" = load %String, %String* %"$input_4", align 8
  store %String %"$$input_4_449", %String* %"$to_int32_$input_4_448", align 8
  %"$$to_int32_$input_4_448_450" = bitcast %String* %"$to_int32_$input_4_448" to i8*
  %"$to_int32_call_451" = call i8* @_to_int32(i8* %"$execptr_load_447", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int32_$input_4_448_450")
  %"$to_int32_452" = bitcast i8* %"$to_int32_call_451" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_452", %TName_Option_Int32** %"$resopt_5", align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_445"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 2, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 2
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$$resopt_5_464" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_5", align 8
  %"$$resopt_5_tag_465" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_5_464", i32 0, i32 0
  %"$$resopt_5_tag_466" = load i8, i8* %"$$resopt_5_tag_465", align 1
  switch i8 %"$$resopt_5_tag_466", label %"$empty_default_467" [
    i8 0, label %"$Some_468"
    i8 1, label %"$None_513"
  ]

"$Some_468":                                      ; preds = %"$have_gas_461"
  %"$$resopt_5_469" = bitcast %TName_Option_Int32* %"$$resopt_5_464" to %CName_Some_Int32*
  %"$res_gep_470" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_5_469", i32 0, i32 1
  %"$res_load_471" = load %Int32, %Int32* %"$res_gep_470", align 4
  %res4 = alloca %Int32, align 8
  store %Int32 %"$res_load_471", %Int32* %res4, align 4
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$Some_468"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$Some_468"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %input_5 = alloca %Int32, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_5, align 4
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
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
  %"$res_493" = load %Int32, %Int32* %res4, align 4
  %"$input__494" = load %Int32, %Int32* %input_5, align 4
  %"$eq_call_495" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_492", %Int32 %"$res_493", %Int32 %"$input__494")
  store %TName_Bool* %"$eq_call_495", %TName_Bool** %test_6, align 8
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_490"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$BoolUtils.andb_53" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_502" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_503" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_502", 0
  %"$BoolUtils.andb_envptr_504" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_502", 1
  %"$$test_3_505" = load %TName_Bool*, %TName_Bool** %"$test_3", align 8
  %"$BoolUtils.andb_call_506" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_503"(i8* %"$BoolUtils.andb_envptr_504", %TName_Bool* %"$$test_3_505")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_506", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_53", align 8
  %"$BoolUtils.andb_54" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_53_507" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_53", align 8
  %"$$BoolUtils.andb_53_fptr_508" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_53_507", 0
  %"$$BoolUtils.andb_53_envptr_509" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_53_507", 1
  %"$test__510" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_53_call_511" = call %TName_Bool* %"$$BoolUtils.andb_53_fptr_508"(i8* %"$$BoolUtils.andb_53_envptr_509", %TName_Bool* %"$test__510")
  store %TName_Bool* %"$$BoolUtils.andb_53_call_511", %TName_Bool** %"$BoolUtils.andb_54", align 8
  %"$$BoolUtils.andb_54_512" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_54", align 8
  store %TName_Bool* %"$$BoolUtils.andb_54_512", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_463"

"$None_513":                                      ; preds = %"$have_gas_461"
  %"$$resopt_5_514" = bitcast %TName_Option_Int32* %"$$resopt_5_464" to %CName_None_Int32*
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$None_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$None_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %"$false_520" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_520", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_463"

"$empty_default_467":                             ; preds = %"$have_gas_461"
  br label %"$matchsucc_463"

"$matchsucc_463":                                 ; preds = %"$have_gas_518", %"$have_gas_500", %"$empty_default_467"
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$matchsucc_463"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$matchsucc_463"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_7", align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 4, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 4
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$execptr_load_541" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_7_542" = alloca %Uint128, align 8
  %"$$input_7_543" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_543", %Uint128* %"$to_int32_$input_7_542", align 8
  %"$$to_int32_$input_7_542_544" = bitcast %Uint128* %"$to_int32_$input_7_542" to i8*
  %"$to_int32_call_545" = call i8* @_to_int32(i8* %"$execptr_load_541", %_TyDescrTy_Typ* @"$TyDescr_Uint128_92", i8* %"$$to_int32_$input_7_542_544")
  %"$to_int32_546" = bitcast i8* %"$to_int32_call_545" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_546", %TName_Option_Int32** %"$resopt_8", align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_539"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 2, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 2
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$$resopt_8_558" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_8", align 8
  %"$$resopt_8_tag_559" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_8_558", i32 0, i32 0
  %"$$resopt_8_tag_560" = load i8, i8* %"$$resopt_8_tag_559", align 1
  switch i8 %"$$resopt_8_tag_560", label %"$empty_default_561" [
    i8 0, label %"$Some_562"
    i8 1, label %"$None_607"
  ]

"$Some_562":                                      ; preds = %"$have_gas_555"
  %"$$resopt_8_563" = bitcast %TName_Option_Int32* %"$$resopt_8_558" to %CName_Some_Int32*
  %"$res_gep_564" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_8_563", i32 0, i32 1
  %"$res_load_565" = load %Int32, %Int32* %"$res_gep_564", align 4
  %res7 = alloca %Int32, align 8
  store %Int32 %"$res_load_565", %Int32* %res7, align 4
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$Some_562"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$Some_562"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %input_8 = alloca %Int32, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_8, align 4
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 4, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 4
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$execptr_load_586" = load i8*, i8** @_execptr, align 8
  %"$res_587" = load %Int32, %Int32* %res7, align 4
  %"$input__588" = load %Int32, %Int32* %input_8, align 4
  %"$eq_call_589" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_586", %Int32 %"$res_587", %Int32 %"$input__588")
  store %TName_Bool* %"$eq_call_589", %TName_Bool** %test_9, align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_584"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_596" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_597" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_596", 0
  %"$BoolUtils.andb_envptr_598" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_596", 1
  %"$$test_6_599" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_600" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_597"(i8* %"$BoolUtils.andb_envptr_598", %TName_Bool* %"$$test_6_599")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_600", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_55_601" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_602" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_601", 0
  %"$$BoolUtils.andb_55_envptr_603" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_601", 1
  %"$test__604" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_55_call_605" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_602"(i8* %"$$BoolUtils.andb_55_envptr_603", %TName_Bool* %"$test__604")
  store %TName_Bool* %"$$BoolUtils.andb_55_call_605", %TName_Bool** %"$BoolUtils.andb_56", align 8
  %"$$BoolUtils.andb_56_606" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_606", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_557"

"$None_607":                                      ; preds = %"$have_gas_555"
  %"$$resopt_8_608" = bitcast %TName_Option_Int32* %"$$resopt_8_558" to %CName_None_Int32*
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 1, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %"$None_607"
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %"$None_607"
  %"$consume_613" = sub i64 %"$gasrem_609", 1
  store i64 %"$consume_613", i64* @_gasrem, align 8
  %"$false_614" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_614", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_557"

"$empty_default_561":                             ; preds = %"$have_gas_555"
  br label %"$matchsucc_557"

"$matchsucc_557":                                 ; preds = %"$have_gas_612", %"$have_gas_594", %"$empty_default_561"
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$matchsucc_557"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$matchsucc_557"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$input_10" = alloca %Int128, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  store %Int128 { i128 1844 }, %Int128* %"$input_10", align 8
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_623"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 4, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_628"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_628"
  %"$consume_634" = sub i64 %"$gasrem_630", 4
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$execptr_load_635" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_10_636" = alloca %Int128, align 8
  %"$$input_10_637" = load %Int128, %Int128* %"$input_10", align 8
  store %Int128 %"$$input_10_637", %Int128* %"$to_int32_$input_10_636", align 8
  %"$$to_int32_$input_10_636_638" = bitcast %Int128* %"$to_int32_$input_10_636" to i8*
  %"$to_int32_call_639" = call i8* @_to_int32(i8* %"$execptr_load_635", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", i8* %"$$to_int32_$input_10_636_638")
  %"$to_int32_640" = bitcast i8* %"$to_int32_call_639" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_640", %TName_Option_Int32** %"$resopt_11", align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_633"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 2, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_644"
  %"$consume_650" = sub i64 %"$gasrem_646", 2
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$$resopt_11_652" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_11", align 8
  %"$$resopt_11_tag_653" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_11_652", i32 0, i32 0
  %"$$resopt_11_tag_654" = load i8, i8* %"$$resopt_11_tag_653", align 1
  switch i8 %"$$resopt_11_tag_654", label %"$empty_default_655" [
    i8 0, label %"$Some_656"
    i8 1, label %"$None_701"
  ]

"$Some_656":                                      ; preds = %"$have_gas_649"
  %"$$resopt_11_657" = bitcast %TName_Option_Int32* %"$$resopt_11_652" to %CName_Some_Int32*
  %"$res_gep_658" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_11_657", i32 0, i32 1
  %"$res_load_659" = load %Int32, %Int32* %"$res_gep_658", align 4
  %res10 = alloca %Int32, align 8
  store %Int32 %"$res_load_659", %Int32* %res10, align 4
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$Some_656"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$Some_656"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %input_11 = alloca %Int32, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_663"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_11, align 4
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 4, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$have_gas_673"
  %"$consume_679" = sub i64 %"$gasrem_675", 4
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %"$execptr_load_680" = load i8*, i8** @_execptr, align 8
  %"$res_681" = load %Int32, %Int32* %res10, align 4
  %"$input__682" = load %Int32, %Int32* %input_11, align 4
  %"$eq_call_683" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_680", %Int32 %"$res_681", %Int32 %"$input__682")
  store %TName_Bool* %"$eq_call_683", %TName_Bool** %test_12, align 8
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$have_gas_678"
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_690" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_691" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_690", 0
  %"$BoolUtils.andb_envptr_692" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_690", 1
  %"$$test_9_693" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  %"$BoolUtils.andb_call_694" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_691"(i8* %"$BoolUtils.andb_envptr_692", %TName_Bool* %"$$test_9_693")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_694", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_57_695" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_696" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_695", 0
  %"$$BoolUtils.andb_57_envptr_697" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_695", 1
  %"$test__698" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_57_call_699" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_696"(i8* %"$$BoolUtils.andb_57_envptr_697", %TName_Bool* %"$test__698")
  store %TName_Bool* %"$$BoolUtils.andb_57_call_699", %TName_Bool** %"$BoolUtils.andb_58", align 8
  %"$$BoolUtils.andb_58_700" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_700", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_651"

"$None_701":                                      ; preds = %"$have_gas_649"
  %"$$resopt_11_702" = bitcast %TName_Option_Int32* %"$$resopt_11_652" to %CName_None_Int32*
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %"$None_701"
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %"$None_701"
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %"$false_708" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_708", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_651"

"$empty_default_655":                             ; preds = %"$have_gas_649"
  br label %"$matchsucc_651"

"$matchsucc_651":                                 ; preds = %"$have_gas_706", %"$have_gas_688", %"$empty_default_655"
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$matchsucc_651"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$matchsucc_651"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$input_13" = alloca %Int256, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$input_13", align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 4, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_722"
  %"$consume_728" = sub i64 %"$gasrem_724", 4
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$execptr_load_729" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_13_730" = alloca %Int256, align 8
  %"$$input_13_731" = load %Int256, %Int256* %"$input_13", align 8
  store %Int256 %"$$input_13_731", %Int256* %"$to_int32_$input_13_730", align 8
  %"$$to_int32_$input_13_730_732" = bitcast %Int256* %"$to_int32_$input_13_730" to i8*
  %"$to_int32_call_733" = call i8* @_to_int32(i8* %"$execptr_load_729", %_TyDescrTy_Typ* @"$TyDescr_Int256_94", i8* %"$$to_int32_$input_13_730_732")
  %"$to_int32_734" = bitcast i8* %"$to_int32_call_733" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_734", %TName_Option_Int32** %"$resopt_14", align 8
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_727"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 2, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 2
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$$resopt_14_746" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_14", align 8
  %"$$resopt_14_tag_747" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_14_746", i32 0, i32 0
  %"$$resopt_14_tag_748" = load i8, i8* %"$$resopt_14_tag_747", align 1
  switch i8 %"$$resopt_14_tag_748", label %"$empty_default_749" [
    i8 0, label %"$Some_750"
    i8 1, label %"$None_795"
  ]

"$Some_750":                                      ; preds = %"$have_gas_743"
  %"$$resopt_14_751" = bitcast %TName_Option_Int32* %"$$resopt_14_746" to %CName_Some_Int32*
  %"$res_gep_752" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_14_751", i32 0, i32 1
  %"$res_load_753" = load %Int32, %Int32* %"$res_gep_752", align 4
  %res13 = alloca %Int32, align 8
  store %Int32 %"$res_load_753", %Int32* %res13, align 4
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$Some_750"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$Some_750"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %input_14 = alloca %Int32, align 8
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 1, %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %"$have_gas_757"
  %"$consume_763" = sub i64 %"$gasrem_759", 1
  store i64 %"$consume_763", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_14, align 4
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_762"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 4, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 4
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$execptr_load_774" = load i8*, i8** @_execptr, align 8
  %"$res_775" = load %Int32, %Int32* %res13, align 4
  %"$input__776" = load %Int32, %Int32* %input_14, align 4
  %"$eq_call_777" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_774", %Int32 %"$res_775", %Int32 %"$input__776")
  store %TName_Bool* %"$eq_call_777", %TName_Bool** %test_15, align 8
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$have_gas_772"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_784" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_785" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_784", 0
  %"$BoolUtils.andb_envptr_786" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_784", 1
  %"$$test_12_787" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_788" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_785"(i8* %"$BoolUtils.andb_envptr_786", %TName_Bool* %"$$test_12_787")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_788", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_59_789" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_790" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_789", 0
  %"$$BoolUtils.andb_59_envptr_791" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_789", 1
  %"$test__792" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_59_call_793" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_790"(i8* %"$$BoolUtils.andb_59_envptr_791", %TName_Bool* %"$test__792")
  store %TName_Bool* %"$$BoolUtils.andb_59_call_793", %TName_Bool** %"$BoolUtils.andb_60", align 8
  %"$$BoolUtils.andb_60_794" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_794", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_745"

"$None_795":                                      ; preds = %"$have_gas_743"
  %"$$resopt_14_796" = bitcast %TName_Option_Int32* %"$$resopt_14_746" to %CName_None_Int32*
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$None_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$None_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$false_802" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_802", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_745"

"$empty_default_749":                             ; preds = %"$have_gas_743"
  br label %"$matchsucc_745"

"$matchsucc_745":                                 ; preds = %"$have_gas_800", %"$have_gas_782", %"$empty_default_749"
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$matchsucc_745"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$matchsucc_745"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint64, align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_806"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_806"
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  store %Uint64 { i64 -9223372036854775808 }, %Uint64* %"$input_16", align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_811"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 4, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 4
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %"$execptr_load_823" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_16_824" = alloca %Uint64, align 8
  %"$$input_16_825" = load %Uint64, %Uint64* %"$input_16", align 8
  store %Uint64 %"$$input_16_825", %Uint64* %"$to_int64_$input_16_824", align 8
  %"$$to_int64_$input_16_824_826" = bitcast %Uint64* %"$to_int64_$input_16_824" to i8*
  %"$to_int64_call_827" = call i8* @_to_int64(i8* %"$execptr_load_823", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", i8* %"$$to_int64_$input_16_824_826")
  %"$to_int64_828" = bitcast i8* %"$to_int64_call_827" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_828", %TName_Option_Int64** %"$resopt_17", align 8
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %"$have_gas_821"
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 2, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 2
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$$resopt_17_840" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_17", align 8
  %"$$resopt_17_tag_841" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_17_840", i32 0, i32 0
  %"$$resopt_17_tag_842" = load i8, i8* %"$$resopt_17_tag_841", align 1
  switch i8 %"$$resopt_17_tag_842", label %"$empty_default_843" [
    i8 0, label %"$Some_844"
    i8 1, label %"$None_854"
  ]

"$Some_844":                                      ; preds = %"$have_gas_837"
  %"$$resopt_17_845" = bitcast %TName_Option_Int64* %"$$resopt_17_840" to %CName_Some_Int64*
  %"$$$resopt_17_46_gep_846" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_17_845", i32 0, i32 1
  %"$$$resopt_17_46_load_847" = load %Int64, %Int64* %"$$$resopt_17_46_gep_846", align 8
  %"$$resopt_17_46" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_17_46_load_847", %Int64* %"$$resopt_17_46", align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$Some_844"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$Some_844"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$false_853" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_853", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_839"

"$None_854":                                      ; preds = %"$have_gas_837"
  %"$$resopt_17_855" = bitcast %TName_Option_Int64* %"$$resopt_17_840" to %CName_None_Int64*
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 1, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$None_854"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$None_854"
  %"$consume_860" = sub i64 %"$gasrem_856", 1
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$$test_15_861" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  store %TName_Bool* %"$$test_15_861", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_839"

"$empty_default_843":                             ; preds = %"$have_gas_837"
  br label %"$matchsucc_839"

"$matchsucc_839":                                 ; preds = %"$have_gas_859", %"$have_gas_851", %"$empty_default_843"
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$matchsucc_839"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$matchsucc_839"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$input_19" = alloca %String, align 8
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_865"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_872", i32 0, i32 0), i32 19 }, %String* %"$input_19", align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_870"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 4, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_876"
  %"$consume_882" = sub i64 %"$gasrem_878", 4
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$execptr_load_883" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_19_884" = alloca %String, align 8
  %"$$input_19_885" = load %String, %String* %"$input_19", align 8
  store %String %"$$input_19_885", %String* %"$to_int64_$input_19_884", align 8
  %"$$to_int64_$input_19_884_886" = bitcast %String* %"$to_int64_$input_19_884" to i8*
  %"$to_int64_call_887" = call i8* @_to_int64(i8* %"$execptr_load_883", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int64_$input_19_884_886")
  %"$to_int64_888" = bitcast i8* %"$to_int64_call_887" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_888", %TName_Option_Int64** %"$resopt_20", align 8
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_881"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 2, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 2
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$$resopt_20_900" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_20", align 8
  %"$$resopt_20_tag_901" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_20_900", i32 0, i32 0
  %"$$resopt_20_tag_902" = load i8, i8* %"$$resopt_20_tag_901", align 1
  switch i8 %"$$resopt_20_tag_902", label %"$empty_default_903" [
    i8 0, label %"$Some_904"
    i8 1, label %"$None_914"
  ]

"$Some_904":                                      ; preds = %"$have_gas_897"
  %"$$resopt_20_905" = bitcast %TName_Option_Int64* %"$$resopt_20_900" to %CName_Some_Int64*
  %"$$$resopt_20_47_gep_906" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_20_905", i32 0, i32 1
  %"$$$resopt_20_47_load_907" = load %Int64, %Int64* %"$$$resopt_20_47_gep_906", align 8
  %"$$resopt_20_47" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_20_47_load_907", %Int64* %"$$resopt_20_47", align 8
  %"$gasrem_908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %"$Some_904"
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %"$Some_904"
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem, align 8
  %"$false_913" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_913", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_899"

"$None_914":                                      ; preds = %"$have_gas_897"
  %"$$resopt_20_915" = bitcast %TName_Option_Int64* %"$$resopt_20_900" to %CName_None_Int64*
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$None_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$None_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$$test_18_921" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  store %TName_Bool* %"$$test_18_921", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_899"

"$empty_default_903":                             ; preds = %"$have_gas_897"
  br label %"$matchsucc_899"

"$matchsucc_899":                                 ; preds = %"$have_gas_919", %"$have_gas_911", %"$empty_default_903"
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$matchsucc_899"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$matchsucc_899"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_925"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_22", align 8
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Int64*, align 8
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
  %"$to_int64_$input_22_943" = alloca %Uint64, align 8
  %"$$input_22_944" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_944", %Uint64* %"$to_int64_$input_22_943", align 8
  %"$$to_int64_$input_22_943_945" = bitcast %Uint64* %"$to_int64_$input_22_943" to i8*
  %"$to_int64_call_946" = call i8* @_to_int64(i8* %"$execptr_load_942", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", i8* %"$$to_int64_$input_22_943_945")
  %"$to_int64_947" = bitcast i8* %"$to_int64_call_946" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_947", %TName_Option_Int64** %"$resopt_23", align 8
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
  %"$$resopt_23_959" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_23", align 8
  %"$$resopt_23_tag_960" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_23_959", i32 0, i32 0
  %"$$resopt_23_tag_961" = load i8, i8* %"$$resopt_23_tag_960", align 1
  switch i8 %"$$resopt_23_tag_961", label %"$empty_default_962" [
    i8 0, label %"$Some_963"
    i8 1, label %"$None_1008"
  ]

"$Some_963":                                      ; preds = %"$have_gas_956"
  %"$$resopt_23_964" = bitcast %TName_Option_Int64* %"$$resopt_23_959" to %CName_Some_Int64*
  %"$res_gep_965" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_23_964", i32 0, i32 1
  %"$res_load_966" = load %Int64, %Int64* %"$res_gep_965", align 8
  %res16 = alloca %Int64, align 8
  store %Int64 %"$res_load_966", %Int64* %res16, align 8
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 1, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$Some_963"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$Some_963"
  %"$consume_971" = sub i64 %"$gasrem_967", 1
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %input_17 = alloca %Int64, align 8
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 1, %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_970"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_970"
  %"$consume_976" = sub i64 %"$gasrem_972", 1
  store i64 %"$consume_976", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %input_17, align 8
  %"$gasrem_977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_978" = icmp ugt i64 1, %"$gasrem_977"
  br i1 %"$gascmp_978", label %"$out_of_gas_979", label %"$have_gas_980"

"$out_of_gas_979":                                ; preds = %"$have_gas_975"
  call void @_out_of_gas()
  br label %"$have_gas_980"

"$have_gas_980":                                  ; preds = %"$out_of_gas_979", %"$have_gas_975"
  %"$consume_981" = sub i64 %"$gasrem_977", 1
  store i64 %"$consume_981", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 4, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_980"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_980"
  %"$consume_986" = sub i64 %"$gasrem_982", 4
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %"$execptr_load_987" = load i8*, i8** @_execptr, align 8
  %"$res_988" = load %Int64, %Int64* %res16, align 8
  %"$input__989" = load %Int64, %Int64* %input_17, align 8
  %"$eq_call_990" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_987", %Int64 %"$res_988", %Int64 %"$input__989")
  store %TName_Bool* %"$eq_call_990", %TName_Bool** %test_18, align 8
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 1, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_985"
  %"$consume_996" = sub i64 %"$gasrem_992", 1
  store i64 %"$consume_996", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_997" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_998" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_997", 0
  %"$BoolUtils.andb_envptr_999" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_997", 1
  %"$$test_21_1000" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  %"$BoolUtils.andb_call_1001" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_998"(i8* %"$BoolUtils.andb_envptr_999", %TName_Bool* %"$$test_21_1000")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1001", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_1002" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_1003" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_1002", 0
  %"$$BoolUtils.andb_61_envptr_1004" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_1002", 1
  %"$test__1005" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_61_call_1006" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_1003"(i8* %"$$BoolUtils.andb_61_envptr_1004", %TName_Bool* %"$test__1005")
  store %TName_Bool* %"$$BoolUtils.andb_61_call_1006", %TName_Bool** %"$BoolUtils.andb_62", align 8
  %"$$BoolUtils.andb_62_1007" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_1007", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_958"

"$None_1008":                                     ; preds = %"$have_gas_956"
  %"$$resopt_23_1009" = bitcast %TName_Option_Int64* %"$$resopt_23_959" to %CName_None_Int64*
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$None_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$None_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$false_1015" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1015", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_958"

"$empty_default_962":                             ; preds = %"$have_gas_956"
  br label %"$matchsucc_958"

"$matchsucc_958":                                 ; preds = %"$have_gas_1013", %"$have_gas_995", %"$empty_default_962"
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$matchsucc_958"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$matchsucc_958"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$input_25" = alloca %Int128, align 8
  %"$gasrem_1021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1022" = icmp ugt i64 1, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %"$have_gas_1019"
  %"$consume_1025" = sub i64 %"$gasrem_1021", 1
  store i64 %"$consume_1025", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775808 }, %Int128* %"$input_25", align 8
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1024"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 4, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1029"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 4
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$execptr_load_1036" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_25_1037" = alloca %Int128, align 8
  %"$$input_25_1038" = load %Int128, %Int128* %"$input_25", align 8
  store %Int128 %"$$input_25_1038", %Int128* %"$to_int64_$input_25_1037", align 8
  %"$$to_int64_$input_25_1037_1039" = bitcast %Int128* %"$to_int64_$input_25_1037" to i8*
  %"$to_int64_call_1040" = call i8* @_to_int64(i8* %"$execptr_load_1036", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", i8* %"$$to_int64_$input_25_1037_1039")
  %"$to_int64_1041" = bitcast i8* %"$to_int64_call_1040" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1041", %TName_Option_Int64** %"$resopt_26", align 8
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1034"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 2, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 2
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$$resopt_26_1053" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_26", align 8
  %"$$resopt_26_tag_1054" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_26_1053", i32 0, i32 0
  %"$$resopt_26_tag_1055" = load i8, i8* %"$$resopt_26_tag_1054", align 1
  switch i8 %"$$resopt_26_tag_1055", label %"$empty_default_1056" [
    i8 0, label %"$Some_1057"
    i8 1, label %"$None_1102"
  ]

"$Some_1057":                                     ; preds = %"$have_gas_1050"
  %"$$resopt_26_1058" = bitcast %TName_Option_Int64* %"$$resopt_26_1053" to %CName_Some_Int64*
  %"$res_gep_1059" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_26_1058", i32 0, i32 1
  %"$res_load_1060" = load %Int64, %Int64* %"$res_gep_1059", align 8
  %res19 = alloca %Int64, align 8
  store %Int64 %"$res_load_1060", %Int64* %res19, align 8
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$Some_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$Some_1057"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  %input_20 = alloca %Int64, align 8
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1064"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_20, align 8
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 4, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1074"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 4
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %"$execptr_load_1081" = load i8*, i8** @_execptr, align 8
  %"$res_1082" = load %Int64, %Int64* %res19, align 8
  %"$input__1083" = load %Int64, %Int64* %input_20, align 8
  %"$eq_call_1084" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1081", %Int64 %"$res_1082", %Int64 %"$input__1083")
  store %TName_Bool* %"$eq_call_1084", %TName_Bool** %test_21, align 8
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1079"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1091" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1092" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1091", 0
  %"$BoolUtils.andb_envptr_1093" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1091", 1
  %"$$test_24_1094" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_1095" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1092"(i8* %"$BoolUtils.andb_envptr_1093", %TName_Bool* %"$$test_24_1094")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1095", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_1096" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_1097" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_1096", 0
  %"$$BoolUtils.andb_63_envptr_1098" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_1096", 1
  %"$test__1099" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_63_call_1100" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_1097"(i8* %"$$BoolUtils.andb_63_envptr_1098", %TName_Bool* %"$test__1099")
  store %TName_Bool* %"$$BoolUtils.andb_63_call_1100", %TName_Bool** %"$BoolUtils.andb_64", align 8
  %"$$BoolUtils.andb_64_1101" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_1101", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_1052"

"$None_1102":                                     ; preds = %"$have_gas_1050"
  %"$$resopt_26_1103" = bitcast %TName_Option_Int64* %"$$resopt_26_1053" to %CName_None_Int64*
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$None_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$None_1102"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %"$false_1109" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1109", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_1052"

"$empty_default_1056":                            ; preds = %"$have_gas_1050"
  br label %"$matchsucc_1052"

"$matchsucc_1052":                                ; preds = %"$have_gas_1107", %"$have_gas_1089", %"$empty_default_1056"
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$matchsucc_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$matchsucc_1052"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$input_28" = alloca %String, align 8
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1113"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$stringlit_1120", i32 0, i32 0), i32 20 }, %String* %"$input_28", align 8
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1118"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 4, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 4
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$execptr_load_1131" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_28_1132" = alloca %String, align 8
  %"$$input_28_1133" = load %String, %String* %"$input_28", align 8
  store %String %"$$input_28_1133", %String* %"$to_int64_$input_28_1132", align 8
  %"$$to_int64_$input_28_1132_1134" = bitcast %String* %"$to_int64_$input_28_1132" to i8*
  %"$to_int64_call_1135" = call i8* @_to_int64(i8* %"$execptr_load_1131", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int64_$input_28_1132_1134")
  %"$to_int64_1136" = bitcast i8* %"$to_int64_call_1135" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1136", %TName_Option_Int64** %"$resopt_29", align 8
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1129"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 2, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1140"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 2
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %"$$resopt_29_1148" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_29", align 8
  %"$$resopt_29_tag_1149" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_29_1148", i32 0, i32 0
  %"$$resopt_29_tag_1150" = load i8, i8* %"$$resopt_29_tag_1149", align 1
  switch i8 %"$$resopt_29_tag_1150", label %"$empty_default_1151" [
    i8 0, label %"$Some_1152"
    i8 1, label %"$None_1197"
  ]

"$Some_1152":                                     ; preds = %"$have_gas_1145"
  %"$$resopt_29_1153" = bitcast %TName_Option_Int64* %"$$resopt_29_1148" to %CName_Some_Int64*
  %"$res_gep_1154" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_29_1153", i32 0, i32 1
  %"$res_load_1155" = load %Int64, %Int64* %"$res_gep_1154", align 8
  %res22 = alloca %Int64, align 8
  store %Int64 %"$res_load_1155", %Int64* %res22, align 8
  %"$gasrem_1156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1157" = icmp ugt i64 1, %"$gasrem_1156"
  br i1 %"$gascmp_1157", label %"$out_of_gas_1158", label %"$have_gas_1159"

"$out_of_gas_1158":                               ; preds = %"$Some_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1159"

"$have_gas_1159":                                 ; preds = %"$out_of_gas_1158", %"$Some_1152"
  %"$consume_1160" = sub i64 %"$gasrem_1156", 1
  store i64 %"$consume_1160", i64* @_gasrem, align 8
  %input_23 = alloca %Int64, align 8
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1159"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1159"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_23, align 8
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1164"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  %"$gasrem_1171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1172" = icmp ugt i64 4, %"$gasrem_1171"
  br i1 %"$gascmp_1172", label %"$out_of_gas_1173", label %"$have_gas_1174"

"$out_of_gas_1173":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1174"

"$have_gas_1174":                                 ; preds = %"$out_of_gas_1173", %"$have_gas_1169"
  %"$consume_1175" = sub i64 %"$gasrem_1171", 4
  store i64 %"$consume_1175", i64* @_gasrem, align 8
  %"$execptr_load_1176" = load i8*, i8** @_execptr, align 8
  %"$res_1177" = load %Int64, %Int64* %res22, align 8
  %"$input__1178" = load %Int64, %Int64* %input_23, align 8
  %"$eq_call_1179" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1176", %Int64 %"$res_1177", %Int64 %"$input__1178")
  store %TName_Bool* %"$eq_call_1179", %TName_Bool** %test_24, align 8
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 1, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1174"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1174"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 1
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1186" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1187" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1186", 0
  %"$BoolUtils.andb_envptr_1188" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1186", 1
  %"$$test_27_1189" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1190" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1187"(i8* %"$BoolUtils.andb_envptr_1188", %TName_Bool* %"$$test_27_1189")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1190", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_1191" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_1192" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_1191", 0
  %"$$BoolUtils.andb_65_envptr_1193" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_1191", 1
  %"$test__1194" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_65_call_1195" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_1192"(i8* %"$$BoolUtils.andb_65_envptr_1193", %TName_Bool* %"$test__1194")
  store %TName_Bool* %"$$BoolUtils.andb_65_call_1195", %TName_Bool** %"$BoolUtils.andb_66", align 8
  %"$$BoolUtils.andb_66_1196" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_1196", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_1147"

"$None_1197":                                     ; preds = %"$have_gas_1145"
  %"$$resopt_29_1198" = bitcast %TName_Option_Int64* %"$$resopt_29_1148" to %CName_None_Int64*
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$None_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$None_1197"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  %"$false_1204" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1204", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_1147"

"$empty_default_1151":                            ; preds = %"$have_gas_1145"
  br label %"$matchsucc_1147"

"$matchsucc_1147":                                ; preds = %"$have_gas_1202", %"$have_gas_1184", %"$empty_default_1151"
  %"$gasrem_1205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1206" = icmp ugt i64 1, %"$gasrem_1205"
  br i1 %"$gascmp_1206", label %"$out_of_gas_1207", label %"$have_gas_1208"

"$out_of_gas_1207":                               ; preds = %"$matchsucc_1147"
  call void @_out_of_gas()
  br label %"$have_gas_1208"

"$have_gas_1208":                                 ; preds = %"$out_of_gas_1207", %"$matchsucc_1147"
  %"$consume_1209" = sub i64 %"$gasrem_1205", 1
  store i64 %"$consume_1209", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint64, align 8
  %"$gasrem_1210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1211" = icmp ugt i64 1, %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %"$have_gas_1208"
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %"$have_gas_1208"
  %"$consume_1214" = sub i64 %"$gasrem_1210", 1
  store i64 %"$consume_1214", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_31", align 8
  %"$gasrem_1215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1216" = icmp ugt i64 1, %"$gasrem_1215"
  br i1 %"$gascmp_1216", label %"$out_of_gas_1217", label %"$have_gas_1218"

"$out_of_gas_1217":                               ; preds = %"$have_gas_1213"
  call void @_out_of_gas()
  br label %"$have_gas_1218"

"$have_gas_1218":                                 ; preds = %"$out_of_gas_1217", %"$have_gas_1213"
  %"$consume_1219" = sub i64 %"$gasrem_1215", 1
  store i64 %"$consume_1219", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 16, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1218"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1218"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 16
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  %"$execptr_load_1225" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_31_1226" = alloca %Uint64, align 8
  %"$$input_31_1227" = load %Uint64, %Uint64* %"$input_31", align 8
  store %Uint64 %"$$input_31_1227", %Uint64* %"$to_int256_$input_31_1226", align 8
  %"$$to_int256_$input_31_1226_1228" = bitcast %Uint64* %"$to_int256_$input_31_1226" to i8*
  %"$to_int256_call_1229" = call i8* @_to_int256(i8* %"$execptr_load_1225", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", i8* %"$$to_int256_$input_31_1226_1228")
  %"$to_int256_1230" = bitcast i8* %"$to_int256_call_1229" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1230", %TName_Option_Int256** %"$resopt_32", align 8
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1223"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 2, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1234"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 2
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %"$$resopt_32_1242" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_32", align 8
  %"$$resopt_32_tag_1243" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_32_1242", i32 0, i32 0
  %"$$resopt_32_tag_1244" = load i8, i8* %"$$resopt_32_tag_1243", align 1
  switch i8 %"$$resopt_32_tag_1244", label %"$empty_default_1245" [
    i8 0, label %"$Some_1246"
    i8 1, label %"$None_1294"
  ]

"$Some_1246":                                     ; preds = %"$have_gas_1239"
  %"$$resopt_32_1247" = bitcast %TName_Option_Int256* %"$$resopt_32_1242" to %CName_Some_Int256*
  %"$res_gep_1248" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_32_1247", i32 0, i32 1
  %"$res_load_1249" = load %Int256, %Int256* %"$res_gep_1248", align 8
  %res25 = alloca %Int256, align 8
  store %Int256 %"$res_load_1249", %Int256* %res25, align 8
  %"$gasrem_1250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1251" = icmp ugt i64 1, %"$gasrem_1250"
  br i1 %"$gascmp_1251", label %"$out_of_gas_1252", label %"$have_gas_1253"

"$out_of_gas_1252":                               ; preds = %"$Some_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1253"

"$have_gas_1253":                                 ; preds = %"$out_of_gas_1252", %"$Some_1246"
  %"$consume_1254" = sub i64 %"$gasrem_1250", 1
  store i64 %"$consume_1254", i64* @_gasrem, align 8
  %input_26 = alloca %Int256, align 8
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1253"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1253"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_26, align 8
  %"$gasrem_1260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1261" = icmp ugt i64 1, %"$gasrem_1260"
  br i1 %"$gascmp_1261", label %"$out_of_gas_1262", label %"$have_gas_1263"

"$out_of_gas_1262":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1263"

"$have_gas_1263":                                 ; preds = %"$out_of_gas_1262", %"$have_gas_1258"
  %"$consume_1264" = sub i64 %"$gasrem_1260", 1
  store i64 %"$consume_1264", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 16, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1263"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1263"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 16
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  %"$execptr_load_1271" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1272" = alloca %Int256, align 8
  %"$res_1273" = load %Int256, %Int256* %res25, align 8
  store %Int256 %"$res_1273", %Int256* %"$eq_res_1272", align 8
  %"$eq_input__1274" = alloca %Int256, align 8
  %"$input__1275" = load %Int256, %Int256* %input_26, align 8
  store %Int256 %"$input__1275", %Int256* %"$eq_input__1274", align 8
  %"$eq_call_1276" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1271", %Int256* %"$eq_res_1272", %Int256* %"$eq_input__1274")
  store %TName_Bool* %"$eq_call_1276", %TName_Bool** %test_27, align 8
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1269"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1283" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1284" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1283", 0
  %"$BoolUtils.andb_envptr_1285" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1283", 1
  %"$$test_30_1286" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1287" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1284"(i8* %"$BoolUtils.andb_envptr_1285", %TName_Bool* %"$$test_30_1286")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1287", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_1288" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_1289" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1288", 0
  %"$$BoolUtils.andb_67_envptr_1290" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1288", 1
  %"$test__1291" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_67_call_1292" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_1289"(i8* %"$$BoolUtils.andb_67_envptr_1290", %TName_Bool* %"$test__1291")
  store %TName_Bool* %"$$BoolUtils.andb_67_call_1292", %TName_Bool** %"$BoolUtils.andb_68", align 8
  %"$$BoolUtils.andb_68_1293" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_1293", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1241"

"$None_1294":                                     ; preds = %"$have_gas_1239"
  %"$$resopt_32_1295" = bitcast %TName_Option_Int256* %"$$resopt_32_1242" to %CName_None_Int256*
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 1, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$None_1294"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$None_1294"
  %"$consume_1300" = sub i64 %"$gasrem_1296", 1
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %"$false_1301" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1301", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1241"

"$empty_default_1245":                            ; preds = %"$have_gas_1239"
  br label %"$matchsucc_1241"

"$matchsucc_1241":                                ; preds = %"$have_gas_1299", %"$have_gas_1281", %"$empty_default_1245"
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$matchsucc_1241"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$matchsucc_1241"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %"$input_34" = alloca %String, align 8
  %"$gasrem_1307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1308" = icmp ugt i64 1, %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %"$have_gas_1305"
  %"$consume_1311" = sub i64 %"$gasrem_1307", 1
  store i64 %"$consume_1311", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1312", i32 0, i32 0), i32 19 }, %String* %"$input_34", align 8
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 1, %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$have_gas_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$have_gas_1310"
  %"$consume_1317" = sub i64 %"$gasrem_1313", 1
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 16, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1316"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1316"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 16
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %"$execptr_load_1323" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_34_1324" = alloca %String, align 8
  %"$$input_34_1325" = load %String, %String* %"$input_34", align 8
  store %String %"$$input_34_1325", %String* %"$to_int256_$input_34_1324", align 8
  %"$$to_int256_$input_34_1324_1326" = bitcast %String* %"$to_int256_$input_34_1324" to i8*
  %"$to_int256_call_1327" = call i8* @_to_int256(i8* %"$execptr_load_1323", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int256_$input_34_1324_1326")
  %"$to_int256_1328" = bitcast i8* %"$to_int256_call_1327" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1328", %TName_Option_Int256** %"$resopt_35", align 8
  %"$gasrem_1329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1330" = icmp ugt i64 1, %"$gasrem_1329"
  br i1 %"$gascmp_1330", label %"$out_of_gas_1331", label %"$have_gas_1332"

"$out_of_gas_1331":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1332"

"$have_gas_1332":                                 ; preds = %"$out_of_gas_1331", %"$have_gas_1321"
  %"$consume_1333" = sub i64 %"$gasrem_1329", 1
  store i64 %"$consume_1333", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 2, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$have_gas_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$have_gas_1332"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 2
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  %"$$resopt_35_1340" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_35", align 8
  %"$$resopt_35_tag_1341" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_35_1340", i32 0, i32 0
  %"$$resopt_35_tag_1342" = load i8, i8* %"$$resopt_35_tag_1341", align 1
  switch i8 %"$$resopt_35_tag_1342", label %"$empty_default_1343" [
    i8 0, label %"$Some_1344"
    i8 1, label %"$None_1392"
  ]

"$Some_1344":                                     ; preds = %"$have_gas_1337"
  %"$$resopt_35_1345" = bitcast %TName_Option_Int256* %"$$resopt_35_1340" to %CName_Some_Int256*
  %"$res_gep_1346" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_35_1345", i32 0, i32 1
  %"$res_load_1347" = load %Int256, %Int256* %"$res_gep_1346", align 8
  %res28 = alloca %Int256, align 8
  store %Int256 %"$res_load_1347", %Int256* %res28, align 8
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 1, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$Some_1344"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$Some_1344"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 1
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %input_29 = alloca %Int256, align 8
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1351"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_29, align 8
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1356"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  %"$gasrem_1364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1365" = icmp ugt i64 16, %"$gasrem_1364"
  br i1 %"$gascmp_1365", label %"$out_of_gas_1366", label %"$have_gas_1367"

"$out_of_gas_1366":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1367"

"$have_gas_1367":                                 ; preds = %"$out_of_gas_1366", %"$have_gas_1361"
  %"$consume_1368" = sub i64 %"$gasrem_1364", 16
  store i64 %"$consume_1368", i64* @_gasrem, align 8
  %"$execptr_load_1369" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1370" = alloca %Int256, align 8
  %"$res_1371" = load %Int256, %Int256* %res28, align 8
  store %Int256 %"$res_1371", %Int256* %"$eq_res_1370", align 8
  %"$eq_input__1372" = alloca %Int256, align 8
  %"$input__1373" = load %Int256, %Int256* %input_29, align 8
  store %Int256 %"$input__1373", %Int256* %"$eq_input__1372", align 8
  %"$eq_call_1374" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1369", %Int256* %"$eq_res_1370", %Int256* %"$eq_input__1372")
  store %TName_Bool* %"$eq_call_1374", %TName_Bool** %test_30, align 8
  %"$gasrem_1376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1377" = icmp ugt i64 1, %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %"$have_gas_1367"
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %"$have_gas_1367"
  %"$consume_1380" = sub i64 %"$gasrem_1376", 1
  store i64 %"$consume_1380", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1381" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1382" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1381", 0
  %"$BoolUtils.andb_envptr_1383" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1381", 1
  %"$$test_33_1384" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1385" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1382"(i8* %"$BoolUtils.andb_envptr_1383", %TName_Bool* %"$$test_33_1384")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1385", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_1386" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_1387" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1386", 0
  %"$$BoolUtils.andb_69_envptr_1388" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1386", 1
  %"$test__1389" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_69_call_1390" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_1387"(i8* %"$$BoolUtils.andb_69_envptr_1388", %TName_Bool* %"$test__1389")
  store %TName_Bool* %"$$BoolUtils.andb_69_call_1390", %TName_Bool** %"$BoolUtils.andb_70", align 8
  %"$$BoolUtils.andb_70_1391" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_1391", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1339"

"$None_1392":                                     ; preds = %"$have_gas_1337"
  %"$$resopt_35_1393" = bitcast %TName_Option_Int256* %"$$resopt_35_1340" to %CName_None_Int256*
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$None_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$None_1392"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %"$false_1399" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1399", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1339"

"$empty_default_1343":                            ; preds = %"$have_gas_1337"
  br label %"$matchsucc_1339"

"$matchsucc_1339":                                ; preds = %"$have_gas_1397", %"$have_gas_1379", %"$empty_default_1343"
  %"$gasrem_1400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1401" = icmp ugt i64 1, %"$gasrem_1400"
  br i1 %"$gascmp_1401", label %"$out_of_gas_1402", label %"$have_gas_1403"

"$out_of_gas_1402":                               ; preds = %"$matchsucc_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1403"

"$have_gas_1403":                                 ; preds = %"$out_of_gas_1402", %"$matchsucc_1339"
  %"$consume_1404" = sub i64 %"$gasrem_1400", 1
  store i64 %"$consume_1404", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint256, align 8
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1403"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1403"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$input_37", align 8
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 1, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1408"
  %"$consume_1414" = sub i64 %"$gasrem_1410", 1
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1416" = icmp ugt i64 16, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1413"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 16
  store i64 %"$consume_1419", i64* @_gasrem, align 8
  %"$execptr_load_1420" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_37_1421" = alloca %Uint256, align 8
  %"$$input_37_1422" = load %Uint256, %Uint256* %"$input_37", align 8
  store %Uint256 %"$$input_37_1422", %Uint256* %"$to_int256_$input_37_1421", align 8
  %"$$to_int256_$input_37_1421_1423" = bitcast %Uint256* %"$to_int256_$input_37_1421" to i8*
  %"$to_int256_call_1424" = call i8* @_to_int256(i8* %"$execptr_load_1420", %_TyDescrTy_Typ* @"$TyDescr_Uint256_96", i8* %"$$to_int256_$input_37_1421_1423")
  %"$to_int256_1425" = bitcast i8* %"$to_int256_call_1424" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1425", %TName_Option_Int256** %"$resopt_38", align 8
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 1, %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %"$have_gas_1418"
  %"$consume_1430" = sub i64 %"$gasrem_1426", 1
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 2, %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$have_gas_1429"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$have_gas_1429"
  %"$consume_1435" = sub i64 %"$gasrem_1431", 2
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  %"$$resopt_38_1437" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1438" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_38_1437", i32 0, i32 0
  %"$$resopt_38_tag_1439" = load i8, i8* %"$$resopt_38_tag_1438", align 1
  switch i8 %"$$resopt_38_tag_1439", label %"$empty_default_1440" [
    i8 0, label %"$Some_1441"
    i8 1, label %"$None_1489"
  ]

"$Some_1441":                                     ; preds = %"$have_gas_1434"
  %"$$resopt_38_1442" = bitcast %TName_Option_Int256* %"$$resopt_38_1437" to %CName_Some_Int256*
  %"$res_gep_1443" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_38_1442", i32 0, i32 1
  %"$res_load_1444" = load %Int256, %Int256* %"$res_gep_1443", align 8
  %res31 = alloca %Int256, align 8
  store %Int256 %"$res_load_1444", %Int256* %res31, align 8
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$Some_1441"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$Some_1441"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %input_32 = alloca %Int256, align 8
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1448"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_32, align 8
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 1, %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1453"
  %"$consume_1459" = sub i64 %"$gasrem_1455", 1
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 16, %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1458"
  %"$consume_1465" = sub i64 %"$gasrem_1461", 16
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$execptr_load_1466" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1467" = alloca %Int256, align 8
  %"$res_1468" = load %Int256, %Int256* %res31, align 8
  store %Int256 %"$res_1468", %Int256* %"$eq_res_1467", align 8
  %"$eq_input__1469" = alloca %Int256, align 8
  %"$input__1470" = load %Int256, %Int256* %input_32, align 8
  store %Int256 %"$input__1470", %Int256* %"$eq_input__1469", align 8
  %"$eq_call_1471" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1466", %Int256* %"$eq_res_1467", %Int256* %"$eq_input__1469")
  store %TName_Bool* %"$eq_call_1471", %TName_Bool** %test_33, align 8
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 1, %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$have_gas_1464"
  %"$consume_1477" = sub i64 %"$gasrem_1473", 1
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1478" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1479" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1478", 0
  %"$BoolUtils.andb_envptr_1480" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1478", 1
  %"$$test_36_1481" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1482" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1479"(i8* %"$BoolUtils.andb_envptr_1480", %TName_Bool* %"$$test_36_1481")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1482", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_1483" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_1484" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1483", 0
  %"$$BoolUtils.andb_71_envptr_1485" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1483", 1
  %"$test__1486" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_71_call_1487" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_1484"(i8* %"$$BoolUtils.andb_71_envptr_1485", %TName_Bool* %"$test__1486")
  store %TName_Bool* %"$$BoolUtils.andb_71_call_1487", %TName_Bool** %"$BoolUtils.andb_72", align 8
  %"$$BoolUtils.andb_72_1488" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_1488", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1436"

"$None_1489":                                     ; preds = %"$have_gas_1434"
  %"$$resopt_38_1490" = bitcast %TName_Option_Int256* %"$$resopt_38_1437" to %CName_None_Int256*
  %"$gasrem_1491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1492" = icmp ugt i64 1, %"$gasrem_1491"
  br i1 %"$gascmp_1492", label %"$out_of_gas_1493", label %"$have_gas_1494"

"$out_of_gas_1493":                               ; preds = %"$None_1489"
  call void @_out_of_gas()
  br label %"$have_gas_1494"

"$have_gas_1494":                                 ; preds = %"$out_of_gas_1493", %"$None_1489"
  %"$consume_1495" = sub i64 %"$gasrem_1491", 1
  store i64 %"$consume_1495", i64* @_gasrem, align 8
  %"$false_1496" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1496", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1436"

"$empty_default_1440":                            ; preds = %"$have_gas_1434"
  br label %"$matchsucc_1436"

"$matchsucc_1436":                                ; preds = %"$have_gas_1494", %"$have_gas_1476", %"$empty_default_1440"
  %"$gasrem_1497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1498" = icmp ugt i64 1, %"$gasrem_1497"
  br i1 %"$gascmp_1498", label %"$out_of_gas_1499", label %"$have_gas_1500"

"$out_of_gas_1499":                               ; preds = %"$matchsucc_1436"
  call void @_out_of_gas()
  br label %"$have_gas_1500"

"$have_gas_1500":                                 ; preds = %"$out_of_gas_1499", %"$matchsucc_1436"
  %"$consume_1501" = sub i64 %"$gasrem_1497", 1
  store i64 %"$consume_1501", i64* @_gasrem, align 8
  %"$input_40" = alloca %String, align 8
  %"$gasrem_1502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1503" = icmp ugt i64 1, %"$gasrem_1502"
  br i1 %"$gascmp_1503", label %"$out_of_gas_1504", label %"$have_gas_1505"

"$out_of_gas_1504":                               ; preds = %"$have_gas_1500"
  call void @_out_of_gas()
  br label %"$have_gas_1505"

"$have_gas_1505":                                 ; preds = %"$out_of_gas_1504", %"$have_gas_1500"
  %"$consume_1506" = sub i64 %"$gasrem_1502", 1
  store i64 %"$consume_1506", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1507", i32 0, i32 0), i32 77 }, %String* %"$input_40", align 8
  %"$gasrem_1508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1509" = icmp ugt i64 1, %"$gasrem_1508"
  br i1 %"$gascmp_1509", label %"$out_of_gas_1510", label %"$have_gas_1511"

"$out_of_gas_1510":                               ; preds = %"$have_gas_1505"
  call void @_out_of_gas()
  br label %"$have_gas_1511"

"$have_gas_1511":                                 ; preds = %"$out_of_gas_1510", %"$have_gas_1505"
  %"$consume_1512" = sub i64 %"$gasrem_1508", 1
  store i64 %"$consume_1512", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1514" = icmp ugt i64 16, %"$gasrem_1513"
  br i1 %"$gascmp_1514", label %"$out_of_gas_1515", label %"$have_gas_1516"

"$out_of_gas_1515":                               ; preds = %"$have_gas_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1516"

"$have_gas_1516":                                 ; preds = %"$out_of_gas_1515", %"$have_gas_1511"
  %"$consume_1517" = sub i64 %"$gasrem_1513", 16
  store i64 %"$consume_1517", i64* @_gasrem, align 8
  %"$execptr_load_1518" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_40_1519" = alloca %String, align 8
  %"$$input_40_1520" = load %String, %String* %"$input_40", align 8
  store %String %"$$input_40_1520", %String* %"$to_int256_$input_40_1519", align 8
  %"$$to_int256_$input_40_1519_1521" = bitcast %String* %"$to_int256_$input_40_1519" to i8*
  %"$to_int256_call_1522" = call i8* @_to_int256(i8* %"$execptr_load_1518", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int256_$input_40_1519_1521")
  %"$to_int256_1523" = bitcast i8* %"$to_int256_call_1522" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1523", %TName_Option_Int256** %"$resopt_41", align 8
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 1, %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$have_gas_1516"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$have_gas_1516"
  %"$consume_1528" = sub i64 %"$gasrem_1524", 1
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 2, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1527"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1527"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 2
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$$resopt_41_1535" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1536" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_41_1535", i32 0, i32 0
  %"$$resopt_41_tag_1537" = load i8, i8* %"$$resopt_41_tag_1536", align 1
  switch i8 %"$$resopt_41_tag_1537", label %"$empty_default_1538" [
    i8 0, label %"$Some_1539"
    i8 1, label %"$None_1587"
  ]

"$Some_1539":                                     ; preds = %"$have_gas_1532"
  %"$$resopt_41_1540" = bitcast %TName_Option_Int256* %"$$resopt_41_1535" to %CName_Some_Int256*
  %"$res_gep_1541" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_41_1540", i32 0, i32 1
  %"$res_load_1542" = load %Int256, %Int256* %"$res_gep_1541", align 8
  %res34 = alloca %Int256, align 8
  store %Int256 %"$res_load_1542", %Int256* %res34, align 8
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 1, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$Some_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$Some_1539"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 1
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  %input_35 = alloca %Int256, align 8
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %"$have_gas_1546"
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_35, align 8
  %"$gasrem_1553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1554" = icmp ugt i64 1, %"$gasrem_1553"
  br i1 %"$gascmp_1554", label %"$out_of_gas_1555", label %"$have_gas_1556"

"$out_of_gas_1555":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1556"

"$have_gas_1556":                                 ; preds = %"$out_of_gas_1555", %"$have_gas_1551"
  %"$consume_1557" = sub i64 %"$gasrem_1553", 1
  store i64 %"$consume_1557", i64* @_gasrem, align 8
  %test_36 = alloca %TName_Bool*, align 8
  %"$gasrem_1559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1560" = icmp ugt i64 16, %"$gasrem_1559"
  br i1 %"$gascmp_1560", label %"$out_of_gas_1561", label %"$have_gas_1562"

"$out_of_gas_1561":                               ; preds = %"$have_gas_1556"
  call void @_out_of_gas()
  br label %"$have_gas_1562"

"$have_gas_1562":                                 ; preds = %"$out_of_gas_1561", %"$have_gas_1556"
  %"$consume_1563" = sub i64 %"$gasrem_1559", 16
  store i64 %"$consume_1563", i64* @_gasrem, align 8
  %"$execptr_load_1564" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1565" = alloca %Int256, align 8
  %"$res_1566" = load %Int256, %Int256* %res34, align 8
  store %Int256 %"$res_1566", %Int256* %"$eq_res_1565", align 8
  %"$eq_input__1567" = alloca %Int256, align 8
  %"$input__1568" = load %Int256, %Int256* %input_35, align 8
  store %Int256 %"$input__1568", %Int256* %"$eq_input__1567", align 8
  %"$eq_call_1569" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1564", %Int256* %"$eq_res_1565", %Int256* %"$eq_input__1567")
  store %TName_Bool* %"$eq_call_1569", %TName_Bool** %test_36, align 8
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 1, %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$have_gas_1562"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$have_gas_1562"
  %"$consume_1575" = sub i64 %"$gasrem_1571", 1
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1576" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1577" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1576", 0
  %"$BoolUtils.andb_envptr_1578" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1576", 1
  %"$$test_39_1579" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1580" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1577"(i8* %"$BoolUtils.andb_envptr_1578", %TName_Bool* %"$$test_39_1579")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1580", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_1581" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_1582" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1581", 0
  %"$$BoolUtils.andb_73_envptr_1583" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1581", 1
  %"$test__1584" = load %TName_Bool*, %TName_Bool** %test_36, align 8
  %"$$BoolUtils.andb_73_call_1585" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_1582"(i8* %"$$BoolUtils.andb_73_envptr_1583", %TName_Bool* %"$test__1584")
  store %TName_Bool* %"$$BoolUtils.andb_73_call_1585", %TName_Bool** %"$BoolUtils.andb_74", align 8
  %"$$BoolUtils.andb_74_1586" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_1586", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1534"

"$None_1587":                                     ; preds = %"$have_gas_1532"
  %"$$resopt_41_1588" = bitcast %TName_Option_Int256* %"$$resopt_41_1535" to %CName_None_Int256*
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$None_1587"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$None_1587"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  %"$false_1594" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1594", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1534"

"$empty_default_1538":                            ; preds = %"$have_gas_1532"
  br label %"$matchsucc_1534"

"$matchsucc_1534":                                ; preds = %"$have_gas_1592", %"$have_gas_1574", %"$empty_default_1538"
  %"$gasrem_1595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1596" = icmp ugt i64 1, %"$gasrem_1595"
  br i1 %"$gascmp_1596", label %"$out_of_gas_1597", label %"$have_gas_1598"

"$out_of_gas_1597":                               ; preds = %"$matchsucc_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1598"

"$have_gas_1598":                                 ; preds = %"$out_of_gas_1597", %"$matchsucc_1534"
  %"$consume_1599" = sub i64 %"$gasrem_1595", 1
  store i64 %"$consume_1599", i64* @_gasrem, align 8
  %"$input_43" = alloca %String, align 8
  %"$gasrem_1600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1601" = icmp ugt i64 1, %"$gasrem_1600"
  br i1 %"$gascmp_1601", label %"$out_of_gas_1602", label %"$have_gas_1603"

"$out_of_gas_1602":                               ; preds = %"$have_gas_1598"
  call void @_out_of_gas()
  br label %"$have_gas_1603"

"$have_gas_1603":                                 ; preds = %"$out_of_gas_1602", %"$have_gas_1598"
  %"$consume_1604" = sub i64 %"$gasrem_1600", 1
  store i64 %"$consume_1604", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1605", i32 0, i32 0), i32 4 }, %String* %"$input_43", align 8
  %"$gasrem_1606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1607" = icmp ugt i64 1, %"$gasrem_1606"
  br i1 %"$gascmp_1607", label %"$out_of_gas_1608", label %"$have_gas_1609"

"$out_of_gas_1608":                               ; preds = %"$have_gas_1603"
  call void @_out_of_gas()
  br label %"$have_gas_1609"

"$have_gas_1609":                                 ; preds = %"$out_of_gas_1608", %"$have_gas_1603"
  %"$consume_1610" = sub i64 %"$gasrem_1606", 1
  store i64 %"$consume_1610", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 4, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1609"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1609"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 4
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  %"$execptr_load_1616" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_43_1617" = alloca %String, align 8
  %"$$input_43_1618" = load %String, %String* %"$input_43", align 8
  store %String %"$$input_43_1618", %String* %"$to_int64_$input_43_1617", align 8
  %"$$to_int64_$input_43_1617_1619" = bitcast %String* %"$to_int64_$input_43_1617" to i8*
  %"$to_int64_call_1620" = call i8* @_to_int64(i8* %"$execptr_load_1616", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int64_$input_43_1617_1619")
  %"$to_int64_1621" = bitcast i8* %"$to_int64_call_1620" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1621", %TName_Option_Int64** %"$resopt_44", align 8
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$have_gas_1614"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$have_gas_1614"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 2, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %"$have_gas_1625"
  %"$consume_1631" = sub i64 %"$gasrem_1627", 2
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  %"$$resopt_44_1633" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_44", align 8
  %"$$resopt_44_tag_1634" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_44_1633", i32 0, i32 0
  %"$$resopt_44_tag_1635" = load i8, i8* %"$$resopt_44_tag_1634", align 1
  switch i8 %"$$resopt_44_tag_1635", label %"$empty_default_1636" [
    i8 0, label %"$Some_1637"
    i8 1, label %"$None_1647"
  ]

"$Some_1637":                                     ; preds = %"$have_gas_1630"
  %"$$resopt_44_1638" = bitcast %TName_Option_Int64* %"$$resopt_44_1633" to %CName_Some_Int64*
  %"$$$resopt_44_48_gep_1639" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_44_1638", i32 0, i32 1
  %"$$$resopt_44_48_load_1640" = load %Int64, %Int64* %"$$$resopt_44_48_gep_1639", align 8
  %"$$resopt_44_48" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_44_48_load_1640", %Int64* %"$$resopt_44_48", align 8
  %"$gasrem_1641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1642" = icmp ugt i64 1, %"$gasrem_1641"
  br i1 %"$gascmp_1642", label %"$out_of_gas_1643", label %"$have_gas_1644"

"$out_of_gas_1643":                               ; preds = %"$Some_1637"
  call void @_out_of_gas()
  br label %"$have_gas_1644"

"$have_gas_1644":                                 ; preds = %"$out_of_gas_1643", %"$Some_1637"
  %"$consume_1645" = sub i64 %"$gasrem_1641", 1
  store i64 %"$consume_1645", i64* @_gasrem, align 8
  %"$false_1646" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1646", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1632"

"$None_1647":                                     ; preds = %"$have_gas_1630"
  %"$$resopt_44_1648" = bitcast %TName_Option_Int64* %"$$resopt_44_1633" to %CName_None_Int64*
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$None_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$None_1647"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %"$$test_42_1654" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  store %TName_Bool* %"$$test_42_1654", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1632"

"$empty_default_1636":                            ; preds = %"$have_gas_1630"
  br label %"$matchsucc_1632"

"$matchsucc_1632":                                ; preds = %"$have_gas_1652", %"$have_gas_1644", %"$empty_default_1636"
  %"$gasrem_1655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1656" = icmp ugt i64 1, %"$gasrem_1655"
  br i1 %"$gascmp_1656", label %"$out_of_gas_1657", label %"$have_gas_1658"

"$out_of_gas_1657":                               ; preds = %"$matchsucc_1632"
  call void @_out_of_gas()
  br label %"$have_gas_1658"

"$have_gas_1658":                                 ; preds = %"$out_of_gas_1657", %"$matchsucc_1632"
  %"$consume_1659" = sub i64 %"$gasrem_1655", 1
  store i64 %"$consume_1659", i64* @_gasrem, align 8
  %"$$test_45_1660" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  store %TName_Bool* %"$$test_45_1660", %TName_Bool** %"$expr_79", align 8
  %"$$expr_79_1661" = load %TName_Bool*, %TName_Bool** %"$expr_79", align 8
  ret %TName_Bool* %"$$expr_79_1661"
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
  %"$exprval_1662" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1663" = bitcast %TName_Bool* %"$exprval_1662" to i8*
  %"$execptr_load_1664" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1664", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_115", i8* %"$memvoidcast_1663")
  ret void
}
