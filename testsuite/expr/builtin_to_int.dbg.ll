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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_86" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_116" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_115"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_115" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_117"**, %"$TyDescrTy_ADTTyp_116"* }
%"$TyDescrTy_ADTTyp_Constr_117" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1701" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1702" = type { %ParamDescrString, i32, %"$ParamDescr_1701"* }
%"$$fundef_83_env_167" = type { %TName_Bool* }
%"$$fundef_81_env_168" = type {}
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
@"$TyDescr_Bystr_Prim_113" = global %"$TyDescrTy_PrimTyp_86" { i32 7, i32 0 }
@"$TyDescr_Bystr_114" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_86"* @"$TyDescr_Bystr_Prim_113" to i8*) }
@"$TyDescr_ADT_Option_Int256_118" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Option_Int256_ADTTyp_Specl_134" to i8*) }
@"$TyDescr_ADT_Option_Int64_119" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Option_Int64_ADTTyp_Specl_143" to i8*) }
@"$TyDescr_ADT_Option_Int32_120" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Option_Int32_ADTTyp_Specl_152" to i8*) }
@"$TyDescr_ADT_Bool_121" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Bool_ADTTyp_Specl_164" to i8*) }
@"$TyDescr_Option_ADTTyp_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_116" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_154", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_115"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_115"*], [3 x %"$TyDescrTy_ADTTyp_Specl_115"*]* @"$TyDescr_Option_ADTTyp_m_specls_153", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int256_Constr_m_args_126" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_100"]
@"$TyDescr_ADT_Some_127" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int256_ADTTyp_Constr_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_127", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int256_Constr_m_args_126", i32 0, i32 0) }
@"$TyDescr_Option_None_Int256_Constr_m_args_129" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_130" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int256_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_130", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int256_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_132" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_117"*] [%"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Option_Some_Int256_ADTTyp_Constr_128", %"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Option_None_Int256_ADTTyp_Constr_131"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_133" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_100"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_115" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_133", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_117"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_117"*], [2 x %"$TyDescrTy_ADTTyp_Constr_117"*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_132", i32 0, i32 0), %"$TyDescrTy_ADTTyp_116"* @"$TyDescr_Option_ADTTyp_125" }
@"$TyDescr_Option_Some_Int64_Constr_m_args_135" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_92"]
@"$TyDescr_ADT_Some_136" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int64_ADTTyp_Constr_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_136", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int64_Constr_m_args_135", i32 0, i32 0) }
@"$TyDescr_Option_None_Int64_Constr_m_args_138" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_139" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int64_ADTTyp_Constr_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_139", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int64_Constr_m_args_138", i32 0, i32 0) }
@"$TyDescr_Option_Int64_ADTTyp_Specl_m_constrs_141" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_117"*] [%"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Option_Some_Int64_ADTTyp_Constr_137", %"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Option_None_Int64_ADTTyp_Constr_140"]
@"$TyDescr_Option_Int64_ADTTyp_Specl_m_TArgs_142" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_92"]
@"$TyDescr_Option_Int64_ADTTyp_Specl_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_115" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int64_ADTTyp_Specl_m_TArgs_142", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_117"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_117"*], [2 x %"$TyDescrTy_ADTTyp_Constr_117"*]* @"$TyDescr_Option_Int64_ADTTyp_Specl_m_constrs_141", i32 0, i32 0), %"$TyDescrTy_ADTTyp_116"* @"$TyDescr_Option_ADTTyp_125" }
@"$TyDescr_Option_Some_Int32_Constr_m_args_144" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@"$TyDescr_ADT_Some_145" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_145", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_144", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_147" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_148" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_148", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_147", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_150" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_117"*] [%"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_146", %"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_149"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_151" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_115" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_151", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_117"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_117"*], [2 x %"$TyDescrTy_ADTTyp_Constr_117"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_150", i32 0, i32 0), %"$TyDescrTy_ADTTyp_116"* @"$TyDescr_Option_ADTTyp_125" }
@"$TyDescr_Option_ADTTyp_m_specls_153" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_115"*] [%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Option_Int256_ADTTyp_Specl_134", %"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Option_Int64_ADTTyp_Specl_143", %"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Option_Int32_ADTTyp_Specl_152"]
@"$TyDescr_ADT_Option_154" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_116" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_166", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_115"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_115"*], [1 x %"$TyDescrTy_ADTTyp_Specl_115"*]* @"$TyDescr_Bool_ADTTyp_m_specls_165", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_156" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_157" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_157", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_156", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_159" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_160" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_161" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_117" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_160", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_159", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_162" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_117"*] [%"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Bool_True_ADTTyp_Constr_158", %"$TyDescrTy_ADTTyp_Constr_117"* @"$TyDescr_Bool_False_ADTTyp_Constr_161"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_163" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_164" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_115" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_163", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_117"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_117"*], [2 x %"$TyDescrTy_ADTTyp_Constr_117"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_162", i32 0, i32 0), %"$TyDescrTy_ADTTyp_116"* @"$TyDescr_Bool_ADTTyp_155" }
@"$TyDescr_Bool_ADTTyp_m_specls_165" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_115"*] [%"$TyDescrTy_ADTTyp_Specl_115"* @"$TyDescr_Bool_ADTTyp_Specl_164"]
@"$TyDescr_ADT_Bool_166" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_472" = unnamed_addr constant [4 x i8] c"1844"
@"$stringlit_908" = unnamed_addr constant [19 x i8] c"9223372036854775808"
@"$stringlit_1156" = unnamed_addr constant [20 x i8] c"-9223372036854775808"
@"$stringlit_1348" = unnamed_addr constant [19 x i8] c"9223372036854775807"
@"$stringlit_1543" = unnamed_addr constant [77 x i8] c"57896044618658097711785492504343953926634992332820282019728792003956564819967"
@"$stringlit_1641" = unnamed_addr constant [4 x i8] c"abcd"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_118", %_TyDescrTy_Typ* @"$TyDescr_Event_110", %_TyDescrTy_Typ* @"$TyDescr_Int64_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_121", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int64_119", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", %_TyDescrTy_Typ* @"$TyDescr_Bnum_106", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_120", %_TyDescrTy_Typ* @"$TyDescr_Exception_112", %_TyDescrTy_Typ* @"$TyDescr_String_104", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", %_TyDescrTy_Typ* @"$TyDescr_Bystr_114", %_TyDescrTy_Typ* @"$TyDescr_Message_108", %_TyDescrTy_Typ* @"$TyDescr_Int32_88"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1701"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1702"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_167"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_83_env_b_180" = getelementptr inbounds %"$$fundef_83_env_167", %"$$fundef_83_env_167"* %0, i32 0, i32 0
  %"$b_envload_181" = load %TName_Bool*, %TName_Bool** %"$$fundef_83_env_b_180", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_181", %TName_Bool** %b, align 8
  %"$retval_84" = alloca %TName_Bool*, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 2, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 2
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$b_188" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_189" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_188", i32 0, i32 0
  %"$b_tag_190" = load i8, i8* %"$b_tag_189", align 1
  switch i8 %"$b_tag_190", label %"$empty_default_191" [
    i8 1, label %"$False_192"
    i8 0, label %"$True_202"
  ], !dbg !9

"$False_192":                                     ; preds = %"$have_gas_185"
  %"$b_193" = bitcast %TName_Bool* %"$b_188" to %CName_False*
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$False_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$False_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$adtval_199_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_199_salloc" = call i8* @_salloc(i8* %"$adtval_199_load", i64 1)
  %"$adtval_199" = bitcast i8* %"$adtval_199_salloc" to %CName_False*
  %"$adtgep_200" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_199", i32 0, i32 0
  store i8 1, i8* %"$adtgep_200", align 1
  %"$adtptr_201" = bitcast %CName_False* %"$adtval_199" to %TName_Bool*
  store %TName_Bool* %"$adtptr_201", %TName_Bool** %"$retval_84", align 8, !dbg !10
  br label %"$matchsucc_187"

"$True_202":                                      ; preds = %"$have_gas_185"
  %"$b_203" = bitcast %TName_Bool* %"$b_188" to %CName_True*
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$True_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$True_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_84", align 8, !dbg !13
  br label %"$matchsucc_187"

"$empty_default_191":                             ; preds = %"$have_gas_185"
  br label %"$matchsucc_187"

"$matchsucc_187":                                 ; preds = %"$have_gas_207", %"$have_gas_197", %"$empty_default_191"
  %"$$retval_84_209" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_209"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_168"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_82" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %entry
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$$fundef_83_envp_174_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_174_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_174_load", i64 8)
  %"$$fundef_83_envp_174" = bitcast i8* %"$$fundef_83_envp_174_salloc" to %"$$fundef_83_env_167"*
  %"$$fundef_83_env_voidp_176" = bitcast %"$$fundef_83_env_167"* %"$$fundef_83_envp_174" to i8*
  %"$$fundef_83_cloval_177" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_83_env_167"*, %TName_Bool*)* @"$fundef_83" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_176", 1
  %"$$fundef_83_env_b_178" = getelementptr inbounds %"$$fundef_83_env_167", %"$$fundef_83_env_167"* %"$$fundef_83_envp_174", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_83_env_b_178", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_83_cloval_177", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8, !dbg !16
  %"$$retval_82_179" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_82_179"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 5, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %entry
  %"$consume_214" = sub i64 %"$gasrem_210", 5
  store i64 %"$consume_214", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !19
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 7, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 7
  store i64 %"$consume_219", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !19
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_81_env_168"*, %TName_Bool*)* @"$fundef_81" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !20
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 196, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_223"
  %"$consume_232" = sub i64 %"$gasrem_228", 196
  store i64 %"$consume_232", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !19
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 20, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 20
  store i64 %"$consume_237", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !19
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 12, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 12
  store i64 %"$consume_242", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !19
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 2, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 2
  store i64 %"$consume_247", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_85" = alloca %TName_Bool*, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %entry
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %false = alloca %TName_Bool*, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$adtval_258_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_258_salloc" = call i8* @_salloc(i8* %"$adtval_258_load", i64 1)
  %"$adtval_258" = bitcast i8* %"$adtval_258_salloc" to %CName_False*
  %"$adtgep_259" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_258", i32 0, i32 0
  store i8 1, i8* %"$adtgep_259", align 1
  %"$adtptr_260" = bitcast %CName_False* %"$adtval_258" to %TName_Bool*
  store %TName_Bool* %"$adtptr_260", %TName_Bool** %false, align 8, !dbg !22
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_256"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$adtval_271_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_271_salloc" = call i8* @_salloc(i8* %"$adtval_271_load", i64 1)
  %"$adtval_271" = bitcast i8* %"$adtval_271_salloc" to %CName_True*
  %"$adtgep_272" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_271", i32 0, i32 0
  store i8 0, i8* %"$adtgep_272", align 1
  %"$adtptr_273" = bitcast %CName_True* %"$adtval_271" to %TName_Bool*
  store %TName_Bool* %"$adtptr_273", %TName_Bool** %test, align 8, !dbg !23
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_269"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %input = alloca %Uint32, align 8
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %input, align 4, !dbg !24
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %resopt = alloca %TName_Option_Int32*, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 4, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 4
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$execptr_load_294" = load i8*, i8** @_execptr, align 8
  %"$to_int32_input_295" = alloca %Uint32, align 8
  %"$input_296" = load %Uint32, %Uint32* %input, align 4
  store %Uint32 %"$input_296", %Uint32* %"$to_int32_input_295", align 4
  %"$$to_int32_input_295_297" = bitcast %Uint32* %"$to_int32_input_295" to i8*
  %"$to_int32_call_298" = call i8* @_to_int32(i8* %"$execptr_load_294", %_TyDescrTy_Typ* @"$TyDescr_Uint32_90", i8* %"$$to_int32_input_295_297"), !dbg !25
  %"$to_int32_299" = bitcast i8* %"$to_int32_call_298" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_299", %TName_Option_Int32** %resopt, align 8, !dbg !25
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_292"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 2, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 2
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$resopt_311" = load %TName_Option_Int32*, %TName_Option_Int32** %resopt, align 8
  %"$resopt_tag_312" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$resopt_311", i32 0, i32 0
  %"$resopt_tag_313" = load i8, i8* %"$resopt_tag_312", align 1
  switch i8 %"$resopt_tag_313", label %"$empty_default_314" [
    i8 0, label %"$Some_315"
    i8 1, label %"$None_360"
  ], !dbg !26

"$Some_315":                                      ; preds = %"$have_gas_308"
  %"$resopt_316" = bitcast %TName_Option_Int32* %"$resopt_311" to %CName_Some_Int32*
  %"$res_gep_317" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$resopt_316", i32 0, i32 1
  %"$res_load_318" = load %Int32, %Int32* %"$res_gep_317", align 4
  %res = alloca %Int32, align 8
  store %Int32 %"$res_load_318", %Int32* %res, align 4
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$Some_315"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$Some_315"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %input_ = alloca %Int32, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_, align 4, !dbg !27
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 4, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 4
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$execptr_load_339" = load i8*, i8** @_execptr, align 8
  %"$res_340" = load %Int32, %Int32* %res, align 4
  %"$input__341" = load %Int32, %Int32* %input_, align 4
  %"$eq_call_342" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_339", %Int32 %"$res_340", %Int32 %"$input__341"), !dbg !30
  store %TName_Bool* %"$eq_call_342", %TName_Bool** %test_, align 8, !dbg !30
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_337"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$BoolUtils.andb_55" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_349" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_350" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_349", 0
  %"$BoolUtils.andb_envptr_351" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_349", 1
  %"$test_352" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_353" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_350"(i8* %"$BoolUtils.andb_envptr_351", %TName_Bool* %"$test_352"), !dbg !31
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_353", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8, !dbg !31
  %"$BoolUtils.andb_56" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_55_354" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_55", align 8
  %"$$BoolUtils.andb_55_fptr_355" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_354", 0
  %"$$BoolUtils.andb_55_envptr_356" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_55_354", 1
  %"$test__357" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_55_call_358" = call %TName_Bool* %"$$BoolUtils.andb_55_fptr_355"(i8* %"$$BoolUtils.andb_55_envptr_356", %TName_Bool* %"$test__357"), !dbg !31
  store %TName_Bool* %"$$BoolUtils.andb_55_call_358", %TName_Bool** %"$BoolUtils.andb_56", align 8, !dbg !31
  %"$$BoolUtils.andb_56_359" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_56", align 8
  store %TName_Bool* %"$$BoolUtils.andb_56_359", %TName_Bool** %"$test_6", align 8, !dbg !31
  br label %"$matchsucc_310"

"$None_360":                                      ; preds = %"$have_gas_308"
  %"$resopt_361" = bitcast %TName_Option_Int32* %"$resopt_311" to %CName_None_Int32*
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$None_360"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$None_360"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$false_367" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_367", %TName_Bool** %"$test_6", align 8, !dbg !32
  br label %"$matchsucc_310"

"$empty_default_314":                             ; preds = %"$have_gas_308"
  br label %"$matchsucc_310"

"$matchsucc_310":                                 ; preds = %"$have_gas_365", %"$have_gas_347", %"$empty_default_314"
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$matchsucc_310"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$matchsucc_310"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$input_7" = alloca %Int32, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$input_7", align 4, !dbg !34
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %"$resopt_8" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 4, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 4
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_7_389" = alloca %Int32, align 8
  %"$$input_7_390" = load %Int32, %Int32* %"$input_7", align 4
  store %Int32 %"$$input_7_390", %Int32* %"$to_int32_$input_7_389", align 4
  %"$$to_int32_$input_7_389_391" = bitcast %Int32* %"$to_int32_$input_7_389" to i8*
  %"$to_int32_call_392" = call i8* @_to_int32(i8* %"$execptr_load_388", %_TyDescrTy_Typ* @"$TyDescr_Int32_88", i8* %"$$to_int32_$input_7_389_391"), !dbg !35
  %"$to_int32_393" = bitcast i8* %"$to_int32_call_392" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_393", %TName_Option_Int32** %"$resopt_8", align 8, !dbg !35
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_386"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$test_9" = alloca %TName_Bool*, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 2, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 2
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$$resopt_8_405" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_8", align 8
  %"$$resopt_8_tag_406" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_8_405", i32 0, i32 0
  %"$$resopt_8_tag_407" = load i8, i8* %"$$resopt_8_tag_406", align 1
  switch i8 %"$$resopt_8_tag_407", label %"$empty_default_408" [
    i8 0, label %"$Some_409"
    i8 1, label %"$None_454"
  ], !dbg !36

"$Some_409":                                      ; preds = %"$have_gas_402"
  %"$$resopt_8_410" = bitcast %TName_Option_Int32* %"$$resopt_8_405" to %CName_Some_Int32*
  %"$res_gep_411" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_8_410", i32 0, i32 1
  %"$res_load_412" = load %Int32, %Int32* %"$res_gep_411", align 4
  %res1 = alloca %Int32, align 8
  store %Int32 %"$res_load_412", %Int32* %res1, align 4
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$Some_409"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$Some_409"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %input_2 = alloca %Int32, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_2, align 4, !dbg !37
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %test_3 = alloca %TName_Bool*, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 4, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 4
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$execptr_load_433" = load i8*, i8** @_execptr, align 8
  %"$res_434" = load %Int32, %Int32* %res1, align 4
  %"$input__435" = load %Int32, %Int32* %input_2, align 4
  %"$eq_call_436" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_433", %Int32 %"$res_434", %Int32 %"$input__435"), !dbg !40
  store %TName_Bool* %"$eq_call_436", %TName_Bool** %test_3, align 8, !dbg !40
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_431"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$BoolUtils.andb_57" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_443" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_444" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_443", 0
  %"$BoolUtils.andb_envptr_445" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_443", 1
  %"$$test_6_446" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_447" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_444"(i8* %"$BoolUtils.andb_envptr_445", %TName_Bool* %"$$test_6_446"), !dbg !41
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_447", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8, !dbg !41
  %"$BoolUtils.andb_58" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_57_448" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_57", align 8
  %"$$BoolUtils.andb_57_fptr_449" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_448", 0
  %"$$BoolUtils.andb_57_envptr_450" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_57_448", 1
  %"$test__451" = load %TName_Bool*, %TName_Bool** %test_3, align 8
  %"$$BoolUtils.andb_57_call_452" = call %TName_Bool* %"$$BoolUtils.andb_57_fptr_449"(i8* %"$$BoolUtils.andb_57_envptr_450", %TName_Bool* %"$test__451"), !dbg !41
  store %TName_Bool* %"$$BoolUtils.andb_57_call_452", %TName_Bool** %"$BoolUtils.andb_58", align 8, !dbg !41
  %"$$BoolUtils.andb_58_453" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_58", align 8
  store %TName_Bool* %"$$BoolUtils.andb_58_453", %TName_Bool** %"$test_9", align 8, !dbg !41
  br label %"$matchsucc_404"

"$None_454":                                      ; preds = %"$have_gas_402"
  %"$$resopt_8_455" = bitcast %TName_Option_Int32* %"$$resopt_8_405" to %CName_None_Int32*
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$None_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$None_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$false_461" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_461", %TName_Bool** %"$test_9", align 8, !dbg !42
  br label %"$matchsucc_404"

"$empty_default_408":                             ; preds = %"$have_gas_402"
  br label %"$matchsucc_404"

"$matchsucc_404":                                 ; preds = %"$have_gas_459", %"$have_gas_441", %"$empty_default_408"
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$matchsucc_404"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$matchsucc_404"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$input_10" = alloca %String, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_472", i32 0, i32 0), i32 4 }, %String* %"$input_10", align 8, !dbg !44
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_470"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$resopt_11" = alloca %TName_Option_Int32*, align 8
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
  %"$to_int32_$input_10_484" = alloca %String, align 8
  %"$$input_10_485" = load %String, %String* %"$input_10", align 8
  store %String %"$$input_10_485", %String* %"$to_int32_$input_10_484", align 8
  %"$$to_int32_$input_10_484_486" = bitcast %String* %"$to_int32_$input_10_484" to i8*
  %"$to_int32_call_487" = call i8* @_to_int32(i8* %"$execptr_load_483", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int32_$input_10_484_486"), !dbg !45
  %"$to_int32_488" = bitcast i8* %"$to_int32_call_487" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_488", %TName_Option_Int32** %"$resopt_11", align 8, !dbg !45
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_481"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 2, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 2
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$$resopt_11_500" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_11", align 8
  %"$$resopt_11_tag_501" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_11_500", i32 0, i32 0
  %"$$resopt_11_tag_502" = load i8, i8* %"$$resopt_11_tag_501", align 1
  switch i8 %"$$resopt_11_tag_502", label %"$empty_default_503" [
    i8 0, label %"$Some_504"
    i8 1, label %"$None_549"
  ], !dbg !46

"$Some_504":                                      ; preds = %"$have_gas_497"
  %"$$resopt_11_505" = bitcast %TName_Option_Int32* %"$$resopt_11_500" to %CName_Some_Int32*
  %"$res_gep_506" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_11_505", i32 0, i32 1
  %"$res_load_507" = load %Int32, %Int32* %"$res_gep_506", align 4
  %res4 = alloca %Int32, align 8
  store %Int32 %"$res_load_507", %Int32* %res4, align 4
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$Some_504"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$Some_504"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %input_5 = alloca %Int32, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_5, align 4, !dbg !47
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %test_6 = alloca %TName_Bool*, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 4, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 4
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$execptr_load_528" = load i8*, i8** @_execptr, align 8
  %"$res_529" = load %Int32, %Int32* %res4, align 4
  %"$input__530" = load %Int32, %Int32* %input_5, align 4
  %"$eq_call_531" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_528", %Int32 %"$res_529", %Int32 %"$input__530"), !dbg !50
  store %TName_Bool* %"$eq_call_531", %TName_Bool** %test_6, align 8, !dbg !50
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_526"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$BoolUtils.andb_59" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_538" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_539" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_538", 0
  %"$BoolUtils.andb_envptr_540" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_538", 1
  %"$$test_9_541" = load %TName_Bool*, %TName_Bool** %"$test_9", align 8
  %"$BoolUtils.andb_call_542" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_539"(i8* %"$BoolUtils.andb_envptr_540", %TName_Bool* %"$$test_9_541"), !dbg !51
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_542", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8, !dbg !51
  %"$BoolUtils.andb_60" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_59_543" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_59", align 8
  %"$$BoolUtils.andb_59_fptr_544" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_543", 0
  %"$$BoolUtils.andb_59_envptr_545" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_59_543", 1
  %"$test__546" = load %TName_Bool*, %TName_Bool** %test_6, align 8
  %"$$BoolUtils.andb_59_call_547" = call %TName_Bool* %"$$BoolUtils.andb_59_fptr_544"(i8* %"$$BoolUtils.andb_59_envptr_545", %TName_Bool* %"$test__546"), !dbg !51
  store %TName_Bool* %"$$BoolUtils.andb_59_call_547", %TName_Bool** %"$BoolUtils.andb_60", align 8, !dbg !51
  %"$$BoolUtils.andb_60_548" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_60", align 8
  store %TName_Bool* %"$$BoolUtils.andb_60_548", %TName_Bool** %"$test_12", align 8, !dbg !51
  br label %"$matchsucc_499"

"$None_549":                                      ; preds = %"$have_gas_497"
  %"$$resopt_11_550" = bitcast %TName_Option_Int32* %"$$resopt_11_500" to %CName_None_Int32*
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$None_549"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$None_549"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$false_556" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_556", %TName_Bool** %"$test_12", align 8, !dbg !52
  br label %"$matchsucc_499"

"$empty_default_503":                             ; preds = %"$have_gas_497"
  br label %"$matchsucc_499"

"$matchsucc_499":                                 ; preds = %"$have_gas_554", %"$have_gas_536", %"$empty_default_503"
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$matchsucc_499"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$matchsucc_499"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %"$input_13" = alloca %Uint128, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  store %Uint128 { i128 1844 }, %Uint128* %"$input_13", align 8, !dbg !54
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$resopt_14" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 4, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_570"
  %"$consume_576" = sub i64 %"$gasrem_572", 4
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %"$execptr_load_577" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_13_578" = alloca %Uint128, align 8
  %"$$input_13_579" = load %Uint128, %Uint128* %"$input_13", align 8
  store %Uint128 %"$$input_13_579", %Uint128* %"$to_int32_$input_13_578", align 8
  %"$$to_int32_$input_13_578_580" = bitcast %Uint128* %"$to_int32_$input_13_578" to i8*
  %"$to_int32_call_581" = call i8* @_to_int32(i8* %"$execptr_load_577", %_TyDescrTy_Typ* @"$TyDescr_Uint128_98", i8* %"$$to_int32_$input_13_578_580"), !dbg !55
  %"$to_int32_582" = bitcast i8* %"$to_int32_call_581" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_582", %TName_Option_Int32** %"$resopt_14", align 8, !dbg !55
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_575"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$test_15" = alloca %TName_Bool*, align 8
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 2, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 2
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$$resopt_14_594" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_14", align 8
  %"$$resopt_14_tag_595" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_14_594", i32 0, i32 0
  %"$$resopt_14_tag_596" = load i8, i8* %"$$resopt_14_tag_595", align 1
  switch i8 %"$$resopt_14_tag_596", label %"$empty_default_597" [
    i8 0, label %"$Some_598"
    i8 1, label %"$None_643"
  ], !dbg !56

"$Some_598":                                      ; preds = %"$have_gas_591"
  %"$$resopt_14_599" = bitcast %TName_Option_Int32* %"$$resopt_14_594" to %CName_Some_Int32*
  %"$res_gep_600" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_14_599", i32 0, i32 1
  %"$res_load_601" = load %Int32, %Int32* %"$res_gep_600", align 4
  %res7 = alloca %Int32, align 8
  store %Int32 %"$res_load_601", %Int32* %res7, align 4
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$Some_598"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$Some_598"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %input_8 = alloca %Int32, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_605"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_8, align 4, !dbg !57
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_610"
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %test_9 = alloca %TName_Bool*, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 4, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_615"
  %"$consume_621" = sub i64 %"$gasrem_617", 4
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$execptr_load_622" = load i8*, i8** @_execptr, align 8
  %"$res_623" = load %Int32, %Int32* %res7, align 4
  %"$input__624" = load %Int32, %Int32* %input_8, align 4
  %"$eq_call_625" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_622", %Int32 %"$res_623", %Int32 %"$input__624"), !dbg !60
  store %TName_Bool* %"$eq_call_625", %TName_Bool** %test_9, align 8, !dbg !60
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_620"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %"$BoolUtils.andb_61" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_632" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_633" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_632", 0
  %"$BoolUtils.andb_envptr_634" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_632", 1
  %"$$test_12_635" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_636" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_633"(i8* %"$BoolUtils.andb_envptr_634", %TName_Bool* %"$$test_12_635"), !dbg !61
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_636", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8, !dbg !61
  %"$BoolUtils.andb_62" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_61_637" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_61", align 8
  %"$$BoolUtils.andb_61_fptr_638" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_637", 0
  %"$$BoolUtils.andb_61_envptr_639" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_61_637", 1
  %"$test__640" = load %TName_Bool*, %TName_Bool** %test_9, align 8
  %"$$BoolUtils.andb_61_call_641" = call %TName_Bool* %"$$BoolUtils.andb_61_fptr_638"(i8* %"$$BoolUtils.andb_61_envptr_639", %TName_Bool* %"$test__640"), !dbg !61
  store %TName_Bool* %"$$BoolUtils.andb_61_call_641", %TName_Bool** %"$BoolUtils.andb_62", align 8, !dbg !61
  %"$$BoolUtils.andb_62_642" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_62", align 8
  store %TName_Bool* %"$$BoolUtils.andb_62_642", %TName_Bool** %"$test_15", align 8, !dbg !61
  br label %"$matchsucc_593"

"$None_643":                                      ; preds = %"$have_gas_591"
  %"$$resopt_14_644" = bitcast %TName_Option_Int32* %"$$resopt_14_594" to %CName_None_Int32*
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$None_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$None_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$false_650" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_650", %TName_Bool** %"$test_15", align 8, !dbg !62
  br label %"$matchsucc_593"

"$empty_default_597":                             ; preds = %"$have_gas_591"
  br label %"$matchsucc_593"

"$matchsucc_593":                                 ; preds = %"$have_gas_648", %"$have_gas_630", %"$empty_default_597"
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 1, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %"$matchsucc_593"
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %"$matchsucc_593"
  %"$consume_655" = sub i64 %"$gasrem_651", 1
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %"$input_16" = alloca %Int128, align 8
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_654"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  store %Int128 { i128 1844 }, %Int128* %"$input_16", align 8, !dbg !64
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_659"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %"$resopt_17" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 4, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 4
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$execptr_load_671" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_16_672" = alloca %Int128, align 8
  %"$$input_16_673" = load %Int128, %Int128* %"$input_16", align 8
  store %Int128 %"$$input_16_673", %Int128* %"$to_int32_$input_16_672", align 8
  %"$$to_int32_$input_16_672_674" = bitcast %Int128* %"$to_int32_$input_16_672" to i8*
  %"$to_int32_call_675" = call i8* @_to_int32(i8* %"$execptr_load_671", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", i8* %"$$to_int32_$input_16_672_674"), !dbg !65
  %"$to_int32_676" = bitcast i8* %"$to_int32_call_675" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_676", %TName_Option_Int32** %"$resopt_17", align 8, !dbg !65
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_669"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 2, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_680"
  %"$consume_686" = sub i64 %"$gasrem_682", 2
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$$resopt_17_688" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_17", align 8
  %"$$resopt_17_tag_689" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_17_688", i32 0, i32 0
  %"$$resopt_17_tag_690" = load i8, i8* %"$$resopt_17_tag_689", align 1
  switch i8 %"$$resopt_17_tag_690", label %"$empty_default_691" [
    i8 0, label %"$Some_692"
    i8 1, label %"$None_737"
  ], !dbg !66

"$Some_692":                                      ; preds = %"$have_gas_685"
  %"$$resopt_17_693" = bitcast %TName_Option_Int32* %"$$resopt_17_688" to %CName_Some_Int32*
  %"$res_gep_694" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_17_693", i32 0, i32 1
  %"$res_load_695" = load %Int32, %Int32* %"$res_gep_694", align 4
  %res10 = alloca %Int32, align 8
  store %Int32 %"$res_load_695", %Int32* %res10, align 4
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$Some_692"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$Some_692"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %input_11 = alloca %Int32, align 8
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 1, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %"$have_gas_699"
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %"$have_gas_699"
  %"$consume_705" = sub i64 %"$gasrem_701", 1
  store i64 %"$consume_705", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_11, align 4, !dbg !67
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_704"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %test_12 = alloca %TName_Bool*, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 4, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 4
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$execptr_load_716" = load i8*, i8** @_execptr, align 8
  %"$res_717" = load %Int32, %Int32* %res10, align 4
  %"$input__718" = load %Int32, %Int32* %input_11, align 4
  %"$eq_call_719" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_716", %Int32 %"$res_717", %Int32 %"$input__718"), !dbg !70
  store %TName_Bool* %"$eq_call_719", %TName_Bool** %test_12, align 8, !dbg !70
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$have_gas_714"
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem, align 8
  %"$BoolUtils.andb_63" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_726" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_727" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_726", 0
  %"$BoolUtils.andb_envptr_728" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_726", 1
  %"$$test_15_729" = load %TName_Bool*, %TName_Bool** %"$test_15", align 8
  %"$BoolUtils.andb_call_730" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_727"(i8* %"$BoolUtils.andb_envptr_728", %TName_Bool* %"$$test_15_729"), !dbg !71
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_730", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8, !dbg !71
  %"$BoolUtils.andb_64" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_63_731" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_63", align 8
  %"$$BoolUtils.andb_63_fptr_732" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_731", 0
  %"$$BoolUtils.andb_63_envptr_733" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_63_731", 1
  %"$test__734" = load %TName_Bool*, %TName_Bool** %test_12, align 8
  %"$$BoolUtils.andb_63_call_735" = call %TName_Bool* %"$$BoolUtils.andb_63_fptr_732"(i8* %"$$BoolUtils.andb_63_envptr_733", %TName_Bool* %"$test__734"), !dbg !71
  store %TName_Bool* %"$$BoolUtils.andb_63_call_735", %TName_Bool** %"$BoolUtils.andb_64", align 8, !dbg !71
  %"$$BoolUtils.andb_64_736" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_64", align 8
  store %TName_Bool* %"$$BoolUtils.andb_64_736", %TName_Bool** %"$test_18", align 8, !dbg !71
  br label %"$matchsucc_687"

"$None_737":                                      ; preds = %"$have_gas_685"
  %"$$resopt_17_738" = bitcast %TName_Option_Int32* %"$$resopt_17_688" to %CName_None_Int32*
  %"$gasrem_739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_740" = icmp ugt i64 1, %"$gasrem_739"
  br i1 %"$gascmp_740", label %"$out_of_gas_741", label %"$have_gas_742"

"$out_of_gas_741":                                ; preds = %"$None_737"
  call void @_out_of_gas()
  br label %"$have_gas_742"

"$have_gas_742":                                  ; preds = %"$out_of_gas_741", %"$None_737"
  %"$consume_743" = sub i64 %"$gasrem_739", 1
  store i64 %"$consume_743", i64* @_gasrem, align 8
  %"$false_744" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_744", %TName_Bool** %"$test_18", align 8, !dbg !72
  br label %"$matchsucc_687"

"$empty_default_691":                             ; preds = %"$have_gas_685"
  br label %"$matchsucc_687"

"$matchsucc_687":                                 ; preds = %"$have_gas_742", %"$have_gas_724", %"$empty_default_691"
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$matchsucc_687"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$matchsucc_687"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$input_19" = alloca %Int256, align 8
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_748"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  store %Int256 { i256 1844 }, %Int256* %"$input_19", align 8, !dbg !74
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %"$resopt_20" = alloca %TName_Option_Int32*, align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 4, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_758"
  %"$consume_764" = sub i64 %"$gasrem_760", 4
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$execptr_load_765" = load i8*, i8** @_execptr, align 8
  %"$to_int32_$input_19_766" = alloca %Int256, align 8
  %"$$input_19_767" = load %Int256, %Int256* %"$input_19", align 8
  store %Int256 %"$$input_19_767", %Int256* %"$to_int32_$input_19_766", align 8
  %"$$to_int32_$input_19_766_768" = bitcast %Int256* %"$to_int32_$input_19_766" to i8*
  %"$to_int32_call_769" = call i8* @_to_int32(i8* %"$execptr_load_765", %_TyDescrTy_Typ* @"$TyDescr_Int256_100", i8* %"$$to_int32_$input_19_766_768"), !dbg !75
  %"$to_int32_770" = bitcast i8* %"$to_int32_call_769" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$to_int32_770", %TName_Option_Int32** %"$resopt_20", align 8, !dbg !75
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_763"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %"$test_21" = alloca %TName_Bool*, align 8
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 2, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$have_gas_774"
  %"$consume_780" = sub i64 %"$gasrem_776", 2
  store i64 %"$consume_780", i64* @_gasrem, align 8
  %"$$resopt_20_782" = load %TName_Option_Int32*, %TName_Option_Int32** %"$resopt_20", align 8
  %"$$resopt_20_tag_783" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$resopt_20_782", i32 0, i32 0
  %"$$resopt_20_tag_784" = load i8, i8* %"$$resopt_20_tag_783", align 1
  switch i8 %"$$resopt_20_tag_784", label %"$empty_default_785" [
    i8 0, label %"$Some_786"
    i8 1, label %"$None_831"
  ], !dbg !76

"$Some_786":                                      ; preds = %"$have_gas_779"
  %"$$resopt_20_787" = bitcast %TName_Option_Int32* %"$$resopt_20_782" to %CName_Some_Int32*
  %"$res_gep_788" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$resopt_20_787", i32 0, i32 1
  %"$res_load_789" = load %Int32, %Int32* %"$res_gep_788", align 4
  %res13 = alloca %Int32, align 8
  store %Int32 %"$res_load_789", %Int32* %res13, align 4
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$Some_786"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$Some_786"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %input_14 = alloca %Int32, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_793"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %input_14, align 4, !dbg !77
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_798"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %test_15 = alloca %TName_Bool*, align 8
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 4, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_803"
  %"$consume_809" = sub i64 %"$gasrem_805", 4
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$execptr_load_810" = load i8*, i8** @_execptr, align 8
  %"$res_811" = load %Int32, %Int32* %res13, align 4
  %"$input__812" = load %Int32, %Int32* %input_14, align 4
  %"$eq_call_813" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_810", %Int32 %"$res_811", %Int32 %"$input__812"), !dbg !80
  store %TName_Bool* %"$eq_call_813", %TName_Bool** %test_15, align 8, !dbg !80
  %"$gasrem_815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_816" = icmp ugt i64 1, %"$gasrem_815"
  br i1 %"$gascmp_816", label %"$out_of_gas_817", label %"$have_gas_818"

"$out_of_gas_817":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_818"

"$have_gas_818":                                  ; preds = %"$out_of_gas_817", %"$have_gas_808"
  %"$consume_819" = sub i64 %"$gasrem_815", 1
  store i64 %"$consume_819", i64* @_gasrem, align 8
  %"$BoolUtils.andb_65" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_820" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_821" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_820", 0
  %"$BoolUtils.andb_envptr_822" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_820", 1
  %"$$test_18_823" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_824" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_821"(i8* %"$BoolUtils.andb_envptr_822", %TName_Bool* %"$$test_18_823"), !dbg !81
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_824", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8, !dbg !81
  %"$BoolUtils.andb_66" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_65_825" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_65", align 8
  %"$$BoolUtils.andb_65_fptr_826" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_825", 0
  %"$$BoolUtils.andb_65_envptr_827" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_65_825", 1
  %"$test__828" = load %TName_Bool*, %TName_Bool** %test_15, align 8
  %"$$BoolUtils.andb_65_call_829" = call %TName_Bool* %"$$BoolUtils.andb_65_fptr_826"(i8* %"$$BoolUtils.andb_65_envptr_827", %TName_Bool* %"$test__828"), !dbg !81
  store %TName_Bool* %"$$BoolUtils.andb_65_call_829", %TName_Bool** %"$BoolUtils.andb_66", align 8, !dbg !81
  %"$$BoolUtils.andb_66_830" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_66", align 8
  store %TName_Bool* %"$$BoolUtils.andb_66_830", %TName_Bool** %"$test_21", align 8, !dbg !81
  br label %"$matchsucc_781"

"$None_831":                                      ; preds = %"$have_gas_779"
  %"$$resopt_20_832" = bitcast %TName_Option_Int32* %"$$resopt_20_782" to %CName_None_Int32*
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$None_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$None_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %"$false_838" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_838", %TName_Bool** %"$test_21", align 8, !dbg !82
  br label %"$matchsucc_781"

"$empty_default_785":                             ; preds = %"$have_gas_779"
  br label %"$matchsucc_781"

"$matchsucc_781":                                 ; preds = %"$have_gas_836", %"$have_gas_818", %"$empty_default_785"
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 1, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$matchsucc_781"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$matchsucc_781"
  %"$consume_843" = sub i64 %"$gasrem_839", 1
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %"$input_22" = alloca %Uint64, align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_842"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_842"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  store %Uint64 { i64 -9223372036854775808 }, %Uint64* %"$input_22", align 8, !dbg !84
  %"$gasrem_849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_850" = icmp ugt i64 1, %"$gasrem_849"
  br i1 %"$gascmp_850", label %"$out_of_gas_851", label %"$have_gas_852"

"$out_of_gas_851":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_852"

"$have_gas_852":                                  ; preds = %"$out_of_gas_851", %"$have_gas_847"
  %"$consume_853" = sub i64 %"$gasrem_849", 1
  store i64 %"$consume_853", i64* @_gasrem, align 8
  %"$resopt_23" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 4, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_852"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_852"
  %"$consume_858" = sub i64 %"$gasrem_854", 4
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %"$execptr_load_859" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_22_860" = alloca %Uint64, align 8
  %"$$input_22_861" = load %Uint64, %Uint64* %"$input_22", align 8
  store %Uint64 %"$$input_22_861", %Uint64* %"$to_int64_$input_22_860", align 8
  %"$$to_int64_$input_22_860_862" = bitcast %Uint64* %"$to_int64_$input_22_860" to i8*
  %"$to_int64_call_863" = call i8* @_to_int64(i8* %"$execptr_load_859", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int64_$input_22_860_862"), !dbg !85
  %"$to_int64_864" = bitcast i8* %"$to_int64_call_863" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_864", %TName_Option_Int64** %"$resopt_23", align 8, !dbg !85
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_857"
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 2, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 2
  store i64 %"$consume_874", i64* @_gasrem, align 8
  %"$$resopt_23_876" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_23", align 8
  %"$$resopt_23_tag_877" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_23_876", i32 0, i32 0
  %"$$resopt_23_tag_878" = load i8, i8* %"$$resopt_23_tag_877", align 1
  switch i8 %"$$resopt_23_tag_878", label %"$empty_default_879" [
    i8 0, label %"$Some_880"
    i8 1, label %"$None_890"
  ], !dbg !86

"$Some_880":                                      ; preds = %"$have_gas_873"
  %"$$resopt_23_881" = bitcast %TName_Option_Int64* %"$$resopt_23_876" to %CName_Some_Int64*
  %"$$$resopt_23_52_gep_882" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_23_881", i32 0, i32 1
  %"$$$resopt_23_52_load_883" = load %Int64, %Int64* %"$$$resopt_23_52_gep_882", align 8
  %"$$resopt_23_52" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_23_52_load_883", %Int64* %"$$resopt_23_52", align 8
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$Some_880"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$Some_880"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  %"$false_889" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_889", %TName_Bool** %"$test_24", align 8, !dbg !87
  br label %"$matchsucc_875"

"$None_890":                                      ; preds = %"$have_gas_873"
  %"$$resopt_23_891" = bitcast %TName_Option_Int64* %"$$resopt_23_876" to %CName_None_Int64*
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$None_890"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$None_890"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %"$$test_21_897" = load %TName_Bool*, %TName_Bool** %"$test_21", align 8
  store %TName_Bool* %"$$test_21_897", %TName_Bool** %"$test_24", align 8, !dbg !90
  br label %"$matchsucc_875"

"$empty_default_879":                             ; preds = %"$have_gas_873"
  br label %"$matchsucc_875"

"$matchsucc_875":                                 ; preds = %"$have_gas_895", %"$have_gas_887", %"$empty_default_879"
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 1, %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$matchsucc_875"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$matchsucc_875"
  %"$consume_902" = sub i64 %"$gasrem_898", 1
  store i64 %"$consume_902", i64* @_gasrem, align 8
  %"$input_25" = alloca %String, align 8
  %"$gasrem_903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_904" = icmp ugt i64 1, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_901"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_901"
  %"$consume_907" = sub i64 %"$gasrem_903", 1
  store i64 %"$consume_907", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_908", i32 0, i32 0), i32 19 }, %String* %"$input_25", align 8, !dbg !92
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_906"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_906"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$resopt_26" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 4, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 4
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$execptr_load_919" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_25_920" = alloca %String, align 8
  %"$$input_25_921" = load %String, %String* %"$input_25", align 8
  store %String %"$$input_25_921", %String* %"$to_int64_$input_25_920", align 8
  %"$$to_int64_$input_25_920_922" = bitcast %String* %"$to_int64_$input_25_920" to i8*
  %"$to_int64_call_923" = call i8* @_to_int64(i8* %"$execptr_load_919", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_25_920_922"), !dbg !93
  %"$to_int64_924" = bitcast i8* %"$to_int64_call_923" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_924", %TName_Option_Int64** %"$resopt_26", align 8, !dbg !93
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 1, %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_917"
  %"$consume_929" = sub i64 %"$gasrem_925", 1
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %"$test_27" = alloca %TName_Bool*, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 2, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_928"
  %"$consume_934" = sub i64 %"$gasrem_930", 2
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$$resopt_26_936" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_26", align 8
  %"$$resopt_26_tag_937" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_26_936", i32 0, i32 0
  %"$$resopt_26_tag_938" = load i8, i8* %"$$resopt_26_tag_937", align 1
  switch i8 %"$$resopt_26_tag_938", label %"$empty_default_939" [
    i8 0, label %"$Some_940"
    i8 1, label %"$None_950"
  ], !dbg !94

"$Some_940":                                      ; preds = %"$have_gas_933"
  %"$$resopt_26_941" = bitcast %TName_Option_Int64* %"$$resopt_26_936" to %CName_Some_Int64*
  %"$$$resopt_26_53_gep_942" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_26_941", i32 0, i32 1
  %"$$$resopt_26_53_load_943" = load %Int64, %Int64* %"$$$resopt_26_53_gep_942", align 8
  %"$$resopt_26_53" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_26_53_load_943", %Int64* %"$$resopt_26_53", align 8
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 1, %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %"$Some_940"
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %"$Some_940"
  %"$consume_948" = sub i64 %"$gasrem_944", 1
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$false_949" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_949", %TName_Bool** %"$test_27", align 8, !dbg !95
  br label %"$matchsucc_935"

"$None_950":                                      ; preds = %"$have_gas_933"
  %"$$resopt_26_951" = bitcast %TName_Option_Int64* %"$$resopt_26_936" to %CName_None_Int64*
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$None_950"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$None_950"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$$test_24_957" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  store %TName_Bool* %"$$test_24_957", %TName_Bool** %"$test_27", align 8, !dbg !98
  br label %"$matchsucc_935"

"$empty_default_939":                             ; preds = %"$have_gas_933"
  br label %"$matchsucc_935"

"$matchsucc_935":                                 ; preds = %"$have_gas_955", %"$have_gas_947", %"$empty_default_939"
  %"$gasrem_958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_959" = icmp ugt i64 1, %"$gasrem_958"
  br i1 %"$gascmp_959", label %"$out_of_gas_960", label %"$have_gas_961"

"$out_of_gas_960":                                ; preds = %"$matchsucc_935"
  call void @_out_of_gas()
  br label %"$have_gas_961"

"$have_gas_961":                                  ; preds = %"$out_of_gas_960", %"$matchsucc_935"
  %"$consume_962" = sub i64 %"$gasrem_958", 1
  store i64 %"$consume_962", i64* @_gasrem, align 8
  %"$input_28" = alloca %Uint64, align 8
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 1, %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %"$have_gas_961"
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %"$have_gas_961"
  %"$consume_967" = sub i64 %"$gasrem_963", 1
  store i64 %"$consume_967", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_28", align 8, !dbg !100
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_966"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_966"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %"$resopt_29" = alloca %TName_Option_Int64*, align 8
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
  %"$to_int64_$input_28_979" = alloca %Uint64, align 8
  %"$$input_28_980" = load %Uint64, %Uint64* %"$input_28", align 8
  store %Uint64 %"$$input_28_980", %Uint64* %"$to_int64_$input_28_979", align 8
  %"$$to_int64_$input_28_979_981" = bitcast %Uint64* %"$to_int64_$input_28_979" to i8*
  %"$to_int64_call_982" = call i8* @_to_int64(i8* %"$execptr_load_978", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int64_$input_28_979_981"), !dbg !101
  %"$to_int64_983" = bitcast i8* %"$to_int64_call_982" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_983", %TName_Option_Int64** %"$resopt_29", align 8, !dbg !101
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
  %"$$resopt_29_995" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_29", align 8
  %"$$resopt_29_tag_996" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_29_995", i32 0, i32 0
  %"$$resopt_29_tag_997" = load i8, i8* %"$$resopt_29_tag_996", align 1
  switch i8 %"$$resopt_29_tag_997", label %"$empty_default_998" [
    i8 0, label %"$Some_999"
    i8 1, label %"$None_1044"
  ], !dbg !102

"$Some_999":                                      ; preds = %"$have_gas_992"
  %"$$resopt_29_1000" = bitcast %TName_Option_Int64* %"$$resopt_29_995" to %CName_Some_Int64*
  %"$res_gep_1001" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_29_1000", i32 0, i32 1
  %"$res_load_1002" = load %Int64, %Int64* %"$res_gep_1001", align 8
  %res16 = alloca %Int64, align 8
  store %Int64 %"$res_load_1002", %Int64* %res16, align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$Some_999"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$Some_999"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %input_17 = alloca %Int64, align 8
  %"$gasrem_1008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1009" = icmp ugt i64 1, %"$gasrem_1008"
  br i1 %"$gascmp_1009", label %"$out_of_gas_1010", label %"$have_gas_1011"

"$out_of_gas_1010":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1011"

"$have_gas_1011":                                 ; preds = %"$out_of_gas_1010", %"$have_gas_1006"
  %"$consume_1012" = sub i64 %"$gasrem_1008", 1
  store i64 %"$consume_1012", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %input_17, align 8, !dbg !103
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1011"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %test_18 = alloca %TName_Bool*, align 8
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 4, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1016"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 4
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %"$execptr_load_1023" = load i8*, i8** @_execptr, align 8
  %"$res_1024" = load %Int64, %Int64* %res16, align 8
  %"$input__1025" = load %Int64, %Int64* %input_17, align 8
  %"$eq_call_1026" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1023", %Int64 %"$res_1024", %Int64 %"$input__1025"), !dbg !106
  store %TName_Bool* %"$eq_call_1026", %TName_Bool** %test_18, align 8, !dbg !106
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1021"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %"$BoolUtils.andb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1033" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1034" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1033", 0
  %"$BoolUtils.andb_envptr_1035" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1033", 1
  %"$$test_27_1036" = load %TName_Bool*, %TName_Bool** %"$test_27", align 8
  %"$BoolUtils.andb_call_1037" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1034"(i8* %"$BoolUtils.andb_envptr_1035", %TName_Bool* %"$$test_27_1036"), !dbg !107
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1037", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8, !dbg !107
  %"$BoolUtils.andb_68" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_67_1038" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_67", align 8
  %"$$BoolUtils.andb_67_fptr_1039" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1038", 0
  %"$$BoolUtils.andb_67_envptr_1040" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_67_1038", 1
  %"$test__1041" = load %TName_Bool*, %TName_Bool** %test_18, align 8
  %"$$BoolUtils.andb_67_call_1042" = call %TName_Bool* %"$$BoolUtils.andb_67_fptr_1039"(i8* %"$$BoolUtils.andb_67_envptr_1040", %TName_Bool* %"$test__1041"), !dbg !107
  store %TName_Bool* %"$$BoolUtils.andb_67_call_1042", %TName_Bool** %"$BoolUtils.andb_68", align 8, !dbg !107
  %"$$BoolUtils.andb_68_1043" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_68", align 8
  store %TName_Bool* %"$$BoolUtils.andb_68_1043", %TName_Bool** %"$test_30", align 8, !dbg !107
  br label %"$matchsucc_994"

"$None_1044":                                     ; preds = %"$have_gas_992"
  %"$$resopt_29_1045" = bitcast %TName_Option_Int64* %"$$resopt_29_995" to %CName_None_Int64*
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$None_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$None_1044"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$false_1051" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1051", %TName_Bool** %"$test_30", align 8, !dbg !108
  br label %"$matchsucc_994"

"$empty_default_998":                             ; preds = %"$have_gas_992"
  br label %"$matchsucc_994"

"$matchsucc_994":                                 ; preds = %"$have_gas_1049", %"$have_gas_1031", %"$empty_default_998"
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$matchsucc_994"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$matchsucc_994"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$input_31" = alloca %Int128, align 8
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1055"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775808 }, %Int128* %"$input_31", align 8, !dbg !110
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 1, %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$have_gas_1060"
  %"$consume_1066" = sub i64 %"$gasrem_1062", 1
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  %"$resopt_32" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 4, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1065"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1065"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 4
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %"$execptr_load_1072" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_31_1073" = alloca %Int128, align 8
  %"$$input_31_1074" = load %Int128, %Int128* %"$input_31", align 8
  store %Int128 %"$$input_31_1074", %Int128* %"$to_int64_$input_31_1073", align 8
  %"$$to_int64_$input_31_1073_1075" = bitcast %Int128* %"$to_int64_$input_31_1073" to i8*
  %"$to_int64_call_1076" = call i8* @_to_int64(i8* %"$execptr_load_1072", %_TyDescrTy_Typ* @"$TyDescr_Int128_96", i8* %"$$to_int64_$input_31_1073_1075"), !dbg !111
  %"$to_int64_1077" = bitcast i8* %"$to_int64_call_1076" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1077", %TName_Option_Int64** %"$resopt_32", align 8, !dbg !111
  %"$gasrem_1078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$have_gas_1070"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem, align 8
  %"$test_33" = alloca %TName_Bool*, align 8
  %"$gasrem_1083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1084" = icmp ugt i64 2, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1081"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 2
  store i64 %"$consume_1087", i64* @_gasrem, align 8
  %"$$resopt_32_1089" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_32", align 8
  %"$$resopt_32_tag_1090" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_32_1089", i32 0, i32 0
  %"$$resopt_32_tag_1091" = load i8, i8* %"$$resopt_32_tag_1090", align 1
  switch i8 %"$$resopt_32_tag_1091", label %"$empty_default_1092" [
    i8 0, label %"$Some_1093"
    i8 1, label %"$None_1138"
  ], !dbg !112

"$Some_1093":                                     ; preds = %"$have_gas_1086"
  %"$$resopt_32_1094" = bitcast %TName_Option_Int64* %"$$resopt_32_1089" to %CName_Some_Int64*
  %"$res_gep_1095" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_32_1094", i32 0, i32 1
  %"$res_load_1096" = load %Int64, %Int64* %"$res_gep_1095", align 8
  %res19 = alloca %Int64, align 8
  store %Int64 %"$res_load_1096", %Int64* %res19, align 8
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$Some_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$Some_1093"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %input_20 = alloca %Int64, align 8
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1100"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_20, align 8, !dbg !113
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 1, %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1105"
  %"$consume_1111" = sub i64 %"$gasrem_1107", 1
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  %test_21 = alloca %TName_Bool*, align 8
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 4, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1110"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1110"
  %"$consume_1116" = sub i64 %"$gasrem_1112", 4
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %"$execptr_load_1117" = load i8*, i8** @_execptr, align 8
  %"$res_1118" = load %Int64, %Int64* %res19, align 8
  %"$input__1119" = load %Int64, %Int64* %input_20, align 8
  %"$eq_call_1120" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1117", %Int64 %"$res_1118", %Int64 %"$input__1119"), !dbg !116
  store %TName_Bool* %"$eq_call_1120", %TName_Bool** %test_21, align 8, !dbg !116
  %"$gasrem_1122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1123" = icmp ugt i64 1, %"$gasrem_1122"
  br i1 %"$gascmp_1123", label %"$out_of_gas_1124", label %"$have_gas_1125"

"$out_of_gas_1124":                               ; preds = %"$have_gas_1115"
  call void @_out_of_gas()
  br label %"$have_gas_1125"

"$have_gas_1125":                                 ; preds = %"$out_of_gas_1124", %"$have_gas_1115"
  %"$consume_1126" = sub i64 %"$gasrem_1122", 1
  store i64 %"$consume_1126", i64* @_gasrem, align 8
  %"$BoolUtils.andb_69" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1127" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1128" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1127", 0
  %"$BoolUtils.andb_envptr_1129" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1127", 1
  %"$$test_30_1130" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_1131" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1128"(i8* %"$BoolUtils.andb_envptr_1129", %TName_Bool* %"$$test_30_1130"), !dbg !117
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1131", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8, !dbg !117
  %"$BoolUtils.andb_70" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_69_1132" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_69", align 8
  %"$$BoolUtils.andb_69_fptr_1133" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1132", 0
  %"$$BoolUtils.andb_69_envptr_1134" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_69_1132", 1
  %"$test__1135" = load %TName_Bool*, %TName_Bool** %test_21, align 8
  %"$$BoolUtils.andb_69_call_1136" = call %TName_Bool* %"$$BoolUtils.andb_69_fptr_1133"(i8* %"$$BoolUtils.andb_69_envptr_1134", %TName_Bool* %"$test__1135"), !dbg !117
  store %TName_Bool* %"$$BoolUtils.andb_69_call_1136", %TName_Bool** %"$BoolUtils.andb_70", align 8, !dbg !117
  %"$$BoolUtils.andb_70_1137" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_70", align 8
  store %TName_Bool* %"$$BoolUtils.andb_70_1137", %TName_Bool** %"$test_33", align 8, !dbg !117
  br label %"$matchsucc_1088"

"$None_1138":                                     ; preds = %"$have_gas_1086"
  %"$$resopt_32_1139" = bitcast %TName_Option_Int64* %"$$resopt_32_1089" to %CName_None_Int64*
  %"$gasrem_1140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1141" = icmp ugt i64 1, %"$gasrem_1140"
  br i1 %"$gascmp_1141", label %"$out_of_gas_1142", label %"$have_gas_1143"

"$out_of_gas_1142":                               ; preds = %"$None_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1143"

"$have_gas_1143":                                 ; preds = %"$out_of_gas_1142", %"$None_1138"
  %"$consume_1144" = sub i64 %"$gasrem_1140", 1
  store i64 %"$consume_1144", i64* @_gasrem, align 8
  %"$false_1145" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1145", %TName_Bool** %"$test_33", align 8, !dbg !118
  br label %"$matchsucc_1088"

"$empty_default_1092":                            ; preds = %"$have_gas_1086"
  br label %"$matchsucc_1088"

"$matchsucc_1088":                                ; preds = %"$have_gas_1143", %"$have_gas_1125", %"$empty_default_1092"
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$matchsucc_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$matchsucc_1088"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  %"$input_34" = alloca %String, align 8
  %"$gasrem_1151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1152" = icmp ugt i64 1, %"$gasrem_1151"
  br i1 %"$gascmp_1152", label %"$out_of_gas_1153", label %"$have_gas_1154"

"$out_of_gas_1153":                               ; preds = %"$have_gas_1149"
  call void @_out_of_gas()
  br label %"$have_gas_1154"

"$have_gas_1154":                                 ; preds = %"$out_of_gas_1153", %"$have_gas_1149"
  %"$consume_1155" = sub i64 %"$gasrem_1151", 1
  store i64 %"$consume_1155", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$stringlit_1156", i32 0, i32 0), i32 20 }, %String* %"$input_34", align 8, !dbg !120
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1154"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1154"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  %"$resopt_35" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 4, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 4
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %"$execptr_load_1167" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_34_1168" = alloca %String, align 8
  %"$$input_34_1169" = load %String, %String* %"$input_34", align 8
  store %String %"$$input_34_1169", %String* %"$to_int64_$input_34_1168", align 8
  %"$$to_int64_$input_34_1168_1170" = bitcast %String* %"$to_int64_$input_34_1168" to i8*
  %"$to_int64_call_1171" = call i8* @_to_int64(i8* %"$execptr_load_1167", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_34_1168_1170"), !dbg !121
  %"$to_int64_1172" = bitcast i8* %"$to_int64_call_1171" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1172", %TName_Option_Int64** %"$resopt_35", align 8, !dbg !121
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1165"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 2, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 2
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %"$$resopt_35_1184" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_35", align 8
  %"$$resopt_35_tag_1185" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_35_1184", i32 0, i32 0
  %"$$resopt_35_tag_1186" = load i8, i8* %"$$resopt_35_tag_1185", align 1
  switch i8 %"$$resopt_35_tag_1186", label %"$empty_default_1187" [
    i8 0, label %"$Some_1188"
    i8 1, label %"$None_1233"
  ], !dbg !122

"$Some_1188":                                     ; preds = %"$have_gas_1181"
  %"$$resopt_35_1189" = bitcast %TName_Option_Int64* %"$$resopt_35_1184" to %CName_Some_Int64*
  %"$res_gep_1190" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_35_1189", i32 0, i32 1
  %"$res_load_1191" = load %Int64, %Int64* %"$res_gep_1190", align 8
  %res22 = alloca %Int64, align 8
  store %Int64 %"$res_load_1191", %Int64* %res22, align 8
  %"$gasrem_1192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1193" = icmp ugt i64 1, %"$gasrem_1192"
  br i1 %"$gascmp_1193", label %"$out_of_gas_1194", label %"$have_gas_1195"

"$out_of_gas_1194":                               ; preds = %"$Some_1188"
  call void @_out_of_gas()
  br label %"$have_gas_1195"

"$have_gas_1195":                                 ; preds = %"$out_of_gas_1194", %"$Some_1188"
  %"$consume_1196" = sub i64 %"$gasrem_1192", 1
  store i64 %"$consume_1196", i64* @_gasrem, align 8
  %input_23 = alloca %Int64, align 8
  %"$gasrem_1197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1198" = icmp ugt i64 1, %"$gasrem_1197"
  br i1 %"$gascmp_1198", label %"$out_of_gas_1199", label %"$have_gas_1200"

"$out_of_gas_1199":                               ; preds = %"$have_gas_1195"
  call void @_out_of_gas()
  br label %"$have_gas_1200"

"$have_gas_1200":                                 ; preds = %"$out_of_gas_1199", %"$have_gas_1195"
  %"$consume_1201" = sub i64 %"$gasrem_1197", 1
  store i64 %"$consume_1201", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775808 }, %Int64* %input_23, align 8, !dbg !123
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 1, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1200"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1200"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 1
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %test_24 = alloca %TName_Bool*, align 8
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 4, %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %"$have_gas_1205"
  %"$consume_1211" = sub i64 %"$gasrem_1207", 4
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  %"$execptr_load_1212" = load i8*, i8** @_execptr, align 8
  %"$res_1213" = load %Int64, %Int64* %res22, align 8
  %"$input__1214" = load %Int64, %Int64* %input_23, align 8
  %"$eq_call_1215" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1212", %Int64 %"$res_1213", %Int64 %"$input__1214"), !dbg !126
  store %TName_Bool* %"$eq_call_1215", %TName_Bool** %test_24, align 8, !dbg !126
  %"$gasrem_1217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1218" = icmp ugt i64 1, %"$gasrem_1217"
  br i1 %"$gascmp_1218", label %"$out_of_gas_1219", label %"$have_gas_1220"

"$out_of_gas_1219":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1220"

"$have_gas_1220":                                 ; preds = %"$out_of_gas_1219", %"$have_gas_1210"
  %"$consume_1221" = sub i64 %"$gasrem_1217", 1
  store i64 %"$consume_1221", i64* @_gasrem, align 8
  %"$BoolUtils.andb_71" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1222" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1223" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1222", 0
  %"$BoolUtils.andb_envptr_1224" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1222", 1
  %"$$test_33_1225" = load %TName_Bool*, %TName_Bool** %"$test_33", align 8
  %"$BoolUtils.andb_call_1226" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1223"(i8* %"$BoolUtils.andb_envptr_1224", %TName_Bool* %"$$test_33_1225"), !dbg !127
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1226", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8, !dbg !127
  %"$BoolUtils.andb_72" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_71_1227" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_71", align 8
  %"$$BoolUtils.andb_71_fptr_1228" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1227", 0
  %"$$BoolUtils.andb_71_envptr_1229" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_71_1227", 1
  %"$test__1230" = load %TName_Bool*, %TName_Bool** %test_24, align 8
  %"$$BoolUtils.andb_71_call_1231" = call %TName_Bool* %"$$BoolUtils.andb_71_fptr_1228"(i8* %"$$BoolUtils.andb_71_envptr_1229", %TName_Bool* %"$test__1230"), !dbg !127
  store %TName_Bool* %"$$BoolUtils.andb_71_call_1231", %TName_Bool** %"$BoolUtils.andb_72", align 8, !dbg !127
  %"$$BoolUtils.andb_72_1232" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_72", align 8
  store %TName_Bool* %"$$BoolUtils.andb_72_1232", %TName_Bool** %"$test_36", align 8, !dbg !127
  br label %"$matchsucc_1183"

"$None_1233":                                     ; preds = %"$have_gas_1181"
  %"$$resopt_35_1234" = bitcast %TName_Option_Int64* %"$$resopt_35_1184" to %CName_None_Int64*
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 1, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$None_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$None_1233"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 1
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  %"$false_1240" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1240", %TName_Bool** %"$test_36", align 8, !dbg !128
  br label %"$matchsucc_1183"

"$empty_default_1187":                            ; preds = %"$have_gas_1181"
  br label %"$matchsucc_1183"

"$matchsucc_1183":                                ; preds = %"$have_gas_1238", %"$have_gas_1220", %"$empty_default_1187"
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$matchsucc_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$matchsucc_1183"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %"$input_37" = alloca %Uint64, align 8
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1244"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  store %Uint64 { i64 9223372036854775807 }, %Uint64* %"$input_37", align 8, !dbg !130
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1249"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  %"$resopt_38" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 16, %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1254"
  %"$consume_1260" = sub i64 %"$gasrem_1256", 16
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  %"$execptr_load_1261" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_37_1262" = alloca %Uint64, align 8
  %"$$input_37_1263" = load %Uint64, %Uint64* %"$input_37", align 8
  store %Uint64 %"$$input_37_1263", %Uint64* %"$to_int256_$input_37_1262", align 8
  %"$$to_int256_$input_37_1262_1264" = bitcast %Uint64* %"$to_int256_$input_37_1262" to i8*
  %"$to_int256_call_1265" = call i8* @_to_int256(i8* %"$execptr_load_1261", %_TyDescrTy_Typ* @"$TyDescr_Uint64_94", i8* %"$$to_int256_$input_37_1262_1264"), !dbg !131
  %"$to_int256_1266" = bitcast i8* %"$to_int256_call_1265" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1266", %TName_Option_Int256** %"$resopt_38", align 8, !dbg !131
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1259"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %"$test_39" = alloca %TName_Bool*, align 8
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 2, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 2
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$$resopt_38_1278" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_38", align 8
  %"$$resopt_38_tag_1279" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_38_1278", i32 0, i32 0
  %"$$resopt_38_tag_1280" = load i8, i8* %"$$resopt_38_tag_1279", align 1
  switch i8 %"$$resopt_38_tag_1280", label %"$empty_default_1281" [
    i8 0, label %"$Some_1282"
    i8 1, label %"$None_1330"
  ], !dbg !132

"$Some_1282":                                     ; preds = %"$have_gas_1275"
  %"$$resopt_38_1283" = bitcast %TName_Option_Int256* %"$$resopt_38_1278" to %CName_Some_Int256*
  %"$res_gep_1284" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_38_1283", i32 0, i32 1
  %"$res_load_1285" = load %Int256, %Int256* %"$res_gep_1284", align 8
  %res25 = alloca %Int256, align 8
  store %Int256 %"$res_load_1285", %Int256* %res25, align 8
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$Some_1282"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$Some_1282"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  %input_26 = alloca %Int256, align 8
  %"$gasrem_1291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1292" = icmp ugt i64 1, %"$gasrem_1291"
  br i1 %"$gascmp_1292", label %"$out_of_gas_1293", label %"$have_gas_1294"

"$out_of_gas_1293":                               ; preds = %"$have_gas_1289"
  call void @_out_of_gas()
  br label %"$have_gas_1294"

"$have_gas_1294":                                 ; preds = %"$out_of_gas_1293", %"$have_gas_1289"
  %"$consume_1295" = sub i64 %"$gasrem_1291", 1
  store i64 %"$consume_1295", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_26, align 8, !dbg !133
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 1, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$have_gas_1294"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$have_gas_1294"
  %"$consume_1300" = sub i64 %"$gasrem_1296", 1
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %test_27 = alloca %TName_Bool*, align 8
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 16, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1299"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 16
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %"$execptr_load_1307" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1308" = alloca %Int256, align 8
  %"$res_1309" = load %Int256, %Int256* %res25, align 8
  store %Int256 %"$res_1309", %Int256* %"$eq_res_1308", align 8
  %"$eq_input__1310" = alloca %Int256, align 8
  %"$input__1311" = load %Int256, %Int256* %input_26, align 8
  store %Int256 %"$input__1311", %Int256* %"$eq_input__1310", align 8
  %"$eq_call_1312" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1307", %Int256* %"$eq_res_1308", %Int256* %"$eq_input__1310"), !dbg !136
  store %TName_Bool* %"$eq_call_1312", %TName_Bool** %test_27, align 8, !dbg !136
  %"$gasrem_1314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1315" = icmp ugt i64 1, %"$gasrem_1314"
  br i1 %"$gascmp_1315", label %"$out_of_gas_1316", label %"$have_gas_1317"

"$out_of_gas_1316":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1317"

"$have_gas_1317":                                 ; preds = %"$out_of_gas_1316", %"$have_gas_1305"
  %"$consume_1318" = sub i64 %"$gasrem_1314", 1
  store i64 %"$consume_1318", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1319" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1320" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1319", 0
  %"$BoolUtils.andb_envptr_1321" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1319", 1
  %"$$test_36_1322" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_1323" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1320"(i8* %"$BoolUtils.andb_envptr_1321", %TName_Bool* %"$$test_36_1322"), !dbg !137
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1323", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !137
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_1324" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_1325" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1324", 0
  %"$$BoolUtils.andb_73_envptr_1326" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_1324", 1
  %"$test__1327" = load %TName_Bool*, %TName_Bool** %test_27, align 8
  %"$$BoolUtils.andb_73_call_1328" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_1325"(i8* %"$$BoolUtils.andb_73_envptr_1326", %TName_Bool* %"$test__1327"), !dbg !137
  store %TName_Bool* %"$$BoolUtils.andb_73_call_1328", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !137
  %"$$BoolUtils.andb_74_1329" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_1329", %TName_Bool** %"$test_39", align 8, !dbg !137
  br label %"$matchsucc_1277"

"$None_1330":                                     ; preds = %"$have_gas_1275"
  %"$$resopt_38_1331" = bitcast %TName_Option_Int256* %"$$resopt_38_1278" to %CName_None_Int256*
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$None_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$None_1330"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  %"$false_1337" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1337", %TName_Bool** %"$test_39", align 8, !dbg !138
  br label %"$matchsucc_1277"

"$empty_default_1281":                            ; preds = %"$have_gas_1275"
  br label %"$matchsucc_1277"

"$matchsucc_1277":                                ; preds = %"$have_gas_1335", %"$have_gas_1317", %"$empty_default_1281"
  %"$gasrem_1338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1339" = icmp ugt i64 1, %"$gasrem_1338"
  br i1 %"$gascmp_1339", label %"$out_of_gas_1340", label %"$have_gas_1341"

"$out_of_gas_1340":                               ; preds = %"$matchsucc_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1341"

"$have_gas_1341":                                 ; preds = %"$out_of_gas_1340", %"$matchsucc_1277"
  %"$consume_1342" = sub i64 %"$gasrem_1338", 1
  store i64 %"$consume_1342", i64* @_gasrem, align 8
  %"$input_40" = alloca %String, align 8
  %"$gasrem_1343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1344" = icmp ugt i64 1, %"$gasrem_1343"
  br i1 %"$gascmp_1344", label %"$out_of_gas_1345", label %"$have_gas_1346"

"$out_of_gas_1345":                               ; preds = %"$have_gas_1341"
  call void @_out_of_gas()
  br label %"$have_gas_1346"

"$have_gas_1346":                                 ; preds = %"$out_of_gas_1345", %"$have_gas_1341"
  %"$consume_1347" = sub i64 %"$gasrem_1343", 1
  store i64 %"$consume_1347", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1348", i32 0, i32 0), i32 19 }, %String* %"$input_40", align 8, !dbg !140
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 1, %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1346"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1346"
  %"$consume_1353" = sub i64 %"$gasrem_1349", 1
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$resopt_41" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1355" = icmp ugt i64 16, %"$gasrem_1354"
  br i1 %"$gascmp_1355", label %"$out_of_gas_1356", label %"$have_gas_1357"

"$out_of_gas_1356":                               ; preds = %"$have_gas_1352"
  call void @_out_of_gas()
  br label %"$have_gas_1357"

"$have_gas_1357":                                 ; preds = %"$out_of_gas_1356", %"$have_gas_1352"
  %"$consume_1358" = sub i64 %"$gasrem_1354", 16
  store i64 %"$consume_1358", i64* @_gasrem, align 8
  %"$execptr_load_1359" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_40_1360" = alloca %String, align 8
  %"$$input_40_1361" = load %String, %String* %"$input_40", align 8
  store %String %"$$input_40_1361", %String* %"$to_int256_$input_40_1360", align 8
  %"$$to_int256_$input_40_1360_1362" = bitcast %String* %"$to_int256_$input_40_1360" to i8*
  %"$to_int256_call_1363" = call i8* @_to_int256(i8* %"$execptr_load_1359", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int256_$input_40_1360_1362"), !dbg !141
  %"$to_int256_1364" = bitcast i8* %"$to_int256_call_1363" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1364", %TName_Option_Int256** %"$resopt_41", align 8, !dbg !141
  %"$gasrem_1365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1366" = icmp ugt i64 1, %"$gasrem_1365"
  br i1 %"$gascmp_1366", label %"$out_of_gas_1367", label %"$have_gas_1368"

"$out_of_gas_1367":                               ; preds = %"$have_gas_1357"
  call void @_out_of_gas()
  br label %"$have_gas_1368"

"$have_gas_1368":                                 ; preds = %"$out_of_gas_1367", %"$have_gas_1357"
  %"$consume_1369" = sub i64 %"$gasrem_1365", 1
  store i64 %"$consume_1369", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 2, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$have_gas_1368"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$have_gas_1368"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 2
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  %"$$resopt_41_1376" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_41", align 8
  %"$$resopt_41_tag_1377" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_41_1376", i32 0, i32 0
  %"$$resopt_41_tag_1378" = load i8, i8* %"$$resopt_41_tag_1377", align 1
  switch i8 %"$$resopt_41_tag_1378", label %"$empty_default_1379" [
    i8 0, label %"$Some_1380"
    i8 1, label %"$None_1428"
  ], !dbg !142

"$Some_1380":                                     ; preds = %"$have_gas_1373"
  %"$$resopt_41_1381" = bitcast %TName_Option_Int256* %"$$resopt_41_1376" to %CName_Some_Int256*
  %"$res_gep_1382" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_41_1381", i32 0, i32 1
  %"$res_load_1383" = load %Int256, %Int256* %"$res_gep_1382", align 8
  %res28 = alloca %Int256, align 8
  store %Int256 %"$res_load_1383", %Int256* %res28, align 8
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$Some_1380"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$Some_1380"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %input_29 = alloca %Int256, align 8
  %"$gasrem_1389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1390" = icmp ugt i64 1, %"$gasrem_1389"
  br i1 %"$gascmp_1390", label %"$out_of_gas_1391", label %"$have_gas_1392"

"$out_of_gas_1391":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1392"

"$have_gas_1392":                                 ; preds = %"$out_of_gas_1391", %"$have_gas_1387"
  %"$consume_1393" = sub i64 %"$gasrem_1389", 1
  store i64 %"$consume_1393", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775807 }, %Int256* %input_29, align 8, !dbg !143
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1392"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %test_30 = alloca %TName_Bool*, align 8
  %"$gasrem_1400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1401" = icmp ugt i64 16, %"$gasrem_1400"
  br i1 %"$gascmp_1401", label %"$out_of_gas_1402", label %"$have_gas_1403"

"$out_of_gas_1402":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1403"

"$have_gas_1403":                                 ; preds = %"$out_of_gas_1402", %"$have_gas_1397"
  %"$consume_1404" = sub i64 %"$gasrem_1400", 16
  store i64 %"$consume_1404", i64* @_gasrem, align 8
  %"$execptr_load_1405" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1406" = alloca %Int256, align 8
  %"$res_1407" = load %Int256, %Int256* %res28, align 8
  store %Int256 %"$res_1407", %Int256* %"$eq_res_1406", align 8
  %"$eq_input__1408" = alloca %Int256, align 8
  %"$input__1409" = load %Int256, %Int256* %input_29, align 8
  store %Int256 %"$input__1409", %Int256* %"$eq_input__1408", align 8
  %"$eq_call_1410" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1405", %Int256* %"$eq_res_1406", %Int256* %"$eq_input__1408"), !dbg !146
  store %TName_Bool* %"$eq_call_1410", %TName_Bool** %test_30, align 8, !dbg !146
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 1, %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1403"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1403"
  %"$consume_1416" = sub i64 %"$gasrem_1412", 1
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1417" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1418" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1417", 0
  %"$BoolUtils.andb_envptr_1419" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1417", 1
  %"$$test_39_1420" = load %TName_Bool*, %TName_Bool** %"$test_39", align 8
  %"$BoolUtils.andb_call_1421" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1418"(i8* %"$BoolUtils.andb_envptr_1419", %TName_Bool* %"$$test_39_1420"), !dbg !147
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1421", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8, !dbg !147
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_75_1422" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_1423" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_1422", 0
  %"$$BoolUtils.andb_75_envptr_1424" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_1422", 1
  %"$test__1425" = load %TName_Bool*, %TName_Bool** %test_30, align 8
  %"$$BoolUtils.andb_75_call_1426" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_1423"(i8* %"$$BoolUtils.andb_75_envptr_1424", %TName_Bool* %"$test__1425"), !dbg !147
  store %TName_Bool* %"$$BoolUtils.andb_75_call_1426", %TName_Bool** %"$BoolUtils.andb_76", align 8, !dbg !147
  %"$$BoolUtils.andb_76_1427" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_1427", %TName_Bool** %"$test_42", align 8, !dbg !147
  br label %"$matchsucc_1375"

"$None_1428":                                     ; preds = %"$have_gas_1373"
  %"$$resopt_41_1429" = bitcast %TName_Option_Int256* %"$$resopt_41_1376" to %CName_None_Int256*
  %"$gasrem_1430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1431" = icmp ugt i64 1, %"$gasrem_1430"
  br i1 %"$gascmp_1431", label %"$out_of_gas_1432", label %"$have_gas_1433"

"$out_of_gas_1432":                               ; preds = %"$None_1428"
  call void @_out_of_gas()
  br label %"$have_gas_1433"

"$have_gas_1433":                                 ; preds = %"$out_of_gas_1432", %"$None_1428"
  %"$consume_1434" = sub i64 %"$gasrem_1430", 1
  store i64 %"$consume_1434", i64* @_gasrem, align 8
  %"$false_1435" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1435", %TName_Bool** %"$test_42", align 8, !dbg !148
  br label %"$matchsucc_1375"

"$empty_default_1379":                            ; preds = %"$have_gas_1373"
  br label %"$matchsucc_1375"

"$matchsucc_1375":                                ; preds = %"$have_gas_1433", %"$have_gas_1415", %"$empty_default_1379"
  %"$gasrem_1436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$matchsucc_1375"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$matchsucc_1375"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem, align 8
  %"$input_43" = alloca %Uint256, align 8
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 1, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 1
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$input_43", align 8, !dbg !150
  %"$gasrem_1446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1447" = icmp ugt i64 1, %"$gasrem_1446"
  br i1 %"$gascmp_1447", label %"$out_of_gas_1448", label %"$have_gas_1449"

"$out_of_gas_1448":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1449"

"$have_gas_1449":                                 ; preds = %"$out_of_gas_1448", %"$have_gas_1444"
  %"$consume_1450" = sub i64 %"$gasrem_1446", 1
  store i64 %"$consume_1450", i64* @_gasrem, align 8
  %"$resopt_44" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1452" = icmp ugt i64 16, %"$gasrem_1451"
  br i1 %"$gascmp_1452", label %"$out_of_gas_1453", label %"$have_gas_1454"

"$out_of_gas_1453":                               ; preds = %"$have_gas_1449"
  call void @_out_of_gas()
  br label %"$have_gas_1454"

"$have_gas_1454":                                 ; preds = %"$out_of_gas_1453", %"$have_gas_1449"
  %"$consume_1455" = sub i64 %"$gasrem_1451", 16
  store i64 %"$consume_1455", i64* @_gasrem, align 8
  %"$execptr_load_1456" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_43_1457" = alloca %Uint256, align 8
  %"$$input_43_1458" = load %Uint256, %Uint256* %"$input_43", align 8
  store %Uint256 %"$$input_43_1458", %Uint256* %"$to_int256_$input_43_1457", align 8
  %"$$to_int256_$input_43_1457_1459" = bitcast %Uint256* %"$to_int256_$input_43_1457" to i8*
  %"$to_int256_call_1460" = call i8* @_to_int256(i8* %"$execptr_load_1456", %_TyDescrTy_Typ* @"$TyDescr_Uint256_102", i8* %"$$to_int256_$input_43_1457_1459"), !dbg !151
  %"$to_int256_1461" = bitcast i8* %"$to_int256_call_1460" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1461", %TName_Option_Int256** %"$resopt_44", align 8, !dbg !151
  %"$gasrem_1462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1463" = icmp ugt i64 1, %"$gasrem_1462"
  br i1 %"$gascmp_1463", label %"$out_of_gas_1464", label %"$have_gas_1465"

"$out_of_gas_1464":                               ; preds = %"$have_gas_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1465"

"$have_gas_1465":                                 ; preds = %"$out_of_gas_1464", %"$have_gas_1454"
  %"$consume_1466" = sub i64 %"$gasrem_1462", 1
  store i64 %"$consume_1466", i64* @_gasrem, align 8
  %"$test_45" = alloca %TName_Bool*, align 8
  %"$gasrem_1467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1468" = icmp ugt i64 2, %"$gasrem_1467"
  br i1 %"$gascmp_1468", label %"$out_of_gas_1469", label %"$have_gas_1470"

"$out_of_gas_1469":                               ; preds = %"$have_gas_1465"
  call void @_out_of_gas()
  br label %"$have_gas_1470"

"$have_gas_1470":                                 ; preds = %"$out_of_gas_1469", %"$have_gas_1465"
  %"$consume_1471" = sub i64 %"$gasrem_1467", 2
  store i64 %"$consume_1471", i64* @_gasrem, align 8
  %"$$resopt_44_1473" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_44", align 8
  %"$$resopt_44_tag_1474" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_44_1473", i32 0, i32 0
  %"$$resopt_44_tag_1475" = load i8, i8* %"$$resopt_44_tag_1474", align 1
  switch i8 %"$$resopt_44_tag_1475", label %"$empty_default_1476" [
    i8 0, label %"$Some_1477"
    i8 1, label %"$None_1525"
  ], !dbg !152

"$Some_1477":                                     ; preds = %"$have_gas_1470"
  %"$$resopt_44_1478" = bitcast %TName_Option_Int256* %"$$resopt_44_1473" to %CName_Some_Int256*
  %"$res_gep_1479" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_44_1478", i32 0, i32 1
  %"$res_load_1480" = load %Int256, %Int256* %"$res_gep_1479", align 8
  %res31 = alloca %Int256, align 8
  store %Int256 %"$res_load_1480", %Int256* %res31, align 8
  %"$gasrem_1481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1482" = icmp ugt i64 1, %"$gasrem_1481"
  br i1 %"$gascmp_1482", label %"$out_of_gas_1483", label %"$have_gas_1484"

"$out_of_gas_1483":                               ; preds = %"$Some_1477"
  call void @_out_of_gas()
  br label %"$have_gas_1484"

"$have_gas_1484":                                 ; preds = %"$out_of_gas_1483", %"$Some_1477"
  %"$consume_1485" = sub i64 %"$gasrem_1481", 1
  store i64 %"$consume_1485", i64* @_gasrem, align 8
  %input_32 = alloca %Int256, align 8
  %"$gasrem_1486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1487" = icmp ugt i64 1, %"$gasrem_1486"
  br i1 %"$gascmp_1487", label %"$out_of_gas_1488", label %"$have_gas_1489"

"$out_of_gas_1488":                               ; preds = %"$have_gas_1484"
  call void @_out_of_gas()
  br label %"$have_gas_1489"

"$have_gas_1489":                                 ; preds = %"$out_of_gas_1488", %"$have_gas_1484"
  %"$consume_1490" = sub i64 %"$gasrem_1486", 1
  store i64 %"$consume_1490", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_32, align 8, !dbg !153
  %"$gasrem_1491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1492" = icmp ugt i64 1, %"$gasrem_1491"
  br i1 %"$gascmp_1492", label %"$out_of_gas_1493", label %"$have_gas_1494"

"$out_of_gas_1493":                               ; preds = %"$have_gas_1489"
  call void @_out_of_gas()
  br label %"$have_gas_1494"

"$have_gas_1494":                                 ; preds = %"$out_of_gas_1493", %"$have_gas_1489"
  %"$consume_1495" = sub i64 %"$gasrem_1491", 1
  store i64 %"$consume_1495", i64* @_gasrem, align 8
  %test_33 = alloca %TName_Bool*, align 8
  %"$gasrem_1497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1498" = icmp ugt i64 16, %"$gasrem_1497"
  br i1 %"$gascmp_1498", label %"$out_of_gas_1499", label %"$have_gas_1500"

"$out_of_gas_1499":                               ; preds = %"$have_gas_1494"
  call void @_out_of_gas()
  br label %"$have_gas_1500"

"$have_gas_1500":                                 ; preds = %"$out_of_gas_1499", %"$have_gas_1494"
  %"$consume_1501" = sub i64 %"$gasrem_1497", 16
  store i64 %"$consume_1501", i64* @_gasrem, align 8
  %"$execptr_load_1502" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1503" = alloca %Int256, align 8
  %"$res_1504" = load %Int256, %Int256* %res31, align 8
  store %Int256 %"$res_1504", %Int256* %"$eq_res_1503", align 8
  %"$eq_input__1505" = alloca %Int256, align 8
  %"$input__1506" = load %Int256, %Int256* %input_32, align 8
  store %Int256 %"$input__1506", %Int256* %"$eq_input__1505", align 8
  %"$eq_call_1507" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1502", %Int256* %"$eq_res_1503", %Int256* %"$eq_input__1505"), !dbg !156
  store %TName_Bool* %"$eq_call_1507", %TName_Bool** %test_33, align 8, !dbg !156
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1500"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1500"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1514" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1515" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1514", 0
  %"$BoolUtils.andb_envptr_1516" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1514", 1
  %"$$test_42_1517" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1518" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1515"(i8* %"$BoolUtils.andb_envptr_1516", %TName_Bool* %"$$test_42_1517"), !dbg !157
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1518", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8, !dbg !157
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_77_1519" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_1520" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_1519", 0
  %"$$BoolUtils.andb_77_envptr_1521" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_1519", 1
  %"$test__1522" = load %TName_Bool*, %TName_Bool** %test_33, align 8
  %"$$BoolUtils.andb_77_call_1523" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_1520"(i8* %"$$BoolUtils.andb_77_envptr_1521", %TName_Bool* %"$test__1522"), !dbg !157
  store %TName_Bool* %"$$BoolUtils.andb_77_call_1523", %TName_Bool** %"$BoolUtils.andb_78", align 8, !dbg !157
  %"$$BoolUtils.andb_78_1524" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_1524", %TName_Bool** %"$test_45", align 8, !dbg !157
  br label %"$matchsucc_1472"

"$None_1525":                                     ; preds = %"$have_gas_1470"
  %"$$resopt_44_1526" = bitcast %TName_Option_Int256* %"$$resopt_44_1473" to %CName_None_Int256*
  %"$gasrem_1527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1528" = icmp ugt i64 1, %"$gasrem_1527"
  br i1 %"$gascmp_1528", label %"$out_of_gas_1529", label %"$have_gas_1530"

"$out_of_gas_1529":                               ; preds = %"$None_1525"
  call void @_out_of_gas()
  br label %"$have_gas_1530"

"$have_gas_1530":                                 ; preds = %"$out_of_gas_1529", %"$None_1525"
  %"$consume_1531" = sub i64 %"$gasrem_1527", 1
  store i64 %"$consume_1531", i64* @_gasrem, align 8
  %"$false_1532" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1532", %TName_Bool** %"$test_45", align 8, !dbg !158
  br label %"$matchsucc_1472"

"$empty_default_1476":                            ; preds = %"$have_gas_1470"
  br label %"$matchsucc_1472"

"$matchsucc_1472":                                ; preds = %"$have_gas_1530", %"$have_gas_1512", %"$empty_default_1476"
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 1, %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$matchsucc_1472"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$matchsucc_1472"
  %"$consume_1537" = sub i64 %"$gasrem_1533", 1
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  %"$input_46" = alloca %String, align 8
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$have_gas_1536"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$have_gas_1536"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"$stringlit_1543", i32 0, i32 0), i32 77 }, %String* %"$input_46", align 8, !dbg !160
  %"$gasrem_1544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1545" = icmp ugt i64 1, %"$gasrem_1544"
  br i1 %"$gascmp_1545", label %"$out_of_gas_1546", label %"$have_gas_1547"

"$out_of_gas_1546":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1547"

"$have_gas_1547":                                 ; preds = %"$out_of_gas_1546", %"$have_gas_1541"
  %"$consume_1548" = sub i64 %"$gasrem_1544", 1
  store i64 %"$consume_1548", i64* @_gasrem, align 8
  %"$resopt_47" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1550" = icmp ugt i64 16, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %"$have_gas_1547"
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %"$have_gas_1547"
  %"$consume_1553" = sub i64 %"$gasrem_1549", 16
  store i64 %"$consume_1553", i64* @_gasrem, align 8
  %"$execptr_load_1554" = load i8*, i8** @_execptr, align 8
  %"$to_int256_$input_46_1555" = alloca %String, align 8
  %"$$input_46_1556" = load %String, %String* %"$input_46", align 8
  store %String %"$$input_46_1556", %String* %"$to_int256_$input_46_1555", align 8
  %"$$to_int256_$input_46_1555_1557" = bitcast %String* %"$to_int256_$input_46_1555" to i8*
  %"$to_int256_call_1558" = call i8* @_to_int256(i8* %"$execptr_load_1554", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int256_$input_46_1555_1557"), !dbg !161
  %"$to_int256_1559" = bitcast i8* %"$to_int256_call_1558" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$to_int256_1559", %TName_Option_Int256** %"$resopt_47", align 8, !dbg !161
  %"$gasrem_1560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1561" = icmp ugt i64 1, %"$gasrem_1560"
  br i1 %"$gascmp_1561", label %"$out_of_gas_1562", label %"$have_gas_1563"

"$out_of_gas_1562":                               ; preds = %"$have_gas_1552"
  call void @_out_of_gas()
  br label %"$have_gas_1563"

"$have_gas_1563":                                 ; preds = %"$out_of_gas_1562", %"$have_gas_1552"
  %"$consume_1564" = sub i64 %"$gasrem_1560", 1
  store i64 %"$consume_1564", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_1565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1566" = icmp ugt i64 2, %"$gasrem_1565"
  br i1 %"$gascmp_1566", label %"$out_of_gas_1567", label %"$have_gas_1568"

"$out_of_gas_1567":                               ; preds = %"$have_gas_1563"
  call void @_out_of_gas()
  br label %"$have_gas_1568"

"$have_gas_1568":                                 ; preds = %"$out_of_gas_1567", %"$have_gas_1563"
  %"$consume_1569" = sub i64 %"$gasrem_1565", 2
  store i64 %"$consume_1569", i64* @_gasrem, align 8
  %"$$resopt_47_1571" = load %TName_Option_Int256*, %TName_Option_Int256** %"$resopt_47", align 8
  %"$$resopt_47_tag_1572" = getelementptr inbounds %TName_Option_Int256, %TName_Option_Int256* %"$$resopt_47_1571", i32 0, i32 0
  %"$$resopt_47_tag_1573" = load i8, i8* %"$$resopt_47_tag_1572", align 1
  switch i8 %"$$resopt_47_tag_1573", label %"$empty_default_1574" [
    i8 0, label %"$Some_1575"
    i8 1, label %"$None_1623"
  ], !dbg !162

"$Some_1575":                                     ; preds = %"$have_gas_1568"
  %"$$resopt_47_1576" = bitcast %TName_Option_Int256* %"$$resopt_47_1571" to %CName_Some_Int256*
  %"$res_gep_1577" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$$resopt_47_1576", i32 0, i32 1
  %"$res_load_1578" = load %Int256, %Int256* %"$res_gep_1577", align 8
  %res34 = alloca %Int256, align 8
  store %Int256 %"$res_load_1578", %Int256* %res34, align 8
  %"$gasrem_1579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1580" = icmp ugt i64 1, %"$gasrem_1579"
  br i1 %"$gascmp_1580", label %"$out_of_gas_1581", label %"$have_gas_1582"

"$out_of_gas_1581":                               ; preds = %"$Some_1575"
  call void @_out_of_gas()
  br label %"$have_gas_1582"

"$have_gas_1582":                                 ; preds = %"$out_of_gas_1581", %"$Some_1575"
  %"$consume_1583" = sub i64 %"$gasrem_1579", 1
  store i64 %"$consume_1583", i64* @_gasrem, align 8
  %input_35 = alloca %Int256, align 8
  %"$gasrem_1584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1585" = icmp ugt i64 1, %"$gasrem_1584"
  br i1 %"$gascmp_1585", label %"$out_of_gas_1586", label %"$have_gas_1587"

"$out_of_gas_1586":                               ; preds = %"$have_gas_1582"
  call void @_out_of_gas()
  br label %"$have_gas_1587"

"$have_gas_1587":                                 ; preds = %"$out_of_gas_1586", %"$have_gas_1582"
  %"$consume_1588" = sub i64 %"$gasrem_1584", 1
  store i64 %"$consume_1588", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %input_35, align 8, !dbg !163
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1587"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1587"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  %test_36 = alloca %TName_Bool*, align 8
  %"$gasrem_1595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1596" = icmp ugt i64 16, %"$gasrem_1595"
  br i1 %"$gascmp_1596", label %"$out_of_gas_1597", label %"$have_gas_1598"

"$out_of_gas_1597":                               ; preds = %"$have_gas_1592"
  call void @_out_of_gas()
  br label %"$have_gas_1598"

"$have_gas_1598":                                 ; preds = %"$out_of_gas_1597", %"$have_gas_1592"
  %"$consume_1599" = sub i64 %"$gasrem_1595", 16
  store i64 %"$consume_1599", i64* @_gasrem, align 8
  %"$execptr_load_1600" = load i8*, i8** @_execptr, align 8
  %"$eq_res_1601" = alloca %Int256, align 8
  %"$res_1602" = load %Int256, %Int256* %res34, align 8
  store %Int256 %"$res_1602", %Int256* %"$eq_res_1601", align 8
  %"$eq_input__1603" = alloca %Int256, align 8
  %"$input__1604" = load %Int256, %Int256* %input_35, align 8
  store %Int256 %"$input__1604", %Int256* %"$eq_input__1603", align 8
  %"$eq_call_1605" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1600", %Int256* %"$eq_res_1601", %Int256* %"$eq_input__1603"), !dbg !166
  store %TName_Bool* %"$eq_call_1605", %TName_Bool** %test_36, align 8, !dbg !166
  %"$gasrem_1607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1608" = icmp ugt i64 1, %"$gasrem_1607"
  br i1 %"$gascmp_1608", label %"$out_of_gas_1609", label %"$have_gas_1610"

"$out_of_gas_1609":                               ; preds = %"$have_gas_1598"
  call void @_out_of_gas()
  br label %"$have_gas_1610"

"$have_gas_1610":                                 ; preds = %"$out_of_gas_1609", %"$have_gas_1598"
  %"$consume_1611" = sub i64 %"$gasrem_1607", 1
  store i64 %"$consume_1611", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1612" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1613" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1612", 0
  %"$BoolUtils.andb_envptr_1614" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1612", 1
  %"$$test_45_1615" = load %TName_Bool*, %TName_Bool** %"$test_45", align 8
  %"$BoolUtils.andb_call_1616" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1613"(i8* %"$BoolUtils.andb_envptr_1614", %TName_Bool* %"$$test_45_1615"), !dbg !167
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1616", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !167
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_1617" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_1618" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1617", 0
  %"$$BoolUtils.andb_79_envptr_1619" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_1617", 1
  %"$test__1620" = load %TName_Bool*, %TName_Bool** %test_36, align 8
  %"$$BoolUtils.andb_79_call_1621" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_1618"(i8* %"$$BoolUtils.andb_79_envptr_1619", %TName_Bool* %"$test__1620"), !dbg !167
  store %TName_Bool* %"$$BoolUtils.andb_79_call_1621", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !167
  %"$$BoolUtils.andb_80_1622" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_1622", %TName_Bool** %"$test_48", align 8, !dbg !167
  br label %"$matchsucc_1570"

"$None_1623":                                     ; preds = %"$have_gas_1568"
  %"$$resopt_47_1624" = bitcast %TName_Option_Int256* %"$$resopt_47_1571" to %CName_None_Int256*
  %"$gasrem_1625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1626" = icmp ugt i64 1, %"$gasrem_1625"
  br i1 %"$gascmp_1626", label %"$out_of_gas_1627", label %"$have_gas_1628"

"$out_of_gas_1627":                               ; preds = %"$None_1623"
  call void @_out_of_gas()
  br label %"$have_gas_1628"

"$have_gas_1628":                                 ; preds = %"$out_of_gas_1627", %"$None_1623"
  %"$consume_1629" = sub i64 %"$gasrem_1625", 1
  store i64 %"$consume_1629", i64* @_gasrem, align 8
  %"$false_1630" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1630", %TName_Bool** %"$test_48", align 8, !dbg !168
  br label %"$matchsucc_1570"

"$empty_default_1574":                            ; preds = %"$have_gas_1568"
  br label %"$matchsucc_1570"

"$matchsucc_1570":                                ; preds = %"$have_gas_1628", %"$have_gas_1610", %"$empty_default_1574"
  %"$gasrem_1631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1632" = icmp ugt i64 1, %"$gasrem_1631"
  br i1 %"$gascmp_1632", label %"$out_of_gas_1633", label %"$have_gas_1634"

"$out_of_gas_1633":                               ; preds = %"$matchsucc_1570"
  call void @_out_of_gas()
  br label %"$have_gas_1634"

"$have_gas_1634":                                 ; preds = %"$out_of_gas_1633", %"$matchsucc_1570"
  %"$consume_1635" = sub i64 %"$gasrem_1631", 1
  store i64 %"$consume_1635", i64* @_gasrem, align 8
  %"$input_49" = alloca %String, align 8
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 1, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$have_gas_1634"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$have_gas_1634"
  %"$consume_1640" = sub i64 %"$gasrem_1636", 1
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1641", i32 0, i32 0), i32 4 }, %String* %"$input_49", align 8, !dbg !170
  %"$gasrem_1642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1643" = icmp ugt i64 1, %"$gasrem_1642"
  br i1 %"$gascmp_1643", label %"$out_of_gas_1644", label %"$have_gas_1645"

"$out_of_gas_1644":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1645"

"$have_gas_1645":                                 ; preds = %"$out_of_gas_1644", %"$have_gas_1639"
  %"$consume_1646" = sub i64 %"$gasrem_1642", 1
  store i64 %"$consume_1646", i64* @_gasrem, align 8
  %"$resopt_50" = alloca %TName_Option_Int64*, align 8
  %"$gasrem_1647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1648" = icmp ugt i64 4, %"$gasrem_1647"
  br i1 %"$gascmp_1648", label %"$out_of_gas_1649", label %"$have_gas_1650"

"$out_of_gas_1649":                               ; preds = %"$have_gas_1645"
  call void @_out_of_gas()
  br label %"$have_gas_1650"

"$have_gas_1650":                                 ; preds = %"$out_of_gas_1649", %"$have_gas_1645"
  %"$consume_1651" = sub i64 %"$gasrem_1647", 4
  store i64 %"$consume_1651", i64* @_gasrem, align 8
  %"$execptr_load_1652" = load i8*, i8** @_execptr, align 8
  %"$to_int64_$input_49_1653" = alloca %String, align 8
  %"$$input_49_1654" = load %String, %String* %"$input_49", align 8
  store %String %"$$input_49_1654", %String* %"$to_int64_$input_49_1653", align 8
  %"$$to_int64_$input_49_1653_1655" = bitcast %String* %"$to_int64_$input_49_1653" to i8*
  %"$to_int64_call_1656" = call i8* @_to_int64(i8* %"$execptr_load_1652", %_TyDescrTy_Typ* @"$TyDescr_String_104", i8* %"$$to_int64_$input_49_1653_1655"), !dbg !171
  %"$to_int64_1657" = bitcast i8* %"$to_int64_call_1656" to %TName_Option_Int64*
  store %TName_Option_Int64* %"$to_int64_1657", %TName_Option_Int64** %"$resopt_50", align 8, !dbg !171
  %"$gasrem_1658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1659" = icmp ugt i64 1, %"$gasrem_1658"
  br i1 %"$gascmp_1659", label %"$out_of_gas_1660", label %"$have_gas_1661"

"$out_of_gas_1660":                               ; preds = %"$have_gas_1650"
  call void @_out_of_gas()
  br label %"$have_gas_1661"

"$have_gas_1661":                                 ; preds = %"$out_of_gas_1660", %"$have_gas_1650"
  %"$consume_1662" = sub i64 %"$gasrem_1658", 1
  store i64 %"$consume_1662", i64* @_gasrem, align 8
  %"$test_51" = alloca %TName_Bool*, align 8
  %"$gasrem_1663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1664" = icmp ugt i64 2, %"$gasrem_1663"
  br i1 %"$gascmp_1664", label %"$out_of_gas_1665", label %"$have_gas_1666"

"$out_of_gas_1665":                               ; preds = %"$have_gas_1661"
  call void @_out_of_gas()
  br label %"$have_gas_1666"

"$have_gas_1666":                                 ; preds = %"$out_of_gas_1665", %"$have_gas_1661"
  %"$consume_1667" = sub i64 %"$gasrem_1663", 2
  store i64 %"$consume_1667", i64* @_gasrem, align 8
  %"$$resopt_50_1669" = load %TName_Option_Int64*, %TName_Option_Int64** %"$resopt_50", align 8
  %"$$resopt_50_tag_1670" = getelementptr inbounds %TName_Option_Int64, %TName_Option_Int64* %"$$resopt_50_1669", i32 0, i32 0
  %"$$resopt_50_tag_1671" = load i8, i8* %"$$resopt_50_tag_1670", align 1
  switch i8 %"$$resopt_50_tag_1671", label %"$empty_default_1672" [
    i8 0, label %"$Some_1673"
    i8 1, label %"$None_1683"
  ], !dbg !172

"$Some_1673":                                     ; preds = %"$have_gas_1666"
  %"$$resopt_50_1674" = bitcast %TName_Option_Int64* %"$$resopt_50_1669" to %CName_Some_Int64*
  %"$$$resopt_50_54_gep_1675" = getelementptr inbounds %CName_Some_Int64, %CName_Some_Int64* %"$$resopt_50_1674", i32 0, i32 1
  %"$$$resopt_50_54_load_1676" = load %Int64, %Int64* %"$$$resopt_50_54_gep_1675", align 8
  %"$$resopt_50_54" = alloca %Int64, align 8
  store %Int64 %"$$$resopt_50_54_load_1676", %Int64* %"$$resopt_50_54", align 8
  %"$gasrem_1677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1678" = icmp ugt i64 1, %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$Some_1673"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$Some_1673"
  %"$consume_1681" = sub i64 %"$gasrem_1677", 1
  store i64 %"$consume_1681", i64* @_gasrem, align 8
  %"$false_1682" = load %TName_Bool*, %TName_Bool** %false, align 8
  store %TName_Bool* %"$false_1682", %TName_Bool** %"$test_51", align 8, !dbg !173
  br label %"$matchsucc_1668"

"$None_1683":                                     ; preds = %"$have_gas_1666"
  %"$$resopt_50_1684" = bitcast %TName_Option_Int64* %"$$resopt_50_1669" to %CName_None_Int64*
  %"$gasrem_1685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1686" = icmp ugt i64 1, %"$gasrem_1685"
  br i1 %"$gascmp_1686", label %"$out_of_gas_1687", label %"$have_gas_1688"

"$out_of_gas_1687":                               ; preds = %"$None_1683"
  call void @_out_of_gas()
  br label %"$have_gas_1688"

"$have_gas_1688":                                 ; preds = %"$out_of_gas_1687", %"$None_1683"
  %"$consume_1689" = sub i64 %"$gasrem_1685", 1
  store i64 %"$consume_1689", i64* @_gasrem, align 8
  %"$$test_48_1690" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  store %TName_Bool* %"$$test_48_1690", %TName_Bool** %"$test_51", align 8, !dbg !176
  br label %"$matchsucc_1668"

"$empty_default_1672":                            ; preds = %"$have_gas_1666"
  br label %"$matchsucc_1668"

"$matchsucc_1668":                                ; preds = %"$have_gas_1688", %"$have_gas_1680", %"$empty_default_1672"
  %"$gasrem_1691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1692" = icmp ugt i64 1, %"$gasrem_1691"
  br i1 %"$gascmp_1692", label %"$out_of_gas_1693", label %"$have_gas_1694"

"$out_of_gas_1693":                               ; preds = %"$matchsucc_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1694"

"$have_gas_1694":                                 ; preds = %"$out_of_gas_1693", %"$matchsucc_1668"
  %"$consume_1695" = sub i64 %"$gasrem_1691", 1
  store i64 %"$consume_1695", i64* @_gasrem, align 8
  %"$$test_51_1696" = load %TName_Bool*, %TName_Bool** %"$test_51", align 8
  store %TName_Bool* %"$$test_51_1696", %TName_Bool** %"$expr_85", align 8, !dbg !178
  %"$$expr_85_1697" = load %TName_Bool*, %TName_Bool** %"$expr_85", align 8
  ret %TName_Bool* %"$$expr_85_1697"
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
  %"$exprval_1698" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1699" = bitcast %TName_Bool* %"$exprval_1698" to i8*
  %"$execptr_load_1700" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1700", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_121", i8* %"$memvoidcast_1699")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_int.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!44 = !DILocation(line: 28, column: 18, scope: !21)
!45 = !DILocation(line: 29, column: 14, scope: !21)
!46 = !DILocation(line: 31, column: 3, scope: !21)
!47 = !DILocation(line: 33, column: 18, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !2, line: 32, column: 5)
!49 = distinct !DILexicalBlock(scope: !21, file: !2, line: 31, column: 3)
!50 = !DILocation(line: 34, column: 17, scope: !48)
!51 = !DILocation(line: 35, column: 5, scope: !48)
!52 = !DILocation(line: 36, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !2, line: 36, column: 5)
!54 = !DILocation(line: 40, column: 13, scope: !21)
!55 = !DILocation(line: 41, column: 14, scope: !21)
!56 = !DILocation(line: 43, column: 3, scope: !21)
!57 = !DILocation(line: 45, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !2, line: 44, column: 5)
!59 = distinct !DILexicalBlock(scope: !21, file: !2, line: 43, column: 3)
!60 = !DILocation(line: 46, column: 17, scope: !58)
!61 = !DILocation(line: 47, column: 5, scope: !58)
!62 = !DILocation(line: 48, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !2, line: 48, column: 5)
!64 = !DILocation(line: 52, column: 13, scope: !21)
!65 = !DILocation(line: 53, column: 14, scope: !21)
!66 = !DILocation(line: 55, column: 3, scope: !21)
!67 = !DILocation(line: 57, column: 18, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 56, column: 5)
!69 = distinct !DILexicalBlock(scope: !21, file: !2, line: 55, column: 3)
!70 = !DILocation(line: 58, column: 17, scope: !68)
!71 = !DILocation(line: 59, column: 5, scope: !68)
!72 = !DILocation(line: 60, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !2, line: 60, column: 5)
!74 = !DILocation(line: 64, column: 13, scope: !21)
!75 = !DILocation(line: 65, column: 14, scope: !21)
!76 = !DILocation(line: 67, column: 3, scope: !21)
!77 = !DILocation(line: 69, column: 18, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 68, column: 5)
!79 = distinct !DILexicalBlock(scope: !21, file: !2, line: 67, column: 3)
!80 = !DILocation(line: 70, column: 17, scope: !78)
!81 = !DILocation(line: 71, column: 5, scope: !78)
!82 = !DILocation(line: 72, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !2, line: 72, column: 5)
!84 = !DILocation(line: 76, column: 13, scope: !21)
!85 = !DILocation(line: 77, column: 14, scope: !21)
!86 = !DILocation(line: 79, column: 3, scope: !21)
!87 = !DILocation(line: 80, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 80, column: 5)
!89 = distinct !DILexicalBlock(scope: !21, file: !2, line: 79, column: 3)
!90 = !DILocation(line: 81, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !89, file: !2, line: 81, column: 5)
!92 = !DILocation(line: 85, column: 33, scope: !21)
!93 = !DILocation(line: 86, column: 14, scope: !21)
!94 = !DILocation(line: 88, column: 3, scope: !21)
!95 = !DILocation(line: 89, column: 15, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 89, column: 5)
!97 = distinct !DILexicalBlock(scope: !21, file: !2, line: 88, column: 3)
!98 = !DILocation(line: 90, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !2, line: 90, column: 5)
!100 = !DILocation(line: 94, column: 13, scope: !21)
!101 = !DILocation(line: 95, column: 14, scope: !21)
!102 = !DILocation(line: 97, column: 3, scope: !21)
!103 = !DILocation(line: 99, column: 18, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 98, column: 5)
!105 = distinct !DILexicalBlock(scope: !21, file: !2, line: 97, column: 3)
!106 = !DILocation(line: 100, column: 17, scope: !104)
!107 = !DILocation(line: 101, column: 5, scope: !104)
!108 = !DILocation(line: 102, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !2, line: 102, column: 5)
!110 = !DILocation(line: 106, column: 13, scope: !21)
!111 = !DILocation(line: 107, column: 14, scope: !21)
!112 = !DILocation(line: 109, column: 3, scope: !21)
!113 = !DILocation(line: 111, column: 18, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 110, column: 5)
!115 = distinct !DILexicalBlock(scope: !21, file: !2, line: 109, column: 3)
!116 = !DILocation(line: 112, column: 17, scope: !114)
!117 = !DILocation(line: 113, column: 5, scope: !114)
!118 = !DILocation(line: 114, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !2, line: 114, column: 5)
!120 = !DILocation(line: 118, column: 34, scope: !21)
!121 = !DILocation(line: 119, column: 14, scope: !21)
!122 = !DILocation(line: 121, column: 3, scope: !21)
!123 = !DILocation(line: 123, column: 18, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 122, column: 5)
!125 = distinct !DILexicalBlock(scope: !21, file: !2, line: 121, column: 3)
!126 = !DILocation(line: 124, column: 17, scope: !124)
!127 = !DILocation(line: 125, column: 5, scope: !124)
!128 = !DILocation(line: 126, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !2, line: 126, column: 5)
!130 = !DILocation(line: 130, column: 13, scope: !21)
!131 = !DILocation(line: 131, column: 14, scope: !21)
!132 = !DILocation(line: 133, column: 3, scope: !21)
!133 = !DILocation(line: 135, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 134, column: 5)
!135 = distinct !DILexicalBlock(scope: !21, file: !2, line: 133, column: 3)
!136 = !DILocation(line: 136, column: 17, scope: !134)
!137 = !DILocation(line: 137, column: 5, scope: !134)
!138 = !DILocation(line: 138, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !2, line: 138, column: 5)
!140 = !DILocation(line: 142, column: 33, scope: !21)
!141 = !DILocation(line: 143, column: 14, scope: !21)
!142 = !DILocation(line: 145, column: 3, scope: !21)
!143 = !DILocation(line: 147, column: 18, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !2, line: 146, column: 5)
!145 = distinct !DILexicalBlock(scope: !21, file: !2, line: 145, column: 3)
!146 = !DILocation(line: 148, column: 17, scope: !144)
!147 = !DILocation(line: 149, column: 5, scope: !144)
!148 = !DILocation(line: 150, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !2, line: 150, column: 5)
!150 = !DILocation(line: 154, column: 13, scope: !21)
!151 = !DILocation(line: 155, column: 14, scope: !21)
!152 = !DILocation(line: 157, column: 3, scope: !21)
!153 = !DILocation(line: 159, column: 18, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 158, column: 5)
!155 = distinct !DILexicalBlock(scope: !21, file: !2, line: 157, column: 3)
!156 = !DILocation(line: 160, column: 17, scope: !154)
!157 = !DILocation(line: 161, column: 5, scope: !154)
!158 = !DILocation(line: 162, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !2, line: 162, column: 5)
!160 = !DILocation(line: 166, column: 91, scope: !21)
!161 = !DILocation(line: 167, column: 14, scope: !21)
!162 = !DILocation(line: 169, column: 3, scope: !21)
!163 = !DILocation(line: 171, column: 18, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 170, column: 5)
!165 = distinct !DILexicalBlock(scope: !21, file: !2, line: 169, column: 3)
!166 = !DILocation(line: 172, column: 17, scope: !164)
!167 = !DILocation(line: 173, column: 5, scope: !164)
!168 = !DILocation(line: 174, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !2, line: 174, column: 5)
!170 = !DILocation(line: 178, column: 18, scope: !21)
!171 = !DILocation(line: 179, column: 14, scope: !21)
!172 = !DILocation(line: 181, column: 3, scope: !21)
!173 = !DILocation(line: 182, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 182, column: 5)
!175 = distinct !DILexicalBlock(scope: !21, file: !2, line: 181, column: 3)
!176 = !DILocation(line: 183, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !175, file: !2, line: 183, column: 5)
!178 = !DILocation(line: 187, column: 1, scope: !21)
