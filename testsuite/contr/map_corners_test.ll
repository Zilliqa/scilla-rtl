

; gas_remaining: 4001999
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_34" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_66" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_65"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_65" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_67"**, %"$TyDescrTy_ADTTyp_66"* }
%"$TyDescrTy_ADTTyp_Constr_67" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_72" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_77" = type { i32, %"$TyDescr_AddrFieldTyp_76"* }
%"$TyDescr_AddrFieldTyp_76" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_4894" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_4895" = type { %ParamDescrString, i32, %"$ParamDescr_4894"* }
%"$$fundef_27_env_125" = type { %TName_Bool* }
%"$$fundef_25_env_126" = type {}
%String = type { i8*, i32 }
%Map_String_String = type { %String, %String }
%"Map_String_Map_(String)_(String)" = type { %String, %Map_String_String* }
%"Map_String_Map_(String)_(Map_(String)_(String))" = type { %String, %"Map_String_Map_(String)_(String)"* }
%Uint128 = type { i128 }
%TName_Option_String = type { i8, %CName_Some_String*, %CName_None_String* }
%CName_Some_String = type <{ i8, %String }>
%CName_None_String = type <{ i8 }>
%"TName_Option_Map_(String)_(String)" = type { i8, %"CName_Some_Map_(String)_(String)"*, %"CName_None_Map_(String)_(String)"* }
%"CName_Some_Map_(String)_(String)" = type <{ i8, %Map_String_String* }>
%"CName_None_Map_(String)_(String)" = type <{ i8 }>
%"TName_Option_Map_(String)_(Map_(String)_(String))" = type { i8, %"CName_Some_Map_(String)_(Map_(String)_(String))"*, %"CName_None_Map_(String)_(Map_(String)_(String))"* }
%"CName_Some_Map_(String)_(Map_(String)_(String))" = type <{ i8, %"Map_String_Map_(String)_(String)"* }>
%"CName_None_Map_(String)_(Map_(String)_(String))" = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_35" = global %"$TyDescrTy_PrimTyp_34" zeroinitializer
@"$TyDescr_Int32_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Int32_Prim_35" to i8*) }
@"$TyDescr_Uint32_Prim_37" = global %"$TyDescrTy_PrimTyp_34" { i32 1, i32 0 }
@"$TyDescr_Uint32_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Uint32_Prim_37" to i8*) }
@"$TyDescr_Int64_Prim_39" = global %"$TyDescrTy_PrimTyp_34" { i32 0, i32 1 }
@"$TyDescr_Int64_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Int64_Prim_39" to i8*) }
@"$TyDescr_Uint64_Prim_41" = global %"$TyDescrTy_PrimTyp_34" { i32 1, i32 1 }
@"$TyDescr_Uint64_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Uint64_Prim_41" to i8*) }
@"$TyDescr_Int128_Prim_43" = global %"$TyDescrTy_PrimTyp_34" { i32 0, i32 2 }
@"$TyDescr_Int128_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Int128_Prim_43" to i8*) }
@"$TyDescr_Uint128_Prim_45" = global %"$TyDescrTy_PrimTyp_34" { i32 1, i32 2 }
@"$TyDescr_Uint128_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Uint128_Prim_45" to i8*) }
@"$TyDescr_Int256_Prim_47" = global %"$TyDescrTy_PrimTyp_34" { i32 0, i32 3 }
@"$TyDescr_Int256_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Int256_Prim_47" to i8*) }
@"$TyDescr_Uint256_Prim_49" = global %"$TyDescrTy_PrimTyp_34" { i32 1, i32 3 }
@"$TyDescr_Uint256_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Uint256_Prim_49" to i8*) }
@"$TyDescr_String_Prim_51" = global %"$TyDescrTy_PrimTyp_34" { i32 2, i32 0 }
@"$TyDescr_String_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_String_Prim_51" to i8*) }
@"$TyDescr_Bnum_Prim_53" = global %"$TyDescrTy_PrimTyp_34" { i32 3, i32 0 }
@"$TyDescr_Bnum_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Bnum_Prim_53" to i8*) }
@"$TyDescr_Message_Prim_55" = global %"$TyDescrTy_PrimTyp_34" { i32 4, i32 0 }
@"$TyDescr_Message_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Message_Prim_55" to i8*) }
@"$TyDescr_Event_Prim_57" = global %"$TyDescrTy_PrimTyp_34" { i32 5, i32 0 }
@"$TyDescr_Event_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Event_Prim_57" to i8*) }
@"$TyDescr_Exception_Prim_59" = global %"$TyDescrTy_PrimTyp_34" { i32 6, i32 0 }
@"$TyDescr_Exception_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Exception_Prim_59" to i8*) }
@"$TyDescr_Bystr_Prim_61" = global %"$TyDescrTy_PrimTyp_34" { i32 7, i32 0 }
@"$TyDescr_Bystr_62" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Bystr_Prim_61" to i8*) }
@"$TyDescr_Bystr20_Prim_63" = global %"$TyDescrTy_PrimTyp_34" { i32 8, i32 20 }
@"$TyDescr_Bystr20_64" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Bystr20_Prim_63" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(String)_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_97" to i8*) }
@"$TyDescr_ADT_Option_String_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Option_String_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_ADT_Bool_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Bool_ADTTyp_Specl_118" to i8*) }
@"$TyDescr_Map_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_72"* @"$TyDescr_MapTyp_121" to i8*) }
@"$TyDescr_Map_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_72"* @"$TyDescr_MapTyp_122" to i8*) }
@"$TyDescr_Map_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_72"* @"$TyDescr_MapTyp_123" to i8*) }
@"$TyDescr_Addr_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_77"* @"$TyDescr_AddrFields_124" to i8*) }
@"$TyDescr_Option_ADTTyp_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_66" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_108", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_65"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_65"*], [3 x %"$TyDescrTy_ADTTyp_Specl_65"*]* @"$TyDescr_Option_ADTTyp_m_specls_107", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_80" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_74"]
@"$TyDescr_ADT_Some_81" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_81", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_84" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_84", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_67"*] [%"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_82", %"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_85"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_74"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_65" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_67"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_67"*], [2 x %"$TyDescrTy_ADTTyp_Constr_67"*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_66"* @"$TyDescr_Option_ADTTyp_79" }
@"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_89" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_75"]
@"$TyDescr_ADT_Some_90" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_90", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_89", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_92" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_93" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_94" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_93", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_92", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_95" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_67"*] [%"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_91", %"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_94"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_96" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_75"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_65" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_96", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_67"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_67"*], [2 x %"$TyDescrTy_ADTTyp_Constr_67"*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_66"* @"$TyDescr_Option_ADTTyp_79" }
@"$TyDescr_Option_Some_String_Constr_m_args_98" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_52"]
@"$TyDescr_ADT_Some_99" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_String_ADTTyp_Constr_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_99", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_String_Constr_m_args_98", i32 0, i32 0) }
@"$TyDescr_Option_None_String_Constr_m_args_101" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_102" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_String_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_102", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_String_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_67"*] [%"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Option_Some_String_ADTTyp_Constr_100", %"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Option_None_String_ADTTyp_Constr_103"]
@"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_52"]
@"$TyDescr_Option_String_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_65" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_67"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_67"*], [2 x %"$TyDescrTy_ADTTyp_Constr_67"*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_66"* @"$TyDescr_Option_ADTTyp_79" }
@"$TyDescr_Option_ADTTyp_m_specls_107" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_65"*] [%"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_88", %"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_97", %"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Option_String_ADTTyp_Specl_106"]
@"$TyDescr_ADT_Option_108" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_120", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_65"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_65"*], [1 x %"$TyDescrTy_ADTTyp_Specl_65"*]* @"$TyDescr_Bool_ADTTyp_m_specls_119", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_110" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_111" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_111", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_110", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_114" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_67" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_114", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_113", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_116" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_67"*] [%"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Bool_True_ADTTyp_Constr_112", %"$TyDescrTy_ADTTyp_Constr_67"* @"$TyDescr_Bool_False_ADTTyp_Constr_115"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_117" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_65" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_67"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_67"*], [2 x %"$TyDescrTy_ADTTyp_Constr_67"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_116", i32 0, i32 0), %"$TyDescrTy_ADTTyp_66"* @"$TyDescr_Bool_ADTTyp_109" }
@"$TyDescr_Bool_ADTTyp_m_specls_119" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_65"*] [%"$TyDescrTy_ADTTyp_Specl_65"* @"$TyDescr_Bool_ADTTyp_Specl_118"]
@"$TyDescr_ADT_Bool_120" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_121" = unnamed_addr constant %"$TyDescr_MapTyp_72" { %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_Map_74" }
@"$TyDescr_MapTyp_122" = unnamed_addr constant %"$TyDescr_MapTyp_72" { %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_Map_75" }
@"$TyDescr_MapTyp_123" = unnamed_addr constant %"$TyDescr_MapTyp_72" { %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_String_52" }
@"$TyDescr_AddrFields_124" = unnamed_addr constant %"$TyDescr_AddrTyp_77" { i32 -1, %"$TyDescr_AddrFieldTyp_76"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_191" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_193" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_206" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_218" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_230" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_242" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_259" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_264" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_267" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_299" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_304" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_307" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_314" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_345" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_346" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_371" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_428" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_439" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_463" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_464" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_489" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_546" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_557" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_572" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_596" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_607" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_618" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_622" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_696" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_728" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_732" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_770" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_791" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_812" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_823" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_827" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_873" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_884" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_895" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_912" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_936" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_947" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_958" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_969" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_975" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1051" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_1099" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1110" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1146" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1157" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1188" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1202" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1225" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_1236" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1247" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1253" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1291" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1340" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1362" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1382" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1393" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1399" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1437" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1486" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_1508" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_1528" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1539" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_1545" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1583" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1632" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_1654" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_1673" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1694" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_1705" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1716" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1722" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1760" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1809" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1831" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1851" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1855" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1896" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_1918" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1929" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1935" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1973" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_1995" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2006" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_2012" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2050" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_2072" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2083" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_2094" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_2111" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2135" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_2146" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2157" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_2163" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2201" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2250" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_2272" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_2292" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2303" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_2309" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2347" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_2396" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_2418" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_2450" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2473" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_2474" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2560" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2571" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_2606" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2629" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_2640" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_2641" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2699" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2748" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_2770" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_2789" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2810" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_2811" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_2909" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2932" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_2933" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3032" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3046" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3069" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_3080" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3084" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3177" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_3225" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_3304" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3327" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_3328" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_3426" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_3449" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_3450" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3528" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_3548" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3559" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3726" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_3748" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_3770" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_3792" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_3812" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3823" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3834" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3845" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3856" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3867" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_3878" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3889" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3900" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3911" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_4154" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4177" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_4188" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_4199" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_4210" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_4221" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_4232" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_4243" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_4254" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_4265" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_4271" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4290" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4309" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4328" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4352" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_4363" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_4374" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_4385" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_4678" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_4689" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_4732" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4755" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_4766" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4770" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_4815" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4836" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_4847" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4851" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [23 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", %_TyDescrTy_Typ* @"$TyDescr_Event_58", %_TyDescrTy_Typ* @"$TyDescr_Int64_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_78", %_TyDescrTy_Typ* @"$TyDescr_Map_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_64", %_TyDescrTy_Typ* @"$TyDescr_Uint256_50", %_TyDescrTy_Typ* @"$TyDescr_Uint32_38", %_TyDescrTy_Typ* @"$TyDescr_Map_74", %_TyDescrTy_Typ* @"$TyDescr_Uint64_42", %_TyDescrTy_Typ* @"$TyDescr_Bnum_54", %_TyDescrTy_Typ* @"$TyDescr_Uint128_46", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", %_TyDescrTy_Typ* @"$TyDescr_Int256_48", %_TyDescrTy_Typ* @"$TyDescr_Int128_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr_62", %_TyDescrTy_Typ* @"$TyDescr_Message_56", %_TyDescrTy_Typ* @"$TyDescr_Int32_36"]
@_tydescr_table_length = constant i32 23
@"$pname__scilla_version_4896" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_4897" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_4898" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_4896", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_38" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_4897", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_64" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_4898", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_54" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_4899" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4900" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4901" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t1_4902" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4899", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4900", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4901", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t1_4903" = unnamed_addr constant [2 x i8] c"t1"
@"$tpname__amount_4904" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4905" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4906" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t2_4907" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4904", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4905", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4906", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t2_4908" = unnamed_addr constant [2 x i8] c"t2"
@"$tpname__amount_4909" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4910" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4911" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t3_4912" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4909", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4910", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4911", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t3_4913" = unnamed_addr constant [2 x i8] c"t3"
@"$tpname__amount_4914" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4915" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4916" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t4_4917" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4914", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4915", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4916", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t4_4918" = unnamed_addr constant [2 x i8] c"t4"
@"$tpname__amount_4919" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4920" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4921" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t5_4922" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4919", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4920", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4921", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t5_4923" = unnamed_addr constant [2 x i8] c"t5"
@"$tpname__amount_4924" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4925" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4926" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t6_4927" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4924", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4925", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4926", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t6_4928" = unnamed_addr constant [2 x i8] c"t6"
@"$tpname__amount_4929" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4930" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4931" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t7_4932" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4929", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4930", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4931", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t7_4933" = unnamed_addr constant [2 x i8] c"t7"
@"$tpname__amount_4934" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4935" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4936" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t8_4937" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4934", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4935", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4936", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t8_4938" = unnamed_addr constant [2 x i8] c"t8"
@"$tpname__amount_4939" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4940" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4941" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t9_4942" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4939", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4940", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4941", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t9_4943" = unnamed_addr constant [2 x i8] c"t9"
@"$tpname__amount_4944" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4945" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4946" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t10_4947" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4944", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4945", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4946", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t10_4948" = unnamed_addr constant [3 x i8] c"t10"
@"$tpname__amount_4949" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4950" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4951" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t11_4952" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4949", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4950", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4951", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t11_4953" = unnamed_addr constant [3 x i8] c"t11"
@"$tpname__amount_4954" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4955" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4956" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t12_4957" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4954", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4955", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4956", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t12_4958" = unnamed_addr constant [3 x i8] c"t12"
@"$tpname__amount_4959" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4960" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4961" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t13_4962" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4959", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4960", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4961", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t13_4963" = unnamed_addr constant [3 x i8] c"t13"
@"$tpname__amount_4964" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4965" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4966" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t14_4967" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4964", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4965", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4966", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t14_4968" = unnamed_addr constant [3 x i8] c"t14"
@"$tpname__amount_4969" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4970" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4971" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t15_4972" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4969", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4970", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4971", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t15_4973" = unnamed_addr constant [3 x i8] c"t15"
@"$tpname__amount_4974" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4975" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4976" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t16_4977" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4974", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4975", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4976", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t16_4978" = unnamed_addr constant [3 x i8] c"t16"
@"$tpname__amount_4979" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4980" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4981" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t17_4982" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4979", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4980", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4981", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t17_4983" = unnamed_addr constant [3 x i8] c"t17"
@"$tpname__amount_4984" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4985" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4986" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t18_4987" = unnamed_addr constant [3 x %"$ParamDescr_4894"] [%"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4984", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4985", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4894" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4986", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t18_4988" = unnamed_addr constant [3 x i8] c"t18"
@_transition_parameters = constant [18 x %"$TransDescr_4895"] [%"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_4903", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t1_4902", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t2_4908", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t2_4907", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t3_4913", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t3_4912", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t4_4918", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t4_4917", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t5_4923", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t5_4922", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t6_4928", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t6_4927", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t7_4933", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t7_4932", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t8_4938", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t8_4937", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t9_4943", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t9_4942", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t10_4948", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t10_4947", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t11_4953", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t11_4952", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t12_4958", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t12_4957", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t13_4963", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t13_4962", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t14_4968", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t14_4967", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t15_4973", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t15_4972", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t16_4978", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t16_4977", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t17_4983", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t17_4982", i32 0, i32 0) }, %"$TransDescr_4895" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t18_4988", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4894"* getelementptr inbounds ([3 x %"$ParamDescr_4894"], [3 x %"$ParamDescr_4894"]* @"$tparams_t18_4987", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 18

define internal %TName_Bool* @"$fundef_27"(%"$$fundef_27_env_125"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_27_env_b_138" = getelementptr inbounds %"$$fundef_27_env_125", %"$$fundef_27_env_125"* %0, i32 0, i32 0
  %"$b_envload_139" = load %TName_Bool*, %TName_Bool** %"$$fundef_27_env_b_138", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_139", %TName_Bool** %b, align 8
  %"$retval_28" = alloca %TName_Bool*, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 2, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %entry
  %"$consume_144" = sub i64 %"$gasrem_140", 2
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$b_146" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_147" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_146", i32 0, i32 0
  %"$b_tag_148" = load i8, i8* %"$b_tag_147", align 1
  switch i8 %"$b_tag_148", label %"$empty_default_149" [
    i8 1, label %"$False_150"
    i8 0, label %"$True_160"
  ]

"$False_150":                                     ; preds = %"$have_gas_143"
  %"$b_151" = bitcast %TName_Bool* %"$b_146" to %CName_False*
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$False_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$False_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$adtval_157_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_157_salloc" = call i8* @_salloc(i8* %"$adtval_157_load", i64 1)
  %"$adtval_157" = bitcast i8* %"$adtval_157_salloc" to %CName_False*
  %"$adtgep_158" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_157", i32 0, i32 0
  store i8 1, i8* %"$adtgep_158", align 1
  %"$adtptr_159" = bitcast %CName_False* %"$adtval_157" to %TName_Bool*
  store %TName_Bool* %"$adtptr_159", %TName_Bool** %"$retval_28", align 8
  br label %"$matchsucc_145"

"$True_160":                                      ; preds = %"$have_gas_143"
  %"$b_161" = bitcast %TName_Bool* %"$b_146" to %CName_True*
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$True_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$True_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_28", align 8
  br label %"$matchsucc_145"

"$empty_default_149":                             ; preds = %"$have_gas_143"
  br label %"$matchsucc_145"

"$matchsucc_145":                                 ; preds = %"$have_gas_165", %"$have_gas_155", %"$empty_default_149"
  %"$$retval_28_167" = load %TName_Bool*, %TName_Bool** %"$retval_28", align 8
  ret %TName_Bool* %"$$retval_28_167"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_126"* %0, %TName_Bool* %1) {
entry:
  %"$retval_26" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %entry
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$$fundef_27_envp_132_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_132_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_132_load", i64 8)
  %"$$fundef_27_envp_132" = bitcast i8* %"$$fundef_27_envp_132_salloc" to %"$$fundef_27_env_125"*
  %"$$fundef_27_env_voidp_134" = bitcast %"$$fundef_27_env_125"* %"$$fundef_27_envp_132" to i8*
  %"$$fundef_27_cloval_135" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_27_env_125"*, %TName_Bool*)* @"$fundef_27" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_134", 1
  %"$$fundef_27_env_b_136" = getelementptr inbounds %"$$fundef_27_env_125", %"$$fundef_27_env_125"* %"$$fundef_27_envp_132", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_27_env_b_136", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_27_cloval_135", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_26", align 8
  %"$$retval_26_137" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_26", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_26_137"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 5, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %entry
  %"$consume_172" = sub i64 %"$gasrem_168", 5
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 7, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 7
  store i64 %"$consume_177", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_25_env_126"*, %TName_Bool*)* @"$fundef_25" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$f_s1_29" = alloca %String, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_191", i32 0, i32 0), i32 3 }, %String* %"$f_s1_29", align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$$f_s1_29_194" = load %String, %String* %"$f_s1_29", align 8
  %"$update_value_195" = alloca %String, align 8
  store %String %"$$f_s1_29_194", %String* %"$update_value_195", align 8
  %"$update_value_196" = bitcast %String* %"$update_value_195" to i8*
  call void @_update_field(i8* %"$execptr_load_192", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_193", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i8* %"$update_value_196")
  %"$f_m1_30" = alloca %Map_String_String*, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_189"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_203" = call i8* @_new_empty_map(i8* %"$execptr_load_202")
  %"$_new_empty_map_204" = bitcast i8* %"$_new_empty_map_call_203" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_204", %Map_String_String** %"$f_m1_30", align 8
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  %"$$f_m1_30_207" = load %Map_String_String*, %Map_String_String** %"$f_m1_30", align 8
  %"$update_value_208" = bitcast %Map_String_String* %"$$f_m1_30_207" to i8*
  call void @_update_field(i8* %"$execptr_load_205", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_206", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_208")
  %"$f_m2_31" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_200"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_215" = call i8* @_new_empty_map(i8* %"$execptr_load_214")
  %"$_new_empty_map_216" = bitcast i8* %"$_new_empty_map_call_215" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_216", %"Map_String_Map_(String)_(String)"** %"$f_m2_31", align 8
  %"$execptr_load_217" = load i8*, i8** @_execptr, align 8
  %"$$f_m2_31_219" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_31", align 8
  %"$update_value_220" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_31_219" to i8*
  call void @_update_field(i8* %"$execptr_load_217", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_218", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_220")
  %"$f_m3_32" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_212"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_227" = call i8* @_new_empty_map(i8* %"$execptr_load_226")
  %"$_new_empty_map_228" = bitcast i8* %"$_new_empty_map_call_227" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_228", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", align 8
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$$f_m3_32_231" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", align 8
  %"$update_value_232" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_32_231" to i8*
  call void @_update_field(i8* %"$execptr_load_229", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_232")
  %"$f_m_33" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_224"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$execptr_load_238" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_239" = call i8* @_new_empty_map(i8* %"$execptr_load_238")
  %"$_new_empty_map_240" = bitcast i8* %"$_new_empty_map_call_239" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_240", %"Map_String_Map_(String)_(String)"** %"$f_m_33", align 8
  %"$execptr_load_241" = load i8*, i8** @_execptr, align 8
  %"$$f_m_33_243" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_33", align 8
  %"$update_value_244" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_33_243" to i8*
  call void @_update_field(i8* %"$execptr_load_241", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_242", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_244")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$_origin_246", [20 x i8]* %"$_sender_247", %String %tname) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_246", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_247", align 1
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %entry
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$msgobj_258_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_258_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_258_salloc_load", i64 81)
  %"$msgobj_258_salloc" = bitcast i8* %"$msgobj_258_salloc_salloc" to [81 x i8]*
  %"$msgobj_258" = bitcast [81 x i8]* %"$msgobj_258_salloc" to i8*
  store i8 2, i8* %"$msgobj_258", align 1
  %"$msgobj_fname_260" = getelementptr i8, i8* %"$msgobj_258", i32 1
  %"$msgobj_fname_261" = bitcast i8* %"$msgobj_fname_260" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_259", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_261", align 8
  %"$msgobj_td_262" = getelementptr i8, i8* %"$msgobj_258", i32 17
  %"$msgobj_td_263" = bitcast i8* %"$msgobj_td_262" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_263", align 8
  %"$msgobj_v_265" = getelementptr i8, i8* %"$msgobj_258", i32 25
  %"$msgobj_v_266" = bitcast i8* %"$msgobj_v_265" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_264", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_266", align 8
  %"$msgobj_fname_268" = getelementptr i8, i8* %"$msgobj_258", i32 41
  %"$msgobj_fname_269" = bitcast i8* %"$msgobj_fname_268" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_267", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_269", align 8
  %"$msgobj_td_270" = getelementptr i8, i8* %"$msgobj_258", i32 57
  %"$msgobj_td_271" = bitcast i8* %"$msgobj_td_270" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_271", align 8
  %"$msgobj_v_272" = getelementptr i8, i8* %"$msgobj_258", i32 65
  %"$msgobj_v_273" = bitcast i8* %"$msgobj_v_272" to %String*
  store %String %tname, %String* %"$msgobj_v_273", align 8
  store i8* %"$msgobj_258", i8** %e, align 8
  %"$e_275" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_275")
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 %"$_literal_cost_call_277", %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_256"
  %"$consume_282" = sub i64 %"$gasrem_278", %"$_literal_cost_call_277"
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$execptr_load_283" = load i8*, i8** @_execptr, align 8
  %"$e_284" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_283", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_284")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$_origin_286", [20 x i8]* %"$_sender_287", %String %tname, %String %msg) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_286", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_287", align 1
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %entry
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$msgobj_298_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_298_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_298_salloc_load", i64 121)
  %"$msgobj_298_salloc" = bitcast i8* %"$msgobj_298_salloc_salloc" to [121 x i8]*
  %"$msgobj_298" = bitcast [121 x i8]* %"$msgobj_298_salloc" to i8*
  store i8 3, i8* %"$msgobj_298", align 1
  %"$msgobj_fname_300" = getelementptr i8, i8* %"$msgobj_298", i32 1
  %"$msgobj_fname_301" = bitcast i8* %"$msgobj_fname_300" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_299", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_301", align 8
  %"$msgobj_td_302" = getelementptr i8, i8* %"$msgobj_298", i32 17
  %"$msgobj_td_303" = bitcast i8* %"$msgobj_td_302" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_303", align 8
  %"$msgobj_v_305" = getelementptr i8, i8* %"$msgobj_298", i32 25
  %"$msgobj_v_306" = bitcast i8* %"$msgobj_v_305" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_304", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_306", align 8
  %"$msgobj_fname_308" = getelementptr i8, i8* %"$msgobj_298", i32 41
  %"$msgobj_fname_309" = bitcast i8* %"$msgobj_fname_308" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_307", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_309", align 8
  %"$msgobj_td_310" = getelementptr i8, i8* %"$msgobj_298", i32 57
  %"$msgobj_td_311" = bitcast i8* %"$msgobj_td_310" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_311", align 8
  %"$msgobj_v_312" = getelementptr i8, i8* %"$msgobj_298", i32 65
  %"$msgobj_v_313" = bitcast i8* %"$msgobj_v_312" to %String*
  store %String %tname, %String* %"$msgobj_v_313", align 8
  %"$msgobj_fname_315" = getelementptr i8, i8* %"$msgobj_298", i32 81
  %"$msgobj_fname_316" = bitcast i8* %"$msgobj_fname_315" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_314", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_316", align 8
  %"$msgobj_td_317" = getelementptr i8, i8* %"$msgobj_298", i32 97
  %"$msgobj_td_318" = bitcast i8* %"$msgobj_td_317" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_318", align 8
  %"$msgobj_v_319" = getelementptr i8, i8* %"$msgobj_298", i32 105
  %"$msgobj_v_320" = bitcast i8* %"$msgobj_v_319" to %String*
  store %String %msg, %String* %"$msgobj_v_320", align 8
  store i8* %"$msgobj_298", i8** %e, align 8
  %"$e_322" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_324" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_322")
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 %"$_literal_cost_call_324", %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_296"
  %"$consume_329" = sub i64 %"$gasrem_325", %"$_literal_cost_call_324"
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$execptr_load_330" = load i8*, i8** @_execptr, align 8
  %"$e_331" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_330", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_331")
  ret void
}

define internal void @"$t1_332"(%Uint128 %_amount, [20 x i8]* %"$_origin_333", [20 x i8]* %"$_sender_334") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_333", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_334", align 1
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %entry
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_345", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$f_call_348" = call i8* @_fetch_field(i8* %"$execptr_load_347", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_346", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i32 1)
  %"$f_349" = bitcast i8* %"$f_call_348" to %String*
  %"$f_350" = load %String, %String* %"$f_349", align 8
  store %String %"$f_350", %String* %f, align 8
  %"$_literal_cost_f_351" = alloca %String, align 8
  %"$f_352" = load %String, %String* %f, align 8
  store %String %"$f_352", %String* %"$_literal_cost_f_351", align 8
  %"$$_literal_cost_f_351_353" = bitcast %String* %"$_literal_cost_f_351" to i8*
  %"$_literal_cost_call_354" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_351_353")
  %"$gasadd_355" = add i64 %"$_literal_cost_call_354", 0
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 %"$gasadd_355", %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_343"
  %"$consume_360" = sub i64 %"$gasrem_356", %"$gasadd_355"
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_371", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_369"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_f_377" = alloca %String, align 8
  %"$f_378" = load %String, %String* %f, align 8
  store %String %"$f_378", %String* %"$_literal_cost_f_377", align 8
  %"$$_literal_cost_f_377_379" = bitcast %String* %"$_literal_cost_f_377" to i8*
  %"$_literal_cost_call_380" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_377_379")
  %"$_literal_cost_s_381" = alloca %String, align 8
  %"$s_382" = load %String, %String* %s, align 8
  store %String %"$s_382", %String* %"$_literal_cost_s_381", align 8
  %"$$_literal_cost_s_381_383" = bitcast %String* %"$_literal_cost_s_381" to i8*
  %"$_literal_cost_call_384" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_381_383")
  %"$gasmin_385" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_380", i64 %"$_literal_cost_call_384")
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 %"$gasmin_385", %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_375"
  %"$consume_390" = sub i64 %"$gasrem_386", %"$gasmin_385"
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$execptr_load_391" = load i8*, i8** @_execptr, align 8
  %"$f_392" = load %String, %String* %f, align 8
  %"$s_393" = load %String, %String* %s, align 8
  %"$eq_call_394" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_391", %String %"$f_392", %String %"$s_393")
  store %TName_Bool* %"$eq_call_394", %TName_Bool** %t, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 2, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_389"
  %"$consume_400" = sub i64 %"$gasrem_396", 2
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$t_402" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_403" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_402", i32 0, i32 0
  %"$t_tag_404" = load i8, i8* %"$t_tag_403", align 1
  switch i8 %"$t_tag_404", label %"$empty_default_405" [
    i8 1, label %"$False_406"
    i8 0, label %"$True_416"
  ]

"$False_406":                                     ; preds = %"$have_gas_399"
  %"$t_407" = bitcast %TName_Bool* %"$t_402" to %CName_False*
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$False_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$False_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$fail__origin_413" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_413", align 1
  %"$fail__sender_414" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_414", align 1
  %"$tname_415" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_413", [20 x i8]* %"$fail__sender_414", %String %"$tname_415")
  br label %"$matchsucc_401"

"$True_416":                                      ; preds = %"$have_gas_399"
  %"$t_417" = bitcast %TName_Bool* %"$t_402" to %CName_True*
  br label %"$matchsucc_401"

"$empty_default_405":                             ; preds = %"$have_gas_399"
  br label %"$matchsucc_401"

"$matchsucc_401":                                 ; preds = %"$True_416", %"$have_gas_411", %"$empty_default_405"
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$matchsucc_401"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$matchsucc_401"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_428", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$_literal_cost_s2_429" = alloca %String, align 8
  %"$s2_430" = load %String, %String* %s2, align 8
  store %String %"$s2_430", %String* %"$_literal_cost_s2_429", align 8
  %"$$_literal_cost_s2_429_431" = bitcast %String* %"$_literal_cost_s2_429" to i8*
  %"$_literal_cost_call_432" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s2_429_431")
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 %"$_literal_cost_call_432", %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_426"
  %"$consume_437" = sub i64 %"$gasrem_433", %"$_literal_cost_call_432"
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$execptr_load_438" = load i8*, i8** @_execptr, align 8
  %"$s2_440" = load %String, %String* %s2, align 8
  %"$update_value_441" = alloca %String, align 8
  store %String %"$s2_440", %String* %"$update_value_441", align 8
  %"$update_value_442" = bitcast %String* %"$update_value_441" to i8*
  call void @_update_field(i8* %"$execptr_load_438", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_439", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i8* %"$update_value_442")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) {
entry:
  %"$_amount_444" = getelementptr i8, i8* %0, i32 0
  %"$_amount_445" = bitcast i8* %"$_amount_444" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_445", align 8
  %"$_origin_446" = getelementptr i8, i8* %0, i32 16
  %"$_origin_447" = bitcast i8* %"$_origin_446" to [20 x i8]*
  %"$_sender_448" = getelementptr i8, i8* %0, i32 36
  %"$_sender_449" = bitcast i8* %"$_sender_448" to [20 x i8]*
  call void @"$t1_332"(%Uint128 %_amount, [20 x i8]* %"$_origin_447", [20 x i8]* %"$_sender_449")
  ret void
}

define internal void @"$t2_450"(%Uint128 %_amount, [20 x i8]* %"$_origin_451", [20 x i8]* %"$_sender_452") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_451", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_452", align 1
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %entry
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_463", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$f_call_466" = call i8* @_fetch_field(i8* %"$execptr_load_465", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_464", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i32 1)
  %"$f_467" = bitcast i8* %"$f_call_466" to %String*
  %"$f_468" = load %String, %String* %"$f_467", align 8
  store %String %"$f_468", %String* %f, align 8
  %"$_literal_cost_f_469" = alloca %String, align 8
  %"$f_470" = load %String, %String* %f, align 8
  store %String %"$f_470", %String* %"$_literal_cost_f_469", align 8
  %"$$_literal_cost_f_469_471" = bitcast %String* %"$_literal_cost_f_469" to i8*
  %"$_literal_cost_call_472" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_469_471")
  %"$gasadd_473" = add i64 %"$_literal_cost_call_472", 0
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 %"$gasadd_473", %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_461"
  %"$consume_478" = sub i64 %"$gasrem_474", %"$gasadd_473"
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_489", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_487"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_f_495" = alloca %String, align 8
  %"$f_496" = load %String, %String* %f, align 8
  store %String %"$f_496", %String* %"$_literal_cost_f_495", align 8
  %"$$_literal_cost_f_495_497" = bitcast %String* %"$_literal_cost_f_495" to i8*
  %"$_literal_cost_call_498" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_495_497")
  %"$_literal_cost_s_499" = alloca %String, align 8
  %"$s_500" = load %String, %String* %s, align 8
  store %String %"$s_500", %String* %"$_literal_cost_s_499", align 8
  %"$$_literal_cost_s_499_501" = bitcast %String* %"$_literal_cost_s_499" to i8*
  %"$_literal_cost_call_502" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_499_501")
  %"$gasmin_503" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_498", i64 %"$_literal_cost_call_502")
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 %"$gasmin_503", %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_493"
  %"$consume_508" = sub i64 %"$gasrem_504", %"$gasmin_503"
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$execptr_load_509" = load i8*, i8** @_execptr, align 8
  %"$f_510" = load %String, %String* %f, align 8
  %"$s_511" = load %String, %String* %s, align 8
  %"$eq_call_512" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_509", %String %"$f_510", %String %"$s_511")
  store %TName_Bool* %"$eq_call_512", %TName_Bool** %t, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 2, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_507"
  %"$consume_518" = sub i64 %"$gasrem_514", 2
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$t_520" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_521" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_520", i32 0, i32 0
  %"$t_tag_522" = load i8, i8* %"$t_tag_521", align 1
  switch i8 %"$t_tag_522", label %"$empty_default_523" [
    i8 1, label %"$False_524"
    i8 0, label %"$True_534"
  ]

"$False_524":                                     ; preds = %"$have_gas_517"
  %"$t_525" = bitcast %TName_Bool* %"$t_520" to %CName_False*
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$False_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$False_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$fail__origin_531" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_531", align 1
  %"$fail__sender_532" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_532", align 1
  %"$tname_533" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_531", [20 x i8]* %"$fail__sender_532", %String %"$tname_533")
  br label %"$matchsucc_519"

"$True_534":                                      ; preds = %"$have_gas_517"
  %"$t_535" = bitcast %TName_Bool* %"$t_520" to %CName_True*
  br label %"$matchsucc_519"

"$empty_default_523":                             ; preds = %"$have_gas_517"
  br label %"$matchsucc_519"

"$matchsucc_519":                                 ; preds = %"$True_534", %"$have_gas_529", %"$empty_default_523"
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$matchsucc_519"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$matchsucc_519"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_546", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_544"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %val1 = alloca %String, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_557", i32 0, i32 0), i32 3 }, %String* %val1, align 8
  %"$_literal_cost_val1_558" = alloca %String, align 8
  %"$val1_559" = load %String, %String* %val1, align 8
  store %String %"$val1_559", %String* %"$_literal_cost_val1_558", align 8
  %"$$_literal_cost_val1_558_560" = bitcast %String* %"$_literal_cost_val1_558" to i8*
  %"$_literal_cost_call_561" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_val1_558_560")
  %"$gasadd_562" = add i64 %"$_literal_cost_call_561", 1
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 %"$gasadd_562", %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_555"
  %"$consume_567" = sub i64 %"$gasrem_563", %"$gasadd_562"
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$indices_buf_568_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_568_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_568_salloc_load", i64 16)
  %"$indices_buf_568_salloc" = bitcast i8* %"$indices_buf_568_salloc_salloc" to [16 x i8]*
  %"$indices_buf_568" = bitcast [16 x i8]* %"$indices_buf_568_salloc" to i8*
  %"$key1_569" = load %String, %String* %key1, align 8
  %"$indices_gep_570" = getelementptr i8, i8* %"$indices_buf_568", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_570" to %String*
  store %String %"$key1_569", %String* %indices_cast, align 8
  %"$execptr_load_571" = load i8*, i8** @_execptr, align 8
  %"$val1_573" = load %String, %String* %val1, align 8
  %"$update_value_574" = alloca %String, align 8
  store %String %"$val1_573", %String* %"$update_value_574", align 8
  %"$update_value_575" = bitcast %String* %"$update_value_574" to i8*
  call void @_update_field(i8* %"$execptr_load_571", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_572", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_568", i8* %"$update_value_575")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_577" = getelementptr i8, i8* %0, i32 0
  %"$_amount_578" = bitcast i8* %"$_amount_577" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_578", align 8
  %"$_origin_579" = getelementptr i8, i8* %0, i32 16
  %"$_origin_580" = bitcast i8* %"$_origin_579" to [20 x i8]*
  %"$_sender_581" = getelementptr i8, i8* %0, i32 36
  %"$_sender_582" = bitcast i8* %"$_sender_581" to [20 x i8]*
  call void @"$t2_450"(%Uint128 %_amount, [20 x i8]* %"$_origin_580", [20 x i8]* %"$_sender_582")
  ret void
}

define internal void @"$t3_583"(%Uint128 %_amount, [20 x i8]* %"$_origin_584", [20 x i8]* %"$_sender_585") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_584", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_585", align 1
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %entry
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_596", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_594"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_600"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_607", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_605"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_611"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_618", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %val1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_619_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_619_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_619_salloc_load", i64 16)
  %"$indices_buf_619_salloc" = bitcast i8* %"$indices_buf_619_salloc_salloc" to [16 x i8]*
  %"$indices_buf_619" = bitcast [16 x i8]* %"$indices_buf_619_salloc" to i8*
  %"$key1_620" = load %String, %String* %key1, align 8
  %"$indices_gep_621" = getelementptr i8, i8* %"$indices_buf_619", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_621" to %String*
  store %String %"$key1_620", %String* %indices_cast, align 8
  %"$execptr_load_623" = load i8*, i8** @_execptr, align 8
  %"$val1_call_624" = call i8* @_fetch_field(i8* %"$execptr_load_623", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_622", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_619", i32 1)
  %"$val1_625" = bitcast i8* %"$val1_call_624" to %TName_Option_String*
  store %TName_Option_String* %"$val1_625", %TName_Option_String** %val1, align 8
  %"$val1_626" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$$val1_626_627" = bitcast %TName_Option_String* %"$val1_626" to i8*
  %"$_literal_cost_call_628" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$val1_626_627")
  %"$gasadd_629" = add i64 %"$_literal_cost_call_628", 0
  %"$gasadd_630" = add i64 %"$gasadd_629", 1
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 %"$gasadd_630", %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_616"
  %"$consume_635" = sub i64 %"$gasrem_631", %"$gasadd_630"
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 2, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_634"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_634"
  %"$consume_640" = sub i64 %"$gasrem_636", 2
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$val1_642" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$val1_tag_643" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_642", i32 0, i32 0
  %"$val1_tag_644" = load i8, i8* %"$val1_tag_643", align 1
  switch i8 %"$val1_tag_644", label %"$empty_default_645" [
    i8 0, label %"$Some_646"
    i8 1, label %"$None_708"
  ]

"$Some_646":                                      ; preds = %"$have_gas_639"
  %"$val1_647" = bitcast %TName_Option_String* %"$val1_642" to %CName_Some_String*
  %"$val_gep_648" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_647", i32 0, i32 1
  %"$val_load_649" = load %String, %String* %"$val_gep_648", align 8
  %val = alloca %String, align 8
  store %String %"$val_load_649", %String* %val, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$Some_646"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$Some_646"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_val_655" = alloca %String, align 8
  %"$val_656" = load %String, %String* %val, align 8
  store %String %"$val_656", %String* %"$_literal_cost_val_655", align 8
  %"$$_literal_cost_val_655_657" = bitcast %String* %"$_literal_cost_val_655" to i8*
  %"$_literal_cost_call_658" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_val_655_657")
  %"$_literal_cost_s_659" = alloca %String, align 8
  %"$s_660" = load %String, %String* %s, align 8
  store %String %"$s_660", %String* %"$_literal_cost_s_659", align 8
  %"$$_literal_cost_s_659_661" = bitcast %String* %"$_literal_cost_s_659" to i8*
  %"$_literal_cost_call_662" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_659_661")
  %"$gasmin_663" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_658", i64 %"$_literal_cost_call_662")
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 %"$gasmin_663", %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_653"
  %"$consume_668" = sub i64 %"$gasrem_664", %"$gasmin_663"
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$execptr_load_669" = load i8*, i8** @_execptr, align 8
  %"$val_670" = load %String, %String* %val, align 8
  %"$s_671" = load %String, %String* %s, align 8
  %"$eq_call_672" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_669", %String %"$val_670", %String %"$s_671")
  store %TName_Bool* %"$eq_call_672", %TName_Bool** %t, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 2, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_667"
  %"$consume_678" = sub i64 %"$gasrem_674", 2
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$t_680" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_681" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_680", i32 0, i32 0
  %"$t_tag_682" = load i8, i8* %"$t_tag_681", align 1
  switch i8 %"$t_tag_682", label %"$empty_default_683" [
    i8 1, label %"$False_684"
    i8 0, label %"$True_706"
  ]

"$False_684":                                     ; preds = %"$have_gas_677"
  %"$t_685" = bitcast %TName_Bool* %"$t_680" to %CName_False*
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$False_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$False_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_696", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_694"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$fail_msg__origin_702" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_702", align 1
  %"$fail_msg__sender_703" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_703", align 1
  %"$tname_704" = load %String, %String* %tname, align 8
  %"$m_705" = load %String, %String* %m, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_702", [20 x i8]* %"$fail_msg__sender_703", %String %"$tname_704", %String %"$m_705")
  br label %"$matchsucc_679"

"$True_706":                                      ; preds = %"$have_gas_677"
  %"$t_707" = bitcast %TName_Bool* %"$t_680" to %CName_True*
  br label %"$matchsucc_679"

"$empty_default_683":                             ; preds = %"$have_gas_677"
  br label %"$matchsucc_679"

"$matchsucc_679":                                 ; preds = %"$True_706", %"$have_gas_700", %"$empty_default_683"
  br label %"$matchsucc_641"

"$None_708":                                      ; preds = %"$have_gas_639"
  %"$val1_709" = bitcast %TName_Option_String* %"$val1_642" to %CName_None_String*
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$None_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$None_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %"$fail__origin_715" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_715", align 1
  %"$fail__sender_716" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_716", align 1
  %"$tname_717" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_715", [20 x i8]* %"$fail__sender_716", %String %"$tname_717")
  br label %"$matchsucc_641"

"$empty_default_645":                             ; preds = %"$have_gas_639"
  br label %"$matchsucc_641"

"$matchsucc_641":                                 ; preds = %"$have_gas_713", %"$matchsucc_679", %"$empty_default_645"
  %"$gasrem_718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_719" = icmp ugt i64 1, %"$gasrem_718"
  br i1 %"$gascmp_719", label %"$out_of_gas_720", label %"$have_gas_721"

"$out_of_gas_720":                                ; preds = %"$matchsucc_641"
  call void @_out_of_gas()
  br label %"$have_gas_721"

"$have_gas_721":                                  ; preds = %"$out_of_gas_720", %"$matchsucc_641"
  %"$consume_722" = sub i64 %"$gasrem_718", 1
  store i64 %"$consume_722", i64* @_gasrem, align 8
  %key2 = alloca %String, align 8
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_721"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_721"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_728", i32 0, i32 0), i32 4 }, %String* %key2, align 8
  %val2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_729_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_729_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_729_salloc_load", i64 16)
  %"$indices_buf_729_salloc" = bitcast i8* %"$indices_buf_729_salloc_salloc" to [16 x i8]*
  %"$indices_buf_729" = bitcast [16 x i8]* %"$indices_buf_729_salloc" to i8*
  %"$key2_730" = load %String, %String* %key2, align 8
  %"$indices_gep_731" = getelementptr i8, i8* %"$indices_buf_729", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_731" to %String*
  store %String %"$key2_730", %String* %indices_cast1, align 8
  %"$execptr_load_733" = load i8*, i8** @_execptr, align 8
  %"$val2_call_734" = call i8* @_fetch_field(i8* %"$execptr_load_733", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_732", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_729", i32 1)
  %"$val2_735" = bitcast i8* %"$val2_call_734" to %TName_Option_String*
  store %TName_Option_String* %"$val2_735", %TName_Option_String** %val2, align 8
  %"$val2_736" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$$val2_736_737" = bitcast %TName_Option_String* %"$val2_736" to i8*
  %"$_literal_cost_call_738" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$val2_736_737")
  %"$gasadd_739" = add i64 %"$_literal_cost_call_738", 0
  %"$gasadd_740" = add i64 %"$gasadd_739", 1
  %"$gasrem_741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_742" = icmp ugt i64 %"$gasadd_740", %"$gasrem_741"
  br i1 %"$gascmp_742", label %"$out_of_gas_743", label %"$have_gas_744"

"$out_of_gas_743":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_744"

"$have_gas_744":                                  ; preds = %"$out_of_gas_743", %"$have_gas_726"
  %"$consume_745" = sub i64 %"$gasrem_741", %"$gasadd_740"
  store i64 %"$consume_745", i64* @_gasrem, align 8
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 2, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_744"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_744"
  %"$consume_750" = sub i64 %"$gasrem_746", 2
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$val2_752" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$val2_tag_753" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_752", i32 0, i32 0
  %"$val2_tag_754" = load i8, i8* %"$val2_tag_753", align 1
  switch i8 %"$val2_tag_754", label %"$empty_default_755" [
    i8 0, label %"$Some_756"
    i8 1, label %"$None_780"
  ]

"$Some_756":                                      ; preds = %"$have_gas_749"
  %"$val2_757" = bitcast %TName_Option_String* %"$val2_752" to %CName_Some_String*
  %"$$val2_15_gep_758" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_757", i32 0, i32 1
  %"$$val2_15_load_759" = load %String, %String* %"$$val2_15_gep_758", align 8
  %"$val2_15" = alloca %String, align 8
  store %String %"$$val2_15_load_759", %String* %"$val2_15", align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$Some_756"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$Some_756"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_770", i32 0, i32 0), i32 25 }, %String* %m2, align 8
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_768"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %"$fail_msg__origin_776" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_776", align 1
  %"$fail_msg__sender_777" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_777", align 1
  %"$tname_778" = load %String, %String* %tname, align 8
  %"$m_779" = load %String, %String* %m2, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_776", [20 x i8]* %"$fail_msg__sender_777", %String %"$tname_778", %String %"$m_779")
  br label %"$matchsucc_751"

"$None_780":                                      ; preds = %"$have_gas_749"
  %"$val2_781" = bitcast %TName_Option_String* %"$val2_752" to %CName_None_String*
  br label %"$matchsucc_751"

"$empty_default_755":                             ; preds = %"$have_gas_749"
  br label %"$matchsucc_751"

"$matchsucc_751":                                 ; preds = %"$None_780", %"$have_gas_774", %"$empty_default_755"
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$matchsucc_751"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$matchsucc_751"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$indices_buf_787_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_787_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_787_salloc_load", i64 16)
  %"$indices_buf_787_salloc" = bitcast i8* %"$indices_buf_787_salloc_salloc" to [16 x i8]*
  %"$indices_buf_787" = bitcast [16 x i8]* %"$indices_buf_787_salloc" to i8*
  %"$key1_788" = load %String, %String* %key1, align 8
  %"$indices_gep_789" = getelementptr i8, i8* %"$indices_buf_787", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_789" to %String*
  store %String %"$key1_788", %String* %indices_cast3, align 8
  %"$execptr_load_790" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_790", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_791", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_787", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_793" = getelementptr i8, i8* %0, i32 0
  %"$_amount_794" = bitcast i8* %"$_amount_793" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_794", align 8
  %"$_origin_795" = getelementptr i8, i8* %0, i32 16
  %"$_origin_796" = bitcast i8* %"$_origin_795" to [20 x i8]*
  %"$_sender_797" = getelementptr i8, i8* %0, i32 36
  %"$_sender_798" = bitcast i8* %"$_sender_797" to [20 x i8]*
  call void @"$t3_583"(%Uint128 %_amount, [20 x i8]* %"$_origin_796", [20 x i8]* %"$_sender_798")
  ret void
}

define internal void @"$t4_799"(%Uint128 %_amount, [20 x i8]* %"$_origin_800", [20 x i8]* %"$_sender_801") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_800", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_801", align 1
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %entry
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_812", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_810"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_823", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %key1_found = alloca %TName_Bool*, align 8
  %"$indices_buf_824_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_824_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_824_salloc_load", i64 16)
  %"$indices_buf_824_salloc" = bitcast i8* %"$indices_buf_824_salloc_salloc" to [16 x i8]*
  %"$indices_buf_824" = bitcast [16 x i8]* %"$indices_buf_824_salloc" to i8*
  %"$key1_825" = load %String, %String* %key1, align 8
  %"$indices_gep_826" = getelementptr i8, i8* %"$indices_buf_824", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_826" to %String*
  store %String %"$key1_825", %String* %indices_cast, align 8
  %"$execptr_load_828" = load i8*, i8** @_execptr, align 8
  %"$key1_found_call_829" = call i8* @_fetch_field(i8* %"$execptr_load_828", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_827", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_824", i32 0)
  %"$key1_found_830" = bitcast i8* %"$key1_found_call_829" to %TName_Bool*
  store %TName_Bool* %"$key1_found_830", %TName_Bool** %key1_found, align 8
  %"$key1_found_831" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$$key1_found_831_832" = bitcast %TName_Bool* %"$key1_found_831" to i8*
  %"$_literal_cost_call_833" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", i8* %"$$key1_found_831_832")
  %"$gasadd_834" = add i64 %"$_literal_cost_call_833", 0
  %"$gasadd_835" = add i64 %"$gasadd_834", 1
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 %"$gasadd_835", %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_821"
  %"$consume_840" = sub i64 %"$gasrem_836", %"$gasadd_835"
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 2, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %"$have_gas_839"
  %"$consume_845" = sub i64 %"$gasrem_841", 2
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %"$key1_found_847" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$key1_found_tag_848" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_847", i32 0, i32 0
  %"$key1_found_tag_849" = load i8, i8* %"$key1_found_tag_848", align 1
  switch i8 %"$key1_found_tag_849", label %"$empty_default_850" [
    i8 0, label %"$True_851"
    i8 1, label %"$False_861"
  ]

"$True_851":                                      ; preds = %"$have_gas_844"
  %"$key1_found_852" = bitcast %TName_Bool* %"$key1_found_847" to %CName_True*
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$True_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$True_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$fail__origin_858" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_858", align 1
  %"$fail__sender_859" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_859", align 1
  %"$tname_860" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_858", [20 x i8]* %"$fail__sender_859", %String %"$tname_860")
  br label %"$matchsucc_846"

"$False_861":                                     ; preds = %"$have_gas_844"
  %"$key1_found_862" = bitcast %TName_Bool* %"$key1_found_847" to %CName_False*
  br label %"$matchsucc_846"

"$empty_default_850":                             ; preds = %"$have_gas_844"
  br label %"$matchsucc_846"

"$matchsucc_846":                                 ; preds = %"$False_861", %"$have_gas_856", %"$empty_default_850"
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$matchsucc_846"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$matchsucc_846"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_873", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 1, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %"$have_gas_871"
  %"$consume_878" = sub i64 %"$gasrem_874", 1
  store i64 %"$consume_878", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_877"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_877"
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_884", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 1, %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_882"
  %"$consume_889" = sub i64 %"$gasrem_885", 1
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_888"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_895", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_896" = alloca %String, align 8
  %"$s_897" = load %String, %String* %s, align 8
  store %String %"$s_897", %String* %"$_literal_cost_s_896", align 8
  %"$$_literal_cost_s_896_898" = bitcast %String* %"$_literal_cost_s_896" to i8*
  %"$_literal_cost_call_899" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_896_898")
  %"$gasadd_900" = add i64 %"$_literal_cost_call_899", 2
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 %"$gasadd_900", %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_893"
  %"$consume_905" = sub i64 %"$gasrem_901", %"$gasadd_900"
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$indices_buf_906_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_906_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_906_salloc_load", i64 32)
  %"$indices_buf_906_salloc" = bitcast i8* %"$indices_buf_906_salloc_salloc" to [32 x i8]*
  %"$indices_buf_906" = bitcast [32 x i8]* %"$indices_buf_906_salloc" to i8*
  %"$key1a_907" = load %String, %String* %key1a, align 8
  %"$indices_gep_908" = getelementptr i8, i8* %"$indices_buf_906", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_908" to %String*
  store %String %"$key1a_907", %String* %indices_cast1, align 8
  %"$key2a_909" = load %String, %String* %key2a, align 8
  %"$indices_gep_910" = getelementptr i8, i8* %"$indices_buf_906", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_910" to %String*
  store %String %"$key2a_909", %String* %indices_cast2, align 8
  %"$execptr_load_911" = load i8*, i8** @_execptr, align 8
  %"$s_913" = load %String, %String* %s, align 8
  %"$update_value_914" = alloca %String, align 8
  store %String %"$s_913", %String* %"$update_value_914", align 8
  %"$update_value_915" = bitcast %String* %"$update_value_914" to i8*
  call void @_update_field(i8* %"$execptr_load_911", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_912", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_906", i8* %"$update_value_915")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_917" = getelementptr i8, i8* %0, i32 0
  %"$_amount_918" = bitcast i8* %"$_amount_917" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_918", align 8
  %"$_origin_919" = getelementptr i8, i8* %0, i32 16
  %"$_origin_920" = bitcast i8* %"$_origin_919" to [20 x i8]*
  %"$_sender_921" = getelementptr i8, i8* %0, i32 36
  %"$_sender_922" = bitcast i8* %"$_sender_921" to [20 x i8]*
  call void @"$t4_799"(%Uint128 %_amount, [20 x i8]* %"$_origin_920", [20 x i8]* %"$_sender_922")
  ret void
}

define internal void @"$t5_923"(%Uint128 %_amount, [20 x i8]* %"$_origin_924", [20 x i8]* %"$_sender_925") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_924", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_925", align 1
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %entry
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %"$have_gas_929"
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_936", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_938" = icmp ugt i64 1, %"$gasrem_937"
  br i1 %"$gascmp_938", label %"$out_of_gas_939", label %"$have_gas_940"

"$out_of_gas_939":                                ; preds = %"$have_gas_934"
  call void @_out_of_gas()
  br label %"$have_gas_940"

"$have_gas_940":                                  ; preds = %"$out_of_gas_939", %"$have_gas_934"
  %"$consume_941" = sub i64 %"$gasrem_937", 1
  store i64 %"$consume_941", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 1, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_940"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_940"
  %"$consume_946" = sub i64 %"$gasrem_942", 1
  store i64 %"$consume_946", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_947", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$have_gas_945"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$have_gas_945"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 1, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_951"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_951"
  %"$consume_957" = sub i64 %"$gasrem_953", 1
  store i64 %"$consume_957", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_958", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_956"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_956"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_962"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_969", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %val = alloca %TName_Option_String*, align 8
  %"$indices_buf_970_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_970_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_970_salloc_load", i64 32)
  %"$indices_buf_970_salloc" = bitcast i8* %"$indices_buf_970_salloc_salloc" to [32 x i8]*
  %"$indices_buf_970" = bitcast [32 x i8]* %"$indices_buf_970_salloc" to i8*
  %"$key1a_971" = load %String, %String* %key1a, align 8
  %"$indices_gep_972" = getelementptr i8, i8* %"$indices_buf_970", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_972" to %String*
  store %String %"$key1a_971", %String* %indices_cast, align 8
  %"$key2a_973" = load %String, %String* %key2a, align 8
  %"$indices_gep_974" = getelementptr i8, i8* %"$indices_buf_970", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_974" to %String*
  store %String %"$key2a_973", %String* %indices_cast1, align 8
  %"$execptr_load_976" = load i8*, i8** @_execptr, align 8
  %"$val_call_977" = call i8* @_fetch_field(i8* %"$execptr_load_976", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_975", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_970", i32 1)
  %"$val_978" = bitcast i8* %"$val_call_977" to %TName_Option_String*
  store %TName_Option_String* %"$val_978", %TName_Option_String** %val, align 8
  %"$val_979" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$$val_979_980" = bitcast %TName_Option_String* %"$val_979" to i8*
  %"$_literal_cost_call_981" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$val_979_980")
  %"$gasadd_982" = add i64 %"$_literal_cost_call_981", 0
  %"$gasadd_983" = add i64 %"$gasadd_982", 2
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 %"$gasadd_983", %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_967"
  %"$consume_988" = sub i64 %"$gasrem_984", %"$gasadd_983"
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 2, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_987"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_987"
  %"$consume_993" = sub i64 %"$gasrem_989", 2
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$val_995" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$val_tag_996" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_995", i32 0, i32 0
  %"$val_tag_997" = load i8, i8* %"$val_tag_996", align 1
  switch i8 %"$val_tag_997", label %"$empty_default_998" [
    i8 0, label %"$Some_999"
    i8 1, label %"$None_1061"
  ]

"$Some_999":                                      ; preds = %"$have_gas_992"
  %"$val_1000" = bitcast %TName_Option_String* %"$val_995" to %CName_Some_String*
  %"$v_gep_1001" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_1000", i32 0, i32 1
  %"$v_load_1002" = load %String, %String* %"$v_gep_1001", align 8
  %v = alloca %String, align 8
  store %String %"$v_load_1002", %String* %v, align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$Some_999"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$Some_999"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_v_1008" = alloca %String, align 8
  %"$v_1009" = load %String, %String* %v, align 8
  store %String %"$v_1009", %String* %"$_literal_cost_v_1008", align 8
  %"$$_literal_cost_v_1008_1010" = bitcast %String* %"$_literal_cost_v_1008" to i8*
  %"$_literal_cost_call_1011" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1008_1010")
  %"$_literal_cost_s_1012" = alloca %String, align 8
  %"$s_1013" = load %String, %String* %s, align 8
  store %String %"$s_1013", %String* %"$_literal_cost_s_1012", align 8
  %"$$_literal_cost_s_1012_1014" = bitcast %String* %"$_literal_cost_s_1012" to i8*
  %"$_literal_cost_call_1015" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_1012_1014")
  %"$gasmin_1016" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1011", i64 %"$_literal_cost_call_1015")
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 %"$gasmin_1016", %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_1006"
  %"$consume_1021" = sub i64 %"$gasrem_1017", %"$gasmin_1016"
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %"$execptr_load_1022" = load i8*, i8** @_execptr, align 8
  %"$v_1023" = load %String, %String* %v, align 8
  %"$s_1024" = load %String, %String* %s, align 8
  %"$eq_call_1025" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1022", %String %"$v_1023", %String %"$s_1024")
  store %TName_Bool* %"$eq_call_1025", %TName_Bool** %t, align 8
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 2, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1020"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 2
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %"$t_1033" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_1034" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_1033", i32 0, i32 0
  %"$t_tag_1035" = load i8, i8* %"$t_tag_1034", align 1
  switch i8 %"$t_tag_1035", label %"$empty_default_1036" [
    i8 0, label %"$True_1037"
    i8 1, label %"$False_1039"
  ]

"$True_1037":                                     ; preds = %"$have_gas_1030"
  %"$t_1038" = bitcast %TName_Bool* %"$t_1033" to %CName_True*
  br label %"$matchsucc_1032"

"$False_1039":                                    ; preds = %"$have_gas_1030"
  %"$t_1040" = bitcast %TName_Bool* %"$t_1033" to %CName_False*
  %"$gasrem_1041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1042" = icmp ugt i64 1, %"$gasrem_1041"
  br i1 %"$gascmp_1042", label %"$out_of_gas_1043", label %"$have_gas_1044"

"$out_of_gas_1043":                               ; preds = %"$False_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1044"

"$have_gas_1044":                                 ; preds = %"$out_of_gas_1043", %"$False_1039"
  %"$consume_1045" = sub i64 %"$gasrem_1041", 1
  store i64 %"$consume_1045", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1044"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_1051", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1049"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$fail_msg__origin_1057" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1057", align 1
  %"$fail_msg__sender_1058" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1058", align 1
  %"$tname_1059" = load %String, %String* %tname, align 8
  %"$m_1060" = load %String, %String* %m, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1057", [20 x i8]* %"$fail_msg__sender_1058", %String %"$tname_1059", %String %"$m_1060")
  br label %"$matchsucc_1032"

"$empty_default_1036":                            ; preds = %"$have_gas_1030"
  br label %"$matchsucc_1032"

"$matchsucc_1032":                                ; preds = %"$have_gas_1055", %"$True_1037", %"$empty_default_1036"
  br label %"$matchsucc_994"

"$None_1061":                                     ; preds = %"$have_gas_992"
  %"$val_1062" = bitcast %TName_Option_String* %"$val_995" to %CName_None_String*
  %"$gasrem_1063" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1064" = icmp ugt i64 1, %"$gasrem_1063"
  br i1 %"$gascmp_1064", label %"$out_of_gas_1065", label %"$have_gas_1066"

"$out_of_gas_1065":                               ; preds = %"$None_1061"
  call void @_out_of_gas()
  br label %"$have_gas_1066"

"$have_gas_1066":                                 ; preds = %"$out_of_gas_1065", %"$None_1061"
  %"$consume_1067" = sub i64 %"$gasrem_1063", 1
  store i64 %"$consume_1067", i64* @_gasrem, align 8
  %"$fail__origin_1068" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_1068", align 1
  %"$fail__sender_1069" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1069", align 1
  %"$tname_1070" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_1068", [20 x i8]* %"$fail__sender_1069", %String %"$tname_1070")
  br label %"$matchsucc_994"

"$empty_default_998":                             ; preds = %"$have_gas_992"
  br label %"$matchsucc_994"

"$matchsucc_994":                                 ; preds = %"$have_gas_1066", %"$matchsucc_1032", %"$empty_default_998"
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$matchsucc_994"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$matchsucc_994"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %l_m2 = alloca %Map_String_String*, align 8
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1074"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1079"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %"$execptr_load_1086" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1087" = call i8* @_new_empty_map(i8* %"$execptr_load_1086")
  %"$_new_empty_map_1088" = bitcast i8* %"$_new_empty_map_call_1087" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_1088", %Map_String_String** %e, align 8
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1084"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1092"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1099", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1097"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1110", i32 0, i32 0), i32 3 }, %String* %s1, align 8
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1108"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$e_1116" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1116_1117" = bitcast %Map_String_String* %"$e_1116" to i8*
  %"$_lengthof_call_1118" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_1116_1117")
  %"$gasadd_1119" = add i64 1, %"$_lengthof_call_1118"
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 %"$gasadd_1119", %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1114"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1114"
  %"$consume_1124" = sub i64 %"$gasrem_1120", %"$gasadd_1119"
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %"$execptr_load_1125" = load i8*, i8** @_execptr, align 8
  %"$e_1126" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1126_1127" = bitcast %Map_String_String* %"$e_1126" to i8*
  %"$put_key2b_1128" = alloca %String, align 8
  %"$key2b_1129" = load %String, %String* %key2b, align 8
  store %String %"$key2b_1129", %String* %"$put_key2b_1128", align 8
  %"$$put_key2b_1128_1130" = bitcast %String* %"$put_key2b_1128" to i8*
  %"$put_s1_1131" = alloca %String, align 8
  %"$s1_1132" = load %String, %String* %s1, align 8
  store %String %"$s1_1132", %String* %"$put_s1_1131", align 8
  %"$$put_s1_1131_1133" = bitcast %String* %"$put_s1_1131" to i8*
  %"$put_call_1134" = call i8* @_put(i8* %"$execptr_load_1125", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_1126_1127", i8* %"$$put_key2b_1128_1130", i8* %"$$put_s1_1131_1133")
  %"$put_1135" = bitcast i8* %"$put_call_1134" to %Map_String_String*
  store %Map_String_String* %"$put_1135", %Map_String_String** %m1, align 8
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %"$have_gas_1123"
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1139"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1146", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1144"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1150"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1157", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$m1_1158" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1158_1159" = bitcast %Map_String_String* %"$m1_1158" to i8*
  %"$_lengthof_call_1160" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_1158_1159")
  %"$gasadd_1161" = add i64 1, %"$_lengthof_call_1160"
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 %"$gasadd_1161", %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1155"
  %"$consume_1166" = sub i64 %"$gasrem_1162", %"$gasadd_1161"
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %"$execptr_load_1167" = load i8*, i8** @_execptr, align 8
  %"$m1_1168" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1168_1169" = bitcast %Map_String_String* %"$m1_1168" to i8*
  %"$put_key2c_1170" = alloca %String, align 8
  %"$key2c_1171" = load %String, %String* %key2c, align 8
  store %String %"$key2c_1171", %String* %"$put_key2c_1170", align 8
  %"$$put_key2c_1170_1172" = bitcast %String* %"$put_key2c_1170" to i8*
  %"$put_s2_1173" = alloca %String, align 8
  %"$s2_1174" = load %String, %String* %s2, align 8
  store %String %"$s2_1174", %String* %"$put_s2_1173", align 8
  %"$$put_s2_1173_1175" = bitcast %String* %"$put_s2_1173" to i8*
  %"$put_call_1176" = call i8* @_put(i8* %"$execptr_load_1167", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_1168_1169", i8* %"$$put_key2c_1170_1172", i8* %"$$put_s2_1173_1175")
  %"$put_1177" = bitcast i8* %"$put_call_1176" to %Map_String_String*
  store %Map_String_String* %"$put_1177", %Map_String_String** %l_m2, align 8
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1165"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1181"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1188", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$l_m2_1189" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$$l_m2_1189_1190" = bitcast %Map_String_String* %"$l_m2_1189" to i8*
  %"$_literal_cost_call_1191" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$l_m2_1189_1190")
  %"$gasadd_1192" = add i64 %"$_literal_cost_call_1191", 1
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 %"$gasadd_1192", %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1186"
  %"$consume_1197" = sub i64 %"$gasrem_1193", %"$gasadd_1192"
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$indices_buf_1198_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1198_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1198_salloc_load", i64 16)
  %"$indices_buf_1198_salloc" = bitcast i8* %"$indices_buf_1198_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1198" = bitcast [16 x i8]* %"$indices_buf_1198_salloc" to i8*
  %"$key1b_1199" = load %String, %String* %key1b, align 8
  %"$indices_gep_1200" = getelementptr i8, i8* %"$indices_buf_1198", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1200" to %String*
  store %String %"$key1b_1199", %String* %indices_cast2, align 8
  %"$execptr_load_1201" = load i8*, i8** @_execptr, align 8
  %"$l_m2_1203" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$update_value_1204" = bitcast %Map_String_String* %"$l_m2_1203" to i8*
  call void @_update_field(i8* %"$execptr_load_1201", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1202", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_1198", i8* %"$update_value_1204")
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_1206" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1207" = bitcast i8* %"$_amount_1206" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1207", align 8
  %"$_origin_1208" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1209" = bitcast i8* %"$_origin_1208" to [20 x i8]*
  %"$_sender_1210" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1211" = bitcast i8* %"$_sender_1210" to [20 x i8]*
  call void @"$t5_923"(%Uint128 %_amount, [20 x i8]* %"$_origin_1209", [20 x i8]* %"$_sender_1211")
  ret void
}

define internal void @"$t6_1212"(%Uint128 %_amount, [20 x i8]* %"$_origin_1213", [20 x i8]* %"$_sender_1214") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1213", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1214", align 1
  %"$gasrem_1215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1216" = icmp ugt i64 1, %"$gasrem_1215"
  br i1 %"$gascmp_1216", label %"$out_of_gas_1217", label %"$have_gas_1218"

"$out_of_gas_1217":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1218"

"$have_gas_1218":                                 ; preds = %"$out_of_gas_1217", %entry
  %"$consume_1219" = sub i64 %"$gasrem_1215", 1
  store i64 %"$consume_1219", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 1, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1218"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1218"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 1
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1225", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1223"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1229"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1236", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 1, %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1234"
  %"$consume_1241" = sub i64 %"$gasrem_1237", 1
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1243" = icmp ugt i64 1, %"$gasrem_1242"
  br i1 %"$gascmp_1243", label %"$out_of_gas_1244", label %"$have_gas_1245"

"$out_of_gas_1244":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1245"

"$have_gas_1245":                                 ; preds = %"$out_of_gas_1244", %"$have_gas_1240"
  %"$consume_1246" = sub i64 %"$gasrem_1242", 1
  store i64 %"$consume_1246", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1247", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1248_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1248_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1248_salloc_load", i64 32)
  %"$indices_buf_1248_salloc" = bitcast i8* %"$indices_buf_1248_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1248" = bitcast [32 x i8]* %"$indices_buf_1248_salloc" to i8*
  %"$key1a_1249" = load %String, %String* %key1a, align 8
  %"$indices_gep_1250" = getelementptr i8, i8* %"$indices_buf_1248", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1250" to %String*
  store %String %"$key1a_1249", %String* %indices_cast, align 8
  %"$key2a_1251" = load %String, %String* %key2a, align 8
  %"$indices_gep_1252" = getelementptr i8, i8* %"$indices_buf_1248", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1252" to %String*
  store %String %"$key2a_1251", %String* %indices_cast1, align 8
  %"$execptr_load_1254" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1255" = call i8* @_fetch_field(i8* %"$execptr_load_1254", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1253", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1248", i32 1)
  %"$c1_1256" = bitcast i8* %"$c1_call_1255" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1256", %TName_Option_String** %c1, align 8
  %"$c1_1257" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1257_1258" = bitcast %TName_Option_String* %"$c1_1257" to i8*
  %"$_literal_cost_call_1259" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$c1_1257_1258")
  %"$gasadd_1260" = add i64 %"$_literal_cost_call_1259", 0
  %"$gasadd_1261" = add i64 %"$gasadd_1260", 2
  %"$gasrem_1262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1263" = icmp ugt i64 %"$gasadd_1261", %"$gasrem_1262"
  br i1 %"$gascmp_1263", label %"$out_of_gas_1264", label %"$have_gas_1265"

"$out_of_gas_1264":                               ; preds = %"$have_gas_1245"
  call void @_out_of_gas()
  br label %"$have_gas_1265"

"$have_gas_1265":                                 ; preds = %"$out_of_gas_1264", %"$have_gas_1245"
  %"$consume_1266" = sub i64 %"$gasrem_1262", %"$gasadd_1261"
  store i64 %"$consume_1266", i64* @_gasrem, align 8
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 2, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1265"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1265"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 2
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %"$c1_1273" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1274" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1273", i32 0, i32 0
  %"$c1_tag_1275" = load i8, i8* %"$c1_tag_1274", align 1
  switch i8 %"$c1_tag_1275", label %"$empty_default_1276" [
    i8 0, label %"$Some_1277"
    i8 1, label %"$None_1350"
  ]

"$Some_1277":                                     ; preds = %"$have_gas_1270"
  %"$c1_1278" = bitcast %TName_Option_String* %"$c1_1273" to %CName_Some_String*
  %"$c_gep_1279" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1278", i32 0, i32 1
  %"$c_load_1280" = load %String, %String* %"$c_gep_1279", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1280", %String* %c, align 8
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 1, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$Some_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$Some_1277"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 1
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$have_gas_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$have_gas_1284"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1291", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1293" = icmp ugt i64 1, %"$gasrem_1292"
  br i1 %"$gascmp_1293", label %"$out_of_gas_1294", label %"$have_gas_1295"

"$out_of_gas_1294":                               ; preds = %"$have_gas_1289"
  call void @_out_of_gas()
  br label %"$have_gas_1295"

"$have_gas_1295":                                 ; preds = %"$out_of_gas_1294", %"$have_gas_1289"
  %"$consume_1296" = sub i64 %"$gasrem_1292", 1
  store i64 %"$consume_1296", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1297" = alloca %String, align 8
  %"$c_1298" = load %String, %String* %c, align 8
  store %String %"$c_1298", %String* %"$_literal_cost_c_1297", align 8
  %"$$_literal_cost_c_1297_1299" = bitcast %String* %"$_literal_cost_c_1297" to i8*
  %"$_literal_cost_call_1300" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1297_1299")
  %"$_literal_cost_v_1301" = alloca %String, align 8
  %"$v_1302" = load %String, %String* %v, align 8
  store %String %"$v_1302", %String* %"$_literal_cost_v_1301", align 8
  %"$$_literal_cost_v_1301_1303" = bitcast %String* %"$_literal_cost_v_1301" to i8*
  %"$_literal_cost_call_1304" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1301_1303")
  %"$gasmin_1305" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1300", i64 %"$_literal_cost_call_1304")
  %"$gasrem_1306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1307" = icmp ugt i64 %"$gasmin_1305", %"$gasrem_1306"
  br i1 %"$gascmp_1307", label %"$out_of_gas_1308", label %"$have_gas_1309"

"$out_of_gas_1308":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1309"

"$have_gas_1309":                                 ; preds = %"$out_of_gas_1308", %"$have_gas_1295"
  %"$consume_1310" = sub i64 %"$gasrem_1306", %"$gasmin_1305"
  store i64 %"$consume_1310", i64* @_gasrem, align 8
  %"$execptr_load_1311" = load i8*, i8** @_execptr, align 8
  %"$c_1312" = load %String, %String* %c, align 8
  %"$v_1313" = load %String, %String* %v, align 8
  %"$eq_call_1314" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1311", %String %"$c_1312", %String %"$v_1313")
  store %TName_Bool* %"$eq_call_1314", %TName_Bool** %eq, align 8
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 2, %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1309"
  %"$consume_1320" = sub i64 %"$gasrem_1316", 2
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %"$eq_1322" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1323" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1322", i32 0, i32 0
  %"$eq_tag_1324" = load i8, i8* %"$eq_tag_1323", align 1
  switch i8 %"$eq_tag_1324", label %"$empty_default_1325" [
    i8 0, label %"$True_1326"
    i8 1, label %"$False_1328"
  ]

"$True_1326":                                     ; preds = %"$have_gas_1319"
  %"$eq_1327" = bitcast %TName_Bool* %"$eq_1322" to %CName_True*
  br label %"$matchsucc_1321"

"$False_1328":                                    ; preds = %"$have_gas_1319"
  %"$eq_1329" = bitcast %TName_Bool* %"$eq_1322" to %CName_False*
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$False_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$False_1328"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1340", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1342" = icmp ugt i64 1, %"$gasrem_1341"
  br i1 %"$gascmp_1342", label %"$out_of_gas_1343", label %"$have_gas_1344"

"$out_of_gas_1343":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1344"

"$have_gas_1344":                                 ; preds = %"$out_of_gas_1343", %"$have_gas_1338"
  %"$consume_1345" = sub i64 %"$gasrem_1341", 1
  store i64 %"$consume_1345", i64* @_gasrem, align 8
  %"$fail_msg__origin_1346" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1346", align 1
  %"$fail_msg__sender_1347" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1347", align 1
  %"$tname_1348" = load %String, %String* %tname, align 8
  %"$m_1349" = load %String, %String* %m, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1346", [20 x i8]* %"$fail_msg__sender_1347", %String %"$tname_1348", %String %"$m_1349")
  br label %"$matchsucc_1321"

"$empty_default_1325":                            ; preds = %"$have_gas_1319"
  br label %"$matchsucc_1321"

"$matchsucc_1321":                                ; preds = %"$have_gas_1344", %"$True_1326", %"$empty_default_1325"
  br label %"$matchsucc_1272"

"$None_1350":                                     ; preds = %"$have_gas_1270"
  %"$c1_1351" = bitcast %TName_Option_String* %"$c1_1273" to %CName_None_String*
  %"$gasrem_1352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1353" = icmp ugt i64 1, %"$gasrem_1352"
  br i1 %"$gascmp_1353", label %"$out_of_gas_1354", label %"$have_gas_1355"

"$out_of_gas_1354":                               ; preds = %"$None_1350"
  call void @_out_of_gas()
  br label %"$have_gas_1355"

"$have_gas_1355":                                 ; preds = %"$out_of_gas_1354", %"$None_1350"
  %"$consume_1356" = sub i64 %"$gasrem_1352", 1
  store i64 %"$consume_1356", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1358" = icmp ugt i64 1, %"$gasrem_1357"
  br i1 %"$gascmp_1358", label %"$out_of_gas_1359", label %"$have_gas_1360"

"$out_of_gas_1359":                               ; preds = %"$have_gas_1355"
  call void @_out_of_gas()
  br label %"$have_gas_1360"

"$have_gas_1360":                                 ; preds = %"$out_of_gas_1359", %"$have_gas_1355"
  %"$consume_1361" = sub i64 %"$gasrem_1357", 1
  store i64 %"$consume_1361", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1362", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1360"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1360"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %"$fail_msg__origin_1368" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1368", align 1
  %"$fail_msg__sender_1369" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1369", align 1
  %"$tname_1370" = load %String, %String* %tname, align 8
  %"$m_1371" = load %String, %String* %m2, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1368", [20 x i8]* %"$fail_msg__sender_1369", %String %"$tname_1370", %String %"$m_1371")
  br label %"$matchsucc_1272"

"$empty_default_1276":                            ; preds = %"$have_gas_1270"
  br label %"$matchsucc_1272"

"$matchsucc_1272":                                ; preds = %"$have_gas_1366", %"$matchsucc_1321", %"$empty_default_1276"
  %"$gasrem_1372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1373" = icmp ugt i64 1, %"$gasrem_1372"
  br i1 %"$gascmp_1373", label %"$out_of_gas_1374", label %"$have_gas_1375"

"$out_of_gas_1374":                               ; preds = %"$matchsucc_1272"
  call void @_out_of_gas()
  br label %"$have_gas_1375"

"$have_gas_1375":                                 ; preds = %"$out_of_gas_1374", %"$matchsucc_1272"
  %"$consume_1376" = sub i64 %"$gasrem_1372", 1
  store i64 %"$consume_1376", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1378" = icmp ugt i64 1, %"$gasrem_1377"
  br i1 %"$gascmp_1378", label %"$out_of_gas_1379", label %"$have_gas_1380"

"$out_of_gas_1379":                               ; preds = %"$have_gas_1375"
  call void @_out_of_gas()
  br label %"$have_gas_1380"

"$have_gas_1380":                                 ; preds = %"$out_of_gas_1379", %"$have_gas_1375"
  %"$consume_1381" = sub i64 %"$gasrem_1377", 1
  store i64 %"$consume_1381", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1382", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_1383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1384" = icmp ugt i64 1, %"$gasrem_1383"
  br i1 %"$gascmp_1384", label %"$out_of_gas_1385", label %"$have_gas_1386"

"$out_of_gas_1385":                               ; preds = %"$have_gas_1380"
  call void @_out_of_gas()
  br label %"$have_gas_1386"

"$have_gas_1386":                                 ; preds = %"$out_of_gas_1385", %"$have_gas_1380"
  %"$consume_1387" = sub i64 %"$gasrem_1383", 1
  store i64 %"$consume_1387", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1389" = icmp ugt i64 1, %"$gasrem_1388"
  br i1 %"$gascmp_1389", label %"$out_of_gas_1390", label %"$have_gas_1391"

"$out_of_gas_1390":                               ; preds = %"$have_gas_1386"
  call void @_out_of_gas()
  br label %"$have_gas_1391"

"$have_gas_1391":                                 ; preds = %"$out_of_gas_1390", %"$have_gas_1386"
  %"$consume_1392" = sub i64 %"$gasrem_1388", 1
  store i64 %"$consume_1392", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1393", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_2" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1394_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1394_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1394_salloc_load", i64 32)
  %"$indices_buf_1394_salloc" = bitcast i8* %"$indices_buf_1394_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1394" = bitcast [32 x i8]* %"$indices_buf_1394_salloc" to i8*
  %"$key1b_1395" = load %String, %String* %key1b, align 8
  %"$indices_gep_1396" = getelementptr i8, i8* %"$indices_buf_1394", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1396" to %String*
  store %String %"$key1b_1395", %String* %indices_cast3, align 8
  %"$key2b_1397" = load %String, %String* %key2b, align 8
  %"$indices_gep_1398" = getelementptr i8, i8* %"$indices_buf_1394", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_1398" to %String*
  store %String %"$key2b_1397", %String* %indices_cast4, align 8
  %"$execptr_load_1400" = load i8*, i8** @_execptr, align 8
  %"$$c1_2_call_1401" = call i8* @_fetch_field(i8* %"$execptr_load_1400", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1399", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1394", i32 1)
  %"$$c1_2_1402" = bitcast i8* %"$$c1_2_call_1401" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_1402", %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_1403" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$$c1_2_1403_1404" = bitcast %TName_Option_String* %"$$c1_2_1403" to i8*
  %"$_literal_cost_call_1405" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_2_1403_1404")
  %"$gasadd_1406" = add i64 %"$_literal_cost_call_1405", 0
  %"$gasadd_1407" = add i64 %"$gasadd_1406", 2
  %"$gasrem_1408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1409" = icmp ugt i64 %"$gasadd_1407", %"$gasrem_1408"
  br i1 %"$gascmp_1409", label %"$out_of_gas_1410", label %"$have_gas_1411"

"$out_of_gas_1410":                               ; preds = %"$have_gas_1391"
  call void @_out_of_gas()
  br label %"$have_gas_1411"

"$have_gas_1411":                                 ; preds = %"$out_of_gas_1410", %"$have_gas_1391"
  %"$consume_1412" = sub i64 %"$gasrem_1408", %"$gasadd_1407"
  store i64 %"$consume_1412", i64* @_gasrem, align 8
  %"$gasrem_1413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1414" = icmp ugt i64 2, %"$gasrem_1413"
  br i1 %"$gascmp_1414", label %"$out_of_gas_1415", label %"$have_gas_1416"

"$out_of_gas_1415":                               ; preds = %"$have_gas_1411"
  call void @_out_of_gas()
  br label %"$have_gas_1416"

"$have_gas_1416":                                 ; preds = %"$out_of_gas_1415", %"$have_gas_1411"
  %"$consume_1417" = sub i64 %"$gasrem_1413", 2
  store i64 %"$consume_1417", i64* @_gasrem, align 8
  %"$$c1_2_1419" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_tag_1420" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_1419", i32 0, i32 0
  %"$$c1_2_tag_1421" = load i8, i8* %"$$c1_2_tag_1420", align 1
  switch i8 %"$$c1_2_tag_1421", label %"$empty_default_1422" [
    i8 0, label %"$Some_1423"
    i8 1, label %"$None_1496"
  ]

"$Some_1423":                                     ; preds = %"$have_gas_1416"
  %"$$c1_2_1424" = bitcast %TName_Option_String* %"$$c1_2_1419" to %CName_Some_String*
  %"$c_gep_1425" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_1424", i32 0, i32 1
  %"$c_load_1426" = load %String, %String* %"$c_gep_1425", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_1426", %String* %c5, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$Some_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$Some_1423"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$have_gas_1430"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1437", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_1438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1439" = icmp ugt i64 1, %"$gasrem_1438"
  br i1 %"$gascmp_1439", label %"$out_of_gas_1440", label %"$have_gas_1441"

"$out_of_gas_1440":                               ; preds = %"$have_gas_1435"
  call void @_out_of_gas()
  br label %"$have_gas_1441"

"$have_gas_1441":                                 ; preds = %"$out_of_gas_1440", %"$have_gas_1435"
  %"$consume_1442" = sub i64 %"$gasrem_1438", 1
  store i64 %"$consume_1442", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1443" = alloca %String, align 8
  %"$c_1444" = load %String, %String* %c5, align 8
  store %String %"$c_1444", %String* %"$_literal_cost_c_1443", align 8
  %"$$_literal_cost_c_1443_1445" = bitcast %String* %"$_literal_cost_c_1443" to i8*
  %"$_literal_cost_call_1446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1443_1445")
  %"$_literal_cost_v_1447" = alloca %String, align 8
  %"$v_1448" = load %String, %String* %v6, align 8
  store %String %"$v_1448", %String* %"$_literal_cost_v_1447", align 8
  %"$$_literal_cost_v_1447_1449" = bitcast %String* %"$_literal_cost_v_1447" to i8*
  %"$_literal_cost_call_1450" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1447_1449")
  %"$gasmin_1451" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1446", i64 %"$_literal_cost_call_1450")
  %"$gasrem_1452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1453" = icmp ugt i64 %"$gasmin_1451", %"$gasrem_1452"
  br i1 %"$gascmp_1453", label %"$out_of_gas_1454", label %"$have_gas_1455"

"$out_of_gas_1454":                               ; preds = %"$have_gas_1441"
  call void @_out_of_gas()
  br label %"$have_gas_1455"

"$have_gas_1455":                                 ; preds = %"$out_of_gas_1454", %"$have_gas_1441"
  %"$consume_1456" = sub i64 %"$gasrem_1452", %"$gasmin_1451"
  store i64 %"$consume_1456", i64* @_gasrem, align 8
  %"$execptr_load_1457" = load i8*, i8** @_execptr, align 8
  %"$c_1458" = load %String, %String* %c5, align 8
  %"$v_1459" = load %String, %String* %v6, align 8
  %"$eq_call_1460" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1457", %String %"$c_1458", %String %"$v_1459")
  store %TName_Bool* %"$eq_call_1460", %TName_Bool** %eq7, align 8
  %"$gasrem_1462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1463" = icmp ugt i64 2, %"$gasrem_1462"
  br i1 %"$gascmp_1463", label %"$out_of_gas_1464", label %"$have_gas_1465"

"$out_of_gas_1464":                               ; preds = %"$have_gas_1455"
  call void @_out_of_gas()
  br label %"$have_gas_1465"

"$have_gas_1465":                                 ; preds = %"$out_of_gas_1464", %"$have_gas_1455"
  %"$consume_1466" = sub i64 %"$gasrem_1462", 2
  store i64 %"$consume_1466", i64* @_gasrem, align 8
  %"$eq_1468" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_1469" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1468", i32 0, i32 0
  %"$eq_tag_1470" = load i8, i8* %"$eq_tag_1469", align 1
  switch i8 %"$eq_tag_1470", label %"$empty_default_1471" [
    i8 0, label %"$True_1472"
    i8 1, label %"$False_1474"
  ]

"$True_1472":                                     ; preds = %"$have_gas_1465"
  %"$eq_1473" = bitcast %TName_Bool* %"$eq_1468" to %CName_True*
  br label %"$matchsucc_1467"

"$False_1474":                                    ; preds = %"$have_gas_1465"
  %"$eq_1475" = bitcast %TName_Bool* %"$eq_1468" to %CName_False*
  %"$gasrem_1476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1477" = icmp ugt i64 1, %"$gasrem_1476"
  br i1 %"$gascmp_1477", label %"$out_of_gas_1478", label %"$have_gas_1479"

"$out_of_gas_1478":                               ; preds = %"$False_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1479"

"$have_gas_1479":                                 ; preds = %"$out_of_gas_1478", %"$False_1474"
  %"$consume_1480" = sub i64 %"$gasrem_1476", 1
  store i64 %"$consume_1480", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_1481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1482" = icmp ugt i64 1, %"$gasrem_1481"
  br i1 %"$gascmp_1482", label %"$out_of_gas_1483", label %"$have_gas_1484"

"$out_of_gas_1483":                               ; preds = %"$have_gas_1479"
  call void @_out_of_gas()
  br label %"$have_gas_1484"

"$have_gas_1484":                                 ; preds = %"$out_of_gas_1483", %"$have_gas_1479"
  %"$consume_1485" = sub i64 %"$gasrem_1481", 1
  store i64 %"$consume_1485", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1486", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_1487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1488" = icmp ugt i64 1, %"$gasrem_1487"
  br i1 %"$gascmp_1488", label %"$out_of_gas_1489", label %"$have_gas_1490"

"$out_of_gas_1489":                               ; preds = %"$have_gas_1484"
  call void @_out_of_gas()
  br label %"$have_gas_1490"

"$have_gas_1490":                                 ; preds = %"$out_of_gas_1489", %"$have_gas_1484"
  %"$consume_1491" = sub i64 %"$gasrem_1487", 1
  store i64 %"$consume_1491", i64* @_gasrem, align 8
  %"$fail_msg__origin_1492" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1492", align 1
  %"$fail_msg__sender_1493" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1493", align 1
  %"$tname_1494" = load %String, %String* %tname, align 8
  %"$m_1495" = load %String, %String* %m8, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1492", [20 x i8]* %"$fail_msg__sender_1493", %String %"$tname_1494", %String %"$m_1495")
  br label %"$matchsucc_1467"

"$empty_default_1471":                            ; preds = %"$have_gas_1465"
  br label %"$matchsucc_1467"

"$matchsucc_1467":                                ; preds = %"$have_gas_1490", %"$True_1472", %"$empty_default_1471"
  br label %"$matchsucc_1418"

"$None_1496":                                     ; preds = %"$have_gas_1416"
  %"$$c1_2_1497" = bitcast %TName_Option_String* %"$$c1_2_1419" to %CName_None_String*
  %"$gasrem_1498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1499" = icmp ugt i64 1, %"$gasrem_1498"
  br i1 %"$gascmp_1499", label %"$out_of_gas_1500", label %"$have_gas_1501"

"$out_of_gas_1500":                               ; preds = %"$None_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1501"

"$have_gas_1501":                                 ; preds = %"$out_of_gas_1500", %"$None_1496"
  %"$consume_1502" = sub i64 %"$gasrem_1498", 1
  store i64 %"$consume_1502", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_1503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1504" = icmp ugt i64 1, %"$gasrem_1503"
  br i1 %"$gascmp_1504", label %"$out_of_gas_1505", label %"$have_gas_1506"

"$out_of_gas_1505":                               ; preds = %"$have_gas_1501"
  call void @_out_of_gas()
  br label %"$have_gas_1506"

"$have_gas_1506":                                 ; preds = %"$out_of_gas_1505", %"$have_gas_1501"
  %"$consume_1507" = sub i64 %"$gasrem_1503", 1
  store i64 %"$consume_1507", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1508", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1506"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1506"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %"$fail_msg__origin_1514" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1514", align 1
  %"$fail_msg__sender_1515" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1515", align 1
  %"$tname_1516" = load %String, %String* %tname, align 8
  %"$m_1517" = load %String, %String* %m9, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1514", [20 x i8]* %"$fail_msg__sender_1515", %String %"$tname_1516", %String %"$m_1517")
  br label %"$matchsucc_1418"

"$empty_default_1422":                            ; preds = %"$have_gas_1416"
  br label %"$matchsucc_1418"

"$matchsucc_1418":                                ; preds = %"$have_gas_1512", %"$matchsucc_1467", %"$empty_default_1422"
  %"$gasrem_1518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1519" = icmp ugt i64 1, %"$gasrem_1518"
  br i1 %"$gascmp_1519", label %"$out_of_gas_1520", label %"$have_gas_1521"

"$out_of_gas_1520":                               ; preds = %"$matchsucc_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1521"

"$have_gas_1521":                                 ; preds = %"$out_of_gas_1520", %"$matchsucc_1418"
  %"$consume_1522" = sub i64 %"$gasrem_1518", 1
  store i64 %"$consume_1522", i64* @_gasrem, align 8
  %"$key1b_3" = alloca %String, align 8
  %"$gasrem_1523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1524" = icmp ugt i64 1, %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %"$have_gas_1521"
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %"$have_gas_1521"
  %"$consume_1527" = sub i64 %"$gasrem_1523", 1
  store i64 %"$consume_1527", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1528", i32 0, i32 0), i32 5 }, %String* %"$key1b_3", align 8
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 1, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1526"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1526"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 1
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1535" = icmp ugt i64 1, %"$gasrem_1534"
  br i1 %"$gascmp_1535", label %"$out_of_gas_1536", label %"$have_gas_1537"

"$out_of_gas_1536":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1537"

"$have_gas_1537":                                 ; preds = %"$out_of_gas_1536", %"$have_gas_1532"
  %"$consume_1538" = sub i64 %"$gasrem_1534", 1
  store i64 %"$consume_1538", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1539", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_4" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1540_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1540_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1540_salloc_load", i64 32)
  %"$indices_buf_1540_salloc" = bitcast i8* %"$indices_buf_1540_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1540" = bitcast [32 x i8]* %"$indices_buf_1540_salloc" to i8*
  %"$$key1b_3_1541" = load %String, %String* %"$key1b_3", align 8
  %"$indices_gep_1542" = getelementptr i8, i8* %"$indices_buf_1540", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_1542" to %String*
  store %String %"$$key1b_3_1541", %String* %indices_cast10, align 8
  %"$key2c_1543" = load %String, %String* %key2c, align 8
  %"$indices_gep_1544" = getelementptr i8, i8* %"$indices_buf_1540", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_1544" to %String*
  store %String %"$key2c_1543", %String* %indices_cast11, align 8
  %"$execptr_load_1546" = load i8*, i8** @_execptr, align 8
  %"$$c1_4_call_1547" = call i8* @_fetch_field(i8* %"$execptr_load_1546", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1545", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1540", i32 1)
  %"$$c1_4_1548" = bitcast i8* %"$$c1_4_call_1547" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_4_1548", %TName_Option_String** %"$c1_4", align 8
  %"$$c1_4_1549" = load %TName_Option_String*, %TName_Option_String** %"$c1_4", align 8
  %"$$$c1_4_1549_1550" = bitcast %TName_Option_String* %"$$c1_4_1549" to i8*
  %"$_literal_cost_call_1551" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_4_1549_1550")
  %"$gasadd_1552" = add i64 %"$_literal_cost_call_1551", 0
  %"$gasadd_1553" = add i64 %"$gasadd_1552", 2
  %"$gasrem_1554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1555" = icmp ugt i64 %"$gasadd_1553", %"$gasrem_1554"
  br i1 %"$gascmp_1555", label %"$out_of_gas_1556", label %"$have_gas_1557"

"$out_of_gas_1556":                               ; preds = %"$have_gas_1537"
  call void @_out_of_gas()
  br label %"$have_gas_1557"

"$have_gas_1557":                                 ; preds = %"$out_of_gas_1556", %"$have_gas_1537"
  %"$consume_1558" = sub i64 %"$gasrem_1554", %"$gasadd_1553"
  store i64 %"$consume_1558", i64* @_gasrem, align 8
  %"$gasrem_1559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1560" = icmp ugt i64 2, %"$gasrem_1559"
  br i1 %"$gascmp_1560", label %"$out_of_gas_1561", label %"$have_gas_1562"

"$out_of_gas_1561":                               ; preds = %"$have_gas_1557"
  call void @_out_of_gas()
  br label %"$have_gas_1562"

"$have_gas_1562":                                 ; preds = %"$out_of_gas_1561", %"$have_gas_1557"
  %"$consume_1563" = sub i64 %"$gasrem_1559", 2
  store i64 %"$consume_1563", i64* @_gasrem, align 8
  %"$$c1_4_1565" = load %TName_Option_String*, %TName_Option_String** %"$c1_4", align 8
  %"$$c1_4_tag_1566" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_4_1565", i32 0, i32 0
  %"$$c1_4_tag_1567" = load i8, i8* %"$$c1_4_tag_1566", align 1
  switch i8 %"$$c1_4_tag_1567", label %"$empty_default_1568" [
    i8 0, label %"$Some_1569"
    i8 1, label %"$None_1642"
  ]

"$Some_1569":                                     ; preds = %"$have_gas_1562"
  %"$$c1_4_1570" = bitcast %TName_Option_String* %"$$c1_4_1565" to %CName_Some_String*
  %"$c_gep_1571" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_4_1570", i32 0, i32 1
  %"$c_load_1572" = load %String, %String* %"$c_gep_1571", align 8
  %c12 = alloca %String, align 8
  store %String %"$c_load_1572", %String* %c12, align 8
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$Some_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$Some_1569"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %v13 = alloca %String, align 8
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1576"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1583", i32 0, i32 0), i32 3 }, %String* %v13, align 8
  %"$gasrem_1584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1585" = icmp ugt i64 1, %"$gasrem_1584"
  br i1 %"$gascmp_1585", label %"$out_of_gas_1586", label %"$have_gas_1587"

"$out_of_gas_1586":                               ; preds = %"$have_gas_1581"
  call void @_out_of_gas()
  br label %"$have_gas_1587"

"$have_gas_1587":                                 ; preds = %"$out_of_gas_1586", %"$have_gas_1581"
  %"$consume_1588" = sub i64 %"$gasrem_1584", 1
  store i64 %"$consume_1588", i64* @_gasrem, align 8
  %eq14 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1589" = alloca %String, align 8
  %"$c_1590" = load %String, %String* %c12, align 8
  store %String %"$c_1590", %String* %"$_literal_cost_c_1589", align 8
  %"$$_literal_cost_c_1589_1591" = bitcast %String* %"$_literal_cost_c_1589" to i8*
  %"$_literal_cost_call_1592" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1589_1591")
  %"$_literal_cost_v_1593" = alloca %String, align 8
  %"$v_1594" = load %String, %String* %v13, align 8
  store %String %"$v_1594", %String* %"$_literal_cost_v_1593", align 8
  %"$$_literal_cost_v_1593_1595" = bitcast %String* %"$_literal_cost_v_1593" to i8*
  %"$_literal_cost_call_1596" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1593_1595")
  %"$gasmin_1597" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1592", i64 %"$_literal_cost_call_1596")
  %"$gasrem_1598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1599" = icmp ugt i64 %"$gasmin_1597", %"$gasrem_1598"
  br i1 %"$gascmp_1599", label %"$out_of_gas_1600", label %"$have_gas_1601"

"$out_of_gas_1600":                               ; preds = %"$have_gas_1587"
  call void @_out_of_gas()
  br label %"$have_gas_1601"

"$have_gas_1601":                                 ; preds = %"$out_of_gas_1600", %"$have_gas_1587"
  %"$consume_1602" = sub i64 %"$gasrem_1598", %"$gasmin_1597"
  store i64 %"$consume_1602", i64* @_gasrem, align 8
  %"$execptr_load_1603" = load i8*, i8** @_execptr, align 8
  %"$c_1604" = load %String, %String* %c12, align 8
  %"$v_1605" = load %String, %String* %v13, align 8
  %"$eq_call_1606" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1603", %String %"$c_1604", %String %"$v_1605")
  store %TName_Bool* %"$eq_call_1606", %TName_Bool** %eq14, align 8
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 2, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1601"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1601"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 2
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %"$eq_1614" = load %TName_Bool*, %TName_Bool** %eq14, align 8
  %"$eq_tag_1615" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1614", i32 0, i32 0
  %"$eq_tag_1616" = load i8, i8* %"$eq_tag_1615", align 1
  switch i8 %"$eq_tag_1616", label %"$empty_default_1617" [
    i8 0, label %"$True_1618"
    i8 1, label %"$False_1620"
  ]

"$True_1618":                                     ; preds = %"$have_gas_1611"
  %"$eq_1619" = bitcast %TName_Bool* %"$eq_1614" to %CName_True*
  br label %"$matchsucc_1613"

"$False_1620":                                    ; preds = %"$have_gas_1611"
  %"$eq_1621" = bitcast %TName_Bool* %"$eq_1614" to %CName_False*
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$False_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$False_1620"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %m15 = alloca %String, align 8
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 1, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %"$have_gas_1625"
  %"$consume_1631" = sub i64 %"$gasrem_1627", 1
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1632", i32 0, i32 0), i32 31 }, %String* %m15, align 8
  %"$gasrem_1633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1634" = icmp ugt i64 1, %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$have_gas_1630"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$have_gas_1630"
  %"$consume_1637" = sub i64 %"$gasrem_1633", 1
  store i64 %"$consume_1637", i64* @_gasrem, align 8
  %"$fail_msg__origin_1638" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1638", align 1
  %"$fail_msg__sender_1639" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1639", align 1
  %"$tname_1640" = load %String, %String* %tname, align 8
  %"$m_1641" = load %String, %String* %m15, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1638", [20 x i8]* %"$fail_msg__sender_1639", %String %"$tname_1640", %String %"$m_1641")
  br label %"$matchsucc_1613"

"$empty_default_1617":                            ; preds = %"$have_gas_1611"
  br label %"$matchsucc_1613"

"$matchsucc_1613":                                ; preds = %"$have_gas_1636", %"$True_1618", %"$empty_default_1617"
  br label %"$matchsucc_1564"

"$None_1642":                                     ; preds = %"$have_gas_1562"
  %"$$c1_4_1643" = bitcast %TName_Option_String* %"$$c1_4_1565" to %CName_None_String*
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 1, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$None_1642"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$None_1642"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 1
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  %m16 = alloca %String, align 8
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$have_gas_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$have_gas_1647"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1654", i32 0, i32 0), i32 21 }, %String* %m16, align 8
  %"$gasrem_1655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1656" = icmp ugt i64 1, %"$gasrem_1655"
  br i1 %"$gascmp_1656", label %"$out_of_gas_1657", label %"$have_gas_1658"

"$out_of_gas_1657":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1658"

"$have_gas_1658":                                 ; preds = %"$out_of_gas_1657", %"$have_gas_1652"
  %"$consume_1659" = sub i64 %"$gasrem_1655", 1
  store i64 %"$consume_1659", i64* @_gasrem, align 8
  %"$fail_msg__origin_1660" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1660", align 1
  %"$fail_msg__sender_1661" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1661", align 1
  %"$tname_1662" = load %String, %String* %tname, align 8
  %"$m_1663" = load %String, %String* %m16, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1660", [20 x i8]* %"$fail_msg__sender_1661", %String %"$tname_1662", %String %"$m_1663")
  br label %"$matchsucc_1564"

"$empty_default_1568":                            ; preds = %"$have_gas_1562"
  br label %"$matchsucc_1564"

"$matchsucc_1564":                                ; preds = %"$have_gas_1658", %"$matchsucc_1613", %"$empty_default_1568"
  %"$gasrem_1664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1665" = icmp ugt i64 1, %"$gasrem_1664"
  br i1 %"$gascmp_1665", label %"$out_of_gas_1666", label %"$have_gas_1667"

"$out_of_gas_1666":                               ; preds = %"$matchsucc_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1667"

"$have_gas_1667":                                 ; preds = %"$out_of_gas_1666", %"$matchsucc_1564"
  %"$consume_1668" = sub i64 %"$gasrem_1664", 1
  store i64 %"$consume_1668", i64* @_gasrem, align 8
  %"$indices_buf_1669_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1669_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1669_salloc_load", i64 16)
  %"$indices_buf_1669_salloc" = bitcast i8* %"$indices_buf_1669_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1669" = bitcast [16 x i8]* %"$indices_buf_1669_salloc" to i8*
  %"$$key1b_3_1670" = load %String, %String* %"$key1b_3", align 8
  %"$indices_gep_1671" = getelementptr i8, i8* %"$indices_buf_1669", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_1671" to %String*
  store %String %"$$key1b_3_1670", %String* %indices_cast17, align 8
  %"$execptr_load_1672" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_1672", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1673", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_1669", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_1675" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1676" = bitcast i8* %"$_amount_1675" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1676", align 8
  %"$_origin_1677" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1678" = bitcast i8* %"$_origin_1677" to [20 x i8]*
  %"$_sender_1679" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1680" = bitcast i8* %"$_sender_1679" to [20 x i8]*
  call void @"$t6_1212"(%Uint128 %_amount, [20 x i8]* %"$_origin_1678", [20 x i8]* %"$_sender_1680")
  ret void
}

define internal void @"$t7_1681"(%Uint128 %_amount, [20 x i8]* %"$_origin_1682", [20 x i8]* %"$_sender_1683") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1682", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1683", align 1
  %"$gasrem_1684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1685" = icmp ugt i64 1, %"$gasrem_1684"
  br i1 %"$gascmp_1685", label %"$out_of_gas_1686", label %"$have_gas_1687"

"$out_of_gas_1686":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1687"

"$have_gas_1687":                                 ; preds = %"$out_of_gas_1686", %entry
  %"$consume_1688" = sub i64 %"$gasrem_1684", 1
  store i64 %"$consume_1688", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1690" = icmp ugt i64 1, %"$gasrem_1689"
  br i1 %"$gascmp_1690", label %"$out_of_gas_1691", label %"$have_gas_1692"

"$out_of_gas_1691":                               ; preds = %"$have_gas_1687"
  call void @_out_of_gas()
  br label %"$have_gas_1692"

"$have_gas_1692":                                 ; preds = %"$out_of_gas_1691", %"$have_gas_1687"
  %"$consume_1693" = sub i64 %"$gasrem_1689", 1
  store i64 %"$consume_1693", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1694", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1696" = icmp ugt i64 1, %"$gasrem_1695"
  br i1 %"$gascmp_1696", label %"$out_of_gas_1697", label %"$have_gas_1698"

"$out_of_gas_1697":                               ; preds = %"$have_gas_1692"
  call void @_out_of_gas()
  br label %"$have_gas_1698"

"$have_gas_1698":                                 ; preds = %"$out_of_gas_1697", %"$have_gas_1692"
  %"$consume_1699" = sub i64 %"$gasrem_1695", 1
  store i64 %"$consume_1699", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1701" = icmp ugt i64 1, %"$gasrem_1700"
  br i1 %"$gascmp_1701", label %"$out_of_gas_1702", label %"$have_gas_1703"

"$out_of_gas_1702":                               ; preds = %"$have_gas_1698"
  call void @_out_of_gas()
  br label %"$have_gas_1703"

"$have_gas_1703":                                 ; preds = %"$out_of_gas_1702", %"$have_gas_1698"
  %"$consume_1704" = sub i64 %"$gasrem_1700", 1
  store i64 %"$consume_1704", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1705", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1707" = icmp ugt i64 1, %"$gasrem_1706"
  br i1 %"$gascmp_1707", label %"$out_of_gas_1708", label %"$have_gas_1709"

"$out_of_gas_1708":                               ; preds = %"$have_gas_1703"
  call void @_out_of_gas()
  br label %"$have_gas_1709"

"$have_gas_1709":                                 ; preds = %"$out_of_gas_1708", %"$have_gas_1703"
  %"$consume_1710" = sub i64 %"$gasrem_1706", 1
  store i64 %"$consume_1710", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1712" = icmp ugt i64 1, %"$gasrem_1711"
  br i1 %"$gascmp_1712", label %"$out_of_gas_1713", label %"$have_gas_1714"

"$out_of_gas_1713":                               ; preds = %"$have_gas_1709"
  call void @_out_of_gas()
  br label %"$have_gas_1714"

"$have_gas_1714":                                 ; preds = %"$out_of_gas_1713", %"$have_gas_1709"
  %"$consume_1715" = sub i64 %"$gasrem_1711", 1
  store i64 %"$consume_1715", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1716", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1717_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1717_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1717_salloc_load", i64 32)
  %"$indices_buf_1717_salloc" = bitcast i8* %"$indices_buf_1717_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1717" = bitcast [32 x i8]* %"$indices_buf_1717_salloc" to i8*
  %"$key1a_1718" = load %String, %String* %key1a, align 8
  %"$indices_gep_1719" = getelementptr i8, i8* %"$indices_buf_1717", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1719" to %String*
  store %String %"$key1a_1718", %String* %indices_cast, align 8
  %"$key2a_1720" = load %String, %String* %key2a, align 8
  %"$indices_gep_1721" = getelementptr i8, i8* %"$indices_buf_1717", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1721" to %String*
  store %String %"$key2a_1720", %String* %indices_cast1, align 8
  %"$execptr_load_1723" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1724" = call i8* @_fetch_field(i8* %"$execptr_load_1723", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1722", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1717", i32 1)
  %"$c1_1725" = bitcast i8* %"$c1_call_1724" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1725", %TName_Option_String** %c1, align 8
  %"$c1_1726" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1726_1727" = bitcast %TName_Option_String* %"$c1_1726" to i8*
  %"$_literal_cost_call_1728" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$c1_1726_1727")
  %"$gasadd_1729" = add i64 %"$_literal_cost_call_1728", 0
  %"$gasadd_1730" = add i64 %"$gasadd_1729", 2
  %"$gasrem_1731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1732" = icmp ugt i64 %"$gasadd_1730", %"$gasrem_1731"
  br i1 %"$gascmp_1732", label %"$out_of_gas_1733", label %"$have_gas_1734"

"$out_of_gas_1733":                               ; preds = %"$have_gas_1714"
  call void @_out_of_gas()
  br label %"$have_gas_1734"

"$have_gas_1734":                                 ; preds = %"$out_of_gas_1733", %"$have_gas_1714"
  %"$consume_1735" = sub i64 %"$gasrem_1731", %"$gasadd_1730"
  store i64 %"$consume_1735", i64* @_gasrem, align 8
  %"$gasrem_1736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1737" = icmp ugt i64 2, %"$gasrem_1736"
  br i1 %"$gascmp_1737", label %"$out_of_gas_1738", label %"$have_gas_1739"

"$out_of_gas_1738":                               ; preds = %"$have_gas_1734"
  call void @_out_of_gas()
  br label %"$have_gas_1739"

"$have_gas_1739":                                 ; preds = %"$out_of_gas_1738", %"$have_gas_1734"
  %"$consume_1740" = sub i64 %"$gasrem_1736", 2
  store i64 %"$consume_1740", i64* @_gasrem, align 8
  %"$c1_1742" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1743" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1742", i32 0, i32 0
  %"$c1_tag_1744" = load i8, i8* %"$c1_tag_1743", align 1
  switch i8 %"$c1_tag_1744", label %"$empty_default_1745" [
    i8 0, label %"$Some_1746"
    i8 1, label %"$None_1819"
  ]

"$Some_1746":                                     ; preds = %"$have_gas_1739"
  %"$c1_1747" = bitcast %TName_Option_String* %"$c1_1742" to %CName_Some_String*
  %"$c_gep_1748" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1747", i32 0, i32 1
  %"$c_load_1749" = load %String, %String* %"$c_gep_1748", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1749", %String* %c, align 8
  %"$gasrem_1750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1751" = icmp ugt i64 1, %"$gasrem_1750"
  br i1 %"$gascmp_1751", label %"$out_of_gas_1752", label %"$have_gas_1753"

"$out_of_gas_1752":                               ; preds = %"$Some_1746"
  call void @_out_of_gas()
  br label %"$have_gas_1753"

"$have_gas_1753":                                 ; preds = %"$out_of_gas_1752", %"$Some_1746"
  %"$consume_1754" = sub i64 %"$gasrem_1750", 1
  store i64 %"$consume_1754", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1756" = icmp ugt i64 1, %"$gasrem_1755"
  br i1 %"$gascmp_1756", label %"$out_of_gas_1757", label %"$have_gas_1758"

"$out_of_gas_1757":                               ; preds = %"$have_gas_1753"
  call void @_out_of_gas()
  br label %"$have_gas_1758"

"$have_gas_1758":                                 ; preds = %"$out_of_gas_1757", %"$have_gas_1753"
  %"$consume_1759" = sub i64 %"$gasrem_1755", 1
  store i64 %"$consume_1759", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1760", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1762" = icmp ugt i64 1, %"$gasrem_1761"
  br i1 %"$gascmp_1762", label %"$out_of_gas_1763", label %"$have_gas_1764"

"$out_of_gas_1763":                               ; preds = %"$have_gas_1758"
  call void @_out_of_gas()
  br label %"$have_gas_1764"

"$have_gas_1764":                                 ; preds = %"$out_of_gas_1763", %"$have_gas_1758"
  %"$consume_1765" = sub i64 %"$gasrem_1761", 1
  store i64 %"$consume_1765", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1766" = alloca %String, align 8
  %"$c_1767" = load %String, %String* %c, align 8
  store %String %"$c_1767", %String* %"$_literal_cost_c_1766", align 8
  %"$$_literal_cost_c_1766_1768" = bitcast %String* %"$_literal_cost_c_1766" to i8*
  %"$_literal_cost_call_1769" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1766_1768")
  %"$_literal_cost_v_1770" = alloca %String, align 8
  %"$v_1771" = load %String, %String* %v, align 8
  store %String %"$v_1771", %String* %"$_literal_cost_v_1770", align 8
  %"$$_literal_cost_v_1770_1772" = bitcast %String* %"$_literal_cost_v_1770" to i8*
  %"$_literal_cost_call_1773" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1770_1772")
  %"$gasmin_1774" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1769", i64 %"$_literal_cost_call_1773")
  %"$gasrem_1775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1776" = icmp ugt i64 %"$gasmin_1774", %"$gasrem_1775"
  br i1 %"$gascmp_1776", label %"$out_of_gas_1777", label %"$have_gas_1778"

"$out_of_gas_1777":                               ; preds = %"$have_gas_1764"
  call void @_out_of_gas()
  br label %"$have_gas_1778"

"$have_gas_1778":                                 ; preds = %"$out_of_gas_1777", %"$have_gas_1764"
  %"$consume_1779" = sub i64 %"$gasrem_1775", %"$gasmin_1774"
  store i64 %"$consume_1779", i64* @_gasrem, align 8
  %"$execptr_load_1780" = load i8*, i8** @_execptr, align 8
  %"$c_1781" = load %String, %String* %c, align 8
  %"$v_1782" = load %String, %String* %v, align 8
  %"$eq_call_1783" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1780", %String %"$c_1781", %String %"$v_1782")
  store %TName_Bool* %"$eq_call_1783", %TName_Bool** %eq, align 8
  %"$gasrem_1785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1786" = icmp ugt i64 2, %"$gasrem_1785"
  br i1 %"$gascmp_1786", label %"$out_of_gas_1787", label %"$have_gas_1788"

"$out_of_gas_1787":                               ; preds = %"$have_gas_1778"
  call void @_out_of_gas()
  br label %"$have_gas_1788"

"$have_gas_1788":                                 ; preds = %"$out_of_gas_1787", %"$have_gas_1778"
  %"$consume_1789" = sub i64 %"$gasrem_1785", 2
  store i64 %"$consume_1789", i64* @_gasrem, align 8
  %"$eq_1791" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1792" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1791", i32 0, i32 0
  %"$eq_tag_1793" = load i8, i8* %"$eq_tag_1792", align 1
  switch i8 %"$eq_tag_1793", label %"$empty_default_1794" [
    i8 0, label %"$True_1795"
    i8 1, label %"$False_1797"
  ]

"$True_1795":                                     ; preds = %"$have_gas_1788"
  %"$eq_1796" = bitcast %TName_Bool* %"$eq_1791" to %CName_True*
  br label %"$matchsucc_1790"

"$False_1797":                                    ; preds = %"$have_gas_1788"
  %"$eq_1798" = bitcast %TName_Bool* %"$eq_1791" to %CName_False*
  %"$gasrem_1799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1800" = icmp ugt i64 1, %"$gasrem_1799"
  br i1 %"$gascmp_1800", label %"$out_of_gas_1801", label %"$have_gas_1802"

"$out_of_gas_1801":                               ; preds = %"$False_1797"
  call void @_out_of_gas()
  br label %"$have_gas_1802"

"$have_gas_1802":                                 ; preds = %"$out_of_gas_1801", %"$False_1797"
  %"$consume_1803" = sub i64 %"$gasrem_1799", 1
  store i64 %"$consume_1803", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1805" = icmp ugt i64 1, %"$gasrem_1804"
  br i1 %"$gascmp_1805", label %"$out_of_gas_1806", label %"$have_gas_1807"

"$out_of_gas_1806":                               ; preds = %"$have_gas_1802"
  call void @_out_of_gas()
  br label %"$have_gas_1807"

"$have_gas_1807":                                 ; preds = %"$out_of_gas_1806", %"$have_gas_1802"
  %"$consume_1808" = sub i64 %"$gasrem_1804", 1
  store i64 %"$consume_1808", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1809", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1811" = icmp ugt i64 1, %"$gasrem_1810"
  br i1 %"$gascmp_1811", label %"$out_of_gas_1812", label %"$have_gas_1813"

"$out_of_gas_1812":                               ; preds = %"$have_gas_1807"
  call void @_out_of_gas()
  br label %"$have_gas_1813"

"$have_gas_1813":                                 ; preds = %"$out_of_gas_1812", %"$have_gas_1807"
  %"$consume_1814" = sub i64 %"$gasrem_1810", 1
  store i64 %"$consume_1814", i64* @_gasrem, align 8
  %"$fail_msg__origin_1815" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1815", align 1
  %"$fail_msg__sender_1816" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1816", align 1
  %"$tname_1817" = load %String, %String* %tname, align 8
  %"$m_1818" = load %String, %String* %m, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1815", [20 x i8]* %"$fail_msg__sender_1816", %String %"$tname_1817", %String %"$m_1818")
  br label %"$matchsucc_1790"

"$empty_default_1794":                            ; preds = %"$have_gas_1788"
  br label %"$matchsucc_1790"

"$matchsucc_1790":                                ; preds = %"$have_gas_1813", %"$True_1795", %"$empty_default_1794"
  br label %"$matchsucc_1741"

"$None_1819":                                     ; preds = %"$have_gas_1739"
  %"$c1_1820" = bitcast %TName_Option_String* %"$c1_1742" to %CName_None_String*
  %"$gasrem_1821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1822" = icmp ugt i64 1, %"$gasrem_1821"
  br i1 %"$gascmp_1822", label %"$out_of_gas_1823", label %"$have_gas_1824"

"$out_of_gas_1823":                               ; preds = %"$None_1819"
  call void @_out_of_gas()
  br label %"$have_gas_1824"

"$have_gas_1824":                                 ; preds = %"$out_of_gas_1823", %"$None_1819"
  %"$consume_1825" = sub i64 %"$gasrem_1821", 1
  store i64 %"$consume_1825", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1827" = icmp ugt i64 1, %"$gasrem_1826"
  br i1 %"$gascmp_1827", label %"$out_of_gas_1828", label %"$have_gas_1829"

"$out_of_gas_1828":                               ; preds = %"$have_gas_1824"
  call void @_out_of_gas()
  br label %"$have_gas_1829"

"$have_gas_1829":                                 ; preds = %"$out_of_gas_1828", %"$have_gas_1824"
  %"$consume_1830" = sub i64 %"$gasrem_1826", 1
  store i64 %"$consume_1830", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1831", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1833" = icmp ugt i64 1, %"$gasrem_1832"
  br i1 %"$gascmp_1833", label %"$out_of_gas_1834", label %"$have_gas_1835"

"$out_of_gas_1834":                               ; preds = %"$have_gas_1829"
  call void @_out_of_gas()
  br label %"$have_gas_1835"

"$have_gas_1835":                                 ; preds = %"$out_of_gas_1834", %"$have_gas_1829"
  %"$consume_1836" = sub i64 %"$gasrem_1832", 1
  store i64 %"$consume_1836", i64* @_gasrem, align 8
  %"$fail_msg__origin_1837" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1837", align 1
  %"$fail_msg__sender_1838" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1838", align 1
  %"$tname_1839" = load %String, %String* %tname, align 8
  %"$m_1840" = load %String, %String* %m2, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1837", [20 x i8]* %"$fail_msg__sender_1838", %String %"$tname_1839", %String %"$m_1840")
  br label %"$matchsucc_1741"

"$empty_default_1745":                            ; preds = %"$have_gas_1739"
  br label %"$matchsucc_1741"

"$matchsucc_1741":                                ; preds = %"$have_gas_1835", %"$matchsucc_1790", %"$empty_default_1745"
  %"$gasrem_1841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1842" = icmp ugt i64 1, %"$gasrem_1841"
  br i1 %"$gascmp_1842", label %"$out_of_gas_1843", label %"$have_gas_1844"

"$out_of_gas_1843":                               ; preds = %"$matchsucc_1741"
  call void @_out_of_gas()
  br label %"$have_gas_1844"

"$have_gas_1844":                                 ; preds = %"$out_of_gas_1843", %"$matchsucc_1741"
  %"$consume_1845" = sub i64 %"$gasrem_1841", 1
  store i64 %"$consume_1845", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1847" = icmp ugt i64 1, %"$gasrem_1846"
  br i1 %"$gascmp_1847", label %"$out_of_gas_1848", label %"$have_gas_1849"

"$out_of_gas_1848":                               ; preds = %"$have_gas_1844"
  call void @_out_of_gas()
  br label %"$have_gas_1849"

"$have_gas_1849":                                 ; preds = %"$out_of_gas_1848", %"$have_gas_1844"
  %"$consume_1850" = sub i64 %"$gasrem_1846", 1
  store i64 %"$consume_1850", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1851", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$c1_5" = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_1852_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1852_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1852_salloc_load", i64 16)
  %"$indices_buf_1852_salloc" = bitcast i8* %"$indices_buf_1852_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1852" = bitcast [16 x i8]* %"$indices_buf_1852_salloc" to i8*
  %"$key1b_1853" = load %String, %String* %key1b, align 8
  %"$indices_gep_1854" = getelementptr i8, i8* %"$indices_buf_1852", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1854" to %String*
  store %String %"$key1b_1853", %String* %indices_cast3, align 8
  %"$execptr_load_1856" = load i8*, i8** @_execptr, align 8
  %"$$c1_5_call_1857" = call i8* @_fetch_field(i8* %"$execptr_load_1856", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1855", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_1852", i32 1)
  %"$$c1_5_1858" = bitcast i8* %"$$c1_5_call_1857" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1858", %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$c1_5_1859" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$$c1_5_1859_1860" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1859" to i8*
  %"$_literal_cost_call_1861" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$$c1_5_1859_1860")
  %"$$c1_5_1862" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$$c1_5_1862_1863" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1862" to i8*
  %"$_mapsortcost_call_1864" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$$c1_5_1862_1863")
  %"$gasadd_1865" = add i64 %"$_literal_cost_call_1861", %"$_mapsortcost_call_1864"
  %"$gasadd_1866" = add i64 %"$gasadd_1865", 1
  %"$gasrem_1867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1868" = icmp ugt i64 %"$gasadd_1866", %"$gasrem_1867"
  br i1 %"$gascmp_1868", label %"$out_of_gas_1869", label %"$have_gas_1870"

"$out_of_gas_1869":                               ; preds = %"$have_gas_1849"
  call void @_out_of_gas()
  br label %"$have_gas_1870"

"$have_gas_1870":                                 ; preds = %"$out_of_gas_1869", %"$have_gas_1849"
  %"$consume_1871" = sub i64 %"$gasrem_1867", %"$gasadd_1866"
  store i64 %"$consume_1871", i64* @_gasrem, align 8
  %"$gasrem_1872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1873" = icmp ugt i64 2, %"$gasrem_1872"
  br i1 %"$gascmp_1873", label %"$out_of_gas_1874", label %"$have_gas_1875"

"$out_of_gas_1874":                               ; preds = %"$have_gas_1870"
  call void @_out_of_gas()
  br label %"$have_gas_1875"

"$have_gas_1875":                                 ; preds = %"$out_of_gas_1874", %"$have_gas_1870"
  %"$consume_1876" = sub i64 %"$gasrem_1872", 2
  store i64 %"$consume_1876", i64* @_gasrem, align 8
  %"$$c1_5_1878" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$c1_5_tag_1879" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1878", i32 0, i32 0
  %"$$c1_5_tag_1880" = load i8, i8* %"$$c1_5_tag_1879", align 1
  switch i8 %"$$c1_5_tag_1880", label %"$empty_default_1881" [
    i8 0, label %"$Some_1882"
    i8 1, label %"$None_1906"
  ]

"$Some_1882":                                     ; preds = %"$have_gas_1875"
  %"$$c1_5_1883" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1878" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_5_18_gep_1884" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_5_1883", i32 0, i32 1
  %"$$$c1_5_18_load_1885" = load %Map_String_String*, %Map_String_String** %"$$$c1_5_18_gep_1884", align 8
  %"$$c1_5_18" = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$$$c1_5_18_load_1885", %Map_String_String** %"$$c1_5_18", align 8
  %"$gasrem_1886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1887" = icmp ugt i64 1, %"$gasrem_1886"
  br i1 %"$gascmp_1887", label %"$out_of_gas_1888", label %"$have_gas_1889"

"$out_of_gas_1888":                               ; preds = %"$Some_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1889"

"$have_gas_1889":                                 ; preds = %"$out_of_gas_1888", %"$Some_1882"
  %"$consume_1890" = sub i64 %"$gasrem_1886", 1
  store i64 %"$consume_1890", i64* @_gasrem, align 8
  %m4 = alloca %String, align 8
  %"$gasrem_1891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1892" = icmp ugt i64 1, %"$gasrem_1891"
  br i1 %"$gascmp_1892", label %"$out_of_gas_1893", label %"$have_gas_1894"

"$out_of_gas_1893":                               ; preds = %"$have_gas_1889"
  call void @_out_of_gas()
  br label %"$have_gas_1894"

"$have_gas_1894":                                 ; preds = %"$out_of_gas_1893", %"$have_gas_1889"
  %"$consume_1895" = sub i64 %"$gasrem_1891", 1
  store i64 %"$consume_1895", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1896", i32 0, i32 0), i32 36 }, %String* %m4, align 8
  %"$gasrem_1897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1898" = icmp ugt i64 1, %"$gasrem_1897"
  br i1 %"$gascmp_1898", label %"$out_of_gas_1899", label %"$have_gas_1900"

"$out_of_gas_1899":                               ; preds = %"$have_gas_1894"
  call void @_out_of_gas()
  br label %"$have_gas_1900"

"$have_gas_1900":                                 ; preds = %"$out_of_gas_1899", %"$have_gas_1894"
  %"$consume_1901" = sub i64 %"$gasrem_1897", 1
  store i64 %"$consume_1901", i64* @_gasrem, align 8
  %"$fail_msg__origin_1902" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1902", align 1
  %"$fail_msg__sender_1903" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1903", align 1
  %"$tname_1904" = load %String, %String* %tname, align 8
  %"$m_1905" = load %String, %String* %m4, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1902", [20 x i8]* %"$fail_msg__sender_1903", %String %"$tname_1904", %String %"$m_1905")
  br label %"$matchsucc_1877"

"$None_1906":                                     ; preds = %"$have_gas_1875"
  %"$$c1_5_1907" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1878" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_1877"

"$empty_default_1881":                            ; preds = %"$have_gas_1875"
  br label %"$matchsucc_1877"

"$matchsucc_1877":                                ; preds = %"$None_1906", %"$have_gas_1900", %"$empty_default_1881"
  %"$gasrem_1908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1909" = icmp ugt i64 1, %"$gasrem_1908"
  br i1 %"$gascmp_1909", label %"$out_of_gas_1910", label %"$have_gas_1911"

"$out_of_gas_1910":                               ; preds = %"$matchsucc_1877"
  call void @_out_of_gas()
  br label %"$have_gas_1911"

"$have_gas_1911":                                 ; preds = %"$out_of_gas_1910", %"$matchsucc_1877"
  %"$consume_1912" = sub i64 %"$gasrem_1908", 1
  store i64 %"$consume_1912", i64* @_gasrem, align 8
  %"$key1b_6" = alloca %String, align 8
  %"$gasrem_1913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1914" = icmp ugt i64 1, %"$gasrem_1913"
  br i1 %"$gascmp_1914", label %"$out_of_gas_1915", label %"$have_gas_1916"

"$out_of_gas_1915":                               ; preds = %"$have_gas_1911"
  call void @_out_of_gas()
  br label %"$have_gas_1916"

"$have_gas_1916":                                 ; preds = %"$out_of_gas_1915", %"$have_gas_1911"
  %"$consume_1917" = sub i64 %"$gasrem_1913", 1
  store i64 %"$consume_1917", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1918", i32 0, i32 0), i32 5 }, %String* %"$key1b_6", align 8
  %"$gasrem_1919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1920" = icmp ugt i64 1, %"$gasrem_1919"
  br i1 %"$gascmp_1920", label %"$out_of_gas_1921", label %"$have_gas_1922"

"$out_of_gas_1921":                               ; preds = %"$have_gas_1916"
  call void @_out_of_gas()
  br label %"$have_gas_1922"

"$have_gas_1922":                                 ; preds = %"$out_of_gas_1921", %"$have_gas_1916"
  %"$consume_1923" = sub i64 %"$gasrem_1919", 1
  store i64 %"$consume_1923", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1925" = icmp ugt i64 1, %"$gasrem_1924"
  br i1 %"$gascmp_1925", label %"$out_of_gas_1926", label %"$have_gas_1927"

"$out_of_gas_1926":                               ; preds = %"$have_gas_1922"
  call void @_out_of_gas()
  br label %"$have_gas_1927"

"$have_gas_1927":                                 ; preds = %"$out_of_gas_1926", %"$have_gas_1922"
  %"$consume_1928" = sub i64 %"$gasrem_1924", 1
  store i64 %"$consume_1928", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1929", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_7" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1930_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1930_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1930_salloc_load", i64 32)
  %"$indices_buf_1930_salloc" = bitcast i8* %"$indices_buf_1930_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1930" = bitcast [32 x i8]* %"$indices_buf_1930_salloc" to i8*
  %"$$key1b_6_1931" = load %String, %String* %"$key1b_6", align 8
  %"$indices_gep_1932" = getelementptr i8, i8* %"$indices_buf_1930", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_1932" to %String*
  store %String %"$$key1b_6_1931", %String* %indices_cast5, align 8
  %"$key2b_1933" = load %String, %String* %key2b, align 8
  %"$indices_gep_1934" = getelementptr i8, i8* %"$indices_buf_1930", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_1934" to %String*
  store %String %"$key2b_1933", %String* %indices_cast6, align 8
  %"$execptr_load_1936" = load i8*, i8** @_execptr, align 8
  %"$$c1_7_call_1937" = call i8* @_fetch_field(i8* %"$execptr_load_1936", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1935", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1930", i32 1)
  %"$$c1_7_1938" = bitcast i8* %"$$c1_7_call_1937" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_1938", %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_1939" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$$c1_7_1939_1940" = bitcast %TName_Option_String* %"$$c1_7_1939" to i8*
  %"$_literal_cost_call_1941" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_7_1939_1940")
  %"$gasadd_1942" = add i64 %"$_literal_cost_call_1941", 0
  %"$gasadd_1943" = add i64 %"$gasadd_1942", 2
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 %"$gasadd_1943", %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$have_gas_1927"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$have_gas_1927"
  %"$consume_1948" = sub i64 %"$gasrem_1944", %"$gasadd_1943"
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$gasrem_1949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1950" = icmp ugt i64 2, %"$gasrem_1949"
  br i1 %"$gascmp_1950", label %"$out_of_gas_1951", label %"$have_gas_1952"

"$out_of_gas_1951":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1952"

"$have_gas_1952":                                 ; preds = %"$out_of_gas_1951", %"$have_gas_1947"
  %"$consume_1953" = sub i64 %"$gasrem_1949", 2
  store i64 %"$consume_1953", i64* @_gasrem, align 8
  %"$$c1_7_1955" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_tag_1956" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_1955", i32 0, i32 0
  %"$$c1_7_tag_1957" = load i8, i8* %"$$c1_7_tag_1956", align 1
  switch i8 %"$$c1_7_tag_1957", label %"$empty_default_1958" [
    i8 0, label %"$Some_1959"
    i8 1, label %"$None_1983"
  ]

"$Some_1959":                                     ; preds = %"$have_gas_1952"
  %"$$c1_7_1960" = bitcast %TName_Option_String* %"$$c1_7_1955" to %CName_Some_String*
  %"$$$c1_7_17_gep_1961" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_1960", i32 0, i32 1
  %"$$$c1_7_17_load_1962" = load %String, %String* %"$$$c1_7_17_gep_1961", align 8
  %"$$c1_7_17" = alloca %String, align 8
  store %String %"$$$c1_7_17_load_1962", %String* %"$$c1_7_17", align 8
  %"$gasrem_1963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1964" = icmp ugt i64 1, %"$gasrem_1963"
  br i1 %"$gascmp_1964", label %"$out_of_gas_1965", label %"$have_gas_1966"

"$out_of_gas_1965":                               ; preds = %"$Some_1959"
  call void @_out_of_gas()
  br label %"$have_gas_1966"

"$have_gas_1966":                                 ; preds = %"$out_of_gas_1965", %"$Some_1959"
  %"$consume_1967" = sub i64 %"$gasrem_1963", 1
  store i64 %"$consume_1967", i64* @_gasrem, align 8
  %m7 = alloca %String, align 8
  %"$gasrem_1968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1969" = icmp ugt i64 1, %"$gasrem_1968"
  br i1 %"$gascmp_1969", label %"$out_of_gas_1970", label %"$have_gas_1971"

"$out_of_gas_1970":                               ; preds = %"$have_gas_1966"
  call void @_out_of_gas()
  br label %"$have_gas_1971"

"$have_gas_1971":                                 ; preds = %"$out_of_gas_1970", %"$have_gas_1966"
  %"$consume_1972" = sub i64 %"$gasrem_1968", 1
  store i64 %"$consume_1972", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1973", i32 0, i32 0), i32 42 }, %String* %m7, align 8
  %"$gasrem_1974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1975" = icmp ugt i64 1, %"$gasrem_1974"
  br i1 %"$gascmp_1975", label %"$out_of_gas_1976", label %"$have_gas_1977"

"$out_of_gas_1976":                               ; preds = %"$have_gas_1971"
  call void @_out_of_gas()
  br label %"$have_gas_1977"

"$have_gas_1977":                                 ; preds = %"$out_of_gas_1976", %"$have_gas_1971"
  %"$consume_1978" = sub i64 %"$gasrem_1974", 1
  store i64 %"$consume_1978", i64* @_gasrem, align 8
  %"$fail_msg__origin_1979" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1979", align 1
  %"$fail_msg__sender_1980" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1980", align 1
  %"$tname_1981" = load %String, %String* %tname, align 8
  %"$m_1982" = load %String, %String* %m7, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1979", [20 x i8]* %"$fail_msg__sender_1980", %String %"$tname_1981", %String %"$m_1982")
  br label %"$matchsucc_1954"

"$None_1983":                                     ; preds = %"$have_gas_1952"
  %"$$c1_7_1984" = bitcast %TName_Option_String* %"$$c1_7_1955" to %CName_None_String*
  br label %"$matchsucc_1954"

"$empty_default_1958":                            ; preds = %"$have_gas_1952"
  br label %"$matchsucc_1954"

"$matchsucc_1954":                                ; preds = %"$None_1983", %"$have_gas_1977", %"$empty_default_1958"
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$matchsucc_1954"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$matchsucc_1954"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  %"$key1b_8" = alloca %String, align 8
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %"$have_gas_1988"
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %"$have_gas_1988"
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1995", i32 0, i32 0), i32 5 }, %String* %"$key1b_8", align 8
  %"$gasrem_1996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1997" = icmp ugt i64 1, %"$gasrem_1996"
  br i1 %"$gascmp_1997", label %"$out_of_gas_1998", label %"$have_gas_1999"

"$out_of_gas_1998":                               ; preds = %"$have_gas_1993"
  call void @_out_of_gas()
  br label %"$have_gas_1999"

"$have_gas_1999":                                 ; preds = %"$out_of_gas_1998", %"$have_gas_1993"
  %"$consume_2000" = sub i64 %"$gasrem_1996", 1
  store i64 %"$consume_2000", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_2001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2002" = icmp ugt i64 1, %"$gasrem_2001"
  br i1 %"$gascmp_2002", label %"$out_of_gas_2003", label %"$have_gas_2004"

"$out_of_gas_2003":                               ; preds = %"$have_gas_1999"
  call void @_out_of_gas()
  br label %"$have_gas_2004"

"$have_gas_2004":                                 ; preds = %"$out_of_gas_2003", %"$have_gas_1999"
  %"$consume_2005" = sub i64 %"$gasrem_2001", 1
  store i64 %"$consume_2005", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2006", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$c1_9" = alloca %TName_Option_String*, align 8
  %"$indices_buf_2007_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2007_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2007_salloc_load", i64 32)
  %"$indices_buf_2007_salloc" = bitcast i8* %"$indices_buf_2007_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2007" = bitcast [32 x i8]* %"$indices_buf_2007_salloc" to i8*
  %"$$key1b_8_2008" = load %String, %String* %"$key1b_8", align 8
  %"$indices_gep_2009" = getelementptr i8, i8* %"$indices_buf_2007", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_2009" to %String*
  store %String %"$$key1b_8_2008", %String* %indices_cast8, align 8
  %"$key2d_2010" = load %String, %String* %key2d, align 8
  %"$indices_gep_2011" = getelementptr i8, i8* %"$indices_buf_2007", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_2011" to %String*
  store %String %"$key2d_2010", %String* %indices_cast9, align 8
  %"$execptr_load_2013" = load i8*, i8** @_execptr, align 8
  %"$$c1_9_call_2014" = call i8* @_fetch_field(i8* %"$execptr_load_2013", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2012", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2007", i32 1)
  %"$$c1_9_2015" = bitcast i8* %"$$c1_9_call_2014" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_2015", %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_2016" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$$c1_9_2016_2017" = bitcast %TName_Option_String* %"$$c1_9_2016" to i8*
  %"$_literal_cost_call_2018" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_9_2016_2017")
  %"$gasadd_2019" = add i64 %"$_literal_cost_call_2018", 0
  %"$gasadd_2020" = add i64 %"$gasadd_2019", 2
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 %"$gasadd_2020", %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$have_gas_2004"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$have_gas_2004"
  %"$consume_2025" = sub i64 %"$gasrem_2021", %"$gasadd_2020"
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 2, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2024"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 2
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$$c1_9_2032" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_tag_2033" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_2032", i32 0, i32 0
  %"$$c1_9_tag_2034" = load i8, i8* %"$$c1_9_tag_2033", align 1
  switch i8 %"$$c1_9_tag_2034", label %"$empty_default_2035" [
    i8 0, label %"$Some_2036"
    i8 1, label %"$None_2060"
  ]

"$Some_2036":                                     ; preds = %"$have_gas_2029"
  %"$$c1_9_2037" = bitcast %TName_Option_String* %"$$c1_9_2032" to %CName_Some_String*
  %"$$$c1_9_16_gep_2038" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_2037", i32 0, i32 1
  %"$$$c1_9_16_load_2039" = load %String, %String* %"$$$c1_9_16_gep_2038", align 8
  %"$$c1_9_16" = alloca %String, align 8
  store %String %"$$$c1_9_16_load_2039", %String* %"$$c1_9_16", align 8
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$Some_2036"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$Some_2036"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  %m10 = alloca %String, align 8
  %"$gasrem_2045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2046" = icmp ugt i64 1, %"$gasrem_2045"
  br i1 %"$gascmp_2046", label %"$out_of_gas_2047", label %"$have_gas_2048"

"$out_of_gas_2047":                               ; preds = %"$have_gas_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2048"

"$have_gas_2048":                                 ; preds = %"$out_of_gas_2047", %"$have_gas_2043"
  %"$consume_2049" = sub i64 %"$gasrem_2045", 1
  store i64 %"$consume_2049", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_2050", i32 0, i32 0), i32 42 }, %String* %m10, align 8
  %"$gasrem_2051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2052" = icmp ugt i64 1, %"$gasrem_2051"
  br i1 %"$gascmp_2052", label %"$out_of_gas_2053", label %"$have_gas_2054"

"$out_of_gas_2053":                               ; preds = %"$have_gas_2048"
  call void @_out_of_gas()
  br label %"$have_gas_2054"

"$have_gas_2054":                                 ; preds = %"$out_of_gas_2053", %"$have_gas_2048"
  %"$consume_2055" = sub i64 %"$gasrem_2051", 1
  store i64 %"$consume_2055", i64* @_gasrem, align 8
  %"$fail_msg__origin_2056" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2056", align 1
  %"$fail_msg__sender_2057" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2057", align 1
  %"$tname_2058" = load %String, %String* %tname, align 8
  %"$m_2059" = load %String, %String* %m10, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2056", [20 x i8]* %"$fail_msg__sender_2057", %String %"$tname_2058", %String %"$m_2059")
  br label %"$matchsucc_2031"

"$None_2060":                                     ; preds = %"$have_gas_2029"
  %"$$c1_9_2061" = bitcast %TName_Option_String* %"$$c1_9_2032" to %CName_None_String*
  br label %"$matchsucc_2031"

"$empty_default_2035":                            ; preds = %"$have_gas_2029"
  br label %"$matchsucc_2031"

"$matchsucc_2031":                                ; preds = %"$None_2060", %"$have_gas_2054", %"$empty_default_2035"
  %"$gasrem_2062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2063" = icmp ugt i64 1, %"$gasrem_2062"
  br i1 %"$gascmp_2063", label %"$out_of_gas_2064", label %"$have_gas_2065"

"$out_of_gas_2064":                               ; preds = %"$matchsucc_2031"
  call void @_out_of_gas()
  br label %"$have_gas_2065"

"$have_gas_2065":                                 ; preds = %"$out_of_gas_2064", %"$matchsucc_2031"
  %"$consume_2066" = sub i64 %"$gasrem_2062", 1
  store i64 %"$consume_2066", i64* @_gasrem, align 8
  %"$key1b_10" = alloca %String, align 8
  %"$gasrem_2067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2068" = icmp ugt i64 1, %"$gasrem_2067"
  br i1 %"$gascmp_2068", label %"$out_of_gas_2069", label %"$have_gas_2070"

"$out_of_gas_2069":                               ; preds = %"$have_gas_2065"
  call void @_out_of_gas()
  br label %"$have_gas_2070"

"$have_gas_2070":                                 ; preds = %"$out_of_gas_2069", %"$have_gas_2065"
  %"$consume_2071" = sub i64 %"$gasrem_2067", 1
  store i64 %"$consume_2071", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2072", i32 0, i32 0), i32 5 }, %String* %"$key1b_10", align 8
  %"$gasrem_2073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2074" = icmp ugt i64 1, %"$gasrem_2073"
  br i1 %"$gascmp_2074", label %"$out_of_gas_2075", label %"$have_gas_2076"

"$out_of_gas_2075":                               ; preds = %"$have_gas_2070"
  call void @_out_of_gas()
  br label %"$have_gas_2076"

"$have_gas_2076":                                 ; preds = %"$out_of_gas_2075", %"$have_gas_2070"
  %"$consume_2077" = sub i64 %"$gasrem_2073", 1
  store i64 %"$consume_2077", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2079" = icmp ugt i64 1, %"$gasrem_2078"
  br i1 %"$gascmp_2079", label %"$out_of_gas_2080", label %"$have_gas_2081"

"$out_of_gas_2080":                               ; preds = %"$have_gas_2076"
  call void @_out_of_gas()
  br label %"$have_gas_2081"

"$have_gas_2081":                                 ; preds = %"$out_of_gas_2080", %"$have_gas_2076"
  %"$consume_2082" = sub i64 %"$gasrem_2078", 1
  store i64 %"$consume_2082", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2083", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_2084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2085" = icmp ugt i64 1, %"$gasrem_2084"
  br i1 %"$gascmp_2085", label %"$out_of_gas_2086", label %"$have_gas_2087"

"$out_of_gas_2086":                               ; preds = %"$have_gas_2081"
  call void @_out_of_gas()
  br label %"$have_gas_2087"

"$have_gas_2087":                                 ; preds = %"$out_of_gas_2086", %"$have_gas_2081"
  %"$consume_2088" = sub i64 %"$gasrem_2084", 1
  store i64 %"$consume_2088", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_2089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2090" = icmp ugt i64 1, %"$gasrem_2089"
  br i1 %"$gascmp_2090", label %"$out_of_gas_2091", label %"$have_gas_2092"

"$out_of_gas_2091":                               ; preds = %"$have_gas_2087"
  call void @_out_of_gas()
  br label %"$have_gas_2092"

"$have_gas_2092":                                 ; preds = %"$out_of_gas_2091", %"$have_gas_2087"
  %"$consume_2093" = sub i64 %"$gasrem_2089", 1
  store i64 %"$consume_2093", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2094", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_2095" = alloca %String, align 8
  %"$s_2096" = load %String, %String* %s, align 8
  store %String %"$s_2096", %String* %"$_literal_cost_s_2095", align 8
  %"$$_literal_cost_s_2095_2097" = bitcast %String* %"$_literal_cost_s_2095" to i8*
  %"$_literal_cost_call_2098" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_2095_2097")
  %"$gasadd_2099" = add i64 %"$_literal_cost_call_2098", 2
  %"$gasrem_2100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2101" = icmp ugt i64 %"$gasadd_2099", %"$gasrem_2100"
  br i1 %"$gascmp_2101", label %"$out_of_gas_2102", label %"$have_gas_2103"

"$out_of_gas_2102":                               ; preds = %"$have_gas_2092"
  call void @_out_of_gas()
  br label %"$have_gas_2103"

"$have_gas_2103":                                 ; preds = %"$out_of_gas_2102", %"$have_gas_2092"
  %"$consume_2104" = sub i64 %"$gasrem_2100", %"$gasadd_2099"
  store i64 %"$consume_2104", i64* @_gasrem, align 8
  %"$indices_buf_2105_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2105_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2105_salloc_load", i64 32)
  %"$indices_buf_2105_salloc" = bitcast i8* %"$indices_buf_2105_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2105" = bitcast [32 x i8]* %"$indices_buf_2105_salloc" to i8*
  %"$$key1b_10_2106" = load %String, %String* %"$key1b_10", align 8
  %"$indices_gep_2107" = getelementptr i8, i8* %"$indices_buf_2105", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_2107" to %String*
  store %String %"$$key1b_10_2106", %String* %indices_cast11, align 8
  %"$key2c_2108" = load %String, %String* %key2c, align 8
  %"$indices_gep_2109" = getelementptr i8, i8* %"$indices_buf_2105", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_2109" to %String*
  store %String %"$key2c_2108", %String* %indices_cast12, align 8
  %"$execptr_load_2110" = load i8*, i8** @_execptr, align 8
  %"$s_2112" = load %String, %String* %s, align 8
  %"$update_value_2113" = alloca %String, align 8
  store %String %"$s_2112", %String* %"$update_value_2113", align 8
  %"$update_value_2114" = bitcast %String* %"$update_value_2113" to i8*
  call void @_update_field(i8* %"$execptr_load_2110", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2111", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2105", i8* %"$update_value_2114")
  ret void
}

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @t7(i8* %0) {
entry:
  %"$_amount_2116" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2117" = bitcast i8* %"$_amount_2116" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2117", align 8
  %"$_origin_2118" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2119" = bitcast i8* %"$_origin_2118" to [20 x i8]*
  %"$_sender_2120" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2121" = bitcast i8* %"$_sender_2120" to [20 x i8]*
  call void @"$t7_1681"(%Uint128 %_amount, [20 x i8]* %"$_origin_2119", [20 x i8]* %"$_sender_2121")
  ret void
}

define internal void @"$t8_2122"(%Uint128 %_amount, [20 x i8]* %"$_origin_2123", [20 x i8]* %"$_sender_2124") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2123", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2124", align 1
  %"$gasrem_2125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2126" = icmp ugt i64 1, %"$gasrem_2125"
  br i1 %"$gascmp_2126", label %"$out_of_gas_2127", label %"$have_gas_2128"

"$out_of_gas_2127":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2128"

"$have_gas_2128":                                 ; preds = %"$out_of_gas_2127", %entry
  %"$consume_2129" = sub i64 %"$gasrem_2125", 1
  store i64 %"$consume_2129", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2131" = icmp ugt i64 1, %"$gasrem_2130"
  br i1 %"$gascmp_2131", label %"$out_of_gas_2132", label %"$have_gas_2133"

"$out_of_gas_2132":                               ; preds = %"$have_gas_2128"
  call void @_out_of_gas()
  br label %"$have_gas_2133"

"$have_gas_2133":                                 ; preds = %"$out_of_gas_2132", %"$have_gas_2128"
  %"$consume_2134" = sub i64 %"$gasrem_2130", 1
  store i64 %"$consume_2134", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2135", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_2136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2137" = icmp ugt i64 1, %"$gasrem_2136"
  br i1 %"$gascmp_2137", label %"$out_of_gas_2138", label %"$have_gas_2139"

"$out_of_gas_2138":                               ; preds = %"$have_gas_2133"
  call void @_out_of_gas()
  br label %"$have_gas_2139"

"$have_gas_2139":                                 ; preds = %"$out_of_gas_2138", %"$have_gas_2133"
  %"$consume_2140" = sub i64 %"$gasrem_2136", 1
  store i64 %"$consume_2140", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2142" = icmp ugt i64 1, %"$gasrem_2141"
  br i1 %"$gascmp_2142", label %"$out_of_gas_2143", label %"$have_gas_2144"

"$out_of_gas_2143":                               ; preds = %"$have_gas_2139"
  call void @_out_of_gas()
  br label %"$have_gas_2144"

"$have_gas_2144":                                 ; preds = %"$out_of_gas_2143", %"$have_gas_2139"
  %"$consume_2145" = sub i64 %"$gasrem_2141", 1
  store i64 %"$consume_2145", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2146", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2148" = icmp ugt i64 1, %"$gasrem_2147"
  br i1 %"$gascmp_2148", label %"$out_of_gas_2149", label %"$have_gas_2150"

"$out_of_gas_2149":                               ; preds = %"$have_gas_2144"
  call void @_out_of_gas()
  br label %"$have_gas_2150"

"$have_gas_2150":                                 ; preds = %"$out_of_gas_2149", %"$have_gas_2144"
  %"$consume_2151" = sub i64 %"$gasrem_2147", 1
  store i64 %"$consume_2151", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_2152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2153" = icmp ugt i64 1, %"$gasrem_2152"
  br i1 %"$gascmp_2153", label %"$out_of_gas_2154", label %"$have_gas_2155"

"$out_of_gas_2154":                               ; preds = %"$have_gas_2150"
  call void @_out_of_gas()
  br label %"$have_gas_2155"

"$have_gas_2155":                                 ; preds = %"$out_of_gas_2154", %"$have_gas_2150"
  %"$consume_2156" = sub i64 %"$gasrem_2152", 1
  store i64 %"$consume_2156", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2157", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_2158_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2158_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2158_salloc_load", i64 32)
  %"$indices_buf_2158_salloc" = bitcast i8* %"$indices_buf_2158_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2158" = bitcast [32 x i8]* %"$indices_buf_2158_salloc" to i8*
  %"$key1a_2159" = load %String, %String* %key1a, align 8
  %"$indices_gep_2160" = getelementptr i8, i8* %"$indices_buf_2158", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2160" to %String*
  store %String %"$key1a_2159", %String* %indices_cast, align 8
  %"$key2a_2161" = load %String, %String* %key2a, align 8
  %"$indices_gep_2162" = getelementptr i8, i8* %"$indices_buf_2158", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_2162" to %String*
  store %String %"$key2a_2161", %String* %indices_cast1, align 8
  %"$execptr_load_2164" = load i8*, i8** @_execptr, align 8
  %"$c1_call_2165" = call i8* @_fetch_field(i8* %"$execptr_load_2164", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2163", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2158", i32 1)
  %"$c1_2166" = bitcast i8* %"$c1_call_2165" to %TName_Option_String*
  store %TName_Option_String* %"$c1_2166", %TName_Option_String** %c1, align 8
  %"$c1_2167" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_2167_2168" = bitcast %TName_Option_String* %"$c1_2167" to i8*
  %"$_literal_cost_call_2169" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$c1_2167_2168")
  %"$gasadd_2170" = add i64 %"$_literal_cost_call_2169", 0
  %"$gasadd_2171" = add i64 %"$gasadd_2170", 2
  %"$gasrem_2172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2173" = icmp ugt i64 %"$gasadd_2171", %"$gasrem_2172"
  br i1 %"$gascmp_2173", label %"$out_of_gas_2174", label %"$have_gas_2175"

"$out_of_gas_2174":                               ; preds = %"$have_gas_2155"
  call void @_out_of_gas()
  br label %"$have_gas_2175"

"$have_gas_2175":                                 ; preds = %"$out_of_gas_2174", %"$have_gas_2155"
  %"$consume_2176" = sub i64 %"$gasrem_2172", %"$gasadd_2171"
  store i64 %"$consume_2176", i64* @_gasrem, align 8
  %"$gasrem_2177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2178" = icmp ugt i64 2, %"$gasrem_2177"
  br i1 %"$gascmp_2178", label %"$out_of_gas_2179", label %"$have_gas_2180"

"$out_of_gas_2179":                               ; preds = %"$have_gas_2175"
  call void @_out_of_gas()
  br label %"$have_gas_2180"

"$have_gas_2180":                                 ; preds = %"$out_of_gas_2179", %"$have_gas_2175"
  %"$consume_2181" = sub i64 %"$gasrem_2177", 2
  store i64 %"$consume_2181", i64* @_gasrem, align 8
  %"$c1_2183" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2184" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2183", i32 0, i32 0
  %"$c1_tag_2185" = load i8, i8* %"$c1_tag_2184", align 1
  switch i8 %"$c1_tag_2185", label %"$empty_default_2186" [
    i8 0, label %"$Some_2187"
    i8 1, label %"$None_2260"
  ]

"$Some_2187":                                     ; preds = %"$have_gas_2180"
  %"$c1_2188" = bitcast %TName_Option_String* %"$c1_2183" to %CName_Some_String*
  %"$c_gep_2189" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2188", i32 0, i32 1
  %"$c_load_2190" = load %String, %String* %"$c_gep_2189", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2190", %String* %c, align 8
  %"$gasrem_2191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2192" = icmp ugt i64 1, %"$gasrem_2191"
  br i1 %"$gascmp_2192", label %"$out_of_gas_2193", label %"$have_gas_2194"

"$out_of_gas_2193":                               ; preds = %"$Some_2187"
  call void @_out_of_gas()
  br label %"$have_gas_2194"

"$have_gas_2194":                                 ; preds = %"$out_of_gas_2193", %"$Some_2187"
  %"$consume_2195" = sub i64 %"$gasrem_2191", 1
  store i64 %"$consume_2195", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2197" = icmp ugt i64 1, %"$gasrem_2196"
  br i1 %"$gascmp_2197", label %"$out_of_gas_2198", label %"$have_gas_2199"

"$out_of_gas_2198":                               ; preds = %"$have_gas_2194"
  call void @_out_of_gas()
  br label %"$have_gas_2199"

"$have_gas_2199":                                 ; preds = %"$out_of_gas_2198", %"$have_gas_2194"
  %"$consume_2200" = sub i64 %"$gasrem_2196", 1
  store i64 %"$consume_2200", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2201", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2203" = icmp ugt i64 1, %"$gasrem_2202"
  br i1 %"$gascmp_2203", label %"$out_of_gas_2204", label %"$have_gas_2205"

"$out_of_gas_2204":                               ; preds = %"$have_gas_2199"
  call void @_out_of_gas()
  br label %"$have_gas_2205"

"$have_gas_2205":                                 ; preds = %"$out_of_gas_2204", %"$have_gas_2199"
  %"$consume_2206" = sub i64 %"$gasrem_2202", 1
  store i64 %"$consume_2206", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2207" = alloca %String, align 8
  %"$c_2208" = load %String, %String* %c, align 8
  store %String %"$c_2208", %String* %"$_literal_cost_c_2207", align 8
  %"$$_literal_cost_c_2207_2209" = bitcast %String* %"$_literal_cost_c_2207" to i8*
  %"$_literal_cost_call_2210" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2207_2209")
  %"$_literal_cost_v_2211" = alloca %String, align 8
  %"$v_2212" = load %String, %String* %v, align 8
  store %String %"$v_2212", %String* %"$_literal_cost_v_2211", align 8
  %"$$_literal_cost_v_2211_2213" = bitcast %String* %"$_literal_cost_v_2211" to i8*
  %"$_literal_cost_call_2214" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2211_2213")
  %"$gasmin_2215" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2210", i64 %"$_literal_cost_call_2214")
  %"$gasrem_2216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2217" = icmp ugt i64 %"$gasmin_2215", %"$gasrem_2216"
  br i1 %"$gascmp_2217", label %"$out_of_gas_2218", label %"$have_gas_2219"

"$out_of_gas_2218":                               ; preds = %"$have_gas_2205"
  call void @_out_of_gas()
  br label %"$have_gas_2219"

"$have_gas_2219":                                 ; preds = %"$out_of_gas_2218", %"$have_gas_2205"
  %"$consume_2220" = sub i64 %"$gasrem_2216", %"$gasmin_2215"
  store i64 %"$consume_2220", i64* @_gasrem, align 8
  %"$execptr_load_2221" = load i8*, i8** @_execptr, align 8
  %"$c_2222" = load %String, %String* %c, align 8
  %"$v_2223" = load %String, %String* %v, align 8
  %"$eq_call_2224" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2221", %String %"$c_2222", %String %"$v_2223")
  store %TName_Bool* %"$eq_call_2224", %TName_Bool** %eq, align 8
  %"$gasrem_2226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2227" = icmp ugt i64 2, %"$gasrem_2226"
  br i1 %"$gascmp_2227", label %"$out_of_gas_2228", label %"$have_gas_2229"

"$out_of_gas_2228":                               ; preds = %"$have_gas_2219"
  call void @_out_of_gas()
  br label %"$have_gas_2229"

"$have_gas_2229":                                 ; preds = %"$out_of_gas_2228", %"$have_gas_2219"
  %"$consume_2230" = sub i64 %"$gasrem_2226", 2
  store i64 %"$consume_2230", i64* @_gasrem, align 8
  %"$eq_2232" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2233" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2232", i32 0, i32 0
  %"$eq_tag_2234" = load i8, i8* %"$eq_tag_2233", align 1
  switch i8 %"$eq_tag_2234", label %"$empty_default_2235" [
    i8 0, label %"$True_2236"
    i8 1, label %"$False_2238"
  ]

"$True_2236":                                     ; preds = %"$have_gas_2229"
  %"$eq_2237" = bitcast %TName_Bool* %"$eq_2232" to %CName_True*
  br label %"$matchsucc_2231"

"$False_2238":                                    ; preds = %"$have_gas_2229"
  %"$eq_2239" = bitcast %TName_Bool* %"$eq_2232" to %CName_False*
  %"$gasrem_2240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2241" = icmp ugt i64 1, %"$gasrem_2240"
  br i1 %"$gascmp_2241", label %"$out_of_gas_2242", label %"$have_gas_2243"

"$out_of_gas_2242":                               ; preds = %"$False_2238"
  call void @_out_of_gas()
  br label %"$have_gas_2243"

"$have_gas_2243":                                 ; preds = %"$out_of_gas_2242", %"$False_2238"
  %"$consume_2244" = sub i64 %"$gasrem_2240", 1
  store i64 %"$consume_2244", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2246" = icmp ugt i64 1, %"$gasrem_2245"
  br i1 %"$gascmp_2246", label %"$out_of_gas_2247", label %"$have_gas_2248"

"$out_of_gas_2247":                               ; preds = %"$have_gas_2243"
  call void @_out_of_gas()
  br label %"$have_gas_2248"

"$have_gas_2248":                                 ; preds = %"$out_of_gas_2247", %"$have_gas_2243"
  %"$consume_2249" = sub i64 %"$gasrem_2245", 1
  store i64 %"$consume_2249", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2250", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_2251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2252" = icmp ugt i64 1, %"$gasrem_2251"
  br i1 %"$gascmp_2252", label %"$out_of_gas_2253", label %"$have_gas_2254"

"$out_of_gas_2253":                               ; preds = %"$have_gas_2248"
  call void @_out_of_gas()
  br label %"$have_gas_2254"

"$have_gas_2254":                                 ; preds = %"$out_of_gas_2253", %"$have_gas_2248"
  %"$consume_2255" = sub i64 %"$gasrem_2251", 1
  store i64 %"$consume_2255", i64* @_gasrem, align 8
  %"$fail_msg__origin_2256" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2256", align 1
  %"$fail_msg__sender_2257" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2257", align 1
  %"$tname_2258" = load %String, %String* %tname, align 8
  %"$m_2259" = load %String, %String* %m, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2256", [20 x i8]* %"$fail_msg__sender_2257", %String %"$tname_2258", %String %"$m_2259")
  br label %"$matchsucc_2231"

"$empty_default_2235":                            ; preds = %"$have_gas_2229"
  br label %"$matchsucc_2231"

"$matchsucc_2231":                                ; preds = %"$have_gas_2254", %"$True_2236", %"$empty_default_2235"
  br label %"$matchsucc_2182"

"$None_2260":                                     ; preds = %"$have_gas_2180"
  %"$c1_2261" = bitcast %TName_Option_String* %"$c1_2183" to %CName_None_String*
  %"$gasrem_2262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2263" = icmp ugt i64 1, %"$gasrem_2262"
  br i1 %"$gascmp_2263", label %"$out_of_gas_2264", label %"$have_gas_2265"

"$out_of_gas_2264":                               ; preds = %"$None_2260"
  call void @_out_of_gas()
  br label %"$have_gas_2265"

"$have_gas_2265":                                 ; preds = %"$out_of_gas_2264", %"$None_2260"
  %"$consume_2266" = sub i64 %"$gasrem_2262", 1
  store i64 %"$consume_2266", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2268" = icmp ugt i64 1, %"$gasrem_2267"
  br i1 %"$gascmp_2268", label %"$out_of_gas_2269", label %"$have_gas_2270"

"$out_of_gas_2269":                               ; preds = %"$have_gas_2265"
  call void @_out_of_gas()
  br label %"$have_gas_2270"

"$have_gas_2270":                                 ; preds = %"$out_of_gas_2269", %"$have_gas_2265"
  %"$consume_2271" = sub i64 %"$gasrem_2267", 1
  store i64 %"$consume_2271", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2272", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_2273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2274" = icmp ugt i64 1, %"$gasrem_2273"
  br i1 %"$gascmp_2274", label %"$out_of_gas_2275", label %"$have_gas_2276"

"$out_of_gas_2275":                               ; preds = %"$have_gas_2270"
  call void @_out_of_gas()
  br label %"$have_gas_2276"

"$have_gas_2276":                                 ; preds = %"$out_of_gas_2275", %"$have_gas_2270"
  %"$consume_2277" = sub i64 %"$gasrem_2273", 1
  store i64 %"$consume_2277", i64* @_gasrem, align 8
  %"$fail_msg__origin_2278" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2278", align 1
  %"$fail_msg__sender_2279" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2279", align 1
  %"$tname_2280" = load %String, %String* %tname, align 8
  %"$m_2281" = load %String, %String* %m2, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2278", [20 x i8]* %"$fail_msg__sender_2279", %String %"$tname_2280", %String %"$m_2281")
  br label %"$matchsucc_2182"

"$empty_default_2186":                            ; preds = %"$have_gas_2180"
  br label %"$matchsucc_2182"

"$matchsucc_2182":                                ; preds = %"$have_gas_2276", %"$matchsucc_2231", %"$empty_default_2186"
  %"$gasrem_2282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2283" = icmp ugt i64 1, %"$gasrem_2282"
  br i1 %"$gascmp_2283", label %"$out_of_gas_2284", label %"$have_gas_2285"

"$out_of_gas_2284":                               ; preds = %"$matchsucc_2182"
  call void @_out_of_gas()
  br label %"$have_gas_2285"

"$have_gas_2285":                                 ; preds = %"$out_of_gas_2284", %"$matchsucc_2182"
  %"$consume_2286" = sub i64 %"$gasrem_2282", 1
  store i64 %"$consume_2286", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_2287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2288" = icmp ugt i64 1, %"$gasrem_2287"
  br i1 %"$gascmp_2288", label %"$out_of_gas_2289", label %"$have_gas_2290"

"$out_of_gas_2289":                               ; preds = %"$have_gas_2285"
  call void @_out_of_gas()
  br label %"$have_gas_2290"

"$have_gas_2290":                                 ; preds = %"$out_of_gas_2289", %"$have_gas_2285"
  %"$consume_2291" = sub i64 %"$gasrem_2287", 1
  store i64 %"$consume_2291", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2292", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_2293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2294" = icmp ugt i64 1, %"$gasrem_2293"
  br i1 %"$gascmp_2294", label %"$out_of_gas_2295", label %"$have_gas_2296"

"$out_of_gas_2295":                               ; preds = %"$have_gas_2290"
  call void @_out_of_gas()
  br label %"$have_gas_2296"

"$have_gas_2296":                                 ; preds = %"$out_of_gas_2295", %"$have_gas_2290"
  %"$consume_2297" = sub i64 %"$gasrem_2293", 1
  store i64 %"$consume_2297", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2299" = icmp ugt i64 1, %"$gasrem_2298"
  br i1 %"$gascmp_2299", label %"$out_of_gas_2300", label %"$have_gas_2301"

"$out_of_gas_2300":                               ; preds = %"$have_gas_2296"
  call void @_out_of_gas()
  br label %"$have_gas_2301"

"$have_gas_2301":                                 ; preds = %"$out_of_gas_2300", %"$have_gas_2296"
  %"$consume_2302" = sub i64 %"$gasrem_2298", 1
  store i64 %"$consume_2302", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2303", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_11" = alloca %TName_Option_String*, align 8
  %"$indices_buf_2304_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2304_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2304_salloc_load", i64 32)
  %"$indices_buf_2304_salloc" = bitcast i8* %"$indices_buf_2304_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2304" = bitcast [32 x i8]* %"$indices_buf_2304_salloc" to i8*
  %"$key1b_2305" = load %String, %String* %key1b, align 8
  %"$indices_gep_2306" = getelementptr i8, i8* %"$indices_buf_2304", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_2306" to %String*
  store %String %"$key1b_2305", %String* %indices_cast3, align 8
  %"$key2c_2307" = load %String, %String* %key2c, align 8
  %"$indices_gep_2308" = getelementptr i8, i8* %"$indices_buf_2304", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_2308" to %String*
  store %String %"$key2c_2307", %String* %indices_cast4, align 8
  %"$execptr_load_2310" = load i8*, i8** @_execptr, align 8
  %"$$c1_11_call_2311" = call i8* @_fetch_field(i8* %"$execptr_load_2310", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2309", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2304", i32 1)
  %"$$c1_11_2312" = bitcast i8* %"$$c1_11_call_2311" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_11_2312", %TName_Option_String** %"$c1_11", align 8
  %"$$c1_11_2313" = load %TName_Option_String*, %TName_Option_String** %"$c1_11", align 8
  %"$$$c1_11_2313_2314" = bitcast %TName_Option_String* %"$$c1_11_2313" to i8*
  %"$_literal_cost_call_2315" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_11_2313_2314")
  %"$gasadd_2316" = add i64 %"$_literal_cost_call_2315", 0
  %"$gasadd_2317" = add i64 %"$gasadd_2316", 2
  %"$gasrem_2318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2319" = icmp ugt i64 %"$gasadd_2317", %"$gasrem_2318"
  br i1 %"$gascmp_2319", label %"$out_of_gas_2320", label %"$have_gas_2321"

"$out_of_gas_2320":                               ; preds = %"$have_gas_2301"
  call void @_out_of_gas()
  br label %"$have_gas_2321"

"$have_gas_2321":                                 ; preds = %"$out_of_gas_2320", %"$have_gas_2301"
  %"$consume_2322" = sub i64 %"$gasrem_2318", %"$gasadd_2317"
  store i64 %"$consume_2322", i64* @_gasrem, align 8
  %"$gasrem_2323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2324" = icmp ugt i64 2, %"$gasrem_2323"
  br i1 %"$gascmp_2324", label %"$out_of_gas_2325", label %"$have_gas_2326"

"$out_of_gas_2325":                               ; preds = %"$have_gas_2321"
  call void @_out_of_gas()
  br label %"$have_gas_2326"

"$have_gas_2326":                                 ; preds = %"$out_of_gas_2325", %"$have_gas_2321"
  %"$consume_2327" = sub i64 %"$gasrem_2323", 2
  store i64 %"$consume_2327", i64* @_gasrem, align 8
  %"$$c1_11_2329" = load %TName_Option_String*, %TName_Option_String** %"$c1_11", align 8
  %"$$c1_11_tag_2330" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_11_2329", i32 0, i32 0
  %"$$c1_11_tag_2331" = load i8, i8* %"$$c1_11_tag_2330", align 1
  switch i8 %"$$c1_11_tag_2331", label %"$empty_default_2332" [
    i8 0, label %"$Some_2333"
    i8 1, label %"$None_2406"
  ]

"$Some_2333":                                     ; preds = %"$have_gas_2326"
  %"$$c1_11_2334" = bitcast %TName_Option_String* %"$$c1_11_2329" to %CName_Some_String*
  %"$c_gep_2335" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_11_2334", i32 0, i32 1
  %"$c_load_2336" = load %String, %String* %"$c_gep_2335", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_2336", %String* %c5, align 8
  %"$gasrem_2337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2338" = icmp ugt i64 1, %"$gasrem_2337"
  br i1 %"$gascmp_2338", label %"$out_of_gas_2339", label %"$have_gas_2340"

"$out_of_gas_2339":                               ; preds = %"$Some_2333"
  call void @_out_of_gas()
  br label %"$have_gas_2340"

"$have_gas_2340":                                 ; preds = %"$out_of_gas_2339", %"$Some_2333"
  %"$consume_2341" = sub i64 %"$gasrem_2337", 1
  store i64 %"$consume_2341", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_2342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2343" = icmp ugt i64 1, %"$gasrem_2342"
  br i1 %"$gascmp_2343", label %"$out_of_gas_2344", label %"$have_gas_2345"

"$out_of_gas_2344":                               ; preds = %"$have_gas_2340"
  call void @_out_of_gas()
  br label %"$have_gas_2345"

"$have_gas_2345":                                 ; preds = %"$out_of_gas_2344", %"$have_gas_2340"
  %"$consume_2346" = sub i64 %"$gasrem_2342", 1
  store i64 %"$consume_2346", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2347", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_2348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2349" = icmp ugt i64 1, %"$gasrem_2348"
  br i1 %"$gascmp_2349", label %"$out_of_gas_2350", label %"$have_gas_2351"

"$out_of_gas_2350":                               ; preds = %"$have_gas_2345"
  call void @_out_of_gas()
  br label %"$have_gas_2351"

"$have_gas_2351":                                 ; preds = %"$out_of_gas_2350", %"$have_gas_2345"
  %"$consume_2352" = sub i64 %"$gasrem_2348", 1
  store i64 %"$consume_2352", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2353" = alloca %String, align 8
  %"$c_2354" = load %String, %String* %c5, align 8
  store %String %"$c_2354", %String* %"$_literal_cost_c_2353", align 8
  %"$$_literal_cost_c_2353_2355" = bitcast %String* %"$_literal_cost_c_2353" to i8*
  %"$_literal_cost_call_2356" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2353_2355")
  %"$_literal_cost_v_2357" = alloca %String, align 8
  %"$v_2358" = load %String, %String* %v6, align 8
  store %String %"$v_2358", %String* %"$_literal_cost_v_2357", align 8
  %"$$_literal_cost_v_2357_2359" = bitcast %String* %"$_literal_cost_v_2357" to i8*
  %"$_literal_cost_call_2360" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2357_2359")
  %"$gasmin_2361" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2356", i64 %"$_literal_cost_call_2360")
  %"$gasrem_2362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2363" = icmp ugt i64 %"$gasmin_2361", %"$gasrem_2362"
  br i1 %"$gascmp_2363", label %"$out_of_gas_2364", label %"$have_gas_2365"

"$out_of_gas_2364":                               ; preds = %"$have_gas_2351"
  call void @_out_of_gas()
  br label %"$have_gas_2365"

"$have_gas_2365":                                 ; preds = %"$out_of_gas_2364", %"$have_gas_2351"
  %"$consume_2366" = sub i64 %"$gasrem_2362", %"$gasmin_2361"
  store i64 %"$consume_2366", i64* @_gasrem, align 8
  %"$execptr_load_2367" = load i8*, i8** @_execptr, align 8
  %"$c_2368" = load %String, %String* %c5, align 8
  %"$v_2369" = load %String, %String* %v6, align 8
  %"$eq_call_2370" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2367", %String %"$c_2368", %String %"$v_2369")
  store %TName_Bool* %"$eq_call_2370", %TName_Bool** %eq7, align 8
  %"$gasrem_2372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2373" = icmp ugt i64 2, %"$gasrem_2372"
  br i1 %"$gascmp_2373", label %"$out_of_gas_2374", label %"$have_gas_2375"

"$out_of_gas_2374":                               ; preds = %"$have_gas_2365"
  call void @_out_of_gas()
  br label %"$have_gas_2375"

"$have_gas_2375":                                 ; preds = %"$out_of_gas_2374", %"$have_gas_2365"
  %"$consume_2376" = sub i64 %"$gasrem_2372", 2
  store i64 %"$consume_2376", i64* @_gasrem, align 8
  %"$eq_2378" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_2379" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2378", i32 0, i32 0
  %"$eq_tag_2380" = load i8, i8* %"$eq_tag_2379", align 1
  switch i8 %"$eq_tag_2380", label %"$empty_default_2381" [
    i8 0, label %"$True_2382"
    i8 1, label %"$False_2384"
  ]

"$True_2382":                                     ; preds = %"$have_gas_2375"
  %"$eq_2383" = bitcast %TName_Bool* %"$eq_2378" to %CName_True*
  br label %"$matchsucc_2377"

"$False_2384":                                    ; preds = %"$have_gas_2375"
  %"$eq_2385" = bitcast %TName_Bool* %"$eq_2378" to %CName_False*
  %"$gasrem_2386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2387" = icmp ugt i64 1, %"$gasrem_2386"
  br i1 %"$gascmp_2387", label %"$out_of_gas_2388", label %"$have_gas_2389"

"$out_of_gas_2388":                               ; preds = %"$False_2384"
  call void @_out_of_gas()
  br label %"$have_gas_2389"

"$have_gas_2389":                                 ; preds = %"$out_of_gas_2388", %"$False_2384"
  %"$consume_2390" = sub i64 %"$gasrem_2386", 1
  store i64 %"$consume_2390", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_2391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2392" = icmp ugt i64 1, %"$gasrem_2391"
  br i1 %"$gascmp_2392", label %"$out_of_gas_2393", label %"$have_gas_2394"

"$out_of_gas_2393":                               ; preds = %"$have_gas_2389"
  call void @_out_of_gas()
  br label %"$have_gas_2394"

"$have_gas_2394":                                 ; preds = %"$out_of_gas_2393", %"$have_gas_2389"
  %"$consume_2395" = sub i64 %"$gasrem_2391", 1
  store i64 %"$consume_2395", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2396", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_2397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2398" = icmp ugt i64 1, %"$gasrem_2397"
  br i1 %"$gascmp_2398", label %"$out_of_gas_2399", label %"$have_gas_2400"

"$out_of_gas_2399":                               ; preds = %"$have_gas_2394"
  call void @_out_of_gas()
  br label %"$have_gas_2400"

"$have_gas_2400":                                 ; preds = %"$out_of_gas_2399", %"$have_gas_2394"
  %"$consume_2401" = sub i64 %"$gasrem_2397", 1
  store i64 %"$consume_2401", i64* @_gasrem, align 8
  %"$fail_msg__origin_2402" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2402", align 1
  %"$fail_msg__sender_2403" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2403", align 1
  %"$tname_2404" = load %String, %String* %tname, align 8
  %"$m_2405" = load %String, %String* %m8, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2402", [20 x i8]* %"$fail_msg__sender_2403", %String %"$tname_2404", %String %"$m_2405")
  br label %"$matchsucc_2377"

"$empty_default_2381":                            ; preds = %"$have_gas_2375"
  br label %"$matchsucc_2377"

"$matchsucc_2377":                                ; preds = %"$have_gas_2400", %"$True_2382", %"$empty_default_2381"
  br label %"$matchsucc_2328"

"$None_2406":                                     ; preds = %"$have_gas_2326"
  %"$$c1_11_2407" = bitcast %TName_Option_String* %"$$c1_11_2329" to %CName_None_String*
  %"$gasrem_2408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2409" = icmp ugt i64 1, %"$gasrem_2408"
  br i1 %"$gascmp_2409", label %"$out_of_gas_2410", label %"$have_gas_2411"

"$out_of_gas_2410":                               ; preds = %"$None_2406"
  call void @_out_of_gas()
  br label %"$have_gas_2411"

"$have_gas_2411":                                 ; preds = %"$out_of_gas_2410", %"$None_2406"
  %"$consume_2412" = sub i64 %"$gasrem_2408", 1
  store i64 %"$consume_2412", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_2413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2414" = icmp ugt i64 1, %"$gasrem_2413"
  br i1 %"$gascmp_2414", label %"$out_of_gas_2415", label %"$have_gas_2416"

"$out_of_gas_2415":                               ; preds = %"$have_gas_2411"
  call void @_out_of_gas()
  br label %"$have_gas_2416"

"$have_gas_2416":                                 ; preds = %"$out_of_gas_2415", %"$have_gas_2411"
  %"$consume_2417" = sub i64 %"$gasrem_2413", 1
  store i64 %"$consume_2417", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2418", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_2419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2420" = icmp ugt i64 1, %"$gasrem_2419"
  br i1 %"$gascmp_2420", label %"$out_of_gas_2421", label %"$have_gas_2422"

"$out_of_gas_2421":                               ; preds = %"$have_gas_2416"
  call void @_out_of_gas()
  br label %"$have_gas_2422"

"$have_gas_2422":                                 ; preds = %"$out_of_gas_2421", %"$have_gas_2416"
  %"$consume_2423" = sub i64 %"$gasrem_2419", 1
  store i64 %"$consume_2423", i64* @_gasrem, align 8
  %"$fail_msg__origin_2424" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2424", align 1
  %"$fail_msg__sender_2425" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2425", align 1
  %"$tname_2426" = load %String, %String* %tname, align 8
  %"$m_2427" = load %String, %String* %m9, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2424", [20 x i8]* %"$fail_msg__sender_2425", %String %"$tname_2426", %String %"$m_2427")
  br label %"$matchsucc_2328"

"$empty_default_2332":                            ; preds = %"$have_gas_2326"
  br label %"$matchsucc_2328"

"$matchsucc_2328":                                ; preds = %"$have_gas_2422", %"$matchsucc_2377", %"$empty_default_2332"
  %"$gasrem_2428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2429" = icmp ugt i64 1, %"$gasrem_2428"
  br i1 %"$gascmp_2429", label %"$out_of_gas_2430", label %"$have_gas_2431"

"$out_of_gas_2430":                               ; preds = %"$matchsucc_2328"
  call void @_out_of_gas()
  br label %"$have_gas_2431"

"$have_gas_2431":                                 ; preds = %"$out_of_gas_2430", %"$matchsucc_2328"
  %"$consume_2432" = sub i64 %"$gasrem_2428", 1
  store i64 %"$consume_2432", i64* @_gasrem, align 8
  %em = alloca %Map_String_String*, align 8
  %"$gasrem_2433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2434" = icmp ugt i64 1, %"$gasrem_2433"
  br i1 %"$gascmp_2434", label %"$out_of_gas_2435", label %"$have_gas_2436"

"$out_of_gas_2435":                               ; preds = %"$have_gas_2431"
  call void @_out_of_gas()
  br label %"$have_gas_2436"

"$have_gas_2436":                                 ; preds = %"$out_of_gas_2435", %"$have_gas_2431"
  %"$consume_2437" = sub i64 %"$gasrem_2433", 1
  store i64 %"$consume_2437", i64* @_gasrem, align 8
  %"$execptr_load_2438" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2439" = call i8* @_new_empty_map(i8* %"$execptr_load_2438")
  %"$_new_empty_map_2440" = bitcast i8* %"$_new_empty_map_call_2439" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2440", %Map_String_String** %em, align 8
  %"$em_2441" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$$em_2441_2442" = bitcast %Map_String_String* %"$em_2441" to i8*
  %"$_literal_cost_call_2443" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$em_2441_2442")
  %"$gasrem_2444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2445" = icmp ugt i64 %"$_literal_cost_call_2443", %"$gasrem_2444"
  br i1 %"$gascmp_2445", label %"$out_of_gas_2446", label %"$have_gas_2447"

"$out_of_gas_2446":                               ; preds = %"$have_gas_2436"
  call void @_out_of_gas()
  br label %"$have_gas_2447"

"$have_gas_2447":                                 ; preds = %"$out_of_gas_2446", %"$have_gas_2436"
  %"$consume_2448" = sub i64 %"$gasrem_2444", %"$_literal_cost_call_2443"
  store i64 %"$consume_2448", i64* @_gasrem, align 8
  %"$execptr_load_2449" = load i8*, i8** @_execptr, align 8
  %"$em_2451" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$update_value_2452" = bitcast %Map_String_String* %"$em_2451" to i8*
  call void @_update_field(i8* %"$execptr_load_2449", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2450", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_2452")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_2454" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2455" = bitcast i8* %"$_amount_2454" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2455", align 8
  %"$_origin_2456" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2457" = bitcast i8* %"$_origin_2456" to [20 x i8]*
  %"$_sender_2458" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2459" = bitcast i8* %"$_sender_2458" to [20 x i8]*
  call void @"$t8_2122"(%Uint128 %_amount, [20 x i8]* %"$_origin_2457", [20 x i8]* %"$_sender_2459")
  ret void
}

define internal void @"$t9_2460"(%Uint128 %_amount, [20 x i8]* %"$_origin_2461", [20 x i8]* %"$_sender_2462") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2461", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2462", align 1
  %"$gasrem_2463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2464" = icmp ugt i64 1, %"$gasrem_2463"
  br i1 %"$gascmp_2464", label %"$out_of_gas_2465", label %"$have_gas_2466"

"$out_of_gas_2465":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2466"

"$have_gas_2466":                                 ; preds = %"$out_of_gas_2465", %entry
  %"$consume_2467" = sub i64 %"$gasrem_2463", 1
  store i64 %"$consume_2467", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2469" = icmp ugt i64 1, %"$gasrem_2468"
  br i1 %"$gascmp_2469", label %"$out_of_gas_2470", label %"$have_gas_2471"

"$out_of_gas_2470":                               ; preds = %"$have_gas_2466"
  call void @_out_of_gas()
  br label %"$have_gas_2471"

"$have_gas_2471":                                 ; preds = %"$out_of_gas_2470", %"$have_gas_2466"
  %"$consume_2472" = sub i64 %"$gasrem_2468", 1
  store i64 %"$consume_2472", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2473", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2475" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2476" = call i8* @_fetch_field(i8* %"$execptr_load_2475", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2474", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1)
  %"$m1_2477" = bitcast i8* %"$m1_call_2476" to %Map_String_String*
  store %Map_String_String* %"$m1_2477", %Map_String_String** %m1, align 8
  %"$m1_2478" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2478_2479" = bitcast %Map_String_String* %"$m1_2478" to i8*
  %"$_literal_cost_call_2480" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2478_2479")
  %"$m1_2481" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2481_2482" = bitcast %Map_String_String* %"$m1_2481" to i8*
  %"$_mapsortcost_call_2483" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2481_2482")
  %"$gasadd_2484" = add i64 %"$_literal_cost_call_2480", %"$_mapsortcost_call_2483"
  %"$gasrem_2485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2486" = icmp ugt i64 %"$gasadd_2484", %"$gasrem_2485"
  br i1 %"$gascmp_2486", label %"$out_of_gas_2487", label %"$have_gas_2488"

"$out_of_gas_2487":                               ; preds = %"$have_gas_2471"
  call void @_out_of_gas()
  br label %"$have_gas_2488"

"$have_gas_2488":                                 ; preds = %"$out_of_gas_2487", %"$have_gas_2471"
  %"$consume_2489" = sub i64 %"$gasrem_2485", %"$gasadd_2484"
  store i64 %"$consume_2489", i64* @_gasrem, align 8
  %"$gasrem_2490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2491" = icmp ugt i64 1, %"$gasrem_2490"
  br i1 %"$gascmp_2491", label %"$out_of_gas_2492", label %"$have_gas_2493"

"$out_of_gas_2492":                               ; preds = %"$have_gas_2488"
  call void @_out_of_gas()
  br label %"$have_gas_2493"

"$have_gas_2493":                                 ; preds = %"$out_of_gas_2492", %"$have_gas_2488"
  %"$consume_2494" = sub i64 %"$gasrem_2490", 1
  store i64 %"$consume_2494", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_2495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2496" = icmp ugt i64 1, %"$gasrem_2495"
  br i1 %"$gascmp_2496", label %"$out_of_gas_2497", label %"$have_gas_2498"

"$out_of_gas_2497":                               ; preds = %"$have_gas_2493"
  call void @_out_of_gas()
  br label %"$have_gas_2498"

"$have_gas_2498":                                 ; preds = %"$out_of_gas_2497", %"$have_gas_2493"
  %"$consume_2499" = sub i64 %"$gasrem_2495", 1
  store i64 %"$consume_2499", i64* @_gasrem, align 8
  %"$m1_2500" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2500_2501" = bitcast %Map_String_String* %"$m1_2500" to i8*
  %"$size_call_2502" = call %Uint32 @_size(i8* %"$$m1_2500_2501")
  store %Uint32 %"$size_call_2502", %Uint32* %m1_size, align 4
  %"$gasrem_2503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2504" = icmp ugt i64 1, %"$gasrem_2503"
  br i1 %"$gascmp_2504", label %"$out_of_gas_2505", label %"$have_gas_2506"

"$out_of_gas_2505":                               ; preds = %"$have_gas_2498"
  call void @_out_of_gas()
  br label %"$have_gas_2506"

"$have_gas_2506":                                 ; preds = %"$out_of_gas_2505", %"$have_gas_2498"
  %"$consume_2507" = sub i64 %"$gasrem_2503", 1
  store i64 %"$consume_2507", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2509" = icmp ugt i64 1, %"$gasrem_2508"
  br i1 %"$gascmp_2509", label %"$out_of_gas_2510", label %"$have_gas_2511"

"$out_of_gas_2510":                               ; preds = %"$have_gas_2506"
  call void @_out_of_gas()
  br label %"$have_gas_2511"

"$have_gas_2511":                                 ; preds = %"$out_of_gas_2510", %"$have_gas_2506"
  %"$consume_2512" = sub i64 %"$gasrem_2508", 1
  store i64 %"$consume_2512", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2514" = icmp ugt i64 1, %"$gasrem_2513"
  br i1 %"$gascmp_2514", label %"$out_of_gas_2515", label %"$have_gas_2516"

"$out_of_gas_2515":                               ; preds = %"$have_gas_2511"
  call void @_out_of_gas()
  br label %"$have_gas_2516"

"$have_gas_2516":                                 ; preds = %"$out_of_gas_2515", %"$have_gas_2511"
  %"$consume_2517" = sub i64 %"$gasrem_2513", 1
  store i64 %"$consume_2517", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2519" = icmp ugt i64 4, %"$gasrem_2518"
  br i1 %"$gascmp_2519", label %"$out_of_gas_2520", label %"$have_gas_2521"

"$out_of_gas_2520":                               ; preds = %"$have_gas_2516"
  call void @_out_of_gas()
  br label %"$have_gas_2521"

"$have_gas_2521":                                 ; preds = %"$out_of_gas_2520", %"$have_gas_2516"
  %"$consume_2522" = sub i64 %"$gasrem_2518", 4
  store i64 %"$consume_2522", i64* @_gasrem, align 8
  %"$execptr_load_2523" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2524" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2525" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2526" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2523", %Uint32 %"$m1_size_2524", %Uint32 %"$zero_2525")
  store %TName_Bool* %"$eq_call_2526", %TName_Bool** %is_empty, align 8
  %"$gasrem_2528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2529" = icmp ugt i64 2, %"$gasrem_2528"
  br i1 %"$gascmp_2529", label %"$out_of_gas_2530", label %"$have_gas_2531"

"$out_of_gas_2530":                               ; preds = %"$have_gas_2521"
  call void @_out_of_gas()
  br label %"$have_gas_2531"

"$have_gas_2531":                                 ; preds = %"$out_of_gas_2530", %"$have_gas_2521"
  %"$consume_2532" = sub i64 %"$gasrem_2528", 2
  store i64 %"$consume_2532", i64* @_gasrem, align 8
  %"$is_empty_2534" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2535" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2534", i32 0, i32 0
  %"$is_empty_tag_2536" = load i8, i8* %"$is_empty_tag_2535", align 1
  switch i8 %"$is_empty_tag_2536", label %"$empty_default_2537" [
    i8 0, label %"$True_2538"
    i8 1, label %"$False_2540"
  ]

"$True_2538":                                     ; preds = %"$have_gas_2531"
  %"$is_empty_2539" = bitcast %TName_Bool* %"$is_empty_2534" to %CName_True*
  br label %"$matchsucc_2533"

"$False_2540":                                    ; preds = %"$have_gas_2531"
  %"$is_empty_2541" = bitcast %TName_Bool* %"$is_empty_2534" to %CName_False*
  %"$gasrem_2542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2543" = icmp ugt i64 1, %"$gasrem_2542"
  br i1 %"$gascmp_2543", label %"$out_of_gas_2544", label %"$have_gas_2545"

"$out_of_gas_2544":                               ; preds = %"$False_2540"
  call void @_out_of_gas()
  br label %"$have_gas_2545"

"$have_gas_2545":                                 ; preds = %"$out_of_gas_2544", %"$False_2540"
  %"$consume_2546" = sub i64 %"$gasrem_2542", 1
  store i64 %"$consume_2546", i64* @_gasrem, align 8
  %"$fail__origin_2547" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2547", align 1
  %"$fail__sender_2548" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2548", align 1
  %"$tname_2549" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2547", [20 x i8]* %"$fail__sender_2548", %String %"$tname_2549")
  br label %"$matchsucc_2533"

"$empty_default_2537":                            ; preds = %"$have_gas_2531"
  br label %"$matchsucc_2533"

"$matchsucc_2533":                                ; preds = %"$have_gas_2545", %"$True_2538", %"$empty_default_2537"
  %"$gasrem_2550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2551" = icmp ugt i64 1, %"$gasrem_2550"
  br i1 %"$gascmp_2551", label %"$out_of_gas_2552", label %"$have_gas_2553"

"$out_of_gas_2552":                               ; preds = %"$matchsucc_2533"
  call void @_out_of_gas()
  br label %"$have_gas_2553"

"$have_gas_2553":                                 ; preds = %"$out_of_gas_2552", %"$matchsucc_2533"
  %"$consume_2554" = sub i64 %"$gasrem_2550", 1
  store i64 %"$consume_2554", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2556" = icmp ugt i64 1, %"$gasrem_2555"
  br i1 %"$gascmp_2556", label %"$out_of_gas_2557", label %"$have_gas_2558"

"$out_of_gas_2557":                               ; preds = %"$have_gas_2553"
  call void @_out_of_gas()
  br label %"$have_gas_2558"

"$have_gas_2558":                                 ; preds = %"$out_of_gas_2557", %"$have_gas_2553"
  %"$consume_2559" = sub i64 %"$gasrem_2555", 1
  store i64 %"$consume_2559", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2560", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2562" = icmp ugt i64 1, %"$gasrem_2561"
  br i1 %"$gascmp_2562", label %"$out_of_gas_2563", label %"$have_gas_2564"

"$out_of_gas_2563":                               ; preds = %"$have_gas_2558"
  call void @_out_of_gas()
  br label %"$have_gas_2564"

"$have_gas_2564":                                 ; preds = %"$out_of_gas_2563", %"$have_gas_2558"
  %"$consume_2565" = sub i64 %"$gasrem_2561", 1
  store i64 %"$consume_2565", i64* @_gasrem, align 8
  %val = alloca %String, align 8
  %"$gasrem_2566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2567" = icmp ugt i64 1, %"$gasrem_2566"
  br i1 %"$gascmp_2567", label %"$out_of_gas_2568", label %"$have_gas_2569"

"$out_of_gas_2568":                               ; preds = %"$have_gas_2564"
  call void @_out_of_gas()
  br label %"$have_gas_2569"

"$have_gas_2569":                                 ; preds = %"$out_of_gas_2568", %"$have_gas_2564"
  %"$consume_2570" = sub i64 %"$gasrem_2566", 1
  store i64 %"$consume_2570", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2571", i32 0, i32 0), i32 3 }, %String* %val, align 8
  %"$gasrem_2572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2573" = icmp ugt i64 1, %"$gasrem_2572"
  br i1 %"$gascmp_2573", label %"$out_of_gas_2574", label %"$have_gas_2575"

"$out_of_gas_2574":                               ; preds = %"$have_gas_2569"
  call void @_out_of_gas()
  br label %"$have_gas_2575"

"$have_gas_2575":                                 ; preds = %"$out_of_gas_2574", %"$have_gas_2569"
  %"$consume_2576" = sub i64 %"$gasrem_2572", 1
  store i64 %"$consume_2576", i64* @_gasrem, align 8
  %"$m1_12" = alloca %Map_String_String*, align 8
  %"$m1_2577" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2577_2578" = bitcast %Map_String_String* %"$m1_2577" to i8*
  %"$_lengthof_call_2579" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2577_2578")
  %"$gasadd_2580" = add i64 1, %"$_lengthof_call_2579"
  %"$gasrem_2581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2582" = icmp ugt i64 %"$gasadd_2580", %"$gasrem_2581"
  br i1 %"$gascmp_2582", label %"$out_of_gas_2583", label %"$have_gas_2584"

"$out_of_gas_2583":                               ; preds = %"$have_gas_2575"
  call void @_out_of_gas()
  br label %"$have_gas_2584"

"$have_gas_2584":                                 ; preds = %"$out_of_gas_2583", %"$have_gas_2575"
  %"$consume_2585" = sub i64 %"$gasrem_2581", %"$gasadd_2580"
  store i64 %"$consume_2585", i64* @_gasrem, align 8
  %"$execptr_load_2586" = load i8*, i8** @_execptr, align 8
  %"$m1_2587" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2587_2588" = bitcast %Map_String_String* %"$m1_2587" to i8*
  %"$put_key1a_2589" = alloca %String, align 8
  %"$key1a_2590" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2590", %String* %"$put_key1a_2589", align 8
  %"$$put_key1a_2589_2591" = bitcast %String* %"$put_key1a_2589" to i8*
  %"$put_val_2592" = alloca %String, align 8
  %"$val_2593" = load %String, %String* %val, align 8
  store %String %"$val_2593", %String* %"$put_val_2592", align 8
  %"$$put_val_2592_2594" = bitcast %String* %"$put_val_2592" to i8*
  %"$put_call_2595" = call i8* @_put(i8* %"$execptr_load_2586", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2587_2588", i8* %"$$put_key1a_2589_2591", i8* %"$$put_val_2592_2594")
  %"$put_2596" = bitcast i8* %"$put_call_2595" to %Map_String_String*
  store %Map_String_String* %"$put_2596", %Map_String_String** %"$m1_12", align 8
  %"$$m1_12_2597" = load %Map_String_String*, %Map_String_String** %"$m1_12", align 8
  %"$$$m1_12_2597_2598" = bitcast %Map_String_String* %"$$m1_12_2597" to i8*
  %"$_literal_cost_call_2599" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$$m1_12_2597_2598")
  %"$gasrem_2600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2601" = icmp ugt i64 %"$_literal_cost_call_2599", %"$gasrem_2600"
  br i1 %"$gascmp_2601", label %"$out_of_gas_2602", label %"$have_gas_2603"

"$out_of_gas_2602":                               ; preds = %"$have_gas_2584"
  call void @_out_of_gas()
  br label %"$have_gas_2603"

"$have_gas_2603":                                 ; preds = %"$out_of_gas_2602", %"$have_gas_2584"
  %"$consume_2604" = sub i64 %"$gasrem_2600", %"$_literal_cost_call_2599"
  store i64 %"$consume_2604", i64* @_gasrem, align 8
  %"$execptr_load_2605" = load i8*, i8** @_execptr, align 8
  %"$$m1_12_2607" = load %Map_String_String*, %Map_String_String** %"$m1_12", align 8
  %"$update_value_2608" = bitcast %Map_String_String* %"$$m1_12_2607" to i8*
  call void @_update_field(i8* %"$execptr_load_2605", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2606", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_2608")
  ret void
}

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_2610" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2611" = bitcast i8* %"$_amount_2610" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2611", align 8
  %"$_origin_2612" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2613" = bitcast i8* %"$_origin_2612" to [20 x i8]*
  %"$_sender_2614" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2615" = bitcast i8* %"$_sender_2614" to [20 x i8]*
  call void @"$t9_2460"(%Uint128 %_amount, [20 x i8]* %"$_origin_2613", [20 x i8]* %"$_sender_2615")
  ret void
}

define internal void @"$t10_2616"(%Uint128 %_amount, [20 x i8]* %"$_origin_2617", [20 x i8]* %"$_sender_2618") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2617", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2618", align 1
  %"$gasrem_2619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2620" = icmp ugt i64 1, %"$gasrem_2619"
  br i1 %"$gascmp_2620", label %"$out_of_gas_2621", label %"$have_gas_2622"

"$out_of_gas_2621":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2622"

"$have_gas_2622":                                 ; preds = %"$out_of_gas_2621", %entry
  %"$consume_2623" = sub i64 %"$gasrem_2619", 1
  store i64 %"$consume_2623", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2625" = icmp ugt i64 1, %"$gasrem_2624"
  br i1 %"$gascmp_2625", label %"$out_of_gas_2626", label %"$have_gas_2627"

"$out_of_gas_2626":                               ; preds = %"$have_gas_2622"
  call void @_out_of_gas()
  br label %"$have_gas_2627"

"$have_gas_2627":                                 ; preds = %"$out_of_gas_2626", %"$have_gas_2622"
  %"$consume_2628" = sub i64 %"$gasrem_2624", 1
  store i64 %"$consume_2628", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2629", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_2630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2631" = icmp ugt i64 1, %"$gasrem_2630"
  br i1 %"$gascmp_2631", label %"$out_of_gas_2632", label %"$have_gas_2633"

"$out_of_gas_2632":                               ; preds = %"$have_gas_2627"
  call void @_out_of_gas()
  br label %"$have_gas_2633"

"$have_gas_2633":                                 ; preds = %"$out_of_gas_2632", %"$have_gas_2627"
  %"$consume_2634" = sub i64 %"$gasrem_2630", 1
  store i64 %"$consume_2634", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2636" = icmp ugt i64 1, %"$gasrem_2635"
  br i1 %"$gascmp_2636", label %"$out_of_gas_2637", label %"$have_gas_2638"

"$out_of_gas_2637":                               ; preds = %"$have_gas_2633"
  call void @_out_of_gas()
  br label %"$have_gas_2638"

"$have_gas_2638":                                 ; preds = %"$out_of_gas_2637", %"$have_gas_2633"
  %"$consume_2639" = sub i64 %"$gasrem_2635", 1
  store i64 %"$consume_2639", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2640", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2642" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2643" = call i8* @_fetch_field(i8* %"$execptr_load_2642", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2641", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1)
  %"$m1_2644" = bitcast i8* %"$m1_call_2643" to %Map_String_String*
  store %Map_String_String* %"$m1_2644", %Map_String_String** %m1, align 8
  %"$m1_2645" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2645_2646" = bitcast %Map_String_String* %"$m1_2645" to i8*
  %"$_literal_cost_call_2647" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2645_2646")
  %"$m1_2648" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2648_2649" = bitcast %Map_String_String* %"$m1_2648" to i8*
  %"$_mapsortcost_call_2650" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2648_2649")
  %"$gasadd_2651" = add i64 %"$_literal_cost_call_2647", %"$_mapsortcost_call_2650"
  %"$gasrem_2652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2653" = icmp ugt i64 %"$gasadd_2651", %"$gasrem_2652"
  br i1 %"$gascmp_2653", label %"$out_of_gas_2654", label %"$have_gas_2655"

"$out_of_gas_2654":                               ; preds = %"$have_gas_2638"
  call void @_out_of_gas()
  br label %"$have_gas_2655"

"$have_gas_2655":                                 ; preds = %"$out_of_gas_2654", %"$have_gas_2638"
  %"$consume_2656" = sub i64 %"$gasrem_2652", %"$gasadd_2651"
  store i64 %"$consume_2656", i64* @_gasrem, align 8
  %"$gasrem_2657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2658" = icmp ugt i64 1, %"$gasrem_2657"
  br i1 %"$gascmp_2658", label %"$out_of_gas_2659", label %"$have_gas_2660"

"$out_of_gas_2659":                               ; preds = %"$have_gas_2655"
  call void @_out_of_gas()
  br label %"$have_gas_2660"

"$have_gas_2660":                                 ; preds = %"$out_of_gas_2659", %"$have_gas_2655"
  %"$consume_2661" = sub i64 %"$gasrem_2657", 1
  store i64 %"$consume_2661", i64* @_gasrem, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$gasrem_2662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2663" = icmp ugt i64 1, %"$gasrem_2662"
  br i1 %"$gascmp_2663", label %"$out_of_gas_2664", label %"$have_gas_2665"

"$out_of_gas_2664":                               ; preds = %"$have_gas_2660"
  call void @_out_of_gas()
  br label %"$have_gas_2665"

"$have_gas_2665":                                 ; preds = %"$out_of_gas_2664", %"$have_gas_2660"
  %"$consume_2666" = sub i64 %"$gasrem_2662", 1
  store i64 %"$consume_2666", i64* @_gasrem, align 8
  %"$execptr_load_2667" = load i8*, i8** @_execptr, align 8
  %"$m1_2668" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2668_2669" = bitcast %Map_String_String* %"$m1_2668" to i8*
  %"$get_key1a_2670" = alloca %String, align 8
  %"$key1a_2671" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2671", %String* %"$get_key1a_2670", align 8
  %"$$get_key1a_2670_2672" = bitcast %String* %"$get_key1a_2670" to i8*
  %"$get_call_2673" = call i8* @_get(i8* %"$execptr_load_2667", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2668_2669", i8* %"$$get_key1a_2670_2672")
  %"$get_2674" = bitcast i8* %"$get_call_2673" to %TName_Option_String*
  store %TName_Option_String* %"$get_2674", %TName_Option_String** %c1, align 8
  %"$gasrem_2675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2676" = icmp ugt i64 2, %"$gasrem_2675"
  br i1 %"$gascmp_2676", label %"$out_of_gas_2677", label %"$have_gas_2678"

"$out_of_gas_2677":                               ; preds = %"$have_gas_2665"
  call void @_out_of_gas()
  br label %"$have_gas_2678"

"$have_gas_2678":                                 ; preds = %"$out_of_gas_2677", %"$have_gas_2665"
  %"$consume_2679" = sub i64 %"$gasrem_2675", 2
  store i64 %"$consume_2679", i64* @_gasrem, align 8
  %"$c1_2681" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2682" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2681", i32 0, i32 0
  %"$c1_tag_2683" = load i8, i8* %"$c1_tag_2682", align 1
  switch i8 %"$c1_tag_2683", label %"$empty_default_2684" [
    i8 0, label %"$Some_2685"
    i8 1, label %"$None_2758"
  ]

"$Some_2685":                                     ; preds = %"$have_gas_2678"
  %"$c1_2686" = bitcast %TName_Option_String* %"$c1_2681" to %CName_Some_String*
  %"$c_gep_2687" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2686", i32 0, i32 1
  %"$c_load_2688" = load %String, %String* %"$c_gep_2687", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2688", %String* %c, align 8
  %"$gasrem_2689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2690" = icmp ugt i64 1, %"$gasrem_2689"
  br i1 %"$gascmp_2690", label %"$out_of_gas_2691", label %"$have_gas_2692"

"$out_of_gas_2691":                               ; preds = %"$Some_2685"
  call void @_out_of_gas()
  br label %"$have_gas_2692"

"$have_gas_2692":                                 ; preds = %"$out_of_gas_2691", %"$Some_2685"
  %"$consume_2693" = sub i64 %"$gasrem_2689", 1
  store i64 %"$consume_2693", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2695" = icmp ugt i64 1, %"$gasrem_2694"
  br i1 %"$gascmp_2695", label %"$out_of_gas_2696", label %"$have_gas_2697"

"$out_of_gas_2696":                               ; preds = %"$have_gas_2692"
  call void @_out_of_gas()
  br label %"$have_gas_2697"

"$have_gas_2697":                                 ; preds = %"$out_of_gas_2696", %"$have_gas_2692"
  %"$consume_2698" = sub i64 %"$gasrem_2694", 1
  store i64 %"$consume_2698", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2699", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2701" = icmp ugt i64 1, %"$gasrem_2700"
  br i1 %"$gascmp_2701", label %"$out_of_gas_2702", label %"$have_gas_2703"

"$out_of_gas_2702":                               ; preds = %"$have_gas_2697"
  call void @_out_of_gas()
  br label %"$have_gas_2703"

"$have_gas_2703":                                 ; preds = %"$out_of_gas_2702", %"$have_gas_2697"
  %"$consume_2704" = sub i64 %"$gasrem_2700", 1
  store i64 %"$consume_2704", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2705" = alloca %String, align 8
  %"$c_2706" = load %String, %String* %c, align 8
  store %String %"$c_2706", %String* %"$_literal_cost_c_2705", align 8
  %"$$_literal_cost_c_2705_2707" = bitcast %String* %"$_literal_cost_c_2705" to i8*
  %"$_literal_cost_call_2708" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2705_2707")
  %"$_literal_cost_v_2709" = alloca %String, align 8
  %"$v_2710" = load %String, %String* %v, align 8
  store %String %"$v_2710", %String* %"$_literal_cost_v_2709", align 8
  %"$$_literal_cost_v_2709_2711" = bitcast %String* %"$_literal_cost_v_2709" to i8*
  %"$_literal_cost_call_2712" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2709_2711")
  %"$gasmin_2713" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2708", i64 %"$_literal_cost_call_2712")
  %"$gasrem_2714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2715" = icmp ugt i64 %"$gasmin_2713", %"$gasrem_2714"
  br i1 %"$gascmp_2715", label %"$out_of_gas_2716", label %"$have_gas_2717"

"$out_of_gas_2716":                               ; preds = %"$have_gas_2703"
  call void @_out_of_gas()
  br label %"$have_gas_2717"

"$have_gas_2717":                                 ; preds = %"$out_of_gas_2716", %"$have_gas_2703"
  %"$consume_2718" = sub i64 %"$gasrem_2714", %"$gasmin_2713"
  store i64 %"$consume_2718", i64* @_gasrem, align 8
  %"$execptr_load_2719" = load i8*, i8** @_execptr, align 8
  %"$c_2720" = load %String, %String* %c, align 8
  %"$v_2721" = load %String, %String* %v, align 8
  %"$eq_call_2722" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2719", %String %"$c_2720", %String %"$v_2721")
  store %TName_Bool* %"$eq_call_2722", %TName_Bool** %eq, align 8
  %"$gasrem_2724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2725" = icmp ugt i64 2, %"$gasrem_2724"
  br i1 %"$gascmp_2725", label %"$out_of_gas_2726", label %"$have_gas_2727"

"$out_of_gas_2726":                               ; preds = %"$have_gas_2717"
  call void @_out_of_gas()
  br label %"$have_gas_2727"

"$have_gas_2727":                                 ; preds = %"$out_of_gas_2726", %"$have_gas_2717"
  %"$consume_2728" = sub i64 %"$gasrem_2724", 2
  store i64 %"$consume_2728", i64* @_gasrem, align 8
  %"$eq_2730" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2731" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2730", i32 0, i32 0
  %"$eq_tag_2732" = load i8, i8* %"$eq_tag_2731", align 1
  switch i8 %"$eq_tag_2732", label %"$empty_default_2733" [
    i8 0, label %"$True_2734"
    i8 1, label %"$False_2736"
  ]

"$True_2734":                                     ; preds = %"$have_gas_2727"
  %"$eq_2735" = bitcast %TName_Bool* %"$eq_2730" to %CName_True*
  br label %"$matchsucc_2729"

"$False_2736":                                    ; preds = %"$have_gas_2727"
  %"$eq_2737" = bitcast %TName_Bool* %"$eq_2730" to %CName_False*
  %"$gasrem_2738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2739" = icmp ugt i64 1, %"$gasrem_2738"
  br i1 %"$gascmp_2739", label %"$out_of_gas_2740", label %"$have_gas_2741"

"$out_of_gas_2740":                               ; preds = %"$False_2736"
  call void @_out_of_gas()
  br label %"$have_gas_2741"

"$have_gas_2741":                                 ; preds = %"$out_of_gas_2740", %"$False_2736"
  %"$consume_2742" = sub i64 %"$gasrem_2738", 1
  store i64 %"$consume_2742", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2744" = icmp ugt i64 1, %"$gasrem_2743"
  br i1 %"$gascmp_2744", label %"$out_of_gas_2745", label %"$have_gas_2746"

"$out_of_gas_2745":                               ; preds = %"$have_gas_2741"
  call void @_out_of_gas()
  br label %"$have_gas_2746"

"$have_gas_2746":                                 ; preds = %"$out_of_gas_2745", %"$have_gas_2741"
  %"$consume_2747" = sub i64 %"$gasrem_2743", 1
  store i64 %"$consume_2747", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_2748", i32 0, i32 0), i32 25 }, %String* %m, align 8
  %"$gasrem_2749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2750" = icmp ugt i64 1, %"$gasrem_2749"
  br i1 %"$gascmp_2750", label %"$out_of_gas_2751", label %"$have_gas_2752"

"$out_of_gas_2751":                               ; preds = %"$have_gas_2746"
  call void @_out_of_gas()
  br label %"$have_gas_2752"

"$have_gas_2752":                                 ; preds = %"$out_of_gas_2751", %"$have_gas_2746"
  %"$consume_2753" = sub i64 %"$gasrem_2749", 1
  store i64 %"$consume_2753", i64* @_gasrem, align 8
  %"$fail_msg__origin_2754" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2754", align 1
  %"$fail_msg__sender_2755" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2755", align 1
  %"$tname_2756" = load %String, %String* %tname, align 8
  %"$m_2757" = load %String, %String* %m, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2754", [20 x i8]* %"$fail_msg__sender_2755", %String %"$tname_2756", %String %"$m_2757")
  br label %"$matchsucc_2729"

"$empty_default_2733":                            ; preds = %"$have_gas_2727"
  br label %"$matchsucc_2729"

"$matchsucc_2729":                                ; preds = %"$have_gas_2752", %"$True_2734", %"$empty_default_2733"
  br label %"$matchsucc_2680"

"$None_2758":                                     ; preds = %"$have_gas_2678"
  %"$c1_2759" = bitcast %TName_Option_String* %"$c1_2681" to %CName_None_String*
  %"$gasrem_2760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2761" = icmp ugt i64 1, %"$gasrem_2760"
  br i1 %"$gascmp_2761", label %"$out_of_gas_2762", label %"$have_gas_2763"

"$out_of_gas_2762":                               ; preds = %"$None_2758"
  call void @_out_of_gas()
  br label %"$have_gas_2763"

"$have_gas_2763":                                 ; preds = %"$out_of_gas_2762", %"$None_2758"
  %"$consume_2764" = sub i64 %"$gasrem_2760", 1
  store i64 %"$consume_2764", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2766" = icmp ugt i64 1, %"$gasrem_2765"
  br i1 %"$gascmp_2766", label %"$out_of_gas_2767", label %"$have_gas_2768"

"$out_of_gas_2767":                               ; preds = %"$have_gas_2763"
  call void @_out_of_gas()
  br label %"$have_gas_2768"

"$have_gas_2768":                                 ; preds = %"$out_of_gas_2767", %"$have_gas_2763"
  %"$consume_2769" = sub i64 %"$gasrem_2765", 1
  store i64 %"$consume_2769", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_2770", i32 0, i32 0), i32 15 }, %String* %m2, align 8
  %"$gasrem_2771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2772" = icmp ugt i64 1, %"$gasrem_2771"
  br i1 %"$gascmp_2772", label %"$out_of_gas_2773", label %"$have_gas_2774"

"$out_of_gas_2773":                               ; preds = %"$have_gas_2768"
  call void @_out_of_gas()
  br label %"$have_gas_2774"

"$have_gas_2774":                                 ; preds = %"$out_of_gas_2773", %"$have_gas_2768"
  %"$consume_2775" = sub i64 %"$gasrem_2771", 1
  store i64 %"$consume_2775", i64* @_gasrem, align 8
  %"$fail_msg__origin_2776" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2776", align 1
  %"$fail_msg__sender_2777" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2777", align 1
  %"$tname_2778" = load %String, %String* %tname, align 8
  %"$m_2779" = load %String, %String* %m2, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2776", [20 x i8]* %"$fail_msg__sender_2777", %String %"$tname_2778", %String %"$m_2779")
  br label %"$matchsucc_2680"

"$empty_default_2684":                            ; preds = %"$have_gas_2678"
  br label %"$matchsucc_2680"

"$matchsucc_2680":                                ; preds = %"$have_gas_2774", %"$matchsucc_2729", %"$empty_default_2684"
  %"$gasrem_2780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2781" = icmp ugt i64 1, %"$gasrem_2780"
  br i1 %"$gascmp_2781", label %"$out_of_gas_2782", label %"$have_gas_2783"

"$out_of_gas_2782":                               ; preds = %"$matchsucc_2680"
  call void @_out_of_gas()
  br label %"$have_gas_2783"

"$have_gas_2783":                                 ; preds = %"$out_of_gas_2782", %"$matchsucc_2680"
  %"$consume_2784" = sub i64 %"$gasrem_2780", 1
  store i64 %"$consume_2784", i64* @_gasrem, align 8
  %"$indices_buf_2785_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2785_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2785_salloc_load", i64 16)
  %"$indices_buf_2785_salloc" = bitcast i8* %"$indices_buf_2785_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2785" = bitcast [16 x i8]* %"$indices_buf_2785_salloc" to i8*
  %"$key1a_2786" = load %String, %String* %key1a, align 8
  %"$indices_gep_2787" = getelementptr i8, i8* %"$indices_buf_2785", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2787" to %String*
  store %String %"$key1a_2786", %String* %indices_cast, align 8
  %"$execptr_load_2788" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_2788", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2789", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_2785", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_2791" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2792" = bitcast i8* %"$_amount_2791" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2792", align 8
  %"$_origin_2793" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2794" = bitcast i8* %"$_origin_2793" to [20 x i8]*
  %"$_sender_2795" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2796" = bitcast i8* %"$_sender_2795" to [20 x i8]*
  call void @"$t10_2616"(%Uint128 %_amount, [20 x i8]* %"$_origin_2794", [20 x i8]* %"$_sender_2796")
  ret void
}

define internal void @"$t11_2797"(%Uint128 %_amount, [20 x i8]* %"$_origin_2798", [20 x i8]* %"$_sender_2799") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2798", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2799", align 1
  %"$gasrem_2800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2801" = icmp ugt i64 1, %"$gasrem_2800"
  br i1 %"$gascmp_2801", label %"$out_of_gas_2802", label %"$have_gas_2803"

"$out_of_gas_2802":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2803"

"$have_gas_2803":                                 ; preds = %"$out_of_gas_2802", %entry
  %"$consume_2804" = sub i64 %"$gasrem_2800", 1
  store i64 %"$consume_2804", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2806" = icmp ugt i64 1, %"$gasrem_2805"
  br i1 %"$gascmp_2806", label %"$out_of_gas_2807", label %"$have_gas_2808"

"$out_of_gas_2807":                               ; preds = %"$have_gas_2803"
  call void @_out_of_gas()
  br label %"$have_gas_2808"

"$have_gas_2808":                                 ; preds = %"$out_of_gas_2807", %"$have_gas_2803"
  %"$consume_2809" = sub i64 %"$gasrem_2805", 1
  store i64 %"$consume_2809", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2810", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2812" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2813" = call i8* @_fetch_field(i8* %"$execptr_load_2812", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2811", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1)
  %"$m1_2814" = bitcast i8* %"$m1_call_2813" to %Map_String_String*
  store %Map_String_String* %"$m1_2814", %Map_String_String** %m1, align 8
  %"$m1_2815" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2815_2816" = bitcast %Map_String_String* %"$m1_2815" to i8*
  %"$_literal_cost_call_2817" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2815_2816")
  %"$m1_2818" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2818_2819" = bitcast %Map_String_String* %"$m1_2818" to i8*
  %"$_mapsortcost_call_2820" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2818_2819")
  %"$gasadd_2821" = add i64 %"$_literal_cost_call_2817", %"$_mapsortcost_call_2820"
  %"$gasrem_2822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2823" = icmp ugt i64 %"$gasadd_2821", %"$gasrem_2822"
  br i1 %"$gascmp_2823", label %"$out_of_gas_2824", label %"$have_gas_2825"

"$out_of_gas_2824":                               ; preds = %"$have_gas_2808"
  call void @_out_of_gas()
  br label %"$have_gas_2825"

"$have_gas_2825":                                 ; preds = %"$out_of_gas_2824", %"$have_gas_2808"
  %"$consume_2826" = sub i64 %"$gasrem_2822", %"$gasadd_2821"
  store i64 %"$consume_2826", i64* @_gasrem, align 8
  %"$gasrem_2827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2828" = icmp ugt i64 1, %"$gasrem_2827"
  br i1 %"$gascmp_2828", label %"$out_of_gas_2829", label %"$have_gas_2830"

"$out_of_gas_2829":                               ; preds = %"$have_gas_2825"
  call void @_out_of_gas()
  br label %"$have_gas_2830"

"$have_gas_2830":                                 ; preds = %"$out_of_gas_2829", %"$have_gas_2825"
  %"$consume_2831" = sub i64 %"$gasrem_2827", 1
  store i64 %"$consume_2831", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_2832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2833" = icmp ugt i64 1, %"$gasrem_2832"
  br i1 %"$gascmp_2833", label %"$out_of_gas_2834", label %"$have_gas_2835"

"$out_of_gas_2834":                               ; preds = %"$have_gas_2830"
  call void @_out_of_gas()
  br label %"$have_gas_2835"

"$have_gas_2835":                                 ; preds = %"$out_of_gas_2834", %"$have_gas_2830"
  %"$consume_2836" = sub i64 %"$gasrem_2832", 1
  store i64 %"$consume_2836", i64* @_gasrem, align 8
  %"$m1_2837" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2837_2838" = bitcast %Map_String_String* %"$m1_2837" to i8*
  %"$size_call_2839" = call %Uint32 @_size(i8* %"$$m1_2837_2838")
  store %Uint32 %"$size_call_2839", %Uint32* %m1_size, align 4
  %"$gasrem_2840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2841" = icmp ugt i64 1, %"$gasrem_2840"
  br i1 %"$gascmp_2841", label %"$out_of_gas_2842", label %"$have_gas_2843"

"$out_of_gas_2842":                               ; preds = %"$have_gas_2835"
  call void @_out_of_gas()
  br label %"$have_gas_2843"

"$have_gas_2843":                                 ; preds = %"$out_of_gas_2842", %"$have_gas_2835"
  %"$consume_2844" = sub i64 %"$gasrem_2840", 1
  store i64 %"$consume_2844", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2846" = icmp ugt i64 1, %"$gasrem_2845"
  br i1 %"$gascmp_2846", label %"$out_of_gas_2847", label %"$have_gas_2848"

"$out_of_gas_2847":                               ; preds = %"$have_gas_2843"
  call void @_out_of_gas()
  br label %"$have_gas_2848"

"$have_gas_2848":                                 ; preds = %"$out_of_gas_2847", %"$have_gas_2843"
  %"$consume_2849" = sub i64 %"$gasrem_2845", 1
  store i64 %"$consume_2849", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2851" = icmp ugt i64 1, %"$gasrem_2850"
  br i1 %"$gascmp_2851", label %"$out_of_gas_2852", label %"$have_gas_2853"

"$out_of_gas_2852":                               ; preds = %"$have_gas_2848"
  call void @_out_of_gas()
  br label %"$have_gas_2853"

"$have_gas_2853":                                 ; preds = %"$out_of_gas_2852", %"$have_gas_2848"
  %"$consume_2854" = sub i64 %"$gasrem_2850", 1
  store i64 %"$consume_2854", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2856" = icmp ugt i64 4, %"$gasrem_2855"
  br i1 %"$gascmp_2856", label %"$out_of_gas_2857", label %"$have_gas_2858"

"$out_of_gas_2857":                               ; preds = %"$have_gas_2853"
  call void @_out_of_gas()
  br label %"$have_gas_2858"

"$have_gas_2858":                                 ; preds = %"$out_of_gas_2857", %"$have_gas_2853"
  %"$consume_2859" = sub i64 %"$gasrem_2855", 4
  store i64 %"$consume_2859", i64* @_gasrem, align 8
  %"$execptr_load_2860" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2861" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2862" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2863" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2860", %Uint32 %"$m1_size_2861", %Uint32 %"$zero_2862")
  store %TName_Bool* %"$eq_call_2863", %TName_Bool** %is_empty, align 8
  %"$gasrem_2865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2866" = icmp ugt i64 2, %"$gasrem_2865"
  br i1 %"$gascmp_2866", label %"$out_of_gas_2867", label %"$have_gas_2868"

"$out_of_gas_2867":                               ; preds = %"$have_gas_2858"
  call void @_out_of_gas()
  br label %"$have_gas_2868"

"$have_gas_2868":                                 ; preds = %"$out_of_gas_2867", %"$have_gas_2858"
  %"$consume_2869" = sub i64 %"$gasrem_2865", 2
  store i64 %"$consume_2869", i64* @_gasrem, align 8
  %"$is_empty_2871" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2872" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2871", i32 0, i32 0
  %"$is_empty_tag_2873" = load i8, i8* %"$is_empty_tag_2872", align 1
  switch i8 %"$is_empty_tag_2873", label %"$empty_default_2874" [
    i8 0, label %"$True_2875"
    i8 1, label %"$False_2877"
  ]

"$True_2875":                                     ; preds = %"$have_gas_2868"
  %"$is_empty_2876" = bitcast %TName_Bool* %"$is_empty_2871" to %CName_True*
  br label %"$matchsucc_2870"

"$False_2877":                                    ; preds = %"$have_gas_2868"
  %"$is_empty_2878" = bitcast %TName_Bool* %"$is_empty_2871" to %CName_False*
  %"$gasrem_2879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2880" = icmp ugt i64 1, %"$gasrem_2879"
  br i1 %"$gascmp_2880", label %"$out_of_gas_2881", label %"$have_gas_2882"

"$out_of_gas_2881":                               ; preds = %"$False_2877"
  call void @_out_of_gas()
  br label %"$have_gas_2882"

"$have_gas_2882":                                 ; preds = %"$out_of_gas_2881", %"$False_2877"
  %"$consume_2883" = sub i64 %"$gasrem_2879", 1
  store i64 %"$consume_2883", i64* @_gasrem, align 8
  %"$fail__origin_2884" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2884", align 1
  %"$fail__sender_2885" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2885", align 1
  %"$tname_2886" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2884", [20 x i8]* %"$fail__sender_2885", %String %"$tname_2886")
  br label %"$matchsucc_2870"

"$empty_default_2874":                            ; preds = %"$have_gas_2868"
  br label %"$matchsucc_2870"

"$matchsucc_2870":                                ; preds = %"$have_gas_2882", %"$True_2875", %"$empty_default_2874"
  %"$gasrem_2887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2888" = icmp ugt i64 1, %"$gasrem_2887"
  br i1 %"$gascmp_2888", label %"$out_of_gas_2889", label %"$have_gas_2890"

"$out_of_gas_2889":                               ; preds = %"$matchsucc_2870"
  call void @_out_of_gas()
  br label %"$have_gas_2890"

"$have_gas_2890":                                 ; preds = %"$out_of_gas_2889", %"$matchsucc_2870"
  %"$consume_2891" = sub i64 %"$gasrem_2887", 1
  store i64 %"$consume_2891", i64* @_gasrem, align 8
  %e2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_2892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2893" = icmp ugt i64 1, %"$gasrem_2892"
  br i1 %"$gascmp_2893", label %"$out_of_gas_2894", label %"$have_gas_2895"

"$out_of_gas_2894":                               ; preds = %"$have_gas_2890"
  call void @_out_of_gas()
  br label %"$have_gas_2895"

"$have_gas_2895":                                 ; preds = %"$out_of_gas_2894", %"$have_gas_2890"
  %"$consume_2896" = sub i64 %"$gasrem_2892", 1
  store i64 %"$consume_2896", i64* @_gasrem, align 8
  %"$execptr_load_2897" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2898" = call i8* @_new_empty_map(i8* %"$execptr_load_2897")
  %"$_new_empty_map_2899" = bitcast i8* %"$_new_empty_map_call_2898" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_2899", %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$e2_2900" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$$e2_2900_2901" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2900" to i8*
  %"$_literal_cost_call_2902" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e2_2900_2901")
  %"$gasrem_2903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2904" = icmp ugt i64 %"$_literal_cost_call_2902", %"$gasrem_2903"
  br i1 %"$gascmp_2904", label %"$out_of_gas_2905", label %"$have_gas_2906"

"$out_of_gas_2905":                               ; preds = %"$have_gas_2895"
  call void @_out_of_gas()
  br label %"$have_gas_2906"

"$have_gas_2906":                                 ; preds = %"$out_of_gas_2905", %"$have_gas_2895"
  %"$consume_2907" = sub i64 %"$gasrem_2903", %"$_literal_cost_call_2902"
  store i64 %"$consume_2907", i64* @_gasrem, align 8
  %"$execptr_load_2908" = load i8*, i8** @_execptr, align 8
  %"$e2_2910" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$update_value_2911" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2910" to i8*
  call void @_update_field(i8* %"$execptr_load_2908", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2909", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_2911")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_2913" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2914" = bitcast i8* %"$_amount_2913" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2914", align 8
  %"$_origin_2915" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2916" = bitcast i8* %"$_origin_2915" to [20 x i8]*
  %"$_sender_2917" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2918" = bitcast i8* %"$_sender_2917" to [20 x i8]*
  call void @"$t11_2797"(%Uint128 %_amount, [20 x i8]* %"$_origin_2916", [20 x i8]* %"$_sender_2918")
  ret void
}

define internal void @"$t12_2919"(%Uint128 %_amount, [20 x i8]* %"$_origin_2920", [20 x i8]* %"$_sender_2921") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2920", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2921", align 1
  %"$gasrem_2922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2923" = icmp ugt i64 1, %"$gasrem_2922"
  br i1 %"$gascmp_2923", label %"$out_of_gas_2924", label %"$have_gas_2925"

"$out_of_gas_2924":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2925"

"$have_gas_2925":                                 ; preds = %"$out_of_gas_2924", %entry
  %"$consume_2926" = sub i64 %"$gasrem_2922", 1
  store i64 %"$consume_2926", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2928" = icmp ugt i64 1, %"$gasrem_2927"
  br i1 %"$gascmp_2928", label %"$out_of_gas_2929", label %"$have_gas_2930"

"$out_of_gas_2929":                               ; preds = %"$have_gas_2925"
  call void @_out_of_gas()
  br label %"$have_gas_2930"

"$have_gas_2930":                                 ; preds = %"$out_of_gas_2929", %"$have_gas_2925"
  %"$consume_2931" = sub i64 %"$gasrem_2927", 1
  store i64 %"$consume_2931", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2932", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_2934" = load i8*, i8** @_execptr, align 8
  %"$m2_call_2935" = call i8* @_fetch_field(i8* %"$execptr_load_2934", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2933", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i32 1)
  %"$m2_2936" = bitcast i8* %"$m2_call_2935" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_2936", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$m2_2937" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2937_2938" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2937" to i8*
  %"$_literal_cost_call_2939" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_2937_2938")
  %"$m2_2940" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2940_2941" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2940" to i8*
  %"$_mapsortcost_call_2942" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_2940_2941")
  %"$gasadd_2943" = add i64 %"$_literal_cost_call_2939", %"$_mapsortcost_call_2942"
  %"$gasrem_2944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2945" = icmp ugt i64 %"$gasadd_2943", %"$gasrem_2944"
  br i1 %"$gascmp_2945", label %"$out_of_gas_2946", label %"$have_gas_2947"

"$out_of_gas_2946":                               ; preds = %"$have_gas_2930"
  call void @_out_of_gas()
  br label %"$have_gas_2947"

"$have_gas_2947":                                 ; preds = %"$out_of_gas_2946", %"$have_gas_2930"
  %"$consume_2948" = sub i64 %"$gasrem_2944", %"$gasadd_2943"
  store i64 %"$consume_2948", i64* @_gasrem, align 8
  %"$gasrem_2949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2950" = icmp ugt i64 1, %"$gasrem_2949"
  br i1 %"$gascmp_2950", label %"$out_of_gas_2951", label %"$have_gas_2952"

"$out_of_gas_2951":                               ; preds = %"$have_gas_2947"
  call void @_out_of_gas()
  br label %"$have_gas_2952"

"$have_gas_2952":                                 ; preds = %"$out_of_gas_2951", %"$have_gas_2947"
  %"$consume_2953" = sub i64 %"$gasrem_2949", 1
  store i64 %"$consume_2953", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$gasrem_2954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2955" = icmp ugt i64 1, %"$gasrem_2954"
  br i1 %"$gascmp_2955", label %"$out_of_gas_2956", label %"$have_gas_2957"

"$out_of_gas_2956":                               ; preds = %"$have_gas_2952"
  call void @_out_of_gas()
  br label %"$have_gas_2957"

"$have_gas_2957":                                 ; preds = %"$out_of_gas_2956", %"$have_gas_2952"
  %"$consume_2958" = sub i64 %"$gasrem_2954", 1
  store i64 %"$consume_2958", i64* @_gasrem, align 8
  %"$m2_2959" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2959_2960" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2959" to i8*
  %"$size_call_2961" = call %Uint32 @_size(i8* %"$$m2_2959_2960")
  store %Uint32 %"$size_call_2961", %Uint32* %m2_size, align 4
  %"$gasrem_2962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2963" = icmp ugt i64 1, %"$gasrem_2962"
  br i1 %"$gascmp_2963", label %"$out_of_gas_2964", label %"$have_gas_2965"

"$out_of_gas_2964":                               ; preds = %"$have_gas_2957"
  call void @_out_of_gas()
  br label %"$have_gas_2965"

"$have_gas_2965":                                 ; preds = %"$out_of_gas_2964", %"$have_gas_2957"
  %"$consume_2966" = sub i64 %"$gasrem_2962", 1
  store i64 %"$consume_2966", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2968" = icmp ugt i64 1, %"$gasrem_2967"
  br i1 %"$gascmp_2968", label %"$out_of_gas_2969", label %"$have_gas_2970"

"$out_of_gas_2969":                               ; preds = %"$have_gas_2965"
  call void @_out_of_gas()
  br label %"$have_gas_2970"

"$have_gas_2970":                                 ; preds = %"$out_of_gas_2969", %"$have_gas_2965"
  %"$consume_2971" = sub i64 %"$gasrem_2967", 1
  store i64 %"$consume_2971", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2973" = icmp ugt i64 1, %"$gasrem_2972"
  br i1 %"$gascmp_2973", label %"$out_of_gas_2974", label %"$have_gas_2975"

"$out_of_gas_2974":                               ; preds = %"$have_gas_2970"
  call void @_out_of_gas()
  br label %"$have_gas_2975"

"$have_gas_2975":                                 ; preds = %"$out_of_gas_2974", %"$have_gas_2970"
  %"$consume_2976" = sub i64 %"$gasrem_2972", 1
  store i64 %"$consume_2976", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2978" = icmp ugt i64 4, %"$gasrem_2977"
  br i1 %"$gascmp_2978", label %"$out_of_gas_2979", label %"$have_gas_2980"

"$out_of_gas_2979":                               ; preds = %"$have_gas_2975"
  call void @_out_of_gas()
  br label %"$have_gas_2980"

"$have_gas_2980":                                 ; preds = %"$out_of_gas_2979", %"$have_gas_2975"
  %"$consume_2981" = sub i64 %"$gasrem_2977", 4
  store i64 %"$consume_2981", i64* @_gasrem, align 8
  %"$execptr_load_2982" = load i8*, i8** @_execptr, align 8
  %"$m2_size_2983" = load %Uint32, %Uint32* %m2_size, align 4
  %"$zero_2984" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2985" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2982", %Uint32 %"$m2_size_2983", %Uint32 %"$zero_2984")
  store %TName_Bool* %"$eq_call_2985", %TName_Bool** %is_empty, align 8
  %"$gasrem_2987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2988" = icmp ugt i64 2, %"$gasrem_2987"
  br i1 %"$gascmp_2988", label %"$out_of_gas_2989", label %"$have_gas_2990"

"$out_of_gas_2989":                               ; preds = %"$have_gas_2980"
  call void @_out_of_gas()
  br label %"$have_gas_2990"

"$have_gas_2990":                                 ; preds = %"$out_of_gas_2989", %"$have_gas_2980"
  %"$consume_2991" = sub i64 %"$gasrem_2987", 2
  store i64 %"$consume_2991", i64* @_gasrem, align 8
  %"$is_empty_2993" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2994" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2993", i32 0, i32 0
  %"$is_empty_tag_2995" = load i8, i8* %"$is_empty_tag_2994", align 1
  switch i8 %"$is_empty_tag_2995", label %"$empty_default_2996" [
    i8 0, label %"$True_2997"
    i8 1, label %"$False_2999"
  ]

"$True_2997":                                     ; preds = %"$have_gas_2990"
  %"$is_empty_2998" = bitcast %TName_Bool* %"$is_empty_2993" to %CName_True*
  br label %"$matchsucc_2992"

"$False_2999":                                    ; preds = %"$have_gas_2990"
  %"$is_empty_3000" = bitcast %TName_Bool* %"$is_empty_2993" to %CName_False*
  %"$gasrem_3001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3002" = icmp ugt i64 1, %"$gasrem_3001"
  br i1 %"$gascmp_3002", label %"$out_of_gas_3003", label %"$have_gas_3004"

"$out_of_gas_3003":                               ; preds = %"$False_2999"
  call void @_out_of_gas()
  br label %"$have_gas_3004"

"$have_gas_3004":                                 ; preds = %"$out_of_gas_3003", %"$False_2999"
  %"$consume_3005" = sub i64 %"$gasrem_3001", 1
  store i64 %"$consume_3005", i64* @_gasrem, align 8
  %"$fail__origin_3006" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3006", align 1
  %"$fail__sender_3007" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3007", align 1
  %"$tname_3008" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3006", [20 x i8]* %"$fail__sender_3007", %String %"$tname_3008")
  br label %"$matchsucc_2992"

"$empty_default_2996":                            ; preds = %"$have_gas_2990"
  br label %"$matchsucc_2992"

"$matchsucc_2992":                                ; preds = %"$have_gas_3004", %"$True_2997", %"$empty_default_2996"
  %"$gasrem_3009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3010" = icmp ugt i64 1, %"$gasrem_3009"
  br i1 %"$gascmp_3010", label %"$out_of_gas_3011", label %"$have_gas_3012"

"$out_of_gas_3011":                               ; preds = %"$matchsucc_2992"
  call void @_out_of_gas()
  br label %"$have_gas_3012"

"$have_gas_3012":                                 ; preds = %"$out_of_gas_3011", %"$matchsucc_2992"
  %"$consume_3013" = sub i64 %"$gasrem_3009", 1
  store i64 %"$consume_3013", i64* @_gasrem, align 8
  %e1 = alloca %Map_String_String*, align 8
  %"$gasrem_3014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3015" = icmp ugt i64 1, %"$gasrem_3014"
  br i1 %"$gascmp_3015", label %"$out_of_gas_3016", label %"$have_gas_3017"

"$out_of_gas_3016":                               ; preds = %"$have_gas_3012"
  call void @_out_of_gas()
  br label %"$have_gas_3017"

"$have_gas_3017":                                 ; preds = %"$out_of_gas_3016", %"$have_gas_3012"
  %"$consume_3018" = sub i64 %"$gasrem_3014", 1
  store i64 %"$consume_3018", i64* @_gasrem, align 8
  %"$execptr_load_3019" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3020" = call i8* @_new_empty_map(i8* %"$execptr_load_3019")
  %"$_new_empty_map_3021" = bitcast i8* %"$_new_empty_map_call_3020" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3021", %Map_String_String** %e1, align 8
  %"$gasrem_3022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3023" = icmp ugt i64 1, %"$gasrem_3022"
  br i1 %"$gascmp_3023", label %"$out_of_gas_3024", label %"$have_gas_3025"

"$out_of_gas_3024":                               ; preds = %"$have_gas_3017"
  call void @_out_of_gas()
  br label %"$have_gas_3025"

"$have_gas_3025":                                 ; preds = %"$out_of_gas_3024", %"$have_gas_3017"
  %"$consume_3026" = sub i64 %"$gasrem_3022", 1
  store i64 %"$consume_3026", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3028" = icmp ugt i64 1, %"$gasrem_3027"
  br i1 %"$gascmp_3028", label %"$out_of_gas_3029", label %"$have_gas_3030"

"$out_of_gas_3029":                               ; preds = %"$have_gas_3025"
  call void @_out_of_gas()
  br label %"$have_gas_3030"

"$have_gas_3030":                                 ; preds = %"$out_of_gas_3029", %"$have_gas_3025"
  %"$consume_3031" = sub i64 %"$gasrem_3027", 1
  store i64 %"$consume_3031", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3032", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$e1_3033" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$$e1_3033_3034" = bitcast %Map_String_String* %"$e1_3033" to i8*
  %"$_literal_cost_call_3035" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e1_3033_3034")
  %"$gasadd_3036" = add i64 %"$_literal_cost_call_3035", 1
  %"$gasrem_3037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3038" = icmp ugt i64 %"$gasadd_3036", %"$gasrem_3037"
  br i1 %"$gascmp_3038", label %"$out_of_gas_3039", label %"$have_gas_3040"

"$out_of_gas_3039":                               ; preds = %"$have_gas_3030"
  call void @_out_of_gas()
  br label %"$have_gas_3040"

"$have_gas_3040":                                 ; preds = %"$out_of_gas_3039", %"$have_gas_3030"
  %"$consume_3041" = sub i64 %"$gasrem_3037", %"$gasadd_3036"
  store i64 %"$consume_3041", i64* @_gasrem, align 8
  %"$indices_buf_3042_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3042_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3042_salloc_load", i64 16)
  %"$indices_buf_3042_salloc" = bitcast i8* %"$indices_buf_3042_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3042" = bitcast [16 x i8]* %"$indices_buf_3042_salloc" to i8*
  %"$key1a_3043" = load %String, %String* %key1a, align 8
  %"$indices_gep_3044" = getelementptr i8, i8* %"$indices_buf_3042", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3044" to %String*
  store %String %"$key1a_3043", %String* %indices_cast, align 8
  %"$execptr_load_3045" = load i8*, i8** @_execptr, align 8
  %"$e1_3047" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$update_value_3048" = bitcast %Map_String_String* %"$e1_3047" to i8*
  call void @_update_field(i8* %"$execptr_load_3045", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3046", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_3042", i8* %"$update_value_3048")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_3050" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3051" = bitcast i8* %"$_amount_3050" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3051", align 8
  %"$_origin_3052" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3053" = bitcast i8* %"$_origin_3052" to [20 x i8]*
  %"$_sender_3054" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3055" = bitcast i8* %"$_sender_3054" to [20 x i8]*
  call void @"$t12_2919"(%Uint128 %_amount, [20 x i8]* %"$_origin_3053", [20 x i8]* %"$_sender_3055")
  ret void
}

define internal void @"$t13_3056"(%Uint128 %_amount, [20 x i8]* %"$_origin_3057", [20 x i8]* %"$_sender_3058") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3057", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3058", align 1
  %"$gasrem_3059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3060" = icmp ugt i64 1, %"$gasrem_3059"
  br i1 %"$gascmp_3060", label %"$out_of_gas_3061", label %"$have_gas_3062"

"$out_of_gas_3061":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3062"

"$have_gas_3062":                                 ; preds = %"$out_of_gas_3061", %entry
  %"$consume_3063" = sub i64 %"$gasrem_3059", 1
  store i64 %"$consume_3063", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3065" = icmp ugt i64 1, %"$gasrem_3064"
  br i1 %"$gascmp_3065", label %"$out_of_gas_3066", label %"$have_gas_3067"

"$out_of_gas_3066":                               ; preds = %"$have_gas_3062"
  call void @_out_of_gas()
  br label %"$have_gas_3067"

"$have_gas_3067":                                 ; preds = %"$out_of_gas_3066", %"$have_gas_3062"
  %"$consume_3068" = sub i64 %"$gasrem_3064", 1
  store i64 %"$consume_3068", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3069", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_3070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3071" = icmp ugt i64 1, %"$gasrem_3070"
  br i1 %"$gascmp_3071", label %"$out_of_gas_3072", label %"$have_gas_3073"

"$out_of_gas_3072":                               ; preds = %"$have_gas_3067"
  call void @_out_of_gas()
  br label %"$have_gas_3073"

"$have_gas_3073":                                 ; preds = %"$out_of_gas_3072", %"$have_gas_3067"
  %"$consume_3074" = sub i64 %"$gasrem_3070", 1
  store i64 %"$consume_3074", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3076" = icmp ugt i64 1, %"$gasrem_3075"
  br i1 %"$gascmp_3076", label %"$out_of_gas_3077", label %"$have_gas_3078"

"$out_of_gas_3077":                               ; preds = %"$have_gas_3073"
  call void @_out_of_gas()
  br label %"$have_gas_3078"

"$have_gas_3078":                                 ; preds = %"$out_of_gas_3077", %"$have_gas_3073"
  %"$consume_3079" = sub i64 %"$gasrem_3075", 1
  store i64 %"$consume_3079", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3080", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %mo = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_3081_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3081_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3081_salloc_load", i64 16)
  %"$indices_buf_3081_salloc" = bitcast i8* %"$indices_buf_3081_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3081" = bitcast [16 x i8]* %"$indices_buf_3081_salloc" to i8*
  %"$key1a_3082" = load %String, %String* %key1a, align 8
  %"$indices_gep_3083" = getelementptr i8, i8* %"$indices_buf_3081", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3083" to %String*
  store %String %"$key1a_3082", %String* %indices_cast, align 8
  %"$execptr_load_3085" = load i8*, i8** @_execptr, align 8
  %"$mo_call_3086" = call i8* @_fetch_field(i8* %"$execptr_load_3085", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3084", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_3081", i32 1)
  %"$mo_3087" = bitcast i8* %"$mo_call_3086" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_3087", %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_3088" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3088_3089" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3088" to i8*
  %"$_literal_cost_call_3090" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$mo_3088_3089")
  %"$mo_3091" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3091_3092" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3091" to i8*
  %"$_mapsortcost_call_3093" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$mo_3091_3092")
  %"$gasadd_3094" = add i64 %"$_literal_cost_call_3090", %"$_mapsortcost_call_3093"
  %"$gasadd_3095" = add i64 %"$gasadd_3094", 1
  %"$gasrem_3096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3097" = icmp ugt i64 %"$gasadd_3095", %"$gasrem_3096"
  br i1 %"$gascmp_3097", label %"$out_of_gas_3098", label %"$have_gas_3099"

"$out_of_gas_3098":                               ; preds = %"$have_gas_3078"
  call void @_out_of_gas()
  br label %"$have_gas_3099"

"$have_gas_3099":                                 ; preds = %"$out_of_gas_3098", %"$have_gas_3078"
  %"$consume_3100" = sub i64 %"$gasrem_3096", %"$gasadd_3095"
  store i64 %"$consume_3100", i64* @_gasrem, align 8
  %"$gasrem_3101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3102" = icmp ugt i64 2, %"$gasrem_3101"
  br i1 %"$gascmp_3102", label %"$out_of_gas_3103", label %"$have_gas_3104"

"$out_of_gas_3103":                               ; preds = %"$have_gas_3099"
  call void @_out_of_gas()
  br label %"$have_gas_3104"

"$have_gas_3104":                                 ; preds = %"$out_of_gas_3103", %"$have_gas_3099"
  %"$consume_3105" = sub i64 %"$gasrem_3101", 2
  store i64 %"$consume_3105", i64* @_gasrem, align 8
  %"$mo_3107" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_tag_3108" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_3107", i32 0, i32 0
  %"$mo_tag_3109" = load i8, i8* %"$mo_tag_3108", align 1
  switch i8 %"$mo_tag_3109", label %"$empty_default_3110" [
    i8 0, label %"$Some_3111"
    i8 1, label %"$None_3187"
  ]

"$Some_3111":                                     ; preds = %"$have_gas_3104"
  %"$mo_3112" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3107" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_3113" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_3112", i32 0, i32 1
  %"$m_load_3114" = load %Map_String_String*, %Map_String_String** %"$m_gep_3113", align 8
  %m = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m_load_3114", %Map_String_String** %m, align 8
  %"$gasrem_3115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3116" = icmp ugt i64 1, %"$gasrem_3115"
  br i1 %"$gascmp_3116", label %"$out_of_gas_3117", label %"$have_gas_3118"

"$out_of_gas_3117":                               ; preds = %"$Some_3111"
  call void @_out_of_gas()
  br label %"$have_gas_3118"

"$have_gas_3118":                                 ; preds = %"$out_of_gas_3117", %"$Some_3111"
  %"$consume_3119" = sub i64 %"$gasrem_3115", 1
  store i64 %"$consume_3119", i64* @_gasrem, align 8
  %m_size = alloca %Uint32, align 8
  %"$gasrem_3120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3121" = icmp ugt i64 1, %"$gasrem_3120"
  br i1 %"$gascmp_3121", label %"$out_of_gas_3122", label %"$have_gas_3123"

"$out_of_gas_3122":                               ; preds = %"$have_gas_3118"
  call void @_out_of_gas()
  br label %"$have_gas_3123"

"$have_gas_3123":                                 ; preds = %"$out_of_gas_3122", %"$have_gas_3118"
  %"$consume_3124" = sub i64 %"$gasrem_3120", 1
  store i64 %"$consume_3124", i64* @_gasrem, align 8
  %"$m_3125" = load %Map_String_String*, %Map_String_String** %m, align 8
  %"$$m_3125_3126" = bitcast %Map_String_String* %"$m_3125" to i8*
  %"$size_call_3127" = call %Uint32 @_size(i8* %"$$m_3125_3126")
  store %Uint32 %"$size_call_3127", %Uint32* %m_size, align 4
  %"$gasrem_3128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3129" = icmp ugt i64 1, %"$gasrem_3128"
  br i1 %"$gascmp_3129", label %"$out_of_gas_3130", label %"$have_gas_3131"

"$out_of_gas_3130":                               ; preds = %"$have_gas_3123"
  call void @_out_of_gas()
  br label %"$have_gas_3131"

"$have_gas_3131":                                 ; preds = %"$out_of_gas_3130", %"$have_gas_3123"
  %"$consume_3132" = sub i64 %"$gasrem_3128", 1
  store i64 %"$consume_3132", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3131"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3131"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3139" = icmp ugt i64 1, %"$gasrem_3138"
  br i1 %"$gascmp_3139", label %"$out_of_gas_3140", label %"$have_gas_3141"

"$out_of_gas_3140":                               ; preds = %"$have_gas_3136"
  call void @_out_of_gas()
  br label %"$have_gas_3141"

"$have_gas_3141":                                 ; preds = %"$out_of_gas_3140", %"$have_gas_3136"
  %"$consume_3142" = sub i64 %"$gasrem_3138", 1
  store i64 %"$consume_3142", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3144" = icmp ugt i64 4, %"$gasrem_3143"
  br i1 %"$gascmp_3144", label %"$out_of_gas_3145", label %"$have_gas_3146"

"$out_of_gas_3145":                               ; preds = %"$have_gas_3141"
  call void @_out_of_gas()
  br label %"$have_gas_3146"

"$have_gas_3146":                                 ; preds = %"$out_of_gas_3145", %"$have_gas_3141"
  %"$consume_3147" = sub i64 %"$gasrem_3143", 4
  store i64 %"$consume_3147", i64* @_gasrem, align 8
  %"$execptr_load_3148" = load i8*, i8** @_execptr, align 8
  %"$m_size_3149" = load %Uint32, %Uint32* %m_size, align 4
  %"$zero_3150" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3151" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3148", %Uint32 %"$m_size_3149", %Uint32 %"$zero_3150")
  store %TName_Bool* %"$eq_call_3151", %TName_Bool** %is_empty, align 8
  %"$gasrem_3153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3154" = icmp ugt i64 2, %"$gasrem_3153"
  br i1 %"$gascmp_3154", label %"$out_of_gas_3155", label %"$have_gas_3156"

"$out_of_gas_3155":                               ; preds = %"$have_gas_3146"
  call void @_out_of_gas()
  br label %"$have_gas_3156"

"$have_gas_3156":                                 ; preds = %"$out_of_gas_3155", %"$have_gas_3146"
  %"$consume_3157" = sub i64 %"$gasrem_3153", 2
  store i64 %"$consume_3157", i64* @_gasrem, align 8
  %"$is_empty_3159" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3160" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3159", i32 0, i32 0
  %"$is_empty_tag_3161" = load i8, i8* %"$is_empty_tag_3160", align 1
  switch i8 %"$is_empty_tag_3161", label %"$empty_default_3162" [
    i8 0, label %"$True_3163"
    i8 1, label %"$False_3165"
  ]

"$True_3163":                                     ; preds = %"$have_gas_3156"
  %"$is_empty_3164" = bitcast %TName_Bool* %"$is_empty_3159" to %CName_True*
  br label %"$matchsucc_3158"

"$False_3165":                                    ; preds = %"$have_gas_3156"
  %"$is_empty_3166" = bitcast %TName_Bool* %"$is_empty_3159" to %CName_False*
  %"$gasrem_3167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3168" = icmp ugt i64 1, %"$gasrem_3167"
  br i1 %"$gascmp_3168", label %"$out_of_gas_3169", label %"$have_gas_3170"

"$out_of_gas_3169":                               ; preds = %"$False_3165"
  call void @_out_of_gas()
  br label %"$have_gas_3170"

"$have_gas_3170":                                 ; preds = %"$out_of_gas_3169", %"$False_3165"
  %"$consume_3171" = sub i64 %"$gasrem_3167", 1
  store i64 %"$consume_3171", i64* @_gasrem, align 8
  %msg = alloca %String, align 8
  %"$gasrem_3172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3173" = icmp ugt i64 1, %"$gasrem_3172"
  br i1 %"$gascmp_3173", label %"$out_of_gas_3174", label %"$have_gas_3175"

"$out_of_gas_3174":                               ; preds = %"$have_gas_3170"
  call void @_out_of_gas()
  br label %"$have_gas_3175"

"$have_gas_3175":                                 ; preds = %"$out_of_gas_3174", %"$have_gas_3170"
  %"$consume_3176" = sub i64 %"$gasrem_3172", 1
  store i64 %"$consume_3176", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_3177", i32 0, i32 0), i32 29 }, %String* %msg, align 8
  %"$gasrem_3178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3179" = icmp ugt i64 1, %"$gasrem_3178"
  br i1 %"$gascmp_3179", label %"$out_of_gas_3180", label %"$have_gas_3181"

"$out_of_gas_3180":                               ; preds = %"$have_gas_3175"
  call void @_out_of_gas()
  br label %"$have_gas_3181"

"$have_gas_3181":                                 ; preds = %"$out_of_gas_3180", %"$have_gas_3175"
  %"$consume_3182" = sub i64 %"$gasrem_3178", 1
  store i64 %"$consume_3182", i64* @_gasrem, align 8
  %"$fail_msg__origin_3183" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3183", align 1
  %"$fail_msg__sender_3184" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3184", align 1
  %"$tname_3185" = load %String, %String* %tname, align 8
  %"$msg_3186" = load %String, %String* %msg, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3183", [20 x i8]* %"$fail_msg__sender_3184", %String %"$tname_3185", %String %"$msg_3186")
  br label %"$matchsucc_3158"

"$empty_default_3162":                            ; preds = %"$have_gas_3156"
  br label %"$matchsucc_3158"

"$matchsucc_3158":                                ; preds = %"$have_gas_3181", %"$True_3163", %"$empty_default_3162"
  br label %"$matchsucc_3106"

"$None_3187":                                     ; preds = %"$have_gas_3104"
  %"$mo_3188" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3107" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3190" = icmp ugt i64 1, %"$gasrem_3189"
  br i1 %"$gascmp_3190", label %"$out_of_gas_3191", label %"$have_gas_3192"

"$out_of_gas_3191":                               ; preds = %"$None_3187"
  call void @_out_of_gas()
  br label %"$have_gas_3192"

"$have_gas_3192":                                 ; preds = %"$out_of_gas_3191", %"$None_3187"
  %"$consume_3193" = sub i64 %"$gasrem_3189", 1
  store i64 %"$consume_3193", i64* @_gasrem, align 8
  %"$fail__origin_3194" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3194", align 1
  %"$fail__sender_3195" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3195", align 1
  %"$tname_3196" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3194", [20 x i8]* %"$fail__sender_3195", %String %"$tname_3196")
  br label %"$matchsucc_3106"

"$empty_default_3110":                            ; preds = %"$have_gas_3104"
  br label %"$matchsucc_3106"

"$matchsucc_3106":                                ; preds = %"$have_gas_3192", %"$matchsucc_3158", %"$empty_default_3110"
  %"$gasrem_3197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3198" = icmp ugt i64 1, %"$gasrem_3197"
  br i1 %"$gascmp_3198", label %"$out_of_gas_3199", label %"$have_gas_3200"

"$out_of_gas_3199":                               ; preds = %"$matchsucc_3106"
  call void @_out_of_gas()
  br label %"$have_gas_3200"

"$have_gas_3200":                                 ; preds = %"$out_of_gas_3199", %"$matchsucc_3106"
  %"$consume_3201" = sub i64 %"$gasrem_3197", 1
  store i64 %"$consume_3201", i64* @_gasrem, align 8
  %m3 = alloca %Map_String_String*, align 8
  %"$gasrem_3202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3203" = icmp ugt i64 1, %"$gasrem_3202"
  br i1 %"$gascmp_3203", label %"$out_of_gas_3204", label %"$have_gas_3205"

"$out_of_gas_3204":                               ; preds = %"$have_gas_3200"
  call void @_out_of_gas()
  br label %"$have_gas_3205"

"$have_gas_3205":                                 ; preds = %"$out_of_gas_3204", %"$have_gas_3200"
  %"$consume_3206" = sub i64 %"$gasrem_3202", 1
  store i64 %"$consume_3206", i64* @_gasrem, align 8
  %"$execptr_load_3207" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3208" = call i8* @_new_empty_map(i8* %"$execptr_load_3207")
  %"$_new_empty_map_3209" = bitcast i8* %"$_new_empty_map_call_3208" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3209", %Map_String_String** %m3, align 8
  %"$gasrem_3210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3211" = icmp ugt i64 1, %"$gasrem_3210"
  br i1 %"$gascmp_3211", label %"$out_of_gas_3212", label %"$have_gas_3213"

"$out_of_gas_3212":                               ; preds = %"$have_gas_3205"
  call void @_out_of_gas()
  br label %"$have_gas_3213"

"$have_gas_3213":                                 ; preds = %"$out_of_gas_3212", %"$have_gas_3205"
  %"$consume_3214" = sub i64 %"$gasrem_3210", 1
  store i64 %"$consume_3214", i64* @_gasrem, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3216" = icmp ugt i64 1, %"$gasrem_3215"
  br i1 %"$gascmp_3216", label %"$out_of_gas_3217", label %"$have_gas_3218"

"$out_of_gas_3217":                               ; preds = %"$have_gas_3213"
  call void @_out_of_gas()
  br label %"$have_gas_3218"

"$have_gas_3218":                                 ; preds = %"$out_of_gas_3217", %"$have_gas_3213"
  %"$consume_3219" = sub i64 %"$gasrem_3215", 1
  store i64 %"$consume_3219", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3221" = icmp ugt i64 1, %"$gasrem_3220"
  br i1 %"$gascmp_3221", label %"$out_of_gas_3222", label %"$have_gas_3223"

"$out_of_gas_3222":                               ; preds = %"$have_gas_3218"
  call void @_out_of_gas()
  br label %"$have_gas_3223"

"$have_gas_3223":                                 ; preds = %"$out_of_gas_3222", %"$have_gas_3218"
  %"$consume_3224" = sub i64 %"$gasrem_3220", 1
  store i64 %"$consume_3224", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3225", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3227" = icmp ugt i64 1, %"$gasrem_3226"
  br i1 %"$gascmp_3227", label %"$out_of_gas_3228", label %"$have_gas_3229"

"$out_of_gas_3228":                               ; preds = %"$have_gas_3223"
  call void @_out_of_gas()
  br label %"$have_gas_3229"

"$have_gas_3229":                                 ; preds = %"$out_of_gas_3228", %"$have_gas_3223"
  %"$consume_3230" = sub i64 %"$gasrem_3226", 1
  store i64 %"$consume_3230", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3232" = icmp ugt i64 1, %"$gasrem_3231"
  br i1 %"$gascmp_3232", label %"$out_of_gas_3233", label %"$have_gas_3234"

"$out_of_gas_3233":                               ; preds = %"$have_gas_3229"
  call void @_out_of_gas()
  br label %"$have_gas_3234"

"$have_gas_3234":                                 ; preds = %"$out_of_gas_3233", %"$have_gas_3229"
  %"$consume_3235" = sub i64 %"$gasrem_3231", 1
  store i64 %"$consume_3235", i64* @_gasrem, align 8
  %"$execptr_load_3236" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3237" = call i8* @_new_empty_map(i8* %"$execptr_load_3236")
  %"$_new_empty_map_3238" = bitcast i8* %"$_new_empty_map_call_3237" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3238", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3239" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3239_3240" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3239" to i8*
  %"$_lengthof_call_3241" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e_3239_3240")
  %"$gasadd_3242" = add i64 1, %"$_lengthof_call_3241"
  %"$gasrem_3243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3244" = icmp ugt i64 %"$gasadd_3242", %"$gasrem_3243"
  br i1 %"$gascmp_3244", label %"$out_of_gas_3245", label %"$have_gas_3246"

"$out_of_gas_3245":                               ; preds = %"$have_gas_3234"
  call void @_out_of_gas()
  br label %"$have_gas_3246"

"$have_gas_3246":                                 ; preds = %"$out_of_gas_3245", %"$have_gas_3234"
  %"$consume_3247" = sub i64 %"$gasrem_3243", %"$gasadd_3242"
  store i64 %"$consume_3247", i64* @_gasrem, align 8
  %"$execptr_load_3248" = load i8*, i8** @_execptr, align 8
  %"$e_3249" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3249_3250" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3249" to i8*
  %"$put_key2a_3251" = alloca %String, align 8
  %"$key2a_3252" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3252", %String* %"$put_key2a_3251", align 8
  %"$$put_key2a_3251_3253" = bitcast %String* %"$put_key2a_3251" to i8*
  %"$m3_3254" = load %Map_String_String*, %Map_String_String** %m3, align 8
  %"$$m3_3254_3255" = bitcast %Map_String_String* %"$m3_3254" to i8*
  %"$put_call_3256" = call i8* @_put(i8* %"$execptr_load_3248", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e_3249_3250", i8* %"$$put_key2a_3251_3253", i8* %"$$m3_3254_3255")
  %"$put_3257" = bitcast i8* %"$put_call_3256" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3257", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3259" = icmp ugt i64 1, %"$gasrem_3258"
  br i1 %"$gascmp_3259", label %"$out_of_gas_3260", label %"$have_gas_3261"

"$out_of_gas_3260":                               ; preds = %"$have_gas_3246"
  call void @_out_of_gas()
  br label %"$have_gas_3261"

"$have_gas_3261":                                 ; preds = %"$out_of_gas_3260", %"$have_gas_3246"
  %"$consume_3262" = sub i64 %"$gasrem_3258", 1
  store i64 %"$consume_3262", i64* @_gasrem, align 8
  %"$m3_14" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3264" = icmp ugt i64 1, %"$gasrem_3263"
  br i1 %"$gascmp_3264", label %"$out_of_gas_3265", label %"$have_gas_3266"

"$out_of_gas_3265":                               ; preds = %"$have_gas_3261"
  call void @_out_of_gas()
  br label %"$have_gas_3266"

"$have_gas_3266":                                 ; preds = %"$out_of_gas_3265", %"$have_gas_3261"
  %"$consume_3267" = sub i64 %"$gasrem_3263", 1
  store i64 %"$consume_3267", i64* @_gasrem, align 8
  %"$e_13" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3269" = icmp ugt i64 1, %"$gasrem_3268"
  br i1 %"$gascmp_3269", label %"$out_of_gas_3270", label %"$have_gas_3271"

"$out_of_gas_3270":                               ; preds = %"$have_gas_3266"
  call void @_out_of_gas()
  br label %"$have_gas_3271"

"$have_gas_3271":                                 ; preds = %"$out_of_gas_3270", %"$have_gas_3266"
  %"$consume_3272" = sub i64 %"$gasrem_3268", 1
  store i64 %"$consume_3272", i64* @_gasrem, align 8
  %"$execptr_load_3273" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3274" = call i8* @_new_empty_map(i8* %"$execptr_load_3273")
  %"$_new_empty_map_3275" = bitcast i8* %"$_new_empty_map_call_3274" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_3275", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$e_13_3276" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$$e_13_3276_3277" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_13_3276" to i8*
  %"$_lengthof_call_3278" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$e_13_3276_3277")
  %"$gasadd_3279" = add i64 1, %"$_lengthof_call_3278"
  %"$gasrem_3280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3281" = icmp ugt i64 %"$gasadd_3279", %"$gasrem_3280"
  br i1 %"$gascmp_3281", label %"$out_of_gas_3282", label %"$have_gas_3283"

"$out_of_gas_3282":                               ; preds = %"$have_gas_3271"
  call void @_out_of_gas()
  br label %"$have_gas_3283"

"$have_gas_3283":                                 ; preds = %"$out_of_gas_3282", %"$have_gas_3271"
  %"$consume_3284" = sub i64 %"$gasrem_3280", %"$gasadd_3279"
  store i64 %"$consume_3284", i64* @_gasrem, align 8
  %"$execptr_load_3285" = load i8*, i8** @_execptr, align 8
  %"$$e_13_3286" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$$e_13_3286_3287" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_13_3286" to i8*
  %"$put_key1a_3288" = alloca %String, align 8
  %"$key1a_3289" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3289", %String* %"$put_key1a_3288", align 8
  %"$$put_key1a_3288_3290" = bitcast %String* %"$put_key1a_3288" to i8*
  %"$m2_3291" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3291_3292" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3291" to i8*
  %"$put_call_3293" = call i8* @_put(i8* %"$execptr_load_3285", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$e_13_3286_3287", i8* %"$$put_key1a_3288_3290", i8* %"$$m2_3291_3292")
  %"$put_3294" = bitcast i8* %"$put_call_3293" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$put_3294", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$$m3_14_3295" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$$$m3_14_3295_3296" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_14_3295" to i8*
  %"$_literal_cost_call_3297" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$m3_14_3295_3296")
  %"$gasrem_3298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3299" = icmp ugt i64 %"$_literal_cost_call_3297", %"$gasrem_3298"
  br i1 %"$gascmp_3299", label %"$out_of_gas_3300", label %"$have_gas_3301"

"$out_of_gas_3300":                               ; preds = %"$have_gas_3283"
  call void @_out_of_gas()
  br label %"$have_gas_3301"

"$have_gas_3301":                                 ; preds = %"$out_of_gas_3300", %"$have_gas_3283"
  %"$consume_3302" = sub i64 %"$gasrem_3298", %"$_literal_cost_call_3297"
  store i64 %"$consume_3302", i64* @_gasrem, align 8
  %"$execptr_load_3303" = load i8*, i8** @_execptr, align 8
  %"$$m3_14_3305" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$update_value_3306" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_14_3305" to i8*
  call void @_update_field(i8* %"$execptr_load_3303", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3304", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_3306")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_3308" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3309" = bitcast i8* %"$_amount_3308" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3309", align 8
  %"$_origin_3310" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3311" = bitcast i8* %"$_origin_3310" to [20 x i8]*
  %"$_sender_3312" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3313" = bitcast i8* %"$_sender_3312" to [20 x i8]*
  call void @"$t13_3056"(%Uint128 %_amount, [20 x i8]* %"$_origin_3311", [20 x i8]* %"$_sender_3313")
  ret void
}

define internal void @"$t14_3314"(%Uint128 %_amount, [20 x i8]* %"$_origin_3315", [20 x i8]* %"$_sender_3316") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3315", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3316", align 1
  %"$gasrem_3317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3318" = icmp ugt i64 1, %"$gasrem_3317"
  br i1 %"$gascmp_3318", label %"$out_of_gas_3319", label %"$have_gas_3320"

"$out_of_gas_3319":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3320"

"$have_gas_3320":                                 ; preds = %"$out_of_gas_3319", %entry
  %"$consume_3321" = sub i64 %"$gasrem_3317", 1
  store i64 %"$consume_3321", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3323" = icmp ugt i64 1, %"$gasrem_3322"
  br i1 %"$gascmp_3323", label %"$out_of_gas_3324", label %"$have_gas_3325"

"$out_of_gas_3324":                               ; preds = %"$have_gas_3320"
  call void @_out_of_gas()
  br label %"$have_gas_3325"

"$have_gas_3325":                                 ; preds = %"$out_of_gas_3324", %"$have_gas_3320"
  %"$consume_3326" = sub i64 %"$gasrem_3322", 1
  store i64 %"$consume_3326", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3327", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3329" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3330" = call i8* @_fetch_field(i8* %"$execptr_load_3329", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3328", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m3_3331" = bitcast i8* %"$m3_call_3330" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3331", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3332" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3332_3333" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3332" to i8*
  %"$_literal_cost_call_3334" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3332_3333")
  %"$m3_3335" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3335_3336" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3335" to i8*
  %"$_mapsortcost_call_3337" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3335_3336")
  %"$gasadd_3338" = add i64 %"$_literal_cost_call_3334", %"$_mapsortcost_call_3337"
  %"$gasrem_3339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3340" = icmp ugt i64 %"$gasadd_3338", %"$gasrem_3339"
  br i1 %"$gascmp_3340", label %"$out_of_gas_3341", label %"$have_gas_3342"

"$out_of_gas_3341":                               ; preds = %"$have_gas_3325"
  call void @_out_of_gas()
  br label %"$have_gas_3342"

"$have_gas_3342":                                 ; preds = %"$out_of_gas_3341", %"$have_gas_3325"
  %"$consume_3343" = sub i64 %"$gasrem_3339", %"$gasadd_3338"
  store i64 %"$consume_3343", i64* @_gasrem, align 8
  %"$gasrem_3344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3345" = icmp ugt i64 1, %"$gasrem_3344"
  br i1 %"$gascmp_3345", label %"$out_of_gas_3346", label %"$have_gas_3347"

"$out_of_gas_3346":                               ; preds = %"$have_gas_3342"
  call void @_out_of_gas()
  br label %"$have_gas_3347"

"$have_gas_3347":                                 ; preds = %"$out_of_gas_3346", %"$have_gas_3342"
  %"$consume_3348" = sub i64 %"$gasrem_3344", 1
  store i64 %"$consume_3348", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$gasrem_3349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3350" = icmp ugt i64 1, %"$gasrem_3349"
  br i1 %"$gascmp_3350", label %"$out_of_gas_3351", label %"$have_gas_3352"

"$out_of_gas_3351":                               ; preds = %"$have_gas_3347"
  call void @_out_of_gas()
  br label %"$have_gas_3352"

"$have_gas_3352":                                 ; preds = %"$out_of_gas_3351", %"$have_gas_3347"
  %"$consume_3353" = sub i64 %"$gasrem_3349", 1
  store i64 %"$consume_3353", i64* @_gasrem, align 8
  %"$m3_3354" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3354_3355" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3354" to i8*
  %"$size_call_3356" = call %Uint32 @_size(i8* %"$$m3_3354_3355")
  store %Uint32 %"$size_call_3356", %Uint32* %m3_size, align 4
  %"$gasrem_3357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3358" = icmp ugt i64 1, %"$gasrem_3357"
  br i1 %"$gascmp_3358", label %"$out_of_gas_3359", label %"$have_gas_3360"

"$out_of_gas_3359":                               ; preds = %"$have_gas_3352"
  call void @_out_of_gas()
  br label %"$have_gas_3360"

"$have_gas_3360":                                 ; preds = %"$out_of_gas_3359", %"$have_gas_3352"
  %"$consume_3361" = sub i64 %"$gasrem_3357", 1
  store i64 %"$consume_3361", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3363" = icmp ugt i64 1, %"$gasrem_3362"
  br i1 %"$gascmp_3363", label %"$out_of_gas_3364", label %"$have_gas_3365"

"$out_of_gas_3364":                               ; preds = %"$have_gas_3360"
  call void @_out_of_gas()
  br label %"$have_gas_3365"

"$have_gas_3365":                                 ; preds = %"$out_of_gas_3364", %"$have_gas_3360"
  %"$consume_3366" = sub i64 %"$gasrem_3362", 1
  store i64 %"$consume_3366", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3368" = icmp ugt i64 1, %"$gasrem_3367"
  br i1 %"$gascmp_3368", label %"$out_of_gas_3369", label %"$have_gas_3370"

"$out_of_gas_3369":                               ; preds = %"$have_gas_3365"
  call void @_out_of_gas()
  br label %"$have_gas_3370"

"$have_gas_3370":                                 ; preds = %"$out_of_gas_3369", %"$have_gas_3365"
  %"$consume_3371" = sub i64 %"$gasrem_3367", 1
  store i64 %"$consume_3371", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3373" = icmp ugt i64 4, %"$gasrem_3372"
  br i1 %"$gascmp_3373", label %"$out_of_gas_3374", label %"$have_gas_3375"

"$out_of_gas_3374":                               ; preds = %"$have_gas_3370"
  call void @_out_of_gas()
  br label %"$have_gas_3375"

"$have_gas_3375":                                 ; preds = %"$out_of_gas_3374", %"$have_gas_3370"
  %"$consume_3376" = sub i64 %"$gasrem_3372", 4
  store i64 %"$consume_3376", i64* @_gasrem, align 8
  %"$execptr_load_3377" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3378" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3379" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3380" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3377", %Uint32 %"$m3_size_3378", %Uint32 %"$one_3379")
  store %TName_Bool* %"$eq_call_3380", %TName_Bool** %is_empty, align 8
  %"$gasrem_3382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3383" = icmp ugt i64 2, %"$gasrem_3382"
  br i1 %"$gascmp_3383", label %"$out_of_gas_3384", label %"$have_gas_3385"

"$out_of_gas_3384":                               ; preds = %"$have_gas_3375"
  call void @_out_of_gas()
  br label %"$have_gas_3385"

"$have_gas_3385":                                 ; preds = %"$out_of_gas_3384", %"$have_gas_3375"
  %"$consume_3386" = sub i64 %"$gasrem_3382", 2
  store i64 %"$consume_3386", i64* @_gasrem, align 8
  %"$is_empty_3388" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3389" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3388", i32 0, i32 0
  %"$is_empty_tag_3390" = load i8, i8* %"$is_empty_tag_3389", align 1
  switch i8 %"$is_empty_tag_3390", label %"$empty_default_3391" [
    i8 0, label %"$True_3392"
    i8 1, label %"$False_3394"
  ]

"$True_3392":                                     ; preds = %"$have_gas_3385"
  %"$is_empty_3393" = bitcast %TName_Bool* %"$is_empty_3388" to %CName_True*
  br label %"$matchsucc_3387"

"$False_3394":                                    ; preds = %"$have_gas_3385"
  %"$is_empty_3395" = bitcast %TName_Bool* %"$is_empty_3388" to %CName_False*
  %"$gasrem_3396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3397" = icmp ugt i64 1, %"$gasrem_3396"
  br i1 %"$gascmp_3397", label %"$out_of_gas_3398", label %"$have_gas_3399"

"$out_of_gas_3398":                               ; preds = %"$False_3394"
  call void @_out_of_gas()
  br label %"$have_gas_3399"

"$have_gas_3399":                                 ; preds = %"$out_of_gas_3398", %"$False_3394"
  %"$consume_3400" = sub i64 %"$gasrem_3396", 1
  store i64 %"$consume_3400", i64* @_gasrem, align 8
  %"$fail__origin_3401" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3401", align 1
  %"$fail__sender_3402" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3402", align 1
  %"$tname_3403" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3401", [20 x i8]* %"$fail__sender_3402", %String %"$tname_3403")
  br label %"$matchsucc_3387"

"$empty_default_3391":                            ; preds = %"$have_gas_3385"
  br label %"$matchsucc_3387"

"$matchsucc_3387":                                ; preds = %"$have_gas_3399", %"$True_3392", %"$empty_default_3391"
  %"$gasrem_3404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3405" = icmp ugt i64 1, %"$gasrem_3404"
  br i1 %"$gascmp_3405", label %"$out_of_gas_3406", label %"$have_gas_3407"

"$out_of_gas_3406":                               ; preds = %"$matchsucc_3387"
  call void @_out_of_gas()
  br label %"$have_gas_3407"

"$have_gas_3407":                                 ; preds = %"$out_of_gas_3406", %"$matchsucc_3387"
  %"$consume_3408" = sub i64 %"$gasrem_3404", 1
  store i64 %"$consume_3408", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3410" = icmp ugt i64 1, %"$gasrem_3409"
  br i1 %"$gascmp_3410", label %"$out_of_gas_3411", label %"$have_gas_3412"

"$out_of_gas_3411":                               ; preds = %"$have_gas_3407"
  call void @_out_of_gas()
  br label %"$have_gas_3412"

"$have_gas_3412":                                 ; preds = %"$out_of_gas_3411", %"$have_gas_3407"
  %"$consume_3413" = sub i64 %"$gasrem_3409", 1
  store i64 %"$consume_3413", i64* @_gasrem, align 8
  %"$execptr_load_3414" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3415" = call i8* @_new_empty_map(i8* %"$execptr_load_3414")
  %"$_new_empty_map_3416" = bitcast i8* %"$_new_empty_map_call_3415" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3416", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3417" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3417_3418" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3417" to i8*
  %"$_literal_cost_call_3419" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e_3417_3418")
  %"$gasrem_3420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3421" = icmp ugt i64 %"$_literal_cost_call_3419", %"$gasrem_3420"
  br i1 %"$gascmp_3421", label %"$out_of_gas_3422", label %"$have_gas_3423"

"$out_of_gas_3422":                               ; preds = %"$have_gas_3412"
  call void @_out_of_gas()
  br label %"$have_gas_3423"

"$have_gas_3423":                                 ; preds = %"$out_of_gas_3422", %"$have_gas_3412"
  %"$consume_3424" = sub i64 %"$gasrem_3420", %"$_literal_cost_call_3419"
  store i64 %"$consume_3424", i64* @_gasrem, align 8
  %"$execptr_load_3425" = load i8*, i8** @_execptr, align 8
  %"$e_3427" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$update_value_3428" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3427" to i8*
  call void @_update_field(i8* %"$execptr_load_3425", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_3426", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_3428")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_3430" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3431" = bitcast i8* %"$_amount_3430" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3431", align 8
  %"$_origin_3432" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3433" = bitcast i8* %"$_origin_3432" to [20 x i8]*
  %"$_sender_3434" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3435" = bitcast i8* %"$_sender_3434" to [20 x i8]*
  call void @"$t14_3314"(%Uint128 %_amount, [20 x i8]* %"$_origin_3433", [20 x i8]* %"$_sender_3435")
  ret void
}

define internal void @"$t15_3436"(%Uint128 %_amount, [20 x i8]* %"$_origin_3437", [20 x i8]* %"$_sender_3438") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3437", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3438", align 1
  %"$gasrem_3439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3440" = icmp ugt i64 1, %"$gasrem_3439"
  br i1 %"$gascmp_3440", label %"$out_of_gas_3441", label %"$have_gas_3442"

"$out_of_gas_3441":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3442"

"$have_gas_3442":                                 ; preds = %"$out_of_gas_3441", %entry
  %"$consume_3443" = sub i64 %"$gasrem_3439", 1
  store i64 %"$consume_3443", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3445" = icmp ugt i64 1, %"$gasrem_3444"
  br i1 %"$gascmp_3445", label %"$out_of_gas_3446", label %"$have_gas_3447"

"$out_of_gas_3446":                               ; preds = %"$have_gas_3442"
  call void @_out_of_gas()
  br label %"$have_gas_3447"

"$have_gas_3447":                                 ; preds = %"$out_of_gas_3446", %"$have_gas_3442"
  %"$consume_3448" = sub i64 %"$gasrem_3444", 1
  store i64 %"$consume_3448", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3449", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3451" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3452" = call i8* @_fetch_field(i8* %"$execptr_load_3451", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3450", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m3_3453" = bitcast i8* %"$m3_call_3452" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3453", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3454" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3454_3455" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3454" to i8*
  %"$_literal_cost_call_3456" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3454_3455")
  %"$m3_3457" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3457_3458" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3457" to i8*
  %"$_mapsortcost_call_3459" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3457_3458")
  %"$gasadd_3460" = add i64 %"$_literal_cost_call_3456", %"$_mapsortcost_call_3459"
  %"$gasrem_3461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3462" = icmp ugt i64 %"$gasadd_3460", %"$gasrem_3461"
  br i1 %"$gascmp_3462", label %"$out_of_gas_3463", label %"$have_gas_3464"

"$out_of_gas_3463":                               ; preds = %"$have_gas_3447"
  call void @_out_of_gas()
  br label %"$have_gas_3464"

"$have_gas_3464":                                 ; preds = %"$out_of_gas_3463", %"$have_gas_3447"
  %"$consume_3465" = sub i64 %"$gasrem_3461", %"$gasadd_3460"
  store i64 %"$consume_3465", i64* @_gasrem, align 8
  %"$gasrem_3466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3467" = icmp ugt i64 1, %"$gasrem_3466"
  br i1 %"$gascmp_3467", label %"$out_of_gas_3468", label %"$have_gas_3469"

"$out_of_gas_3468":                               ; preds = %"$have_gas_3464"
  call void @_out_of_gas()
  br label %"$have_gas_3469"

"$have_gas_3469":                                 ; preds = %"$out_of_gas_3468", %"$have_gas_3464"
  %"$consume_3470" = sub i64 %"$gasrem_3466", 1
  store i64 %"$consume_3470", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$gasrem_3471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3472" = icmp ugt i64 1, %"$gasrem_3471"
  br i1 %"$gascmp_3472", label %"$out_of_gas_3473", label %"$have_gas_3474"

"$out_of_gas_3473":                               ; preds = %"$have_gas_3469"
  call void @_out_of_gas()
  br label %"$have_gas_3474"

"$have_gas_3474":                                 ; preds = %"$out_of_gas_3473", %"$have_gas_3469"
  %"$consume_3475" = sub i64 %"$gasrem_3471", 1
  store i64 %"$consume_3475", i64* @_gasrem, align 8
  %"$m3_3476" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3476_3477" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3476" to i8*
  %"$size_call_3478" = call %Uint32 @_size(i8* %"$$m3_3476_3477")
  store %Uint32 %"$size_call_3478", %Uint32* %m3_size, align 4
  %"$gasrem_3479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3480" = icmp ugt i64 1, %"$gasrem_3479"
  br i1 %"$gascmp_3480", label %"$out_of_gas_3481", label %"$have_gas_3482"

"$out_of_gas_3481":                               ; preds = %"$have_gas_3474"
  call void @_out_of_gas()
  br label %"$have_gas_3482"

"$have_gas_3482":                                 ; preds = %"$out_of_gas_3481", %"$have_gas_3474"
  %"$consume_3483" = sub i64 %"$gasrem_3479", 1
  store i64 %"$consume_3483", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3485" = icmp ugt i64 1, %"$gasrem_3484"
  br i1 %"$gascmp_3485", label %"$out_of_gas_3486", label %"$have_gas_3487"

"$out_of_gas_3486":                               ; preds = %"$have_gas_3482"
  call void @_out_of_gas()
  br label %"$have_gas_3487"

"$have_gas_3487":                                 ; preds = %"$out_of_gas_3486", %"$have_gas_3482"
  %"$consume_3488" = sub i64 %"$gasrem_3484", 1
  store i64 %"$consume_3488", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3490" = icmp ugt i64 1, %"$gasrem_3489"
  br i1 %"$gascmp_3490", label %"$out_of_gas_3491", label %"$have_gas_3492"

"$out_of_gas_3491":                               ; preds = %"$have_gas_3487"
  call void @_out_of_gas()
  br label %"$have_gas_3492"

"$have_gas_3492":                                 ; preds = %"$out_of_gas_3491", %"$have_gas_3487"
  %"$consume_3493" = sub i64 %"$gasrem_3489", 1
  store i64 %"$consume_3493", i64* @_gasrem, align 8
  %is_one = alloca %TName_Bool*, align 8
  %"$gasrem_3494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3495" = icmp ugt i64 4, %"$gasrem_3494"
  br i1 %"$gascmp_3495", label %"$out_of_gas_3496", label %"$have_gas_3497"

"$out_of_gas_3496":                               ; preds = %"$have_gas_3492"
  call void @_out_of_gas()
  br label %"$have_gas_3497"

"$have_gas_3497":                                 ; preds = %"$out_of_gas_3496", %"$have_gas_3492"
  %"$consume_3498" = sub i64 %"$gasrem_3494", 4
  store i64 %"$consume_3498", i64* @_gasrem, align 8
  %"$execptr_load_3499" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3500" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3501" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3502" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3499", %Uint32 %"$m3_size_3500", %Uint32 %"$one_3501")
  store %TName_Bool* %"$eq_call_3502", %TName_Bool** %is_one, align 8
  %"$gasrem_3504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3505" = icmp ugt i64 2, %"$gasrem_3504"
  br i1 %"$gascmp_3505", label %"$out_of_gas_3506", label %"$have_gas_3507"

"$out_of_gas_3506":                               ; preds = %"$have_gas_3497"
  call void @_out_of_gas()
  br label %"$have_gas_3507"

"$have_gas_3507":                                 ; preds = %"$out_of_gas_3506", %"$have_gas_3497"
  %"$consume_3508" = sub i64 %"$gasrem_3504", 2
  store i64 %"$consume_3508", i64* @_gasrem, align 8
  %"$is_one_3510" = load %TName_Bool*, %TName_Bool** %is_one, align 8
  %"$is_one_tag_3511" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_3510", i32 0, i32 0
  %"$is_one_tag_3512" = load i8, i8* %"$is_one_tag_3511", align 1
  switch i8 %"$is_one_tag_3512", label %"$empty_default_3513" [
    i8 0, label %"$True_3514"
    i8 1, label %"$False_3516"
  ]

"$True_3514":                                     ; preds = %"$have_gas_3507"
  %"$is_one_3515" = bitcast %TName_Bool* %"$is_one_3510" to %CName_True*
  br label %"$matchsucc_3509"

"$False_3516":                                    ; preds = %"$have_gas_3507"
  %"$is_one_3517" = bitcast %TName_Bool* %"$is_one_3510" to %CName_False*
  %"$gasrem_3518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3519" = icmp ugt i64 1, %"$gasrem_3518"
  br i1 %"$gascmp_3519", label %"$out_of_gas_3520", label %"$have_gas_3521"

"$out_of_gas_3520":                               ; preds = %"$False_3516"
  call void @_out_of_gas()
  br label %"$have_gas_3521"

"$have_gas_3521":                                 ; preds = %"$out_of_gas_3520", %"$False_3516"
  %"$consume_3522" = sub i64 %"$gasrem_3518", 1
  store i64 %"$consume_3522", i64* @_gasrem, align 8
  %err = alloca %String, align 8
  %"$gasrem_3523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3524" = icmp ugt i64 1, %"$gasrem_3523"
  br i1 %"$gascmp_3524", label %"$out_of_gas_3525", label %"$have_gas_3526"

"$out_of_gas_3525":                               ; preds = %"$have_gas_3521"
  call void @_out_of_gas()
  br label %"$have_gas_3526"

"$have_gas_3526":                                 ; preds = %"$out_of_gas_3525", %"$have_gas_3521"
  %"$consume_3527" = sub i64 %"$gasrem_3523", 1
  store i64 %"$consume_3527", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_3528", i32 0, i32 0), i32 22 }, %String* %err, align 8
  %"$gasrem_3529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3530" = icmp ugt i64 1, %"$gasrem_3529"
  br i1 %"$gascmp_3530", label %"$out_of_gas_3531", label %"$have_gas_3532"

"$out_of_gas_3531":                               ; preds = %"$have_gas_3526"
  call void @_out_of_gas()
  br label %"$have_gas_3532"

"$have_gas_3532":                                 ; preds = %"$out_of_gas_3531", %"$have_gas_3526"
  %"$consume_3533" = sub i64 %"$gasrem_3529", 1
  store i64 %"$consume_3533", i64* @_gasrem, align 8
  %"$fail_msg__origin_3534" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3534", align 1
  %"$fail_msg__sender_3535" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3535", align 1
  %"$tname_3536" = load %String, %String* %tname, align 8
  %"$err_3537" = load %String, %String* %err, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3534", [20 x i8]* %"$fail_msg__sender_3535", %String %"$tname_3536", %String %"$err_3537")
  br label %"$matchsucc_3509"

"$empty_default_3513":                            ; preds = %"$have_gas_3507"
  br label %"$matchsucc_3509"

"$matchsucc_3509":                                ; preds = %"$have_gas_3532", %"$True_3514", %"$empty_default_3513"
  %"$gasrem_3538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3539" = icmp ugt i64 1, %"$gasrem_3538"
  br i1 %"$gascmp_3539", label %"$out_of_gas_3540", label %"$have_gas_3541"

"$out_of_gas_3540":                               ; preds = %"$matchsucc_3509"
  call void @_out_of_gas()
  br label %"$have_gas_3541"

"$have_gas_3541":                                 ; preds = %"$out_of_gas_3540", %"$matchsucc_3509"
  %"$consume_3542" = sub i64 %"$gasrem_3538", 1
  store i64 %"$consume_3542", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3544" = icmp ugt i64 1, %"$gasrem_3543"
  br i1 %"$gascmp_3544", label %"$out_of_gas_3545", label %"$have_gas_3546"

"$out_of_gas_3545":                               ; preds = %"$have_gas_3541"
  call void @_out_of_gas()
  br label %"$have_gas_3546"

"$have_gas_3546":                                 ; preds = %"$out_of_gas_3545", %"$have_gas_3541"
  %"$consume_3547" = sub i64 %"$gasrem_3543", 1
  store i64 %"$consume_3547", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3548", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_3549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3550" = icmp ugt i64 1, %"$gasrem_3549"
  br i1 %"$gascmp_3550", label %"$out_of_gas_3551", label %"$have_gas_3552"

"$out_of_gas_3551":                               ; preds = %"$have_gas_3546"
  call void @_out_of_gas()
  br label %"$have_gas_3552"

"$have_gas_3552":                                 ; preds = %"$out_of_gas_3551", %"$have_gas_3546"
  %"$consume_3553" = sub i64 %"$gasrem_3549", 1
  store i64 %"$consume_3553", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3555" = icmp ugt i64 1, %"$gasrem_3554"
  br i1 %"$gascmp_3555", label %"$out_of_gas_3556", label %"$have_gas_3557"

"$out_of_gas_3556":                               ; preds = %"$have_gas_3552"
  call void @_out_of_gas()
  br label %"$have_gas_3557"

"$have_gas_3557":                                 ; preds = %"$out_of_gas_3556", %"$have_gas_3552"
  %"$consume_3558" = sub i64 %"$gasrem_3554", 1
  store i64 %"$consume_3558", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3559", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3561" = icmp ugt i64 1, %"$gasrem_3560"
  br i1 %"$gascmp_3561", label %"$out_of_gas_3562", label %"$have_gas_3563"

"$out_of_gas_3562":                               ; preds = %"$have_gas_3557"
  call void @_out_of_gas()
  br label %"$have_gas_3563"

"$have_gas_3563":                                 ; preds = %"$out_of_gas_3562", %"$have_gas_3557"
  %"$consume_3564" = sub i64 %"$gasrem_3560", 1
  store i64 %"$consume_3564", i64* @_gasrem, align 8
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3566" = icmp ugt i64 1, %"$gasrem_3565"
  br i1 %"$gascmp_3566", label %"$out_of_gas_3567", label %"$have_gas_3568"

"$out_of_gas_3567":                               ; preds = %"$have_gas_3563"
  call void @_out_of_gas()
  br label %"$have_gas_3568"

"$have_gas_3568":                                 ; preds = %"$out_of_gas_3567", %"$have_gas_3563"
  %"$consume_3569" = sub i64 %"$gasrem_3565", 1
  store i64 %"$consume_3569", i64* @_gasrem, align 8
  %"$execptr_load_3570" = load i8*, i8** @_execptr, align 8
  %"$m3_3571" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3571_3572" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3571" to i8*
  %"$get_key1a_3573" = alloca %String, align 8
  %"$key1a_3574" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3574", %String* %"$get_key1a_3573", align 8
  %"$$get_key1a_3573_3575" = bitcast %String* %"$get_key1a_3573" to i8*
  %"$get_call_3576" = call i8* @_get(i8* %"$execptr_load_3570", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3571_3572", i8* %"$$get_key1a_3573_3575")
  %"$get_3577" = bitcast i8* %"$get_call_3576" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$get_3577", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$gasrem_3578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3579" = icmp ugt i64 2, %"$gasrem_3578"
  br i1 %"$gascmp_3579", label %"$out_of_gas_3580", label %"$have_gas_3581"

"$out_of_gas_3580":                               ; preds = %"$have_gas_3568"
  call void @_out_of_gas()
  br label %"$have_gas_3581"

"$have_gas_3581":                                 ; preds = %"$out_of_gas_3580", %"$have_gas_3568"
  %"$consume_3582" = sub i64 %"$gasrem_3578", 2
  store i64 %"$consume_3582", i64* @_gasrem, align 8
  %"$m2o_3584" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$m2o_tag_3585" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3584", i32 0, i32 0
  %"$m2o_tag_3586" = load i8, i8* %"$m2o_tag_3585", align 1
  switch i8 %"$m2o_tag_3586", label %"$empty_default_3587" [
    i8 0, label %"$Some_3588"
    i8 1, label %"$None_3780"
  ]

"$Some_3588":                                     ; preds = %"$have_gas_3581"
  %"$m2o_3589" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3584" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_3590" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_3589", i32 0, i32 1
  %"$m2_load_3591" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_3590", align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_3591", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3593" = icmp ugt i64 1, %"$gasrem_3592"
  br i1 %"$gascmp_3593", label %"$out_of_gas_3594", label %"$have_gas_3595"

"$out_of_gas_3594":                               ; preds = %"$Some_3588"
  call void @_out_of_gas()
  br label %"$have_gas_3595"

"$have_gas_3595":                                 ; preds = %"$out_of_gas_3594", %"$Some_3588"
  %"$consume_3596" = sub i64 %"$gasrem_3592", 1
  store i64 %"$consume_3596", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$gasrem_3597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3598" = icmp ugt i64 1, %"$gasrem_3597"
  br i1 %"$gascmp_3598", label %"$out_of_gas_3599", label %"$have_gas_3600"

"$out_of_gas_3599":                               ; preds = %"$have_gas_3595"
  call void @_out_of_gas()
  br label %"$have_gas_3600"

"$have_gas_3600":                                 ; preds = %"$out_of_gas_3599", %"$have_gas_3595"
  %"$consume_3601" = sub i64 %"$gasrem_3597", 1
  store i64 %"$consume_3601", i64* @_gasrem, align 8
  %"$m2_3602" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3602_3603" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3602" to i8*
  %"$size_call_3604" = call %Uint32 @_size(i8* %"$$m2_3602_3603")
  store %Uint32 %"$size_call_3604", %Uint32* %m2_size, align 4
  %"$gasrem_3605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3606" = icmp ugt i64 1, %"$gasrem_3605"
  br i1 %"$gascmp_3606", label %"$out_of_gas_3607", label %"$have_gas_3608"

"$out_of_gas_3607":                               ; preds = %"$have_gas_3600"
  call void @_out_of_gas()
  br label %"$have_gas_3608"

"$have_gas_3608":                                 ; preds = %"$out_of_gas_3607", %"$have_gas_3600"
  %"$consume_3609" = sub i64 %"$gasrem_3605", 1
  store i64 %"$consume_3609", i64* @_gasrem, align 8
  %is_one_1 = alloca %TName_Bool*, align 8
  %"$gasrem_3610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3611" = icmp ugt i64 4, %"$gasrem_3610"
  br i1 %"$gascmp_3611", label %"$out_of_gas_3612", label %"$have_gas_3613"

"$out_of_gas_3612":                               ; preds = %"$have_gas_3608"
  call void @_out_of_gas()
  br label %"$have_gas_3613"

"$have_gas_3613":                                 ; preds = %"$out_of_gas_3612", %"$have_gas_3608"
  %"$consume_3614" = sub i64 %"$gasrem_3610", 4
  store i64 %"$consume_3614", i64* @_gasrem, align 8
  %"$execptr_load_3615" = load i8*, i8** @_execptr, align 8
  %"$m2_size_3616" = load %Uint32, %Uint32* %m2_size, align 4
  %"$one_3617" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3618" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3615", %Uint32 %"$m2_size_3616", %Uint32 %"$one_3617")
  store %TName_Bool* %"$eq_call_3618", %TName_Bool** %is_one_1, align 8
  %"$gasrem_3620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3621" = icmp ugt i64 2, %"$gasrem_3620"
  br i1 %"$gascmp_3621", label %"$out_of_gas_3622", label %"$have_gas_3623"

"$out_of_gas_3622":                               ; preds = %"$have_gas_3613"
  call void @_out_of_gas()
  br label %"$have_gas_3623"

"$have_gas_3623":                                 ; preds = %"$out_of_gas_3622", %"$have_gas_3613"
  %"$consume_3624" = sub i64 %"$gasrem_3620", 2
  store i64 %"$consume_3624", i64* @_gasrem, align 8
  %"$is_one_1_3626" = load %TName_Bool*, %TName_Bool** %is_one_1, align 8
  %"$is_one_1_tag_3627" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_3626", i32 0, i32 0
  %"$is_one_1_tag_3628" = load i8, i8* %"$is_one_1_tag_3627", align 1
  switch i8 %"$is_one_1_tag_3628", label %"$empty_default_3629" [
    i8 0, label %"$True_3630"
    i8 1, label %"$False_3758"
  ]

"$True_3630":                                     ; preds = %"$have_gas_3623"
  %"$is_one_1_3631" = bitcast %TName_Bool* %"$is_one_1_3626" to %CName_True*
  %"$gasrem_3632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3633" = icmp ugt i64 1, %"$gasrem_3632"
  br i1 %"$gascmp_3633", label %"$out_of_gas_3634", label %"$have_gas_3635"

"$out_of_gas_3634":                               ; preds = %"$True_3630"
  call void @_out_of_gas()
  br label %"$have_gas_3635"

"$have_gas_3635":                                 ; preds = %"$out_of_gas_3634", %"$True_3630"
  %"$consume_3636" = sub i64 %"$gasrem_3632", 1
  store i64 %"$consume_3636", i64* @_gasrem, align 8
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$gasrem_3637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3638" = icmp ugt i64 1, %"$gasrem_3637"
  br i1 %"$gascmp_3638", label %"$out_of_gas_3639", label %"$have_gas_3640"

"$out_of_gas_3639":                               ; preds = %"$have_gas_3635"
  call void @_out_of_gas()
  br label %"$have_gas_3640"

"$have_gas_3640":                                 ; preds = %"$out_of_gas_3639", %"$have_gas_3635"
  %"$consume_3641" = sub i64 %"$gasrem_3637", 1
  store i64 %"$consume_3641", i64* @_gasrem, align 8
  %"$execptr_load_3642" = load i8*, i8** @_execptr, align 8
  %"$m2_3643" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3643_3644" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3643" to i8*
  %"$get_key2a_3645" = alloca %String, align 8
  %"$key2a_3646" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3646", %String* %"$get_key2a_3645", align 8
  %"$$get_key2a_3645_3647" = bitcast %String* %"$get_key2a_3645" to i8*
  %"$get_call_3648" = call i8* @_get(i8* %"$execptr_load_3642", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_3643_3644", i8* %"$$get_key2a_3645_3647")
  %"$get_3649" = bitcast i8* %"$get_call_3648" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$get_3649", %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$gasrem_3650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3651" = icmp ugt i64 2, %"$gasrem_3650"
  br i1 %"$gascmp_3651", label %"$out_of_gas_3652", label %"$have_gas_3653"

"$out_of_gas_3652":                               ; preds = %"$have_gas_3640"
  call void @_out_of_gas()
  br label %"$have_gas_3653"

"$have_gas_3653":                                 ; preds = %"$out_of_gas_3652", %"$have_gas_3640"
  %"$consume_3654" = sub i64 %"$gasrem_3650", 2
  store i64 %"$consume_3654", i64* @_gasrem, align 8
  %"$m1o_3656" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$m1o_tag_3657" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_3656", i32 0, i32 0
  %"$m1o_tag_3658" = load i8, i8* %"$m1o_tag_3657", align 1
  switch i8 %"$m1o_tag_3658", label %"$empty_default_3659" [
    i8 0, label %"$Some_3660"
    i8 1, label %"$None_3736"
  ]

"$Some_3660":                                     ; preds = %"$have_gas_3653"
  %"$m1o_3661" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3656" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_3662" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_3661", i32 0, i32 1
  %"$m1_load_3663" = load %Map_String_String*, %Map_String_String** %"$m1_gep_3662", align 8
  %m1 = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m1_load_3663", %Map_String_String** %m1, align 8
  %"$gasrem_3664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3665" = icmp ugt i64 1, %"$gasrem_3664"
  br i1 %"$gascmp_3665", label %"$out_of_gas_3666", label %"$have_gas_3667"

"$out_of_gas_3666":                               ; preds = %"$Some_3660"
  call void @_out_of_gas()
  br label %"$have_gas_3667"

"$have_gas_3667":                                 ; preds = %"$out_of_gas_3666", %"$Some_3660"
  %"$consume_3668" = sub i64 %"$gasrem_3664", 1
  store i64 %"$consume_3668", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_3669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3670" = icmp ugt i64 1, %"$gasrem_3669"
  br i1 %"$gascmp_3670", label %"$out_of_gas_3671", label %"$have_gas_3672"

"$out_of_gas_3671":                               ; preds = %"$have_gas_3667"
  call void @_out_of_gas()
  br label %"$have_gas_3672"

"$have_gas_3672":                                 ; preds = %"$out_of_gas_3671", %"$have_gas_3667"
  %"$consume_3673" = sub i64 %"$gasrem_3669", 1
  store i64 %"$consume_3673", i64* @_gasrem, align 8
  %"$m1_3674" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_3674_3675" = bitcast %Map_String_String* %"$m1_3674" to i8*
  %"$size_call_3676" = call %Uint32 @_size(i8* %"$$m1_3674_3675")
  store %Uint32 %"$size_call_3676", %Uint32* %m1_size, align 4
  %"$gasrem_3677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3678" = icmp ugt i64 1, %"$gasrem_3677"
  br i1 %"$gascmp_3678", label %"$out_of_gas_3679", label %"$have_gas_3680"

"$out_of_gas_3679":                               ; preds = %"$have_gas_3672"
  call void @_out_of_gas()
  br label %"$have_gas_3680"

"$have_gas_3680":                                 ; preds = %"$out_of_gas_3679", %"$have_gas_3672"
  %"$consume_3681" = sub i64 %"$gasrem_3677", 1
  store i64 %"$consume_3681", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3683" = icmp ugt i64 1, %"$gasrem_3682"
  br i1 %"$gascmp_3683", label %"$out_of_gas_3684", label %"$have_gas_3685"

"$out_of_gas_3684":                               ; preds = %"$have_gas_3680"
  call void @_out_of_gas()
  br label %"$have_gas_3685"

"$have_gas_3685":                                 ; preds = %"$out_of_gas_3684", %"$have_gas_3680"
  %"$consume_3686" = sub i64 %"$gasrem_3682", 1
  store i64 %"$consume_3686", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3688" = icmp ugt i64 1, %"$gasrem_3687"
  br i1 %"$gascmp_3688", label %"$out_of_gas_3689", label %"$have_gas_3690"

"$out_of_gas_3689":                               ; preds = %"$have_gas_3685"
  call void @_out_of_gas()
  br label %"$have_gas_3690"

"$have_gas_3690":                                 ; preds = %"$out_of_gas_3689", %"$have_gas_3685"
  %"$consume_3691" = sub i64 %"$gasrem_3687", 1
  store i64 %"$consume_3691", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3693" = icmp ugt i64 4, %"$gasrem_3692"
  br i1 %"$gascmp_3693", label %"$out_of_gas_3694", label %"$have_gas_3695"

"$out_of_gas_3694":                               ; preds = %"$have_gas_3690"
  call void @_out_of_gas()
  br label %"$have_gas_3695"

"$have_gas_3695":                                 ; preds = %"$out_of_gas_3694", %"$have_gas_3690"
  %"$consume_3696" = sub i64 %"$gasrem_3692", 4
  store i64 %"$consume_3696", i64* @_gasrem, align 8
  %"$execptr_load_3697" = load i8*, i8** @_execptr, align 8
  %"$m1_size_3698" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_3699" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3700" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3697", %Uint32 %"$m1_size_3698", %Uint32 %"$zero_3699")
  store %TName_Bool* %"$eq_call_3700", %TName_Bool** %is_empty, align 8
  %"$gasrem_3702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3703" = icmp ugt i64 2, %"$gasrem_3702"
  br i1 %"$gascmp_3703", label %"$out_of_gas_3704", label %"$have_gas_3705"

"$out_of_gas_3704":                               ; preds = %"$have_gas_3695"
  call void @_out_of_gas()
  br label %"$have_gas_3705"

"$have_gas_3705":                                 ; preds = %"$out_of_gas_3704", %"$have_gas_3695"
  %"$consume_3706" = sub i64 %"$gasrem_3702", 2
  store i64 %"$consume_3706", i64* @_gasrem, align 8
  %"$is_empty_3708" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3709" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3708", i32 0, i32 0
  %"$is_empty_tag_3710" = load i8, i8* %"$is_empty_tag_3709", align 1
  switch i8 %"$is_empty_tag_3710", label %"$empty_default_3711" [
    i8 0, label %"$True_3712"
    i8 1, label %"$False_3714"
  ]

"$True_3712":                                     ; preds = %"$have_gas_3705"
  %"$is_empty_3713" = bitcast %TName_Bool* %"$is_empty_3708" to %CName_True*
  br label %"$matchsucc_3707"

"$False_3714":                                    ; preds = %"$have_gas_3705"
  %"$is_empty_3715" = bitcast %TName_Bool* %"$is_empty_3708" to %CName_False*
  %"$gasrem_3716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3717" = icmp ugt i64 1, %"$gasrem_3716"
  br i1 %"$gascmp_3717", label %"$out_of_gas_3718", label %"$have_gas_3719"

"$out_of_gas_3718":                               ; preds = %"$False_3714"
  call void @_out_of_gas()
  br label %"$have_gas_3719"

"$have_gas_3719":                                 ; preds = %"$out_of_gas_3718", %"$False_3714"
  %"$consume_3720" = sub i64 %"$gasrem_3716", 1
  store i64 %"$consume_3720", i64* @_gasrem, align 8
  %err1 = alloca %String, align 8
  %"$gasrem_3721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3722" = icmp ugt i64 1, %"$gasrem_3721"
  br i1 %"$gascmp_3722", label %"$out_of_gas_3723", label %"$have_gas_3724"

"$out_of_gas_3723":                               ; preds = %"$have_gas_3719"
  call void @_out_of_gas()
  br label %"$have_gas_3724"

"$have_gas_3724":                                 ; preds = %"$out_of_gas_3723", %"$have_gas_3719"
  %"$consume_3725" = sub i64 %"$gasrem_3721", 1
  store i64 %"$consume_3725", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_3726", i32 0, i32 0), i32 36 }, %String* %err1, align 8
  %"$gasrem_3727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3728" = icmp ugt i64 1, %"$gasrem_3727"
  br i1 %"$gascmp_3728", label %"$out_of_gas_3729", label %"$have_gas_3730"

"$out_of_gas_3729":                               ; preds = %"$have_gas_3724"
  call void @_out_of_gas()
  br label %"$have_gas_3730"

"$have_gas_3730":                                 ; preds = %"$out_of_gas_3729", %"$have_gas_3724"
  %"$consume_3731" = sub i64 %"$gasrem_3727", 1
  store i64 %"$consume_3731", i64* @_gasrem, align 8
  %"$fail_msg__origin_3732" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3732", align 1
  %"$fail_msg__sender_3733" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3733", align 1
  %"$tname_3734" = load %String, %String* %tname, align 8
  %"$err_3735" = load %String, %String* %err1, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3732", [20 x i8]* %"$fail_msg__sender_3733", %String %"$tname_3734", %String %"$err_3735")
  br label %"$matchsucc_3707"

"$empty_default_3711":                            ; preds = %"$have_gas_3705"
  br label %"$matchsucc_3707"

"$matchsucc_3707":                                ; preds = %"$have_gas_3730", %"$True_3712", %"$empty_default_3711"
  br label %"$matchsucc_3655"

"$None_3736":                                     ; preds = %"$have_gas_3653"
  %"$m1o_3737" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3656" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3739" = icmp ugt i64 1, %"$gasrem_3738"
  br i1 %"$gascmp_3739", label %"$out_of_gas_3740", label %"$have_gas_3741"

"$out_of_gas_3740":                               ; preds = %"$None_3736"
  call void @_out_of_gas()
  br label %"$have_gas_3741"

"$have_gas_3741":                                 ; preds = %"$out_of_gas_3740", %"$None_3736"
  %"$consume_3742" = sub i64 %"$gasrem_3738", 1
  store i64 %"$consume_3742", i64* @_gasrem, align 8
  %err2 = alloca %String, align 8
  %"$gasrem_3743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3744" = icmp ugt i64 1, %"$gasrem_3743"
  br i1 %"$gascmp_3744", label %"$out_of_gas_3745", label %"$have_gas_3746"

"$out_of_gas_3745":                               ; preds = %"$have_gas_3741"
  call void @_out_of_gas()
  br label %"$have_gas_3746"

"$have_gas_3746":                                 ; preds = %"$out_of_gas_3745", %"$have_gas_3741"
  %"$consume_3747" = sub i64 %"$gasrem_3743", 1
  store i64 %"$consume_3747", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3748", i32 0, i32 0), i32 19 }, %String* %err2, align 8
  %"$gasrem_3749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3750" = icmp ugt i64 1, %"$gasrem_3749"
  br i1 %"$gascmp_3750", label %"$out_of_gas_3751", label %"$have_gas_3752"

"$out_of_gas_3751":                               ; preds = %"$have_gas_3746"
  call void @_out_of_gas()
  br label %"$have_gas_3752"

"$have_gas_3752":                                 ; preds = %"$out_of_gas_3751", %"$have_gas_3746"
  %"$consume_3753" = sub i64 %"$gasrem_3749", 1
  store i64 %"$consume_3753", i64* @_gasrem, align 8
  %"$fail_msg__origin_3754" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3754", align 1
  %"$fail_msg__sender_3755" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3755", align 1
  %"$tname_3756" = load %String, %String* %tname, align 8
  %"$err_3757" = load %String, %String* %err2, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3754", [20 x i8]* %"$fail_msg__sender_3755", %String %"$tname_3756", %String %"$err_3757")
  br label %"$matchsucc_3655"

"$empty_default_3659":                            ; preds = %"$have_gas_3653"
  br label %"$matchsucc_3655"

"$matchsucc_3655":                                ; preds = %"$have_gas_3752", %"$matchsucc_3707", %"$empty_default_3659"
  br label %"$matchsucc_3625"

"$False_3758":                                    ; preds = %"$have_gas_3623"
  %"$is_one_1_3759" = bitcast %TName_Bool* %"$is_one_1_3626" to %CName_False*
  %"$gasrem_3760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3761" = icmp ugt i64 1, %"$gasrem_3760"
  br i1 %"$gascmp_3761", label %"$out_of_gas_3762", label %"$have_gas_3763"

"$out_of_gas_3762":                               ; preds = %"$False_3758"
  call void @_out_of_gas()
  br label %"$have_gas_3763"

"$have_gas_3763":                                 ; preds = %"$out_of_gas_3762", %"$False_3758"
  %"$consume_3764" = sub i64 %"$gasrem_3760", 1
  store i64 %"$consume_3764", i64* @_gasrem, align 8
  %err3 = alloca %String, align 8
  %"$gasrem_3765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3766" = icmp ugt i64 1, %"$gasrem_3765"
  br i1 %"$gascmp_3766", label %"$out_of_gas_3767", label %"$have_gas_3768"

"$out_of_gas_3767":                               ; preds = %"$have_gas_3763"
  call void @_out_of_gas()
  br label %"$have_gas_3768"

"$have_gas_3768":                                 ; preds = %"$out_of_gas_3767", %"$have_gas_3763"
  %"$consume_3769" = sub i64 %"$gasrem_3765", 1
  store i64 %"$consume_3769", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_3770", i32 0, i32 0), i32 28 }, %String* %err3, align 8
  %"$gasrem_3771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3772" = icmp ugt i64 1, %"$gasrem_3771"
  br i1 %"$gascmp_3772", label %"$out_of_gas_3773", label %"$have_gas_3774"

"$out_of_gas_3773":                               ; preds = %"$have_gas_3768"
  call void @_out_of_gas()
  br label %"$have_gas_3774"

"$have_gas_3774":                                 ; preds = %"$out_of_gas_3773", %"$have_gas_3768"
  %"$consume_3775" = sub i64 %"$gasrem_3771", 1
  store i64 %"$consume_3775", i64* @_gasrem, align 8
  %"$fail_msg__origin_3776" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3776", align 1
  %"$fail_msg__sender_3777" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3777", align 1
  %"$tname_3778" = load %String, %String* %tname, align 8
  %"$err_3779" = load %String, %String* %err3, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3776", [20 x i8]* %"$fail_msg__sender_3777", %String %"$tname_3778", %String %"$err_3779")
  br label %"$matchsucc_3625"

"$empty_default_3629":                            ; preds = %"$have_gas_3623"
  br label %"$matchsucc_3625"

"$matchsucc_3625":                                ; preds = %"$have_gas_3774", %"$matchsucc_3655", %"$empty_default_3629"
  br label %"$matchsucc_3583"

"$None_3780":                                     ; preds = %"$have_gas_3581"
  %"$m2o_3781" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3584" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_3782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3783" = icmp ugt i64 1, %"$gasrem_3782"
  br i1 %"$gascmp_3783", label %"$out_of_gas_3784", label %"$have_gas_3785"

"$out_of_gas_3784":                               ; preds = %"$None_3780"
  call void @_out_of_gas()
  br label %"$have_gas_3785"

"$have_gas_3785":                                 ; preds = %"$out_of_gas_3784", %"$None_3780"
  %"$consume_3786" = sub i64 %"$gasrem_3782", 1
  store i64 %"$consume_3786", i64* @_gasrem, align 8
  %err4 = alloca %String, align 8
  %"$gasrem_3787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3788" = icmp ugt i64 1, %"$gasrem_3787"
  br i1 %"$gascmp_3788", label %"$out_of_gas_3789", label %"$have_gas_3790"

"$out_of_gas_3789":                               ; preds = %"$have_gas_3785"
  call void @_out_of_gas()
  br label %"$have_gas_3790"

"$have_gas_3790":                                 ; preds = %"$out_of_gas_3789", %"$have_gas_3785"
  %"$consume_3791" = sub i64 %"$gasrem_3787", 1
  store i64 %"$consume_3791", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3792", i32 0, i32 0), i32 19 }, %String* %err4, align 8
  %"$gasrem_3793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3794" = icmp ugt i64 1, %"$gasrem_3793"
  br i1 %"$gascmp_3794", label %"$out_of_gas_3795", label %"$have_gas_3796"

"$out_of_gas_3795":                               ; preds = %"$have_gas_3790"
  call void @_out_of_gas()
  br label %"$have_gas_3796"

"$have_gas_3796":                                 ; preds = %"$out_of_gas_3795", %"$have_gas_3790"
  %"$consume_3797" = sub i64 %"$gasrem_3793", 1
  store i64 %"$consume_3797", i64* @_gasrem, align 8
  %"$fail_msg__origin_3798" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3798", align 1
  %"$fail_msg__sender_3799" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3799", align 1
  %"$tname_3800" = load %String, %String* %tname, align 8
  %"$err_3801" = load %String, %String* %err4, align 8
  call void @"$fail_msg_285"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3798", [20 x i8]* %"$fail_msg__sender_3799", %String %"$tname_3800", %String %"$err_3801")
  br label %"$matchsucc_3583"

"$empty_default_3587":                            ; preds = %"$have_gas_3581"
  br label %"$matchsucc_3583"

"$matchsucc_3583":                                ; preds = %"$have_gas_3796", %"$matchsucc_3625", %"$empty_default_3587"
  %"$gasrem_3802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3803" = icmp ugt i64 1, %"$gasrem_3802"
  br i1 %"$gascmp_3803", label %"$out_of_gas_3804", label %"$have_gas_3805"

"$out_of_gas_3804":                               ; preds = %"$matchsucc_3583"
  call void @_out_of_gas()
  br label %"$have_gas_3805"

"$have_gas_3805":                                 ; preds = %"$out_of_gas_3804", %"$matchsucc_3583"
  %"$consume_3806" = sub i64 %"$gasrem_3802", 1
  store i64 %"$consume_3806", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_3807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3808" = icmp ugt i64 1, %"$gasrem_3807"
  br i1 %"$gascmp_3808", label %"$out_of_gas_3809", label %"$have_gas_3810"

"$out_of_gas_3809":                               ; preds = %"$have_gas_3805"
  call void @_out_of_gas()
  br label %"$have_gas_3810"

"$have_gas_3810":                                 ; preds = %"$out_of_gas_3809", %"$have_gas_3805"
  %"$consume_3811" = sub i64 %"$gasrem_3807", 1
  store i64 %"$consume_3811", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3812", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_3813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3814" = icmp ugt i64 1, %"$gasrem_3813"
  br i1 %"$gascmp_3814", label %"$out_of_gas_3815", label %"$have_gas_3816"

"$out_of_gas_3815":                               ; preds = %"$have_gas_3810"
  call void @_out_of_gas()
  br label %"$have_gas_3816"

"$have_gas_3816":                                 ; preds = %"$out_of_gas_3815", %"$have_gas_3810"
  %"$consume_3817" = sub i64 %"$gasrem_3813", 1
  store i64 %"$consume_3817", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_3818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3819" = icmp ugt i64 1, %"$gasrem_3818"
  br i1 %"$gascmp_3819", label %"$out_of_gas_3820", label %"$have_gas_3821"

"$out_of_gas_3820":                               ; preds = %"$have_gas_3816"
  call void @_out_of_gas()
  br label %"$have_gas_3821"

"$have_gas_3821":                                 ; preds = %"$out_of_gas_3820", %"$have_gas_3816"
  %"$consume_3822" = sub i64 %"$gasrem_3818", 1
  store i64 %"$consume_3822", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3823", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_3824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3825" = icmp ugt i64 1, %"$gasrem_3824"
  br i1 %"$gascmp_3825", label %"$out_of_gas_3826", label %"$have_gas_3827"

"$out_of_gas_3826":                               ; preds = %"$have_gas_3821"
  call void @_out_of_gas()
  br label %"$have_gas_3827"

"$have_gas_3827":                                 ; preds = %"$out_of_gas_3826", %"$have_gas_3821"
  %"$consume_3828" = sub i64 %"$gasrem_3824", 1
  store i64 %"$consume_3828", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_3829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3830" = icmp ugt i64 1, %"$gasrem_3829"
  br i1 %"$gascmp_3830", label %"$out_of_gas_3831", label %"$have_gas_3832"

"$out_of_gas_3831":                               ; preds = %"$have_gas_3827"
  call void @_out_of_gas()
  br label %"$have_gas_3832"

"$have_gas_3832":                                 ; preds = %"$out_of_gas_3831", %"$have_gas_3827"
  %"$consume_3833" = sub i64 %"$gasrem_3829", 1
  store i64 %"$consume_3833", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3834", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_3835" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3836" = icmp ugt i64 1, %"$gasrem_3835"
  br i1 %"$gascmp_3836", label %"$out_of_gas_3837", label %"$have_gas_3838"

"$out_of_gas_3837":                               ; preds = %"$have_gas_3832"
  call void @_out_of_gas()
  br label %"$have_gas_3838"

"$have_gas_3838":                                 ; preds = %"$out_of_gas_3837", %"$have_gas_3832"
  %"$consume_3839" = sub i64 %"$gasrem_3835", 1
  store i64 %"$consume_3839", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_3840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3841" = icmp ugt i64 1, %"$gasrem_3840"
  br i1 %"$gascmp_3841", label %"$out_of_gas_3842", label %"$have_gas_3843"

"$out_of_gas_3842":                               ; preds = %"$have_gas_3838"
  call void @_out_of_gas()
  br label %"$have_gas_3843"

"$have_gas_3843":                                 ; preds = %"$out_of_gas_3842", %"$have_gas_3838"
  %"$consume_3844" = sub i64 %"$gasrem_3840", 1
  store i64 %"$consume_3844", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3845", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_3846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3847" = icmp ugt i64 1, %"$gasrem_3846"
  br i1 %"$gascmp_3847", label %"$out_of_gas_3848", label %"$have_gas_3849"

"$out_of_gas_3848":                               ; preds = %"$have_gas_3843"
  call void @_out_of_gas()
  br label %"$have_gas_3849"

"$have_gas_3849":                                 ; preds = %"$out_of_gas_3848", %"$have_gas_3843"
  %"$consume_3850" = sub i64 %"$gasrem_3846", 1
  store i64 %"$consume_3850", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_3851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3852" = icmp ugt i64 1, %"$gasrem_3851"
  br i1 %"$gascmp_3852", label %"$out_of_gas_3853", label %"$have_gas_3854"

"$out_of_gas_3853":                               ; preds = %"$have_gas_3849"
  call void @_out_of_gas()
  br label %"$have_gas_3854"

"$have_gas_3854":                                 ; preds = %"$out_of_gas_3853", %"$have_gas_3849"
  %"$consume_3855" = sub i64 %"$gasrem_3851", 1
  store i64 %"$consume_3855", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3856", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_3857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3858" = icmp ugt i64 1, %"$gasrem_3857"
  br i1 %"$gascmp_3858", label %"$out_of_gas_3859", label %"$have_gas_3860"

"$out_of_gas_3859":                               ; preds = %"$have_gas_3854"
  call void @_out_of_gas()
  br label %"$have_gas_3860"

"$have_gas_3860":                                 ; preds = %"$out_of_gas_3859", %"$have_gas_3854"
  %"$consume_3861" = sub i64 %"$gasrem_3857", 1
  store i64 %"$consume_3861", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_3862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3863" = icmp ugt i64 1, %"$gasrem_3862"
  br i1 %"$gascmp_3863", label %"$out_of_gas_3864", label %"$have_gas_3865"

"$out_of_gas_3864":                               ; preds = %"$have_gas_3860"
  call void @_out_of_gas()
  br label %"$have_gas_3865"

"$have_gas_3865":                                 ; preds = %"$out_of_gas_3864", %"$have_gas_3860"
  %"$consume_3866" = sub i64 %"$gasrem_3862", 1
  store i64 %"$consume_3866", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3867", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$gasrem_3868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3869" = icmp ugt i64 1, %"$gasrem_3868"
  br i1 %"$gascmp_3869", label %"$out_of_gas_3870", label %"$have_gas_3871"

"$out_of_gas_3870":                               ; preds = %"$have_gas_3865"
  call void @_out_of_gas()
  br label %"$have_gas_3871"

"$have_gas_3871":                                 ; preds = %"$out_of_gas_3870", %"$have_gas_3865"
  %"$consume_3872" = sub i64 %"$gasrem_3868", 1
  store i64 %"$consume_3872", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_3873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3874" = icmp ugt i64 1, %"$gasrem_3873"
  br i1 %"$gascmp_3874", label %"$out_of_gas_3875", label %"$have_gas_3876"

"$out_of_gas_3875":                               ; preds = %"$have_gas_3871"
  call void @_out_of_gas()
  br label %"$have_gas_3876"

"$have_gas_3876":                                 ; preds = %"$out_of_gas_3875", %"$have_gas_3871"
  %"$consume_3877" = sub i64 %"$gasrem_3873", 1
  store i64 %"$consume_3877", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3878", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_3879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3880" = icmp ugt i64 1, %"$gasrem_3879"
  br i1 %"$gascmp_3880", label %"$out_of_gas_3881", label %"$have_gas_3882"

"$out_of_gas_3881":                               ; preds = %"$have_gas_3876"
  call void @_out_of_gas()
  br label %"$have_gas_3882"

"$have_gas_3882":                                 ; preds = %"$out_of_gas_3881", %"$have_gas_3876"
  %"$consume_3883" = sub i64 %"$gasrem_3879", 1
  store i64 %"$consume_3883", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_3884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3885" = icmp ugt i64 1, %"$gasrem_3884"
  br i1 %"$gascmp_3885", label %"$out_of_gas_3886", label %"$have_gas_3887"

"$out_of_gas_3886":                               ; preds = %"$have_gas_3882"
  call void @_out_of_gas()
  br label %"$have_gas_3887"

"$have_gas_3887":                                 ; preds = %"$out_of_gas_3886", %"$have_gas_3882"
  %"$consume_3888" = sub i64 %"$gasrem_3884", 1
  store i64 %"$consume_3888", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3889", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_3890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3891" = icmp ugt i64 1, %"$gasrem_3890"
  br i1 %"$gascmp_3891", label %"$out_of_gas_3892", label %"$have_gas_3893"

"$out_of_gas_3892":                               ; preds = %"$have_gas_3887"
  call void @_out_of_gas()
  br label %"$have_gas_3893"

"$have_gas_3893":                                 ; preds = %"$out_of_gas_3892", %"$have_gas_3887"
  %"$consume_3894" = sub i64 %"$gasrem_3890", 1
  store i64 %"$consume_3894", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_3895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3896" = icmp ugt i64 1, %"$gasrem_3895"
  br i1 %"$gascmp_3896", label %"$out_of_gas_3897", label %"$have_gas_3898"

"$out_of_gas_3897":                               ; preds = %"$have_gas_3893"
  call void @_out_of_gas()
  br label %"$have_gas_3898"

"$have_gas_3898":                                 ; preds = %"$out_of_gas_3897", %"$have_gas_3893"
  %"$consume_3899" = sub i64 %"$gasrem_3895", 1
  store i64 %"$consume_3899", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3900", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_3901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3902" = icmp ugt i64 1, %"$gasrem_3901"
  br i1 %"$gascmp_3902", label %"$out_of_gas_3903", label %"$have_gas_3904"

"$out_of_gas_3903":                               ; preds = %"$have_gas_3898"
  call void @_out_of_gas()
  br label %"$have_gas_3904"

"$have_gas_3904":                                 ; preds = %"$out_of_gas_3903", %"$have_gas_3898"
  %"$consume_3905" = sub i64 %"$gasrem_3901", 1
  store i64 %"$consume_3905", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_3906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3907" = icmp ugt i64 1, %"$gasrem_3906"
  br i1 %"$gascmp_3907", label %"$out_of_gas_3908", label %"$have_gas_3909"

"$out_of_gas_3908":                               ; preds = %"$have_gas_3904"
  call void @_out_of_gas()
  br label %"$have_gas_3909"

"$have_gas_3909":                                 ; preds = %"$out_of_gas_3908", %"$have_gas_3904"
  %"$consume_3910" = sub i64 %"$gasrem_3906", 1
  store i64 %"$consume_3910", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3911", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_3912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3913" = icmp ugt i64 1, %"$gasrem_3912"
  br i1 %"$gascmp_3913", label %"$out_of_gas_3914", label %"$have_gas_3915"

"$out_of_gas_3914":                               ; preds = %"$have_gas_3909"
  call void @_out_of_gas()
  br label %"$have_gas_3915"

"$have_gas_3915":                                 ; preds = %"$out_of_gas_3914", %"$have_gas_3909"
  %"$consume_3916" = sub i64 %"$gasrem_3912", 1
  store i64 %"$consume_3916", i64* @_gasrem, align 8
  %m25 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3918" = icmp ugt i64 1, %"$gasrem_3917"
  br i1 %"$gascmp_3918", label %"$out_of_gas_3919", label %"$have_gas_3920"

"$out_of_gas_3919":                               ; preds = %"$have_gas_3915"
  call void @_out_of_gas()
  br label %"$have_gas_3920"

"$have_gas_3920":                                 ; preds = %"$out_of_gas_3919", %"$have_gas_3915"
  %"$consume_3921" = sub i64 %"$gasrem_3917", 1
  store i64 %"$consume_3921", i64* @_gasrem, align 8
  %"$execptr_load_3922" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3923" = call i8* @_new_empty_map(i8* %"$execptr_load_3922")
  %"$_new_empty_map_3924" = bitcast i8* %"$_new_empty_map_call_3923" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3924", %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$gasrem_3925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3926" = icmp ugt i64 1, %"$gasrem_3925"
  br i1 %"$gascmp_3926", label %"$out_of_gas_3927", label %"$have_gas_3928"

"$out_of_gas_3927":                               ; preds = %"$have_gas_3920"
  call void @_out_of_gas()
  br label %"$have_gas_3928"

"$have_gas_3928":                                 ; preds = %"$out_of_gas_3927", %"$have_gas_3920"
  %"$consume_3929" = sub i64 %"$gasrem_3925", 1
  store i64 %"$consume_3929", i64* @_gasrem, align 8
  %m16 = alloca %Map_String_String*, align 8
  %"$gasrem_3930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3931" = icmp ugt i64 1, %"$gasrem_3930"
  br i1 %"$gascmp_3931", label %"$out_of_gas_3932", label %"$have_gas_3933"

"$out_of_gas_3932":                               ; preds = %"$have_gas_3928"
  call void @_out_of_gas()
  br label %"$have_gas_3933"

"$have_gas_3933":                                 ; preds = %"$out_of_gas_3932", %"$have_gas_3928"
  %"$consume_3934" = sub i64 %"$gasrem_3930", 1
  store i64 %"$consume_3934", i64* @_gasrem, align 8
  %"$execptr_load_3935" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3936" = call i8* @_new_empty_map(i8* %"$execptr_load_3935")
  %"$_new_empty_map_3937" = bitcast i8* %"$_new_empty_map_call_3936" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3937", %Map_String_String** %m16, align 8
  %"$gasrem_3938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3939" = icmp ugt i64 1, %"$gasrem_3938"
  br i1 %"$gascmp_3939", label %"$out_of_gas_3940", label %"$have_gas_3941"

"$out_of_gas_3940":                               ; preds = %"$have_gas_3933"
  call void @_out_of_gas()
  br label %"$have_gas_3941"

"$have_gas_3941":                                 ; preds = %"$out_of_gas_3940", %"$have_gas_3933"
  %"$consume_3942" = sub i64 %"$gasrem_3938", 1
  store i64 %"$consume_3942", i64* @_gasrem, align 8
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3944" = icmp ugt i64 1, %"$gasrem_3943"
  br i1 %"$gascmp_3944", label %"$out_of_gas_3945", label %"$have_gas_3946"

"$out_of_gas_3945":                               ; preds = %"$have_gas_3941"
  call void @_out_of_gas()
  br label %"$have_gas_3946"

"$have_gas_3946":                                 ; preds = %"$out_of_gas_3945", %"$have_gas_3941"
  %"$consume_3947" = sub i64 %"$gasrem_3943", 1
  store i64 %"$consume_3947", i64* @_gasrem, align 8
  %m21 = alloca %Map_String_String*, align 8
  %"$m1_3948" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3948_3949" = bitcast %Map_String_String* %"$m1_3948" to i8*
  %"$_lengthof_call_3950" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3948_3949")
  %"$gasadd_3951" = add i64 1, %"$_lengthof_call_3950"
  %"$gasrem_3952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3953" = icmp ugt i64 %"$gasadd_3951", %"$gasrem_3952"
  br i1 %"$gascmp_3953", label %"$out_of_gas_3954", label %"$have_gas_3955"

"$out_of_gas_3954":                               ; preds = %"$have_gas_3946"
  call void @_out_of_gas()
  br label %"$have_gas_3955"

"$have_gas_3955":                                 ; preds = %"$out_of_gas_3954", %"$have_gas_3946"
  %"$consume_3956" = sub i64 %"$gasrem_3952", %"$gasadd_3951"
  store i64 %"$consume_3956", i64* @_gasrem, align 8
  %"$execptr_load_3957" = load i8*, i8** @_execptr, align 8
  %"$m1_3958" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3958_3959" = bitcast %Map_String_String* %"$m1_3958" to i8*
  %"$put_key2a_3960" = alloca %String, align 8
  %"$key2a_3961" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3961", %String* %"$put_key2a_3960", align 8
  %"$$put_key2a_3960_3962" = bitcast %String* %"$put_key2a_3960" to i8*
  %"$put_v1_3963" = alloca %String, align 8
  %"$v1_3964" = load %String, %String* %v1, align 8
  store %String %"$v1_3964", %String* %"$put_v1_3963", align 8
  %"$$put_v1_3963_3965" = bitcast %String* %"$put_v1_3963" to i8*
  %"$put_call_3966" = call i8* @_put(i8* %"$execptr_load_3957", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3958_3959", i8* %"$$put_key2a_3960_3962", i8* %"$$put_v1_3963_3965")
  %"$put_3967" = bitcast i8* %"$put_call_3966" to %Map_String_String*
  store %Map_String_String* %"$put_3967", %Map_String_String** %m21, align 8
  %"$gasrem_3968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3969" = icmp ugt i64 1, %"$gasrem_3968"
  br i1 %"$gascmp_3969", label %"$out_of_gas_3970", label %"$have_gas_3971"

"$out_of_gas_3970":                               ; preds = %"$have_gas_3955"
  call void @_out_of_gas()
  br label %"$have_gas_3971"

"$have_gas_3971":                                 ; preds = %"$out_of_gas_3970", %"$have_gas_3955"
  %"$consume_3972" = sub i64 %"$gasrem_3968", 1
  store i64 %"$consume_3972", i64* @_gasrem, align 8
  %m22 = alloca %Map_String_String*, align 8
  %"$m1_3973" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3973_3974" = bitcast %Map_String_String* %"$m1_3973" to i8*
  %"$_lengthof_call_3975" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3973_3974")
  %"$gasadd_3976" = add i64 1, %"$_lengthof_call_3975"
  %"$gasrem_3977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3978" = icmp ugt i64 %"$gasadd_3976", %"$gasrem_3977"
  br i1 %"$gascmp_3978", label %"$out_of_gas_3979", label %"$have_gas_3980"

"$out_of_gas_3979":                               ; preds = %"$have_gas_3971"
  call void @_out_of_gas()
  br label %"$have_gas_3980"

"$have_gas_3980":                                 ; preds = %"$out_of_gas_3979", %"$have_gas_3971"
  %"$consume_3981" = sub i64 %"$gasrem_3977", %"$gasadd_3976"
  store i64 %"$consume_3981", i64* @_gasrem, align 8
  %"$execptr_load_3982" = load i8*, i8** @_execptr, align 8
  %"$m1_3983" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3983_3984" = bitcast %Map_String_String* %"$m1_3983" to i8*
  %"$put_key2b_3985" = alloca %String, align 8
  %"$key2b_3986" = load %String, %String* %key2b, align 8
  store %String %"$key2b_3986", %String* %"$put_key2b_3985", align 8
  %"$$put_key2b_3985_3987" = bitcast %String* %"$put_key2b_3985" to i8*
  %"$put_v2_3988" = alloca %String, align 8
  %"$v2_3989" = load %String, %String* %v2, align 8
  store %String %"$v2_3989", %String* %"$put_v2_3988", align 8
  %"$$put_v2_3988_3990" = bitcast %String* %"$put_v2_3988" to i8*
  %"$put_call_3991" = call i8* @_put(i8* %"$execptr_load_3982", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3983_3984", i8* %"$$put_key2b_3985_3987", i8* %"$$put_v2_3988_3990")
  %"$put_3992" = bitcast i8* %"$put_call_3991" to %Map_String_String*
  store %Map_String_String* %"$put_3992", %Map_String_String** %m22, align 8
  %"$gasrem_3993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3994" = icmp ugt i64 1, %"$gasrem_3993"
  br i1 %"$gascmp_3994", label %"$out_of_gas_3995", label %"$have_gas_3996"

"$out_of_gas_3995":                               ; preds = %"$have_gas_3980"
  call void @_out_of_gas()
  br label %"$have_gas_3996"

"$have_gas_3996":                                 ; preds = %"$out_of_gas_3995", %"$have_gas_3980"
  %"$consume_3997" = sub i64 %"$gasrem_3993", 1
  store i64 %"$consume_3997", i64* @_gasrem, align 8
  %m23 = alloca %Map_String_String*, align 8
  %"$m1_3998" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3998_3999" = bitcast %Map_String_String* %"$m1_3998" to i8*
  %"$_lengthof_call_4000" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3998_3999")
  %"$gasadd_4001" = add i64 1, %"$_lengthof_call_4000"
  %"$gasrem_4002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4003" = icmp ugt i64 %"$gasadd_4001", %"$gasrem_4002"
  br i1 %"$gascmp_4003", label %"$out_of_gas_4004", label %"$have_gas_4005"

"$out_of_gas_4004":                               ; preds = %"$have_gas_3996"
  call void @_out_of_gas()
  br label %"$have_gas_4005"

"$have_gas_4005":                                 ; preds = %"$out_of_gas_4004", %"$have_gas_3996"
  %"$consume_4006" = sub i64 %"$gasrem_4002", %"$gasadd_4001"
  store i64 %"$consume_4006", i64* @_gasrem, align 8
  %"$execptr_load_4007" = load i8*, i8** @_execptr, align 8
  %"$m1_4008" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4008_4009" = bitcast %Map_String_String* %"$m1_4008" to i8*
  %"$put_key2c_4010" = alloca %String, align 8
  %"$key2c_4011" = load %String, %String* %key2c, align 8
  store %String %"$key2c_4011", %String* %"$put_key2c_4010", align 8
  %"$$put_key2c_4010_4012" = bitcast %String* %"$put_key2c_4010" to i8*
  %"$put_v3_4013" = alloca %String, align 8
  %"$v3_4014" = load %String, %String* %v3, align 8
  store %String %"$v3_4014", %String* %"$put_v3_4013", align 8
  %"$$put_v3_4013_4015" = bitcast %String* %"$put_v3_4013" to i8*
  %"$put_call_4016" = call i8* @_put(i8* %"$execptr_load_4007", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4008_4009", i8* %"$$put_key2c_4010_4012", i8* %"$$put_v3_4013_4015")
  %"$put_4017" = bitcast i8* %"$put_call_4016" to %Map_String_String*
  store %Map_String_String* %"$put_4017", %Map_String_String** %m23, align 8
  %"$gasrem_4018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4019" = icmp ugt i64 1, %"$gasrem_4018"
  br i1 %"$gascmp_4019", label %"$out_of_gas_4020", label %"$have_gas_4021"

"$out_of_gas_4020":                               ; preds = %"$have_gas_4005"
  call void @_out_of_gas()
  br label %"$have_gas_4021"

"$have_gas_4021":                                 ; preds = %"$out_of_gas_4020", %"$have_gas_4005"
  %"$consume_4022" = sub i64 %"$gasrem_4018", 1
  store i64 %"$consume_4022", i64* @_gasrem, align 8
  %m24 = alloca %Map_String_String*, align 8
  %"$m1_4023" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4023_4024" = bitcast %Map_String_String* %"$m1_4023" to i8*
  %"$_lengthof_call_4025" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4023_4024")
  %"$gasadd_4026" = add i64 1, %"$_lengthof_call_4025"
  %"$gasrem_4027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4028" = icmp ugt i64 %"$gasadd_4026", %"$gasrem_4027"
  br i1 %"$gascmp_4028", label %"$out_of_gas_4029", label %"$have_gas_4030"

"$out_of_gas_4029":                               ; preds = %"$have_gas_4021"
  call void @_out_of_gas()
  br label %"$have_gas_4030"

"$have_gas_4030":                                 ; preds = %"$out_of_gas_4029", %"$have_gas_4021"
  %"$consume_4031" = sub i64 %"$gasrem_4027", %"$gasadd_4026"
  store i64 %"$consume_4031", i64* @_gasrem, align 8
  %"$execptr_load_4032" = load i8*, i8** @_execptr, align 8
  %"$m1_4033" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4033_4034" = bitcast %Map_String_String* %"$m1_4033" to i8*
  %"$put_key2d_4035" = alloca %String, align 8
  %"$key2d_4036" = load %String, %String* %key2d, align 8
  store %String %"$key2d_4036", %String* %"$put_key2d_4035", align 8
  %"$$put_key2d_4035_4037" = bitcast %String* %"$put_key2d_4035" to i8*
  %"$put_v4_4038" = alloca %String, align 8
  %"$v4_4039" = load %String, %String* %v4, align 8
  store %String %"$v4_4039", %String* %"$put_v4_4038", align 8
  %"$$put_v4_4038_4040" = bitcast %String* %"$put_v4_4038" to i8*
  %"$put_call_4041" = call i8* @_put(i8* %"$execptr_load_4032", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4033_4034", i8* %"$$put_key2d_4035_4037", i8* %"$$put_v4_4038_4040")
  %"$put_4042" = bitcast i8* %"$put_call_4041" to %Map_String_String*
  store %Map_String_String* %"$put_4042", %Map_String_String** %m24, align 8
  %"$gasrem_4043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4044" = icmp ugt i64 1, %"$gasrem_4043"
  br i1 %"$gascmp_4044", label %"$out_of_gas_4045", label %"$have_gas_4046"

"$out_of_gas_4045":                               ; preds = %"$have_gas_4030"
  call void @_out_of_gas()
  br label %"$have_gas_4046"

"$have_gas_4046":                                 ; preds = %"$out_of_gas_4045", %"$have_gas_4030"
  %"$consume_4047" = sub i64 %"$gasrem_4043", 1
  store i64 %"$consume_4047", i64* @_gasrem, align 8
  %m11 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m2_4048" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4048_4049" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4048" to i8*
  %"$_lengthof_call_4050" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_4048_4049")
  %"$gasadd_4051" = add i64 1, %"$_lengthof_call_4050"
  %"$gasrem_4052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4053" = icmp ugt i64 %"$gasadd_4051", %"$gasrem_4052"
  br i1 %"$gascmp_4053", label %"$out_of_gas_4054", label %"$have_gas_4055"

"$out_of_gas_4054":                               ; preds = %"$have_gas_4046"
  call void @_out_of_gas()
  br label %"$have_gas_4055"

"$have_gas_4055":                                 ; preds = %"$out_of_gas_4054", %"$have_gas_4046"
  %"$consume_4056" = sub i64 %"$gasrem_4052", %"$gasadd_4051"
  store i64 %"$consume_4056", i64* @_gasrem, align 8
  %"$execptr_load_4057" = load i8*, i8** @_execptr, align 8
  %"$m2_4058" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4058_4059" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4058" to i8*
  %"$put_key1a_4060" = alloca %String, align 8
  %"$key1a_4061" = load %String, %String* %key1a, align 8
  store %String %"$key1a_4061", %String* %"$put_key1a_4060", align 8
  %"$$put_key1a_4060_4062" = bitcast %String* %"$put_key1a_4060" to i8*
  %"$m21_4063" = load %Map_String_String*, %Map_String_String** %m21, align 8
  %"$$m21_4063_4064" = bitcast %Map_String_String* %"$m21_4063" to i8*
  %"$put_call_4065" = call i8* @_put(i8* %"$execptr_load_4057", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_4058_4059", i8* %"$$put_key1a_4060_4062", i8* %"$$m21_4063_4064")
  %"$put_4066" = bitcast i8* %"$put_call_4065" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4066", %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$gasrem_4067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4068" = icmp ugt i64 1, %"$gasrem_4067"
  br i1 %"$gascmp_4068", label %"$out_of_gas_4069", label %"$have_gas_4070"

"$out_of_gas_4069":                               ; preds = %"$have_gas_4055"
  call void @_out_of_gas()
  br label %"$have_gas_4070"

"$have_gas_4070":                                 ; preds = %"$out_of_gas_4069", %"$have_gas_4055"
  %"$consume_4071" = sub i64 %"$gasrem_4067", 1
  store i64 %"$consume_4071", i64* @_gasrem, align 8
  %m12 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m11_4072" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4072_4073" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4072" to i8*
  %"$_lengthof_call_4074" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m11_4072_4073")
  %"$gasadd_4075" = add i64 1, %"$_lengthof_call_4074"
  %"$gasrem_4076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4077" = icmp ugt i64 %"$gasadd_4075", %"$gasrem_4076"
  br i1 %"$gascmp_4077", label %"$out_of_gas_4078", label %"$have_gas_4079"

"$out_of_gas_4078":                               ; preds = %"$have_gas_4070"
  call void @_out_of_gas()
  br label %"$have_gas_4079"

"$have_gas_4079":                                 ; preds = %"$out_of_gas_4078", %"$have_gas_4070"
  %"$consume_4080" = sub i64 %"$gasrem_4076", %"$gasadd_4075"
  store i64 %"$consume_4080", i64* @_gasrem, align 8
  %"$execptr_load_4081" = load i8*, i8** @_execptr, align 8
  %"$m11_4082" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4082_4083" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4082" to i8*
  %"$put_key1b_4084" = alloca %String, align 8
  %"$key1b_4085" = load %String, %String* %key1b, align 8
  store %String %"$key1b_4085", %String* %"$put_key1b_4084", align 8
  %"$$put_key1b_4084_4086" = bitcast %String* %"$put_key1b_4084" to i8*
  %"$m22_4087" = load %Map_String_String*, %Map_String_String** %m22, align 8
  %"$$m22_4087_4088" = bitcast %Map_String_String* %"$m22_4087" to i8*
  %"$put_call_4089" = call i8* @_put(i8* %"$execptr_load_4081", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m11_4082_4083", i8* %"$$put_key1b_4084_4086", i8* %"$$m22_4087_4088")
  %"$put_4090" = bitcast i8* %"$put_call_4089" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4090", %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$gasrem_4091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4092" = icmp ugt i64 1, %"$gasrem_4091"
  br i1 %"$gascmp_4092", label %"$out_of_gas_4093", label %"$have_gas_4094"

"$out_of_gas_4093":                               ; preds = %"$have_gas_4079"
  call void @_out_of_gas()
  br label %"$have_gas_4094"

"$have_gas_4094":                                 ; preds = %"$out_of_gas_4093", %"$have_gas_4079"
  %"$consume_4095" = sub i64 %"$gasrem_4091", 1
  store i64 %"$consume_4095", i64* @_gasrem, align 8
  %m13 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m12_4096" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4096_4097" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4096" to i8*
  %"$_lengthof_call_4098" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m12_4096_4097")
  %"$gasadd_4099" = add i64 1, %"$_lengthof_call_4098"
  %"$gasrem_4100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4101" = icmp ugt i64 %"$gasadd_4099", %"$gasrem_4100"
  br i1 %"$gascmp_4101", label %"$out_of_gas_4102", label %"$have_gas_4103"

"$out_of_gas_4102":                               ; preds = %"$have_gas_4094"
  call void @_out_of_gas()
  br label %"$have_gas_4103"

"$have_gas_4103":                                 ; preds = %"$out_of_gas_4102", %"$have_gas_4094"
  %"$consume_4104" = sub i64 %"$gasrem_4100", %"$gasadd_4099"
  store i64 %"$consume_4104", i64* @_gasrem, align 8
  %"$execptr_load_4105" = load i8*, i8** @_execptr, align 8
  %"$m12_4106" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4106_4107" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4106" to i8*
  %"$put_key1c_4108" = alloca %String, align 8
  %"$key1c_4109" = load %String, %String* %key1c, align 8
  store %String %"$key1c_4109", %String* %"$put_key1c_4108", align 8
  %"$$put_key1c_4108_4110" = bitcast %String* %"$put_key1c_4108" to i8*
  %"$m23_4111" = load %Map_String_String*, %Map_String_String** %m23, align 8
  %"$$m23_4111_4112" = bitcast %Map_String_String* %"$m23_4111" to i8*
  %"$put_call_4113" = call i8* @_put(i8* %"$execptr_load_4105", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m12_4106_4107", i8* %"$$put_key1c_4108_4110", i8* %"$$m23_4111_4112")
  %"$put_4114" = bitcast i8* %"$put_call_4113" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4114", %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$gasrem_4115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4116" = icmp ugt i64 1, %"$gasrem_4115"
  br i1 %"$gascmp_4116", label %"$out_of_gas_4117", label %"$have_gas_4118"

"$out_of_gas_4117":                               ; preds = %"$have_gas_4103"
  call void @_out_of_gas()
  br label %"$have_gas_4118"

"$have_gas_4118":                                 ; preds = %"$out_of_gas_4117", %"$have_gas_4103"
  %"$consume_4119" = sub i64 %"$gasrem_4115", 1
  store i64 %"$consume_4119", i64* @_gasrem, align 8
  %m14 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m13_4120" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4120_4121" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4120" to i8*
  %"$_lengthof_call_4122" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m13_4120_4121")
  %"$gasadd_4123" = add i64 1, %"$_lengthof_call_4122"
  %"$gasrem_4124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4125" = icmp ugt i64 %"$gasadd_4123", %"$gasrem_4124"
  br i1 %"$gascmp_4125", label %"$out_of_gas_4126", label %"$have_gas_4127"

"$out_of_gas_4126":                               ; preds = %"$have_gas_4118"
  call void @_out_of_gas()
  br label %"$have_gas_4127"

"$have_gas_4127":                                 ; preds = %"$out_of_gas_4126", %"$have_gas_4118"
  %"$consume_4128" = sub i64 %"$gasrem_4124", %"$gasadd_4123"
  store i64 %"$consume_4128", i64* @_gasrem, align 8
  %"$execptr_load_4129" = load i8*, i8** @_execptr, align 8
  %"$m13_4130" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4130_4131" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4130" to i8*
  %"$put_key1d_4132" = alloca %String, align 8
  %"$key1d_4133" = load %String, %String* %key1d, align 8
  store %String %"$key1d_4133", %String* %"$put_key1d_4132", align 8
  %"$$put_key1d_4132_4134" = bitcast %String* %"$put_key1d_4132" to i8*
  %"$m24_4135" = load %Map_String_String*, %Map_String_String** %m24, align 8
  %"$$m24_4135_4136" = bitcast %Map_String_String* %"$m24_4135" to i8*
  %"$put_call_4137" = call i8* @_put(i8* %"$execptr_load_4129", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m13_4130_4131", i8* %"$$put_key1d_4132_4134", i8* %"$$m24_4135_4136")
  %"$put_4138" = bitcast i8* %"$put_call_4137" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4138", %"Map_String_Map_(String)_(String)"** %m14, align 8
  %"$gasrem_4139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4140" = icmp ugt i64 1, %"$gasrem_4139"
  br i1 %"$gascmp_4140", label %"$out_of_gas_4141", label %"$have_gas_4142"

"$out_of_gas_4141":                               ; preds = %"$have_gas_4127"
  call void @_out_of_gas()
  br label %"$have_gas_4142"

"$have_gas_4142":                                 ; preds = %"$out_of_gas_4141", %"$have_gas_4127"
  %"$consume_4143" = sub i64 %"$gasrem_4139", 1
  store i64 %"$consume_4143", i64* @_gasrem, align 8
  %"$m14_4144" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m14_4144", %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$m2_full_4145" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$$m2_full_4145_4146" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4145" to i8*
  %"$_literal_cost_call_4147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_full_4145_4146")
  %"$gasrem_4148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4149" = icmp ugt i64 %"$_literal_cost_call_4147", %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4142"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4142"
  %"$consume_4152" = sub i64 %"$gasrem_4148", %"$_literal_cost_call_4147"
  store i64 %"$consume_4152", i64* @_gasrem, align 8
  %"$execptr_load_4153" = load i8*, i8** @_execptr, align 8
  %"$m2_full_4155" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$update_value_4156" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4155" to i8*
  call void @_update_field(i8* %"$execptr_load_4153", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_4156")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_4158" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4159" = bitcast i8* %"$_amount_4158" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4159", align 8
  %"$_origin_4160" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4161" = bitcast i8* %"$_origin_4160" to [20 x i8]*
  %"$_sender_4162" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4163" = bitcast i8* %"$_sender_4162" to [20 x i8]*
  call void @"$t15_3436"(%Uint128 %_amount, [20 x i8]* %"$_origin_4161", [20 x i8]* %"$_sender_4163")
  ret void
}

define internal void @"$t16_4164"(%Uint128 %_amount, [20 x i8]* %"$_origin_4165", [20 x i8]* %"$_sender_4166") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4165", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4166", align 1
  %"$gasrem_4167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4168" = icmp ugt i64 1, %"$gasrem_4167"
  br i1 %"$gascmp_4168", label %"$out_of_gas_4169", label %"$have_gas_4170"

"$out_of_gas_4169":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4170"

"$have_gas_4170":                                 ; preds = %"$out_of_gas_4169", %entry
  %"$consume_4171" = sub i64 %"$gasrem_4167", 1
  store i64 %"$consume_4171", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4173" = icmp ugt i64 1, %"$gasrem_4172"
  br i1 %"$gascmp_4173", label %"$out_of_gas_4174", label %"$have_gas_4175"

"$out_of_gas_4174":                               ; preds = %"$have_gas_4170"
  call void @_out_of_gas()
  br label %"$have_gas_4175"

"$have_gas_4175":                                 ; preds = %"$out_of_gas_4174", %"$have_gas_4170"
  %"$consume_4176" = sub i64 %"$gasrem_4172", 1
  store i64 %"$consume_4176", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4177", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4179" = icmp ugt i64 1, %"$gasrem_4178"
  br i1 %"$gascmp_4179", label %"$out_of_gas_4180", label %"$have_gas_4181"

"$out_of_gas_4180":                               ; preds = %"$have_gas_4175"
  call void @_out_of_gas()
  br label %"$have_gas_4181"

"$have_gas_4181":                                 ; preds = %"$out_of_gas_4180", %"$have_gas_4175"
  %"$consume_4182" = sub i64 %"$gasrem_4178", 1
  store i64 %"$consume_4182", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_4183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4184" = icmp ugt i64 1, %"$gasrem_4183"
  br i1 %"$gascmp_4184", label %"$out_of_gas_4185", label %"$have_gas_4186"

"$out_of_gas_4185":                               ; preds = %"$have_gas_4181"
  call void @_out_of_gas()
  br label %"$have_gas_4186"

"$have_gas_4186":                                 ; preds = %"$out_of_gas_4185", %"$have_gas_4181"
  %"$consume_4187" = sub i64 %"$gasrem_4183", 1
  store i64 %"$consume_4187", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4188", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_4189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4190" = icmp ugt i64 1, %"$gasrem_4189"
  br i1 %"$gascmp_4190", label %"$out_of_gas_4191", label %"$have_gas_4192"

"$out_of_gas_4191":                               ; preds = %"$have_gas_4186"
  call void @_out_of_gas()
  br label %"$have_gas_4192"

"$have_gas_4192":                                 ; preds = %"$out_of_gas_4191", %"$have_gas_4186"
  %"$consume_4193" = sub i64 %"$gasrem_4189", 1
  store i64 %"$consume_4193", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_4194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4195" = icmp ugt i64 1, %"$gasrem_4194"
  br i1 %"$gascmp_4195", label %"$out_of_gas_4196", label %"$have_gas_4197"

"$out_of_gas_4196":                               ; preds = %"$have_gas_4192"
  call void @_out_of_gas()
  br label %"$have_gas_4197"

"$have_gas_4197":                                 ; preds = %"$out_of_gas_4196", %"$have_gas_4192"
  %"$consume_4198" = sub i64 %"$gasrem_4194", 1
  store i64 %"$consume_4198", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4199", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_4200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4201" = icmp ugt i64 1, %"$gasrem_4200"
  br i1 %"$gascmp_4201", label %"$out_of_gas_4202", label %"$have_gas_4203"

"$out_of_gas_4202":                               ; preds = %"$have_gas_4197"
  call void @_out_of_gas()
  br label %"$have_gas_4203"

"$have_gas_4203":                                 ; preds = %"$out_of_gas_4202", %"$have_gas_4197"
  %"$consume_4204" = sub i64 %"$gasrem_4200", 1
  store i64 %"$consume_4204", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_4205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4206" = icmp ugt i64 1, %"$gasrem_4205"
  br i1 %"$gascmp_4206", label %"$out_of_gas_4207", label %"$have_gas_4208"

"$out_of_gas_4207":                               ; preds = %"$have_gas_4203"
  call void @_out_of_gas()
  br label %"$have_gas_4208"

"$have_gas_4208":                                 ; preds = %"$out_of_gas_4207", %"$have_gas_4203"
  %"$consume_4209" = sub i64 %"$gasrem_4205", 1
  store i64 %"$consume_4209", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4210", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_4211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4212" = icmp ugt i64 1, %"$gasrem_4211"
  br i1 %"$gascmp_4212", label %"$out_of_gas_4213", label %"$have_gas_4214"

"$out_of_gas_4213":                               ; preds = %"$have_gas_4208"
  call void @_out_of_gas()
  br label %"$have_gas_4214"

"$have_gas_4214":                                 ; preds = %"$out_of_gas_4213", %"$have_gas_4208"
  %"$consume_4215" = sub i64 %"$gasrem_4211", 1
  store i64 %"$consume_4215", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_4216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4217" = icmp ugt i64 1, %"$gasrem_4216"
  br i1 %"$gascmp_4217", label %"$out_of_gas_4218", label %"$have_gas_4219"

"$out_of_gas_4218":                               ; preds = %"$have_gas_4214"
  call void @_out_of_gas()
  br label %"$have_gas_4219"

"$have_gas_4219":                                 ; preds = %"$out_of_gas_4218", %"$have_gas_4214"
  %"$consume_4220" = sub i64 %"$gasrem_4216", 1
  store i64 %"$consume_4220", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4221", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_4222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4223" = icmp ugt i64 1, %"$gasrem_4222"
  br i1 %"$gascmp_4223", label %"$out_of_gas_4224", label %"$have_gas_4225"

"$out_of_gas_4224":                               ; preds = %"$have_gas_4219"
  call void @_out_of_gas()
  br label %"$have_gas_4225"

"$have_gas_4225":                                 ; preds = %"$out_of_gas_4224", %"$have_gas_4219"
  %"$consume_4226" = sub i64 %"$gasrem_4222", 1
  store i64 %"$consume_4226", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_4227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4228" = icmp ugt i64 1, %"$gasrem_4227"
  br i1 %"$gascmp_4228", label %"$out_of_gas_4229", label %"$have_gas_4230"

"$out_of_gas_4229":                               ; preds = %"$have_gas_4225"
  call void @_out_of_gas()
  br label %"$have_gas_4230"

"$have_gas_4230":                                 ; preds = %"$out_of_gas_4229", %"$have_gas_4225"
  %"$consume_4231" = sub i64 %"$gasrem_4227", 1
  store i64 %"$consume_4231", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4232", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_4233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4234" = icmp ugt i64 1, %"$gasrem_4233"
  br i1 %"$gascmp_4234", label %"$out_of_gas_4235", label %"$have_gas_4236"

"$out_of_gas_4235":                               ; preds = %"$have_gas_4230"
  call void @_out_of_gas()
  br label %"$have_gas_4236"

"$have_gas_4236":                                 ; preds = %"$out_of_gas_4235", %"$have_gas_4230"
  %"$consume_4237" = sub i64 %"$gasrem_4233", 1
  store i64 %"$consume_4237", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_4238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4239" = icmp ugt i64 1, %"$gasrem_4238"
  br i1 %"$gascmp_4239", label %"$out_of_gas_4240", label %"$have_gas_4241"

"$out_of_gas_4240":                               ; preds = %"$have_gas_4236"
  call void @_out_of_gas()
  br label %"$have_gas_4241"

"$have_gas_4241":                                 ; preds = %"$out_of_gas_4240", %"$have_gas_4236"
  %"$consume_4242" = sub i64 %"$gasrem_4238", 1
  store i64 %"$consume_4242", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4243", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_4244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4245" = icmp ugt i64 1, %"$gasrem_4244"
  br i1 %"$gascmp_4245", label %"$out_of_gas_4246", label %"$have_gas_4247"

"$out_of_gas_4246":                               ; preds = %"$have_gas_4241"
  call void @_out_of_gas()
  br label %"$have_gas_4247"

"$have_gas_4247":                                 ; preds = %"$out_of_gas_4246", %"$have_gas_4241"
  %"$consume_4248" = sub i64 %"$gasrem_4244", 1
  store i64 %"$consume_4248", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_4249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4250" = icmp ugt i64 1, %"$gasrem_4249"
  br i1 %"$gascmp_4250", label %"$out_of_gas_4251", label %"$have_gas_4252"

"$out_of_gas_4251":                               ; preds = %"$have_gas_4247"
  call void @_out_of_gas()
  br label %"$have_gas_4252"

"$have_gas_4252":                                 ; preds = %"$out_of_gas_4251", %"$have_gas_4247"
  %"$consume_4253" = sub i64 %"$gasrem_4249", 1
  store i64 %"$consume_4253", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4254", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_4255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4256" = icmp ugt i64 1, %"$gasrem_4255"
  br i1 %"$gascmp_4256", label %"$out_of_gas_4257", label %"$have_gas_4258"

"$out_of_gas_4257":                               ; preds = %"$have_gas_4252"
  call void @_out_of_gas()
  br label %"$have_gas_4258"

"$have_gas_4258":                                 ; preds = %"$out_of_gas_4257", %"$have_gas_4252"
  %"$consume_4259" = sub i64 %"$gasrem_4255", 1
  store i64 %"$consume_4259", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_4260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4261" = icmp ugt i64 1, %"$gasrem_4260"
  br i1 %"$gascmp_4261", label %"$out_of_gas_4262", label %"$have_gas_4263"

"$out_of_gas_4262":                               ; preds = %"$have_gas_4258"
  call void @_out_of_gas()
  br label %"$have_gas_4263"

"$have_gas_4263":                                 ; preds = %"$out_of_gas_4262", %"$have_gas_4258"
  %"$consume_4264" = sub i64 %"$gasrem_4260", 1
  store i64 %"$consume_4264", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4265", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %t1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4266_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4266_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4266_salloc_load", i64 32)
  %"$indices_buf_4266_salloc" = bitcast i8* %"$indices_buf_4266_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4266" = bitcast [32 x i8]* %"$indices_buf_4266_salloc" to i8*
  %"$key1a_4267" = load %String, %String* %key1a, align 8
  %"$indices_gep_4268" = getelementptr i8, i8* %"$indices_buf_4266", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4268" to %String*
  store %String %"$key1a_4267", %String* %indices_cast, align 8
  %"$key2a_4269" = load %String, %String* %key2a, align 8
  %"$indices_gep_4270" = getelementptr i8, i8* %"$indices_buf_4266", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_4270" to %String*
  store %String %"$key2a_4269", %String* %indices_cast1, align 8
  %"$execptr_load_4272" = load i8*, i8** @_execptr, align 8
  %"$t1_call_4273" = call i8* @_fetch_field(i8* %"$execptr_load_4272", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4271", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4266", i32 1)
  %"$t1_4274" = bitcast i8* %"$t1_call_4273" to %TName_Option_String*
  store %TName_Option_String* %"$t1_4274", %TName_Option_String** %t1, align 8
  %"$t1_4275" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$$t1_4275_4276" = bitcast %TName_Option_String* %"$t1_4275" to i8*
  %"$_literal_cost_call_4277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t1_4275_4276")
  %"$gasadd_4278" = add i64 %"$_literal_cost_call_4277", 0
  %"$gasadd_4279" = add i64 %"$gasadd_4278", 2
  %"$gasrem_4280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4281" = icmp ugt i64 %"$gasadd_4279", %"$gasrem_4280"
  br i1 %"$gascmp_4281", label %"$out_of_gas_4282", label %"$have_gas_4283"

"$out_of_gas_4282":                               ; preds = %"$have_gas_4263"
  call void @_out_of_gas()
  br label %"$have_gas_4283"

"$have_gas_4283":                                 ; preds = %"$out_of_gas_4282", %"$have_gas_4263"
  %"$consume_4284" = sub i64 %"$gasrem_4280", %"$gasadd_4279"
  store i64 %"$consume_4284", i64* @_gasrem, align 8
  %t2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4285_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4285_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4285_salloc_load", i64 32)
  %"$indices_buf_4285_salloc" = bitcast i8* %"$indices_buf_4285_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4285" = bitcast [32 x i8]* %"$indices_buf_4285_salloc" to i8*
  %"$key1b_4286" = load %String, %String* %key1b, align 8
  %"$indices_gep_4287" = getelementptr i8, i8* %"$indices_buf_4285", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4287" to %String*
  store %String %"$key1b_4286", %String* %indices_cast2, align 8
  %"$key2b_4288" = load %String, %String* %key2b, align 8
  %"$indices_gep_4289" = getelementptr i8, i8* %"$indices_buf_4285", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_4289" to %String*
  store %String %"$key2b_4288", %String* %indices_cast3, align 8
  %"$execptr_load_4291" = load i8*, i8** @_execptr, align 8
  %"$t2_call_4292" = call i8* @_fetch_field(i8* %"$execptr_load_4291", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4290", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4285", i32 1)
  %"$t2_4293" = bitcast i8* %"$t2_call_4292" to %TName_Option_String*
  store %TName_Option_String* %"$t2_4293", %TName_Option_String** %t2, align 8
  %"$t2_4294" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$$t2_4294_4295" = bitcast %TName_Option_String* %"$t2_4294" to i8*
  %"$_literal_cost_call_4296" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t2_4294_4295")
  %"$gasadd_4297" = add i64 %"$_literal_cost_call_4296", 0
  %"$gasadd_4298" = add i64 %"$gasadd_4297", 2
  %"$gasrem_4299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4300" = icmp ugt i64 %"$gasadd_4298", %"$gasrem_4299"
  br i1 %"$gascmp_4300", label %"$out_of_gas_4301", label %"$have_gas_4302"

"$out_of_gas_4301":                               ; preds = %"$have_gas_4283"
  call void @_out_of_gas()
  br label %"$have_gas_4302"

"$have_gas_4302":                                 ; preds = %"$out_of_gas_4301", %"$have_gas_4283"
  %"$consume_4303" = sub i64 %"$gasrem_4299", %"$gasadd_4298"
  store i64 %"$consume_4303", i64* @_gasrem, align 8
  %t3 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4304_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4304_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4304_salloc_load", i64 32)
  %"$indices_buf_4304_salloc" = bitcast i8* %"$indices_buf_4304_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4304" = bitcast [32 x i8]* %"$indices_buf_4304_salloc" to i8*
  %"$key1c_4305" = load %String, %String* %key1c, align 8
  %"$indices_gep_4306" = getelementptr i8, i8* %"$indices_buf_4304", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4306" to %String*
  store %String %"$key1c_4305", %String* %indices_cast4, align 8
  %"$key2c_4307" = load %String, %String* %key2c, align 8
  %"$indices_gep_4308" = getelementptr i8, i8* %"$indices_buf_4304", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_4308" to %String*
  store %String %"$key2c_4307", %String* %indices_cast5, align 8
  %"$execptr_load_4310" = load i8*, i8** @_execptr, align 8
  %"$t3_call_4311" = call i8* @_fetch_field(i8* %"$execptr_load_4310", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4309", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4304", i32 1)
  %"$t3_4312" = bitcast i8* %"$t3_call_4311" to %TName_Option_String*
  store %TName_Option_String* %"$t3_4312", %TName_Option_String** %t3, align 8
  %"$t3_4313" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$$t3_4313_4314" = bitcast %TName_Option_String* %"$t3_4313" to i8*
  %"$_literal_cost_call_4315" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t3_4313_4314")
  %"$gasadd_4316" = add i64 %"$_literal_cost_call_4315", 0
  %"$gasadd_4317" = add i64 %"$gasadd_4316", 2
  %"$gasrem_4318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4319" = icmp ugt i64 %"$gasadd_4317", %"$gasrem_4318"
  br i1 %"$gascmp_4319", label %"$out_of_gas_4320", label %"$have_gas_4321"

"$out_of_gas_4320":                               ; preds = %"$have_gas_4302"
  call void @_out_of_gas()
  br label %"$have_gas_4321"

"$have_gas_4321":                                 ; preds = %"$out_of_gas_4320", %"$have_gas_4302"
  %"$consume_4322" = sub i64 %"$gasrem_4318", %"$gasadd_4317"
  store i64 %"$consume_4322", i64* @_gasrem, align 8
  %t4 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4323_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4323_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4323_salloc_load", i64 32)
  %"$indices_buf_4323_salloc" = bitcast i8* %"$indices_buf_4323_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4323" = bitcast [32 x i8]* %"$indices_buf_4323_salloc" to i8*
  %"$key1d_4324" = load %String, %String* %key1d, align 8
  %"$indices_gep_4325" = getelementptr i8, i8* %"$indices_buf_4323", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_4325" to %String*
  store %String %"$key1d_4324", %String* %indices_cast6, align 8
  %"$key2d_4326" = load %String, %String* %key2d, align 8
  %"$indices_gep_4327" = getelementptr i8, i8* %"$indices_buf_4323", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_4327" to %String*
  store %String %"$key2d_4326", %String* %indices_cast7, align 8
  %"$execptr_load_4329" = load i8*, i8** @_execptr, align 8
  %"$t4_call_4330" = call i8* @_fetch_field(i8* %"$execptr_load_4329", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4328", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4323", i32 1)
  %"$t4_4331" = bitcast i8* %"$t4_call_4330" to %TName_Option_String*
  store %TName_Option_String* %"$t4_4331", %TName_Option_String** %t4, align 8
  %"$t4_4332" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$$t4_4332_4333" = bitcast %TName_Option_String* %"$t4_4332" to i8*
  %"$_literal_cost_call_4334" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t4_4332_4333")
  %"$gasadd_4335" = add i64 %"$_literal_cost_call_4334", 0
  %"$gasadd_4336" = add i64 %"$gasadd_4335", 2
  %"$gasrem_4337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4338" = icmp ugt i64 %"$gasadd_4336", %"$gasrem_4337"
  br i1 %"$gascmp_4338", label %"$out_of_gas_4339", label %"$have_gas_4340"

"$out_of_gas_4339":                               ; preds = %"$have_gas_4321"
  call void @_out_of_gas()
  br label %"$have_gas_4340"

"$have_gas_4340":                                 ; preds = %"$out_of_gas_4339", %"$have_gas_4321"
  %"$consume_4341" = sub i64 %"$gasrem_4337", %"$gasadd_4336"
  store i64 %"$consume_4341", i64* @_gasrem, align 8
  %"$gasrem_4342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4343" = icmp ugt i64 1, %"$gasrem_4342"
  br i1 %"$gascmp_4343", label %"$out_of_gas_4344", label %"$have_gas_4345"

"$out_of_gas_4344":                               ; preds = %"$have_gas_4340"
  call void @_out_of_gas()
  br label %"$have_gas_4345"

"$have_gas_4345":                                 ; preds = %"$out_of_gas_4344", %"$have_gas_4340"
  %"$consume_4346" = sub i64 %"$gasrem_4342", 1
  store i64 %"$consume_4346", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_4347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4348" = icmp ugt i64 1, %"$gasrem_4347"
  br i1 %"$gascmp_4348", label %"$out_of_gas_4349", label %"$have_gas_4350"

"$out_of_gas_4349":                               ; preds = %"$have_gas_4345"
  call void @_out_of_gas()
  br label %"$have_gas_4350"

"$have_gas_4350":                                 ; preds = %"$out_of_gas_4349", %"$have_gas_4345"
  %"$consume_4351" = sub i64 %"$gasrem_4347", 1
  store i64 %"$consume_4351", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4352", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_4353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4354" = icmp ugt i64 1, %"$gasrem_4353"
  br i1 %"$gascmp_4354", label %"$out_of_gas_4355", label %"$have_gas_4356"

"$out_of_gas_4355":                               ; preds = %"$have_gas_4350"
  call void @_out_of_gas()
  br label %"$have_gas_4356"

"$have_gas_4356":                                 ; preds = %"$out_of_gas_4355", %"$have_gas_4350"
  %"$consume_4357" = sub i64 %"$gasrem_4353", 1
  store i64 %"$consume_4357", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_4358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4359" = icmp ugt i64 1, %"$gasrem_4358"
  br i1 %"$gascmp_4359", label %"$out_of_gas_4360", label %"$have_gas_4361"

"$out_of_gas_4360":                               ; preds = %"$have_gas_4356"
  call void @_out_of_gas()
  br label %"$have_gas_4361"

"$have_gas_4361":                                 ; preds = %"$out_of_gas_4360", %"$have_gas_4356"
  %"$consume_4362" = sub i64 %"$gasrem_4358", 1
  store i64 %"$consume_4362", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4363", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_4364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4365" = icmp ugt i64 1, %"$gasrem_4364"
  br i1 %"$gascmp_4365", label %"$out_of_gas_4366", label %"$have_gas_4367"

"$out_of_gas_4366":                               ; preds = %"$have_gas_4361"
  call void @_out_of_gas()
  br label %"$have_gas_4367"

"$have_gas_4367":                                 ; preds = %"$out_of_gas_4366", %"$have_gas_4361"
  %"$consume_4368" = sub i64 %"$gasrem_4364", 1
  store i64 %"$consume_4368", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_4369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4370" = icmp ugt i64 1, %"$gasrem_4369"
  br i1 %"$gascmp_4370", label %"$out_of_gas_4371", label %"$have_gas_4372"

"$out_of_gas_4371":                               ; preds = %"$have_gas_4367"
  call void @_out_of_gas()
  br label %"$have_gas_4372"

"$have_gas_4372":                                 ; preds = %"$out_of_gas_4371", %"$have_gas_4367"
  %"$consume_4373" = sub i64 %"$gasrem_4369", 1
  store i64 %"$consume_4373", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4374", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_4375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4376" = icmp ugt i64 1, %"$gasrem_4375"
  br i1 %"$gascmp_4376", label %"$out_of_gas_4377", label %"$have_gas_4378"

"$out_of_gas_4377":                               ; preds = %"$have_gas_4372"
  call void @_out_of_gas()
  br label %"$have_gas_4378"

"$have_gas_4378":                                 ; preds = %"$out_of_gas_4377", %"$have_gas_4372"
  %"$consume_4379" = sub i64 %"$gasrem_4375", 1
  store i64 %"$consume_4379", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_4380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4381" = icmp ugt i64 1, %"$gasrem_4380"
  br i1 %"$gascmp_4381", label %"$out_of_gas_4382", label %"$have_gas_4383"

"$out_of_gas_4382":                               ; preds = %"$have_gas_4378"
  call void @_out_of_gas()
  br label %"$have_gas_4383"

"$have_gas_4383":                                 ; preds = %"$out_of_gas_4382", %"$have_gas_4378"
  %"$consume_4384" = sub i64 %"$gasrem_4380", 1
  store i64 %"$consume_4384", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4385", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_4386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4387" = icmp ugt i64 1, %"$gasrem_4386"
  br i1 %"$gascmp_4387", label %"$out_of_gas_4388", label %"$have_gas_4389"

"$out_of_gas_4388":                               ; preds = %"$have_gas_4383"
  call void @_out_of_gas()
  br label %"$have_gas_4389"

"$have_gas_4389":                                 ; preds = %"$out_of_gas_4388", %"$have_gas_4383"
  %"$consume_4390" = sub i64 %"$gasrem_4386", 1
  store i64 %"$consume_4390", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_4391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4392" = icmp ugt i64 2, %"$gasrem_4391"
  br i1 %"$gascmp_4392", label %"$out_of_gas_4393", label %"$have_gas_4394"

"$out_of_gas_4393":                               ; preds = %"$have_gas_4389"
  call void @_out_of_gas()
  br label %"$have_gas_4394"

"$have_gas_4394":                                 ; preds = %"$out_of_gas_4393", %"$have_gas_4389"
  %"$consume_4395" = sub i64 %"$gasrem_4391", 2
  store i64 %"$consume_4395", i64* @_gasrem, align 8
  %"$t1_4397" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$t1_tag_4398" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_4397", i32 0, i32 0
  %"$t1_tag_4399" = load i8, i8* %"$t1_tag_4398", align 1
  switch i8 %"$t1_tag_4399", label %"$empty_default_4400" [
    i8 0, label %"$Some_4401"
    i8 1, label %"$None_4424"
  ]

"$Some_4401":                                     ; preds = %"$have_gas_4394"
  %"$t1_4402" = bitcast %TName_Option_String* %"$t1_4397" to %CName_Some_String*
  %"$t1v_gep_4403" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_4402", i32 0, i32 1
  %"$t1v_load_4404" = load %String, %String* %"$t1v_gep_4403", align 8
  %t1v = alloca %String, align 8
  store %String %"$t1v_load_4404", %String* %t1v, align 8
  %"$_literal_cost_t1v_4405" = alloca %String, align 8
  %"$t1v_4406" = load %String, %String* %t1v, align 8
  store %String %"$t1v_4406", %String* %"$_literal_cost_t1v_4405", align 8
  %"$$_literal_cost_t1v_4405_4407" = bitcast %String* %"$_literal_cost_t1v_4405" to i8*
  %"$_literal_cost_call_4408" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t1v_4405_4407")
  %"$_literal_cost_v1_4409" = alloca %String, align 8
  %"$v1_4410" = load %String, %String* %v1, align 8
  store %String %"$v1_4410", %String* %"$_literal_cost_v1_4409", align 8
  %"$$_literal_cost_v1_4409_4411" = bitcast %String* %"$_literal_cost_v1_4409" to i8*
  %"$_literal_cost_call_4412" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v1_4409_4411")
  %"$gasmin_4413" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4408", i64 %"$_literal_cost_call_4412")
  %"$gasrem_4414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4415" = icmp ugt i64 %"$gasmin_4413", %"$gasrem_4414"
  br i1 %"$gascmp_4415", label %"$out_of_gas_4416", label %"$have_gas_4417"

"$out_of_gas_4416":                               ; preds = %"$Some_4401"
  call void @_out_of_gas()
  br label %"$have_gas_4417"

"$have_gas_4417":                                 ; preds = %"$out_of_gas_4416", %"$Some_4401"
  %"$consume_4418" = sub i64 %"$gasrem_4414", %"$gasmin_4413"
  store i64 %"$consume_4418", i64* @_gasrem, align 8
  %"$execptr_load_4419" = load i8*, i8** @_execptr, align 8
  %"$t1v_4420" = load %String, %String* %t1v, align 8
  %"$v1_4421" = load %String, %String* %v1, align 8
  %"$eq_call_4422" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4419", %String %"$t1v_4420", %String %"$v1_4421")
  store %TName_Bool* %"$eq_call_4422", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4396"

"$None_4424":                                     ; preds = %"$have_gas_4394"
  %"$t1_4425" = bitcast %TName_Option_String* %"$t1_4397" to %CName_None_String*
  %"$gasrem_4426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4427" = icmp ugt i64 1, %"$gasrem_4426"
  br i1 %"$gascmp_4427", label %"$out_of_gas_4428", label %"$have_gas_4429"

"$out_of_gas_4428":                               ; preds = %"$None_4424"
  call void @_out_of_gas()
  br label %"$have_gas_4429"

"$have_gas_4429":                                 ; preds = %"$out_of_gas_4428", %"$None_4424"
  %"$consume_4430" = sub i64 %"$gasrem_4426", 1
  store i64 %"$consume_4430", i64* @_gasrem, align 8
  %"$adtval_4431_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4431_salloc" = call i8* @_salloc(i8* %"$adtval_4431_load", i64 1)
  %"$adtval_4431" = bitcast i8* %"$adtval_4431_salloc" to %CName_False*
  %"$adtgep_4432" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4431", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4432", align 1
  %"$adtptr_4433" = bitcast %CName_False* %"$adtval_4431" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4433", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4396"

"$empty_default_4400":                            ; preds = %"$have_gas_4394"
  br label %"$matchsucc_4396"

"$matchsucc_4396":                                ; preds = %"$have_gas_4429", %"$have_gas_4417", %"$empty_default_4400"
  %"$gasrem_4434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4435" = icmp ugt i64 1, %"$gasrem_4434"
  br i1 %"$gascmp_4435", label %"$out_of_gas_4436", label %"$have_gas_4437"

"$out_of_gas_4436":                               ; preds = %"$matchsucc_4396"
  call void @_out_of_gas()
  br label %"$have_gas_4437"

"$have_gas_4437":                                 ; preds = %"$out_of_gas_4436", %"$matchsucc_4396"
  %"$consume_4438" = sub i64 %"$gasrem_4434", 1
  store i64 %"$consume_4438", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  %"$gasrem_4439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4440" = icmp ugt i64 2, %"$gasrem_4439"
  br i1 %"$gascmp_4440", label %"$out_of_gas_4441", label %"$have_gas_4442"

"$out_of_gas_4441":                               ; preds = %"$have_gas_4437"
  call void @_out_of_gas()
  br label %"$have_gas_4442"

"$have_gas_4442":                                 ; preds = %"$out_of_gas_4441", %"$have_gas_4437"
  %"$consume_4443" = sub i64 %"$gasrem_4439", 2
  store i64 %"$consume_4443", i64* @_gasrem, align 8
  %"$t2_4445" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$t2_tag_4446" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_4445", i32 0, i32 0
  %"$t2_tag_4447" = load i8, i8* %"$t2_tag_4446", align 1
  switch i8 %"$t2_tag_4447", label %"$empty_default_4448" [
    i8 0, label %"$Some_4449"
    i8 1, label %"$None_4472"
  ]

"$Some_4449":                                     ; preds = %"$have_gas_4442"
  %"$t2_4450" = bitcast %TName_Option_String* %"$t2_4445" to %CName_Some_String*
  %"$t2v_gep_4451" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_4450", i32 0, i32 1
  %"$t2v_load_4452" = load %String, %String* %"$t2v_gep_4451", align 8
  %t2v = alloca %String, align 8
  store %String %"$t2v_load_4452", %String* %t2v, align 8
  %"$_literal_cost_t2v_4453" = alloca %String, align 8
  %"$t2v_4454" = load %String, %String* %t2v, align 8
  store %String %"$t2v_4454", %String* %"$_literal_cost_t2v_4453", align 8
  %"$$_literal_cost_t2v_4453_4455" = bitcast %String* %"$_literal_cost_t2v_4453" to i8*
  %"$_literal_cost_call_4456" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t2v_4453_4455")
  %"$_literal_cost_v2_4457" = alloca %String, align 8
  %"$v2_4458" = load %String, %String* %v2, align 8
  store %String %"$v2_4458", %String* %"$_literal_cost_v2_4457", align 8
  %"$$_literal_cost_v2_4457_4459" = bitcast %String* %"$_literal_cost_v2_4457" to i8*
  %"$_literal_cost_call_4460" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v2_4457_4459")
  %"$gasmin_4461" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4456", i64 %"$_literal_cost_call_4460")
  %"$gasrem_4462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4463" = icmp ugt i64 %"$gasmin_4461", %"$gasrem_4462"
  br i1 %"$gascmp_4463", label %"$out_of_gas_4464", label %"$have_gas_4465"

"$out_of_gas_4464":                               ; preds = %"$Some_4449"
  call void @_out_of_gas()
  br label %"$have_gas_4465"

"$have_gas_4465":                                 ; preds = %"$out_of_gas_4464", %"$Some_4449"
  %"$consume_4466" = sub i64 %"$gasrem_4462", %"$gasmin_4461"
  store i64 %"$consume_4466", i64* @_gasrem, align 8
  %"$execptr_load_4467" = load i8*, i8** @_execptr, align 8
  %"$t2v_4468" = load %String, %String* %t2v, align 8
  %"$v2_4469" = load %String, %String* %v2, align 8
  %"$eq_call_4470" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4467", %String %"$t2v_4468", %String %"$v2_4469")
  store %TName_Bool* %"$eq_call_4470", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4444"

"$None_4472":                                     ; preds = %"$have_gas_4442"
  %"$t2_4473" = bitcast %TName_Option_String* %"$t2_4445" to %CName_None_String*
  %"$gasrem_4474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4475" = icmp ugt i64 1, %"$gasrem_4474"
  br i1 %"$gascmp_4475", label %"$out_of_gas_4476", label %"$have_gas_4477"

"$out_of_gas_4476":                               ; preds = %"$None_4472"
  call void @_out_of_gas()
  br label %"$have_gas_4477"

"$have_gas_4477":                                 ; preds = %"$out_of_gas_4476", %"$None_4472"
  %"$consume_4478" = sub i64 %"$gasrem_4474", 1
  store i64 %"$consume_4478", i64* @_gasrem, align 8
  %"$adtval_4479_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4479_salloc" = call i8* @_salloc(i8* %"$adtval_4479_load", i64 1)
  %"$adtval_4479" = bitcast i8* %"$adtval_4479_salloc" to %CName_False*
  %"$adtgep_4480" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4479", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4480", align 1
  %"$adtptr_4481" = bitcast %CName_False* %"$adtval_4479" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4481", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4444"

"$empty_default_4448":                            ; preds = %"$have_gas_4442"
  br label %"$matchsucc_4444"

"$matchsucc_4444":                                ; preds = %"$have_gas_4477", %"$have_gas_4465", %"$empty_default_4448"
  %"$gasrem_4482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4483" = icmp ugt i64 1, %"$gasrem_4482"
  br i1 %"$gascmp_4483", label %"$out_of_gas_4484", label %"$have_gas_4485"

"$out_of_gas_4484":                               ; preds = %"$matchsucc_4444"
  call void @_out_of_gas()
  br label %"$have_gas_4485"

"$have_gas_4485":                                 ; preds = %"$out_of_gas_4484", %"$matchsucc_4444"
  %"$consume_4486" = sub i64 %"$gasrem_4482", 1
  store i64 %"$consume_4486", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  %"$gasrem_4487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4488" = icmp ugt i64 2, %"$gasrem_4487"
  br i1 %"$gascmp_4488", label %"$out_of_gas_4489", label %"$have_gas_4490"

"$out_of_gas_4489":                               ; preds = %"$have_gas_4485"
  call void @_out_of_gas()
  br label %"$have_gas_4490"

"$have_gas_4490":                                 ; preds = %"$out_of_gas_4489", %"$have_gas_4485"
  %"$consume_4491" = sub i64 %"$gasrem_4487", 2
  store i64 %"$consume_4491", i64* @_gasrem, align 8
  %"$t3_4493" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$t3_tag_4494" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_4493", i32 0, i32 0
  %"$t3_tag_4495" = load i8, i8* %"$t3_tag_4494", align 1
  switch i8 %"$t3_tag_4495", label %"$empty_default_4496" [
    i8 0, label %"$Some_4497"
    i8 1, label %"$None_4520"
  ]

"$Some_4497":                                     ; preds = %"$have_gas_4490"
  %"$t3_4498" = bitcast %TName_Option_String* %"$t3_4493" to %CName_Some_String*
  %"$t3v_gep_4499" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_4498", i32 0, i32 1
  %"$t3v_load_4500" = load %String, %String* %"$t3v_gep_4499", align 8
  %t3v = alloca %String, align 8
  store %String %"$t3v_load_4500", %String* %t3v, align 8
  %"$_literal_cost_t3v_4501" = alloca %String, align 8
  %"$t3v_4502" = load %String, %String* %t3v, align 8
  store %String %"$t3v_4502", %String* %"$_literal_cost_t3v_4501", align 8
  %"$$_literal_cost_t3v_4501_4503" = bitcast %String* %"$_literal_cost_t3v_4501" to i8*
  %"$_literal_cost_call_4504" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t3v_4501_4503")
  %"$_literal_cost_v3_4505" = alloca %String, align 8
  %"$v3_4506" = load %String, %String* %v3, align 8
  store %String %"$v3_4506", %String* %"$_literal_cost_v3_4505", align 8
  %"$$_literal_cost_v3_4505_4507" = bitcast %String* %"$_literal_cost_v3_4505" to i8*
  %"$_literal_cost_call_4508" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v3_4505_4507")
  %"$gasmin_4509" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4504", i64 %"$_literal_cost_call_4508")
  %"$gasrem_4510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4511" = icmp ugt i64 %"$gasmin_4509", %"$gasrem_4510"
  br i1 %"$gascmp_4511", label %"$out_of_gas_4512", label %"$have_gas_4513"

"$out_of_gas_4512":                               ; preds = %"$Some_4497"
  call void @_out_of_gas()
  br label %"$have_gas_4513"

"$have_gas_4513":                                 ; preds = %"$out_of_gas_4512", %"$Some_4497"
  %"$consume_4514" = sub i64 %"$gasrem_4510", %"$gasmin_4509"
  store i64 %"$consume_4514", i64* @_gasrem, align 8
  %"$execptr_load_4515" = load i8*, i8** @_execptr, align 8
  %"$t3v_4516" = load %String, %String* %t3v, align 8
  %"$v3_4517" = load %String, %String* %v3, align 8
  %"$eq_call_4518" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4515", %String %"$t3v_4516", %String %"$v3_4517")
  store %TName_Bool* %"$eq_call_4518", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4492"

"$None_4520":                                     ; preds = %"$have_gas_4490"
  %"$t3_4521" = bitcast %TName_Option_String* %"$t3_4493" to %CName_None_String*
  %"$gasrem_4522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4523" = icmp ugt i64 1, %"$gasrem_4522"
  br i1 %"$gascmp_4523", label %"$out_of_gas_4524", label %"$have_gas_4525"

"$out_of_gas_4524":                               ; preds = %"$None_4520"
  call void @_out_of_gas()
  br label %"$have_gas_4525"

"$have_gas_4525":                                 ; preds = %"$out_of_gas_4524", %"$None_4520"
  %"$consume_4526" = sub i64 %"$gasrem_4522", 1
  store i64 %"$consume_4526", i64* @_gasrem, align 8
  %"$adtval_4527_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4527_salloc" = call i8* @_salloc(i8* %"$adtval_4527_load", i64 1)
  %"$adtval_4527" = bitcast i8* %"$adtval_4527_salloc" to %CName_False*
  %"$adtgep_4528" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4527", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4528", align 1
  %"$adtptr_4529" = bitcast %CName_False* %"$adtval_4527" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4529", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4492"

"$empty_default_4496":                            ; preds = %"$have_gas_4490"
  br label %"$matchsucc_4492"

"$matchsucc_4492":                                ; preds = %"$have_gas_4525", %"$have_gas_4513", %"$empty_default_4496"
  %"$gasrem_4530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4531" = icmp ugt i64 1, %"$gasrem_4530"
  br i1 %"$gascmp_4531", label %"$out_of_gas_4532", label %"$have_gas_4533"

"$out_of_gas_4532":                               ; preds = %"$matchsucc_4492"
  call void @_out_of_gas()
  br label %"$have_gas_4533"

"$have_gas_4533":                                 ; preds = %"$out_of_gas_4532", %"$matchsucc_4492"
  %"$consume_4534" = sub i64 %"$gasrem_4530", 1
  store i64 %"$consume_4534", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  %"$gasrem_4535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4536" = icmp ugt i64 2, %"$gasrem_4535"
  br i1 %"$gascmp_4536", label %"$out_of_gas_4537", label %"$have_gas_4538"

"$out_of_gas_4537":                               ; preds = %"$have_gas_4533"
  call void @_out_of_gas()
  br label %"$have_gas_4538"

"$have_gas_4538":                                 ; preds = %"$out_of_gas_4537", %"$have_gas_4533"
  %"$consume_4539" = sub i64 %"$gasrem_4535", 2
  store i64 %"$consume_4539", i64* @_gasrem, align 8
  %"$t4_4541" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$t4_tag_4542" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_4541", i32 0, i32 0
  %"$t4_tag_4543" = load i8, i8* %"$t4_tag_4542", align 1
  switch i8 %"$t4_tag_4543", label %"$empty_default_4544" [
    i8 0, label %"$Some_4545"
    i8 1, label %"$None_4568"
  ]

"$Some_4545":                                     ; preds = %"$have_gas_4538"
  %"$t4_4546" = bitcast %TName_Option_String* %"$t4_4541" to %CName_Some_String*
  %"$t4v_gep_4547" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_4546", i32 0, i32 1
  %"$t4v_load_4548" = load %String, %String* %"$t4v_gep_4547", align 8
  %t4v = alloca %String, align 8
  store %String %"$t4v_load_4548", %String* %t4v, align 8
  %"$_literal_cost_t4v_4549" = alloca %String, align 8
  %"$t4v_4550" = load %String, %String* %t4v, align 8
  store %String %"$t4v_4550", %String* %"$_literal_cost_t4v_4549", align 8
  %"$$_literal_cost_t4v_4549_4551" = bitcast %String* %"$_literal_cost_t4v_4549" to i8*
  %"$_literal_cost_call_4552" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t4v_4549_4551")
  %"$_literal_cost_v4_4553" = alloca %String, align 8
  %"$v4_4554" = load %String, %String* %v4, align 8
  store %String %"$v4_4554", %String* %"$_literal_cost_v4_4553", align 8
  %"$$_literal_cost_v4_4553_4555" = bitcast %String* %"$_literal_cost_v4_4553" to i8*
  %"$_literal_cost_call_4556" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v4_4553_4555")
  %"$gasmin_4557" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4552", i64 %"$_literal_cost_call_4556")
  %"$gasrem_4558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4559" = icmp ugt i64 %"$gasmin_4557", %"$gasrem_4558"
  br i1 %"$gascmp_4559", label %"$out_of_gas_4560", label %"$have_gas_4561"

"$out_of_gas_4560":                               ; preds = %"$Some_4545"
  call void @_out_of_gas()
  br label %"$have_gas_4561"

"$have_gas_4561":                                 ; preds = %"$out_of_gas_4560", %"$Some_4545"
  %"$consume_4562" = sub i64 %"$gasrem_4558", %"$gasmin_4557"
  store i64 %"$consume_4562", i64* @_gasrem, align 8
  %"$execptr_load_4563" = load i8*, i8** @_execptr, align 8
  %"$t4v_4564" = load %String, %String* %t4v, align 8
  %"$v4_4565" = load %String, %String* %v4, align 8
  %"$eq_call_4566" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4563", %String %"$t4v_4564", %String %"$v4_4565")
  store %TName_Bool* %"$eq_call_4566", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4540"

"$None_4568":                                     ; preds = %"$have_gas_4538"
  %"$t4_4569" = bitcast %TName_Option_String* %"$t4_4541" to %CName_None_String*
  %"$gasrem_4570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4571" = icmp ugt i64 1, %"$gasrem_4570"
  br i1 %"$gascmp_4571", label %"$out_of_gas_4572", label %"$have_gas_4573"

"$out_of_gas_4572":                               ; preds = %"$None_4568"
  call void @_out_of_gas()
  br label %"$have_gas_4573"

"$have_gas_4573":                                 ; preds = %"$out_of_gas_4572", %"$None_4568"
  %"$consume_4574" = sub i64 %"$gasrem_4570", 1
  store i64 %"$consume_4574", i64* @_gasrem, align 8
  %"$adtval_4575_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4575_salloc" = call i8* @_salloc(i8* %"$adtval_4575_load", i64 1)
  %"$adtval_4575" = bitcast i8* %"$adtval_4575_salloc" to %CName_False*
  %"$adtgep_4576" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4575", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4576", align 1
  %"$adtptr_4577" = bitcast %CName_False* %"$adtval_4575" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4577", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4540"

"$empty_default_4544":                            ; preds = %"$have_gas_4538"
  br label %"$matchsucc_4540"

"$matchsucc_4540":                                ; preds = %"$have_gas_4573", %"$have_gas_4561", %"$empty_default_4544"
  %"$gasrem_4578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4579" = icmp ugt i64 1, %"$gasrem_4578"
  br i1 %"$gascmp_4579", label %"$out_of_gas_4580", label %"$have_gas_4581"

"$out_of_gas_4580":                               ; preds = %"$matchsucc_4540"
  call void @_out_of_gas()
  br label %"$have_gas_4581"

"$have_gas_4581":                                 ; preds = %"$out_of_gas_4580", %"$matchsucc_4540"
  %"$consume_4582" = sub i64 %"$gasrem_4578", 1
  store i64 %"$consume_4582", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_4583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4584" = icmp ugt i64 1, %"$gasrem_4583"
  br i1 %"$gascmp_4584", label %"$out_of_gas_4585", label %"$have_gas_4586"

"$out_of_gas_4585":                               ; preds = %"$have_gas_4581"
  call void @_out_of_gas()
  br label %"$have_gas_4586"

"$have_gas_4586":                                 ; preds = %"$out_of_gas_4585", %"$have_gas_4581"
  %"$consume_4587" = sub i64 %"$gasrem_4583", 1
  store i64 %"$consume_4587", i64* @_gasrem, align 8
  %a1 = alloca %TName_Bool*, align 8
  %"$gasrem_4588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4589" = icmp ugt i64 1, %"$gasrem_4588"
  br i1 %"$gascmp_4589", label %"$out_of_gas_4590", label %"$have_gas_4591"

"$out_of_gas_4590":                               ; preds = %"$have_gas_4586"
  call void @_out_of_gas()
  br label %"$have_gas_4591"

"$have_gas_4591":                                 ; preds = %"$out_of_gas_4590", %"$have_gas_4586"
  %"$consume_4592" = sub i64 %"$gasrem_4588", 1
  store i64 %"$consume_4592", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4593" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4594" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4593", 0
  %"$BoolUtils.andb_envptr_4595" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4593", 1
  %"$b1_4596" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_4597" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4594"(i8* %"$BoolUtils.andb_envptr_4595", %TName_Bool* %"$b1_4596")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4597", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_19_4598" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_4599" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4598", 0
  %"$$BoolUtils.andb_19_envptr_4600" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4598", 1
  %"$b2_4601" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_19_call_4602" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_4599"(i8* %"$$BoolUtils.andb_19_envptr_4600", %TName_Bool* %"$b2_4601")
  store %TName_Bool* %"$$BoolUtils.andb_19_call_4602", %TName_Bool** %"$BoolUtils.andb_20", align 8
  %"$$BoolUtils.andb_20_4603" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_4603", %TName_Bool** %a1, align 8
  %"$gasrem_4604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4605" = icmp ugt i64 1, %"$gasrem_4604"
  br i1 %"$gascmp_4605", label %"$out_of_gas_4606", label %"$have_gas_4607"

"$out_of_gas_4606":                               ; preds = %"$have_gas_4591"
  call void @_out_of_gas()
  br label %"$have_gas_4607"

"$have_gas_4607":                                 ; preds = %"$out_of_gas_4606", %"$have_gas_4591"
  %"$consume_4608" = sub i64 %"$gasrem_4604", 1
  store i64 %"$consume_4608", i64* @_gasrem, align 8
  %a2 = alloca %TName_Bool*, align 8
  %"$gasrem_4609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4610" = icmp ugt i64 1, %"$gasrem_4609"
  br i1 %"$gascmp_4610", label %"$out_of_gas_4611", label %"$have_gas_4612"

"$out_of_gas_4611":                               ; preds = %"$have_gas_4607"
  call void @_out_of_gas()
  br label %"$have_gas_4612"

"$have_gas_4612":                                 ; preds = %"$out_of_gas_4611", %"$have_gas_4607"
  %"$consume_4613" = sub i64 %"$gasrem_4609", 1
  store i64 %"$consume_4613", i64* @_gasrem, align 8
  %"$BoolUtils.andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4614" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4615" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4614", 0
  %"$BoolUtils.andb_envptr_4616" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4614", 1
  %"$b3_4617" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.andb_call_4618" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4615"(i8* %"$BoolUtils.andb_envptr_4616", %TName_Bool* %"$b3_4617")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4618", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$BoolUtils.andb_22" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_21_4619" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$$BoolUtils.andb_21_fptr_4620" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4619", 0
  %"$$BoolUtils.andb_21_envptr_4621" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4619", 1
  %"$b4_4622" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.andb_21_call_4623" = call %TName_Bool* %"$$BoolUtils.andb_21_fptr_4620"(i8* %"$$BoolUtils.andb_21_envptr_4621", %TName_Bool* %"$b4_4622")
  store %TName_Bool* %"$$BoolUtils.andb_21_call_4623", %TName_Bool** %"$BoolUtils.andb_22", align 8
  %"$$BoolUtils.andb_22_4624" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_22", align 8
  store %TName_Bool* %"$$BoolUtils.andb_22_4624", %TName_Bool** %a2, align 8
  %"$gasrem_4625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4626" = icmp ugt i64 1, %"$gasrem_4625"
  br i1 %"$gascmp_4626", label %"$out_of_gas_4627", label %"$have_gas_4628"

"$out_of_gas_4627":                               ; preds = %"$have_gas_4612"
  call void @_out_of_gas()
  br label %"$have_gas_4628"

"$have_gas_4628":                                 ; preds = %"$out_of_gas_4627", %"$have_gas_4612"
  %"$consume_4629" = sub i64 %"$gasrem_4625", 1
  store i64 %"$consume_4629", i64* @_gasrem, align 8
  %"$BoolUtils.andb_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4630" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4631" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4630", 0
  %"$BoolUtils.andb_envptr_4632" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4630", 1
  %"$a1_4633" = load %TName_Bool*, %TName_Bool** %a1, align 8
  %"$BoolUtils.andb_call_4634" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4631"(i8* %"$BoolUtils.andb_envptr_4632", %TName_Bool* %"$a1_4633")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4634", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$BoolUtils.andb_24" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_23_4635" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$$BoolUtils.andb_23_fptr_4636" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_4635", 0
  %"$$BoolUtils.andb_23_envptr_4637" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_4635", 1
  %"$a2_4638" = load %TName_Bool*, %TName_Bool** %a2, align 8
  %"$$BoolUtils.andb_23_call_4639" = call %TName_Bool* %"$$BoolUtils.andb_23_fptr_4636"(i8* %"$$BoolUtils.andb_23_envptr_4637", %TName_Bool* %"$a2_4638")
  store %TName_Bool* %"$$BoolUtils.andb_23_call_4639", %TName_Bool** %"$BoolUtils.andb_24", align 8
  %"$$BoolUtils.andb_24_4640" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_24", align 8
  store %TName_Bool* %"$$BoolUtils.andb_24_4640", %TName_Bool** %b, align 8
  %"$gasrem_4641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4642" = icmp ugt i64 2, %"$gasrem_4641"
  br i1 %"$gascmp_4642", label %"$out_of_gas_4643", label %"$have_gas_4644"

"$out_of_gas_4643":                               ; preds = %"$have_gas_4628"
  call void @_out_of_gas()
  br label %"$have_gas_4644"

"$have_gas_4644":                                 ; preds = %"$out_of_gas_4643", %"$have_gas_4628"
  %"$consume_4645" = sub i64 %"$gasrem_4641", 2
  store i64 %"$consume_4645", i64* @_gasrem, align 8
  %"$b_4647" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_4648" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_4647", i32 0, i32 0
  %"$b_tag_4649" = load i8, i8* %"$b_tag_4648", align 1
  switch i8 %"$b_tag_4649", label %"$empty_default_4650" [
    i8 0, label %"$True_4651"
    i8 1, label %"$False_4653"
  ]

"$True_4651":                                     ; preds = %"$have_gas_4644"
  %"$b_4652" = bitcast %TName_Bool* %"$b_4647" to %CName_True*
  br label %"$matchsucc_4646"

"$False_4653":                                    ; preds = %"$have_gas_4644"
  %"$b_4654" = bitcast %TName_Bool* %"$b_4647" to %CName_False*
  %"$gasrem_4655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4656" = icmp ugt i64 1, %"$gasrem_4655"
  br i1 %"$gascmp_4656", label %"$out_of_gas_4657", label %"$have_gas_4658"

"$out_of_gas_4657":                               ; preds = %"$False_4653"
  call void @_out_of_gas()
  br label %"$have_gas_4658"

"$have_gas_4658":                                 ; preds = %"$out_of_gas_4657", %"$False_4653"
  %"$consume_4659" = sub i64 %"$gasrem_4655", 1
  store i64 %"$consume_4659", i64* @_gasrem, align 8
  %"$fail__origin_4660" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4660", align 1
  %"$fail__sender_4661" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4661", align 1
  %"$tname_4662" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4660", [20 x i8]* %"$fail__sender_4661", %String %"$tname_4662")
  br label %"$matchsucc_4646"

"$empty_default_4650":                            ; preds = %"$have_gas_4644"
  br label %"$matchsucc_4646"

"$matchsucc_4646":                                ; preds = %"$have_gas_4658", %"$True_4651", %"$empty_default_4650"
  %"$gasrem_4663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4664" = icmp ugt i64 1, %"$gasrem_4663"
  br i1 %"$gascmp_4664", label %"$out_of_gas_4665", label %"$have_gas_4666"

"$out_of_gas_4665":                               ; preds = %"$matchsucc_4646"
  call void @_out_of_gas()
  br label %"$have_gas_4666"

"$have_gas_4666":                                 ; preds = %"$out_of_gas_4665", %"$matchsucc_4646"
  %"$consume_4667" = sub i64 %"$gasrem_4663", 1
  store i64 %"$consume_4667", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$gasrem_4668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4669" = icmp ugt i64 1, %"$gasrem_4668"
  br i1 %"$gascmp_4669", label %"$out_of_gas_4670", label %"$have_gas_4671"

"$out_of_gas_4670":                               ; preds = %"$have_gas_4666"
  call void @_out_of_gas()
  br label %"$have_gas_4671"

"$have_gas_4671":                                 ; preds = %"$out_of_gas_4670", %"$have_gas_4666"
  %"$consume_4672" = sub i64 %"$gasrem_4668", 1
  store i64 %"$consume_4672", i64* @_gasrem, align 8
  %k = alloca %String, align 8
  %"$gasrem_4673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4674" = icmp ugt i64 1, %"$gasrem_4673"
  br i1 %"$gascmp_4674", label %"$out_of_gas_4675", label %"$have_gas_4676"

"$out_of_gas_4675":                               ; preds = %"$have_gas_4671"
  call void @_out_of_gas()
  br label %"$have_gas_4676"

"$have_gas_4676":                                 ; preds = %"$out_of_gas_4675", %"$have_gas_4671"
  %"$consume_4677" = sub i64 %"$gasrem_4673", 1
  store i64 %"$consume_4677", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4678", i32 0, i32 0), i32 0 }, %String* %k, align 8
  %"$gasrem_4679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4680" = icmp ugt i64 1, %"$gasrem_4679"
  br i1 %"$gascmp_4680", label %"$out_of_gas_4681", label %"$have_gas_4682"

"$out_of_gas_4681":                               ; preds = %"$have_gas_4676"
  call void @_out_of_gas()
  br label %"$have_gas_4682"

"$have_gas_4682":                                 ; preds = %"$out_of_gas_4681", %"$have_gas_4676"
  %"$consume_4683" = sub i64 %"$gasrem_4679", 1
  store i64 %"$consume_4683", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_4684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4685" = icmp ugt i64 1, %"$gasrem_4684"
  br i1 %"$gascmp_4685", label %"$out_of_gas_4686", label %"$have_gas_4687"

"$out_of_gas_4686":                               ; preds = %"$have_gas_4682"
  call void @_out_of_gas()
  br label %"$have_gas_4687"

"$have_gas_4687":                                 ; preds = %"$out_of_gas_4686", %"$have_gas_4682"
  %"$consume_4688" = sub i64 %"$gasrem_4684", 1
  store i64 %"$consume_4688", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4689", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_4690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4691" = icmp ugt i64 1, %"$gasrem_4690"
  br i1 %"$gascmp_4691", label %"$out_of_gas_4692", label %"$have_gas_4693"

"$out_of_gas_4692":                               ; preds = %"$have_gas_4687"
  call void @_out_of_gas()
  br label %"$have_gas_4693"

"$have_gas_4693":                                 ; preds = %"$out_of_gas_4692", %"$have_gas_4687"
  %"$consume_4694" = sub i64 %"$gasrem_4690", 1
  store i64 %"$consume_4694", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_4695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4696" = icmp ugt i64 1, %"$gasrem_4695"
  br i1 %"$gascmp_4696", label %"$out_of_gas_4697", label %"$have_gas_4698"

"$out_of_gas_4697":                               ; preds = %"$have_gas_4693"
  call void @_out_of_gas()
  br label %"$have_gas_4698"

"$have_gas_4698":                                 ; preds = %"$out_of_gas_4697", %"$have_gas_4693"
  %"$consume_4699" = sub i64 %"$gasrem_4695", 1
  store i64 %"$consume_4699", i64* @_gasrem, align 8
  %"$execptr_load_4700" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_4701" = call i8* @_new_empty_map(i8* %"$execptr_load_4700")
  %"$_new_empty_map_4702" = bitcast i8* %"$_new_empty_map_call_4701" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_4702", %Map_String_String** %e, align 8
  %"$e_4703" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4703_4704" = bitcast %Map_String_String* %"$e_4703" to i8*
  %"$_lengthof_call_4705" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_4703_4704")
  %"$gasadd_4706" = add i64 1, %"$_lengthof_call_4705"
  %"$gasrem_4707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4708" = icmp ugt i64 %"$gasadd_4706", %"$gasrem_4707"
  br i1 %"$gascmp_4708", label %"$out_of_gas_4709", label %"$have_gas_4710"

"$out_of_gas_4709":                               ; preds = %"$have_gas_4698"
  call void @_out_of_gas()
  br label %"$have_gas_4710"

"$have_gas_4710":                                 ; preds = %"$out_of_gas_4709", %"$have_gas_4698"
  %"$consume_4711" = sub i64 %"$gasrem_4707", %"$gasadd_4706"
  store i64 %"$consume_4711", i64* @_gasrem, align 8
  %"$execptr_load_4712" = load i8*, i8** @_execptr, align 8
  %"$e_4713" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4713_4714" = bitcast %Map_String_String* %"$e_4713" to i8*
  %"$put_k_4715" = alloca %String, align 8
  %"$k_4716" = load %String, %String* %k, align 8
  store %String %"$k_4716", %String* %"$put_k_4715", align 8
  %"$$put_k_4715_4717" = bitcast %String* %"$put_k_4715" to i8*
  %"$put_v_4718" = alloca %String, align 8
  %"$v_4719" = load %String, %String* %v, align 8
  store %String %"$v_4719", %String* %"$put_v_4718", align 8
  %"$$put_v_4718_4720" = bitcast %String* %"$put_v_4718" to i8*
  %"$put_call_4721" = call i8* @_put(i8* %"$execptr_load_4712", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_4713_4714", i8* %"$$put_k_4715_4717", i8* %"$$put_v_4718_4720")
  %"$put_4722" = bitcast i8* %"$put_call_4721" to %Map_String_String*
  store %Map_String_String* %"$put_4722", %Map_String_String** %m1, align 8
  %"$m1_4723" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_4723_4724" = bitcast %Map_String_String* %"$m1_4723" to i8*
  %"$_literal_cost_call_4725" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4723_4724")
  %"$gasrem_4726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4727" = icmp ugt i64 %"$_literal_cost_call_4725", %"$gasrem_4726"
  br i1 %"$gascmp_4727", label %"$out_of_gas_4728", label %"$have_gas_4729"

"$out_of_gas_4728":                               ; preds = %"$have_gas_4710"
  call void @_out_of_gas()
  br label %"$have_gas_4729"

"$have_gas_4729":                                 ; preds = %"$out_of_gas_4728", %"$have_gas_4710"
  %"$consume_4730" = sub i64 %"$gasrem_4726", %"$_literal_cost_call_4725"
  store i64 %"$consume_4730", i64* @_gasrem, align 8
  %"$execptr_load_4731" = load i8*, i8** @_execptr, align 8
  %"$m1_4733" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$update_value_4734" = bitcast %Map_String_String* %"$m1_4733" to i8*
  call void @_update_field(i8* %"$execptr_load_4731", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4732", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_4734")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_4736" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4737" = bitcast i8* %"$_amount_4736" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4737", align 8
  %"$_origin_4738" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4739" = bitcast i8* %"$_origin_4738" to [20 x i8]*
  %"$_sender_4740" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4741" = bitcast i8* %"$_sender_4740" to [20 x i8]*
  call void @"$t16_4164"(%Uint128 %_amount, [20 x i8]* %"$_origin_4739", [20 x i8]* %"$_sender_4741")
  ret void
}

define internal void @"$t17_4742"(%Uint128 %_amount, [20 x i8]* %"$_origin_4743", [20 x i8]* %"$_sender_4744") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4743", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4744", align 1
  %"$gasrem_4745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4746" = icmp ugt i64 1, %"$gasrem_4745"
  br i1 %"$gascmp_4746", label %"$out_of_gas_4747", label %"$have_gas_4748"

"$out_of_gas_4747":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4748"

"$have_gas_4748":                                 ; preds = %"$out_of_gas_4747", %entry
  %"$consume_4749" = sub i64 %"$gasrem_4745", 1
  store i64 %"$consume_4749", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4751" = icmp ugt i64 1, %"$gasrem_4750"
  br i1 %"$gascmp_4751", label %"$out_of_gas_4752", label %"$have_gas_4753"

"$out_of_gas_4752":                               ; preds = %"$have_gas_4748"
  call void @_out_of_gas()
  br label %"$have_gas_4753"

"$have_gas_4753":                                 ; preds = %"$out_of_gas_4752", %"$have_gas_4748"
  %"$consume_4754" = sub i64 %"$gasrem_4750", 1
  store i64 %"$consume_4754", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4755", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4757" = icmp ugt i64 1, %"$gasrem_4756"
  br i1 %"$gascmp_4757", label %"$out_of_gas_4758", label %"$have_gas_4759"

"$out_of_gas_4758":                               ; preds = %"$have_gas_4753"
  call void @_out_of_gas()
  br label %"$have_gas_4759"

"$have_gas_4759":                                 ; preds = %"$out_of_gas_4758", %"$have_gas_4753"
  %"$consume_4760" = sub i64 %"$gasrem_4756", 1
  store i64 %"$consume_4760", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4762" = icmp ugt i64 1, %"$gasrem_4761"
  br i1 %"$gascmp_4762", label %"$out_of_gas_4763", label %"$have_gas_4764"

"$out_of_gas_4763":                               ; preds = %"$have_gas_4759"
  call void @_out_of_gas()
  br label %"$have_gas_4764"

"$have_gas_4764":                                 ; preds = %"$out_of_gas_4763", %"$have_gas_4759"
  %"$consume_4765" = sub i64 %"$gasrem_4761", 1
  store i64 %"$consume_4765", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4766", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4767_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4767_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4767_salloc_load", i64 16)
  %"$indices_buf_4767_salloc" = bitcast i8* %"$indices_buf_4767_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4767" = bitcast [16 x i8]* %"$indices_buf_4767_salloc" to i8*
  %"$key_4768" = load %String, %String* %key, align 8
  %"$indices_gep_4769" = getelementptr i8, i8* %"$indices_buf_4767", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4769" to %String*
  store %String %"$key_4768", %String* %indices_cast, align 8
  %"$execptr_load_4771" = load i8*, i8** @_execptr, align 8
  %"$found_call_4772" = call i8* @_fetch_field(i8* %"$execptr_load_4771", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4770", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_4767", i32 0)
  %"$found_4773" = bitcast i8* %"$found_call_4772" to %TName_Bool*
  store %TName_Bool* %"$found_4773", %TName_Bool** %found, align 8
  %"$found_4774" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4774_4775" = bitcast %TName_Bool* %"$found_4774" to i8*
  %"$_literal_cost_call_4776" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", i8* %"$$found_4774_4775")
  %"$gasadd_4777" = add i64 %"$_literal_cost_call_4776", 0
  %"$gasadd_4778" = add i64 %"$gasadd_4777", 1
  %"$gasrem_4779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4780" = icmp ugt i64 %"$gasadd_4778", %"$gasrem_4779"
  br i1 %"$gascmp_4780", label %"$out_of_gas_4781", label %"$have_gas_4782"

"$out_of_gas_4781":                               ; preds = %"$have_gas_4764"
  call void @_out_of_gas()
  br label %"$have_gas_4782"

"$have_gas_4782":                                 ; preds = %"$out_of_gas_4781", %"$have_gas_4764"
  %"$consume_4783" = sub i64 %"$gasrem_4779", %"$gasadd_4778"
  store i64 %"$consume_4783", i64* @_gasrem, align 8
  %"$gasrem_4784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4785" = icmp ugt i64 2, %"$gasrem_4784"
  br i1 %"$gascmp_4785", label %"$out_of_gas_4786", label %"$have_gas_4787"

"$out_of_gas_4786":                               ; preds = %"$have_gas_4782"
  call void @_out_of_gas()
  br label %"$have_gas_4787"

"$have_gas_4787":                                 ; preds = %"$out_of_gas_4786", %"$have_gas_4782"
  %"$consume_4788" = sub i64 %"$gasrem_4784", 2
  store i64 %"$consume_4788", i64* @_gasrem, align 8
  %"$found_4790" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4791" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4790", i32 0, i32 0
  %"$found_tag_4792" = load i8, i8* %"$found_tag_4791", align 1
  switch i8 %"$found_tag_4792", label %"$empty_default_4793" [
    i8 0, label %"$True_4794"
    i8 1, label %"$False_4796"
  ]

"$True_4794":                                     ; preds = %"$have_gas_4787"
  %"$found_4795" = bitcast %TName_Bool* %"$found_4790" to %CName_True*
  br label %"$matchsucc_4789"

"$False_4796":                                    ; preds = %"$have_gas_4787"
  %"$found_4797" = bitcast %TName_Bool* %"$found_4790" to %CName_False*
  %"$gasrem_4798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4799" = icmp ugt i64 1, %"$gasrem_4798"
  br i1 %"$gascmp_4799", label %"$out_of_gas_4800", label %"$have_gas_4801"

"$out_of_gas_4800":                               ; preds = %"$False_4796"
  call void @_out_of_gas()
  br label %"$have_gas_4801"

"$have_gas_4801":                                 ; preds = %"$out_of_gas_4800", %"$False_4796"
  %"$consume_4802" = sub i64 %"$gasrem_4798", 1
  store i64 %"$consume_4802", i64* @_gasrem, align 8
  %"$fail__origin_4803" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4803", align 1
  %"$fail__sender_4804" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4804", align 1
  %"$tname_4805" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4803", [20 x i8]* %"$fail__sender_4804", %String %"$tname_4805")
  br label %"$matchsucc_4789"

"$empty_default_4793":                            ; preds = %"$have_gas_4787"
  br label %"$matchsucc_4789"

"$matchsucc_4789":                                ; preds = %"$have_gas_4801", %"$True_4794", %"$empty_default_4793"
  %"$gasrem_4806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4807" = icmp ugt i64 1, %"$gasrem_4806"
  br i1 %"$gascmp_4807", label %"$out_of_gas_4808", label %"$have_gas_4809"

"$out_of_gas_4808":                               ; preds = %"$matchsucc_4789"
  call void @_out_of_gas()
  br label %"$have_gas_4809"

"$have_gas_4809":                                 ; preds = %"$out_of_gas_4808", %"$matchsucc_4789"
  %"$consume_4810" = sub i64 %"$gasrem_4806", 1
  store i64 %"$consume_4810", i64* @_gasrem, align 8
  %"$indices_buf_4811_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4811_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4811_salloc_load", i64 16)
  %"$indices_buf_4811_salloc" = bitcast i8* %"$indices_buf_4811_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4811" = bitcast [16 x i8]* %"$indices_buf_4811_salloc" to i8*
  %"$key_4812" = load %String, %String* %key, align 8
  %"$indices_gep_4813" = getelementptr i8, i8* %"$indices_buf_4811", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4813" to %String*
  store %String %"$key_4812", %String* %indices_cast1, align 8
  %"$execptr_load_4814" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4814", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4815", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_4811", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_4817" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4818" = bitcast i8* %"$_amount_4817" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4818", align 8
  %"$_origin_4819" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4820" = bitcast i8* %"$_origin_4819" to [20 x i8]*
  %"$_sender_4821" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4822" = bitcast i8* %"$_sender_4821" to [20 x i8]*
  call void @"$t17_4742"(%Uint128 %_amount, [20 x i8]* %"$_origin_4820", [20 x i8]* %"$_sender_4822")
  ret void
}

define internal void @"$t18_4823"(%Uint128 %_amount, [20 x i8]* %"$_origin_4824", [20 x i8]* %"$_sender_4825") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4824", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4825", align 1
  %"$gasrem_4826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4827" = icmp ugt i64 1, %"$gasrem_4826"
  br i1 %"$gascmp_4827", label %"$out_of_gas_4828", label %"$have_gas_4829"

"$out_of_gas_4828":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4829"

"$have_gas_4829":                                 ; preds = %"$out_of_gas_4828", %entry
  %"$consume_4830" = sub i64 %"$gasrem_4826", 1
  store i64 %"$consume_4830", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4832" = icmp ugt i64 1, %"$gasrem_4831"
  br i1 %"$gascmp_4832", label %"$out_of_gas_4833", label %"$have_gas_4834"

"$out_of_gas_4833":                               ; preds = %"$have_gas_4829"
  call void @_out_of_gas()
  br label %"$have_gas_4834"

"$have_gas_4834":                                 ; preds = %"$out_of_gas_4833", %"$have_gas_4829"
  %"$consume_4835" = sub i64 %"$gasrem_4831", 1
  store i64 %"$consume_4835", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4836", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4838" = icmp ugt i64 1, %"$gasrem_4837"
  br i1 %"$gascmp_4838", label %"$out_of_gas_4839", label %"$have_gas_4840"

"$out_of_gas_4839":                               ; preds = %"$have_gas_4834"
  call void @_out_of_gas()
  br label %"$have_gas_4840"

"$have_gas_4840":                                 ; preds = %"$out_of_gas_4839", %"$have_gas_4834"
  %"$consume_4841" = sub i64 %"$gasrem_4837", 1
  store i64 %"$consume_4841", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4843" = icmp ugt i64 1, %"$gasrem_4842"
  br i1 %"$gascmp_4843", label %"$out_of_gas_4844", label %"$have_gas_4845"

"$out_of_gas_4844":                               ; preds = %"$have_gas_4840"
  call void @_out_of_gas()
  br label %"$have_gas_4845"

"$have_gas_4845":                                 ; preds = %"$out_of_gas_4844", %"$have_gas_4840"
  %"$consume_4846" = sub i64 %"$gasrem_4842", 1
  store i64 %"$consume_4846", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4847", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4848_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4848_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4848_salloc_load", i64 16)
  %"$indices_buf_4848_salloc" = bitcast i8* %"$indices_buf_4848_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4848" = bitcast [16 x i8]* %"$indices_buf_4848_salloc" to i8*
  %"$key_4849" = load %String, %String* %key, align 8
  %"$indices_gep_4850" = getelementptr i8, i8* %"$indices_buf_4848", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4850" to %String*
  store %String %"$key_4849", %String* %indices_cast, align 8
  %"$execptr_load_4852" = load i8*, i8** @_execptr, align 8
  %"$found_call_4853" = call i8* @_fetch_field(i8* %"$execptr_load_4852", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4851", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_4848", i32 0)
  %"$found_4854" = bitcast i8* %"$found_call_4853" to %TName_Bool*
  store %TName_Bool* %"$found_4854", %TName_Bool** %found, align 8
  %"$found_4855" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4855_4856" = bitcast %TName_Bool* %"$found_4855" to i8*
  %"$_literal_cost_call_4857" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", i8* %"$$found_4855_4856")
  %"$gasadd_4858" = add i64 %"$_literal_cost_call_4857", 0
  %"$gasadd_4859" = add i64 %"$gasadd_4858", 1
  %"$gasrem_4860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4861" = icmp ugt i64 %"$gasadd_4859", %"$gasrem_4860"
  br i1 %"$gascmp_4861", label %"$out_of_gas_4862", label %"$have_gas_4863"

"$out_of_gas_4862":                               ; preds = %"$have_gas_4845"
  call void @_out_of_gas()
  br label %"$have_gas_4863"

"$have_gas_4863":                                 ; preds = %"$out_of_gas_4862", %"$have_gas_4845"
  %"$consume_4864" = sub i64 %"$gasrem_4860", %"$gasadd_4859"
  store i64 %"$consume_4864", i64* @_gasrem, align 8
  %"$gasrem_4865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4866" = icmp ugt i64 2, %"$gasrem_4865"
  br i1 %"$gascmp_4866", label %"$out_of_gas_4867", label %"$have_gas_4868"

"$out_of_gas_4867":                               ; preds = %"$have_gas_4863"
  call void @_out_of_gas()
  br label %"$have_gas_4868"

"$have_gas_4868":                                 ; preds = %"$out_of_gas_4867", %"$have_gas_4863"
  %"$consume_4869" = sub i64 %"$gasrem_4865", 2
  store i64 %"$consume_4869", i64* @_gasrem, align 8
  %"$found_4871" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4872" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4871", i32 0, i32 0
  %"$found_tag_4873" = load i8, i8* %"$found_tag_4872", align 1
  switch i8 %"$found_tag_4873", label %"$empty_default_4874" [
    i8 0, label %"$True_4875"
    i8 1, label %"$False_4885"
  ]

"$True_4875":                                     ; preds = %"$have_gas_4868"
  %"$found_4876" = bitcast %TName_Bool* %"$found_4871" to %CName_True*
  %"$gasrem_4877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4878" = icmp ugt i64 1, %"$gasrem_4877"
  br i1 %"$gascmp_4878", label %"$out_of_gas_4879", label %"$have_gas_4880"

"$out_of_gas_4879":                               ; preds = %"$True_4875"
  call void @_out_of_gas()
  br label %"$have_gas_4880"

"$have_gas_4880":                                 ; preds = %"$out_of_gas_4879", %"$True_4875"
  %"$consume_4881" = sub i64 %"$gasrem_4877", 1
  store i64 %"$consume_4881", i64* @_gasrem, align 8
  %"$fail__origin_4882" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4882", align 1
  %"$fail__sender_4883" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4883", align 1
  %"$tname_4884" = load %String, %String* %tname, align 8
  call void @"$fail_245"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4882", [20 x i8]* %"$fail__sender_4883", %String %"$tname_4884")
  br label %"$matchsucc_4870"

"$False_4885":                                    ; preds = %"$have_gas_4868"
  %"$found_4886" = bitcast %TName_Bool* %"$found_4871" to %CName_False*
  br label %"$matchsucc_4870"

"$empty_default_4874":                            ; preds = %"$have_gas_4868"
  br label %"$matchsucc_4870"

"$matchsucc_4870":                                ; preds = %"$False_4885", %"$have_gas_4880", %"$empty_default_4874"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_4888" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4889" = bitcast i8* %"$_amount_4888" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4889", align 8
  %"$_origin_4890" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4891" = bitcast i8* %"$_origin_4890" to [20 x i8]*
  %"$_sender_4892" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4893" = bitcast i8* %"$_sender_4892" to [20 x i8]*
  call void @"$t18_4823"(%Uint128 %_amount, [20 x i8]* %"$_origin_4891", [20 x i8]* %"$_sender_4893")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
