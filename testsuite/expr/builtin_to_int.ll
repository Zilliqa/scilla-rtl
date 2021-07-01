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
%"$ParamDescr_1516" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1517" = type { %ParamDescrString, i32, %"$ParamDescr_1516"* }
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
@"$stringlit_416" = unnamed_addr constant [4 x i8] c"1844"
@"$stringlit_807" = unnamed_addr constant [19 x i8] c"9223372036854775808"
@"$stringlit_1030" = unnamed_addr constant [20 x i8] c"-9223372036854775808"
@"$stringlit_1201" = unnamed_addr constant [19 x i8] c"9223372036854775807"
@"$stringlit_1374" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1461" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_112", %_TyDescrTy_Typ* @"$TyDescr_Event_104", %_TyDescrTy_Typ* @"$TyDescr_Int64_86", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_115", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int64_113", %_TyDescrTy_Typ* @"$TyDescr_Uint256_96", %_TyDescrTy_Typ* @"$TyDescr_Uint32_84", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", %_TyDescrTy_Typ* @"$TyDescr_Bnum_100", %_TyDescrTy_Typ* @"$TyDescr_Uint128_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_114", %_TyDescrTy_Typ* @"$TyDescr_Exception_106", %_TyDescrTy_Typ* @"$TyDescr_String_98", %_TyDescrTy_Typ* @"$TyDescr_Int256_94", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", %_TyDescrTy_Typ* @"$TyDescr_Bystr_108", %_TyDescrTy_Typ* @"$TyDescr_Message_102", %_TyDescrTy_Typ* @"$TyDescr_Int32_82"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1516"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1517"] zeroinitializer
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
  %"$execptr_load_253" = load i8*, i8** @_execptr, align 8
  %"$to_int32_input_254" = alloca %Uint32, align 8
  %"$input_255" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_255", %Uint32* %"$to_int32_input_254", align 4
  %"$$to_int32_input_254_256" = bitcast %Uint32* %"$to_int32_input_254" to i8*
  %"$to_int32_call_257" = call i8* @_to_int32(i8* %"$execptr_load_253", %_TyDescrTy_Typ* @"$TyDescr_Uint32_84", i8* %"$$to_int32_input_254_256")
  %"$to_int32_258" = bitcast i8* %"$to_int32_call_257" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_258", %TName_Option_Int32** %resopt, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_251"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 2, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 2
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$resopt_270" = load %TName_Option_Int32*, %TName_Option_Int32** %resopt, align 8
  %"$resopt_tag_271" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$resopt_270", i32 0, i32 0
  %"$resopt_tag_272" = load i8, i8* %"$resopt_tag_271", align 1
  switch i8 %"$resopt_tag_272", label %"$empty_default_273" [
    i8 0, label %"$Some_274"
    i8 1, label %"$None_314"
  ]

"$Some_274":                                      ; preds = %"$have_gas_267"
  %"$resopt_275" = bitcast %TName_Option_Int32* %"$resopt_270" to %CName_Some_Int32*
  %"$res_gep_276" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$resopt_275", i32 0, i32 1
  %"$res_load_277" = load %Int32, %Int32* %"$res_gep_276", align 4
  %res = alloca %Int32, align 8
  store %Int32 %"$res_load_277", %Int32* %res, align 4
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$Some_274"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$Some_274"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %input_ = alloca %Int32, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_, align 4
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$execptr_load_293" = load i8*, i8** @_execptr, align 8
  %"$res_294" = load %Int32, %Int32* %res, align 4
  %"$input__295" = load %Int32, %Int32* %input_, align 4
  %"$eq_call_296" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_293", %Int32 %"$res_294", %Int32 %"$input__295")
  store %TName_Bool* %"$eq_call_296", %TName_Bool** %test_, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_291"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$BoolUtils.andb_49" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_303" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_304" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_303", 0
  %"$BoolUtils.andb_envptr_305" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_303", 1
  %"$test_306" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_307" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_304"(i8* %"$BoolUtils.andb_envptr_305", %TName_Bool* %"$test_306")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_307", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_49", align 8
  %"$BoolUtils.andb_50" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_49_308" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_49", align 8
  %"$$BoolUtils.andb_49_fptr_309" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_49_308", 0
  %"$$BoolUtils.andb_49_envptr_310" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_49_308", 1
  %"$test__311" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_49_call_312" = call %TName_Bool* %"$$BoolUtils.andb_49_fptr_309"(i8* %"$$BoolUtils.andb_49_envptr_310", %TName_Bool* %"$test__311")
  store %TName_Bool* %"$$BoolUtils.andb_49_call_312", %TName_Bool** %"$BoolUtils.andb_50", align 8
  %"$$BoolUtils.andb_50_313" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_50", align 8
  store %TName_Bool* %"$$BoolUtils.andb_50_313", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_269"

"$None_314":                                      ; preds = %"$have_gas_267"
  %"$resopt_315" = bitcast %TName_Option_Int32* %"$resopt_270" to %CName_None_Int32*
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$None_314"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$None_314"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$false_321" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_321", %TName_Bool** %"$test_0", align 8
  br label %"$matchsucc_269"

"$empty_default_273":                             ; preds = %"$have_gas_267"
  br label %"$matchsucc_269"

"$matchsucc_269":                                 ; preds = %"$have_gas_319", %"$have_gas_301", %"$empty_default_273"
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$matchsucc_269"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$matchsucc_269"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$input_1" = alloca %Int32, align 8
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$input_1", align 4
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$resopt_2" = alloca %TName_Option_Int32*, align 8
  %"$execptr_load_337" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_1_338" = alloca %Int32, align 8
  %"$$input_1_339" = load %Int32, %Int32* %"$input_1", align 4
  store %Int32 %"$$input_1_339", %Int32* %"$to_int32_$input_1_338", align 4
  %"$$to_int32_$input_1_338_340" = bitcast %Int32* %"$to_int32_$input_1_338" to i8*
  %"$to_int32_call_341" = call i8* @_to_int32(i8* %"$execptr_load_337", %_TyDescrTy_Typ* @"$TyDescr_Int32_82", i8* %"$$to_int32_$input_1_338_340")
  %"$to_int32_342" = bitcast i8* %"$to_int32_call_341" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_342", %TName_Option_Int32** %"$resopt_2", align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_335"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$test_3" = alloca %TName_Bool*, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 2, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 2
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$$resopt_2_354" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_2", align 8
  %"$$resopt_2_tag_355" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_2_354", i32 0, i32 0
  %"$$resopt_2_tag_356" = load i8, i8* %"$$resopt_2_tag_355", align 1
  switch i8 %"$$resopt_2_tag_356", label %"$empty_default_357" [
    i8 0, label %"$Some_358"
    i8 1, label %"$None_398"
  ]

"$Some_358":                                      ; preds = %"$have_gas_351"
  %"$$resopt_2_359" = bitcast %TName_Option_Int32* %"$$resopt_2_354" to %CName_Some_Int32*
  %"$res_gep_360" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_2_359", i32 0, i32 1
  %"$res_load_361" = load %Int32, %Int32* %"$res_gep_360", align 4
  %res1 = alloca %Int32, align 8
  store %Int32 %"$res_load_361", %Int32* %res1, align 4
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$Some_358"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$Some_358"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %input_2 = alloca %Int32, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_2, align 4
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  %"$execptr_load_377" = load i8*, i8** @_execptr, align 8
  %"$res_378" = load %Int32, %Int32* %res1, align 4
  %"$input__379" = load %Int32, %Int32* %input_2, align 4
  %"$eq_call_380" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_377", %Int32 %"$res_378", %Int32 %"$input__379")
  store %TName_Bool* %"$eq_call_380", %TName_Bool** %test_3, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_375"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$BoolUtils.andb_51" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_387" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_388" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_387", 0
  %"$BoolUtils.andb_envptr_389" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_387", 1
  %"$$test_0_390" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_391" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_388"(i8* %"$BoolUtils.andb_envptr_389", %TName_Bool* %"$$test_0_390")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_391", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_51", align 8
  %"$BoolUtils.andb_52" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_51_392" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_51", align 8
  %"$$BoolUtils.andb_51_fptr_393" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_51_392", 0
  %"$$BoolUtils.andb_51_envptr_394" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_51_392", 1
  %"$test__395" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_51_call_396" = call %TName_Bool* %"$$BoolUtils.andb_51_fptr_393"(i8* %"$$BoolUtils.andb_51_envptr_394", %TName_Bool* %"$test__395")
  store %TName_Bool* %"$$BoolUtils.andb_51_call_396", %TName_Bool** %"$BoolUtils.andb_52", align 8
  %"$$BoolUtils.andb_52_397" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_52", align 8
  store %TName_Bool* %"$$BoolUtils.andb_52_397", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_353"

"$None_398":                                      ; preds = %"$have_gas_351"
  %"$$resopt_2_399" = bitcast %TName_Option_Int32* %"$$resopt_2_354" to %CName_None_Int32*
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$None_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$None_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$false_405" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_405", %TName_Bool** %"$test_3", align 8
  br label %"$matchsucc_353"

"$empty_default_357":                             ; preds = %"$have_gas_351"
  br label %"$matchsucc_353"

"$matchsucc_353":                                 ; preds = %"$have_gas_403", %"$have_gas_385", %"$empty_default_357"
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$matchsucc_353"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$matchsucc_353"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$input_4" = alloca %String, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_416", i32 0, i32 0), i32 4 }, %String* %"$input_4", align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_414"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$resopt_5" = alloca %TName_Option_Int32*, align 8
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_4_423" = alloca %String, align 8
  %"$$input_4_424" = load %String, %String* %"$input_4", align 8
  store %String %"$$input_4_424", %String* %"$to_int32_$input_4_423", align 8
  %"$$to_int32_$input_4_423_425" = bitcast %String* %"$to_int32_$input_4_423" to i8*
  %"$to_int32_call_426" = call i8* @_to_int32(i8* %"$execptr_load_422", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int32_$input_4_423_425")
  %"$to_int32_427" = bitcast i8* %"$to_int32_call_426" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_427", %TName_Option_Int32** %"$resopt_5", align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_420"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 2, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 2
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$$resopt_5_439" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_5", align 8
  %"$$resopt_5_tag_440" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_5_439", i32 0, i32 0
  %"$$resopt_5_tag_441" = load i8, i8* %"$$resopt_5_tag_440", align 1
  switch i8 %"$$resopt_5_tag_441", label %"$empty_default_442" [
    i8 0, label %"$Some_443"
    i8 1, label %"$None_483"
  ]

"$Some_443":                                      ; preds = %"$have_gas_436"
  %"$$resopt_5_444" = bitcast %TName_Option_Int32* %"$$resopt_5_439" to %CName_Some_Int32*
  %"$res_gep_445" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_5_444", i32 0, i32 1
  %"$res_load_446" = load %Int32, %Int32* %"$res_gep_445", align 4
  %res4 = alloca %Int32, align 8
  store %Int32 %"$res_load_446", %Int32* %res4, align 4
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$Some_443"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$Some_443"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %input_5 = alloca %Int32, align 8
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_5, align 4
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  %"$execptr_load_462" = load i8*, i8** @_execptr, align 8
  %"$res_463" = load %Int32, %Int32* %res4, align 4
  %"$input__464" = load %Int32, %Int32* %input_5, align 4
  %"$eq_call_465" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_462", %Int32 %"$res_463", %Int32 %"$input__464")
  store %TName_Bool* %"$eq_call_465", %TName_Bool** %test_6, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_460"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %"$BoolUtils.andb_53" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_472" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_473" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_472", 0
  %"$BoolUtils.andb_envptr_474" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_472", 1
  %"$$test_3_475" = load %TName_Bool*, %TName_Bool** %"$test_3", align 8
  %"$BoolUtils.andb_call_476" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_473"(i8* %"$BoolUtils.andb_envptr_474", %TName_Bool* %"$$test_3_475")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_476", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_53", align 8
  %"$BoolUtils.andb_54" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_53_477" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_53", align 8
  %"$$BoolUtils.andb_53_fptr_478" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_53_477", 0
  %"$$BoolUtils.andb_53_envptr_479" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_53_477", 1
  %"$test__480" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_53_call_481" = call %TName_Bool* %"$$BoolUtils.andb_53_fptr_478"(i8* %"$$BoolUtils.andb_53_envptr_479", %TName_Bool* %"$test__480")
  store %TName_Bool* %"$$BoolUtils.andb_53_call_481", %TName_Bool** %"$BoolUtils.andb_54", align 8
  %"$$BoolUtils.andb_54_482" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_54", align 8
  store %TName_Bool* %"$$BoolUtils.andb_54_482", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_438"

"$None_483":                                      ; preds = %"$have_gas_436"
  %"$$resopt_5_484" = bitcast %TName_Option_Int32* %"$$resopt_5_439" to %CName_None_Int32*
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$None_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$None_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$false_490" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_490", %TName_Bool** %"$test_6", align 8
  br label %"$matchsucc_438"

"$empty_default_442":                             ; preds = %"$have_gas_436"
  br label %"$matchsucc_438"

"$matchsucc_438":                                 ; preds = %"$have_gas_488", %"$have_gas_470", %"$empty_default_442"
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$matchsucc_438"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$matchsucc_438"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$input_7" = alloca %Uint128, align 8
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_494"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_7", align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_499"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Int32*, align 8
  %"$execptr_load_506" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_7_507" = alloca %Uint128, align 8
  %"$$input_7_508" = load %Uint128, %Uint128* %"$input_7", align 8
  store %Uint128 %"$$input_7_508", %Uint128* %"$to_int32_$input_7_507", align 8
  %"$$to_int32_$input_7_507_509" = bitcast %Uint128* %"$to_int32_$input_7_507" to i8*
  %"$to_int32_call_510" = call i8* @_to_int32(i8* %"$execptr_load_506", %_TyDescrTy_Typ* @"$TyDescr_Uint128_92", i8* %"$$to_int32_$input_7_507_509")
  %"$to_int32_511" = bitcast i8* %"$to_int32_call_510" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_511", %TName_Option_Int32** %"$resopt_8", align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_504"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 2, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 2
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$$resopt_8_523" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_8", align 8
  %"$$resopt_8_tag_524" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_8_523", i32 0, i32 0
  %"$$resopt_8_tag_525" = load i8, i8* %"$$resopt_8_tag_524", align 1
  switch i8 %"$$resopt_8_tag_525", label %"$empty_default_526" [
    i8 0, label %"$Some_527"
    i8 1, label %"$None_567"
  ]

"$Some_527":                                      ; preds = %"$have_gas_520"
  %"$$resopt_8_528" = bitcast %TName_Option_Int32* %"$$resopt_8_523" to %CName_Some_Int32*
  %"$res_gep_529" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_8_528", i32 0, i32 1
  %"$res_load_530" = load %Int32, %Int32* %"$res_gep_529", align 4
  %res7 = alloca %Int32, align 8
  store %Int32 %"$res_load_530", %Int32* %res7, align 4
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$Some_527"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$Some_527"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %input_8 = alloca %Int32, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_8, align 4
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  %"$execptr_load_546" = load i8*, i8** @_execptr, align 8
  %"$res_547" = load %Int32, %Int32* %res7, align 4
  %"$input__548" = load %Int32, %Int32* %input_8, align 4
  %"$eq_call_549" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_546", %Int32 %"$res_547", %Int32 %"$input__548")
  store %TName_Bool* %"$eq_call_549", %TName_Bool** %test_9, align 8
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_544"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_556" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_557" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_556", 0
  %"$BoolUtils.andb_envptr_558" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_556", 1
  %"$$test_6_559" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_560" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_557"(i8* %"$BoolUtils.andb_envptr_558", %TName_Bool* %"$$test_6_559")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_560", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_55_561" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_561", 0
  %"$$BoolUtils.andb_55_envptr_563" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_561", 1
  %"$test__564" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_55_call_565" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_562"(i8* %"$$BoolUtils.andb_55_envptr_563", %TName_Bool* %"$test__564")
  store %TName_Bool* %"$$BoolUtils.andb_55_call_565", %TName_Bool** %"$BoolUtils.andb_56", align 8
  %"$$BoolUtils.andb_56_566" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_566", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_522"

"$None_567":                                      ; preds = %"$have_gas_520"
  %"$$resopt_8_568" = bitcast %TName_Option_Int32* %"$$resopt_8_523" to %CName_None_Int32*
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$None_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$None_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$false_574" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_574", %TName_Bool** %"$test_9", align 8
  br label %"$matchsucc_522"

"$empty_default_526":                             ; preds = %"$have_gas_520"
  br label %"$matchsucc_522"

"$matchsucc_522":                                 ; preds = %"$have_gas_572", %"$have_gas_554", %"$empty_default_526"
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$matchsucc_522"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$matchsucc_522"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$input_10" = alloca %Int128, align 8
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  store %Int128 { i128 1844 }, %Int128* %"$input_10", align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Int32*, align 8
  %"$execptr_load_590" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_10_591" = alloca %Int128, align 8
  %"$$input_10_592" = load %Int128, %Int128* %"$input_10", align 8
  store %Int128 %"$$input_10_592", %Int128* %"$to_int32_$input_10_591", align 8
  %"$$to_int32_$input_10_591_593" = bitcast %Int128* %"$to_int32_$input_10_591" to i8*
  %"$to_int32_call_594" = call i8* @_to_int32(i8* %"$execptr_load_590", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", i8* %"$$to_int32_$input_10_591_593")
  %"$to_int32_595" = bitcast i8* %"$to_int32_call_594" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_595", %TName_Option_Int32** %"$resopt_11", align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_588"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 2, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 2
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$$resopt_11_607" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_11", align 8
  %"$$resopt_11_tag_608" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_11_607", i32 0, i32 0
  %"$$resopt_11_tag_609" = load i8, i8* %"$$resopt_11_tag_608", align 1
  switch i8 %"$$resopt_11_tag_609", label %"$empty_default_610" [
    i8 0, label %"$Some_611"
    i8 1, label %"$None_651"
  ]

"$Some_611":                                      ; preds = %"$have_gas_604"
  %"$$resopt_11_612" = bitcast %TName_Option_Int32* %"$$resopt_11_607" to %CName_Some_Int32*
  %"$res_gep_613" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_11_612", i32 0, i32 1
  %"$res_load_614" = load %Int32, %Int32* %"$res_gep_613", align 4
  %res10 = alloca %Int32, align 8
  store %Int32 %"$res_load_614", %Int32* %res10, align 4
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$Some_611"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$Some_611"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %input_11 = alloca %Int32, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_11, align 4
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_623"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  %"$execptr_load_630" = load i8*, i8** @_execptr, align 8
  %"$res_631" = load %Int32, %Int32* %res10, align 4
  %"$input__632" = load %Int32, %Int32* %input_11, align 4
  %"$eq_call_633" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_630", %Int32 %"$res_631", %Int32 %"$input__632")
  store %TName_Bool* %"$eq_call_633", %TName_Bool** %test_12, align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_628"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_628"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_640" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_641" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_640", 0
  %"$BoolUtils.andb_envptr_642" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_640", 1
  %"$$test_9_643" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  %"$BoolUtils.andb_call_644" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_641"(i8* %"$BoolUtils.andb_envptr_642", %TName_Bool* %"$$test_9_643")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_644", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_57_645" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_646" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_645", 0
  %"$$BoolUtils.andb_57_envptr_647" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_645", 1
  %"$test__648" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_57_call_649" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_646"(i8* %"$$BoolUtils.andb_57_envptr_647", %TName_Bool* %"$test__648")
  store %TName_Bool* %"$$BoolUtils.andb_57_call_649", %TName_Bool** %"$BoolUtils.andb_58", align 8
  %"$$BoolUtils.andb_58_650" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_650", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_606"

"$None_651":                                      ; preds = %"$have_gas_604"
  %"$$resopt_11_652" = bitcast %TName_Option_Int32* %"$$resopt_11_607" to %CName_None_Int32*
  %"$gasrem_653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_654" = icmp ugt i64 1, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %"$None_651"
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %"$None_651"
  %"$consume_657" = sub i64 %"$gasrem_653", 1
  store i64 %"$consume_657", i64* @_gasrem, align 8
  %"$false_658" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_658", %TName_Bool** %"$test_12", align 8
  br label %"$matchsucc_606"

"$empty_default_610":                             ; preds = %"$have_gas_604"
  br label %"$matchsucc_606"

"$matchsucc_606":                                 ; preds = %"$have_gas_656", %"$have_gas_638", %"$empty_default_610"
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$matchsucc_606"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$matchsucc_606"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  %"$input_13" = alloca %Int256, align 8
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_662"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_662"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$input_13", align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Int32*, align 8
  %"$execptr_load_674" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_13_675" = alloca %Int256, align 8
  %"$$input_13_676" = load %Int256, %Int256* %"$input_13", align 8
  store %Int256 %"$$input_13_676", %Int256* %"$to_int32_$input_13_675", align 8
  %"$$to_int32_$input_13_675_677" = bitcast %Int256* %"$to_int32_$input_13_675" to i8*
  %"$to_int32_call_678" = call i8* @_to_int32(i8* %"$execptr_load_674", %_TyDescrTy_Typ* @"$TyDescr_Int256_94", i8* %"$$to_int32_$input_13_675_677")
  %"$to_int32_679" = bitcast i8* %"$to_int32_call_678" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_679", %TName_Option_Int32** %"$resopt_14", align 8
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_672"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 2, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$have_gas_683"
  %"$consume_689" = sub i64 %"$gasrem_685", 2
  store i64 %"$consume_689", i64* @_gasrem, align 8
  %"$$resopt_14_691" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_14", align 8
  %"$$resopt_14_tag_692" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_14_691", i32 0, i32 0
  %"$$resopt_14_tag_693" = load i8, i8* %"$$resopt_14_tag_692", align 1
  switch i8 %"$$resopt_14_tag_693", label %"$empty_default_694" [
    i8 0, label %"$Some_695"
    i8 1, label %"$None_735"
  ]

"$Some_695":                                      ; preds = %"$have_gas_688"
  %"$$resopt_14_696" = bitcast %TName_Option_Int32* %"$$resopt_14_691" to %CName_Some_Int32*
  %"$res_gep_697" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_14_696", i32 0, i32 1
  %"$res_load_698" = load %Int32, %Int32* %"$res_gep_697", align 4
  %res13 = alloca %Int32, align 8
  store %Int32 %"$res_load_698", %Int32* %res13, align 4
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$Some_695"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$Some_695"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %input_14 = alloca %Int32, align 8
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_14, align 4
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  %"$execptr_load_714" = load i8*, i8** @_execptr, align 8
  %"$res_715" = load %Int32, %Int32* %res13, align 4
  %"$input__716" = load %Int32, %Int32* %input_14, align 4
  %"$eq_call_717" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_714", %Int32 %"$res_715", %Int32 %"$input__716")
  store %TName_Bool* %"$eq_call_717", %TName_Bool** %test_15, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_712"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_724" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_725" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_724", 0
  %"$BoolUtils.andb_envptr_726" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_724", 1
  %"$$test_12_727" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_728" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_725"(i8* %"$BoolUtils.andb_envptr_726", %TName_Bool* %"$$test_12_727")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_728", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_59_729" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_730" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_729", 0
  %"$$BoolUtils.andb_59_envptr_731" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_729", 1
  %"$test__732" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_59_call_733" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_730"(i8* %"$$BoolUtils.andb_59_envptr_731", %TName_Bool* %"$test__732")
  store %TName_Bool* %"$$BoolUtils.andb_59_call_733", %TName_Bool** %"$BoolUtils.andb_60", align 8
  %"$$BoolUtils.andb_60_734" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_734", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_690"

"$None_735":                                      ; preds = %"$have_gas_688"
  %"$$resopt_14_736" = bitcast %TName_Option_Int32* %"$$resopt_14_691" to %CName_None_Int32*
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 1, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$None_735"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$None_735"
  %"$consume_741" = sub i64 %"$gasrem_737", 1
  store i64 %"$consume_741", i64* @_gasrem, align 8
  %"$false_742" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_742", %TName_Bool** %"$test_15", align 8
  br label %"$matchsucc_690"

"$empty_default_694":                             ; preds = %"$have_gas_688"
  br label %"$matchsucc_690"

"$matchsucc_690":                                 ; preds = %"$have_gas_740", %"$have_gas_722", %"$empty_default_694"
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 1, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$matchsucc_690"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$matchsucc_690"
  %"$consume_747" = sub i64 %"$gasrem_743", 1
  store i64 %"$consume_747", i64* @_gasrem, align 8
  %"$input_16" = alloca %Uint64, align 8
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_746"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_746"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  store %Uint64 { i64 -9223372036854775808 }, %Uint64* %"$input_16", align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_751"
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Int64*, align 8
  %"$execptr_load_758" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_16_759" = alloca %Uint64, align 8
  %"$$input_16_760" = load %Uint64, %Uint64* %"$input_16", align 8
  store %Uint64 %"$$input_16_760", %Uint64* %"$to_int64_$input_16_759", align 8
  %"$$to_int64_$input_16_759_761" = bitcast %Uint64* %"$to_int64_$input_16_759" to i8*
  %"$to_int64_call_762" = call i8* @_to_int64(i8* %"$execptr_load_758", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", i8* %"$$to_int64_$input_16_759_761")
  %"$to_int64_763" = bitcast i8* %"$to_int64_call_762" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_763", %TName_Option_Int64** %"$resopt_17", align 8
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_756"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 2, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 2
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$$resopt_17_775" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_17", align 8
  %"$$resopt_17_tag_776" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_17_775", i32 0, i32 0
  %"$$resopt_17_tag_777" = load i8, i8* %"$$resopt_17_tag_776", align 1
  switch i8 %"$$resopt_17_tag_777", label %"$empty_default_778" [
    i8 0, label %"$Some_779"
    i8 1, label %"$None_789"
  ]

"$Some_779":                                      ; preds = %"$have_gas_772"
  %"$$resopt_17_780" = bitcast %TName_Option_Int64* %"$$resopt_17_775" to %CName_Some_Int64*
  %"$$$resopt_17_46_gep_781" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_17_780", i32 0, i32 1
  %"$$$resopt_17_46_load_782" = load %Int64, %Int64* %"$$$resopt_17_46_gep_781", align 8
  %"$$resopt_17_46" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_17_46_load_782", %Int64* %"$$resopt_17_46", align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$Some_779"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$Some_779"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$false_788" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_788", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_774"

"$None_789":                                      ; preds = %"$have_gas_772"
  %"$$resopt_17_790" = bitcast %TName_Option_Int64* %"$$resopt_17_775" to %CName_None_Int64*
  %"$gasrem_791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_792" = icmp ugt i64 1, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %"$None_789"
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %"$None_789"
  %"$consume_795" = sub i64 %"$gasrem_791", 1
  store i64 %"$consume_795", i64* @_gasrem, align 8
  %"$$test_15_796" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  store %TName_Bool* %"$$test_15_796", %TName_Bool** %"$test_18", align 8
  br label %"$matchsucc_774"

"$empty_default_778":                             ; preds = %"$have_gas_772"
  br label %"$matchsucc_774"

"$matchsucc_774":                                 ; preds = %"$have_gas_794", %"$have_gas_786", %"$empty_default_778"
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$matchsucc_774"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$matchsucc_774"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$input_19" = alloca %String, align 8
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_800"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_807", i32 0, i32 0), i32 19 }, %String* %"$input_19", align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_805"
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Int64*, align 8
  %"$execptr_load_813" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_19_814" = alloca %String, align 8
  %"$$input_19_815" = load %String, %String* %"$input_19", align 8
  store %String %"$$input_19_815", %String* %"$to_int64_$input_19_814", align 8
  %"$$to_int64_$input_19_814_816" = bitcast %String* %"$to_int64_$input_19_814" to i8*
  %"$to_int64_call_817" = call i8* @_to_int64(i8* %"$execptr_load_813", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int64_$input_19_814_816")
  %"$to_int64_818" = bitcast i8* %"$to_int64_call_817" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_818", %TName_Option_Int64** %"$resopt_20", align 8
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_811"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 2, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 2
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$$resopt_20_830" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_20", align 8
  %"$$resopt_20_tag_831" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_20_830", i32 0, i32 0
  %"$$resopt_20_tag_832" = load i8, i8* %"$$resopt_20_tag_831", align 1
  switch i8 %"$$resopt_20_tag_832", label %"$empty_default_833" [
    i8 0, label %"$Some_834"
    i8 1, label %"$None_844"
  ]

"$Some_834":                                      ; preds = %"$have_gas_827"
  %"$$resopt_20_835" = bitcast %TName_Option_Int64* %"$$resopt_20_830" to %CName_Some_Int64*
  %"$$$resopt_20_47_gep_836" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_20_835", i32 0, i32 1
  %"$$$resopt_20_47_load_837" = load %Int64, %Int64* %"$$$resopt_20_47_gep_836", align 8
  %"$$resopt_20_47" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_20_47_load_837", %Int64* %"$$resopt_20_47", align 8
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$Some_834"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$Some_834"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$false_843" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_843", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_829"

"$None_844":                                      ; preds = %"$have_gas_827"
  %"$$resopt_20_845" = bitcast %TName_Option_Int64* %"$$resopt_20_830" to %CName_None_Int64*
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$None_844"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$None_844"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$$test_18_851" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  store %TName_Bool* %"$$test_18_851", %TName_Bool** %"$test_21", align 8
  br label %"$matchsucc_829"

"$empty_default_833":                             ; preds = %"$have_gas_827"
  br label %"$matchsucc_829"

"$matchsucc_829":                                 ; preds = %"$have_gas_849", %"$have_gas_841", %"$empty_default_833"
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$matchsucc_829"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$matchsucc_829"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_855"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_22", align 8
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$have_gas_860"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Int64*, align 8
  %"$execptr_load_867" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_22_868" = alloca %Uint64, align 8
  %"$$input_22_869" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_869", %Uint64* %"$to_int64_$input_22_868", align 8
  %"$$to_int64_$input_22_868_870" = bitcast %Uint64* %"$to_int64_$input_22_868" to i8*
  %"$to_int64_call_871" = call i8* @_to_int64(i8* %"$execptr_load_867", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", i8* %"$$to_int64_$input_22_868_870")
  %"$to_int64_872" = bitcast i8* %"$to_int64_call_871" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_872", %TName_Option_Int64** %"$resopt_23", align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_865"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 2, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_876"
  %"$consume_882" = sub i64 %"$gasrem_878", 2
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$$resopt_23_884" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_23", align 8
  %"$$resopt_23_tag_885" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_23_884", i32 0, i32 0
  %"$$resopt_23_tag_886" = load i8, i8* %"$$resopt_23_tag_885", align 1
  switch i8 %"$$resopt_23_tag_886", label %"$empty_default_887" [
    i8 0, label %"$Some_888"
    i8 1, label %"$None_928"
  ]

"$Some_888":                                      ; preds = %"$have_gas_881"
  %"$$resopt_23_889" = bitcast %TName_Option_Int64* %"$$resopt_23_884" to %CName_Some_Int64*
  %"$res_gep_890" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_23_889", i32 0, i32 1
  %"$res_load_891" = load %Int64, %Int64* %"$res_gep_890", align 8
  %res16 = alloca %Int64, align 8
  store %Int64 %"$res_load_891", %Int64* %res16, align 8
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$Some_888"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$Some_888"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %input_17 = alloca %Int64, align 8
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_895"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %input_17, align 8
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_900"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  %"$execptr_load_907" = load i8*, i8** @_execptr, align 8
  %"$res_908" = load %Int64, %Int64* %res16, align 8
  %"$input__909" = load %Int64, %Int64* %input_17, align 8
  %"$eq_call_910" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_907", %Int64 %"$res_908", %Int64 %"$input__909")
  store %TName_Bool* %"$eq_call_910", %TName_Bool** %test_18, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_905"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_917" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_918" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_917", 0
  %"$BoolUtils.andb_envptr_919" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_917", 1
  %"$$test_21_920" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  %"$BoolUtils.andb_call_921" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_918"(i8* %"$BoolUtils.andb_envptr_919", %TName_Bool* %"$$test_21_920")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_921", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_922" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_923" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_922", 0
  %"$$BoolUtils.andb_61_envptr_924" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_922", 1
  %"$test__925" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_61_call_926" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_923"(i8* %"$$BoolUtils.andb_61_envptr_924", %TName_Bool* %"$test__925")
  store %TName_Bool* %"$$BoolUtils.andb_61_call_926", %TName_Bool** %"$BoolUtils.andb_62", align 8
  %"$$BoolUtils.andb_62_927" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_927", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_883"

"$None_928":                                      ; preds = %"$have_gas_881"
  %"$$resopt_23_929" = bitcast %TName_Option_Int64* %"$$resopt_23_884" to %CName_None_Int64*
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$None_928"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$None_928"
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$false_935" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_935", %TName_Bool** %"$test_24", align 8
  br label %"$matchsucc_883"

"$empty_default_887":                             ; preds = %"$have_gas_881"
  br label %"$matchsucc_883"

"$matchsucc_883":                                 ; preds = %"$have_gas_933", %"$have_gas_915", %"$empty_default_887"
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$matchsucc_883"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$matchsucc_883"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$input_25" = alloca %Int128, align 8
  %"$gasrem_941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_942" = icmp ugt i64 1, %"$gasrem_941"
  br i1 %"$gascmp_942", label %"$out_of_gas_943", label %"$have_gas_944"

"$out_of_gas_943":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_944"

"$have_gas_944":                                  ; preds = %"$out_of_gas_943", %"$have_gas_939"
  %"$consume_945" = sub i64 %"$gasrem_941", 1
  store i64 %"$consume_945", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775808 }, %Int128* %"$input_25", align 8
  %"$gasrem_946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_947" = icmp ugt i64 1, %"$gasrem_946"
  br i1 %"$gascmp_947", label %"$out_of_gas_948", label %"$have_gas_949"

"$out_of_gas_948":                                ; preds = %"$have_gas_944"
  call void @_out_of_gas()
  br label %"$have_gas_949"

"$have_gas_949":                                  ; preds = %"$out_of_gas_948", %"$have_gas_944"
  %"$consume_950" = sub i64 %"$gasrem_946", 1
  store i64 %"$consume_950", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Int64*, align 8
  %"$execptr_load_951" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_25_952" = alloca %Int128, align 8
  %"$$input_25_953" = load %Int128, %Int128* %"$input_25", align 8
  store %Int128 %"$$input_25_953", %Int128* %"$to_int64_$input_25_952", align 8
  %"$$to_int64_$input_25_952_954" = bitcast %Int128* %"$to_int64_$input_25_952" to i8*
  %"$to_int64_call_955" = call i8* @_to_int64(i8* %"$execptr_load_951", %_TyDescrTy_Typ* @"$TyDescr_Int128_90", i8* %"$$to_int64_$input_25_952_954")
  %"$to_int64_956" = bitcast i8* %"$to_int64_call_955" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_956", %TName_Option_Int64** %"$resopt_26", align 8
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_949"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_949"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  %"$gasrem_962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_963" = icmp ugt i64 2, %"$gasrem_962"
  br i1 %"$gascmp_963", label %"$out_of_gas_964", label %"$have_gas_965"

"$out_of_gas_964":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_965"

"$have_gas_965":                                  ; preds = %"$out_of_gas_964", %"$have_gas_960"
  %"$consume_966" = sub i64 %"$gasrem_962", 2
  store i64 %"$consume_966", i64* @_gasrem, align 8
  %"$$resopt_26_968" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_26", align 8
  %"$$resopt_26_tag_969" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_26_968", i32 0, i32 0
  %"$$resopt_26_tag_970" = load i8, i8* %"$$resopt_26_tag_969", align 1
  switch i8 %"$$resopt_26_tag_970", label %"$empty_default_971" [
    i8 0, label %"$Some_972"
    i8 1, label %"$None_1012"
  ]

"$Some_972":                                      ; preds = %"$have_gas_965"
  %"$$resopt_26_973" = bitcast %TName_Option_Int64* %"$$resopt_26_968" to %CName_Some_Int64*
  %"$res_gep_974" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_26_973", i32 0, i32 1
  %"$res_load_975" = load %Int64, %Int64* %"$res_gep_974", align 8
  %res19 = alloca %Int64, align 8
  store %Int64 %"$res_load_975", %Int64* %res19, align 8
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$Some_972"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$Some_972"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %input_20 = alloca %Int64, align 8
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_979"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_20, align 8
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 1, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_984"
  %"$consume_990" = sub i64 %"$gasrem_986", 1
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  %"$execptr_load_991" = load i8*, i8** @_execptr, align 8
  %"$res_992" = load %Int64, %Int64* %res19, align 8
  %"$input__993" = load %Int64, %Int64* %input_20, align 8
  %"$eq_call_994" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_991", %Int64 %"$res_992", %Int64 %"$input__993")
  store %TName_Bool* %"$eq_call_994", %TName_Bool** %test_21, align 8
  %"$gasrem_996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_997" = icmp ugt i64 1, %"$gasrem_996"
  br i1 %"$gascmp_997", label %"$out_of_gas_998", label %"$have_gas_999"

"$out_of_gas_998":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_999"

"$have_gas_999":                                  ; preds = %"$out_of_gas_998", %"$have_gas_989"
  %"$consume_1000" = sub i64 %"$gasrem_996", 1
  store i64 %"$consume_1000", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1001" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1002" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1001", 0
  %"$BoolUtils.andb_envptr_1003" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1001", 1
  %"$$test_24_1004" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_1005" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1002"(i8* %"$BoolUtils.andb_envptr_1003", %TName_Bool* %"$$test_24_1004")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1005", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_1006" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_1007" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_1006", 0
  %"$$BoolUtils.andb_63_envptr_1008" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_1006", 1
  %"$test__1009" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_63_call_1010" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_1007"(i8* %"$$BoolUtils.andb_63_envptr_1008", %TName_Bool* %"$test__1009")
  store %TName_Bool* %"$$BoolUtils.andb_63_call_1010", %TName_Bool** %"$BoolUtils.andb_64", align 8
  %"$$BoolUtils.andb_64_1011" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_1011", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_967"

"$None_1012":                                     ; preds = %"$have_gas_965"
  %"$$resopt_26_1013" = bitcast %TName_Option_Int64* %"$$resopt_26_968" to %CName_None_Int64*
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$None_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$None_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$false_1019" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1019", %TName_Bool** %"$test_27", align 8
  br label %"$matchsucc_967"

"$empty_default_971":                             ; preds = %"$have_gas_965"
  br label %"$matchsucc_967"

"$matchsucc_967":                                 ; preds = %"$have_gas_1017", %"$have_gas_999", %"$empty_default_971"
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$matchsucc_967"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$matchsucc_967"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$input_28" = alloca %String, align 8
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 1, %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1023"
  %"$consume_1029" = sub i64 %"$gasrem_1025", 1
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$stringlit_1030", i32 0, i32 0), i32 20 }, %String* %"$input_28", align 8
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1028"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1028"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Int64*, align 8
  %"$execptr_load_1036" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_28_1037" = alloca %String, align 8
  %"$$input_28_1038" = load %String, %String* %"$input_28", align 8
  store %String %"$$input_28_1038", %String* %"$to_int64_$input_28_1037", align 8
  %"$$to_int64_$input_28_1037_1039" = bitcast %String* %"$to_int64_$input_28_1037" to i8*
  %"$to_int64_call_1040" = call i8* @_to_int64(i8* %"$execptr_load_1036", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int64_$input_28_1037_1039")
  %"$to_int64_1041" = bitcast i8* %"$to_int64_call_1040" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1041", %TName_Option_Int64** %"$resopt_29", align 8
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1034"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 2, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 2
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$$resopt_29_1053" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_29", align 8
  %"$$resopt_29_tag_1054" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_29_1053", i32 0, i32 0
  %"$$resopt_29_tag_1055" = load i8, i8* %"$$resopt_29_tag_1054", align 1
  switch i8 %"$$resopt_29_tag_1055", label %"$empty_default_1056" [
    i8 0, label %"$Some_1057"
    i8 1, label %"$None_1097"
  ]

"$Some_1057":                                     ; preds = %"$have_gas_1050"
  %"$$resopt_29_1058" = bitcast %TName_Option_Int64* %"$$resopt_29_1053" to %CName_Some_Int64*
  %"$res_gep_1059" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_29_1058", i32 0, i32 1
  %"$res_load_1060" = load %Int64, %Int64* %"$res_gep_1059", align 8
  %res22 = alloca %Int64, align 8
  store %Int64 %"$res_load_1060", %Int64* %res22, align 8
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$Some_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$Some_1057"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  %input_23 = alloca %Int64, align 8
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1064"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_23, align 8
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  %"$execptr_load_1076" = load i8*, i8** @_execptr, align 8
  %"$res_1077" = load %Int64, %Int64* %res22, align 8
  %"$input__1078" = load %Int64, %Int64* %input_23, align 8
  %"$eq_call_1079" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1076", %Int64 %"$res_1077", %Int64 %"$input__1078")
  store %TName_Bool* %"$eq_call_1079", %TName_Bool** %test_24, align 8
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1074"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1086" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1087" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1086", 0
  %"$BoolUtils.andb_envptr_1088" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1086", 1
  %"$$test_27_1089" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1090" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1087"(i8* %"$BoolUtils.andb_envptr_1088", %TName_Bool* %"$$test_27_1089")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1090", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_1091" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_1092" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_1091", 0
  %"$$BoolUtils.andb_65_envptr_1093" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_1091", 1
  %"$test__1094" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_65_call_1095" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_1092"(i8* %"$$BoolUtils.andb_65_envptr_1093", %TName_Bool* %"$test__1094")
  store %TName_Bool* %"$$BoolUtils.andb_65_call_1095", %TName_Bool** %"$BoolUtils.andb_66", align 8
  %"$$BoolUtils.andb_66_1096" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_1096", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_1052"

"$None_1097":                                     ; preds = %"$have_gas_1050"
  %"$$resopt_29_1098" = bitcast %TName_Option_Int64* %"$$resopt_29_1053" to %CName_None_Int64*
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$None_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$None_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %"$false_1104" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1104", %TName_Bool** %"$test_30", align 8
  br label %"$matchsucc_1052"

"$empty_default_1056":                            ; preds = %"$have_gas_1050"
  br label %"$matchsucc_1052"

"$matchsucc_1052":                                ; preds = %"$have_gas_1102", %"$have_gas_1084", %"$empty_default_1056"
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$matchsucc_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$matchsucc_1052"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  %"$input_31" = alloca %Uint64, align 8
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1108"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_31", align 8
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1113"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Int256*, align 8
  %"$execptr_load_1120" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_31_1121" = alloca %Uint64, align 8
  %"$$input_31_1122" = load %Uint64, %Uint64* %"$input_31", align 8
  store %Uint64 %"$$input_31_1122", %Uint64* %"$to_int256_$input_31_1121", align 8
  %"$$to_int256_$input_31_1121_1123" = bitcast %Uint64* %"$to_int256_$input_31_1121" to i8*
  %"$to_int256_call_1124" = call i8* @_to_int256(i8* %"$execptr_load_1120", %_TyDescrTy_Typ* @"$TyDescr_Uint64_88", i8* %"$$to_int256_$input_31_1121_1123")
  %"$to_int256_1125" = bitcast i8* %"$to_int256_call_1124" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1125", %TName_Option_Int256** %"$resopt_32", align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1118"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 2, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1129"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 2
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %"$$resopt_32_1137" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_32", align 8
  %"$$resopt_32_tag_1138" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_32_1137", i32 0, i32 0
  %"$$resopt_32_tag_1139" = load i8, i8* %"$$resopt_32_tag_1138", align 1
  switch i8 %"$$resopt_32_tag_1139", label %"$empty_default_1140" [
    i8 0, label %"$Some_1141"
    i8 1, label %"$None_1183"
  ]

"$Some_1141":                                     ; preds = %"$have_gas_1134"
  %"$$resopt_32_1142" = bitcast %TName_Option_Int256* %"$$resopt_32_1137" to %CName_Some_Int256*
  %"$res_gep_1143" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_32_1142", i32 0, i32 1
  %"$res_load_1144" = load %Int256, %Int256* %"$res_gep_1143", align 8
  %res25 = alloca %Int256, align 8
  store %Int256 %"$res_load_1144", %Int256* %res25, align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$Some_1141"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$Some_1141"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  %input_26 = alloca %Int256, align 8
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1148"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_26, align 8
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1153"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  %"$execptr_load_1160" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1161" = alloca %Int256, align 8
  %"$res_1162" = load %Int256, %Int256* %res25, align 8
  store %Int256 %"$res_1162", %Int256* %"$eq_res_1161", align 8
  %"$eq_input__1163" = alloca %Int256, align 8
  %"$input__1164" = load %Int256, %Int256* %input_26, align 8
  store %Int256 %"$input__1164", %Int256* %"$eq_input__1163", align 8
  %"$eq_call_1165" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1160", %Int256* %"$eq_res_1161", %Int256* %"$eq_input__1163")
  store %TName_Bool* %"$eq_call_1165", %TName_Bool** %test_27, align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1158"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1172" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1173" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1172", 0
  %"$BoolUtils.andb_envptr_1174" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1172", 1
  %"$$test_30_1175" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1176" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1173"(i8* %"$BoolUtils.andb_envptr_1174", %TName_Bool* %"$$test_30_1175")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1176", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_1177" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_1178" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1177", 0
  %"$$BoolUtils.andb_67_envptr_1179" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1177", 1
  %"$test__1180" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_67_call_1181" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_1178"(i8* %"$$BoolUtils.andb_67_envptr_1179", %TName_Bool* %"$test__1180")
  store %TName_Bool* %"$$BoolUtils.andb_67_call_1181", %TName_Bool** %"$BoolUtils.andb_68", align 8
  %"$$BoolUtils.andb_68_1182" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_1182", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1136"

"$None_1183":                                     ; preds = %"$have_gas_1134"
  %"$$resopt_32_1184" = bitcast %TName_Option_Int256* %"$$resopt_32_1137" to %CName_None_Int256*
  %"$gasrem_1185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1186" = icmp ugt i64 1, %"$gasrem_1185"
  br i1 %"$gascmp_1186", label %"$out_of_gas_1187", label %"$have_gas_1188"

"$out_of_gas_1187":                               ; preds = %"$None_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1188"

"$have_gas_1188":                                 ; preds = %"$out_of_gas_1187", %"$None_1183"
  %"$consume_1189" = sub i64 %"$gasrem_1185", 1
  store i64 %"$consume_1189", i64* @_gasrem, align 8
  %"$false_1190" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1190", %TName_Bool** %"$test_33", align 8
  br label %"$matchsucc_1136"

"$empty_default_1140":                            ; preds = %"$have_gas_1134"
  br label %"$matchsucc_1136"

"$matchsucc_1136":                                ; preds = %"$have_gas_1188", %"$have_gas_1170", %"$empty_default_1140"
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$matchsucc_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$matchsucc_1136"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %"$input_34" = alloca %String, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1201", i32 0, i32 0), i32 19 }, %String* %"$input_34", align 8
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 1, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1199"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 1
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Int256*, align 8
  %"$execptr_load_1207" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_34_1208" = alloca %String, align 8
  %"$$input_34_1209" = load %String, %String* %"$input_34", align 8
  store %String %"$$input_34_1209", %String* %"$to_int256_$input_34_1208", align 8
  %"$$to_int256_$input_34_1208_1210" = bitcast %String* %"$to_int256_$input_34_1208" to i8*
  %"$to_int256_call_1211" = call i8* @_to_int256(i8* %"$execptr_load_1207", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int256_$input_34_1208_1210")
  %"$to_int256_1212" = bitcast i8* %"$to_int256_call_1211" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1212", %TName_Option_Int256** %"$resopt_35", align 8
  %"$gasrem_1213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1214" = icmp ugt i64 1, %"$gasrem_1213"
  br i1 %"$gascmp_1214", label %"$out_of_gas_1215", label %"$have_gas_1216"

"$out_of_gas_1215":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1216"

"$have_gas_1216":                                 ; preds = %"$out_of_gas_1215", %"$have_gas_1205"
  %"$consume_1217" = sub i64 %"$gasrem_1213", 1
  store i64 %"$consume_1217", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 2, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$have_gas_1216"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$have_gas_1216"
  %"$consume_1222" = sub i64 %"$gasrem_1218", 2
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %"$$resopt_35_1224" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_35", align 8
  %"$$resopt_35_tag_1225" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_35_1224", i32 0, i32 0
  %"$$resopt_35_tag_1226" = load i8, i8* %"$$resopt_35_tag_1225", align 1
  switch i8 %"$$resopt_35_tag_1226", label %"$empty_default_1227" [
    i8 0, label %"$Some_1228"
    i8 1, label %"$None_1270"
  ]

"$Some_1228":                                     ; preds = %"$have_gas_1221"
  %"$$resopt_35_1229" = bitcast %TName_Option_Int256* %"$$resopt_35_1224" to %CName_Some_Int256*
  %"$res_gep_1230" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_35_1229", i32 0, i32 1
  %"$res_load_1231" = load %Int256, %Int256* %"$res_gep_1230", align 8
  %res28 = alloca %Int256, align 8
  store %Int256 %"$res_load_1231", %Int256* %res28, align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$Some_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$Some_1228"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %input_29 = alloca %Int256, align 8
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 1, %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1235"
  %"$consume_1241" = sub i64 %"$gasrem_1237", 1
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_29, align 8
  %"$gasrem_1242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1243" = icmp ugt i64 1, %"$gasrem_1242"
  br i1 %"$gascmp_1243", label %"$out_of_gas_1244", label %"$have_gas_1245"

"$out_of_gas_1244":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1245"

"$have_gas_1245":                                 ; preds = %"$out_of_gas_1244", %"$have_gas_1240"
  %"$consume_1246" = sub i64 %"$gasrem_1242", 1
  store i64 %"$consume_1246", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  %"$execptr_load_1247" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1248" = alloca %Int256, align 8
  %"$res_1249" = load %Int256, %Int256* %res28, align 8
  store %Int256 %"$res_1249", %Int256* %"$eq_res_1248", align 8
  %"$eq_input__1250" = alloca %Int256, align 8
  %"$input__1251" = load %Int256, %Int256* %input_29, align 8
  store %Int256 %"$input__1251", %Int256* %"$eq_input__1250", align 8
  %"$eq_call_1252" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1247", %Int256* %"$eq_res_1248", %Int256* %"$eq_input__1250")
  store %TName_Bool* %"$eq_call_1252", %TName_Bool** %test_30, align 8
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 1, %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1245"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1245"
  %"$consume_1258" = sub i64 %"$gasrem_1254", 1
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1259" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1260" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1259", 0
  %"$BoolUtils.andb_envptr_1261" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1259", 1
  %"$$test_33_1262" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1263" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1260"(i8* %"$BoolUtils.andb_envptr_1261", %TName_Bool* %"$$test_33_1262")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1263", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_1264" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_1265" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1264", 0
  %"$$BoolUtils.andb_69_envptr_1266" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1264", 1
  %"$test__1267" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_69_call_1268" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_1265"(i8* %"$$BoolUtils.andb_69_envptr_1266", %TName_Bool* %"$test__1267")
  store %TName_Bool* %"$$BoolUtils.andb_69_call_1268", %TName_Bool** %"$BoolUtils.andb_70", align 8
  %"$$BoolUtils.andb_70_1269" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_1269", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1223"

"$None_1270":                                     ; preds = %"$have_gas_1221"
  %"$$resopt_35_1271" = bitcast %TName_Option_Int256* %"$$resopt_35_1224" to %CName_None_Int256*
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$None_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$None_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$false_1277" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1277", %TName_Bool** %"$test_36", align 8
  br label %"$matchsucc_1223"

"$empty_default_1227":                            ; preds = %"$have_gas_1221"
  br label %"$matchsucc_1223"

"$matchsucc_1223":                                ; preds = %"$have_gas_1275", %"$have_gas_1257", %"$empty_default_1227"
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$matchsucc_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$matchsucc_1223"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint256, align 8
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1281"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$input_37", align 8
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1286"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1286"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Int256*, align 8
  %"$execptr_load_1293" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_37_1294" = alloca %Uint256, align 8
  %"$$input_37_1295" = load %Uint256, %Uint256* %"$input_37", align 8
  store %Uint256 %"$$input_37_1295", %Uint256* %"$to_int256_$input_37_1294", align 8
  %"$$to_int256_$input_37_1294_1296" = bitcast %Uint256* %"$to_int256_$input_37_1294" to i8*
  %"$to_int256_call_1297" = call i8* @_to_int256(i8* %"$execptr_load_1293", %_TyDescrTy_Typ* @"$TyDescr_Uint256_96", i8* %"$$to_int256_$input_37_1294_1296")
  %"$to_int256_1298" = bitcast i8* %"$to_int256_call_1297" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1298", %TName_Option_Int256** %"$resopt_38", align 8
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 1, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1291"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 1
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 2, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1302"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1302"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 2
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$$resopt_38_1310" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1311" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_38_1310", i32 0, i32 0
  %"$$resopt_38_tag_1312" = load i8, i8* %"$$resopt_38_tag_1311", align 1
  switch i8 %"$$resopt_38_tag_1312", label %"$empty_default_1313" [
    i8 0, label %"$Some_1314"
    i8 1, label %"$None_1356"
  ]

"$Some_1314":                                     ; preds = %"$have_gas_1307"
  %"$$resopt_38_1315" = bitcast %TName_Option_Int256* %"$$resopt_38_1310" to %CName_Some_Int256*
  %"$res_gep_1316" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_38_1315", i32 0, i32 1
  %"$res_load_1317" = load %Int256, %Int256* %"$res_gep_1316", align 8
  %res31 = alloca %Int256, align 8
  store %Int256 %"$res_load_1317", %Int256* %res31, align 8
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$Some_1314"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$Some_1314"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %input_32 = alloca %Int256, align 8
  %"$gasrem_1323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1324" = icmp ugt i64 1, %"$gasrem_1323"
  br i1 %"$gascmp_1324", label %"$out_of_gas_1325", label %"$have_gas_1326"

"$out_of_gas_1325":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1326"

"$have_gas_1326":                                 ; preds = %"$out_of_gas_1325", %"$have_gas_1321"
  %"$consume_1327" = sub i64 %"$gasrem_1323", 1
  store i64 %"$consume_1327", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_32, align 8
  %"$gasrem_1328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1329" = icmp ugt i64 1, %"$gasrem_1328"
  br i1 %"$gascmp_1329", label %"$out_of_gas_1330", label %"$have_gas_1331"

"$out_of_gas_1330":                               ; preds = %"$have_gas_1326"
  call void @_out_of_gas()
  br label %"$have_gas_1331"

"$have_gas_1331":                                 ; preds = %"$out_of_gas_1330", %"$have_gas_1326"
  %"$consume_1332" = sub i64 %"$gasrem_1328", 1
  store i64 %"$consume_1332", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  %"$execptr_load_1333" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1334" = alloca %Int256, align 8
  %"$res_1335" = load %Int256, %Int256* %res31, align 8
  store %Int256 %"$res_1335", %Int256* %"$eq_res_1334", align 8
  %"$eq_input__1336" = alloca %Int256, align 8
  %"$input__1337" = load %Int256, %Int256* %input_32, align 8
  store %Int256 %"$input__1337", %Int256* %"$eq_input__1336", align 8
  %"$eq_call_1338" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1333", %Int256* %"$eq_res_1334", %Int256* %"$eq_input__1336")
  store %TName_Bool* %"$eq_call_1338", %TName_Bool** %test_33, align 8
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 1, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1331"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1331"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 1
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1345" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1346" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1345", 0
  %"$BoolUtils.andb_envptr_1347" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1345", 1
  %"$$test_36_1348" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1349" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1346"(i8* %"$BoolUtils.andb_envptr_1347", %TName_Bool* %"$$test_36_1348")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1349", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_1350" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_1351" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1350", 0
  %"$$BoolUtils.andb_71_envptr_1352" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1350", 1
  %"$test__1353" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_71_call_1354" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_1351"(i8* %"$$BoolUtils.andb_71_envptr_1352", %TName_Bool* %"$test__1353")
  store %TName_Bool* %"$$BoolUtils.andb_71_call_1354", %TName_Bool** %"$BoolUtils.andb_72", align 8
  %"$$BoolUtils.andb_72_1355" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_1355", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1309"

"$None_1356":                                     ; preds = %"$have_gas_1307"
  %"$$resopt_38_1357" = bitcast %TName_Option_Int256* %"$$resopt_38_1310" to %CName_None_Int256*
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$None_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$None_1356"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %"$false_1363" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1363", %TName_Bool** %"$test_39", align 8
  br label %"$matchsucc_1309"

"$empty_default_1313":                            ; preds = %"$have_gas_1307"
  br label %"$matchsucc_1309"

"$matchsucc_1309":                                ; preds = %"$have_gas_1361", %"$have_gas_1343", %"$empty_default_1313"
  %"$gasrem_1364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1365" = icmp ugt i64 1, %"$gasrem_1364"
  br i1 %"$gascmp_1365", label %"$out_of_gas_1366", label %"$have_gas_1367"

"$out_of_gas_1366":                               ; preds = %"$matchsucc_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1367"

"$have_gas_1367":                                 ; preds = %"$out_of_gas_1366", %"$matchsucc_1309"
  %"$consume_1368" = sub i64 %"$gasrem_1364", 1
  store i64 %"$consume_1368", i64* @_gasrem, align 8
  %"$input_40" = alloca %String, align 8
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 1, %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1367"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1367"
  %"$consume_1373" = sub i64 %"$gasrem_1369", 1
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1374", i32 0, i32 0), i32 77 }, %String* %"$input_40", align 8
  %"$gasrem_1375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1376" = icmp ugt i64 1, %"$gasrem_1375"
  br i1 %"$gascmp_1376", label %"$out_of_gas_1377", label %"$have_gas_1378"

"$out_of_gas_1377":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1378"

"$have_gas_1378":                                 ; preds = %"$out_of_gas_1377", %"$have_gas_1372"
  %"$consume_1379" = sub i64 %"$gasrem_1375", 1
  store i64 %"$consume_1379", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Int256*, align 8
  %"$execptr_load_1380" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_40_1381" = alloca %String, align 8
  %"$$input_40_1382" = load %String, %String* %"$input_40", align 8
  store %String %"$$input_40_1382", %String* %"$to_int256_$input_40_1381", align 8
  %"$$to_int256_$input_40_1381_1383" = bitcast %String* %"$to_int256_$input_40_1381" to i8*
  %"$to_int256_call_1384" = call i8* @_to_int256(i8* %"$execptr_load_1380", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int256_$input_40_1381_1383")
  %"$to_int256_1385" = bitcast i8* %"$to_int256_call_1384" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1385", %TName_Option_Int256** %"$resopt_41", align 8
  %"$gasrem_1386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1387" = icmp ugt i64 1, %"$gasrem_1386"
  br i1 %"$gascmp_1387", label %"$out_of_gas_1388", label %"$have_gas_1389"

"$out_of_gas_1388":                               ; preds = %"$have_gas_1378"
  call void @_out_of_gas()
  br label %"$have_gas_1389"

"$have_gas_1389":                                 ; preds = %"$out_of_gas_1388", %"$have_gas_1378"
  %"$consume_1390" = sub i64 %"$gasrem_1386", 1
  store i64 %"$consume_1390", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1392" = icmp ugt i64 2, %"$gasrem_1391"
  br i1 %"$gascmp_1392", label %"$out_of_gas_1393", label %"$have_gas_1394"

"$out_of_gas_1393":                               ; preds = %"$have_gas_1389"
  call void @_out_of_gas()
  br label %"$have_gas_1394"

"$have_gas_1394":                                 ; preds = %"$out_of_gas_1393", %"$have_gas_1389"
  %"$consume_1395" = sub i64 %"$gasrem_1391", 2
  store i64 %"$consume_1395", i64* @_gasrem, align 8
  %"$$resopt_41_1397" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1398" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_41_1397", i32 0, i32 0
  %"$$resopt_41_tag_1399" = load i8, i8* %"$$resopt_41_tag_1398", align 1
  switch i8 %"$$resopt_41_tag_1399", label %"$empty_default_1400" [
    i8 0, label %"$Some_1401"
    i8 1, label %"$None_1443"
  ]

"$Some_1401":                                     ; preds = %"$have_gas_1394"
  %"$$resopt_41_1402" = bitcast %TName_Option_Int256* %"$$resopt_41_1397" to %CName_Some_Int256*
  %"$res_gep_1403" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_41_1402", i32 0, i32 1
  %"$res_load_1404" = load %Int256, %Int256* %"$res_gep_1403", align 8
  %res34 = alloca %Int256, align 8
  store %Int256 %"$res_load_1404", %Int256* %res34, align 8
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$Some_1401"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$Some_1401"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %input_35 = alloca %Int256, align 8
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 1, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1408"
  %"$consume_1414" = sub i64 %"$gasrem_1410", 1
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_35, align 8
  %"$gasrem_1415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1416" = icmp ugt i64 1, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1413"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 1
  store i64 %"$consume_1419", i64* @_gasrem, align 8
  %test_36 = alloca %TName_Bool*, align 8
  %"$execptr_load_1420" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1421" = alloca %Int256, align 8
  %"$res_1422" = load %Int256, %Int256* %res34, align 8
  store %Int256 %"$res_1422", %Int256* %"$eq_res_1421", align 8
  %"$eq_input__1423" = alloca %Int256, align 8
  %"$input__1424" = load %Int256, %Int256* %input_35, align 8
  store %Int256 %"$input__1424", %Int256* %"$eq_input__1423", align 8
  %"$eq_call_1425" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1420", %Int256* %"$eq_res_1421", %Int256* %"$eq_input__1423")
  store %TName_Bool* %"$eq_call_1425", %TName_Bool** %test_36, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1418"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1432" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1433" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1432", 0
  %"$BoolUtils.andb_envptr_1434" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1432", 1
  %"$$test_39_1435" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1436" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1433"(i8* %"$BoolUtils.andb_envptr_1434", %TName_Bool* %"$$test_39_1435")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1436", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_1437" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_1438" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1437", 0
  %"$$BoolUtils.andb_73_envptr_1439" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1437", 1
  %"$test__1440" = load %TName_Bool*, %TName_Bool** %test_36, align 8
  %"$$BoolUtils.andb_73_call_1441" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_1438"(i8* %"$$BoolUtils.andb_73_envptr_1439", %TName_Bool* %"$test__1440")
  store %TName_Bool* %"$$BoolUtils.andb_73_call_1441", %TName_Bool** %"$BoolUtils.andb_74", align 8
  %"$$BoolUtils.andb_74_1442" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_1442", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1396"

"$None_1443":                                     ; preds = %"$have_gas_1394"
  %"$$resopt_41_1444" = bitcast %TName_Option_Int256* %"$$resopt_41_1397" to %CName_None_Int256*
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$None_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$None_1443"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %"$false_1450" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1450", %TName_Bool** %"$test_42", align 8
  br label %"$matchsucc_1396"

"$empty_default_1400":                            ; preds = %"$have_gas_1394"
  br label %"$matchsucc_1396"

"$matchsucc_1396":                                ; preds = %"$have_gas_1448", %"$have_gas_1430", %"$empty_default_1400"
  %"$gasrem_1451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1452" = icmp ugt i64 1, %"$gasrem_1451"
  br i1 %"$gascmp_1452", label %"$out_of_gas_1453", label %"$have_gas_1454"

"$out_of_gas_1453":                               ; preds = %"$matchsucc_1396"
  call void @_out_of_gas()
  br label %"$have_gas_1454"

"$have_gas_1454":                                 ; preds = %"$out_of_gas_1453", %"$matchsucc_1396"
  %"$consume_1455" = sub i64 %"$gasrem_1451", 1
  store i64 %"$consume_1455", i64* @_gasrem, align 8
  %"$input_43" = alloca %String, align 8
  %"$gasrem_1456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1457" = icmp ugt i64 1, %"$gasrem_1456"
  br i1 %"$gascmp_1457", label %"$out_of_gas_1458", label %"$have_gas_1459"

"$out_of_gas_1458":                               ; preds = %"$have_gas_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1459"

"$have_gas_1459":                                 ; preds = %"$out_of_gas_1458", %"$have_gas_1454"
  %"$consume_1460" = sub i64 %"$gasrem_1456", 1
  store i64 %"$consume_1460", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1461", i32 0, i32 0), i32 4 }, %String* %"$input_43", align 8
  %"$gasrem_1462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1463" = icmp ugt i64 1, %"$gasrem_1462"
  br i1 %"$gascmp_1463", label %"$out_of_gas_1464", label %"$have_gas_1465"

"$out_of_gas_1464":                               ; preds = %"$have_gas_1459"
  call void @_out_of_gas()
  br label %"$have_gas_1465"

"$have_gas_1465":                                 ; preds = %"$out_of_gas_1464", %"$have_gas_1459"
  %"$consume_1466" = sub i64 %"$gasrem_1462", 1
  store i64 %"$consume_1466", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Int64*, align 8
  %"$execptr_load_1467" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_43_1468" = alloca %String, align 8
  %"$$input_43_1469" = load %String, %String* %"$input_43", align 8
  store %String %"$$input_43_1469", %String* %"$to_int64_$input_43_1468", align 8
  %"$$to_int64_$input_43_1468_1470" = bitcast %String* %"$to_int64_$input_43_1468" to i8*
  %"$to_int64_call_1471" = call i8* @_to_int64(i8* %"$execptr_load_1467", %_TyDescrTy_Typ* @"$TyDescr_String_98", i8* %"$$to_int64_$input_43_1468_1470")
  %"$to_int64_1472" = bitcast i8* %"$to_int64_call_1471" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1472", %TName_Option_Int64** %"$resopt_44", align 8
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 1, %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$have_gas_1465"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$have_gas_1465"
  %"$consume_1477" = sub i64 %"$gasrem_1473", 1
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 2, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1476"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1476"
  %"$consume_1482" = sub i64 %"$gasrem_1478", 2
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$$resopt_44_1484" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_44", align 8
  %"$$resopt_44_tag_1485" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_44_1484", i32 0, i32 0
  %"$$resopt_44_tag_1486" = load i8, i8* %"$$resopt_44_tag_1485", align 1
  switch i8 %"$$resopt_44_tag_1486", label %"$empty_default_1487" [
    i8 0, label %"$Some_1488"
    i8 1, label %"$None_1498"
  ]

"$Some_1488":                                     ; preds = %"$have_gas_1481"
  %"$$resopt_44_1489" = bitcast %TName_Option_Int64* %"$$resopt_44_1484" to %CName_Some_Int64*
  %"$$$resopt_44_48_gep_1490" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_44_1489", i32 0, i32 1
  %"$$$resopt_44_48_load_1491" = load %Int64, %Int64* %"$$$resopt_44_48_gep_1490", align 8
  %"$$resopt_44_48" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_44_48_load_1491", %Int64* %"$$resopt_44_48", align 8
  %"$gasrem_1492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1493" = icmp ugt i64 1, %"$gasrem_1492"
  br i1 %"$gascmp_1493", label %"$out_of_gas_1494", label %"$have_gas_1495"

"$out_of_gas_1494":                               ; preds = %"$Some_1488"
  call void @_out_of_gas()
  br label %"$have_gas_1495"

"$have_gas_1495":                                 ; preds = %"$out_of_gas_1494", %"$Some_1488"
  %"$consume_1496" = sub i64 %"$gasrem_1492", 1
  store i64 %"$consume_1496", i64* @_gasrem, align 8
  %"$false_1497" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1497", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1483"

"$None_1498":                                     ; preds = %"$have_gas_1481"
  %"$$resopt_44_1499" = bitcast %TName_Option_Int64* %"$$resopt_44_1484" to %CName_None_Int64*
  %"$gasrem_1500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1501" = icmp ugt i64 1, %"$gasrem_1500"
  br i1 %"$gascmp_1501", label %"$out_of_gas_1502", label %"$have_gas_1503"

"$out_of_gas_1502":                               ; preds = %"$None_1498"
  call void @_out_of_gas()
  br label %"$have_gas_1503"

"$have_gas_1503":                                 ; preds = %"$out_of_gas_1502", %"$None_1498"
  %"$consume_1504" = sub i64 %"$gasrem_1500", 1
  store i64 %"$consume_1504", i64* @_gasrem, align 8
  %"$$test_42_1505" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  store %TName_Bool* %"$$test_42_1505", %TName_Bool** %"$test_45", align 8
  br label %"$matchsucc_1483"

"$empty_default_1487":                            ; preds = %"$have_gas_1481"
  br label %"$matchsucc_1483"

"$matchsucc_1483":                                ; preds = %"$have_gas_1503", %"$have_gas_1495", %"$empty_default_1487"
  %"$gasrem_1506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1507" = icmp ugt i64 1, %"$gasrem_1506"
  br i1 %"$gascmp_1507", label %"$out_of_gas_1508", label %"$have_gas_1509"

"$out_of_gas_1508":                               ; preds = %"$matchsucc_1483"
  call void @_out_of_gas()
  br label %"$have_gas_1509"

"$have_gas_1509":                                 ; preds = %"$out_of_gas_1508", %"$matchsucc_1483"
  %"$consume_1510" = sub i64 %"$gasrem_1506", 1
  store i64 %"$consume_1510", i64* @_gasrem, align 8
  %"$$test_45_1511" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  store %TName_Bool* %"$$test_45_1511", %TName_Bool** %"$expr_79", align 8
  %"$$expr_79_1512" = load %TName_Bool*, %TName_Bool** %"$expr_79", align 8
  ret %TName_Bool* %"$$expr_79_1512"
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
  %"$exprval_1513" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1514" = bitcast %TName_Bool* %"$exprval_1513" to i8*
  %"$execptr_load_1515" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1515", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_115", i8* %"$memvoidcast_1514")
  ret void
}
