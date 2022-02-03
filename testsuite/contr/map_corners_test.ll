

; gas_remaining: 4001999
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_4899" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_4900" = type { %ParamDescrString, i32, %"$ParamDescr_4899"* }
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
@"$stringlit_196" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_198" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_211" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_223" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_235" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_247" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_264" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_269" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_272" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_304" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_309" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_312" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_319" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_350" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_351" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_376" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_433" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_444" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_468" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_469" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_494" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_551" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_562" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_577" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_601" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_612" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_623" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_627" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_701" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_733" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_737" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_775" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_796" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_817" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_828" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_832" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_878" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_889" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_900" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_917" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_941" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_952" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_963" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_974" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_980" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1056" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_1104" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1115" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1151" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1162" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1193" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1207" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1230" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_1241" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1252" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1258" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1296" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1345" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1367" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1387" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1398" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1404" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1442" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1491" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_1513" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_1533" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1544" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_1550" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1588" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1637" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_1659" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_1678" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1699" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_1710" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1721" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1727" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1765" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1814" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1836" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1856" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1860" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1901" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_1923" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1934" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1940" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1978" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_2000" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2011" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_2017" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2055" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_2077" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2088" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_2099" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_2116" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2140" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_2151" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2162" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_2168" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2206" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2255" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_2277" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_2297" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2308" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_2314" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2352" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_2401" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_2423" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_2455" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2478" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_2479" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2565" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2576" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_2611" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2634" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_2645" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_2646" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2704" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2753" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_2775" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_2794" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2815" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_2816" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_2914" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2937" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_2938" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3037" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3051" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3074" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_3085" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3089" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3182" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_3230" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_3309" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3332" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_3333" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_3431" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_3454" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_3455" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3533" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_3553" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3564" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3731" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_3753" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_3775" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_3797" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_3817" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3828" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3839" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3850" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3861" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3872" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_3883" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3894" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3905" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3916" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_4159" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4182" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_4193" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_4204" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_4215" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_4226" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_4237" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_4248" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_4259" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_4270" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_4276" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4295" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4314" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4333" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4357" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_4368" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_4379" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_4390" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_4683" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_4694" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_4737" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4760" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_4771" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4775" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_4820" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4841" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_4852" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4856" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [23 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", %_TyDescrTy_Typ* @"$TyDescr_Event_58", %_TyDescrTy_Typ* @"$TyDescr_Int64_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_78", %_TyDescrTy_Typ* @"$TyDescr_Map_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_64", %_TyDescrTy_Typ* @"$TyDescr_Uint256_50", %_TyDescrTy_Typ* @"$TyDescr_Uint32_38", %_TyDescrTy_Typ* @"$TyDescr_Map_74", %_TyDescrTy_Typ* @"$TyDescr_Uint64_42", %_TyDescrTy_Typ* @"$TyDescr_Bnum_54", %_TyDescrTy_Typ* @"$TyDescr_Uint128_46", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", %_TyDescrTy_Typ* @"$TyDescr_Int256_48", %_TyDescrTy_Typ* @"$TyDescr_Int128_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr_62", %_TyDescrTy_Typ* @"$TyDescr_Message_56", %_TyDescrTy_Typ* @"$TyDescr_Int32_36"]
@_tydescr_table_length = constant i32 23
@"$pname__scilla_version_4901" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_4902" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_4903" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_4901", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_38" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_4902", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_64" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_4903", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_54" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_4904" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4905" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4906" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t1_4907" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4904", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4905", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4906", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t1_4908" = unnamed_addr constant [2 x i8] c"t1"
@"$tpname__amount_4909" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4910" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4911" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t2_4912" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4909", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4910", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4911", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t2_4913" = unnamed_addr constant [2 x i8] c"t2"
@"$tpname__amount_4914" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4915" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4916" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t3_4917" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4914", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4915", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4916", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t3_4918" = unnamed_addr constant [2 x i8] c"t3"
@"$tpname__amount_4919" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4920" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4921" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t4_4922" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4919", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4920", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4921", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t4_4923" = unnamed_addr constant [2 x i8] c"t4"
@"$tpname__amount_4924" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4925" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4926" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t5_4927" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4924", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4925", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4926", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t5_4928" = unnamed_addr constant [2 x i8] c"t5"
@"$tpname__amount_4929" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4930" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4931" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t6_4932" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4929", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4930", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4931", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t6_4933" = unnamed_addr constant [2 x i8] c"t6"
@"$tpname__amount_4934" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4935" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4936" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t7_4937" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4934", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4935", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4936", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t7_4938" = unnamed_addr constant [2 x i8] c"t7"
@"$tpname__amount_4939" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4940" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4941" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t8_4942" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4939", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4940", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4941", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t8_4943" = unnamed_addr constant [2 x i8] c"t8"
@"$tpname__amount_4944" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4945" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4946" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t9_4947" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4944", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4945", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4946", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t9_4948" = unnamed_addr constant [2 x i8] c"t9"
@"$tpname__amount_4949" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4950" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4951" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t10_4952" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4949", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4950", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4951", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t10_4953" = unnamed_addr constant [3 x i8] c"t10"
@"$tpname__amount_4954" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4955" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4956" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t11_4957" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4954", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4955", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4956", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t11_4958" = unnamed_addr constant [3 x i8] c"t11"
@"$tpname__amount_4959" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4960" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4961" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t12_4962" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4959", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4960", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4961", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t12_4963" = unnamed_addr constant [3 x i8] c"t12"
@"$tpname__amount_4964" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4965" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4966" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t13_4967" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4964", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4965", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4966", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t13_4968" = unnamed_addr constant [3 x i8] c"t13"
@"$tpname__amount_4969" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4970" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4971" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t14_4972" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4969", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4970", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4971", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t14_4973" = unnamed_addr constant [3 x i8] c"t14"
@"$tpname__amount_4974" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4975" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4976" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t15_4977" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4974", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4975", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4976", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t15_4978" = unnamed_addr constant [3 x i8] c"t15"
@"$tpname__amount_4979" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4980" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4981" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t16_4982" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4979", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4980", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4981", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t16_4983" = unnamed_addr constant [3 x i8] c"t16"
@"$tpname__amount_4984" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4985" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4986" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t17_4987" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4984", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4985", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4986", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t17_4988" = unnamed_addr constant [3 x i8] c"t17"
@"$tpname__amount_4989" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4990" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4991" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t18_4992" = unnamed_addr constant [3 x %"$ParamDescr_4899"] [%"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4989", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4990", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }, %"$ParamDescr_4899" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4991", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_78" }]
@"$tname_t18_4993" = unnamed_addr constant [3 x i8] c"t18"
@_transition_parameters = constant [18 x %"$TransDescr_4900"] [%"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_4908", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t1_4907", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t2_4913", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t2_4912", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t3_4918", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t3_4917", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t4_4923", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t4_4922", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t5_4928", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t5_4927", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t6_4933", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t6_4932", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t7_4938", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t7_4937", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t8_4943", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t8_4942", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t9_4948", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t9_4947", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t10_4953", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t10_4952", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t11_4958", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t11_4957", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t12_4963", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t12_4962", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t13_4968", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t13_4967", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t14_4973", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t14_4972", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t15_4978", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t15_4977", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t16_4983", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t16_4982", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t17_4988", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t17_4987", i32 0, i32 0) }, %"$TransDescr_4900" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t18_4993", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4899"* getelementptr inbounds ([3 x %"$ParamDescr_4899"], [3 x %"$ParamDescr_4899"]* @"$tparams_t18_4992", i32 0, i32 0) }]
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

define void @_deploy_ops() {
entry:
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$f_s1_29" = alloca %String, align 8
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_196", i32 0, i32 0), i32 3 }, %String* %"$f_s1_29", align 8
  %"$execptr_load_197" = load i8*, i8** @_execptr, align 8
  %"$$f_s1_29_199" = load %String, %String* %"$f_s1_29", align 8
  %"$update_value_200" = alloca %String, align 8
  store %String %"$$f_s1_29_199", %String* %"$update_value_200", align 8
  %"$update_value_201" = bitcast %String* %"$update_value_200" to i8*
  call void @_update_field(i8* %"$execptr_load_197", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_198", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i8* %"$update_value_201")
  %"$f_m1_30" = alloca %Map_String_String*, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_194"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$execptr_load_207" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_208" = call i8* @_new_empty_map(i8* %"$execptr_load_207")
  %"$_new_empty_map_209" = bitcast i8* %"$_new_empty_map_call_208" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_209", %Map_String_String** %"$f_m1_30", align 8
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$$f_m1_30_212" = load %Map_String_String*, %Map_String_String** %"$f_m1_30", align 8
  %"$update_value_213" = bitcast %Map_String_String* %"$$f_m1_30_212" to i8*
  call void @_update_field(i8* %"$execptr_load_210", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_211", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_213")
  %"$f_m2_31" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_205"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %"$execptr_load_219" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_220" = call i8* @_new_empty_map(i8* %"$execptr_load_219")
  %"$_new_empty_map_221" = bitcast i8* %"$_new_empty_map_call_220" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_221", %"Map_String_Map_(String)_(String)"** %"$f_m2_31", align 8
  %"$execptr_load_222" = load i8*, i8** @_execptr, align 8
  %"$$f_m2_31_224" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_31", align 8
  %"$update_value_225" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_31_224" to i8*
  call void @_update_field(i8* %"$execptr_load_222", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_223", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_225")
  %"$f_m3_32" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_217"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$execptr_load_231" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_232" = call i8* @_new_empty_map(i8* %"$execptr_load_231")
  %"$_new_empty_map_233" = bitcast i8* %"$_new_empty_map_call_232" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_233", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", align 8
  %"$execptr_load_234" = load i8*, i8** @_execptr, align 8
  %"$$f_m3_32_236" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", align 8
  %"$update_value_237" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_32_236" to i8*
  call void @_update_field(i8* %"$execptr_load_234", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_235", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_237")
  %"$f_m_33" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_229"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$execptr_load_243" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_244" = call i8* @_new_empty_map(i8* %"$execptr_load_243")
  %"$_new_empty_map_245" = bitcast i8* %"$_new_empty_map_call_244" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_245", %"Map_String_Map_(String)_(String)"** %"$f_m_33", align 8
  %"$execptr_load_246" = load i8*, i8** @_execptr, align 8
  %"$$f_m_33_248" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_33", align 8
  %"$update_value_249" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_33_248" to i8*
  call void @_update_field(i8* %"$execptr_load_246", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_247", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_249")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$_origin_251", [20 x i8]* %"$_sender_252", %String %tname) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_251", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_252", align 1
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %entry
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$msgobj_263_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_263_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_263_salloc_load", i64 81)
  %"$msgobj_263_salloc" = bitcast i8* %"$msgobj_263_salloc_salloc" to [81 x i8]*
  %"$msgobj_263" = bitcast [81 x i8]* %"$msgobj_263_salloc" to i8*
  store i8 2, i8* %"$msgobj_263", align 1
  %"$msgobj_fname_265" = getelementptr i8, i8* %"$msgobj_263", i32 1
  %"$msgobj_fname_266" = bitcast i8* %"$msgobj_fname_265" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_264", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_266", align 8
  %"$msgobj_td_267" = getelementptr i8, i8* %"$msgobj_263", i32 17
  %"$msgobj_td_268" = bitcast i8* %"$msgobj_td_267" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_268", align 8
  %"$msgobj_v_270" = getelementptr i8, i8* %"$msgobj_263", i32 25
  %"$msgobj_v_271" = bitcast i8* %"$msgobj_v_270" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_269", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_271", align 8
  %"$msgobj_fname_273" = getelementptr i8, i8* %"$msgobj_263", i32 41
  %"$msgobj_fname_274" = bitcast i8* %"$msgobj_fname_273" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_272", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_274", align 8
  %"$msgobj_td_275" = getelementptr i8, i8* %"$msgobj_263", i32 57
  %"$msgobj_td_276" = bitcast i8* %"$msgobj_td_275" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_276", align 8
  %"$msgobj_v_277" = getelementptr i8, i8* %"$msgobj_263", i32 65
  %"$msgobj_v_278" = bitcast i8* %"$msgobj_v_277" to %String*
  store %String %tname, %String* %"$msgobj_v_278", align 8
  store i8* %"$msgobj_263", i8** %e, align 8
  %"$e_280" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_282" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_280")
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 %"$_literal_cost_call_282", %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_261"
  %"$consume_287" = sub i64 %"$gasrem_283", %"$_literal_cost_call_282"
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$execptr_load_288" = load i8*, i8** @_execptr, align 8
  %"$e_289" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_288", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_289")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$_origin_291", [20 x i8]* %"$_sender_292", %String %tname, %String %msg) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_291", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_292", align 1
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %entry
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$msgobj_303_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_303_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_303_salloc_load", i64 121)
  %"$msgobj_303_salloc" = bitcast i8* %"$msgobj_303_salloc_salloc" to [121 x i8]*
  %"$msgobj_303" = bitcast [121 x i8]* %"$msgobj_303_salloc" to i8*
  store i8 3, i8* %"$msgobj_303", align 1
  %"$msgobj_fname_305" = getelementptr i8, i8* %"$msgobj_303", i32 1
  %"$msgobj_fname_306" = bitcast i8* %"$msgobj_fname_305" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_304", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_306", align 8
  %"$msgobj_td_307" = getelementptr i8, i8* %"$msgobj_303", i32 17
  %"$msgobj_td_308" = bitcast i8* %"$msgobj_td_307" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_308", align 8
  %"$msgobj_v_310" = getelementptr i8, i8* %"$msgobj_303", i32 25
  %"$msgobj_v_311" = bitcast i8* %"$msgobj_v_310" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_309", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_311", align 8
  %"$msgobj_fname_313" = getelementptr i8, i8* %"$msgobj_303", i32 41
  %"$msgobj_fname_314" = bitcast i8* %"$msgobj_fname_313" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_312", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_314", align 8
  %"$msgobj_td_315" = getelementptr i8, i8* %"$msgobj_303", i32 57
  %"$msgobj_td_316" = bitcast i8* %"$msgobj_td_315" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_316", align 8
  %"$msgobj_v_317" = getelementptr i8, i8* %"$msgobj_303", i32 65
  %"$msgobj_v_318" = bitcast i8* %"$msgobj_v_317" to %String*
  store %String %tname, %String* %"$msgobj_v_318", align 8
  %"$msgobj_fname_320" = getelementptr i8, i8* %"$msgobj_303", i32 81
  %"$msgobj_fname_321" = bitcast i8* %"$msgobj_fname_320" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_319", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_321", align 8
  %"$msgobj_td_322" = getelementptr i8, i8* %"$msgobj_303", i32 97
  %"$msgobj_td_323" = bitcast i8* %"$msgobj_td_322" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_323", align 8
  %"$msgobj_v_324" = getelementptr i8, i8* %"$msgobj_303", i32 105
  %"$msgobj_v_325" = bitcast i8* %"$msgobj_v_324" to %String*
  store %String %msg, %String* %"$msgobj_v_325", align 8
  store i8* %"$msgobj_303", i8** %e, align 8
  %"$e_327" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_329" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_327")
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 %"$_literal_cost_call_329", %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_301"
  %"$consume_334" = sub i64 %"$gasrem_330", %"$_literal_cost_call_329"
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$e_336" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_335", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_336")
  ret void
}

define internal void @"$t1_337"(%Uint128 %_amount, [20 x i8]* %"$_origin_338", [20 x i8]* %"$_sender_339") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_338", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_339", align 1
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %entry
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_350", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_352" = load i8*, i8** @_execptr, align 8
  %"$f_call_353" = call i8* @_fetch_field(i8* %"$execptr_load_352", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_351", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i32 1)
  %"$f_354" = bitcast i8* %"$f_call_353" to %String*
  %"$f_355" = load %String, %String* %"$f_354", align 8
  store %String %"$f_355", %String* %f, align 8
  %"$_literal_cost_f_356" = alloca %String, align 8
  %"$f_357" = load %String, %String* %f, align 8
  store %String %"$f_357", %String* %"$_literal_cost_f_356", align 8
  %"$$_literal_cost_f_356_358" = bitcast %String* %"$_literal_cost_f_356" to i8*
  %"$_literal_cost_call_359" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_356_358")
  %"$gasadd_360" = add i64 %"$_literal_cost_call_359", 0
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 %"$gasadd_360", %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_348"
  %"$consume_365" = sub i64 %"$gasrem_361", %"$gasadd_360"
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_376", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_374"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_f_382" = alloca %String, align 8
  %"$f_383" = load %String, %String* %f, align 8
  store %String %"$f_383", %String* %"$_literal_cost_f_382", align 8
  %"$$_literal_cost_f_382_384" = bitcast %String* %"$_literal_cost_f_382" to i8*
  %"$_literal_cost_call_385" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_382_384")
  %"$_literal_cost_s_386" = alloca %String, align 8
  %"$s_387" = load %String, %String* %s, align 8
  store %String %"$s_387", %String* %"$_literal_cost_s_386", align 8
  %"$$_literal_cost_s_386_388" = bitcast %String* %"$_literal_cost_s_386" to i8*
  %"$_literal_cost_call_389" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_386_388")
  %"$gasmin_390" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_385", i64 %"$_literal_cost_call_389")
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 %"$gasmin_390", %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_380"
  %"$consume_395" = sub i64 %"$gasrem_391", %"$gasmin_390"
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$execptr_load_396" = load i8*, i8** @_execptr, align 8
  %"$f_397" = load %String, %String* %f, align 8
  %"$s_398" = load %String, %String* %s, align 8
  %"$eq_call_399" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_396", %String %"$f_397", %String %"$s_398")
  store %TName_Bool* %"$eq_call_399", %TName_Bool** %t, align 8
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 2, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_394"
  %"$consume_405" = sub i64 %"$gasrem_401", 2
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$t_407" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_408" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_407", i32 0, i32 0
  %"$t_tag_409" = load i8, i8* %"$t_tag_408", align 1
  switch i8 %"$t_tag_409", label %"$empty_default_410" [
    i8 1, label %"$False_411"
    i8 0, label %"$True_421"
  ]

"$False_411":                                     ; preds = %"$have_gas_404"
  %"$t_412" = bitcast %TName_Bool* %"$t_407" to %CName_False*
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$False_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$False_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$fail__origin_418" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_418", align 1
  %"$fail__sender_419" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_419", align 1
  %"$tname_420" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_418", [20 x i8]* %"$fail__sender_419", %String %"$tname_420")
  br label %"$matchsucc_406"

"$True_421":                                      ; preds = %"$have_gas_404"
  %"$t_422" = bitcast %TName_Bool* %"$t_407" to %CName_True*
  br label %"$matchsucc_406"

"$empty_default_410":                             ; preds = %"$have_gas_404"
  br label %"$matchsucc_406"

"$matchsucc_406":                                 ; preds = %"$True_421", %"$have_gas_416", %"$empty_default_410"
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$matchsucc_406"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$matchsucc_406"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_433", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$_literal_cost_s2_434" = alloca %String, align 8
  %"$s2_435" = load %String, %String* %s2, align 8
  store %String %"$s2_435", %String* %"$_literal_cost_s2_434", align 8
  %"$$_literal_cost_s2_434_436" = bitcast %String* %"$_literal_cost_s2_434" to i8*
  %"$_literal_cost_call_437" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s2_434_436")
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 %"$_literal_cost_call_437", %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_431"
  %"$consume_442" = sub i64 %"$gasrem_438", %"$_literal_cost_call_437"
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$execptr_load_443" = load i8*, i8** @_execptr, align 8
  %"$s2_445" = load %String, %String* %s2, align 8
  %"$update_value_446" = alloca %String, align 8
  store %String %"$s2_445", %String* %"$update_value_446", align 8
  %"$update_value_447" = bitcast %String* %"$update_value_446" to i8*
  call void @_update_field(i8* %"$execptr_load_443", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_444", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i8* %"$update_value_447")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) {
entry:
  %"$_amount_449" = getelementptr i8, i8* %0, i32 0
  %"$_amount_450" = bitcast i8* %"$_amount_449" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_450", align 8
  %"$_origin_451" = getelementptr i8, i8* %0, i32 16
  %"$_origin_452" = bitcast i8* %"$_origin_451" to [20 x i8]*
  %"$_sender_453" = getelementptr i8, i8* %0, i32 36
  %"$_sender_454" = bitcast i8* %"$_sender_453" to [20 x i8]*
  call void @"$t1_337"(%Uint128 %_amount, [20 x i8]* %"$_origin_452", [20 x i8]* %"$_sender_454")
  ret void
}

define internal void @"$t2_455"(%Uint128 %_amount, [20 x i8]* %"$_origin_456", [20 x i8]* %"$_sender_457") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_456", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_457", align 1
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %entry
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_468", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_470" = load i8*, i8** @_execptr, align 8
  %"$f_call_471" = call i8* @_fetch_field(i8* %"$execptr_load_470", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_469", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i32 1)
  %"$f_472" = bitcast i8* %"$f_call_471" to %String*
  %"$f_473" = load %String, %String* %"$f_472", align 8
  store %String %"$f_473", %String* %f, align 8
  %"$_literal_cost_f_474" = alloca %String, align 8
  %"$f_475" = load %String, %String* %f, align 8
  store %String %"$f_475", %String* %"$_literal_cost_f_474", align 8
  %"$$_literal_cost_f_474_476" = bitcast %String* %"$_literal_cost_f_474" to i8*
  %"$_literal_cost_call_477" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_474_476")
  %"$gasadd_478" = add i64 %"$_literal_cost_call_477", 0
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 %"$gasadd_478", %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_466"
  %"$consume_483" = sub i64 %"$gasrem_479", %"$gasadd_478"
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_487"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_494", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_492"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_f_500" = alloca %String, align 8
  %"$f_501" = load %String, %String* %f, align 8
  store %String %"$f_501", %String* %"$_literal_cost_f_500", align 8
  %"$$_literal_cost_f_500_502" = bitcast %String* %"$_literal_cost_f_500" to i8*
  %"$_literal_cost_call_503" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_500_502")
  %"$_literal_cost_s_504" = alloca %String, align 8
  %"$s_505" = load %String, %String* %s, align 8
  store %String %"$s_505", %String* %"$_literal_cost_s_504", align 8
  %"$$_literal_cost_s_504_506" = bitcast %String* %"$_literal_cost_s_504" to i8*
  %"$_literal_cost_call_507" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_504_506")
  %"$gasmin_508" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_503", i64 %"$_literal_cost_call_507")
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 %"$gasmin_508", %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_498"
  %"$consume_513" = sub i64 %"$gasrem_509", %"$gasmin_508"
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$execptr_load_514" = load i8*, i8** @_execptr, align 8
  %"$f_515" = load %String, %String* %f, align 8
  %"$s_516" = load %String, %String* %s, align 8
  %"$eq_call_517" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_514", %String %"$f_515", %String %"$s_516")
  store %TName_Bool* %"$eq_call_517", %TName_Bool** %t, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 2, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_512"
  %"$consume_523" = sub i64 %"$gasrem_519", 2
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$t_525" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_526" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_525", i32 0, i32 0
  %"$t_tag_527" = load i8, i8* %"$t_tag_526", align 1
  switch i8 %"$t_tag_527", label %"$empty_default_528" [
    i8 1, label %"$False_529"
    i8 0, label %"$True_539"
  ]

"$False_529":                                     ; preds = %"$have_gas_522"
  %"$t_530" = bitcast %TName_Bool* %"$t_525" to %CName_False*
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$False_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$False_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$fail__origin_536" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_536", align 1
  %"$fail__sender_537" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_537", align 1
  %"$tname_538" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_536", [20 x i8]* %"$fail__sender_537", %String %"$tname_538")
  br label %"$matchsucc_524"

"$True_539":                                      ; preds = %"$have_gas_522"
  %"$t_540" = bitcast %TName_Bool* %"$t_525" to %CName_True*
  br label %"$matchsucc_524"

"$empty_default_528":                             ; preds = %"$have_gas_522"
  br label %"$matchsucc_524"

"$matchsucc_524":                                 ; preds = %"$True_539", %"$have_gas_534", %"$empty_default_528"
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$matchsucc_524"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$matchsucc_524"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_551", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_549"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %val1 = alloca %String, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_562", i32 0, i32 0), i32 3 }, %String* %val1, align 8
  %"$_literal_cost_val1_563" = alloca %String, align 8
  %"$val1_564" = load %String, %String* %val1, align 8
  store %String %"$val1_564", %String* %"$_literal_cost_val1_563", align 8
  %"$$_literal_cost_val1_563_565" = bitcast %String* %"$_literal_cost_val1_563" to i8*
  %"$_literal_cost_call_566" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_val1_563_565")
  %"$gasadd_567" = add i64 %"$_literal_cost_call_566", 1
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 %"$gasadd_567", %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_560"
  %"$consume_572" = sub i64 %"$gasrem_568", %"$gasadd_567"
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$indices_buf_573_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_573_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_573_salloc_load", i64 16)
  %"$indices_buf_573_salloc" = bitcast i8* %"$indices_buf_573_salloc_salloc" to [16 x i8]*
  %"$indices_buf_573" = bitcast [16 x i8]* %"$indices_buf_573_salloc" to i8*
  %"$key1_574" = load %String, %String* %key1, align 8
  %"$indices_gep_575" = getelementptr i8, i8* %"$indices_buf_573", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_575" to %String*
  store %String %"$key1_574", %String* %indices_cast, align 8
  %"$execptr_load_576" = load i8*, i8** @_execptr, align 8
  %"$val1_578" = load %String, %String* %val1, align 8
  %"$update_value_579" = alloca %String, align 8
  store %String %"$val1_578", %String* %"$update_value_579", align 8
  %"$update_value_580" = bitcast %String* %"$update_value_579" to i8*
  call void @_update_field(i8* %"$execptr_load_576", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_577", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_573", i8* %"$update_value_580")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_582" = getelementptr i8, i8* %0, i32 0
  %"$_amount_583" = bitcast i8* %"$_amount_582" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_583", align 8
  %"$_origin_584" = getelementptr i8, i8* %0, i32 16
  %"$_origin_585" = bitcast i8* %"$_origin_584" to [20 x i8]*
  %"$_sender_586" = getelementptr i8, i8* %0, i32 36
  %"$_sender_587" = bitcast i8* %"$_sender_586" to [20 x i8]*
  call void @"$t2_455"(%Uint128 %_amount, [20 x i8]* %"$_origin_585", [20 x i8]* %"$_sender_587")
  ret void
}

define internal void @"$t3_588"(%Uint128 %_amount, [20 x i8]* %"$_origin_589", [20 x i8]* %"$_sender_590") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_589", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_590", align 1
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %entry
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_601", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_599"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_605"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_612", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_610"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_623", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %val1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_624_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_624_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_624_salloc_load", i64 16)
  %"$indices_buf_624_salloc" = bitcast i8* %"$indices_buf_624_salloc_salloc" to [16 x i8]*
  %"$indices_buf_624" = bitcast [16 x i8]* %"$indices_buf_624_salloc" to i8*
  %"$key1_625" = load %String, %String* %key1, align 8
  %"$indices_gep_626" = getelementptr i8, i8* %"$indices_buf_624", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_626" to %String*
  store %String %"$key1_625", %String* %indices_cast, align 8
  %"$execptr_load_628" = load i8*, i8** @_execptr, align 8
  %"$val1_call_629" = call i8* @_fetch_field(i8* %"$execptr_load_628", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_627", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_624", i32 1)
  %"$val1_630" = bitcast i8* %"$val1_call_629" to %TName_Option_String*
  store %TName_Option_String* %"$val1_630", %TName_Option_String** %val1, align 8
  %"$val1_631" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$$val1_631_632" = bitcast %TName_Option_String* %"$val1_631" to i8*
  %"$_literal_cost_call_633" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$val1_631_632")
  %"$gasadd_634" = add i64 %"$_literal_cost_call_633", 0
  %"$gasadd_635" = add i64 %"$gasadd_634", 1
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 %"$gasadd_635", %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_621"
  %"$consume_640" = sub i64 %"$gasrem_636", %"$gasadd_635"
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 2, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_639"
  %"$consume_645" = sub i64 %"$gasrem_641", 2
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$val1_647" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$val1_tag_648" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_647", i32 0, i32 0
  %"$val1_tag_649" = load i8, i8* %"$val1_tag_648", align 1
  switch i8 %"$val1_tag_649", label %"$empty_default_650" [
    i8 0, label %"$Some_651"
    i8 1, label %"$None_713"
  ]

"$Some_651":                                      ; preds = %"$have_gas_644"
  %"$val1_652" = bitcast %TName_Option_String* %"$val1_647" to %CName_Some_String*
  %"$val_gep_653" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_652", i32 0, i32 1
  %"$val_load_654" = load %String, %String* %"$val_gep_653", align 8
  %val = alloca %String, align 8
  store %String %"$val_load_654", %String* %val, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$Some_651"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$Some_651"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_val_660" = alloca %String, align 8
  %"$val_661" = load %String, %String* %val, align 8
  store %String %"$val_661", %String* %"$_literal_cost_val_660", align 8
  %"$$_literal_cost_val_660_662" = bitcast %String* %"$_literal_cost_val_660" to i8*
  %"$_literal_cost_call_663" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_val_660_662")
  %"$_literal_cost_s_664" = alloca %String, align 8
  %"$s_665" = load %String, %String* %s, align 8
  store %String %"$s_665", %String* %"$_literal_cost_s_664", align 8
  %"$$_literal_cost_s_664_666" = bitcast %String* %"$_literal_cost_s_664" to i8*
  %"$_literal_cost_call_667" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_664_666")
  %"$gasmin_668" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_663", i64 %"$_literal_cost_call_667")
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 %"$gasmin_668", %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_658"
  %"$consume_673" = sub i64 %"$gasrem_669", %"$gasmin_668"
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$execptr_load_674" = load i8*, i8** @_execptr, align 8
  %"$val_675" = load %String, %String* %val, align 8
  %"$s_676" = load %String, %String* %s, align 8
  %"$eq_call_677" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_674", %String %"$val_675", %String %"$s_676")
  store %TName_Bool* %"$eq_call_677", %TName_Bool** %t, align 8
  %"$gasrem_679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_680" = icmp ugt i64 2, %"$gasrem_679"
  br i1 %"$gascmp_680", label %"$out_of_gas_681", label %"$have_gas_682"

"$out_of_gas_681":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_682"

"$have_gas_682":                                  ; preds = %"$out_of_gas_681", %"$have_gas_672"
  %"$consume_683" = sub i64 %"$gasrem_679", 2
  store i64 %"$consume_683", i64* @_gasrem, align 8
  %"$t_685" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_686" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_685", i32 0, i32 0
  %"$t_tag_687" = load i8, i8* %"$t_tag_686", align 1
  switch i8 %"$t_tag_687", label %"$empty_default_688" [
    i8 1, label %"$False_689"
    i8 0, label %"$True_711"
  ]

"$False_689":                                     ; preds = %"$have_gas_682"
  %"$t_690" = bitcast %TName_Bool* %"$t_685" to %CName_False*
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$False_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$False_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_694"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_701", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_699"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_699"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$fail_msg__origin_707" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_707", align 1
  %"$fail_msg__sender_708" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_708", align 1
  %"$tname_709" = load %String, %String* %tname, align 8
  %"$m_710" = load %String, %String* %m, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_707", [20 x i8]* %"$fail_msg__sender_708", %String %"$tname_709", %String %"$m_710")
  br label %"$matchsucc_684"

"$True_711":                                      ; preds = %"$have_gas_682"
  %"$t_712" = bitcast %TName_Bool* %"$t_685" to %CName_True*
  br label %"$matchsucc_684"

"$empty_default_688":                             ; preds = %"$have_gas_682"
  br label %"$matchsucc_684"

"$matchsucc_684":                                 ; preds = %"$True_711", %"$have_gas_705", %"$empty_default_688"
  br label %"$matchsucc_646"

"$None_713":                                      ; preds = %"$have_gas_644"
  %"$val1_714" = bitcast %TName_Option_String* %"$val1_647" to %CName_None_String*
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 1, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$None_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$None_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 1
  store i64 %"$consume_719", i64* @_gasrem, align 8
  %"$fail__origin_720" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_720", align 1
  %"$fail__sender_721" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_721", align 1
  %"$tname_722" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_720", [20 x i8]* %"$fail__sender_721", %String %"$tname_722")
  br label %"$matchsucc_646"

"$empty_default_650":                             ; preds = %"$have_gas_644"
  br label %"$matchsucc_646"

"$matchsucc_646":                                 ; preds = %"$have_gas_718", %"$matchsucc_684", %"$empty_default_650"
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$matchsucc_646"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$matchsucc_646"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %key2 = alloca %String, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_726"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_733", i32 0, i32 0), i32 4 }, %String* %key2, align 8
  %val2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_734_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_734_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_734_salloc_load", i64 16)
  %"$indices_buf_734_salloc" = bitcast i8* %"$indices_buf_734_salloc_salloc" to [16 x i8]*
  %"$indices_buf_734" = bitcast [16 x i8]* %"$indices_buf_734_salloc" to i8*
  %"$key2_735" = load %String, %String* %key2, align 8
  %"$indices_gep_736" = getelementptr i8, i8* %"$indices_buf_734", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_736" to %String*
  store %String %"$key2_735", %String* %indices_cast1, align 8
  %"$execptr_load_738" = load i8*, i8** @_execptr, align 8
  %"$val2_call_739" = call i8* @_fetch_field(i8* %"$execptr_load_738", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_737", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_734", i32 1)
  %"$val2_740" = bitcast i8* %"$val2_call_739" to %TName_Option_String*
  store %TName_Option_String* %"$val2_740", %TName_Option_String** %val2, align 8
  %"$val2_741" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$$val2_741_742" = bitcast %TName_Option_String* %"$val2_741" to i8*
  %"$_literal_cost_call_743" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$val2_741_742")
  %"$gasadd_744" = add i64 %"$_literal_cost_call_743", 0
  %"$gasadd_745" = add i64 %"$gasadd_744", 1
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 %"$gasadd_745", %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_731"
  %"$consume_750" = sub i64 %"$gasrem_746", %"$gasadd_745"
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$gasrem_751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_752" = icmp ugt i64 2, %"$gasrem_751"
  br i1 %"$gascmp_752", label %"$out_of_gas_753", label %"$have_gas_754"

"$out_of_gas_753":                                ; preds = %"$have_gas_749"
  call void @_out_of_gas()
  br label %"$have_gas_754"

"$have_gas_754":                                  ; preds = %"$out_of_gas_753", %"$have_gas_749"
  %"$consume_755" = sub i64 %"$gasrem_751", 2
  store i64 %"$consume_755", i64* @_gasrem, align 8
  %"$val2_757" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$val2_tag_758" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_757", i32 0, i32 0
  %"$val2_tag_759" = load i8, i8* %"$val2_tag_758", align 1
  switch i8 %"$val2_tag_759", label %"$empty_default_760" [
    i8 0, label %"$Some_761"
    i8 1, label %"$None_785"
  ]

"$Some_761":                                      ; preds = %"$have_gas_754"
  %"$val2_762" = bitcast %TName_Option_String* %"$val2_757" to %CName_Some_String*
  %"$$val2_15_gep_763" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_762", i32 0, i32 1
  %"$$val2_15_load_764" = load %String, %String* %"$$val2_15_gep_763", align 8
  %"$val2_15" = alloca %String, align 8
  store %String %"$$val2_15_load_764", %String* %"$val2_15", align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$Some_761"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$Some_761"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 1, %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$have_gas_768"
  %"$consume_774" = sub i64 %"$gasrem_770", 1
  store i64 %"$consume_774", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_775", i32 0, i32 0), i32 25 }, %String* %m2, align 8
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 1, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$have_gas_773"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$have_gas_773"
  %"$consume_780" = sub i64 %"$gasrem_776", 1
  store i64 %"$consume_780", i64* @_gasrem, align 8
  %"$fail_msg__origin_781" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_781", align 1
  %"$fail_msg__sender_782" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_782", align 1
  %"$tname_783" = load %String, %String* %tname, align 8
  %"$m_784" = load %String, %String* %m2, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_781", [20 x i8]* %"$fail_msg__sender_782", %String %"$tname_783", %String %"$m_784")
  br label %"$matchsucc_756"

"$None_785":                                      ; preds = %"$have_gas_754"
  %"$val2_786" = bitcast %TName_Option_String* %"$val2_757" to %CName_None_String*
  br label %"$matchsucc_756"

"$empty_default_760":                             ; preds = %"$have_gas_754"
  br label %"$matchsucc_756"

"$matchsucc_756":                                 ; preds = %"$None_785", %"$have_gas_779", %"$empty_default_760"
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 1, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$matchsucc_756"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$matchsucc_756"
  %"$consume_791" = sub i64 %"$gasrem_787", 1
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %"$indices_buf_792_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_792_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_792_salloc_load", i64 16)
  %"$indices_buf_792_salloc" = bitcast i8* %"$indices_buf_792_salloc_salloc" to [16 x i8]*
  %"$indices_buf_792" = bitcast [16 x i8]* %"$indices_buf_792_salloc" to i8*
  %"$key1_793" = load %String, %String* %key1, align 8
  %"$indices_gep_794" = getelementptr i8, i8* %"$indices_buf_792", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_794" to %String*
  store %String %"$key1_793", %String* %indices_cast3, align 8
  %"$execptr_load_795" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_795", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_796", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_792", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_798" = getelementptr i8, i8* %0, i32 0
  %"$_amount_799" = bitcast i8* %"$_amount_798" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_799", align 8
  %"$_origin_800" = getelementptr i8, i8* %0, i32 16
  %"$_origin_801" = bitcast i8* %"$_origin_800" to [20 x i8]*
  %"$_sender_802" = getelementptr i8, i8* %0, i32 36
  %"$_sender_803" = bitcast i8* %"$_sender_802" to [20 x i8]*
  call void @"$t3_588"(%Uint128 %_amount, [20 x i8]* %"$_origin_801", [20 x i8]* %"$_sender_803")
  ret void
}

define internal void @"$t4_804"(%Uint128 %_amount, [20 x i8]* %"$_origin_805", [20 x i8]* %"$_sender_806") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_805", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_806", align 1
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %entry
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_810"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_817", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_815"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_828", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %key1_found = alloca %TName_Bool*, align 8
  %"$indices_buf_829_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_829_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_829_salloc_load", i64 16)
  %"$indices_buf_829_salloc" = bitcast i8* %"$indices_buf_829_salloc_salloc" to [16 x i8]*
  %"$indices_buf_829" = bitcast [16 x i8]* %"$indices_buf_829_salloc" to i8*
  %"$key1_830" = load %String, %String* %key1, align 8
  %"$indices_gep_831" = getelementptr i8, i8* %"$indices_buf_829", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_831" to %String*
  store %String %"$key1_830", %String* %indices_cast, align 8
  %"$execptr_load_833" = load i8*, i8** @_execptr, align 8
  %"$key1_found_call_834" = call i8* @_fetch_field(i8* %"$execptr_load_833", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_832", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_829", i32 0)
  %"$key1_found_835" = bitcast i8* %"$key1_found_call_834" to %TName_Bool*
  store %TName_Bool* %"$key1_found_835", %TName_Bool** %key1_found, align 8
  %"$key1_found_836" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$$key1_found_836_837" = bitcast %TName_Bool* %"$key1_found_836" to i8*
  %"$_literal_cost_call_838" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", i8* %"$$key1_found_836_837")
  %"$gasadd_839" = add i64 %"$_literal_cost_call_838", 0
  %"$gasadd_840" = add i64 %"$gasadd_839", 1
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 %"$gasadd_840", %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %"$have_gas_826"
  %"$consume_845" = sub i64 %"$gasrem_841", %"$gasadd_840"
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 2, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_844"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_844"
  %"$consume_850" = sub i64 %"$gasrem_846", 2
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$key1_found_852" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$key1_found_tag_853" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_852", i32 0, i32 0
  %"$key1_found_tag_854" = load i8, i8* %"$key1_found_tag_853", align 1
  switch i8 %"$key1_found_tag_854", label %"$empty_default_855" [
    i8 0, label %"$True_856"
    i8 1, label %"$False_866"
  ]

"$True_856":                                      ; preds = %"$have_gas_849"
  %"$key1_found_857" = bitcast %TName_Bool* %"$key1_found_852" to %CName_True*
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$True_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$True_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$fail__origin_863" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_863", align 1
  %"$fail__sender_864" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_864", align 1
  %"$tname_865" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_863", [20 x i8]* %"$fail__sender_864", %String %"$tname_865")
  br label %"$matchsucc_851"

"$False_866":                                     ; preds = %"$have_gas_849"
  %"$key1_found_867" = bitcast %TName_Bool* %"$key1_found_852" to %CName_False*
  br label %"$matchsucc_851"

"$empty_default_855":                             ; preds = %"$have_gas_849"
  br label %"$matchsucc_851"

"$matchsucc_851":                                 ; preds = %"$False_866", %"$have_gas_861", %"$empty_default_855"
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$matchsucc_851"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$matchsucc_851"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_871"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_878", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_876"
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_882"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_889", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_887"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_893"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_900", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_901" = alloca %String, align 8
  %"$s_902" = load %String, %String* %s, align 8
  store %String %"$s_902", %String* %"$_literal_cost_s_901", align 8
  %"$$_literal_cost_s_901_903" = bitcast %String* %"$_literal_cost_s_901" to i8*
  %"$_literal_cost_call_904" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_901_903")
  %"$gasadd_905" = add i64 %"$_literal_cost_call_904", 2
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 %"$gasadd_905", %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_898"
  %"$consume_910" = sub i64 %"$gasrem_906", %"$gasadd_905"
  store i64 %"$consume_910", i64* @_gasrem, align 8
  %"$indices_buf_911_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_911_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_911_salloc_load", i64 32)
  %"$indices_buf_911_salloc" = bitcast i8* %"$indices_buf_911_salloc_salloc" to [32 x i8]*
  %"$indices_buf_911" = bitcast [32 x i8]* %"$indices_buf_911_salloc" to i8*
  %"$key1a_912" = load %String, %String* %key1a, align 8
  %"$indices_gep_913" = getelementptr i8, i8* %"$indices_buf_911", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_913" to %String*
  store %String %"$key1a_912", %String* %indices_cast1, align 8
  %"$key2a_914" = load %String, %String* %key2a, align 8
  %"$indices_gep_915" = getelementptr i8, i8* %"$indices_buf_911", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_915" to %String*
  store %String %"$key2a_914", %String* %indices_cast2, align 8
  %"$execptr_load_916" = load i8*, i8** @_execptr, align 8
  %"$s_918" = load %String, %String* %s, align 8
  %"$update_value_919" = alloca %String, align 8
  store %String %"$s_918", %String* %"$update_value_919", align 8
  %"$update_value_920" = bitcast %String* %"$update_value_919" to i8*
  call void @_update_field(i8* %"$execptr_load_916", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_917", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_911", i8* %"$update_value_920")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_922" = getelementptr i8, i8* %0, i32 0
  %"$_amount_923" = bitcast i8* %"$_amount_922" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_923", align 8
  %"$_origin_924" = getelementptr i8, i8* %0, i32 16
  %"$_origin_925" = bitcast i8* %"$_origin_924" to [20 x i8]*
  %"$_sender_926" = getelementptr i8, i8* %0, i32 36
  %"$_sender_927" = bitcast i8* %"$_sender_926" to [20 x i8]*
  call void @"$t4_804"(%Uint128 %_amount, [20 x i8]* %"$_origin_925", [20 x i8]* %"$_sender_927")
  ret void
}

define internal void @"$t5_928"(%Uint128 %_amount, [20 x i8]* %"$_origin_929", [20 x i8]* %"$_sender_930") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_929", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_930", align 1
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %entry
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_934"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_934"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_941", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 1, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_939"
  %"$consume_946" = sub i64 %"$gasrem_942", 1
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_948" = icmp ugt i64 1, %"$gasrem_947"
  br i1 %"$gascmp_948", label %"$out_of_gas_949", label %"$have_gas_950"

"$out_of_gas_949":                                ; preds = %"$have_gas_945"
  call void @_out_of_gas()
  br label %"$have_gas_950"

"$have_gas_950":                                  ; preds = %"$out_of_gas_949", %"$have_gas_945"
  %"$consume_951" = sub i64 %"$gasrem_947", 1
  store i64 %"$consume_951", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_952", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 1, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_950"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_950"
  %"$consume_957" = sub i64 %"$gasrem_953", 1
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_959" = icmp ugt i64 1, %"$gasrem_958"
  br i1 %"$gascmp_959", label %"$out_of_gas_960", label %"$have_gas_961"

"$out_of_gas_960":                                ; preds = %"$have_gas_956"
  call void @_out_of_gas()
  br label %"$have_gas_961"

"$have_gas_961":                                  ; preds = %"$out_of_gas_960", %"$have_gas_956"
  %"$consume_962" = sub i64 %"$gasrem_958", 1
  store i64 %"$consume_962", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_963", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_961"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_961"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_967"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_974", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %val = alloca %TName_Option_String*, align 8
  %"$indices_buf_975_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_975_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_975_salloc_load", i64 32)
  %"$indices_buf_975_salloc" = bitcast i8* %"$indices_buf_975_salloc_salloc" to [32 x i8]*
  %"$indices_buf_975" = bitcast [32 x i8]* %"$indices_buf_975_salloc" to i8*
  %"$key1a_976" = load %String, %String* %key1a, align 8
  %"$indices_gep_977" = getelementptr i8, i8* %"$indices_buf_975", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_977" to %String*
  store %String %"$key1a_976", %String* %indices_cast, align 8
  %"$key2a_978" = load %String, %String* %key2a, align 8
  %"$indices_gep_979" = getelementptr i8, i8* %"$indices_buf_975", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_979" to %String*
  store %String %"$key2a_978", %String* %indices_cast1, align 8
  %"$execptr_load_981" = load i8*, i8** @_execptr, align 8
  %"$val_call_982" = call i8* @_fetch_field(i8* %"$execptr_load_981", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_980", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_975", i32 1)
  %"$val_983" = bitcast i8* %"$val_call_982" to %TName_Option_String*
  store %TName_Option_String* %"$val_983", %TName_Option_String** %val, align 8
  %"$val_984" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$$val_984_985" = bitcast %TName_Option_String* %"$val_984" to i8*
  %"$_literal_cost_call_986" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$val_984_985")
  %"$gasadd_987" = add i64 %"$_literal_cost_call_986", 0
  %"$gasadd_988" = add i64 %"$gasadd_987", 2
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 %"$gasadd_988", %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_972"
  %"$consume_993" = sub i64 %"$gasrem_989", %"$gasadd_988"
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 2, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 2
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %"$val_1000" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$val_tag_1001" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_1000", i32 0, i32 0
  %"$val_tag_1002" = load i8, i8* %"$val_tag_1001", align 1
  switch i8 %"$val_tag_1002", label %"$empty_default_1003" [
    i8 0, label %"$Some_1004"
    i8 1, label %"$None_1066"
  ]

"$Some_1004":                                     ; preds = %"$have_gas_997"
  %"$val_1005" = bitcast %TName_Option_String* %"$val_1000" to %CName_Some_String*
  %"$v_gep_1006" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_1005", i32 0, i32 1
  %"$v_load_1007" = load %String, %String* %"$v_gep_1006", align 8
  %v = alloca %String, align 8
  store %String %"$v_load_1007", %String* %v, align 8
  %"$gasrem_1008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1009" = icmp ugt i64 1, %"$gasrem_1008"
  br i1 %"$gascmp_1009", label %"$out_of_gas_1010", label %"$have_gas_1011"

"$out_of_gas_1010":                               ; preds = %"$Some_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1011"

"$have_gas_1011":                                 ; preds = %"$out_of_gas_1010", %"$Some_1004"
  %"$consume_1012" = sub i64 %"$gasrem_1008", 1
  store i64 %"$consume_1012", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_v_1013" = alloca %String, align 8
  %"$v_1014" = load %String, %String* %v, align 8
  store %String %"$v_1014", %String* %"$_literal_cost_v_1013", align 8
  %"$$_literal_cost_v_1013_1015" = bitcast %String* %"$_literal_cost_v_1013" to i8*
  %"$_literal_cost_call_1016" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1013_1015")
  %"$_literal_cost_s_1017" = alloca %String, align 8
  %"$s_1018" = load %String, %String* %s, align 8
  store %String %"$s_1018", %String* %"$_literal_cost_s_1017", align 8
  %"$$_literal_cost_s_1017_1019" = bitcast %String* %"$_literal_cost_s_1017" to i8*
  %"$_literal_cost_call_1020" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_1017_1019")
  %"$gasmin_1021" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1016", i64 %"$_literal_cost_call_1020")
  %"$gasrem_1022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1023" = icmp ugt i64 %"$gasmin_1021", %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1011"
  %"$consume_1026" = sub i64 %"$gasrem_1022", %"$gasmin_1021"
  store i64 %"$consume_1026", i64* @_gasrem, align 8
  %"$execptr_load_1027" = load i8*, i8** @_execptr, align 8
  %"$v_1028" = load %String, %String* %v, align 8
  %"$s_1029" = load %String, %String* %s, align 8
  %"$eq_call_1030" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1027", %String %"$v_1028", %String %"$s_1029")
  store %TName_Bool* %"$eq_call_1030", %TName_Bool** %t, align 8
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 2, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1025"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1025"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 2
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$t_1038" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_1039" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_1038", i32 0, i32 0
  %"$t_tag_1040" = load i8, i8* %"$t_tag_1039", align 1
  switch i8 %"$t_tag_1040", label %"$empty_default_1041" [
    i8 0, label %"$True_1042"
    i8 1, label %"$False_1044"
  ]

"$True_1042":                                     ; preds = %"$have_gas_1035"
  %"$t_1043" = bitcast %TName_Bool* %"$t_1038" to %CName_True*
  br label %"$matchsucc_1037"

"$False_1044":                                    ; preds = %"$have_gas_1035"
  %"$t_1045" = bitcast %TName_Bool* %"$t_1038" to %CName_False*
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$False_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$False_1044"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1049"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_1056", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1054"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  %"$fail_msg__origin_1062" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1062", align 1
  %"$fail_msg__sender_1063" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1063", align 1
  %"$tname_1064" = load %String, %String* %tname, align 8
  %"$m_1065" = load %String, %String* %m, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1062", [20 x i8]* %"$fail_msg__sender_1063", %String %"$tname_1064", %String %"$m_1065")
  br label %"$matchsucc_1037"

"$empty_default_1041":                            ; preds = %"$have_gas_1035"
  br label %"$matchsucc_1037"

"$matchsucc_1037":                                ; preds = %"$have_gas_1060", %"$True_1042", %"$empty_default_1041"
  br label %"$matchsucc_999"

"$None_1066":                                     ; preds = %"$have_gas_997"
  %"$val_1067" = bitcast %TName_Option_String* %"$val_1000" to %CName_None_String*
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %"$None_1066"
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %"$None_1066"
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %"$fail__origin_1073" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_1073", align 1
  %"$fail__sender_1074" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1074", align 1
  %"$tname_1075" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_1073", [20 x i8]* %"$fail__sender_1074", %String %"$tname_1075")
  br label %"$matchsucc_999"

"$empty_default_1003":                            ; preds = %"$have_gas_997"
  br label %"$matchsucc_999"

"$matchsucc_999":                                 ; preds = %"$have_gas_1071", %"$matchsucc_1037", %"$empty_default_1003"
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$matchsucc_999"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$matchsucc_999"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %l_m2 = alloca %Map_String_String*, align 8
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1079"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1084"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$execptr_load_1091" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1092" = call i8* @_new_empty_map(i8* %"$execptr_load_1091")
  %"$_new_empty_map_1093" = bitcast i8* %"$_new_empty_map_call_1092" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_1093", %Map_String_String** %e, align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1089"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1104", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1102"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1108"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1115", i32 0, i32 0), i32 3 }, %String* %s1, align 8
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 1, %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1113"
  %"$consume_1120" = sub i64 %"$gasrem_1116", 1
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$e_1121" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1121_1122" = bitcast %Map_String_String* %"$e_1121" to i8*
  %"$_lengthof_call_1123" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_1121_1122")
  %"$gasadd_1124" = add i64 1, %"$_lengthof_call_1123"
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 %"$gasadd_1124", %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1119"
  %"$consume_1129" = sub i64 %"$gasrem_1125", %"$gasadd_1124"
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %"$execptr_load_1130" = load i8*, i8** @_execptr, align 8
  %"$e_1131" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1131_1132" = bitcast %Map_String_String* %"$e_1131" to i8*
  %"$put_key2b_1133" = alloca %String, align 8
  %"$key2b_1134" = load %String, %String* %key2b, align 8
  store %String %"$key2b_1134", %String* %"$put_key2b_1133", align 8
  %"$$put_key2b_1133_1135" = bitcast %String* %"$put_key2b_1133" to i8*
  %"$put_s1_1136" = alloca %String, align 8
  %"$s1_1137" = load %String, %String* %s1, align 8
  store %String %"$s1_1137", %String* %"$put_s1_1136", align 8
  %"$$put_s1_1136_1138" = bitcast %String* %"$put_s1_1136" to i8*
  %"$put_call_1139" = call i8* @_put(i8* %"$execptr_load_1130", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_1131_1132", i8* %"$$put_key2b_1133_1135", i8* %"$$put_s1_1136_1138")
  %"$put_1140" = bitcast i8* %"$put_call_1139" to %Map_String_String*
  store %Map_String_String* %"$put_1140", %Map_String_String** %m1, align 8
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1128"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$have_gas_1144"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1151", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1149"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1149"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1155"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1162", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$m1_1163" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1163_1164" = bitcast %Map_String_String* %"$m1_1163" to i8*
  %"$_lengthof_call_1165" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_1163_1164")
  %"$gasadd_1166" = add i64 1, %"$_lengthof_call_1165"
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 %"$gasadd_1166", %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1160"
  %"$consume_1171" = sub i64 %"$gasrem_1167", %"$gasadd_1166"
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$execptr_load_1172" = load i8*, i8** @_execptr, align 8
  %"$m1_1173" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1173_1174" = bitcast %Map_String_String* %"$m1_1173" to i8*
  %"$put_key2c_1175" = alloca %String, align 8
  %"$key2c_1176" = load %String, %String* %key2c, align 8
  store %String %"$key2c_1176", %String* %"$put_key2c_1175", align 8
  %"$$put_key2c_1175_1177" = bitcast %String* %"$put_key2c_1175" to i8*
  %"$put_s2_1178" = alloca %String, align 8
  %"$s2_1179" = load %String, %String* %s2, align 8
  store %String %"$s2_1179", %String* %"$put_s2_1178", align 8
  %"$$put_s2_1178_1180" = bitcast %String* %"$put_s2_1178" to i8*
  %"$put_call_1181" = call i8* @_put(i8* %"$execptr_load_1172", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_1173_1174", i8* %"$$put_key2c_1175_1177", i8* %"$$put_s2_1178_1180")
  %"$put_1182" = bitcast i8* %"$put_call_1181" to %Map_String_String*
  store %Map_String_String* %"$put_1182", %Map_String_String** %l_m2, align 8
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1170"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1186"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1193", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$l_m2_1194" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$$l_m2_1194_1195" = bitcast %Map_String_String* %"$l_m2_1194" to i8*
  %"$_literal_cost_call_1196" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$l_m2_1194_1195")
  %"$gasadd_1197" = add i64 %"$_literal_cost_call_1196", 1
  %"$gasrem_1198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1199" = icmp ugt i64 %"$gasadd_1197", %"$gasrem_1198"
  br i1 %"$gascmp_1199", label %"$out_of_gas_1200", label %"$have_gas_1201"

"$out_of_gas_1200":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1201"

"$have_gas_1201":                                 ; preds = %"$out_of_gas_1200", %"$have_gas_1191"
  %"$consume_1202" = sub i64 %"$gasrem_1198", %"$gasadd_1197"
  store i64 %"$consume_1202", i64* @_gasrem, align 8
  %"$indices_buf_1203_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1203_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1203_salloc_load", i64 16)
  %"$indices_buf_1203_salloc" = bitcast i8* %"$indices_buf_1203_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1203" = bitcast [16 x i8]* %"$indices_buf_1203_salloc" to i8*
  %"$key1b_1204" = load %String, %String* %key1b, align 8
  %"$indices_gep_1205" = getelementptr i8, i8* %"$indices_buf_1203", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1205" to %String*
  store %String %"$key1b_1204", %String* %indices_cast2, align 8
  %"$execptr_load_1206" = load i8*, i8** @_execptr, align 8
  %"$l_m2_1208" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$update_value_1209" = bitcast %Map_String_String* %"$l_m2_1208" to i8*
  call void @_update_field(i8* %"$execptr_load_1206", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1207", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_1203", i8* %"$update_value_1209")
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_1211" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1212" = bitcast i8* %"$_amount_1211" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1212", align 8
  %"$_origin_1213" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1214" = bitcast i8* %"$_origin_1213" to [20 x i8]*
  %"$_sender_1215" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1216" = bitcast i8* %"$_sender_1215" to [20 x i8]*
  call void @"$t5_928"(%Uint128 %_amount, [20 x i8]* %"$_origin_1214", [20 x i8]* %"$_sender_1216")
  ret void
}

define internal void @"$t6_1217"(%Uint128 %_amount, [20 x i8]* %"$_origin_1218", [20 x i8]* %"$_sender_1219") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1218", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1219", align 1
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 1, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %entry
  %"$consume_1224" = sub i64 %"$gasrem_1220", 1
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1226" = icmp ugt i64 1, %"$gasrem_1225"
  br i1 %"$gascmp_1226", label %"$out_of_gas_1227", label %"$have_gas_1228"

"$out_of_gas_1227":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1228"

"$have_gas_1228":                                 ; preds = %"$out_of_gas_1227", %"$have_gas_1223"
  %"$consume_1229" = sub i64 %"$gasrem_1225", 1
  store i64 %"$consume_1229", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1230", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1228"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1234"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1241", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1243" = icmp ugt i64 1, %"$gasrem_1242"
  br i1 %"$gascmp_1243", label %"$out_of_gas_1244", label %"$have_gas_1245"

"$out_of_gas_1244":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1245"

"$have_gas_1245":                                 ; preds = %"$out_of_gas_1244", %"$have_gas_1239"
  %"$consume_1246" = sub i64 %"$gasrem_1242", 1
  store i64 %"$consume_1246", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1248" = icmp ugt i64 1, %"$gasrem_1247"
  br i1 %"$gascmp_1248", label %"$out_of_gas_1249", label %"$have_gas_1250"

"$out_of_gas_1249":                               ; preds = %"$have_gas_1245"
  call void @_out_of_gas()
  br label %"$have_gas_1250"

"$have_gas_1250":                                 ; preds = %"$out_of_gas_1249", %"$have_gas_1245"
  %"$consume_1251" = sub i64 %"$gasrem_1247", 1
  store i64 %"$consume_1251", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1252", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1253_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1253_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1253_salloc_load", i64 32)
  %"$indices_buf_1253_salloc" = bitcast i8* %"$indices_buf_1253_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1253" = bitcast [32 x i8]* %"$indices_buf_1253_salloc" to i8*
  %"$key1a_1254" = load %String, %String* %key1a, align 8
  %"$indices_gep_1255" = getelementptr i8, i8* %"$indices_buf_1253", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1255" to %String*
  store %String %"$key1a_1254", %String* %indices_cast, align 8
  %"$key2a_1256" = load %String, %String* %key2a, align 8
  %"$indices_gep_1257" = getelementptr i8, i8* %"$indices_buf_1253", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1257" to %String*
  store %String %"$key2a_1256", %String* %indices_cast1, align 8
  %"$execptr_load_1259" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1260" = call i8* @_fetch_field(i8* %"$execptr_load_1259", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1258", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1253", i32 1)
  %"$c1_1261" = bitcast i8* %"$c1_call_1260" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1261", %TName_Option_String** %c1, align 8
  %"$c1_1262" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1262_1263" = bitcast %TName_Option_String* %"$c1_1262" to i8*
  %"$_literal_cost_call_1264" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$c1_1262_1263")
  %"$gasadd_1265" = add i64 %"$_literal_cost_call_1264", 0
  %"$gasadd_1266" = add i64 %"$gasadd_1265", 2
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 %"$gasadd_1266", %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1250"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1250"
  %"$consume_1271" = sub i64 %"$gasrem_1267", %"$gasadd_1266"
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 2, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 2
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$c1_1278" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1279" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1278", i32 0, i32 0
  %"$c1_tag_1280" = load i8, i8* %"$c1_tag_1279", align 1
  switch i8 %"$c1_tag_1280", label %"$empty_default_1281" [
    i8 0, label %"$Some_1282"
    i8 1, label %"$None_1355"
  ]

"$Some_1282":                                     ; preds = %"$have_gas_1275"
  %"$c1_1283" = bitcast %TName_Option_String* %"$c1_1278" to %CName_Some_String*
  %"$c_gep_1284" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1283", i32 0, i32 1
  %"$c_load_1285" = load %String, %String* %"$c_gep_1284", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1285", %String* %c, align 8
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$Some_1282"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$Some_1282"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1292" = icmp ugt i64 1, %"$gasrem_1291"
  br i1 %"$gascmp_1292", label %"$out_of_gas_1293", label %"$have_gas_1294"

"$out_of_gas_1293":                               ; preds = %"$have_gas_1289"
  call void @_out_of_gas()
  br label %"$have_gas_1294"

"$have_gas_1294":                                 ; preds = %"$out_of_gas_1293", %"$have_gas_1289"
  %"$consume_1295" = sub i64 %"$gasrem_1291", 1
  store i64 %"$consume_1295", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1296", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1298" = icmp ugt i64 1, %"$gasrem_1297"
  br i1 %"$gascmp_1298", label %"$out_of_gas_1299", label %"$have_gas_1300"

"$out_of_gas_1299":                               ; preds = %"$have_gas_1294"
  call void @_out_of_gas()
  br label %"$have_gas_1300"

"$have_gas_1300":                                 ; preds = %"$out_of_gas_1299", %"$have_gas_1294"
  %"$consume_1301" = sub i64 %"$gasrem_1297", 1
  store i64 %"$consume_1301", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1302" = alloca %String, align 8
  %"$c_1303" = load %String, %String* %c, align 8
  store %String %"$c_1303", %String* %"$_literal_cost_c_1302", align 8
  %"$$_literal_cost_c_1302_1304" = bitcast %String* %"$_literal_cost_c_1302" to i8*
  %"$_literal_cost_call_1305" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1302_1304")
  %"$_literal_cost_v_1306" = alloca %String, align 8
  %"$v_1307" = load %String, %String* %v, align 8
  store %String %"$v_1307", %String* %"$_literal_cost_v_1306", align 8
  %"$$_literal_cost_v_1306_1308" = bitcast %String* %"$_literal_cost_v_1306" to i8*
  %"$_literal_cost_call_1309" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1306_1308")
  %"$gasmin_1310" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1305", i64 %"$_literal_cost_call_1309")
  %"$gasrem_1311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1312" = icmp ugt i64 %"$gasmin_1310", %"$gasrem_1311"
  br i1 %"$gascmp_1312", label %"$out_of_gas_1313", label %"$have_gas_1314"

"$out_of_gas_1313":                               ; preds = %"$have_gas_1300"
  call void @_out_of_gas()
  br label %"$have_gas_1314"

"$have_gas_1314":                                 ; preds = %"$out_of_gas_1313", %"$have_gas_1300"
  %"$consume_1315" = sub i64 %"$gasrem_1311", %"$gasmin_1310"
  store i64 %"$consume_1315", i64* @_gasrem, align 8
  %"$execptr_load_1316" = load i8*, i8** @_execptr, align 8
  %"$c_1317" = load %String, %String* %c, align 8
  %"$v_1318" = load %String, %String* %v, align 8
  %"$eq_call_1319" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1316", %String %"$c_1317", %String %"$v_1318")
  store %TName_Bool* %"$eq_call_1319", %TName_Bool** %eq, align 8
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 2, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$have_gas_1314"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$have_gas_1314"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 2
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %"$eq_1327" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1328" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1327", i32 0, i32 0
  %"$eq_tag_1329" = load i8, i8* %"$eq_tag_1328", align 1
  switch i8 %"$eq_tag_1329", label %"$empty_default_1330" [
    i8 0, label %"$True_1331"
    i8 1, label %"$False_1333"
  ]

"$True_1331":                                     ; preds = %"$have_gas_1324"
  %"$eq_1332" = bitcast %TName_Bool* %"$eq_1327" to %CName_True*
  br label %"$matchsucc_1326"

"$False_1333":                                    ; preds = %"$have_gas_1324"
  %"$eq_1334" = bitcast %TName_Bool* %"$eq_1327" to %CName_False*
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$False_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$False_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 1, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1338"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 1
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1345", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1347" = icmp ugt i64 1, %"$gasrem_1346"
  br i1 %"$gascmp_1347", label %"$out_of_gas_1348", label %"$have_gas_1349"

"$out_of_gas_1348":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1349"

"$have_gas_1349":                                 ; preds = %"$out_of_gas_1348", %"$have_gas_1343"
  %"$consume_1350" = sub i64 %"$gasrem_1346", 1
  store i64 %"$consume_1350", i64* @_gasrem, align 8
  %"$fail_msg__origin_1351" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1351", align 1
  %"$fail_msg__sender_1352" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1352", align 1
  %"$tname_1353" = load %String, %String* %tname, align 8
  %"$m_1354" = load %String, %String* %m, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1351", [20 x i8]* %"$fail_msg__sender_1352", %String %"$tname_1353", %String %"$m_1354")
  br label %"$matchsucc_1326"

"$empty_default_1330":                            ; preds = %"$have_gas_1324"
  br label %"$matchsucc_1326"

"$matchsucc_1326":                                ; preds = %"$have_gas_1349", %"$True_1331", %"$empty_default_1330"
  br label %"$matchsucc_1277"

"$None_1355":                                     ; preds = %"$have_gas_1275"
  %"$c1_1356" = bitcast %TName_Option_String* %"$c1_1278" to %CName_None_String*
  %"$gasrem_1357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1358" = icmp ugt i64 1, %"$gasrem_1357"
  br i1 %"$gascmp_1358", label %"$out_of_gas_1359", label %"$have_gas_1360"

"$out_of_gas_1359":                               ; preds = %"$None_1355"
  call void @_out_of_gas()
  br label %"$have_gas_1360"

"$have_gas_1360":                                 ; preds = %"$out_of_gas_1359", %"$None_1355"
  %"$consume_1361" = sub i64 %"$gasrem_1357", 1
  store i64 %"$consume_1361", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1363" = icmp ugt i64 1, %"$gasrem_1362"
  br i1 %"$gascmp_1363", label %"$out_of_gas_1364", label %"$have_gas_1365"

"$out_of_gas_1364":                               ; preds = %"$have_gas_1360"
  call void @_out_of_gas()
  br label %"$have_gas_1365"

"$have_gas_1365":                                 ; preds = %"$out_of_gas_1364", %"$have_gas_1360"
  %"$consume_1366" = sub i64 %"$gasrem_1362", 1
  store i64 %"$consume_1366", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1367", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %"$have_gas_1365"
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %"$have_gas_1365"
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  %"$fail_msg__origin_1373" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1373", align 1
  %"$fail_msg__sender_1374" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1374", align 1
  %"$tname_1375" = load %String, %String* %tname, align 8
  %"$m_1376" = load %String, %String* %m2, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1373", [20 x i8]* %"$fail_msg__sender_1374", %String %"$tname_1375", %String %"$m_1376")
  br label %"$matchsucc_1277"

"$empty_default_1281":                            ; preds = %"$have_gas_1275"
  br label %"$matchsucc_1277"

"$matchsucc_1277":                                ; preds = %"$have_gas_1371", %"$matchsucc_1326", %"$empty_default_1281"
  %"$gasrem_1377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1378" = icmp ugt i64 1, %"$gasrem_1377"
  br i1 %"$gascmp_1378", label %"$out_of_gas_1379", label %"$have_gas_1380"

"$out_of_gas_1379":                               ; preds = %"$matchsucc_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1380"

"$have_gas_1380":                                 ; preds = %"$out_of_gas_1379", %"$matchsucc_1277"
  %"$consume_1381" = sub i64 %"$gasrem_1377", 1
  store i64 %"$consume_1381", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1383" = icmp ugt i64 1, %"$gasrem_1382"
  br i1 %"$gascmp_1383", label %"$out_of_gas_1384", label %"$have_gas_1385"

"$out_of_gas_1384":                               ; preds = %"$have_gas_1380"
  call void @_out_of_gas()
  br label %"$have_gas_1385"

"$have_gas_1385":                                 ; preds = %"$out_of_gas_1384", %"$have_gas_1380"
  %"$consume_1386" = sub i64 %"$gasrem_1382", 1
  store i64 %"$consume_1386", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1387", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_1388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1389" = icmp ugt i64 1, %"$gasrem_1388"
  br i1 %"$gascmp_1389", label %"$out_of_gas_1390", label %"$have_gas_1391"

"$out_of_gas_1390":                               ; preds = %"$have_gas_1385"
  call void @_out_of_gas()
  br label %"$have_gas_1391"

"$have_gas_1391":                                 ; preds = %"$out_of_gas_1390", %"$have_gas_1385"
  %"$consume_1392" = sub i64 %"$gasrem_1388", 1
  store i64 %"$consume_1392", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1394" = icmp ugt i64 1, %"$gasrem_1393"
  br i1 %"$gascmp_1394", label %"$out_of_gas_1395", label %"$have_gas_1396"

"$out_of_gas_1395":                               ; preds = %"$have_gas_1391"
  call void @_out_of_gas()
  br label %"$have_gas_1396"

"$have_gas_1396":                                 ; preds = %"$out_of_gas_1395", %"$have_gas_1391"
  %"$consume_1397" = sub i64 %"$gasrem_1393", 1
  store i64 %"$consume_1397", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1398", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_2" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1399_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1399_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1399_salloc_load", i64 32)
  %"$indices_buf_1399_salloc" = bitcast i8* %"$indices_buf_1399_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1399" = bitcast [32 x i8]* %"$indices_buf_1399_salloc" to i8*
  %"$key1b_1400" = load %String, %String* %key1b, align 8
  %"$indices_gep_1401" = getelementptr i8, i8* %"$indices_buf_1399", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1401" to %String*
  store %String %"$key1b_1400", %String* %indices_cast3, align 8
  %"$key2b_1402" = load %String, %String* %key2b, align 8
  %"$indices_gep_1403" = getelementptr i8, i8* %"$indices_buf_1399", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_1403" to %String*
  store %String %"$key2b_1402", %String* %indices_cast4, align 8
  %"$execptr_load_1405" = load i8*, i8** @_execptr, align 8
  %"$$c1_2_call_1406" = call i8* @_fetch_field(i8* %"$execptr_load_1405", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1404", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1399", i32 1)
  %"$$c1_2_1407" = bitcast i8* %"$$c1_2_call_1406" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_1407", %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_1408" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$$c1_2_1408_1409" = bitcast %TName_Option_String* %"$$c1_2_1408" to i8*
  %"$_literal_cost_call_1410" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_2_1408_1409")
  %"$gasadd_1411" = add i64 %"$_literal_cost_call_1410", 0
  %"$gasadd_1412" = add i64 %"$gasadd_1411", 2
  %"$gasrem_1413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1414" = icmp ugt i64 %"$gasadd_1412", %"$gasrem_1413"
  br i1 %"$gascmp_1414", label %"$out_of_gas_1415", label %"$have_gas_1416"

"$out_of_gas_1415":                               ; preds = %"$have_gas_1396"
  call void @_out_of_gas()
  br label %"$have_gas_1416"

"$have_gas_1416":                                 ; preds = %"$out_of_gas_1415", %"$have_gas_1396"
  %"$consume_1417" = sub i64 %"$gasrem_1413", %"$gasadd_1412"
  store i64 %"$consume_1417", i64* @_gasrem, align 8
  %"$gasrem_1418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1419" = icmp ugt i64 2, %"$gasrem_1418"
  br i1 %"$gascmp_1419", label %"$out_of_gas_1420", label %"$have_gas_1421"

"$out_of_gas_1420":                               ; preds = %"$have_gas_1416"
  call void @_out_of_gas()
  br label %"$have_gas_1421"

"$have_gas_1421":                                 ; preds = %"$out_of_gas_1420", %"$have_gas_1416"
  %"$consume_1422" = sub i64 %"$gasrem_1418", 2
  store i64 %"$consume_1422", i64* @_gasrem, align 8
  %"$$c1_2_1424" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_tag_1425" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_1424", i32 0, i32 0
  %"$$c1_2_tag_1426" = load i8, i8* %"$$c1_2_tag_1425", align 1
  switch i8 %"$$c1_2_tag_1426", label %"$empty_default_1427" [
    i8 0, label %"$Some_1428"
    i8 1, label %"$None_1501"
  ]

"$Some_1428":                                     ; preds = %"$have_gas_1421"
  %"$$c1_2_1429" = bitcast %TName_Option_String* %"$$c1_2_1424" to %CName_Some_String*
  %"$c_gep_1430" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_1429", i32 0, i32 1
  %"$c_load_1431" = load %String, %String* %"$c_gep_1430", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_1431", %String* %c5, align 8
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$Some_1428"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$Some_1428"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_1437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1438" = icmp ugt i64 1, %"$gasrem_1437"
  br i1 %"$gascmp_1438", label %"$out_of_gas_1439", label %"$have_gas_1440"

"$out_of_gas_1439":                               ; preds = %"$have_gas_1435"
  call void @_out_of_gas()
  br label %"$have_gas_1440"

"$have_gas_1440":                                 ; preds = %"$out_of_gas_1439", %"$have_gas_1435"
  %"$consume_1441" = sub i64 %"$gasrem_1437", 1
  store i64 %"$consume_1441", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1442", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_1443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1444" = icmp ugt i64 1, %"$gasrem_1443"
  br i1 %"$gascmp_1444", label %"$out_of_gas_1445", label %"$have_gas_1446"

"$out_of_gas_1445":                               ; preds = %"$have_gas_1440"
  call void @_out_of_gas()
  br label %"$have_gas_1446"

"$have_gas_1446":                                 ; preds = %"$out_of_gas_1445", %"$have_gas_1440"
  %"$consume_1447" = sub i64 %"$gasrem_1443", 1
  store i64 %"$consume_1447", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1448" = alloca %String, align 8
  %"$c_1449" = load %String, %String* %c5, align 8
  store %String %"$c_1449", %String* %"$_literal_cost_c_1448", align 8
  %"$$_literal_cost_c_1448_1450" = bitcast %String* %"$_literal_cost_c_1448" to i8*
  %"$_literal_cost_call_1451" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1448_1450")
  %"$_literal_cost_v_1452" = alloca %String, align 8
  %"$v_1453" = load %String, %String* %v6, align 8
  store %String %"$v_1453", %String* %"$_literal_cost_v_1452", align 8
  %"$$_literal_cost_v_1452_1454" = bitcast %String* %"$_literal_cost_v_1452" to i8*
  %"$_literal_cost_call_1455" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1452_1454")
  %"$gasmin_1456" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1451", i64 %"$_literal_cost_call_1455")
  %"$gasrem_1457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1458" = icmp ugt i64 %"$gasmin_1456", %"$gasrem_1457"
  br i1 %"$gascmp_1458", label %"$out_of_gas_1459", label %"$have_gas_1460"

"$out_of_gas_1459":                               ; preds = %"$have_gas_1446"
  call void @_out_of_gas()
  br label %"$have_gas_1460"

"$have_gas_1460":                                 ; preds = %"$out_of_gas_1459", %"$have_gas_1446"
  %"$consume_1461" = sub i64 %"$gasrem_1457", %"$gasmin_1456"
  store i64 %"$consume_1461", i64* @_gasrem, align 8
  %"$execptr_load_1462" = load i8*, i8** @_execptr, align 8
  %"$c_1463" = load %String, %String* %c5, align 8
  %"$v_1464" = load %String, %String* %v6, align 8
  %"$eq_call_1465" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1462", %String %"$c_1463", %String %"$v_1464")
  store %TName_Bool* %"$eq_call_1465", %TName_Bool** %eq7, align 8
  %"$gasrem_1467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1468" = icmp ugt i64 2, %"$gasrem_1467"
  br i1 %"$gascmp_1468", label %"$out_of_gas_1469", label %"$have_gas_1470"

"$out_of_gas_1469":                               ; preds = %"$have_gas_1460"
  call void @_out_of_gas()
  br label %"$have_gas_1470"

"$have_gas_1470":                                 ; preds = %"$out_of_gas_1469", %"$have_gas_1460"
  %"$consume_1471" = sub i64 %"$gasrem_1467", 2
  store i64 %"$consume_1471", i64* @_gasrem, align 8
  %"$eq_1473" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_1474" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1473", i32 0, i32 0
  %"$eq_tag_1475" = load i8, i8* %"$eq_tag_1474", align 1
  switch i8 %"$eq_tag_1475", label %"$empty_default_1476" [
    i8 0, label %"$True_1477"
    i8 1, label %"$False_1479"
  ]

"$True_1477":                                     ; preds = %"$have_gas_1470"
  %"$eq_1478" = bitcast %TName_Bool* %"$eq_1473" to %CName_True*
  br label %"$matchsucc_1472"

"$False_1479":                                    ; preds = %"$have_gas_1470"
  %"$eq_1480" = bitcast %TName_Bool* %"$eq_1473" to %CName_False*
  %"$gasrem_1481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1482" = icmp ugt i64 1, %"$gasrem_1481"
  br i1 %"$gascmp_1482", label %"$out_of_gas_1483", label %"$have_gas_1484"

"$out_of_gas_1483":                               ; preds = %"$False_1479"
  call void @_out_of_gas()
  br label %"$have_gas_1484"

"$have_gas_1484":                                 ; preds = %"$out_of_gas_1483", %"$False_1479"
  %"$consume_1485" = sub i64 %"$gasrem_1481", 1
  store i64 %"$consume_1485", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_1486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1487" = icmp ugt i64 1, %"$gasrem_1486"
  br i1 %"$gascmp_1487", label %"$out_of_gas_1488", label %"$have_gas_1489"

"$out_of_gas_1488":                               ; preds = %"$have_gas_1484"
  call void @_out_of_gas()
  br label %"$have_gas_1489"

"$have_gas_1489":                                 ; preds = %"$out_of_gas_1488", %"$have_gas_1484"
  %"$consume_1490" = sub i64 %"$gasrem_1486", 1
  store i64 %"$consume_1490", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1491", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_1492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1493" = icmp ugt i64 1, %"$gasrem_1492"
  br i1 %"$gascmp_1493", label %"$out_of_gas_1494", label %"$have_gas_1495"

"$out_of_gas_1494":                               ; preds = %"$have_gas_1489"
  call void @_out_of_gas()
  br label %"$have_gas_1495"

"$have_gas_1495":                                 ; preds = %"$out_of_gas_1494", %"$have_gas_1489"
  %"$consume_1496" = sub i64 %"$gasrem_1492", 1
  store i64 %"$consume_1496", i64* @_gasrem, align 8
  %"$fail_msg__origin_1497" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1497", align 1
  %"$fail_msg__sender_1498" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1498", align 1
  %"$tname_1499" = load %String, %String* %tname, align 8
  %"$m_1500" = load %String, %String* %m8, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1497", [20 x i8]* %"$fail_msg__sender_1498", %String %"$tname_1499", %String %"$m_1500")
  br label %"$matchsucc_1472"

"$empty_default_1476":                            ; preds = %"$have_gas_1470"
  br label %"$matchsucc_1472"

"$matchsucc_1472":                                ; preds = %"$have_gas_1495", %"$True_1477", %"$empty_default_1476"
  br label %"$matchsucc_1423"

"$None_1501":                                     ; preds = %"$have_gas_1421"
  %"$$c1_2_1502" = bitcast %TName_Option_String* %"$$c1_2_1424" to %CName_None_String*
  %"$gasrem_1503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1504" = icmp ugt i64 1, %"$gasrem_1503"
  br i1 %"$gascmp_1504", label %"$out_of_gas_1505", label %"$have_gas_1506"

"$out_of_gas_1505":                               ; preds = %"$None_1501"
  call void @_out_of_gas()
  br label %"$have_gas_1506"

"$have_gas_1506":                                 ; preds = %"$out_of_gas_1505", %"$None_1501"
  %"$consume_1507" = sub i64 %"$gasrem_1503", 1
  store i64 %"$consume_1507", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_1508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1509" = icmp ugt i64 1, %"$gasrem_1508"
  br i1 %"$gascmp_1509", label %"$out_of_gas_1510", label %"$have_gas_1511"

"$out_of_gas_1510":                               ; preds = %"$have_gas_1506"
  call void @_out_of_gas()
  br label %"$have_gas_1511"

"$have_gas_1511":                                 ; preds = %"$out_of_gas_1510", %"$have_gas_1506"
  %"$consume_1512" = sub i64 %"$gasrem_1508", 1
  store i64 %"$consume_1512", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1513", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_1514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1515" = icmp ugt i64 1, %"$gasrem_1514"
  br i1 %"$gascmp_1515", label %"$out_of_gas_1516", label %"$have_gas_1517"

"$out_of_gas_1516":                               ; preds = %"$have_gas_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1517"

"$have_gas_1517":                                 ; preds = %"$out_of_gas_1516", %"$have_gas_1511"
  %"$consume_1518" = sub i64 %"$gasrem_1514", 1
  store i64 %"$consume_1518", i64* @_gasrem, align 8
  %"$fail_msg__origin_1519" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1519", align 1
  %"$fail_msg__sender_1520" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1520", align 1
  %"$tname_1521" = load %String, %String* %tname, align 8
  %"$m_1522" = load %String, %String* %m9, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1519", [20 x i8]* %"$fail_msg__sender_1520", %String %"$tname_1521", %String %"$m_1522")
  br label %"$matchsucc_1423"

"$empty_default_1427":                            ; preds = %"$have_gas_1421"
  br label %"$matchsucc_1423"

"$matchsucc_1423":                                ; preds = %"$have_gas_1517", %"$matchsucc_1472", %"$empty_default_1427"
  %"$gasrem_1523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1524" = icmp ugt i64 1, %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %"$matchsucc_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %"$matchsucc_1423"
  %"$consume_1527" = sub i64 %"$gasrem_1523", 1
  store i64 %"$consume_1527", i64* @_gasrem, align 8
  %"$key1b_3" = alloca %String, align 8
  %"$gasrem_1528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1529" = icmp ugt i64 1, %"$gasrem_1528"
  br i1 %"$gascmp_1529", label %"$out_of_gas_1530", label %"$have_gas_1531"

"$out_of_gas_1530":                               ; preds = %"$have_gas_1526"
  call void @_out_of_gas()
  br label %"$have_gas_1531"

"$have_gas_1531":                                 ; preds = %"$out_of_gas_1530", %"$have_gas_1526"
  %"$consume_1532" = sub i64 %"$gasrem_1528", 1
  store i64 %"$consume_1532", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1533", i32 0, i32 0), i32 5 }, %String* %"$key1b_3", align 8
  %"$gasrem_1534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1535" = icmp ugt i64 1, %"$gasrem_1534"
  br i1 %"$gascmp_1535", label %"$out_of_gas_1536", label %"$have_gas_1537"

"$out_of_gas_1536":                               ; preds = %"$have_gas_1531"
  call void @_out_of_gas()
  br label %"$have_gas_1537"

"$have_gas_1537":                                 ; preds = %"$out_of_gas_1536", %"$have_gas_1531"
  %"$consume_1538" = sub i64 %"$gasrem_1534", 1
  store i64 %"$consume_1538", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1540" = icmp ugt i64 1, %"$gasrem_1539"
  br i1 %"$gascmp_1540", label %"$out_of_gas_1541", label %"$have_gas_1542"

"$out_of_gas_1541":                               ; preds = %"$have_gas_1537"
  call void @_out_of_gas()
  br label %"$have_gas_1542"

"$have_gas_1542":                                 ; preds = %"$out_of_gas_1541", %"$have_gas_1537"
  %"$consume_1543" = sub i64 %"$gasrem_1539", 1
  store i64 %"$consume_1543", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1544", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_4" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1545_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1545_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1545_salloc_load", i64 32)
  %"$indices_buf_1545_salloc" = bitcast i8* %"$indices_buf_1545_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1545" = bitcast [32 x i8]* %"$indices_buf_1545_salloc" to i8*
  %"$$key1b_3_1546" = load %String, %String* %"$key1b_3", align 8
  %"$indices_gep_1547" = getelementptr i8, i8* %"$indices_buf_1545", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_1547" to %String*
  store %String %"$$key1b_3_1546", %String* %indices_cast10, align 8
  %"$key2c_1548" = load %String, %String* %key2c, align 8
  %"$indices_gep_1549" = getelementptr i8, i8* %"$indices_buf_1545", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_1549" to %String*
  store %String %"$key2c_1548", %String* %indices_cast11, align 8
  %"$execptr_load_1551" = load i8*, i8** @_execptr, align 8
  %"$$c1_4_call_1552" = call i8* @_fetch_field(i8* %"$execptr_load_1551", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1550", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1545", i32 1)
  %"$$c1_4_1553" = bitcast i8* %"$$c1_4_call_1552" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_4_1553", %TName_Option_String** %"$c1_4", align 8
  %"$$c1_4_1554" = load %TName_Option_String*, %TName_Option_String** %"$c1_4", align 8
  %"$$$c1_4_1554_1555" = bitcast %TName_Option_String* %"$$c1_4_1554" to i8*
  %"$_literal_cost_call_1556" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_4_1554_1555")
  %"$gasadd_1557" = add i64 %"$_literal_cost_call_1556", 0
  %"$gasadd_1558" = add i64 %"$gasadd_1557", 2
  %"$gasrem_1559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1560" = icmp ugt i64 %"$gasadd_1558", %"$gasrem_1559"
  br i1 %"$gascmp_1560", label %"$out_of_gas_1561", label %"$have_gas_1562"

"$out_of_gas_1561":                               ; preds = %"$have_gas_1542"
  call void @_out_of_gas()
  br label %"$have_gas_1562"

"$have_gas_1562":                                 ; preds = %"$out_of_gas_1561", %"$have_gas_1542"
  %"$consume_1563" = sub i64 %"$gasrem_1559", %"$gasadd_1558"
  store i64 %"$consume_1563", i64* @_gasrem, align 8
  %"$gasrem_1564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1565" = icmp ugt i64 2, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$have_gas_1562"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$have_gas_1562"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 2
  store i64 %"$consume_1568", i64* @_gasrem, align 8
  %"$$c1_4_1570" = load %TName_Option_String*, %TName_Option_String** %"$c1_4", align 8
  %"$$c1_4_tag_1571" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_4_1570", i32 0, i32 0
  %"$$c1_4_tag_1572" = load i8, i8* %"$$c1_4_tag_1571", align 1
  switch i8 %"$$c1_4_tag_1572", label %"$empty_default_1573" [
    i8 0, label %"$Some_1574"
    i8 1, label %"$None_1647"
  ]

"$Some_1574":                                     ; preds = %"$have_gas_1567"
  %"$$c1_4_1575" = bitcast %TName_Option_String* %"$$c1_4_1570" to %CName_Some_String*
  %"$c_gep_1576" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_4_1575", i32 0, i32 1
  %"$c_load_1577" = load %String, %String* %"$c_gep_1576", align 8
  %c12 = alloca %String, align 8
  store %String %"$c_load_1577", %String* %c12, align 8
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$Some_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$Some_1574"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  %v13 = alloca %String, align 8
  %"$gasrem_1583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1584" = icmp ugt i64 1, %"$gasrem_1583"
  br i1 %"$gascmp_1584", label %"$out_of_gas_1585", label %"$have_gas_1586"

"$out_of_gas_1585":                               ; preds = %"$have_gas_1581"
  call void @_out_of_gas()
  br label %"$have_gas_1586"

"$have_gas_1586":                                 ; preds = %"$out_of_gas_1585", %"$have_gas_1581"
  %"$consume_1587" = sub i64 %"$gasrem_1583", 1
  store i64 %"$consume_1587", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1588", i32 0, i32 0), i32 3 }, %String* %v13, align 8
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1586"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1586"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  %eq14 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1594" = alloca %String, align 8
  %"$c_1595" = load %String, %String* %c12, align 8
  store %String %"$c_1595", %String* %"$_literal_cost_c_1594", align 8
  %"$$_literal_cost_c_1594_1596" = bitcast %String* %"$_literal_cost_c_1594" to i8*
  %"$_literal_cost_call_1597" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1594_1596")
  %"$_literal_cost_v_1598" = alloca %String, align 8
  %"$v_1599" = load %String, %String* %v13, align 8
  store %String %"$v_1599", %String* %"$_literal_cost_v_1598", align 8
  %"$$_literal_cost_v_1598_1600" = bitcast %String* %"$_literal_cost_v_1598" to i8*
  %"$_literal_cost_call_1601" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1598_1600")
  %"$gasmin_1602" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1597", i64 %"$_literal_cost_call_1601")
  %"$gasrem_1603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1604" = icmp ugt i64 %"$gasmin_1602", %"$gasrem_1603"
  br i1 %"$gascmp_1604", label %"$out_of_gas_1605", label %"$have_gas_1606"

"$out_of_gas_1605":                               ; preds = %"$have_gas_1592"
  call void @_out_of_gas()
  br label %"$have_gas_1606"

"$have_gas_1606":                                 ; preds = %"$out_of_gas_1605", %"$have_gas_1592"
  %"$consume_1607" = sub i64 %"$gasrem_1603", %"$gasmin_1602"
  store i64 %"$consume_1607", i64* @_gasrem, align 8
  %"$execptr_load_1608" = load i8*, i8** @_execptr, align 8
  %"$c_1609" = load %String, %String* %c12, align 8
  %"$v_1610" = load %String, %String* %v13, align 8
  %"$eq_call_1611" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1608", %String %"$c_1609", %String %"$v_1610")
  store %TName_Bool* %"$eq_call_1611", %TName_Bool** %eq14, align 8
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 2, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1606"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1606"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 2
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %"$eq_1619" = load %TName_Bool*, %TName_Bool** %eq14, align 8
  %"$eq_tag_1620" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1619", i32 0, i32 0
  %"$eq_tag_1621" = load i8, i8* %"$eq_tag_1620", align 1
  switch i8 %"$eq_tag_1621", label %"$empty_default_1622" [
    i8 0, label %"$True_1623"
    i8 1, label %"$False_1625"
  ]

"$True_1623":                                     ; preds = %"$have_gas_1616"
  %"$eq_1624" = bitcast %TName_Bool* %"$eq_1619" to %CName_True*
  br label %"$matchsucc_1618"

"$False_1625":                                    ; preds = %"$have_gas_1616"
  %"$eq_1626" = bitcast %TName_Bool* %"$eq_1619" to %CName_False*
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 1, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %"$False_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %"$False_1625"
  %"$consume_1631" = sub i64 %"$gasrem_1627", 1
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  %m15 = alloca %String, align 8
  %"$gasrem_1632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1633" = icmp ugt i64 1, %"$gasrem_1632"
  br i1 %"$gascmp_1633", label %"$out_of_gas_1634", label %"$have_gas_1635"

"$out_of_gas_1634":                               ; preds = %"$have_gas_1630"
  call void @_out_of_gas()
  br label %"$have_gas_1635"

"$have_gas_1635":                                 ; preds = %"$out_of_gas_1634", %"$have_gas_1630"
  %"$consume_1636" = sub i64 %"$gasrem_1632", 1
  store i64 %"$consume_1636", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1637", i32 0, i32 0), i32 31 }, %String* %m15, align 8
  %"$gasrem_1638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1639" = icmp ugt i64 1, %"$gasrem_1638"
  br i1 %"$gascmp_1639", label %"$out_of_gas_1640", label %"$have_gas_1641"

"$out_of_gas_1640":                               ; preds = %"$have_gas_1635"
  call void @_out_of_gas()
  br label %"$have_gas_1641"

"$have_gas_1641":                                 ; preds = %"$out_of_gas_1640", %"$have_gas_1635"
  %"$consume_1642" = sub i64 %"$gasrem_1638", 1
  store i64 %"$consume_1642", i64* @_gasrem, align 8
  %"$fail_msg__origin_1643" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1643", align 1
  %"$fail_msg__sender_1644" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1644", align 1
  %"$tname_1645" = load %String, %String* %tname, align 8
  %"$m_1646" = load %String, %String* %m15, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1643", [20 x i8]* %"$fail_msg__sender_1644", %String %"$tname_1645", %String %"$m_1646")
  br label %"$matchsucc_1618"

"$empty_default_1622":                            ; preds = %"$have_gas_1616"
  br label %"$matchsucc_1618"

"$matchsucc_1618":                                ; preds = %"$have_gas_1641", %"$True_1623", %"$empty_default_1622"
  br label %"$matchsucc_1569"

"$None_1647":                                     ; preds = %"$have_gas_1567"
  %"$$c1_4_1648" = bitcast %TName_Option_String* %"$$c1_4_1570" to %CName_None_String*
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$None_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$None_1647"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %m16 = alloca %String, align 8
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 1, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1652"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 1
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1659", i32 0, i32 0), i32 21 }, %String* %m16, align 8
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1657"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %"$fail_msg__origin_1665" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1665", align 1
  %"$fail_msg__sender_1666" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1666", align 1
  %"$tname_1667" = load %String, %String* %tname, align 8
  %"$m_1668" = load %String, %String* %m16, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1665", [20 x i8]* %"$fail_msg__sender_1666", %String %"$tname_1667", %String %"$m_1668")
  br label %"$matchsucc_1569"

"$empty_default_1573":                            ; preds = %"$have_gas_1567"
  br label %"$matchsucc_1569"

"$matchsucc_1569":                                ; preds = %"$have_gas_1663", %"$matchsucc_1618", %"$empty_default_1573"
  %"$gasrem_1669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1670" = icmp ugt i64 1, %"$gasrem_1669"
  br i1 %"$gascmp_1670", label %"$out_of_gas_1671", label %"$have_gas_1672"

"$out_of_gas_1671":                               ; preds = %"$matchsucc_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1672"

"$have_gas_1672":                                 ; preds = %"$out_of_gas_1671", %"$matchsucc_1569"
  %"$consume_1673" = sub i64 %"$gasrem_1669", 1
  store i64 %"$consume_1673", i64* @_gasrem, align 8
  %"$indices_buf_1674_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1674_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1674_salloc_load", i64 16)
  %"$indices_buf_1674_salloc" = bitcast i8* %"$indices_buf_1674_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1674" = bitcast [16 x i8]* %"$indices_buf_1674_salloc" to i8*
  %"$$key1b_3_1675" = load %String, %String* %"$key1b_3", align 8
  %"$indices_gep_1676" = getelementptr i8, i8* %"$indices_buf_1674", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_1676" to %String*
  store %String %"$$key1b_3_1675", %String* %indices_cast17, align 8
  %"$execptr_load_1677" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_1677", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1678", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_1674", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_1680" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1681" = bitcast i8* %"$_amount_1680" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1681", align 8
  %"$_origin_1682" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1683" = bitcast i8* %"$_origin_1682" to [20 x i8]*
  %"$_sender_1684" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1685" = bitcast i8* %"$_sender_1684" to [20 x i8]*
  call void @"$t6_1217"(%Uint128 %_amount, [20 x i8]* %"$_origin_1683", [20 x i8]* %"$_sender_1685")
  ret void
}

define internal void @"$t7_1686"(%Uint128 %_amount, [20 x i8]* %"$_origin_1687", [20 x i8]* %"$_sender_1688") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1687", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1688", align 1
  %"$gasrem_1689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1690" = icmp ugt i64 1, %"$gasrem_1689"
  br i1 %"$gascmp_1690", label %"$out_of_gas_1691", label %"$have_gas_1692"

"$out_of_gas_1691":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1692"

"$have_gas_1692":                                 ; preds = %"$out_of_gas_1691", %entry
  %"$consume_1693" = sub i64 %"$gasrem_1689", 1
  store i64 %"$consume_1693", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1695" = icmp ugt i64 1, %"$gasrem_1694"
  br i1 %"$gascmp_1695", label %"$out_of_gas_1696", label %"$have_gas_1697"

"$out_of_gas_1696":                               ; preds = %"$have_gas_1692"
  call void @_out_of_gas()
  br label %"$have_gas_1697"

"$have_gas_1697":                                 ; preds = %"$out_of_gas_1696", %"$have_gas_1692"
  %"$consume_1698" = sub i64 %"$gasrem_1694", 1
  store i64 %"$consume_1698", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1699", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1701" = icmp ugt i64 1, %"$gasrem_1700"
  br i1 %"$gascmp_1701", label %"$out_of_gas_1702", label %"$have_gas_1703"

"$out_of_gas_1702":                               ; preds = %"$have_gas_1697"
  call void @_out_of_gas()
  br label %"$have_gas_1703"

"$have_gas_1703":                                 ; preds = %"$out_of_gas_1702", %"$have_gas_1697"
  %"$consume_1704" = sub i64 %"$gasrem_1700", 1
  store i64 %"$consume_1704", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1706" = icmp ugt i64 1, %"$gasrem_1705"
  br i1 %"$gascmp_1706", label %"$out_of_gas_1707", label %"$have_gas_1708"

"$out_of_gas_1707":                               ; preds = %"$have_gas_1703"
  call void @_out_of_gas()
  br label %"$have_gas_1708"

"$have_gas_1708":                                 ; preds = %"$out_of_gas_1707", %"$have_gas_1703"
  %"$consume_1709" = sub i64 %"$gasrem_1705", 1
  store i64 %"$consume_1709", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1710", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1712" = icmp ugt i64 1, %"$gasrem_1711"
  br i1 %"$gascmp_1712", label %"$out_of_gas_1713", label %"$have_gas_1714"

"$out_of_gas_1713":                               ; preds = %"$have_gas_1708"
  call void @_out_of_gas()
  br label %"$have_gas_1714"

"$have_gas_1714":                                 ; preds = %"$out_of_gas_1713", %"$have_gas_1708"
  %"$consume_1715" = sub i64 %"$gasrem_1711", 1
  store i64 %"$consume_1715", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1717" = icmp ugt i64 1, %"$gasrem_1716"
  br i1 %"$gascmp_1717", label %"$out_of_gas_1718", label %"$have_gas_1719"

"$out_of_gas_1718":                               ; preds = %"$have_gas_1714"
  call void @_out_of_gas()
  br label %"$have_gas_1719"

"$have_gas_1719":                                 ; preds = %"$out_of_gas_1718", %"$have_gas_1714"
  %"$consume_1720" = sub i64 %"$gasrem_1716", 1
  store i64 %"$consume_1720", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1721", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1722_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1722_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1722_salloc_load", i64 32)
  %"$indices_buf_1722_salloc" = bitcast i8* %"$indices_buf_1722_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1722" = bitcast [32 x i8]* %"$indices_buf_1722_salloc" to i8*
  %"$key1a_1723" = load %String, %String* %key1a, align 8
  %"$indices_gep_1724" = getelementptr i8, i8* %"$indices_buf_1722", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1724" to %String*
  store %String %"$key1a_1723", %String* %indices_cast, align 8
  %"$key2a_1725" = load %String, %String* %key2a, align 8
  %"$indices_gep_1726" = getelementptr i8, i8* %"$indices_buf_1722", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1726" to %String*
  store %String %"$key2a_1725", %String* %indices_cast1, align 8
  %"$execptr_load_1728" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1729" = call i8* @_fetch_field(i8* %"$execptr_load_1728", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1727", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1722", i32 1)
  %"$c1_1730" = bitcast i8* %"$c1_call_1729" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1730", %TName_Option_String** %c1, align 8
  %"$c1_1731" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1731_1732" = bitcast %TName_Option_String* %"$c1_1731" to i8*
  %"$_literal_cost_call_1733" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$c1_1731_1732")
  %"$gasadd_1734" = add i64 %"$_literal_cost_call_1733", 0
  %"$gasadd_1735" = add i64 %"$gasadd_1734", 2
  %"$gasrem_1736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1737" = icmp ugt i64 %"$gasadd_1735", %"$gasrem_1736"
  br i1 %"$gascmp_1737", label %"$out_of_gas_1738", label %"$have_gas_1739"

"$out_of_gas_1738":                               ; preds = %"$have_gas_1719"
  call void @_out_of_gas()
  br label %"$have_gas_1739"

"$have_gas_1739":                                 ; preds = %"$out_of_gas_1738", %"$have_gas_1719"
  %"$consume_1740" = sub i64 %"$gasrem_1736", %"$gasadd_1735"
  store i64 %"$consume_1740", i64* @_gasrem, align 8
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 2, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$have_gas_1739"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$have_gas_1739"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 2
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %"$c1_1747" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1748" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1747", i32 0, i32 0
  %"$c1_tag_1749" = load i8, i8* %"$c1_tag_1748", align 1
  switch i8 %"$c1_tag_1749", label %"$empty_default_1750" [
    i8 0, label %"$Some_1751"
    i8 1, label %"$None_1824"
  ]

"$Some_1751":                                     ; preds = %"$have_gas_1744"
  %"$c1_1752" = bitcast %TName_Option_String* %"$c1_1747" to %CName_Some_String*
  %"$c_gep_1753" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1752", i32 0, i32 1
  %"$c_load_1754" = load %String, %String* %"$c_gep_1753", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1754", %String* %c, align 8
  %"$gasrem_1755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1756" = icmp ugt i64 1, %"$gasrem_1755"
  br i1 %"$gascmp_1756", label %"$out_of_gas_1757", label %"$have_gas_1758"

"$out_of_gas_1757":                               ; preds = %"$Some_1751"
  call void @_out_of_gas()
  br label %"$have_gas_1758"

"$have_gas_1758":                                 ; preds = %"$out_of_gas_1757", %"$Some_1751"
  %"$consume_1759" = sub i64 %"$gasrem_1755", 1
  store i64 %"$consume_1759", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1761" = icmp ugt i64 1, %"$gasrem_1760"
  br i1 %"$gascmp_1761", label %"$out_of_gas_1762", label %"$have_gas_1763"

"$out_of_gas_1762":                               ; preds = %"$have_gas_1758"
  call void @_out_of_gas()
  br label %"$have_gas_1763"

"$have_gas_1763":                                 ; preds = %"$out_of_gas_1762", %"$have_gas_1758"
  %"$consume_1764" = sub i64 %"$gasrem_1760", 1
  store i64 %"$consume_1764", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1765", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1767" = icmp ugt i64 1, %"$gasrem_1766"
  br i1 %"$gascmp_1767", label %"$out_of_gas_1768", label %"$have_gas_1769"

"$out_of_gas_1768":                               ; preds = %"$have_gas_1763"
  call void @_out_of_gas()
  br label %"$have_gas_1769"

"$have_gas_1769":                                 ; preds = %"$out_of_gas_1768", %"$have_gas_1763"
  %"$consume_1770" = sub i64 %"$gasrem_1766", 1
  store i64 %"$consume_1770", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1771" = alloca %String, align 8
  %"$c_1772" = load %String, %String* %c, align 8
  store %String %"$c_1772", %String* %"$_literal_cost_c_1771", align 8
  %"$$_literal_cost_c_1771_1773" = bitcast %String* %"$_literal_cost_c_1771" to i8*
  %"$_literal_cost_call_1774" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1771_1773")
  %"$_literal_cost_v_1775" = alloca %String, align 8
  %"$v_1776" = load %String, %String* %v, align 8
  store %String %"$v_1776", %String* %"$_literal_cost_v_1775", align 8
  %"$$_literal_cost_v_1775_1777" = bitcast %String* %"$_literal_cost_v_1775" to i8*
  %"$_literal_cost_call_1778" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1775_1777")
  %"$gasmin_1779" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1774", i64 %"$_literal_cost_call_1778")
  %"$gasrem_1780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1781" = icmp ugt i64 %"$gasmin_1779", %"$gasrem_1780"
  br i1 %"$gascmp_1781", label %"$out_of_gas_1782", label %"$have_gas_1783"

"$out_of_gas_1782":                               ; preds = %"$have_gas_1769"
  call void @_out_of_gas()
  br label %"$have_gas_1783"

"$have_gas_1783":                                 ; preds = %"$out_of_gas_1782", %"$have_gas_1769"
  %"$consume_1784" = sub i64 %"$gasrem_1780", %"$gasmin_1779"
  store i64 %"$consume_1784", i64* @_gasrem, align 8
  %"$execptr_load_1785" = load i8*, i8** @_execptr, align 8
  %"$c_1786" = load %String, %String* %c, align 8
  %"$v_1787" = load %String, %String* %v, align 8
  %"$eq_call_1788" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1785", %String %"$c_1786", %String %"$v_1787")
  store %TName_Bool* %"$eq_call_1788", %TName_Bool** %eq, align 8
  %"$gasrem_1790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1791" = icmp ugt i64 2, %"$gasrem_1790"
  br i1 %"$gascmp_1791", label %"$out_of_gas_1792", label %"$have_gas_1793"

"$out_of_gas_1792":                               ; preds = %"$have_gas_1783"
  call void @_out_of_gas()
  br label %"$have_gas_1793"

"$have_gas_1793":                                 ; preds = %"$out_of_gas_1792", %"$have_gas_1783"
  %"$consume_1794" = sub i64 %"$gasrem_1790", 2
  store i64 %"$consume_1794", i64* @_gasrem, align 8
  %"$eq_1796" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1797" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1796", i32 0, i32 0
  %"$eq_tag_1798" = load i8, i8* %"$eq_tag_1797", align 1
  switch i8 %"$eq_tag_1798", label %"$empty_default_1799" [
    i8 0, label %"$True_1800"
    i8 1, label %"$False_1802"
  ]

"$True_1800":                                     ; preds = %"$have_gas_1793"
  %"$eq_1801" = bitcast %TName_Bool* %"$eq_1796" to %CName_True*
  br label %"$matchsucc_1795"

"$False_1802":                                    ; preds = %"$have_gas_1793"
  %"$eq_1803" = bitcast %TName_Bool* %"$eq_1796" to %CName_False*
  %"$gasrem_1804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1805" = icmp ugt i64 1, %"$gasrem_1804"
  br i1 %"$gascmp_1805", label %"$out_of_gas_1806", label %"$have_gas_1807"

"$out_of_gas_1806":                               ; preds = %"$False_1802"
  call void @_out_of_gas()
  br label %"$have_gas_1807"

"$have_gas_1807":                                 ; preds = %"$out_of_gas_1806", %"$False_1802"
  %"$consume_1808" = sub i64 %"$gasrem_1804", 1
  store i64 %"$consume_1808", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 1, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1807"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1807"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 1
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1814", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1816" = icmp ugt i64 1, %"$gasrem_1815"
  br i1 %"$gascmp_1816", label %"$out_of_gas_1817", label %"$have_gas_1818"

"$out_of_gas_1817":                               ; preds = %"$have_gas_1812"
  call void @_out_of_gas()
  br label %"$have_gas_1818"

"$have_gas_1818":                                 ; preds = %"$out_of_gas_1817", %"$have_gas_1812"
  %"$consume_1819" = sub i64 %"$gasrem_1815", 1
  store i64 %"$consume_1819", i64* @_gasrem, align 8
  %"$fail_msg__origin_1820" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1820", align 1
  %"$fail_msg__sender_1821" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1821", align 1
  %"$tname_1822" = load %String, %String* %tname, align 8
  %"$m_1823" = load %String, %String* %m, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1820", [20 x i8]* %"$fail_msg__sender_1821", %String %"$tname_1822", %String %"$m_1823")
  br label %"$matchsucc_1795"

"$empty_default_1799":                            ; preds = %"$have_gas_1793"
  br label %"$matchsucc_1795"

"$matchsucc_1795":                                ; preds = %"$have_gas_1818", %"$True_1800", %"$empty_default_1799"
  br label %"$matchsucc_1746"

"$None_1824":                                     ; preds = %"$have_gas_1744"
  %"$c1_1825" = bitcast %TName_Option_String* %"$c1_1747" to %CName_None_String*
  %"$gasrem_1826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1827" = icmp ugt i64 1, %"$gasrem_1826"
  br i1 %"$gascmp_1827", label %"$out_of_gas_1828", label %"$have_gas_1829"

"$out_of_gas_1828":                               ; preds = %"$None_1824"
  call void @_out_of_gas()
  br label %"$have_gas_1829"

"$have_gas_1829":                                 ; preds = %"$out_of_gas_1828", %"$None_1824"
  %"$consume_1830" = sub i64 %"$gasrem_1826", 1
  store i64 %"$consume_1830", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1832" = icmp ugt i64 1, %"$gasrem_1831"
  br i1 %"$gascmp_1832", label %"$out_of_gas_1833", label %"$have_gas_1834"

"$out_of_gas_1833":                               ; preds = %"$have_gas_1829"
  call void @_out_of_gas()
  br label %"$have_gas_1834"

"$have_gas_1834":                                 ; preds = %"$out_of_gas_1833", %"$have_gas_1829"
  %"$consume_1835" = sub i64 %"$gasrem_1831", 1
  store i64 %"$consume_1835", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1836", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1838" = icmp ugt i64 1, %"$gasrem_1837"
  br i1 %"$gascmp_1838", label %"$out_of_gas_1839", label %"$have_gas_1840"

"$out_of_gas_1839":                               ; preds = %"$have_gas_1834"
  call void @_out_of_gas()
  br label %"$have_gas_1840"

"$have_gas_1840":                                 ; preds = %"$out_of_gas_1839", %"$have_gas_1834"
  %"$consume_1841" = sub i64 %"$gasrem_1837", 1
  store i64 %"$consume_1841", i64* @_gasrem, align 8
  %"$fail_msg__origin_1842" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1842", align 1
  %"$fail_msg__sender_1843" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1843", align 1
  %"$tname_1844" = load %String, %String* %tname, align 8
  %"$m_1845" = load %String, %String* %m2, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1842", [20 x i8]* %"$fail_msg__sender_1843", %String %"$tname_1844", %String %"$m_1845")
  br label %"$matchsucc_1746"

"$empty_default_1750":                            ; preds = %"$have_gas_1744"
  br label %"$matchsucc_1746"

"$matchsucc_1746":                                ; preds = %"$have_gas_1840", %"$matchsucc_1795", %"$empty_default_1750"
  %"$gasrem_1846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1847" = icmp ugt i64 1, %"$gasrem_1846"
  br i1 %"$gascmp_1847", label %"$out_of_gas_1848", label %"$have_gas_1849"

"$out_of_gas_1848":                               ; preds = %"$matchsucc_1746"
  call void @_out_of_gas()
  br label %"$have_gas_1849"

"$have_gas_1849":                                 ; preds = %"$out_of_gas_1848", %"$matchsucc_1746"
  %"$consume_1850" = sub i64 %"$gasrem_1846", 1
  store i64 %"$consume_1850", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1852" = icmp ugt i64 1, %"$gasrem_1851"
  br i1 %"$gascmp_1852", label %"$out_of_gas_1853", label %"$have_gas_1854"

"$out_of_gas_1853":                               ; preds = %"$have_gas_1849"
  call void @_out_of_gas()
  br label %"$have_gas_1854"

"$have_gas_1854":                                 ; preds = %"$out_of_gas_1853", %"$have_gas_1849"
  %"$consume_1855" = sub i64 %"$gasrem_1851", 1
  store i64 %"$consume_1855", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1856", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$c1_5" = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_1857_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1857_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1857_salloc_load", i64 16)
  %"$indices_buf_1857_salloc" = bitcast i8* %"$indices_buf_1857_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1857" = bitcast [16 x i8]* %"$indices_buf_1857_salloc" to i8*
  %"$key1b_1858" = load %String, %String* %key1b, align 8
  %"$indices_gep_1859" = getelementptr i8, i8* %"$indices_buf_1857", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1859" to %String*
  store %String %"$key1b_1858", %String* %indices_cast3, align 8
  %"$execptr_load_1861" = load i8*, i8** @_execptr, align 8
  %"$$c1_5_call_1862" = call i8* @_fetch_field(i8* %"$execptr_load_1861", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1860", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_1857", i32 1)
  %"$$c1_5_1863" = bitcast i8* %"$$c1_5_call_1862" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1863", %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$c1_5_1864" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$$c1_5_1864_1865" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1864" to i8*
  %"$_literal_cost_call_1866" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$$c1_5_1864_1865")
  %"$$c1_5_1867" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$$c1_5_1867_1868" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1867" to i8*
  %"$_mapsortcost_call_1869" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$$c1_5_1867_1868")
  %"$gasadd_1870" = add i64 %"$_literal_cost_call_1866", %"$_mapsortcost_call_1869"
  %"$gasadd_1871" = add i64 %"$gasadd_1870", 1
  %"$gasrem_1872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1873" = icmp ugt i64 %"$gasadd_1871", %"$gasrem_1872"
  br i1 %"$gascmp_1873", label %"$out_of_gas_1874", label %"$have_gas_1875"

"$out_of_gas_1874":                               ; preds = %"$have_gas_1854"
  call void @_out_of_gas()
  br label %"$have_gas_1875"

"$have_gas_1875":                                 ; preds = %"$out_of_gas_1874", %"$have_gas_1854"
  %"$consume_1876" = sub i64 %"$gasrem_1872", %"$gasadd_1871"
  store i64 %"$consume_1876", i64* @_gasrem, align 8
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 2, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$have_gas_1875"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$have_gas_1875"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 2
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %"$$c1_5_1883" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$c1_5_tag_1884" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1883", i32 0, i32 0
  %"$$c1_5_tag_1885" = load i8, i8* %"$$c1_5_tag_1884", align 1
  switch i8 %"$$c1_5_tag_1885", label %"$empty_default_1886" [
    i8 0, label %"$Some_1887"
    i8 1, label %"$None_1911"
  ]

"$Some_1887":                                     ; preds = %"$have_gas_1880"
  %"$$c1_5_1888" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1883" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_5_18_gep_1889" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_5_1888", i32 0, i32 1
  %"$$$c1_5_18_load_1890" = load %Map_String_String*, %Map_String_String** %"$$$c1_5_18_gep_1889", align 8
  %"$$c1_5_18" = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$$$c1_5_18_load_1890", %Map_String_String** %"$$c1_5_18", align 8
  %"$gasrem_1891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1892" = icmp ugt i64 1, %"$gasrem_1891"
  br i1 %"$gascmp_1892", label %"$out_of_gas_1893", label %"$have_gas_1894"

"$out_of_gas_1893":                               ; preds = %"$Some_1887"
  call void @_out_of_gas()
  br label %"$have_gas_1894"

"$have_gas_1894":                                 ; preds = %"$out_of_gas_1893", %"$Some_1887"
  %"$consume_1895" = sub i64 %"$gasrem_1891", 1
  store i64 %"$consume_1895", i64* @_gasrem, align 8
  %m4 = alloca %String, align 8
  %"$gasrem_1896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1897" = icmp ugt i64 1, %"$gasrem_1896"
  br i1 %"$gascmp_1897", label %"$out_of_gas_1898", label %"$have_gas_1899"

"$out_of_gas_1898":                               ; preds = %"$have_gas_1894"
  call void @_out_of_gas()
  br label %"$have_gas_1899"

"$have_gas_1899":                                 ; preds = %"$out_of_gas_1898", %"$have_gas_1894"
  %"$consume_1900" = sub i64 %"$gasrem_1896", 1
  store i64 %"$consume_1900", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1901", i32 0, i32 0), i32 36 }, %String* %m4, align 8
  %"$gasrem_1902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1903" = icmp ugt i64 1, %"$gasrem_1902"
  br i1 %"$gascmp_1903", label %"$out_of_gas_1904", label %"$have_gas_1905"

"$out_of_gas_1904":                               ; preds = %"$have_gas_1899"
  call void @_out_of_gas()
  br label %"$have_gas_1905"

"$have_gas_1905":                                 ; preds = %"$out_of_gas_1904", %"$have_gas_1899"
  %"$consume_1906" = sub i64 %"$gasrem_1902", 1
  store i64 %"$consume_1906", i64* @_gasrem, align 8
  %"$fail_msg__origin_1907" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1907", align 1
  %"$fail_msg__sender_1908" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1908", align 1
  %"$tname_1909" = load %String, %String* %tname, align 8
  %"$m_1910" = load %String, %String* %m4, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1907", [20 x i8]* %"$fail_msg__sender_1908", %String %"$tname_1909", %String %"$m_1910")
  br label %"$matchsucc_1882"

"$None_1911":                                     ; preds = %"$have_gas_1880"
  %"$$c1_5_1912" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1883" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_1882"

"$empty_default_1886":                            ; preds = %"$have_gas_1880"
  br label %"$matchsucc_1882"

"$matchsucc_1882":                                ; preds = %"$None_1911", %"$have_gas_1905", %"$empty_default_1886"
  %"$gasrem_1913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1914" = icmp ugt i64 1, %"$gasrem_1913"
  br i1 %"$gascmp_1914", label %"$out_of_gas_1915", label %"$have_gas_1916"

"$out_of_gas_1915":                               ; preds = %"$matchsucc_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1916"

"$have_gas_1916":                                 ; preds = %"$out_of_gas_1915", %"$matchsucc_1882"
  %"$consume_1917" = sub i64 %"$gasrem_1913", 1
  store i64 %"$consume_1917", i64* @_gasrem, align 8
  %"$key1b_6" = alloca %String, align 8
  %"$gasrem_1918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1919" = icmp ugt i64 1, %"$gasrem_1918"
  br i1 %"$gascmp_1919", label %"$out_of_gas_1920", label %"$have_gas_1921"

"$out_of_gas_1920":                               ; preds = %"$have_gas_1916"
  call void @_out_of_gas()
  br label %"$have_gas_1921"

"$have_gas_1921":                                 ; preds = %"$out_of_gas_1920", %"$have_gas_1916"
  %"$consume_1922" = sub i64 %"$gasrem_1918", 1
  store i64 %"$consume_1922", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1923", i32 0, i32 0), i32 5 }, %String* %"$key1b_6", align 8
  %"$gasrem_1924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1925" = icmp ugt i64 1, %"$gasrem_1924"
  br i1 %"$gascmp_1925", label %"$out_of_gas_1926", label %"$have_gas_1927"

"$out_of_gas_1926":                               ; preds = %"$have_gas_1921"
  call void @_out_of_gas()
  br label %"$have_gas_1927"

"$have_gas_1927":                                 ; preds = %"$out_of_gas_1926", %"$have_gas_1921"
  %"$consume_1928" = sub i64 %"$gasrem_1924", 1
  store i64 %"$consume_1928", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1930" = icmp ugt i64 1, %"$gasrem_1929"
  br i1 %"$gascmp_1930", label %"$out_of_gas_1931", label %"$have_gas_1932"

"$out_of_gas_1931":                               ; preds = %"$have_gas_1927"
  call void @_out_of_gas()
  br label %"$have_gas_1932"

"$have_gas_1932":                                 ; preds = %"$out_of_gas_1931", %"$have_gas_1927"
  %"$consume_1933" = sub i64 %"$gasrem_1929", 1
  store i64 %"$consume_1933", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1934", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_7" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1935_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1935_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1935_salloc_load", i64 32)
  %"$indices_buf_1935_salloc" = bitcast i8* %"$indices_buf_1935_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1935" = bitcast [32 x i8]* %"$indices_buf_1935_salloc" to i8*
  %"$$key1b_6_1936" = load %String, %String* %"$key1b_6", align 8
  %"$indices_gep_1937" = getelementptr i8, i8* %"$indices_buf_1935", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_1937" to %String*
  store %String %"$$key1b_6_1936", %String* %indices_cast5, align 8
  %"$key2b_1938" = load %String, %String* %key2b, align 8
  %"$indices_gep_1939" = getelementptr i8, i8* %"$indices_buf_1935", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_1939" to %String*
  store %String %"$key2b_1938", %String* %indices_cast6, align 8
  %"$execptr_load_1941" = load i8*, i8** @_execptr, align 8
  %"$$c1_7_call_1942" = call i8* @_fetch_field(i8* %"$execptr_load_1941", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1940", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_1935", i32 1)
  %"$$c1_7_1943" = bitcast i8* %"$$c1_7_call_1942" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_1943", %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_1944" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$$c1_7_1944_1945" = bitcast %TName_Option_String* %"$$c1_7_1944" to i8*
  %"$_literal_cost_call_1946" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_7_1944_1945")
  %"$gasadd_1947" = add i64 %"$_literal_cost_call_1946", 0
  %"$gasadd_1948" = add i64 %"$gasadd_1947", 2
  %"$gasrem_1949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1950" = icmp ugt i64 %"$gasadd_1948", %"$gasrem_1949"
  br i1 %"$gascmp_1950", label %"$out_of_gas_1951", label %"$have_gas_1952"

"$out_of_gas_1951":                               ; preds = %"$have_gas_1932"
  call void @_out_of_gas()
  br label %"$have_gas_1952"

"$have_gas_1952":                                 ; preds = %"$out_of_gas_1951", %"$have_gas_1932"
  %"$consume_1953" = sub i64 %"$gasrem_1949", %"$gasadd_1948"
  store i64 %"$consume_1953", i64* @_gasrem, align 8
  %"$gasrem_1954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1955" = icmp ugt i64 2, %"$gasrem_1954"
  br i1 %"$gascmp_1955", label %"$out_of_gas_1956", label %"$have_gas_1957"

"$out_of_gas_1956":                               ; preds = %"$have_gas_1952"
  call void @_out_of_gas()
  br label %"$have_gas_1957"

"$have_gas_1957":                                 ; preds = %"$out_of_gas_1956", %"$have_gas_1952"
  %"$consume_1958" = sub i64 %"$gasrem_1954", 2
  store i64 %"$consume_1958", i64* @_gasrem, align 8
  %"$$c1_7_1960" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_tag_1961" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_1960", i32 0, i32 0
  %"$$c1_7_tag_1962" = load i8, i8* %"$$c1_7_tag_1961", align 1
  switch i8 %"$$c1_7_tag_1962", label %"$empty_default_1963" [
    i8 0, label %"$Some_1964"
    i8 1, label %"$None_1988"
  ]

"$Some_1964":                                     ; preds = %"$have_gas_1957"
  %"$$c1_7_1965" = bitcast %TName_Option_String* %"$$c1_7_1960" to %CName_Some_String*
  %"$$$c1_7_17_gep_1966" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_1965", i32 0, i32 1
  %"$$$c1_7_17_load_1967" = load %String, %String* %"$$$c1_7_17_gep_1966", align 8
  %"$$c1_7_17" = alloca %String, align 8
  store %String %"$$$c1_7_17_load_1967", %String* %"$$c1_7_17", align 8
  %"$gasrem_1968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1969" = icmp ugt i64 1, %"$gasrem_1968"
  br i1 %"$gascmp_1969", label %"$out_of_gas_1970", label %"$have_gas_1971"

"$out_of_gas_1970":                               ; preds = %"$Some_1964"
  call void @_out_of_gas()
  br label %"$have_gas_1971"

"$have_gas_1971":                                 ; preds = %"$out_of_gas_1970", %"$Some_1964"
  %"$consume_1972" = sub i64 %"$gasrem_1968", 1
  store i64 %"$consume_1972", i64* @_gasrem, align 8
  %m7 = alloca %String, align 8
  %"$gasrem_1973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1974" = icmp ugt i64 1, %"$gasrem_1973"
  br i1 %"$gascmp_1974", label %"$out_of_gas_1975", label %"$have_gas_1976"

"$out_of_gas_1975":                               ; preds = %"$have_gas_1971"
  call void @_out_of_gas()
  br label %"$have_gas_1976"

"$have_gas_1976":                                 ; preds = %"$out_of_gas_1975", %"$have_gas_1971"
  %"$consume_1977" = sub i64 %"$gasrem_1973", 1
  store i64 %"$consume_1977", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1978", i32 0, i32 0), i32 42 }, %String* %m7, align 8
  %"$gasrem_1979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1980" = icmp ugt i64 1, %"$gasrem_1979"
  br i1 %"$gascmp_1980", label %"$out_of_gas_1981", label %"$have_gas_1982"

"$out_of_gas_1981":                               ; preds = %"$have_gas_1976"
  call void @_out_of_gas()
  br label %"$have_gas_1982"

"$have_gas_1982":                                 ; preds = %"$out_of_gas_1981", %"$have_gas_1976"
  %"$consume_1983" = sub i64 %"$gasrem_1979", 1
  store i64 %"$consume_1983", i64* @_gasrem, align 8
  %"$fail_msg__origin_1984" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1984", align 1
  %"$fail_msg__sender_1985" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1985", align 1
  %"$tname_1986" = load %String, %String* %tname, align 8
  %"$m_1987" = load %String, %String* %m7, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1984", [20 x i8]* %"$fail_msg__sender_1985", %String %"$tname_1986", %String %"$m_1987")
  br label %"$matchsucc_1959"

"$None_1988":                                     ; preds = %"$have_gas_1957"
  %"$$c1_7_1989" = bitcast %TName_Option_String* %"$$c1_7_1960" to %CName_None_String*
  br label %"$matchsucc_1959"

"$empty_default_1963":                            ; preds = %"$have_gas_1957"
  br label %"$matchsucc_1959"

"$matchsucc_1959":                                ; preds = %"$None_1988", %"$have_gas_1982", %"$empty_default_1963"
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %"$matchsucc_1959"
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %"$matchsucc_1959"
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  %"$key1b_8" = alloca %String, align 8
  %"$gasrem_1995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1996" = icmp ugt i64 1, %"$gasrem_1995"
  br i1 %"$gascmp_1996", label %"$out_of_gas_1997", label %"$have_gas_1998"

"$out_of_gas_1997":                               ; preds = %"$have_gas_1993"
  call void @_out_of_gas()
  br label %"$have_gas_1998"

"$have_gas_1998":                                 ; preds = %"$out_of_gas_1997", %"$have_gas_1993"
  %"$consume_1999" = sub i64 %"$gasrem_1995", 1
  store i64 %"$consume_1999", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2000", i32 0, i32 0), i32 5 }, %String* %"$key1b_8", align 8
  %"$gasrem_2001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2002" = icmp ugt i64 1, %"$gasrem_2001"
  br i1 %"$gascmp_2002", label %"$out_of_gas_2003", label %"$have_gas_2004"

"$out_of_gas_2003":                               ; preds = %"$have_gas_1998"
  call void @_out_of_gas()
  br label %"$have_gas_2004"

"$have_gas_2004":                                 ; preds = %"$out_of_gas_2003", %"$have_gas_1998"
  %"$consume_2005" = sub i64 %"$gasrem_2001", 1
  store i64 %"$consume_2005", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_2006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2007" = icmp ugt i64 1, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %"$have_gas_2004"
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %"$have_gas_2004"
  %"$consume_2010" = sub i64 %"$gasrem_2006", 1
  store i64 %"$consume_2010", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2011", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$c1_9" = alloca %TName_Option_String*, align 8
  %"$indices_buf_2012_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2012_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2012_salloc_load", i64 32)
  %"$indices_buf_2012_salloc" = bitcast i8* %"$indices_buf_2012_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2012" = bitcast [32 x i8]* %"$indices_buf_2012_salloc" to i8*
  %"$$key1b_8_2013" = load %String, %String* %"$key1b_8", align 8
  %"$indices_gep_2014" = getelementptr i8, i8* %"$indices_buf_2012", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_2014" to %String*
  store %String %"$$key1b_8_2013", %String* %indices_cast8, align 8
  %"$key2d_2015" = load %String, %String* %key2d, align 8
  %"$indices_gep_2016" = getelementptr i8, i8* %"$indices_buf_2012", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_2016" to %String*
  store %String %"$key2d_2015", %String* %indices_cast9, align 8
  %"$execptr_load_2018" = load i8*, i8** @_execptr, align 8
  %"$$c1_9_call_2019" = call i8* @_fetch_field(i8* %"$execptr_load_2018", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2017", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2012", i32 1)
  %"$$c1_9_2020" = bitcast i8* %"$$c1_9_call_2019" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_2020", %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_2021" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$$c1_9_2021_2022" = bitcast %TName_Option_String* %"$$c1_9_2021" to i8*
  %"$_literal_cost_call_2023" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_9_2021_2022")
  %"$gasadd_2024" = add i64 %"$_literal_cost_call_2023", 0
  %"$gasadd_2025" = add i64 %"$gasadd_2024", 2
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 %"$gasadd_2025", %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2009"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2009"
  %"$consume_2030" = sub i64 %"$gasrem_2026", %"$gasadd_2025"
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$gasrem_2031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2032" = icmp ugt i64 2, %"$gasrem_2031"
  br i1 %"$gascmp_2032", label %"$out_of_gas_2033", label %"$have_gas_2034"

"$out_of_gas_2033":                               ; preds = %"$have_gas_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2034"

"$have_gas_2034":                                 ; preds = %"$out_of_gas_2033", %"$have_gas_2029"
  %"$consume_2035" = sub i64 %"$gasrem_2031", 2
  store i64 %"$consume_2035", i64* @_gasrem, align 8
  %"$$c1_9_2037" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_tag_2038" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_2037", i32 0, i32 0
  %"$$c1_9_tag_2039" = load i8, i8* %"$$c1_9_tag_2038", align 1
  switch i8 %"$$c1_9_tag_2039", label %"$empty_default_2040" [
    i8 0, label %"$Some_2041"
    i8 1, label %"$None_2065"
  ]

"$Some_2041":                                     ; preds = %"$have_gas_2034"
  %"$$c1_9_2042" = bitcast %TName_Option_String* %"$$c1_9_2037" to %CName_Some_String*
  %"$$$c1_9_16_gep_2043" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_2042", i32 0, i32 1
  %"$$$c1_9_16_load_2044" = load %String, %String* %"$$$c1_9_16_gep_2043", align 8
  %"$$c1_9_16" = alloca %String, align 8
  store %String %"$$$c1_9_16_load_2044", %String* %"$$c1_9_16", align 8
  %"$gasrem_2045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2046" = icmp ugt i64 1, %"$gasrem_2045"
  br i1 %"$gascmp_2046", label %"$out_of_gas_2047", label %"$have_gas_2048"

"$out_of_gas_2047":                               ; preds = %"$Some_2041"
  call void @_out_of_gas()
  br label %"$have_gas_2048"

"$have_gas_2048":                                 ; preds = %"$out_of_gas_2047", %"$Some_2041"
  %"$consume_2049" = sub i64 %"$gasrem_2045", 1
  store i64 %"$consume_2049", i64* @_gasrem, align 8
  %m10 = alloca %String, align 8
  %"$gasrem_2050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2051" = icmp ugt i64 1, %"$gasrem_2050"
  br i1 %"$gascmp_2051", label %"$out_of_gas_2052", label %"$have_gas_2053"

"$out_of_gas_2052":                               ; preds = %"$have_gas_2048"
  call void @_out_of_gas()
  br label %"$have_gas_2053"

"$have_gas_2053":                                 ; preds = %"$out_of_gas_2052", %"$have_gas_2048"
  %"$consume_2054" = sub i64 %"$gasrem_2050", 1
  store i64 %"$consume_2054", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_2055", i32 0, i32 0), i32 42 }, %String* %m10, align 8
  %"$gasrem_2056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2057" = icmp ugt i64 1, %"$gasrem_2056"
  br i1 %"$gascmp_2057", label %"$out_of_gas_2058", label %"$have_gas_2059"

"$out_of_gas_2058":                               ; preds = %"$have_gas_2053"
  call void @_out_of_gas()
  br label %"$have_gas_2059"

"$have_gas_2059":                                 ; preds = %"$out_of_gas_2058", %"$have_gas_2053"
  %"$consume_2060" = sub i64 %"$gasrem_2056", 1
  store i64 %"$consume_2060", i64* @_gasrem, align 8
  %"$fail_msg__origin_2061" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2061", align 1
  %"$fail_msg__sender_2062" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2062", align 1
  %"$tname_2063" = load %String, %String* %tname, align 8
  %"$m_2064" = load %String, %String* %m10, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2061", [20 x i8]* %"$fail_msg__sender_2062", %String %"$tname_2063", %String %"$m_2064")
  br label %"$matchsucc_2036"

"$None_2065":                                     ; preds = %"$have_gas_2034"
  %"$$c1_9_2066" = bitcast %TName_Option_String* %"$$c1_9_2037" to %CName_None_String*
  br label %"$matchsucc_2036"

"$empty_default_2040":                            ; preds = %"$have_gas_2034"
  br label %"$matchsucc_2036"

"$matchsucc_2036":                                ; preds = %"$None_2065", %"$have_gas_2059", %"$empty_default_2040"
  %"$gasrem_2067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2068" = icmp ugt i64 1, %"$gasrem_2067"
  br i1 %"$gascmp_2068", label %"$out_of_gas_2069", label %"$have_gas_2070"

"$out_of_gas_2069":                               ; preds = %"$matchsucc_2036"
  call void @_out_of_gas()
  br label %"$have_gas_2070"

"$have_gas_2070":                                 ; preds = %"$out_of_gas_2069", %"$matchsucc_2036"
  %"$consume_2071" = sub i64 %"$gasrem_2067", 1
  store i64 %"$consume_2071", i64* @_gasrem, align 8
  %"$key1b_10" = alloca %String, align 8
  %"$gasrem_2072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2073" = icmp ugt i64 1, %"$gasrem_2072"
  br i1 %"$gascmp_2073", label %"$out_of_gas_2074", label %"$have_gas_2075"

"$out_of_gas_2074":                               ; preds = %"$have_gas_2070"
  call void @_out_of_gas()
  br label %"$have_gas_2075"

"$have_gas_2075":                                 ; preds = %"$out_of_gas_2074", %"$have_gas_2070"
  %"$consume_2076" = sub i64 %"$gasrem_2072", 1
  store i64 %"$consume_2076", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2077", i32 0, i32 0), i32 5 }, %String* %"$key1b_10", align 8
  %"$gasrem_2078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2079" = icmp ugt i64 1, %"$gasrem_2078"
  br i1 %"$gascmp_2079", label %"$out_of_gas_2080", label %"$have_gas_2081"

"$out_of_gas_2080":                               ; preds = %"$have_gas_2075"
  call void @_out_of_gas()
  br label %"$have_gas_2081"

"$have_gas_2081":                                 ; preds = %"$out_of_gas_2080", %"$have_gas_2075"
  %"$consume_2082" = sub i64 %"$gasrem_2078", 1
  store i64 %"$consume_2082", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2084" = icmp ugt i64 1, %"$gasrem_2083"
  br i1 %"$gascmp_2084", label %"$out_of_gas_2085", label %"$have_gas_2086"

"$out_of_gas_2085":                               ; preds = %"$have_gas_2081"
  call void @_out_of_gas()
  br label %"$have_gas_2086"

"$have_gas_2086":                                 ; preds = %"$out_of_gas_2085", %"$have_gas_2081"
  %"$consume_2087" = sub i64 %"$gasrem_2083", 1
  store i64 %"$consume_2087", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2088", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_2089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2090" = icmp ugt i64 1, %"$gasrem_2089"
  br i1 %"$gascmp_2090", label %"$out_of_gas_2091", label %"$have_gas_2092"

"$out_of_gas_2091":                               ; preds = %"$have_gas_2086"
  call void @_out_of_gas()
  br label %"$have_gas_2092"

"$have_gas_2092":                                 ; preds = %"$out_of_gas_2091", %"$have_gas_2086"
  %"$consume_2093" = sub i64 %"$gasrem_2089", 1
  store i64 %"$consume_2093", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_2094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2095" = icmp ugt i64 1, %"$gasrem_2094"
  br i1 %"$gascmp_2095", label %"$out_of_gas_2096", label %"$have_gas_2097"

"$out_of_gas_2096":                               ; preds = %"$have_gas_2092"
  call void @_out_of_gas()
  br label %"$have_gas_2097"

"$have_gas_2097":                                 ; preds = %"$out_of_gas_2096", %"$have_gas_2092"
  %"$consume_2098" = sub i64 %"$gasrem_2094", 1
  store i64 %"$consume_2098", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2099", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_2100" = alloca %String, align 8
  %"$s_2101" = load %String, %String* %s, align 8
  store %String %"$s_2101", %String* %"$_literal_cost_s_2100", align 8
  %"$$_literal_cost_s_2100_2102" = bitcast %String* %"$_literal_cost_s_2100" to i8*
  %"$_literal_cost_call_2103" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_2100_2102")
  %"$gasadd_2104" = add i64 %"$_literal_cost_call_2103", 2
  %"$gasrem_2105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2106" = icmp ugt i64 %"$gasadd_2104", %"$gasrem_2105"
  br i1 %"$gascmp_2106", label %"$out_of_gas_2107", label %"$have_gas_2108"

"$out_of_gas_2107":                               ; preds = %"$have_gas_2097"
  call void @_out_of_gas()
  br label %"$have_gas_2108"

"$have_gas_2108":                                 ; preds = %"$out_of_gas_2107", %"$have_gas_2097"
  %"$consume_2109" = sub i64 %"$gasrem_2105", %"$gasadd_2104"
  store i64 %"$consume_2109", i64* @_gasrem, align 8
  %"$indices_buf_2110_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2110_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2110_salloc_load", i64 32)
  %"$indices_buf_2110_salloc" = bitcast i8* %"$indices_buf_2110_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2110" = bitcast [32 x i8]* %"$indices_buf_2110_salloc" to i8*
  %"$$key1b_10_2111" = load %String, %String* %"$key1b_10", align 8
  %"$indices_gep_2112" = getelementptr i8, i8* %"$indices_buf_2110", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_2112" to %String*
  store %String %"$$key1b_10_2111", %String* %indices_cast11, align 8
  %"$key2c_2113" = load %String, %String* %key2c, align 8
  %"$indices_gep_2114" = getelementptr i8, i8* %"$indices_buf_2110", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_2114" to %String*
  store %String %"$key2c_2113", %String* %indices_cast12, align 8
  %"$execptr_load_2115" = load i8*, i8** @_execptr, align 8
  %"$s_2117" = load %String, %String* %s, align 8
  %"$update_value_2118" = alloca %String, align 8
  store %String %"$s_2117", %String* %"$update_value_2118", align 8
  %"$update_value_2119" = bitcast %String* %"$update_value_2118" to i8*
  call void @_update_field(i8* %"$execptr_load_2115", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2110", i8* %"$update_value_2119")
  ret void
}

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @t7(i8* %0) {
entry:
  %"$_amount_2121" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2122" = bitcast i8* %"$_amount_2121" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2122", align 8
  %"$_origin_2123" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2124" = bitcast i8* %"$_origin_2123" to [20 x i8]*
  %"$_sender_2125" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2126" = bitcast i8* %"$_sender_2125" to [20 x i8]*
  call void @"$t7_1686"(%Uint128 %_amount, [20 x i8]* %"$_origin_2124", [20 x i8]* %"$_sender_2126")
  ret void
}

define internal void @"$t8_2127"(%Uint128 %_amount, [20 x i8]* %"$_origin_2128", [20 x i8]* %"$_sender_2129") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2128", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2129", align 1
  %"$gasrem_2130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2131" = icmp ugt i64 1, %"$gasrem_2130"
  br i1 %"$gascmp_2131", label %"$out_of_gas_2132", label %"$have_gas_2133"

"$out_of_gas_2132":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2133"

"$have_gas_2133":                                 ; preds = %"$out_of_gas_2132", %entry
  %"$consume_2134" = sub i64 %"$gasrem_2130", 1
  store i64 %"$consume_2134", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2136" = icmp ugt i64 1, %"$gasrem_2135"
  br i1 %"$gascmp_2136", label %"$out_of_gas_2137", label %"$have_gas_2138"

"$out_of_gas_2137":                               ; preds = %"$have_gas_2133"
  call void @_out_of_gas()
  br label %"$have_gas_2138"

"$have_gas_2138":                                 ; preds = %"$out_of_gas_2137", %"$have_gas_2133"
  %"$consume_2139" = sub i64 %"$gasrem_2135", 1
  store i64 %"$consume_2139", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2140", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_2141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2142" = icmp ugt i64 1, %"$gasrem_2141"
  br i1 %"$gascmp_2142", label %"$out_of_gas_2143", label %"$have_gas_2144"

"$out_of_gas_2143":                               ; preds = %"$have_gas_2138"
  call void @_out_of_gas()
  br label %"$have_gas_2144"

"$have_gas_2144":                                 ; preds = %"$out_of_gas_2143", %"$have_gas_2138"
  %"$consume_2145" = sub i64 %"$gasrem_2141", 1
  store i64 %"$consume_2145", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2147" = icmp ugt i64 1, %"$gasrem_2146"
  br i1 %"$gascmp_2147", label %"$out_of_gas_2148", label %"$have_gas_2149"

"$out_of_gas_2148":                               ; preds = %"$have_gas_2144"
  call void @_out_of_gas()
  br label %"$have_gas_2149"

"$have_gas_2149":                                 ; preds = %"$out_of_gas_2148", %"$have_gas_2144"
  %"$consume_2150" = sub i64 %"$gasrem_2146", 1
  store i64 %"$consume_2150", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2151", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2153" = icmp ugt i64 1, %"$gasrem_2152"
  br i1 %"$gascmp_2153", label %"$out_of_gas_2154", label %"$have_gas_2155"

"$out_of_gas_2154":                               ; preds = %"$have_gas_2149"
  call void @_out_of_gas()
  br label %"$have_gas_2155"

"$have_gas_2155":                                 ; preds = %"$out_of_gas_2154", %"$have_gas_2149"
  %"$consume_2156" = sub i64 %"$gasrem_2152", 1
  store i64 %"$consume_2156", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_2157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2158" = icmp ugt i64 1, %"$gasrem_2157"
  br i1 %"$gascmp_2158", label %"$out_of_gas_2159", label %"$have_gas_2160"

"$out_of_gas_2159":                               ; preds = %"$have_gas_2155"
  call void @_out_of_gas()
  br label %"$have_gas_2160"

"$have_gas_2160":                                 ; preds = %"$out_of_gas_2159", %"$have_gas_2155"
  %"$consume_2161" = sub i64 %"$gasrem_2157", 1
  store i64 %"$consume_2161", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2162", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_2163_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2163_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2163_salloc_load", i64 32)
  %"$indices_buf_2163_salloc" = bitcast i8* %"$indices_buf_2163_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2163" = bitcast [32 x i8]* %"$indices_buf_2163_salloc" to i8*
  %"$key1a_2164" = load %String, %String* %key1a, align 8
  %"$indices_gep_2165" = getelementptr i8, i8* %"$indices_buf_2163", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2165" to %String*
  store %String %"$key1a_2164", %String* %indices_cast, align 8
  %"$key2a_2166" = load %String, %String* %key2a, align 8
  %"$indices_gep_2167" = getelementptr i8, i8* %"$indices_buf_2163", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_2167" to %String*
  store %String %"$key2a_2166", %String* %indices_cast1, align 8
  %"$execptr_load_2169" = load i8*, i8** @_execptr, align 8
  %"$c1_call_2170" = call i8* @_fetch_field(i8* %"$execptr_load_2169", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2168", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2163", i32 1)
  %"$c1_2171" = bitcast i8* %"$c1_call_2170" to %TName_Option_String*
  store %TName_Option_String* %"$c1_2171", %TName_Option_String** %c1, align 8
  %"$c1_2172" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_2172_2173" = bitcast %TName_Option_String* %"$c1_2172" to i8*
  %"$_literal_cost_call_2174" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$c1_2172_2173")
  %"$gasadd_2175" = add i64 %"$_literal_cost_call_2174", 0
  %"$gasadd_2176" = add i64 %"$gasadd_2175", 2
  %"$gasrem_2177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2178" = icmp ugt i64 %"$gasadd_2176", %"$gasrem_2177"
  br i1 %"$gascmp_2178", label %"$out_of_gas_2179", label %"$have_gas_2180"

"$out_of_gas_2179":                               ; preds = %"$have_gas_2160"
  call void @_out_of_gas()
  br label %"$have_gas_2180"

"$have_gas_2180":                                 ; preds = %"$out_of_gas_2179", %"$have_gas_2160"
  %"$consume_2181" = sub i64 %"$gasrem_2177", %"$gasadd_2176"
  store i64 %"$consume_2181", i64* @_gasrem, align 8
  %"$gasrem_2182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2183" = icmp ugt i64 2, %"$gasrem_2182"
  br i1 %"$gascmp_2183", label %"$out_of_gas_2184", label %"$have_gas_2185"

"$out_of_gas_2184":                               ; preds = %"$have_gas_2180"
  call void @_out_of_gas()
  br label %"$have_gas_2185"

"$have_gas_2185":                                 ; preds = %"$out_of_gas_2184", %"$have_gas_2180"
  %"$consume_2186" = sub i64 %"$gasrem_2182", 2
  store i64 %"$consume_2186", i64* @_gasrem, align 8
  %"$c1_2188" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2189" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2188", i32 0, i32 0
  %"$c1_tag_2190" = load i8, i8* %"$c1_tag_2189", align 1
  switch i8 %"$c1_tag_2190", label %"$empty_default_2191" [
    i8 0, label %"$Some_2192"
    i8 1, label %"$None_2265"
  ]

"$Some_2192":                                     ; preds = %"$have_gas_2185"
  %"$c1_2193" = bitcast %TName_Option_String* %"$c1_2188" to %CName_Some_String*
  %"$c_gep_2194" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2193", i32 0, i32 1
  %"$c_load_2195" = load %String, %String* %"$c_gep_2194", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2195", %String* %c, align 8
  %"$gasrem_2196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2197" = icmp ugt i64 1, %"$gasrem_2196"
  br i1 %"$gascmp_2197", label %"$out_of_gas_2198", label %"$have_gas_2199"

"$out_of_gas_2198":                               ; preds = %"$Some_2192"
  call void @_out_of_gas()
  br label %"$have_gas_2199"

"$have_gas_2199":                                 ; preds = %"$out_of_gas_2198", %"$Some_2192"
  %"$consume_2200" = sub i64 %"$gasrem_2196", 1
  store i64 %"$consume_2200", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2202" = icmp ugt i64 1, %"$gasrem_2201"
  br i1 %"$gascmp_2202", label %"$out_of_gas_2203", label %"$have_gas_2204"

"$out_of_gas_2203":                               ; preds = %"$have_gas_2199"
  call void @_out_of_gas()
  br label %"$have_gas_2204"

"$have_gas_2204":                                 ; preds = %"$out_of_gas_2203", %"$have_gas_2199"
  %"$consume_2205" = sub i64 %"$gasrem_2201", 1
  store i64 %"$consume_2205", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2206", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2208" = icmp ugt i64 1, %"$gasrem_2207"
  br i1 %"$gascmp_2208", label %"$out_of_gas_2209", label %"$have_gas_2210"

"$out_of_gas_2209":                               ; preds = %"$have_gas_2204"
  call void @_out_of_gas()
  br label %"$have_gas_2210"

"$have_gas_2210":                                 ; preds = %"$out_of_gas_2209", %"$have_gas_2204"
  %"$consume_2211" = sub i64 %"$gasrem_2207", 1
  store i64 %"$consume_2211", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2212" = alloca %String, align 8
  %"$c_2213" = load %String, %String* %c, align 8
  store %String %"$c_2213", %String* %"$_literal_cost_c_2212", align 8
  %"$$_literal_cost_c_2212_2214" = bitcast %String* %"$_literal_cost_c_2212" to i8*
  %"$_literal_cost_call_2215" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2212_2214")
  %"$_literal_cost_v_2216" = alloca %String, align 8
  %"$v_2217" = load %String, %String* %v, align 8
  store %String %"$v_2217", %String* %"$_literal_cost_v_2216", align 8
  %"$$_literal_cost_v_2216_2218" = bitcast %String* %"$_literal_cost_v_2216" to i8*
  %"$_literal_cost_call_2219" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2216_2218")
  %"$gasmin_2220" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2215", i64 %"$_literal_cost_call_2219")
  %"$gasrem_2221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2222" = icmp ugt i64 %"$gasmin_2220", %"$gasrem_2221"
  br i1 %"$gascmp_2222", label %"$out_of_gas_2223", label %"$have_gas_2224"

"$out_of_gas_2223":                               ; preds = %"$have_gas_2210"
  call void @_out_of_gas()
  br label %"$have_gas_2224"

"$have_gas_2224":                                 ; preds = %"$out_of_gas_2223", %"$have_gas_2210"
  %"$consume_2225" = sub i64 %"$gasrem_2221", %"$gasmin_2220"
  store i64 %"$consume_2225", i64* @_gasrem, align 8
  %"$execptr_load_2226" = load i8*, i8** @_execptr, align 8
  %"$c_2227" = load %String, %String* %c, align 8
  %"$v_2228" = load %String, %String* %v, align 8
  %"$eq_call_2229" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2226", %String %"$c_2227", %String %"$v_2228")
  store %TName_Bool* %"$eq_call_2229", %TName_Bool** %eq, align 8
  %"$gasrem_2231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2232" = icmp ugt i64 2, %"$gasrem_2231"
  br i1 %"$gascmp_2232", label %"$out_of_gas_2233", label %"$have_gas_2234"

"$out_of_gas_2233":                               ; preds = %"$have_gas_2224"
  call void @_out_of_gas()
  br label %"$have_gas_2234"

"$have_gas_2234":                                 ; preds = %"$out_of_gas_2233", %"$have_gas_2224"
  %"$consume_2235" = sub i64 %"$gasrem_2231", 2
  store i64 %"$consume_2235", i64* @_gasrem, align 8
  %"$eq_2237" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2238" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2237", i32 0, i32 0
  %"$eq_tag_2239" = load i8, i8* %"$eq_tag_2238", align 1
  switch i8 %"$eq_tag_2239", label %"$empty_default_2240" [
    i8 0, label %"$True_2241"
    i8 1, label %"$False_2243"
  ]

"$True_2241":                                     ; preds = %"$have_gas_2234"
  %"$eq_2242" = bitcast %TName_Bool* %"$eq_2237" to %CName_True*
  br label %"$matchsucc_2236"

"$False_2243":                                    ; preds = %"$have_gas_2234"
  %"$eq_2244" = bitcast %TName_Bool* %"$eq_2237" to %CName_False*
  %"$gasrem_2245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2246" = icmp ugt i64 1, %"$gasrem_2245"
  br i1 %"$gascmp_2246", label %"$out_of_gas_2247", label %"$have_gas_2248"

"$out_of_gas_2247":                               ; preds = %"$False_2243"
  call void @_out_of_gas()
  br label %"$have_gas_2248"

"$have_gas_2248":                                 ; preds = %"$out_of_gas_2247", %"$False_2243"
  %"$consume_2249" = sub i64 %"$gasrem_2245", 1
  store i64 %"$consume_2249", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2251" = icmp ugt i64 1, %"$gasrem_2250"
  br i1 %"$gascmp_2251", label %"$out_of_gas_2252", label %"$have_gas_2253"

"$out_of_gas_2252":                               ; preds = %"$have_gas_2248"
  call void @_out_of_gas()
  br label %"$have_gas_2253"

"$have_gas_2253":                                 ; preds = %"$out_of_gas_2252", %"$have_gas_2248"
  %"$consume_2254" = sub i64 %"$gasrem_2250", 1
  store i64 %"$consume_2254", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2255", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_2256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2257" = icmp ugt i64 1, %"$gasrem_2256"
  br i1 %"$gascmp_2257", label %"$out_of_gas_2258", label %"$have_gas_2259"

"$out_of_gas_2258":                               ; preds = %"$have_gas_2253"
  call void @_out_of_gas()
  br label %"$have_gas_2259"

"$have_gas_2259":                                 ; preds = %"$out_of_gas_2258", %"$have_gas_2253"
  %"$consume_2260" = sub i64 %"$gasrem_2256", 1
  store i64 %"$consume_2260", i64* @_gasrem, align 8
  %"$fail_msg__origin_2261" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2261", align 1
  %"$fail_msg__sender_2262" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2262", align 1
  %"$tname_2263" = load %String, %String* %tname, align 8
  %"$m_2264" = load %String, %String* %m, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2261", [20 x i8]* %"$fail_msg__sender_2262", %String %"$tname_2263", %String %"$m_2264")
  br label %"$matchsucc_2236"

"$empty_default_2240":                            ; preds = %"$have_gas_2234"
  br label %"$matchsucc_2236"

"$matchsucc_2236":                                ; preds = %"$have_gas_2259", %"$True_2241", %"$empty_default_2240"
  br label %"$matchsucc_2187"

"$None_2265":                                     ; preds = %"$have_gas_2185"
  %"$c1_2266" = bitcast %TName_Option_String* %"$c1_2188" to %CName_None_String*
  %"$gasrem_2267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2268" = icmp ugt i64 1, %"$gasrem_2267"
  br i1 %"$gascmp_2268", label %"$out_of_gas_2269", label %"$have_gas_2270"

"$out_of_gas_2269":                               ; preds = %"$None_2265"
  call void @_out_of_gas()
  br label %"$have_gas_2270"

"$have_gas_2270":                                 ; preds = %"$out_of_gas_2269", %"$None_2265"
  %"$consume_2271" = sub i64 %"$gasrem_2267", 1
  store i64 %"$consume_2271", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2273" = icmp ugt i64 1, %"$gasrem_2272"
  br i1 %"$gascmp_2273", label %"$out_of_gas_2274", label %"$have_gas_2275"

"$out_of_gas_2274":                               ; preds = %"$have_gas_2270"
  call void @_out_of_gas()
  br label %"$have_gas_2275"

"$have_gas_2275":                                 ; preds = %"$out_of_gas_2274", %"$have_gas_2270"
  %"$consume_2276" = sub i64 %"$gasrem_2272", 1
  store i64 %"$consume_2276", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2277", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_2278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2279" = icmp ugt i64 1, %"$gasrem_2278"
  br i1 %"$gascmp_2279", label %"$out_of_gas_2280", label %"$have_gas_2281"

"$out_of_gas_2280":                               ; preds = %"$have_gas_2275"
  call void @_out_of_gas()
  br label %"$have_gas_2281"

"$have_gas_2281":                                 ; preds = %"$out_of_gas_2280", %"$have_gas_2275"
  %"$consume_2282" = sub i64 %"$gasrem_2278", 1
  store i64 %"$consume_2282", i64* @_gasrem, align 8
  %"$fail_msg__origin_2283" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2283", align 1
  %"$fail_msg__sender_2284" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2284", align 1
  %"$tname_2285" = load %String, %String* %tname, align 8
  %"$m_2286" = load %String, %String* %m2, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2283", [20 x i8]* %"$fail_msg__sender_2284", %String %"$tname_2285", %String %"$m_2286")
  br label %"$matchsucc_2187"

"$empty_default_2191":                            ; preds = %"$have_gas_2185"
  br label %"$matchsucc_2187"

"$matchsucc_2187":                                ; preds = %"$have_gas_2281", %"$matchsucc_2236", %"$empty_default_2191"
  %"$gasrem_2287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2288" = icmp ugt i64 1, %"$gasrem_2287"
  br i1 %"$gascmp_2288", label %"$out_of_gas_2289", label %"$have_gas_2290"

"$out_of_gas_2289":                               ; preds = %"$matchsucc_2187"
  call void @_out_of_gas()
  br label %"$have_gas_2290"

"$have_gas_2290":                                 ; preds = %"$out_of_gas_2289", %"$matchsucc_2187"
  %"$consume_2291" = sub i64 %"$gasrem_2287", 1
  store i64 %"$consume_2291", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_2292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2293" = icmp ugt i64 1, %"$gasrem_2292"
  br i1 %"$gascmp_2293", label %"$out_of_gas_2294", label %"$have_gas_2295"

"$out_of_gas_2294":                               ; preds = %"$have_gas_2290"
  call void @_out_of_gas()
  br label %"$have_gas_2295"

"$have_gas_2295":                                 ; preds = %"$out_of_gas_2294", %"$have_gas_2290"
  %"$consume_2296" = sub i64 %"$gasrem_2292", 1
  store i64 %"$consume_2296", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2297", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_2298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2299" = icmp ugt i64 1, %"$gasrem_2298"
  br i1 %"$gascmp_2299", label %"$out_of_gas_2300", label %"$have_gas_2301"

"$out_of_gas_2300":                               ; preds = %"$have_gas_2295"
  call void @_out_of_gas()
  br label %"$have_gas_2301"

"$have_gas_2301":                                 ; preds = %"$out_of_gas_2300", %"$have_gas_2295"
  %"$consume_2302" = sub i64 %"$gasrem_2298", 1
  store i64 %"$consume_2302", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2304" = icmp ugt i64 1, %"$gasrem_2303"
  br i1 %"$gascmp_2304", label %"$out_of_gas_2305", label %"$have_gas_2306"

"$out_of_gas_2305":                               ; preds = %"$have_gas_2301"
  call void @_out_of_gas()
  br label %"$have_gas_2306"

"$have_gas_2306":                                 ; preds = %"$out_of_gas_2305", %"$have_gas_2301"
  %"$consume_2307" = sub i64 %"$gasrem_2303", 1
  store i64 %"$consume_2307", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2308", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_11" = alloca %TName_Option_String*, align 8
  %"$indices_buf_2309_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2309_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2309_salloc_load", i64 32)
  %"$indices_buf_2309_salloc" = bitcast i8* %"$indices_buf_2309_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2309" = bitcast [32 x i8]* %"$indices_buf_2309_salloc" to i8*
  %"$key1b_2310" = load %String, %String* %key1b, align 8
  %"$indices_gep_2311" = getelementptr i8, i8* %"$indices_buf_2309", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_2311" to %String*
  store %String %"$key1b_2310", %String* %indices_cast3, align 8
  %"$key2c_2312" = load %String, %String* %key2c, align 8
  %"$indices_gep_2313" = getelementptr i8, i8* %"$indices_buf_2309", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_2313" to %String*
  store %String %"$key2c_2312", %String* %indices_cast4, align 8
  %"$execptr_load_2315" = load i8*, i8** @_execptr, align 8
  %"$$c1_11_call_2316" = call i8* @_fetch_field(i8* %"$execptr_load_2315", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2314", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_2309", i32 1)
  %"$$c1_11_2317" = bitcast i8* %"$$c1_11_call_2316" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_11_2317", %TName_Option_String** %"$c1_11", align 8
  %"$$c1_11_2318" = load %TName_Option_String*, %TName_Option_String** %"$c1_11", align 8
  %"$$$c1_11_2318_2319" = bitcast %TName_Option_String* %"$$c1_11_2318" to i8*
  %"$_literal_cost_call_2320" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$$c1_11_2318_2319")
  %"$gasadd_2321" = add i64 %"$_literal_cost_call_2320", 0
  %"$gasadd_2322" = add i64 %"$gasadd_2321", 2
  %"$gasrem_2323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2324" = icmp ugt i64 %"$gasadd_2322", %"$gasrem_2323"
  br i1 %"$gascmp_2324", label %"$out_of_gas_2325", label %"$have_gas_2326"

"$out_of_gas_2325":                               ; preds = %"$have_gas_2306"
  call void @_out_of_gas()
  br label %"$have_gas_2326"

"$have_gas_2326":                                 ; preds = %"$out_of_gas_2325", %"$have_gas_2306"
  %"$consume_2327" = sub i64 %"$gasrem_2323", %"$gasadd_2322"
  store i64 %"$consume_2327", i64* @_gasrem, align 8
  %"$gasrem_2328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2329" = icmp ugt i64 2, %"$gasrem_2328"
  br i1 %"$gascmp_2329", label %"$out_of_gas_2330", label %"$have_gas_2331"

"$out_of_gas_2330":                               ; preds = %"$have_gas_2326"
  call void @_out_of_gas()
  br label %"$have_gas_2331"

"$have_gas_2331":                                 ; preds = %"$out_of_gas_2330", %"$have_gas_2326"
  %"$consume_2332" = sub i64 %"$gasrem_2328", 2
  store i64 %"$consume_2332", i64* @_gasrem, align 8
  %"$$c1_11_2334" = load %TName_Option_String*, %TName_Option_String** %"$c1_11", align 8
  %"$$c1_11_tag_2335" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_11_2334", i32 0, i32 0
  %"$$c1_11_tag_2336" = load i8, i8* %"$$c1_11_tag_2335", align 1
  switch i8 %"$$c1_11_tag_2336", label %"$empty_default_2337" [
    i8 0, label %"$Some_2338"
    i8 1, label %"$None_2411"
  ]

"$Some_2338":                                     ; preds = %"$have_gas_2331"
  %"$$c1_11_2339" = bitcast %TName_Option_String* %"$$c1_11_2334" to %CName_Some_String*
  %"$c_gep_2340" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_11_2339", i32 0, i32 1
  %"$c_load_2341" = load %String, %String* %"$c_gep_2340", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_2341", %String* %c5, align 8
  %"$gasrem_2342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2343" = icmp ugt i64 1, %"$gasrem_2342"
  br i1 %"$gascmp_2343", label %"$out_of_gas_2344", label %"$have_gas_2345"

"$out_of_gas_2344":                               ; preds = %"$Some_2338"
  call void @_out_of_gas()
  br label %"$have_gas_2345"

"$have_gas_2345":                                 ; preds = %"$out_of_gas_2344", %"$Some_2338"
  %"$consume_2346" = sub i64 %"$gasrem_2342", 1
  store i64 %"$consume_2346", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_2347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2348" = icmp ugt i64 1, %"$gasrem_2347"
  br i1 %"$gascmp_2348", label %"$out_of_gas_2349", label %"$have_gas_2350"

"$out_of_gas_2349":                               ; preds = %"$have_gas_2345"
  call void @_out_of_gas()
  br label %"$have_gas_2350"

"$have_gas_2350":                                 ; preds = %"$out_of_gas_2349", %"$have_gas_2345"
  %"$consume_2351" = sub i64 %"$gasrem_2347", 1
  store i64 %"$consume_2351", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2352", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_2353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2354" = icmp ugt i64 1, %"$gasrem_2353"
  br i1 %"$gascmp_2354", label %"$out_of_gas_2355", label %"$have_gas_2356"

"$out_of_gas_2355":                               ; preds = %"$have_gas_2350"
  call void @_out_of_gas()
  br label %"$have_gas_2356"

"$have_gas_2356":                                 ; preds = %"$out_of_gas_2355", %"$have_gas_2350"
  %"$consume_2357" = sub i64 %"$gasrem_2353", 1
  store i64 %"$consume_2357", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2358" = alloca %String, align 8
  %"$c_2359" = load %String, %String* %c5, align 8
  store %String %"$c_2359", %String* %"$_literal_cost_c_2358", align 8
  %"$$_literal_cost_c_2358_2360" = bitcast %String* %"$_literal_cost_c_2358" to i8*
  %"$_literal_cost_call_2361" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2358_2360")
  %"$_literal_cost_v_2362" = alloca %String, align 8
  %"$v_2363" = load %String, %String* %v6, align 8
  store %String %"$v_2363", %String* %"$_literal_cost_v_2362", align 8
  %"$$_literal_cost_v_2362_2364" = bitcast %String* %"$_literal_cost_v_2362" to i8*
  %"$_literal_cost_call_2365" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2362_2364")
  %"$gasmin_2366" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2361", i64 %"$_literal_cost_call_2365")
  %"$gasrem_2367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2368" = icmp ugt i64 %"$gasmin_2366", %"$gasrem_2367"
  br i1 %"$gascmp_2368", label %"$out_of_gas_2369", label %"$have_gas_2370"

"$out_of_gas_2369":                               ; preds = %"$have_gas_2356"
  call void @_out_of_gas()
  br label %"$have_gas_2370"

"$have_gas_2370":                                 ; preds = %"$out_of_gas_2369", %"$have_gas_2356"
  %"$consume_2371" = sub i64 %"$gasrem_2367", %"$gasmin_2366"
  store i64 %"$consume_2371", i64* @_gasrem, align 8
  %"$execptr_load_2372" = load i8*, i8** @_execptr, align 8
  %"$c_2373" = load %String, %String* %c5, align 8
  %"$v_2374" = load %String, %String* %v6, align 8
  %"$eq_call_2375" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2372", %String %"$c_2373", %String %"$v_2374")
  store %TName_Bool* %"$eq_call_2375", %TName_Bool** %eq7, align 8
  %"$gasrem_2377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2378" = icmp ugt i64 2, %"$gasrem_2377"
  br i1 %"$gascmp_2378", label %"$out_of_gas_2379", label %"$have_gas_2380"

"$out_of_gas_2379":                               ; preds = %"$have_gas_2370"
  call void @_out_of_gas()
  br label %"$have_gas_2380"

"$have_gas_2380":                                 ; preds = %"$out_of_gas_2379", %"$have_gas_2370"
  %"$consume_2381" = sub i64 %"$gasrem_2377", 2
  store i64 %"$consume_2381", i64* @_gasrem, align 8
  %"$eq_2383" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_2384" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2383", i32 0, i32 0
  %"$eq_tag_2385" = load i8, i8* %"$eq_tag_2384", align 1
  switch i8 %"$eq_tag_2385", label %"$empty_default_2386" [
    i8 0, label %"$True_2387"
    i8 1, label %"$False_2389"
  ]

"$True_2387":                                     ; preds = %"$have_gas_2380"
  %"$eq_2388" = bitcast %TName_Bool* %"$eq_2383" to %CName_True*
  br label %"$matchsucc_2382"

"$False_2389":                                    ; preds = %"$have_gas_2380"
  %"$eq_2390" = bitcast %TName_Bool* %"$eq_2383" to %CName_False*
  %"$gasrem_2391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2392" = icmp ugt i64 1, %"$gasrem_2391"
  br i1 %"$gascmp_2392", label %"$out_of_gas_2393", label %"$have_gas_2394"

"$out_of_gas_2393":                               ; preds = %"$False_2389"
  call void @_out_of_gas()
  br label %"$have_gas_2394"

"$have_gas_2394":                                 ; preds = %"$out_of_gas_2393", %"$False_2389"
  %"$consume_2395" = sub i64 %"$gasrem_2391", 1
  store i64 %"$consume_2395", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_2396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2397" = icmp ugt i64 1, %"$gasrem_2396"
  br i1 %"$gascmp_2397", label %"$out_of_gas_2398", label %"$have_gas_2399"

"$out_of_gas_2398":                               ; preds = %"$have_gas_2394"
  call void @_out_of_gas()
  br label %"$have_gas_2399"

"$have_gas_2399":                                 ; preds = %"$out_of_gas_2398", %"$have_gas_2394"
  %"$consume_2400" = sub i64 %"$gasrem_2396", 1
  store i64 %"$consume_2400", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2401", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_2402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2403" = icmp ugt i64 1, %"$gasrem_2402"
  br i1 %"$gascmp_2403", label %"$out_of_gas_2404", label %"$have_gas_2405"

"$out_of_gas_2404":                               ; preds = %"$have_gas_2399"
  call void @_out_of_gas()
  br label %"$have_gas_2405"

"$have_gas_2405":                                 ; preds = %"$out_of_gas_2404", %"$have_gas_2399"
  %"$consume_2406" = sub i64 %"$gasrem_2402", 1
  store i64 %"$consume_2406", i64* @_gasrem, align 8
  %"$fail_msg__origin_2407" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2407", align 1
  %"$fail_msg__sender_2408" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2408", align 1
  %"$tname_2409" = load %String, %String* %tname, align 8
  %"$m_2410" = load %String, %String* %m8, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2407", [20 x i8]* %"$fail_msg__sender_2408", %String %"$tname_2409", %String %"$m_2410")
  br label %"$matchsucc_2382"

"$empty_default_2386":                            ; preds = %"$have_gas_2380"
  br label %"$matchsucc_2382"

"$matchsucc_2382":                                ; preds = %"$have_gas_2405", %"$True_2387", %"$empty_default_2386"
  br label %"$matchsucc_2333"

"$None_2411":                                     ; preds = %"$have_gas_2331"
  %"$$c1_11_2412" = bitcast %TName_Option_String* %"$$c1_11_2334" to %CName_None_String*
  %"$gasrem_2413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2414" = icmp ugt i64 1, %"$gasrem_2413"
  br i1 %"$gascmp_2414", label %"$out_of_gas_2415", label %"$have_gas_2416"

"$out_of_gas_2415":                               ; preds = %"$None_2411"
  call void @_out_of_gas()
  br label %"$have_gas_2416"

"$have_gas_2416":                                 ; preds = %"$out_of_gas_2415", %"$None_2411"
  %"$consume_2417" = sub i64 %"$gasrem_2413", 1
  store i64 %"$consume_2417", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_2418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2419" = icmp ugt i64 1, %"$gasrem_2418"
  br i1 %"$gascmp_2419", label %"$out_of_gas_2420", label %"$have_gas_2421"

"$out_of_gas_2420":                               ; preds = %"$have_gas_2416"
  call void @_out_of_gas()
  br label %"$have_gas_2421"

"$have_gas_2421":                                 ; preds = %"$out_of_gas_2420", %"$have_gas_2416"
  %"$consume_2422" = sub i64 %"$gasrem_2418", 1
  store i64 %"$consume_2422", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2423", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_2424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2425" = icmp ugt i64 1, %"$gasrem_2424"
  br i1 %"$gascmp_2425", label %"$out_of_gas_2426", label %"$have_gas_2427"

"$out_of_gas_2426":                               ; preds = %"$have_gas_2421"
  call void @_out_of_gas()
  br label %"$have_gas_2427"

"$have_gas_2427":                                 ; preds = %"$out_of_gas_2426", %"$have_gas_2421"
  %"$consume_2428" = sub i64 %"$gasrem_2424", 1
  store i64 %"$consume_2428", i64* @_gasrem, align 8
  %"$fail_msg__origin_2429" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2429", align 1
  %"$fail_msg__sender_2430" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2430", align 1
  %"$tname_2431" = load %String, %String* %tname, align 8
  %"$m_2432" = load %String, %String* %m9, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2429", [20 x i8]* %"$fail_msg__sender_2430", %String %"$tname_2431", %String %"$m_2432")
  br label %"$matchsucc_2333"

"$empty_default_2337":                            ; preds = %"$have_gas_2331"
  br label %"$matchsucc_2333"

"$matchsucc_2333":                                ; preds = %"$have_gas_2427", %"$matchsucc_2382", %"$empty_default_2337"
  %"$gasrem_2433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2434" = icmp ugt i64 1, %"$gasrem_2433"
  br i1 %"$gascmp_2434", label %"$out_of_gas_2435", label %"$have_gas_2436"

"$out_of_gas_2435":                               ; preds = %"$matchsucc_2333"
  call void @_out_of_gas()
  br label %"$have_gas_2436"

"$have_gas_2436":                                 ; preds = %"$out_of_gas_2435", %"$matchsucc_2333"
  %"$consume_2437" = sub i64 %"$gasrem_2433", 1
  store i64 %"$consume_2437", i64* @_gasrem, align 8
  %em = alloca %Map_String_String*, align 8
  %"$gasrem_2438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2439" = icmp ugt i64 1, %"$gasrem_2438"
  br i1 %"$gascmp_2439", label %"$out_of_gas_2440", label %"$have_gas_2441"

"$out_of_gas_2440":                               ; preds = %"$have_gas_2436"
  call void @_out_of_gas()
  br label %"$have_gas_2441"

"$have_gas_2441":                                 ; preds = %"$out_of_gas_2440", %"$have_gas_2436"
  %"$consume_2442" = sub i64 %"$gasrem_2438", 1
  store i64 %"$consume_2442", i64* @_gasrem, align 8
  %"$execptr_load_2443" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2444" = call i8* @_new_empty_map(i8* %"$execptr_load_2443")
  %"$_new_empty_map_2445" = bitcast i8* %"$_new_empty_map_call_2444" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2445", %Map_String_String** %em, align 8
  %"$em_2446" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$$em_2446_2447" = bitcast %Map_String_String* %"$em_2446" to i8*
  %"$_literal_cost_call_2448" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$em_2446_2447")
  %"$gasrem_2449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2450" = icmp ugt i64 %"$_literal_cost_call_2448", %"$gasrem_2449"
  br i1 %"$gascmp_2450", label %"$out_of_gas_2451", label %"$have_gas_2452"

"$out_of_gas_2451":                               ; preds = %"$have_gas_2441"
  call void @_out_of_gas()
  br label %"$have_gas_2452"

"$have_gas_2452":                                 ; preds = %"$out_of_gas_2451", %"$have_gas_2441"
  %"$consume_2453" = sub i64 %"$gasrem_2449", %"$_literal_cost_call_2448"
  store i64 %"$consume_2453", i64* @_gasrem, align 8
  %"$execptr_load_2454" = load i8*, i8** @_execptr, align 8
  %"$em_2456" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$update_value_2457" = bitcast %Map_String_String* %"$em_2456" to i8*
  call void @_update_field(i8* %"$execptr_load_2454", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2455", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_2457")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_2459" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2460" = bitcast i8* %"$_amount_2459" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2460", align 8
  %"$_origin_2461" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2462" = bitcast i8* %"$_origin_2461" to [20 x i8]*
  %"$_sender_2463" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2464" = bitcast i8* %"$_sender_2463" to [20 x i8]*
  call void @"$t8_2127"(%Uint128 %_amount, [20 x i8]* %"$_origin_2462", [20 x i8]* %"$_sender_2464")
  ret void
}

define internal void @"$t9_2465"(%Uint128 %_amount, [20 x i8]* %"$_origin_2466", [20 x i8]* %"$_sender_2467") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2466", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2467", align 1
  %"$gasrem_2468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2469" = icmp ugt i64 1, %"$gasrem_2468"
  br i1 %"$gascmp_2469", label %"$out_of_gas_2470", label %"$have_gas_2471"

"$out_of_gas_2470":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2471"

"$have_gas_2471":                                 ; preds = %"$out_of_gas_2470", %entry
  %"$consume_2472" = sub i64 %"$gasrem_2468", 1
  store i64 %"$consume_2472", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2474" = icmp ugt i64 1, %"$gasrem_2473"
  br i1 %"$gascmp_2474", label %"$out_of_gas_2475", label %"$have_gas_2476"

"$out_of_gas_2475":                               ; preds = %"$have_gas_2471"
  call void @_out_of_gas()
  br label %"$have_gas_2476"

"$have_gas_2476":                                 ; preds = %"$out_of_gas_2475", %"$have_gas_2471"
  %"$consume_2477" = sub i64 %"$gasrem_2473", 1
  store i64 %"$consume_2477", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2478", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2480" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2481" = call i8* @_fetch_field(i8* %"$execptr_load_2480", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2479", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1)
  %"$m1_2482" = bitcast i8* %"$m1_call_2481" to %Map_String_String*
  store %Map_String_String* %"$m1_2482", %Map_String_String** %m1, align 8
  %"$m1_2483" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2483_2484" = bitcast %Map_String_String* %"$m1_2483" to i8*
  %"$_literal_cost_call_2485" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2483_2484")
  %"$m1_2486" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2486_2487" = bitcast %Map_String_String* %"$m1_2486" to i8*
  %"$_mapsortcost_call_2488" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2486_2487")
  %"$gasadd_2489" = add i64 %"$_literal_cost_call_2485", %"$_mapsortcost_call_2488"
  %"$gasrem_2490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2491" = icmp ugt i64 %"$gasadd_2489", %"$gasrem_2490"
  br i1 %"$gascmp_2491", label %"$out_of_gas_2492", label %"$have_gas_2493"

"$out_of_gas_2492":                               ; preds = %"$have_gas_2476"
  call void @_out_of_gas()
  br label %"$have_gas_2493"

"$have_gas_2493":                                 ; preds = %"$out_of_gas_2492", %"$have_gas_2476"
  %"$consume_2494" = sub i64 %"$gasrem_2490", %"$gasadd_2489"
  store i64 %"$consume_2494", i64* @_gasrem, align 8
  %"$gasrem_2495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2496" = icmp ugt i64 1, %"$gasrem_2495"
  br i1 %"$gascmp_2496", label %"$out_of_gas_2497", label %"$have_gas_2498"

"$out_of_gas_2497":                               ; preds = %"$have_gas_2493"
  call void @_out_of_gas()
  br label %"$have_gas_2498"

"$have_gas_2498":                                 ; preds = %"$out_of_gas_2497", %"$have_gas_2493"
  %"$consume_2499" = sub i64 %"$gasrem_2495", 1
  store i64 %"$consume_2499", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_2500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2501" = icmp ugt i64 1, %"$gasrem_2500"
  br i1 %"$gascmp_2501", label %"$out_of_gas_2502", label %"$have_gas_2503"

"$out_of_gas_2502":                               ; preds = %"$have_gas_2498"
  call void @_out_of_gas()
  br label %"$have_gas_2503"

"$have_gas_2503":                                 ; preds = %"$out_of_gas_2502", %"$have_gas_2498"
  %"$consume_2504" = sub i64 %"$gasrem_2500", 1
  store i64 %"$consume_2504", i64* @_gasrem, align 8
  %"$m1_2505" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2505_2506" = bitcast %Map_String_String* %"$m1_2505" to i8*
  %"$size_call_2507" = call %Uint32 @_size(i8* %"$$m1_2505_2506")
  store %Uint32 %"$size_call_2507", %Uint32* %m1_size, align 4
  %"$gasrem_2508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2509" = icmp ugt i64 1, %"$gasrem_2508"
  br i1 %"$gascmp_2509", label %"$out_of_gas_2510", label %"$have_gas_2511"

"$out_of_gas_2510":                               ; preds = %"$have_gas_2503"
  call void @_out_of_gas()
  br label %"$have_gas_2511"

"$have_gas_2511":                                 ; preds = %"$out_of_gas_2510", %"$have_gas_2503"
  %"$consume_2512" = sub i64 %"$gasrem_2508", 1
  store i64 %"$consume_2512", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2514" = icmp ugt i64 1, %"$gasrem_2513"
  br i1 %"$gascmp_2514", label %"$out_of_gas_2515", label %"$have_gas_2516"

"$out_of_gas_2515":                               ; preds = %"$have_gas_2511"
  call void @_out_of_gas()
  br label %"$have_gas_2516"

"$have_gas_2516":                                 ; preds = %"$out_of_gas_2515", %"$have_gas_2511"
  %"$consume_2517" = sub i64 %"$gasrem_2513", 1
  store i64 %"$consume_2517", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2519" = icmp ugt i64 1, %"$gasrem_2518"
  br i1 %"$gascmp_2519", label %"$out_of_gas_2520", label %"$have_gas_2521"

"$out_of_gas_2520":                               ; preds = %"$have_gas_2516"
  call void @_out_of_gas()
  br label %"$have_gas_2521"

"$have_gas_2521":                                 ; preds = %"$out_of_gas_2520", %"$have_gas_2516"
  %"$consume_2522" = sub i64 %"$gasrem_2518", 1
  store i64 %"$consume_2522", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2524" = icmp ugt i64 4, %"$gasrem_2523"
  br i1 %"$gascmp_2524", label %"$out_of_gas_2525", label %"$have_gas_2526"

"$out_of_gas_2525":                               ; preds = %"$have_gas_2521"
  call void @_out_of_gas()
  br label %"$have_gas_2526"

"$have_gas_2526":                                 ; preds = %"$out_of_gas_2525", %"$have_gas_2521"
  %"$consume_2527" = sub i64 %"$gasrem_2523", 4
  store i64 %"$consume_2527", i64* @_gasrem, align 8
  %"$execptr_load_2528" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2529" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2530" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2531" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2528", %Uint32 %"$m1_size_2529", %Uint32 %"$zero_2530")
  store %TName_Bool* %"$eq_call_2531", %TName_Bool** %is_empty, align 8
  %"$gasrem_2533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2534" = icmp ugt i64 2, %"$gasrem_2533"
  br i1 %"$gascmp_2534", label %"$out_of_gas_2535", label %"$have_gas_2536"

"$out_of_gas_2535":                               ; preds = %"$have_gas_2526"
  call void @_out_of_gas()
  br label %"$have_gas_2536"

"$have_gas_2536":                                 ; preds = %"$out_of_gas_2535", %"$have_gas_2526"
  %"$consume_2537" = sub i64 %"$gasrem_2533", 2
  store i64 %"$consume_2537", i64* @_gasrem, align 8
  %"$is_empty_2539" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2540" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2539", i32 0, i32 0
  %"$is_empty_tag_2541" = load i8, i8* %"$is_empty_tag_2540", align 1
  switch i8 %"$is_empty_tag_2541", label %"$empty_default_2542" [
    i8 0, label %"$True_2543"
    i8 1, label %"$False_2545"
  ]

"$True_2543":                                     ; preds = %"$have_gas_2536"
  %"$is_empty_2544" = bitcast %TName_Bool* %"$is_empty_2539" to %CName_True*
  br label %"$matchsucc_2538"

"$False_2545":                                    ; preds = %"$have_gas_2536"
  %"$is_empty_2546" = bitcast %TName_Bool* %"$is_empty_2539" to %CName_False*
  %"$gasrem_2547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2548" = icmp ugt i64 1, %"$gasrem_2547"
  br i1 %"$gascmp_2548", label %"$out_of_gas_2549", label %"$have_gas_2550"

"$out_of_gas_2549":                               ; preds = %"$False_2545"
  call void @_out_of_gas()
  br label %"$have_gas_2550"

"$have_gas_2550":                                 ; preds = %"$out_of_gas_2549", %"$False_2545"
  %"$consume_2551" = sub i64 %"$gasrem_2547", 1
  store i64 %"$consume_2551", i64* @_gasrem, align 8
  %"$fail__origin_2552" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2552", align 1
  %"$fail__sender_2553" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2553", align 1
  %"$tname_2554" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2552", [20 x i8]* %"$fail__sender_2553", %String %"$tname_2554")
  br label %"$matchsucc_2538"

"$empty_default_2542":                            ; preds = %"$have_gas_2536"
  br label %"$matchsucc_2538"

"$matchsucc_2538":                                ; preds = %"$have_gas_2550", %"$True_2543", %"$empty_default_2542"
  %"$gasrem_2555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2556" = icmp ugt i64 1, %"$gasrem_2555"
  br i1 %"$gascmp_2556", label %"$out_of_gas_2557", label %"$have_gas_2558"

"$out_of_gas_2557":                               ; preds = %"$matchsucc_2538"
  call void @_out_of_gas()
  br label %"$have_gas_2558"

"$have_gas_2558":                                 ; preds = %"$out_of_gas_2557", %"$matchsucc_2538"
  %"$consume_2559" = sub i64 %"$gasrem_2555", 1
  store i64 %"$consume_2559", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2561" = icmp ugt i64 1, %"$gasrem_2560"
  br i1 %"$gascmp_2561", label %"$out_of_gas_2562", label %"$have_gas_2563"

"$out_of_gas_2562":                               ; preds = %"$have_gas_2558"
  call void @_out_of_gas()
  br label %"$have_gas_2563"

"$have_gas_2563":                                 ; preds = %"$out_of_gas_2562", %"$have_gas_2558"
  %"$consume_2564" = sub i64 %"$gasrem_2560", 1
  store i64 %"$consume_2564", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2565", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2567" = icmp ugt i64 1, %"$gasrem_2566"
  br i1 %"$gascmp_2567", label %"$out_of_gas_2568", label %"$have_gas_2569"

"$out_of_gas_2568":                               ; preds = %"$have_gas_2563"
  call void @_out_of_gas()
  br label %"$have_gas_2569"

"$have_gas_2569":                                 ; preds = %"$out_of_gas_2568", %"$have_gas_2563"
  %"$consume_2570" = sub i64 %"$gasrem_2566", 1
  store i64 %"$consume_2570", i64* @_gasrem, align 8
  %val = alloca %String, align 8
  %"$gasrem_2571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2572" = icmp ugt i64 1, %"$gasrem_2571"
  br i1 %"$gascmp_2572", label %"$out_of_gas_2573", label %"$have_gas_2574"

"$out_of_gas_2573":                               ; preds = %"$have_gas_2569"
  call void @_out_of_gas()
  br label %"$have_gas_2574"

"$have_gas_2574":                                 ; preds = %"$out_of_gas_2573", %"$have_gas_2569"
  %"$consume_2575" = sub i64 %"$gasrem_2571", 1
  store i64 %"$consume_2575", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2576", i32 0, i32 0), i32 3 }, %String* %val, align 8
  %"$gasrem_2577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2578" = icmp ugt i64 1, %"$gasrem_2577"
  br i1 %"$gascmp_2578", label %"$out_of_gas_2579", label %"$have_gas_2580"

"$out_of_gas_2579":                               ; preds = %"$have_gas_2574"
  call void @_out_of_gas()
  br label %"$have_gas_2580"

"$have_gas_2580":                                 ; preds = %"$out_of_gas_2579", %"$have_gas_2574"
  %"$consume_2581" = sub i64 %"$gasrem_2577", 1
  store i64 %"$consume_2581", i64* @_gasrem, align 8
  %"$m1_12" = alloca %Map_String_String*, align 8
  %"$m1_2582" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2582_2583" = bitcast %Map_String_String* %"$m1_2582" to i8*
  %"$_lengthof_call_2584" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2582_2583")
  %"$gasadd_2585" = add i64 1, %"$_lengthof_call_2584"
  %"$gasrem_2586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2587" = icmp ugt i64 %"$gasadd_2585", %"$gasrem_2586"
  br i1 %"$gascmp_2587", label %"$out_of_gas_2588", label %"$have_gas_2589"

"$out_of_gas_2588":                               ; preds = %"$have_gas_2580"
  call void @_out_of_gas()
  br label %"$have_gas_2589"

"$have_gas_2589":                                 ; preds = %"$out_of_gas_2588", %"$have_gas_2580"
  %"$consume_2590" = sub i64 %"$gasrem_2586", %"$gasadd_2585"
  store i64 %"$consume_2590", i64* @_gasrem, align 8
  %"$execptr_load_2591" = load i8*, i8** @_execptr, align 8
  %"$m1_2592" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2592_2593" = bitcast %Map_String_String* %"$m1_2592" to i8*
  %"$put_key1a_2594" = alloca %String, align 8
  %"$key1a_2595" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2595", %String* %"$put_key1a_2594", align 8
  %"$$put_key1a_2594_2596" = bitcast %String* %"$put_key1a_2594" to i8*
  %"$put_val_2597" = alloca %String, align 8
  %"$val_2598" = load %String, %String* %val, align 8
  store %String %"$val_2598", %String* %"$put_val_2597", align 8
  %"$$put_val_2597_2599" = bitcast %String* %"$put_val_2597" to i8*
  %"$put_call_2600" = call i8* @_put(i8* %"$execptr_load_2591", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2592_2593", i8* %"$$put_key1a_2594_2596", i8* %"$$put_val_2597_2599")
  %"$put_2601" = bitcast i8* %"$put_call_2600" to %Map_String_String*
  store %Map_String_String* %"$put_2601", %Map_String_String** %"$m1_12", align 8
  %"$$m1_12_2602" = load %Map_String_String*, %Map_String_String** %"$m1_12", align 8
  %"$$$m1_12_2602_2603" = bitcast %Map_String_String* %"$$m1_12_2602" to i8*
  %"$_literal_cost_call_2604" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$$m1_12_2602_2603")
  %"$gasrem_2605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2606" = icmp ugt i64 %"$_literal_cost_call_2604", %"$gasrem_2605"
  br i1 %"$gascmp_2606", label %"$out_of_gas_2607", label %"$have_gas_2608"

"$out_of_gas_2607":                               ; preds = %"$have_gas_2589"
  call void @_out_of_gas()
  br label %"$have_gas_2608"

"$have_gas_2608":                                 ; preds = %"$out_of_gas_2607", %"$have_gas_2589"
  %"$consume_2609" = sub i64 %"$gasrem_2605", %"$_literal_cost_call_2604"
  store i64 %"$consume_2609", i64* @_gasrem, align 8
  %"$execptr_load_2610" = load i8*, i8** @_execptr, align 8
  %"$$m1_12_2612" = load %Map_String_String*, %Map_String_String** %"$m1_12", align 8
  %"$update_value_2613" = bitcast %Map_String_String* %"$$m1_12_2612" to i8*
  call void @_update_field(i8* %"$execptr_load_2610", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2611", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_2613")
  ret void
}

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_2615" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2616" = bitcast i8* %"$_amount_2615" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2616", align 8
  %"$_origin_2617" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2618" = bitcast i8* %"$_origin_2617" to [20 x i8]*
  %"$_sender_2619" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2620" = bitcast i8* %"$_sender_2619" to [20 x i8]*
  call void @"$t9_2465"(%Uint128 %_amount, [20 x i8]* %"$_origin_2618", [20 x i8]* %"$_sender_2620")
  ret void
}

define internal void @"$t10_2621"(%Uint128 %_amount, [20 x i8]* %"$_origin_2622", [20 x i8]* %"$_sender_2623") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2622", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2623", align 1
  %"$gasrem_2624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2625" = icmp ugt i64 1, %"$gasrem_2624"
  br i1 %"$gascmp_2625", label %"$out_of_gas_2626", label %"$have_gas_2627"

"$out_of_gas_2626":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2627"

"$have_gas_2627":                                 ; preds = %"$out_of_gas_2626", %entry
  %"$consume_2628" = sub i64 %"$gasrem_2624", 1
  store i64 %"$consume_2628", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2630" = icmp ugt i64 1, %"$gasrem_2629"
  br i1 %"$gascmp_2630", label %"$out_of_gas_2631", label %"$have_gas_2632"

"$out_of_gas_2631":                               ; preds = %"$have_gas_2627"
  call void @_out_of_gas()
  br label %"$have_gas_2632"

"$have_gas_2632":                                 ; preds = %"$out_of_gas_2631", %"$have_gas_2627"
  %"$consume_2633" = sub i64 %"$gasrem_2629", 1
  store i64 %"$consume_2633", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2634", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_2635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2636" = icmp ugt i64 1, %"$gasrem_2635"
  br i1 %"$gascmp_2636", label %"$out_of_gas_2637", label %"$have_gas_2638"

"$out_of_gas_2637":                               ; preds = %"$have_gas_2632"
  call void @_out_of_gas()
  br label %"$have_gas_2638"

"$have_gas_2638":                                 ; preds = %"$out_of_gas_2637", %"$have_gas_2632"
  %"$consume_2639" = sub i64 %"$gasrem_2635", 1
  store i64 %"$consume_2639", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2641" = icmp ugt i64 1, %"$gasrem_2640"
  br i1 %"$gascmp_2641", label %"$out_of_gas_2642", label %"$have_gas_2643"

"$out_of_gas_2642":                               ; preds = %"$have_gas_2638"
  call void @_out_of_gas()
  br label %"$have_gas_2643"

"$have_gas_2643":                                 ; preds = %"$out_of_gas_2642", %"$have_gas_2638"
  %"$consume_2644" = sub i64 %"$gasrem_2640", 1
  store i64 %"$consume_2644", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2645", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2647" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2648" = call i8* @_fetch_field(i8* %"$execptr_load_2647", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2646", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1)
  %"$m1_2649" = bitcast i8* %"$m1_call_2648" to %Map_String_String*
  store %Map_String_String* %"$m1_2649", %Map_String_String** %m1, align 8
  %"$m1_2650" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2650_2651" = bitcast %Map_String_String* %"$m1_2650" to i8*
  %"$_literal_cost_call_2652" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2650_2651")
  %"$m1_2653" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2653_2654" = bitcast %Map_String_String* %"$m1_2653" to i8*
  %"$_mapsortcost_call_2655" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2653_2654")
  %"$gasadd_2656" = add i64 %"$_literal_cost_call_2652", %"$_mapsortcost_call_2655"
  %"$gasrem_2657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2658" = icmp ugt i64 %"$gasadd_2656", %"$gasrem_2657"
  br i1 %"$gascmp_2658", label %"$out_of_gas_2659", label %"$have_gas_2660"

"$out_of_gas_2659":                               ; preds = %"$have_gas_2643"
  call void @_out_of_gas()
  br label %"$have_gas_2660"

"$have_gas_2660":                                 ; preds = %"$out_of_gas_2659", %"$have_gas_2643"
  %"$consume_2661" = sub i64 %"$gasrem_2657", %"$gasadd_2656"
  store i64 %"$consume_2661", i64* @_gasrem, align 8
  %"$gasrem_2662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2663" = icmp ugt i64 1, %"$gasrem_2662"
  br i1 %"$gascmp_2663", label %"$out_of_gas_2664", label %"$have_gas_2665"

"$out_of_gas_2664":                               ; preds = %"$have_gas_2660"
  call void @_out_of_gas()
  br label %"$have_gas_2665"

"$have_gas_2665":                                 ; preds = %"$out_of_gas_2664", %"$have_gas_2660"
  %"$consume_2666" = sub i64 %"$gasrem_2662", 1
  store i64 %"$consume_2666", i64* @_gasrem, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$gasrem_2667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2668" = icmp ugt i64 1, %"$gasrem_2667"
  br i1 %"$gascmp_2668", label %"$out_of_gas_2669", label %"$have_gas_2670"

"$out_of_gas_2669":                               ; preds = %"$have_gas_2665"
  call void @_out_of_gas()
  br label %"$have_gas_2670"

"$have_gas_2670":                                 ; preds = %"$out_of_gas_2669", %"$have_gas_2665"
  %"$consume_2671" = sub i64 %"$gasrem_2667", 1
  store i64 %"$consume_2671", i64* @_gasrem, align 8
  %"$execptr_load_2672" = load i8*, i8** @_execptr, align 8
  %"$m1_2673" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2673_2674" = bitcast %Map_String_String* %"$m1_2673" to i8*
  %"$get_key1a_2675" = alloca %String, align 8
  %"$key1a_2676" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2676", %String* %"$get_key1a_2675", align 8
  %"$$get_key1a_2675_2677" = bitcast %String* %"$get_key1a_2675" to i8*
  %"$get_call_2678" = call i8* @_get(i8* %"$execptr_load_2672", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2673_2674", i8* %"$$get_key1a_2675_2677")
  %"$get_2679" = bitcast i8* %"$get_call_2678" to %TName_Option_String*
  store %TName_Option_String* %"$get_2679", %TName_Option_String** %c1, align 8
  %"$gasrem_2680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2681" = icmp ugt i64 2, %"$gasrem_2680"
  br i1 %"$gascmp_2681", label %"$out_of_gas_2682", label %"$have_gas_2683"

"$out_of_gas_2682":                               ; preds = %"$have_gas_2670"
  call void @_out_of_gas()
  br label %"$have_gas_2683"

"$have_gas_2683":                                 ; preds = %"$out_of_gas_2682", %"$have_gas_2670"
  %"$consume_2684" = sub i64 %"$gasrem_2680", 2
  store i64 %"$consume_2684", i64* @_gasrem, align 8
  %"$c1_2686" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2687" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2686", i32 0, i32 0
  %"$c1_tag_2688" = load i8, i8* %"$c1_tag_2687", align 1
  switch i8 %"$c1_tag_2688", label %"$empty_default_2689" [
    i8 0, label %"$Some_2690"
    i8 1, label %"$None_2763"
  ]

"$Some_2690":                                     ; preds = %"$have_gas_2683"
  %"$c1_2691" = bitcast %TName_Option_String* %"$c1_2686" to %CName_Some_String*
  %"$c_gep_2692" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2691", i32 0, i32 1
  %"$c_load_2693" = load %String, %String* %"$c_gep_2692", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2693", %String* %c, align 8
  %"$gasrem_2694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2695" = icmp ugt i64 1, %"$gasrem_2694"
  br i1 %"$gascmp_2695", label %"$out_of_gas_2696", label %"$have_gas_2697"

"$out_of_gas_2696":                               ; preds = %"$Some_2690"
  call void @_out_of_gas()
  br label %"$have_gas_2697"

"$have_gas_2697":                                 ; preds = %"$out_of_gas_2696", %"$Some_2690"
  %"$consume_2698" = sub i64 %"$gasrem_2694", 1
  store i64 %"$consume_2698", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2700" = icmp ugt i64 1, %"$gasrem_2699"
  br i1 %"$gascmp_2700", label %"$out_of_gas_2701", label %"$have_gas_2702"

"$out_of_gas_2701":                               ; preds = %"$have_gas_2697"
  call void @_out_of_gas()
  br label %"$have_gas_2702"

"$have_gas_2702":                                 ; preds = %"$out_of_gas_2701", %"$have_gas_2697"
  %"$consume_2703" = sub i64 %"$gasrem_2699", 1
  store i64 %"$consume_2703", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2704", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2706" = icmp ugt i64 1, %"$gasrem_2705"
  br i1 %"$gascmp_2706", label %"$out_of_gas_2707", label %"$have_gas_2708"

"$out_of_gas_2707":                               ; preds = %"$have_gas_2702"
  call void @_out_of_gas()
  br label %"$have_gas_2708"

"$have_gas_2708":                                 ; preds = %"$out_of_gas_2707", %"$have_gas_2702"
  %"$consume_2709" = sub i64 %"$gasrem_2705", 1
  store i64 %"$consume_2709", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2710" = alloca %String, align 8
  %"$c_2711" = load %String, %String* %c, align 8
  store %String %"$c_2711", %String* %"$_literal_cost_c_2710", align 8
  %"$$_literal_cost_c_2710_2712" = bitcast %String* %"$_literal_cost_c_2710" to i8*
  %"$_literal_cost_call_2713" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2710_2712")
  %"$_literal_cost_v_2714" = alloca %String, align 8
  %"$v_2715" = load %String, %String* %v, align 8
  store %String %"$v_2715", %String* %"$_literal_cost_v_2714", align 8
  %"$$_literal_cost_v_2714_2716" = bitcast %String* %"$_literal_cost_v_2714" to i8*
  %"$_literal_cost_call_2717" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2714_2716")
  %"$gasmin_2718" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2713", i64 %"$_literal_cost_call_2717")
  %"$gasrem_2719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2720" = icmp ugt i64 %"$gasmin_2718", %"$gasrem_2719"
  br i1 %"$gascmp_2720", label %"$out_of_gas_2721", label %"$have_gas_2722"

"$out_of_gas_2721":                               ; preds = %"$have_gas_2708"
  call void @_out_of_gas()
  br label %"$have_gas_2722"

"$have_gas_2722":                                 ; preds = %"$out_of_gas_2721", %"$have_gas_2708"
  %"$consume_2723" = sub i64 %"$gasrem_2719", %"$gasmin_2718"
  store i64 %"$consume_2723", i64* @_gasrem, align 8
  %"$execptr_load_2724" = load i8*, i8** @_execptr, align 8
  %"$c_2725" = load %String, %String* %c, align 8
  %"$v_2726" = load %String, %String* %v, align 8
  %"$eq_call_2727" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2724", %String %"$c_2725", %String %"$v_2726")
  store %TName_Bool* %"$eq_call_2727", %TName_Bool** %eq, align 8
  %"$gasrem_2729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2730" = icmp ugt i64 2, %"$gasrem_2729"
  br i1 %"$gascmp_2730", label %"$out_of_gas_2731", label %"$have_gas_2732"

"$out_of_gas_2731":                               ; preds = %"$have_gas_2722"
  call void @_out_of_gas()
  br label %"$have_gas_2732"

"$have_gas_2732":                                 ; preds = %"$out_of_gas_2731", %"$have_gas_2722"
  %"$consume_2733" = sub i64 %"$gasrem_2729", 2
  store i64 %"$consume_2733", i64* @_gasrem, align 8
  %"$eq_2735" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2736" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2735", i32 0, i32 0
  %"$eq_tag_2737" = load i8, i8* %"$eq_tag_2736", align 1
  switch i8 %"$eq_tag_2737", label %"$empty_default_2738" [
    i8 0, label %"$True_2739"
    i8 1, label %"$False_2741"
  ]

"$True_2739":                                     ; preds = %"$have_gas_2732"
  %"$eq_2740" = bitcast %TName_Bool* %"$eq_2735" to %CName_True*
  br label %"$matchsucc_2734"

"$False_2741":                                    ; preds = %"$have_gas_2732"
  %"$eq_2742" = bitcast %TName_Bool* %"$eq_2735" to %CName_False*
  %"$gasrem_2743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2744" = icmp ugt i64 1, %"$gasrem_2743"
  br i1 %"$gascmp_2744", label %"$out_of_gas_2745", label %"$have_gas_2746"

"$out_of_gas_2745":                               ; preds = %"$False_2741"
  call void @_out_of_gas()
  br label %"$have_gas_2746"

"$have_gas_2746":                                 ; preds = %"$out_of_gas_2745", %"$False_2741"
  %"$consume_2747" = sub i64 %"$gasrem_2743", 1
  store i64 %"$consume_2747", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2749" = icmp ugt i64 1, %"$gasrem_2748"
  br i1 %"$gascmp_2749", label %"$out_of_gas_2750", label %"$have_gas_2751"

"$out_of_gas_2750":                               ; preds = %"$have_gas_2746"
  call void @_out_of_gas()
  br label %"$have_gas_2751"

"$have_gas_2751":                                 ; preds = %"$out_of_gas_2750", %"$have_gas_2746"
  %"$consume_2752" = sub i64 %"$gasrem_2748", 1
  store i64 %"$consume_2752", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_2753", i32 0, i32 0), i32 25 }, %String* %m, align 8
  %"$gasrem_2754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2755" = icmp ugt i64 1, %"$gasrem_2754"
  br i1 %"$gascmp_2755", label %"$out_of_gas_2756", label %"$have_gas_2757"

"$out_of_gas_2756":                               ; preds = %"$have_gas_2751"
  call void @_out_of_gas()
  br label %"$have_gas_2757"

"$have_gas_2757":                                 ; preds = %"$out_of_gas_2756", %"$have_gas_2751"
  %"$consume_2758" = sub i64 %"$gasrem_2754", 1
  store i64 %"$consume_2758", i64* @_gasrem, align 8
  %"$fail_msg__origin_2759" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2759", align 1
  %"$fail_msg__sender_2760" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2760", align 1
  %"$tname_2761" = load %String, %String* %tname, align 8
  %"$m_2762" = load %String, %String* %m, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2759", [20 x i8]* %"$fail_msg__sender_2760", %String %"$tname_2761", %String %"$m_2762")
  br label %"$matchsucc_2734"

"$empty_default_2738":                            ; preds = %"$have_gas_2732"
  br label %"$matchsucc_2734"

"$matchsucc_2734":                                ; preds = %"$have_gas_2757", %"$True_2739", %"$empty_default_2738"
  br label %"$matchsucc_2685"

"$None_2763":                                     ; preds = %"$have_gas_2683"
  %"$c1_2764" = bitcast %TName_Option_String* %"$c1_2686" to %CName_None_String*
  %"$gasrem_2765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2766" = icmp ugt i64 1, %"$gasrem_2765"
  br i1 %"$gascmp_2766", label %"$out_of_gas_2767", label %"$have_gas_2768"

"$out_of_gas_2767":                               ; preds = %"$None_2763"
  call void @_out_of_gas()
  br label %"$have_gas_2768"

"$have_gas_2768":                                 ; preds = %"$out_of_gas_2767", %"$None_2763"
  %"$consume_2769" = sub i64 %"$gasrem_2765", 1
  store i64 %"$consume_2769", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2771" = icmp ugt i64 1, %"$gasrem_2770"
  br i1 %"$gascmp_2771", label %"$out_of_gas_2772", label %"$have_gas_2773"

"$out_of_gas_2772":                               ; preds = %"$have_gas_2768"
  call void @_out_of_gas()
  br label %"$have_gas_2773"

"$have_gas_2773":                                 ; preds = %"$out_of_gas_2772", %"$have_gas_2768"
  %"$consume_2774" = sub i64 %"$gasrem_2770", 1
  store i64 %"$consume_2774", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_2775", i32 0, i32 0), i32 15 }, %String* %m2, align 8
  %"$gasrem_2776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2777" = icmp ugt i64 1, %"$gasrem_2776"
  br i1 %"$gascmp_2777", label %"$out_of_gas_2778", label %"$have_gas_2779"

"$out_of_gas_2778":                               ; preds = %"$have_gas_2773"
  call void @_out_of_gas()
  br label %"$have_gas_2779"

"$have_gas_2779":                                 ; preds = %"$out_of_gas_2778", %"$have_gas_2773"
  %"$consume_2780" = sub i64 %"$gasrem_2776", 1
  store i64 %"$consume_2780", i64* @_gasrem, align 8
  %"$fail_msg__origin_2781" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2781", align 1
  %"$fail_msg__sender_2782" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2782", align 1
  %"$tname_2783" = load %String, %String* %tname, align 8
  %"$m_2784" = load %String, %String* %m2, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2781", [20 x i8]* %"$fail_msg__sender_2782", %String %"$tname_2783", %String %"$m_2784")
  br label %"$matchsucc_2685"

"$empty_default_2689":                            ; preds = %"$have_gas_2683"
  br label %"$matchsucc_2685"

"$matchsucc_2685":                                ; preds = %"$have_gas_2779", %"$matchsucc_2734", %"$empty_default_2689"
  %"$gasrem_2785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2786" = icmp ugt i64 1, %"$gasrem_2785"
  br i1 %"$gascmp_2786", label %"$out_of_gas_2787", label %"$have_gas_2788"

"$out_of_gas_2787":                               ; preds = %"$matchsucc_2685"
  call void @_out_of_gas()
  br label %"$have_gas_2788"

"$have_gas_2788":                                 ; preds = %"$out_of_gas_2787", %"$matchsucc_2685"
  %"$consume_2789" = sub i64 %"$gasrem_2785", 1
  store i64 %"$consume_2789", i64* @_gasrem, align 8
  %"$indices_buf_2790_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2790_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2790_salloc_load", i64 16)
  %"$indices_buf_2790_salloc" = bitcast i8* %"$indices_buf_2790_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2790" = bitcast [16 x i8]* %"$indices_buf_2790_salloc" to i8*
  %"$key1a_2791" = load %String, %String* %key1a, align 8
  %"$indices_gep_2792" = getelementptr i8, i8* %"$indices_buf_2790", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2792" to %String*
  store %String %"$key1a_2791", %String* %indices_cast, align 8
  %"$execptr_load_2793" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_2793", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2794", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_2790", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_2796" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2797" = bitcast i8* %"$_amount_2796" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2797", align 8
  %"$_origin_2798" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2799" = bitcast i8* %"$_origin_2798" to [20 x i8]*
  %"$_sender_2800" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2801" = bitcast i8* %"$_sender_2800" to [20 x i8]*
  call void @"$t10_2621"(%Uint128 %_amount, [20 x i8]* %"$_origin_2799", [20 x i8]* %"$_sender_2801")
  ret void
}

define internal void @"$t11_2802"(%Uint128 %_amount, [20 x i8]* %"$_origin_2803", [20 x i8]* %"$_sender_2804") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2803", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2804", align 1
  %"$gasrem_2805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2806" = icmp ugt i64 1, %"$gasrem_2805"
  br i1 %"$gascmp_2806", label %"$out_of_gas_2807", label %"$have_gas_2808"

"$out_of_gas_2807":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2808"

"$have_gas_2808":                                 ; preds = %"$out_of_gas_2807", %entry
  %"$consume_2809" = sub i64 %"$gasrem_2805", 1
  store i64 %"$consume_2809", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2811" = icmp ugt i64 1, %"$gasrem_2810"
  br i1 %"$gascmp_2811", label %"$out_of_gas_2812", label %"$have_gas_2813"

"$out_of_gas_2812":                               ; preds = %"$have_gas_2808"
  call void @_out_of_gas()
  br label %"$have_gas_2813"

"$have_gas_2813":                                 ; preds = %"$out_of_gas_2812", %"$have_gas_2808"
  %"$consume_2814" = sub i64 %"$gasrem_2810", 1
  store i64 %"$consume_2814", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2815", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2817" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2818" = call i8* @_fetch_field(i8* %"$execptr_load_2817", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2816", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1)
  %"$m1_2819" = bitcast i8* %"$m1_call_2818" to %Map_String_String*
  store %Map_String_String* %"$m1_2819", %Map_String_String** %m1, align 8
  %"$m1_2820" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2820_2821" = bitcast %Map_String_String* %"$m1_2820" to i8*
  %"$_literal_cost_call_2822" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2820_2821")
  %"$m1_2823" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2823_2824" = bitcast %Map_String_String* %"$m1_2823" to i8*
  %"$_mapsortcost_call_2825" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_2823_2824")
  %"$gasadd_2826" = add i64 %"$_literal_cost_call_2822", %"$_mapsortcost_call_2825"
  %"$gasrem_2827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2828" = icmp ugt i64 %"$gasadd_2826", %"$gasrem_2827"
  br i1 %"$gascmp_2828", label %"$out_of_gas_2829", label %"$have_gas_2830"

"$out_of_gas_2829":                               ; preds = %"$have_gas_2813"
  call void @_out_of_gas()
  br label %"$have_gas_2830"

"$have_gas_2830":                                 ; preds = %"$out_of_gas_2829", %"$have_gas_2813"
  %"$consume_2831" = sub i64 %"$gasrem_2827", %"$gasadd_2826"
  store i64 %"$consume_2831", i64* @_gasrem, align 8
  %"$gasrem_2832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2833" = icmp ugt i64 1, %"$gasrem_2832"
  br i1 %"$gascmp_2833", label %"$out_of_gas_2834", label %"$have_gas_2835"

"$out_of_gas_2834":                               ; preds = %"$have_gas_2830"
  call void @_out_of_gas()
  br label %"$have_gas_2835"

"$have_gas_2835":                                 ; preds = %"$out_of_gas_2834", %"$have_gas_2830"
  %"$consume_2836" = sub i64 %"$gasrem_2832", 1
  store i64 %"$consume_2836", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_2837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2838" = icmp ugt i64 1, %"$gasrem_2837"
  br i1 %"$gascmp_2838", label %"$out_of_gas_2839", label %"$have_gas_2840"

"$out_of_gas_2839":                               ; preds = %"$have_gas_2835"
  call void @_out_of_gas()
  br label %"$have_gas_2840"

"$have_gas_2840":                                 ; preds = %"$out_of_gas_2839", %"$have_gas_2835"
  %"$consume_2841" = sub i64 %"$gasrem_2837", 1
  store i64 %"$consume_2841", i64* @_gasrem, align 8
  %"$m1_2842" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2842_2843" = bitcast %Map_String_String* %"$m1_2842" to i8*
  %"$size_call_2844" = call %Uint32 @_size(i8* %"$$m1_2842_2843")
  store %Uint32 %"$size_call_2844", %Uint32* %m1_size, align 4
  %"$gasrem_2845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2846" = icmp ugt i64 1, %"$gasrem_2845"
  br i1 %"$gascmp_2846", label %"$out_of_gas_2847", label %"$have_gas_2848"

"$out_of_gas_2847":                               ; preds = %"$have_gas_2840"
  call void @_out_of_gas()
  br label %"$have_gas_2848"

"$have_gas_2848":                                 ; preds = %"$out_of_gas_2847", %"$have_gas_2840"
  %"$consume_2849" = sub i64 %"$gasrem_2845", 1
  store i64 %"$consume_2849", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2851" = icmp ugt i64 1, %"$gasrem_2850"
  br i1 %"$gascmp_2851", label %"$out_of_gas_2852", label %"$have_gas_2853"

"$out_of_gas_2852":                               ; preds = %"$have_gas_2848"
  call void @_out_of_gas()
  br label %"$have_gas_2853"

"$have_gas_2853":                                 ; preds = %"$out_of_gas_2852", %"$have_gas_2848"
  %"$consume_2854" = sub i64 %"$gasrem_2850", 1
  store i64 %"$consume_2854", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2856" = icmp ugt i64 1, %"$gasrem_2855"
  br i1 %"$gascmp_2856", label %"$out_of_gas_2857", label %"$have_gas_2858"

"$out_of_gas_2857":                               ; preds = %"$have_gas_2853"
  call void @_out_of_gas()
  br label %"$have_gas_2858"

"$have_gas_2858":                                 ; preds = %"$out_of_gas_2857", %"$have_gas_2853"
  %"$consume_2859" = sub i64 %"$gasrem_2855", 1
  store i64 %"$consume_2859", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2861" = icmp ugt i64 4, %"$gasrem_2860"
  br i1 %"$gascmp_2861", label %"$out_of_gas_2862", label %"$have_gas_2863"

"$out_of_gas_2862":                               ; preds = %"$have_gas_2858"
  call void @_out_of_gas()
  br label %"$have_gas_2863"

"$have_gas_2863":                                 ; preds = %"$out_of_gas_2862", %"$have_gas_2858"
  %"$consume_2864" = sub i64 %"$gasrem_2860", 4
  store i64 %"$consume_2864", i64* @_gasrem, align 8
  %"$execptr_load_2865" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2866" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2867" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2868" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2865", %Uint32 %"$m1_size_2866", %Uint32 %"$zero_2867")
  store %TName_Bool* %"$eq_call_2868", %TName_Bool** %is_empty, align 8
  %"$gasrem_2870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2871" = icmp ugt i64 2, %"$gasrem_2870"
  br i1 %"$gascmp_2871", label %"$out_of_gas_2872", label %"$have_gas_2873"

"$out_of_gas_2872":                               ; preds = %"$have_gas_2863"
  call void @_out_of_gas()
  br label %"$have_gas_2873"

"$have_gas_2873":                                 ; preds = %"$out_of_gas_2872", %"$have_gas_2863"
  %"$consume_2874" = sub i64 %"$gasrem_2870", 2
  store i64 %"$consume_2874", i64* @_gasrem, align 8
  %"$is_empty_2876" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2877" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2876", i32 0, i32 0
  %"$is_empty_tag_2878" = load i8, i8* %"$is_empty_tag_2877", align 1
  switch i8 %"$is_empty_tag_2878", label %"$empty_default_2879" [
    i8 0, label %"$True_2880"
    i8 1, label %"$False_2882"
  ]

"$True_2880":                                     ; preds = %"$have_gas_2873"
  %"$is_empty_2881" = bitcast %TName_Bool* %"$is_empty_2876" to %CName_True*
  br label %"$matchsucc_2875"

"$False_2882":                                    ; preds = %"$have_gas_2873"
  %"$is_empty_2883" = bitcast %TName_Bool* %"$is_empty_2876" to %CName_False*
  %"$gasrem_2884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2885" = icmp ugt i64 1, %"$gasrem_2884"
  br i1 %"$gascmp_2885", label %"$out_of_gas_2886", label %"$have_gas_2887"

"$out_of_gas_2886":                               ; preds = %"$False_2882"
  call void @_out_of_gas()
  br label %"$have_gas_2887"

"$have_gas_2887":                                 ; preds = %"$out_of_gas_2886", %"$False_2882"
  %"$consume_2888" = sub i64 %"$gasrem_2884", 1
  store i64 %"$consume_2888", i64* @_gasrem, align 8
  %"$fail__origin_2889" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2889", align 1
  %"$fail__sender_2890" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2890", align 1
  %"$tname_2891" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2889", [20 x i8]* %"$fail__sender_2890", %String %"$tname_2891")
  br label %"$matchsucc_2875"

"$empty_default_2879":                            ; preds = %"$have_gas_2873"
  br label %"$matchsucc_2875"

"$matchsucc_2875":                                ; preds = %"$have_gas_2887", %"$True_2880", %"$empty_default_2879"
  %"$gasrem_2892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2893" = icmp ugt i64 1, %"$gasrem_2892"
  br i1 %"$gascmp_2893", label %"$out_of_gas_2894", label %"$have_gas_2895"

"$out_of_gas_2894":                               ; preds = %"$matchsucc_2875"
  call void @_out_of_gas()
  br label %"$have_gas_2895"

"$have_gas_2895":                                 ; preds = %"$out_of_gas_2894", %"$matchsucc_2875"
  %"$consume_2896" = sub i64 %"$gasrem_2892", 1
  store i64 %"$consume_2896", i64* @_gasrem, align 8
  %e2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_2897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2898" = icmp ugt i64 1, %"$gasrem_2897"
  br i1 %"$gascmp_2898", label %"$out_of_gas_2899", label %"$have_gas_2900"

"$out_of_gas_2899":                               ; preds = %"$have_gas_2895"
  call void @_out_of_gas()
  br label %"$have_gas_2900"

"$have_gas_2900":                                 ; preds = %"$out_of_gas_2899", %"$have_gas_2895"
  %"$consume_2901" = sub i64 %"$gasrem_2897", 1
  store i64 %"$consume_2901", i64* @_gasrem, align 8
  %"$execptr_load_2902" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2903" = call i8* @_new_empty_map(i8* %"$execptr_load_2902")
  %"$_new_empty_map_2904" = bitcast i8* %"$_new_empty_map_call_2903" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_2904", %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$e2_2905" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$$e2_2905_2906" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2905" to i8*
  %"$_literal_cost_call_2907" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e2_2905_2906")
  %"$gasrem_2908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2909" = icmp ugt i64 %"$_literal_cost_call_2907", %"$gasrem_2908"
  br i1 %"$gascmp_2909", label %"$out_of_gas_2910", label %"$have_gas_2911"

"$out_of_gas_2910":                               ; preds = %"$have_gas_2900"
  call void @_out_of_gas()
  br label %"$have_gas_2911"

"$have_gas_2911":                                 ; preds = %"$out_of_gas_2910", %"$have_gas_2900"
  %"$consume_2912" = sub i64 %"$gasrem_2908", %"$_literal_cost_call_2907"
  store i64 %"$consume_2912", i64* @_gasrem, align 8
  %"$execptr_load_2913" = load i8*, i8** @_execptr, align 8
  %"$e2_2915" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$update_value_2916" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2915" to i8*
  call void @_update_field(i8* %"$execptr_load_2913", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2914", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_2916")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_2918" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2919" = bitcast i8* %"$_amount_2918" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2919", align 8
  %"$_origin_2920" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2921" = bitcast i8* %"$_origin_2920" to [20 x i8]*
  %"$_sender_2922" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2923" = bitcast i8* %"$_sender_2922" to [20 x i8]*
  call void @"$t11_2802"(%Uint128 %_amount, [20 x i8]* %"$_origin_2921", [20 x i8]* %"$_sender_2923")
  ret void
}

define internal void @"$t12_2924"(%Uint128 %_amount, [20 x i8]* %"$_origin_2925", [20 x i8]* %"$_sender_2926") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2925", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2926", align 1
  %"$gasrem_2927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2928" = icmp ugt i64 1, %"$gasrem_2927"
  br i1 %"$gascmp_2928", label %"$out_of_gas_2929", label %"$have_gas_2930"

"$out_of_gas_2929":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2930"

"$have_gas_2930":                                 ; preds = %"$out_of_gas_2929", %entry
  %"$consume_2931" = sub i64 %"$gasrem_2927", 1
  store i64 %"$consume_2931", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2933" = icmp ugt i64 1, %"$gasrem_2932"
  br i1 %"$gascmp_2933", label %"$out_of_gas_2934", label %"$have_gas_2935"

"$out_of_gas_2934":                               ; preds = %"$have_gas_2930"
  call void @_out_of_gas()
  br label %"$have_gas_2935"

"$have_gas_2935":                                 ; preds = %"$out_of_gas_2934", %"$have_gas_2930"
  %"$consume_2936" = sub i64 %"$gasrem_2932", 1
  store i64 %"$consume_2936", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2937", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_2939" = load i8*, i8** @_execptr, align 8
  %"$m2_call_2940" = call i8* @_fetch_field(i8* %"$execptr_load_2939", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2938", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i32 1)
  %"$m2_2941" = bitcast i8* %"$m2_call_2940" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_2941", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$m2_2942" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2942_2943" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2942" to i8*
  %"$_literal_cost_call_2944" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_2942_2943")
  %"$m2_2945" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2945_2946" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2945" to i8*
  %"$_mapsortcost_call_2947" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_2945_2946")
  %"$gasadd_2948" = add i64 %"$_literal_cost_call_2944", %"$_mapsortcost_call_2947"
  %"$gasrem_2949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2950" = icmp ugt i64 %"$gasadd_2948", %"$gasrem_2949"
  br i1 %"$gascmp_2950", label %"$out_of_gas_2951", label %"$have_gas_2952"

"$out_of_gas_2951":                               ; preds = %"$have_gas_2935"
  call void @_out_of_gas()
  br label %"$have_gas_2952"

"$have_gas_2952":                                 ; preds = %"$out_of_gas_2951", %"$have_gas_2935"
  %"$consume_2953" = sub i64 %"$gasrem_2949", %"$gasadd_2948"
  store i64 %"$consume_2953", i64* @_gasrem, align 8
  %"$gasrem_2954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2955" = icmp ugt i64 1, %"$gasrem_2954"
  br i1 %"$gascmp_2955", label %"$out_of_gas_2956", label %"$have_gas_2957"

"$out_of_gas_2956":                               ; preds = %"$have_gas_2952"
  call void @_out_of_gas()
  br label %"$have_gas_2957"

"$have_gas_2957":                                 ; preds = %"$out_of_gas_2956", %"$have_gas_2952"
  %"$consume_2958" = sub i64 %"$gasrem_2954", 1
  store i64 %"$consume_2958", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$gasrem_2959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2960" = icmp ugt i64 1, %"$gasrem_2959"
  br i1 %"$gascmp_2960", label %"$out_of_gas_2961", label %"$have_gas_2962"

"$out_of_gas_2961":                               ; preds = %"$have_gas_2957"
  call void @_out_of_gas()
  br label %"$have_gas_2962"

"$have_gas_2962":                                 ; preds = %"$out_of_gas_2961", %"$have_gas_2957"
  %"$consume_2963" = sub i64 %"$gasrem_2959", 1
  store i64 %"$consume_2963", i64* @_gasrem, align 8
  %"$m2_2964" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2964_2965" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2964" to i8*
  %"$size_call_2966" = call %Uint32 @_size(i8* %"$$m2_2964_2965")
  store %Uint32 %"$size_call_2966", %Uint32* %m2_size, align 4
  %"$gasrem_2967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2968" = icmp ugt i64 1, %"$gasrem_2967"
  br i1 %"$gascmp_2968", label %"$out_of_gas_2969", label %"$have_gas_2970"

"$out_of_gas_2969":                               ; preds = %"$have_gas_2962"
  call void @_out_of_gas()
  br label %"$have_gas_2970"

"$have_gas_2970":                                 ; preds = %"$out_of_gas_2969", %"$have_gas_2962"
  %"$consume_2971" = sub i64 %"$gasrem_2967", 1
  store i64 %"$consume_2971", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2973" = icmp ugt i64 1, %"$gasrem_2972"
  br i1 %"$gascmp_2973", label %"$out_of_gas_2974", label %"$have_gas_2975"

"$out_of_gas_2974":                               ; preds = %"$have_gas_2970"
  call void @_out_of_gas()
  br label %"$have_gas_2975"

"$have_gas_2975":                                 ; preds = %"$out_of_gas_2974", %"$have_gas_2970"
  %"$consume_2976" = sub i64 %"$gasrem_2972", 1
  store i64 %"$consume_2976", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2978" = icmp ugt i64 1, %"$gasrem_2977"
  br i1 %"$gascmp_2978", label %"$out_of_gas_2979", label %"$have_gas_2980"

"$out_of_gas_2979":                               ; preds = %"$have_gas_2975"
  call void @_out_of_gas()
  br label %"$have_gas_2980"

"$have_gas_2980":                                 ; preds = %"$out_of_gas_2979", %"$have_gas_2975"
  %"$consume_2981" = sub i64 %"$gasrem_2977", 1
  store i64 %"$consume_2981", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2983" = icmp ugt i64 4, %"$gasrem_2982"
  br i1 %"$gascmp_2983", label %"$out_of_gas_2984", label %"$have_gas_2985"

"$out_of_gas_2984":                               ; preds = %"$have_gas_2980"
  call void @_out_of_gas()
  br label %"$have_gas_2985"

"$have_gas_2985":                                 ; preds = %"$out_of_gas_2984", %"$have_gas_2980"
  %"$consume_2986" = sub i64 %"$gasrem_2982", 4
  store i64 %"$consume_2986", i64* @_gasrem, align 8
  %"$execptr_load_2987" = load i8*, i8** @_execptr, align 8
  %"$m2_size_2988" = load %Uint32, %Uint32* %m2_size, align 4
  %"$zero_2989" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2990" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2987", %Uint32 %"$m2_size_2988", %Uint32 %"$zero_2989")
  store %TName_Bool* %"$eq_call_2990", %TName_Bool** %is_empty, align 8
  %"$gasrem_2992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2993" = icmp ugt i64 2, %"$gasrem_2992"
  br i1 %"$gascmp_2993", label %"$out_of_gas_2994", label %"$have_gas_2995"

"$out_of_gas_2994":                               ; preds = %"$have_gas_2985"
  call void @_out_of_gas()
  br label %"$have_gas_2995"

"$have_gas_2995":                                 ; preds = %"$out_of_gas_2994", %"$have_gas_2985"
  %"$consume_2996" = sub i64 %"$gasrem_2992", 2
  store i64 %"$consume_2996", i64* @_gasrem, align 8
  %"$is_empty_2998" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2999" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2998", i32 0, i32 0
  %"$is_empty_tag_3000" = load i8, i8* %"$is_empty_tag_2999", align 1
  switch i8 %"$is_empty_tag_3000", label %"$empty_default_3001" [
    i8 0, label %"$True_3002"
    i8 1, label %"$False_3004"
  ]

"$True_3002":                                     ; preds = %"$have_gas_2995"
  %"$is_empty_3003" = bitcast %TName_Bool* %"$is_empty_2998" to %CName_True*
  br label %"$matchsucc_2997"

"$False_3004":                                    ; preds = %"$have_gas_2995"
  %"$is_empty_3005" = bitcast %TName_Bool* %"$is_empty_2998" to %CName_False*
  %"$gasrem_3006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3007" = icmp ugt i64 1, %"$gasrem_3006"
  br i1 %"$gascmp_3007", label %"$out_of_gas_3008", label %"$have_gas_3009"

"$out_of_gas_3008":                               ; preds = %"$False_3004"
  call void @_out_of_gas()
  br label %"$have_gas_3009"

"$have_gas_3009":                                 ; preds = %"$out_of_gas_3008", %"$False_3004"
  %"$consume_3010" = sub i64 %"$gasrem_3006", 1
  store i64 %"$consume_3010", i64* @_gasrem, align 8
  %"$fail__origin_3011" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3011", align 1
  %"$fail__sender_3012" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3012", align 1
  %"$tname_3013" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3011", [20 x i8]* %"$fail__sender_3012", %String %"$tname_3013")
  br label %"$matchsucc_2997"

"$empty_default_3001":                            ; preds = %"$have_gas_2995"
  br label %"$matchsucc_2997"

"$matchsucc_2997":                                ; preds = %"$have_gas_3009", %"$True_3002", %"$empty_default_3001"
  %"$gasrem_3014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3015" = icmp ugt i64 1, %"$gasrem_3014"
  br i1 %"$gascmp_3015", label %"$out_of_gas_3016", label %"$have_gas_3017"

"$out_of_gas_3016":                               ; preds = %"$matchsucc_2997"
  call void @_out_of_gas()
  br label %"$have_gas_3017"

"$have_gas_3017":                                 ; preds = %"$out_of_gas_3016", %"$matchsucc_2997"
  %"$consume_3018" = sub i64 %"$gasrem_3014", 1
  store i64 %"$consume_3018", i64* @_gasrem, align 8
  %e1 = alloca %Map_String_String*, align 8
  %"$gasrem_3019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3020" = icmp ugt i64 1, %"$gasrem_3019"
  br i1 %"$gascmp_3020", label %"$out_of_gas_3021", label %"$have_gas_3022"

"$out_of_gas_3021":                               ; preds = %"$have_gas_3017"
  call void @_out_of_gas()
  br label %"$have_gas_3022"

"$have_gas_3022":                                 ; preds = %"$out_of_gas_3021", %"$have_gas_3017"
  %"$consume_3023" = sub i64 %"$gasrem_3019", 1
  store i64 %"$consume_3023", i64* @_gasrem, align 8
  %"$execptr_load_3024" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3025" = call i8* @_new_empty_map(i8* %"$execptr_load_3024")
  %"$_new_empty_map_3026" = bitcast i8* %"$_new_empty_map_call_3025" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3026", %Map_String_String** %e1, align 8
  %"$gasrem_3027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3028" = icmp ugt i64 1, %"$gasrem_3027"
  br i1 %"$gascmp_3028", label %"$out_of_gas_3029", label %"$have_gas_3030"

"$out_of_gas_3029":                               ; preds = %"$have_gas_3022"
  call void @_out_of_gas()
  br label %"$have_gas_3030"

"$have_gas_3030":                                 ; preds = %"$out_of_gas_3029", %"$have_gas_3022"
  %"$consume_3031" = sub i64 %"$gasrem_3027", 1
  store i64 %"$consume_3031", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3033" = icmp ugt i64 1, %"$gasrem_3032"
  br i1 %"$gascmp_3033", label %"$out_of_gas_3034", label %"$have_gas_3035"

"$out_of_gas_3034":                               ; preds = %"$have_gas_3030"
  call void @_out_of_gas()
  br label %"$have_gas_3035"

"$have_gas_3035":                                 ; preds = %"$out_of_gas_3034", %"$have_gas_3030"
  %"$consume_3036" = sub i64 %"$gasrem_3032", 1
  store i64 %"$consume_3036", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3037", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$e1_3038" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$$e1_3038_3039" = bitcast %Map_String_String* %"$e1_3038" to i8*
  %"$_literal_cost_call_3040" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e1_3038_3039")
  %"$gasadd_3041" = add i64 %"$_literal_cost_call_3040", 1
  %"$gasrem_3042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3043" = icmp ugt i64 %"$gasadd_3041", %"$gasrem_3042"
  br i1 %"$gascmp_3043", label %"$out_of_gas_3044", label %"$have_gas_3045"

"$out_of_gas_3044":                               ; preds = %"$have_gas_3035"
  call void @_out_of_gas()
  br label %"$have_gas_3045"

"$have_gas_3045":                                 ; preds = %"$out_of_gas_3044", %"$have_gas_3035"
  %"$consume_3046" = sub i64 %"$gasrem_3042", %"$gasadd_3041"
  store i64 %"$consume_3046", i64* @_gasrem, align 8
  %"$indices_buf_3047_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3047_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3047_salloc_load", i64 16)
  %"$indices_buf_3047_salloc" = bitcast i8* %"$indices_buf_3047_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3047" = bitcast [16 x i8]* %"$indices_buf_3047_salloc" to i8*
  %"$key1a_3048" = load %String, %String* %key1a, align 8
  %"$indices_gep_3049" = getelementptr i8, i8* %"$indices_buf_3047", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3049" to %String*
  store %String %"$key1a_3048", %String* %indices_cast, align 8
  %"$execptr_load_3050" = load i8*, i8** @_execptr, align 8
  %"$e1_3052" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$update_value_3053" = bitcast %Map_String_String* %"$e1_3052" to i8*
  call void @_update_field(i8* %"$execptr_load_3050", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3051", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_3047", i8* %"$update_value_3053")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_3055" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3056" = bitcast i8* %"$_amount_3055" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3056", align 8
  %"$_origin_3057" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3058" = bitcast i8* %"$_origin_3057" to [20 x i8]*
  %"$_sender_3059" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3060" = bitcast i8* %"$_sender_3059" to [20 x i8]*
  call void @"$t12_2924"(%Uint128 %_amount, [20 x i8]* %"$_origin_3058", [20 x i8]* %"$_sender_3060")
  ret void
}

define internal void @"$t13_3061"(%Uint128 %_amount, [20 x i8]* %"$_origin_3062", [20 x i8]* %"$_sender_3063") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3062", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3063", align 1
  %"$gasrem_3064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3065" = icmp ugt i64 1, %"$gasrem_3064"
  br i1 %"$gascmp_3065", label %"$out_of_gas_3066", label %"$have_gas_3067"

"$out_of_gas_3066":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3067"

"$have_gas_3067":                                 ; preds = %"$out_of_gas_3066", %entry
  %"$consume_3068" = sub i64 %"$gasrem_3064", 1
  store i64 %"$consume_3068", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3070" = icmp ugt i64 1, %"$gasrem_3069"
  br i1 %"$gascmp_3070", label %"$out_of_gas_3071", label %"$have_gas_3072"

"$out_of_gas_3071":                               ; preds = %"$have_gas_3067"
  call void @_out_of_gas()
  br label %"$have_gas_3072"

"$have_gas_3072":                                 ; preds = %"$out_of_gas_3071", %"$have_gas_3067"
  %"$consume_3073" = sub i64 %"$gasrem_3069", 1
  store i64 %"$consume_3073", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3074", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_3075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3076" = icmp ugt i64 1, %"$gasrem_3075"
  br i1 %"$gascmp_3076", label %"$out_of_gas_3077", label %"$have_gas_3078"

"$out_of_gas_3077":                               ; preds = %"$have_gas_3072"
  call void @_out_of_gas()
  br label %"$have_gas_3078"

"$have_gas_3078":                                 ; preds = %"$out_of_gas_3077", %"$have_gas_3072"
  %"$consume_3079" = sub i64 %"$gasrem_3075", 1
  store i64 %"$consume_3079", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3081" = icmp ugt i64 1, %"$gasrem_3080"
  br i1 %"$gascmp_3081", label %"$out_of_gas_3082", label %"$have_gas_3083"

"$out_of_gas_3082":                               ; preds = %"$have_gas_3078"
  call void @_out_of_gas()
  br label %"$have_gas_3083"

"$have_gas_3083":                                 ; preds = %"$out_of_gas_3082", %"$have_gas_3078"
  %"$consume_3084" = sub i64 %"$gasrem_3080", 1
  store i64 %"$consume_3084", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3085", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %mo = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_3086_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3086_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3086_salloc_load", i64 16)
  %"$indices_buf_3086_salloc" = bitcast i8* %"$indices_buf_3086_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3086" = bitcast [16 x i8]* %"$indices_buf_3086_salloc" to i8*
  %"$key1a_3087" = load %String, %String* %key1a, align 8
  %"$indices_gep_3088" = getelementptr i8, i8* %"$indices_buf_3086", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3088" to %String*
  store %String %"$key1a_3087", %String* %indices_cast, align 8
  %"$execptr_load_3090" = load i8*, i8** @_execptr, align 8
  %"$mo_call_3091" = call i8* @_fetch_field(i8* %"$execptr_load_3090", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3089", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 1, i8* %"$indices_buf_3086", i32 1)
  %"$mo_3092" = bitcast i8* %"$mo_call_3091" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_3092", %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_3093" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3093_3094" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3093" to i8*
  %"$_literal_cost_call_3095" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$mo_3093_3094")
  %"$mo_3096" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3096_3097" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3096" to i8*
  %"$_mapsortcost_call_3098" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_69", i8* %"$$mo_3096_3097")
  %"$gasadd_3099" = add i64 %"$_literal_cost_call_3095", %"$_mapsortcost_call_3098"
  %"$gasadd_3100" = add i64 %"$gasadd_3099", 1
  %"$gasrem_3101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3102" = icmp ugt i64 %"$gasadd_3100", %"$gasrem_3101"
  br i1 %"$gascmp_3102", label %"$out_of_gas_3103", label %"$have_gas_3104"

"$out_of_gas_3103":                               ; preds = %"$have_gas_3083"
  call void @_out_of_gas()
  br label %"$have_gas_3104"

"$have_gas_3104":                                 ; preds = %"$out_of_gas_3103", %"$have_gas_3083"
  %"$consume_3105" = sub i64 %"$gasrem_3101", %"$gasadd_3100"
  store i64 %"$consume_3105", i64* @_gasrem, align 8
  %"$gasrem_3106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3107" = icmp ugt i64 2, %"$gasrem_3106"
  br i1 %"$gascmp_3107", label %"$out_of_gas_3108", label %"$have_gas_3109"

"$out_of_gas_3108":                               ; preds = %"$have_gas_3104"
  call void @_out_of_gas()
  br label %"$have_gas_3109"

"$have_gas_3109":                                 ; preds = %"$out_of_gas_3108", %"$have_gas_3104"
  %"$consume_3110" = sub i64 %"$gasrem_3106", 2
  store i64 %"$consume_3110", i64* @_gasrem, align 8
  %"$mo_3112" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_tag_3113" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_3112", i32 0, i32 0
  %"$mo_tag_3114" = load i8, i8* %"$mo_tag_3113", align 1
  switch i8 %"$mo_tag_3114", label %"$empty_default_3115" [
    i8 0, label %"$Some_3116"
    i8 1, label %"$None_3192"
  ]

"$Some_3116":                                     ; preds = %"$have_gas_3109"
  %"$mo_3117" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3112" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_3118" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_3117", i32 0, i32 1
  %"$m_load_3119" = load %Map_String_String*, %Map_String_String** %"$m_gep_3118", align 8
  %m = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m_load_3119", %Map_String_String** %m, align 8
  %"$gasrem_3120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3121" = icmp ugt i64 1, %"$gasrem_3120"
  br i1 %"$gascmp_3121", label %"$out_of_gas_3122", label %"$have_gas_3123"

"$out_of_gas_3122":                               ; preds = %"$Some_3116"
  call void @_out_of_gas()
  br label %"$have_gas_3123"

"$have_gas_3123":                                 ; preds = %"$out_of_gas_3122", %"$Some_3116"
  %"$consume_3124" = sub i64 %"$gasrem_3120", 1
  store i64 %"$consume_3124", i64* @_gasrem, align 8
  %m_size = alloca %Uint32, align 8
  %"$gasrem_3125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3126" = icmp ugt i64 1, %"$gasrem_3125"
  br i1 %"$gascmp_3126", label %"$out_of_gas_3127", label %"$have_gas_3128"

"$out_of_gas_3127":                               ; preds = %"$have_gas_3123"
  call void @_out_of_gas()
  br label %"$have_gas_3128"

"$have_gas_3128":                                 ; preds = %"$out_of_gas_3127", %"$have_gas_3123"
  %"$consume_3129" = sub i64 %"$gasrem_3125", 1
  store i64 %"$consume_3129", i64* @_gasrem, align 8
  %"$m_3130" = load %Map_String_String*, %Map_String_String** %m, align 8
  %"$$m_3130_3131" = bitcast %Map_String_String* %"$m_3130" to i8*
  %"$size_call_3132" = call %Uint32 @_size(i8* %"$$m_3130_3131")
  store %Uint32 %"$size_call_3132", %Uint32* %m_size, align 4
  %"$gasrem_3133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3128"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3128"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3139" = icmp ugt i64 1, %"$gasrem_3138"
  br i1 %"$gascmp_3139", label %"$out_of_gas_3140", label %"$have_gas_3141"

"$out_of_gas_3140":                               ; preds = %"$have_gas_3136"
  call void @_out_of_gas()
  br label %"$have_gas_3141"

"$have_gas_3141":                                 ; preds = %"$out_of_gas_3140", %"$have_gas_3136"
  %"$consume_3142" = sub i64 %"$gasrem_3138", 1
  store i64 %"$consume_3142", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3144" = icmp ugt i64 1, %"$gasrem_3143"
  br i1 %"$gascmp_3144", label %"$out_of_gas_3145", label %"$have_gas_3146"

"$out_of_gas_3145":                               ; preds = %"$have_gas_3141"
  call void @_out_of_gas()
  br label %"$have_gas_3146"

"$have_gas_3146":                                 ; preds = %"$out_of_gas_3145", %"$have_gas_3141"
  %"$consume_3147" = sub i64 %"$gasrem_3143", 1
  store i64 %"$consume_3147", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3149" = icmp ugt i64 4, %"$gasrem_3148"
  br i1 %"$gascmp_3149", label %"$out_of_gas_3150", label %"$have_gas_3151"

"$out_of_gas_3150":                               ; preds = %"$have_gas_3146"
  call void @_out_of_gas()
  br label %"$have_gas_3151"

"$have_gas_3151":                                 ; preds = %"$out_of_gas_3150", %"$have_gas_3146"
  %"$consume_3152" = sub i64 %"$gasrem_3148", 4
  store i64 %"$consume_3152", i64* @_gasrem, align 8
  %"$execptr_load_3153" = load i8*, i8** @_execptr, align 8
  %"$m_size_3154" = load %Uint32, %Uint32* %m_size, align 4
  %"$zero_3155" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3156" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3153", %Uint32 %"$m_size_3154", %Uint32 %"$zero_3155")
  store %TName_Bool* %"$eq_call_3156", %TName_Bool** %is_empty, align 8
  %"$gasrem_3158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3159" = icmp ugt i64 2, %"$gasrem_3158"
  br i1 %"$gascmp_3159", label %"$out_of_gas_3160", label %"$have_gas_3161"

"$out_of_gas_3160":                               ; preds = %"$have_gas_3151"
  call void @_out_of_gas()
  br label %"$have_gas_3161"

"$have_gas_3161":                                 ; preds = %"$out_of_gas_3160", %"$have_gas_3151"
  %"$consume_3162" = sub i64 %"$gasrem_3158", 2
  store i64 %"$consume_3162", i64* @_gasrem, align 8
  %"$is_empty_3164" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3165" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3164", i32 0, i32 0
  %"$is_empty_tag_3166" = load i8, i8* %"$is_empty_tag_3165", align 1
  switch i8 %"$is_empty_tag_3166", label %"$empty_default_3167" [
    i8 0, label %"$True_3168"
    i8 1, label %"$False_3170"
  ]

"$True_3168":                                     ; preds = %"$have_gas_3161"
  %"$is_empty_3169" = bitcast %TName_Bool* %"$is_empty_3164" to %CName_True*
  br label %"$matchsucc_3163"

"$False_3170":                                    ; preds = %"$have_gas_3161"
  %"$is_empty_3171" = bitcast %TName_Bool* %"$is_empty_3164" to %CName_False*
  %"$gasrem_3172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3173" = icmp ugt i64 1, %"$gasrem_3172"
  br i1 %"$gascmp_3173", label %"$out_of_gas_3174", label %"$have_gas_3175"

"$out_of_gas_3174":                               ; preds = %"$False_3170"
  call void @_out_of_gas()
  br label %"$have_gas_3175"

"$have_gas_3175":                                 ; preds = %"$out_of_gas_3174", %"$False_3170"
  %"$consume_3176" = sub i64 %"$gasrem_3172", 1
  store i64 %"$consume_3176", i64* @_gasrem, align 8
  %msg = alloca %String, align 8
  %"$gasrem_3177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3178" = icmp ugt i64 1, %"$gasrem_3177"
  br i1 %"$gascmp_3178", label %"$out_of_gas_3179", label %"$have_gas_3180"

"$out_of_gas_3179":                               ; preds = %"$have_gas_3175"
  call void @_out_of_gas()
  br label %"$have_gas_3180"

"$have_gas_3180":                                 ; preds = %"$out_of_gas_3179", %"$have_gas_3175"
  %"$consume_3181" = sub i64 %"$gasrem_3177", 1
  store i64 %"$consume_3181", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_3182", i32 0, i32 0), i32 29 }, %String* %msg, align 8
  %"$gasrem_3183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3184" = icmp ugt i64 1, %"$gasrem_3183"
  br i1 %"$gascmp_3184", label %"$out_of_gas_3185", label %"$have_gas_3186"

"$out_of_gas_3185":                               ; preds = %"$have_gas_3180"
  call void @_out_of_gas()
  br label %"$have_gas_3186"

"$have_gas_3186":                                 ; preds = %"$out_of_gas_3185", %"$have_gas_3180"
  %"$consume_3187" = sub i64 %"$gasrem_3183", 1
  store i64 %"$consume_3187", i64* @_gasrem, align 8
  %"$fail_msg__origin_3188" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3188", align 1
  %"$fail_msg__sender_3189" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3189", align 1
  %"$tname_3190" = load %String, %String* %tname, align 8
  %"$msg_3191" = load %String, %String* %msg, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3188", [20 x i8]* %"$fail_msg__sender_3189", %String %"$tname_3190", %String %"$msg_3191")
  br label %"$matchsucc_3163"

"$empty_default_3167":                            ; preds = %"$have_gas_3161"
  br label %"$matchsucc_3163"

"$matchsucc_3163":                                ; preds = %"$have_gas_3186", %"$True_3168", %"$empty_default_3167"
  br label %"$matchsucc_3111"

"$None_3192":                                     ; preds = %"$have_gas_3109"
  %"$mo_3193" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3112" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3195" = icmp ugt i64 1, %"$gasrem_3194"
  br i1 %"$gascmp_3195", label %"$out_of_gas_3196", label %"$have_gas_3197"

"$out_of_gas_3196":                               ; preds = %"$None_3192"
  call void @_out_of_gas()
  br label %"$have_gas_3197"

"$have_gas_3197":                                 ; preds = %"$out_of_gas_3196", %"$None_3192"
  %"$consume_3198" = sub i64 %"$gasrem_3194", 1
  store i64 %"$consume_3198", i64* @_gasrem, align 8
  %"$fail__origin_3199" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3199", align 1
  %"$fail__sender_3200" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3200", align 1
  %"$tname_3201" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3199", [20 x i8]* %"$fail__sender_3200", %String %"$tname_3201")
  br label %"$matchsucc_3111"

"$empty_default_3115":                            ; preds = %"$have_gas_3109"
  br label %"$matchsucc_3111"

"$matchsucc_3111":                                ; preds = %"$have_gas_3197", %"$matchsucc_3163", %"$empty_default_3115"
  %"$gasrem_3202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3203" = icmp ugt i64 1, %"$gasrem_3202"
  br i1 %"$gascmp_3203", label %"$out_of_gas_3204", label %"$have_gas_3205"

"$out_of_gas_3204":                               ; preds = %"$matchsucc_3111"
  call void @_out_of_gas()
  br label %"$have_gas_3205"

"$have_gas_3205":                                 ; preds = %"$out_of_gas_3204", %"$matchsucc_3111"
  %"$consume_3206" = sub i64 %"$gasrem_3202", 1
  store i64 %"$consume_3206", i64* @_gasrem, align 8
  %m3 = alloca %Map_String_String*, align 8
  %"$gasrem_3207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3208" = icmp ugt i64 1, %"$gasrem_3207"
  br i1 %"$gascmp_3208", label %"$out_of_gas_3209", label %"$have_gas_3210"

"$out_of_gas_3209":                               ; preds = %"$have_gas_3205"
  call void @_out_of_gas()
  br label %"$have_gas_3210"

"$have_gas_3210":                                 ; preds = %"$out_of_gas_3209", %"$have_gas_3205"
  %"$consume_3211" = sub i64 %"$gasrem_3207", 1
  store i64 %"$consume_3211", i64* @_gasrem, align 8
  %"$execptr_load_3212" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3213" = call i8* @_new_empty_map(i8* %"$execptr_load_3212")
  %"$_new_empty_map_3214" = bitcast i8* %"$_new_empty_map_call_3213" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3214", %Map_String_String** %m3, align 8
  %"$gasrem_3215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3216" = icmp ugt i64 1, %"$gasrem_3215"
  br i1 %"$gascmp_3216", label %"$out_of_gas_3217", label %"$have_gas_3218"

"$out_of_gas_3217":                               ; preds = %"$have_gas_3210"
  call void @_out_of_gas()
  br label %"$have_gas_3218"

"$have_gas_3218":                                 ; preds = %"$out_of_gas_3217", %"$have_gas_3210"
  %"$consume_3219" = sub i64 %"$gasrem_3215", 1
  store i64 %"$consume_3219", i64* @_gasrem, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3221" = icmp ugt i64 1, %"$gasrem_3220"
  br i1 %"$gascmp_3221", label %"$out_of_gas_3222", label %"$have_gas_3223"

"$out_of_gas_3222":                               ; preds = %"$have_gas_3218"
  call void @_out_of_gas()
  br label %"$have_gas_3223"

"$have_gas_3223":                                 ; preds = %"$out_of_gas_3222", %"$have_gas_3218"
  %"$consume_3224" = sub i64 %"$gasrem_3220", 1
  store i64 %"$consume_3224", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3226" = icmp ugt i64 1, %"$gasrem_3225"
  br i1 %"$gascmp_3226", label %"$out_of_gas_3227", label %"$have_gas_3228"

"$out_of_gas_3227":                               ; preds = %"$have_gas_3223"
  call void @_out_of_gas()
  br label %"$have_gas_3228"

"$have_gas_3228":                                 ; preds = %"$out_of_gas_3227", %"$have_gas_3223"
  %"$consume_3229" = sub i64 %"$gasrem_3225", 1
  store i64 %"$consume_3229", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3230", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3232" = icmp ugt i64 1, %"$gasrem_3231"
  br i1 %"$gascmp_3232", label %"$out_of_gas_3233", label %"$have_gas_3234"

"$out_of_gas_3233":                               ; preds = %"$have_gas_3228"
  call void @_out_of_gas()
  br label %"$have_gas_3234"

"$have_gas_3234":                                 ; preds = %"$out_of_gas_3233", %"$have_gas_3228"
  %"$consume_3235" = sub i64 %"$gasrem_3231", 1
  store i64 %"$consume_3235", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3237" = icmp ugt i64 1, %"$gasrem_3236"
  br i1 %"$gascmp_3237", label %"$out_of_gas_3238", label %"$have_gas_3239"

"$out_of_gas_3238":                               ; preds = %"$have_gas_3234"
  call void @_out_of_gas()
  br label %"$have_gas_3239"

"$have_gas_3239":                                 ; preds = %"$out_of_gas_3238", %"$have_gas_3234"
  %"$consume_3240" = sub i64 %"$gasrem_3236", 1
  store i64 %"$consume_3240", i64* @_gasrem, align 8
  %"$execptr_load_3241" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3242" = call i8* @_new_empty_map(i8* %"$execptr_load_3241")
  %"$_new_empty_map_3243" = bitcast i8* %"$_new_empty_map_call_3242" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3243", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3244" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3244_3245" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3244" to i8*
  %"$_lengthof_call_3246" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e_3244_3245")
  %"$gasadd_3247" = add i64 1, %"$_lengthof_call_3246"
  %"$gasrem_3248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3249" = icmp ugt i64 %"$gasadd_3247", %"$gasrem_3248"
  br i1 %"$gascmp_3249", label %"$out_of_gas_3250", label %"$have_gas_3251"

"$out_of_gas_3250":                               ; preds = %"$have_gas_3239"
  call void @_out_of_gas()
  br label %"$have_gas_3251"

"$have_gas_3251":                                 ; preds = %"$out_of_gas_3250", %"$have_gas_3239"
  %"$consume_3252" = sub i64 %"$gasrem_3248", %"$gasadd_3247"
  store i64 %"$consume_3252", i64* @_gasrem, align 8
  %"$execptr_load_3253" = load i8*, i8** @_execptr, align 8
  %"$e_3254" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3254_3255" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3254" to i8*
  %"$put_key2a_3256" = alloca %String, align 8
  %"$key2a_3257" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3257", %String* %"$put_key2a_3256", align 8
  %"$$put_key2a_3256_3258" = bitcast %String* %"$put_key2a_3256" to i8*
  %"$m3_3259" = load %Map_String_String*, %Map_String_String** %m3, align 8
  %"$$m3_3259_3260" = bitcast %Map_String_String* %"$m3_3259" to i8*
  %"$put_call_3261" = call i8* @_put(i8* %"$execptr_load_3253", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e_3254_3255", i8* %"$$put_key2a_3256_3258", i8* %"$$m3_3259_3260")
  %"$put_3262" = bitcast i8* %"$put_call_3261" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3262", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3264" = icmp ugt i64 1, %"$gasrem_3263"
  br i1 %"$gascmp_3264", label %"$out_of_gas_3265", label %"$have_gas_3266"

"$out_of_gas_3265":                               ; preds = %"$have_gas_3251"
  call void @_out_of_gas()
  br label %"$have_gas_3266"

"$have_gas_3266":                                 ; preds = %"$out_of_gas_3265", %"$have_gas_3251"
  %"$consume_3267" = sub i64 %"$gasrem_3263", 1
  store i64 %"$consume_3267", i64* @_gasrem, align 8
  %"$m3_14" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3269" = icmp ugt i64 1, %"$gasrem_3268"
  br i1 %"$gascmp_3269", label %"$out_of_gas_3270", label %"$have_gas_3271"

"$out_of_gas_3270":                               ; preds = %"$have_gas_3266"
  call void @_out_of_gas()
  br label %"$have_gas_3271"

"$have_gas_3271":                                 ; preds = %"$out_of_gas_3270", %"$have_gas_3266"
  %"$consume_3272" = sub i64 %"$gasrem_3268", 1
  store i64 %"$consume_3272", i64* @_gasrem, align 8
  %"$e_13" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3274" = icmp ugt i64 1, %"$gasrem_3273"
  br i1 %"$gascmp_3274", label %"$out_of_gas_3275", label %"$have_gas_3276"

"$out_of_gas_3275":                               ; preds = %"$have_gas_3271"
  call void @_out_of_gas()
  br label %"$have_gas_3276"

"$have_gas_3276":                                 ; preds = %"$out_of_gas_3275", %"$have_gas_3271"
  %"$consume_3277" = sub i64 %"$gasrem_3273", 1
  store i64 %"$consume_3277", i64* @_gasrem, align 8
  %"$execptr_load_3278" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3279" = call i8* @_new_empty_map(i8* %"$execptr_load_3278")
  %"$_new_empty_map_3280" = bitcast i8* %"$_new_empty_map_call_3279" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_3280", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$e_13_3281" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$$e_13_3281_3282" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_13_3281" to i8*
  %"$_lengthof_call_3283" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$e_13_3281_3282")
  %"$gasadd_3284" = add i64 1, %"$_lengthof_call_3283"
  %"$gasrem_3285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3286" = icmp ugt i64 %"$gasadd_3284", %"$gasrem_3285"
  br i1 %"$gascmp_3286", label %"$out_of_gas_3287", label %"$have_gas_3288"

"$out_of_gas_3287":                               ; preds = %"$have_gas_3276"
  call void @_out_of_gas()
  br label %"$have_gas_3288"

"$have_gas_3288":                                 ; preds = %"$out_of_gas_3287", %"$have_gas_3276"
  %"$consume_3289" = sub i64 %"$gasrem_3285", %"$gasadd_3284"
  store i64 %"$consume_3289", i64* @_gasrem, align 8
  %"$execptr_load_3290" = load i8*, i8** @_execptr, align 8
  %"$$e_13_3291" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$$e_13_3291_3292" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_13_3291" to i8*
  %"$put_key1a_3293" = alloca %String, align 8
  %"$key1a_3294" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3294", %String* %"$put_key1a_3293", align 8
  %"$$put_key1a_3293_3295" = bitcast %String* %"$put_key1a_3293" to i8*
  %"$m2_3296" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3296_3297" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3296" to i8*
  %"$put_call_3298" = call i8* @_put(i8* %"$execptr_load_3290", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$e_13_3291_3292", i8* %"$$put_key1a_3293_3295", i8* %"$$m2_3296_3297")
  %"$put_3299" = bitcast i8* %"$put_call_3298" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$put_3299", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$$m3_14_3300" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$$$m3_14_3300_3301" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_14_3300" to i8*
  %"$_literal_cost_call_3302" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$m3_14_3300_3301")
  %"$gasrem_3303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3304" = icmp ugt i64 %"$_literal_cost_call_3302", %"$gasrem_3303"
  br i1 %"$gascmp_3304", label %"$out_of_gas_3305", label %"$have_gas_3306"

"$out_of_gas_3305":                               ; preds = %"$have_gas_3288"
  call void @_out_of_gas()
  br label %"$have_gas_3306"

"$have_gas_3306":                                 ; preds = %"$out_of_gas_3305", %"$have_gas_3288"
  %"$consume_3307" = sub i64 %"$gasrem_3303", %"$_literal_cost_call_3302"
  store i64 %"$consume_3307", i64* @_gasrem, align 8
  %"$execptr_load_3308" = load i8*, i8** @_execptr, align 8
  %"$$m3_14_3310" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$update_value_3311" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_14_3310" to i8*
  call void @_update_field(i8* %"$execptr_load_3308", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3309", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_3311")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_3313" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3314" = bitcast i8* %"$_amount_3313" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3314", align 8
  %"$_origin_3315" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3316" = bitcast i8* %"$_origin_3315" to [20 x i8]*
  %"$_sender_3317" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3318" = bitcast i8* %"$_sender_3317" to [20 x i8]*
  call void @"$t13_3061"(%Uint128 %_amount, [20 x i8]* %"$_origin_3316", [20 x i8]* %"$_sender_3318")
  ret void
}

define internal void @"$t14_3319"(%Uint128 %_amount, [20 x i8]* %"$_origin_3320", [20 x i8]* %"$_sender_3321") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3320", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3321", align 1
  %"$gasrem_3322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3323" = icmp ugt i64 1, %"$gasrem_3322"
  br i1 %"$gascmp_3323", label %"$out_of_gas_3324", label %"$have_gas_3325"

"$out_of_gas_3324":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3325"

"$have_gas_3325":                                 ; preds = %"$out_of_gas_3324", %entry
  %"$consume_3326" = sub i64 %"$gasrem_3322", 1
  store i64 %"$consume_3326", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3328" = icmp ugt i64 1, %"$gasrem_3327"
  br i1 %"$gascmp_3328", label %"$out_of_gas_3329", label %"$have_gas_3330"

"$out_of_gas_3329":                               ; preds = %"$have_gas_3325"
  call void @_out_of_gas()
  br label %"$have_gas_3330"

"$have_gas_3330":                                 ; preds = %"$out_of_gas_3329", %"$have_gas_3325"
  %"$consume_3331" = sub i64 %"$gasrem_3327", 1
  store i64 %"$consume_3331", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3332", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3334" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3335" = call i8* @_fetch_field(i8* %"$execptr_load_3334", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3333", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m3_3336" = bitcast i8* %"$m3_call_3335" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3336", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3337" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3337_3338" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3337" to i8*
  %"$_literal_cost_call_3339" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3337_3338")
  %"$m3_3340" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3340_3341" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3340" to i8*
  %"$_mapsortcost_call_3342" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3340_3341")
  %"$gasadd_3343" = add i64 %"$_literal_cost_call_3339", %"$_mapsortcost_call_3342"
  %"$gasrem_3344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3345" = icmp ugt i64 %"$gasadd_3343", %"$gasrem_3344"
  br i1 %"$gascmp_3345", label %"$out_of_gas_3346", label %"$have_gas_3347"

"$out_of_gas_3346":                               ; preds = %"$have_gas_3330"
  call void @_out_of_gas()
  br label %"$have_gas_3347"

"$have_gas_3347":                                 ; preds = %"$out_of_gas_3346", %"$have_gas_3330"
  %"$consume_3348" = sub i64 %"$gasrem_3344", %"$gasadd_3343"
  store i64 %"$consume_3348", i64* @_gasrem, align 8
  %"$gasrem_3349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3350" = icmp ugt i64 1, %"$gasrem_3349"
  br i1 %"$gascmp_3350", label %"$out_of_gas_3351", label %"$have_gas_3352"

"$out_of_gas_3351":                               ; preds = %"$have_gas_3347"
  call void @_out_of_gas()
  br label %"$have_gas_3352"

"$have_gas_3352":                                 ; preds = %"$out_of_gas_3351", %"$have_gas_3347"
  %"$consume_3353" = sub i64 %"$gasrem_3349", 1
  store i64 %"$consume_3353", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$gasrem_3354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3355" = icmp ugt i64 1, %"$gasrem_3354"
  br i1 %"$gascmp_3355", label %"$out_of_gas_3356", label %"$have_gas_3357"

"$out_of_gas_3356":                               ; preds = %"$have_gas_3352"
  call void @_out_of_gas()
  br label %"$have_gas_3357"

"$have_gas_3357":                                 ; preds = %"$out_of_gas_3356", %"$have_gas_3352"
  %"$consume_3358" = sub i64 %"$gasrem_3354", 1
  store i64 %"$consume_3358", i64* @_gasrem, align 8
  %"$m3_3359" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3359_3360" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3359" to i8*
  %"$size_call_3361" = call %Uint32 @_size(i8* %"$$m3_3359_3360")
  store %Uint32 %"$size_call_3361", %Uint32* %m3_size, align 4
  %"$gasrem_3362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3363" = icmp ugt i64 1, %"$gasrem_3362"
  br i1 %"$gascmp_3363", label %"$out_of_gas_3364", label %"$have_gas_3365"

"$out_of_gas_3364":                               ; preds = %"$have_gas_3357"
  call void @_out_of_gas()
  br label %"$have_gas_3365"

"$have_gas_3365":                                 ; preds = %"$out_of_gas_3364", %"$have_gas_3357"
  %"$consume_3366" = sub i64 %"$gasrem_3362", 1
  store i64 %"$consume_3366", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3368" = icmp ugt i64 1, %"$gasrem_3367"
  br i1 %"$gascmp_3368", label %"$out_of_gas_3369", label %"$have_gas_3370"

"$out_of_gas_3369":                               ; preds = %"$have_gas_3365"
  call void @_out_of_gas()
  br label %"$have_gas_3370"

"$have_gas_3370":                                 ; preds = %"$out_of_gas_3369", %"$have_gas_3365"
  %"$consume_3371" = sub i64 %"$gasrem_3367", 1
  store i64 %"$consume_3371", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3373" = icmp ugt i64 1, %"$gasrem_3372"
  br i1 %"$gascmp_3373", label %"$out_of_gas_3374", label %"$have_gas_3375"

"$out_of_gas_3374":                               ; preds = %"$have_gas_3370"
  call void @_out_of_gas()
  br label %"$have_gas_3375"

"$have_gas_3375":                                 ; preds = %"$out_of_gas_3374", %"$have_gas_3370"
  %"$consume_3376" = sub i64 %"$gasrem_3372", 1
  store i64 %"$consume_3376", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3378" = icmp ugt i64 4, %"$gasrem_3377"
  br i1 %"$gascmp_3378", label %"$out_of_gas_3379", label %"$have_gas_3380"

"$out_of_gas_3379":                               ; preds = %"$have_gas_3375"
  call void @_out_of_gas()
  br label %"$have_gas_3380"

"$have_gas_3380":                                 ; preds = %"$out_of_gas_3379", %"$have_gas_3375"
  %"$consume_3381" = sub i64 %"$gasrem_3377", 4
  store i64 %"$consume_3381", i64* @_gasrem, align 8
  %"$execptr_load_3382" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3383" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3384" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3385" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3382", %Uint32 %"$m3_size_3383", %Uint32 %"$one_3384")
  store %TName_Bool* %"$eq_call_3385", %TName_Bool** %is_empty, align 8
  %"$gasrem_3387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3388" = icmp ugt i64 2, %"$gasrem_3387"
  br i1 %"$gascmp_3388", label %"$out_of_gas_3389", label %"$have_gas_3390"

"$out_of_gas_3389":                               ; preds = %"$have_gas_3380"
  call void @_out_of_gas()
  br label %"$have_gas_3390"

"$have_gas_3390":                                 ; preds = %"$out_of_gas_3389", %"$have_gas_3380"
  %"$consume_3391" = sub i64 %"$gasrem_3387", 2
  store i64 %"$consume_3391", i64* @_gasrem, align 8
  %"$is_empty_3393" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3394" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3393", i32 0, i32 0
  %"$is_empty_tag_3395" = load i8, i8* %"$is_empty_tag_3394", align 1
  switch i8 %"$is_empty_tag_3395", label %"$empty_default_3396" [
    i8 0, label %"$True_3397"
    i8 1, label %"$False_3399"
  ]

"$True_3397":                                     ; preds = %"$have_gas_3390"
  %"$is_empty_3398" = bitcast %TName_Bool* %"$is_empty_3393" to %CName_True*
  br label %"$matchsucc_3392"

"$False_3399":                                    ; preds = %"$have_gas_3390"
  %"$is_empty_3400" = bitcast %TName_Bool* %"$is_empty_3393" to %CName_False*
  %"$gasrem_3401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3402" = icmp ugt i64 1, %"$gasrem_3401"
  br i1 %"$gascmp_3402", label %"$out_of_gas_3403", label %"$have_gas_3404"

"$out_of_gas_3403":                               ; preds = %"$False_3399"
  call void @_out_of_gas()
  br label %"$have_gas_3404"

"$have_gas_3404":                                 ; preds = %"$out_of_gas_3403", %"$False_3399"
  %"$consume_3405" = sub i64 %"$gasrem_3401", 1
  store i64 %"$consume_3405", i64* @_gasrem, align 8
  %"$fail__origin_3406" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3406", align 1
  %"$fail__sender_3407" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3407", align 1
  %"$tname_3408" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3406", [20 x i8]* %"$fail__sender_3407", %String %"$tname_3408")
  br label %"$matchsucc_3392"

"$empty_default_3396":                            ; preds = %"$have_gas_3390"
  br label %"$matchsucc_3392"

"$matchsucc_3392":                                ; preds = %"$have_gas_3404", %"$True_3397", %"$empty_default_3396"
  %"$gasrem_3409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3410" = icmp ugt i64 1, %"$gasrem_3409"
  br i1 %"$gascmp_3410", label %"$out_of_gas_3411", label %"$have_gas_3412"

"$out_of_gas_3411":                               ; preds = %"$matchsucc_3392"
  call void @_out_of_gas()
  br label %"$have_gas_3412"

"$have_gas_3412":                                 ; preds = %"$out_of_gas_3411", %"$matchsucc_3392"
  %"$consume_3413" = sub i64 %"$gasrem_3409", 1
  store i64 %"$consume_3413", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3415" = icmp ugt i64 1, %"$gasrem_3414"
  br i1 %"$gascmp_3415", label %"$out_of_gas_3416", label %"$have_gas_3417"

"$out_of_gas_3416":                               ; preds = %"$have_gas_3412"
  call void @_out_of_gas()
  br label %"$have_gas_3417"

"$have_gas_3417":                                 ; preds = %"$out_of_gas_3416", %"$have_gas_3412"
  %"$consume_3418" = sub i64 %"$gasrem_3414", 1
  store i64 %"$consume_3418", i64* @_gasrem, align 8
  %"$execptr_load_3419" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3420" = call i8* @_new_empty_map(i8* %"$execptr_load_3419")
  %"$_new_empty_map_3421" = bitcast i8* %"$_new_empty_map_call_3420" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3421", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3422" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3422_3423" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3422" to i8*
  %"$_literal_cost_call_3424" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$e_3422_3423")
  %"$gasrem_3425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3426" = icmp ugt i64 %"$_literal_cost_call_3424", %"$gasrem_3425"
  br i1 %"$gascmp_3426", label %"$out_of_gas_3427", label %"$have_gas_3428"

"$out_of_gas_3427":                               ; preds = %"$have_gas_3417"
  call void @_out_of_gas()
  br label %"$have_gas_3428"

"$have_gas_3428":                                 ; preds = %"$out_of_gas_3427", %"$have_gas_3417"
  %"$consume_3429" = sub i64 %"$gasrem_3425", %"$_literal_cost_call_3424"
  store i64 %"$consume_3429", i64* @_gasrem, align 8
  %"$execptr_load_3430" = load i8*, i8** @_execptr, align 8
  %"$e_3432" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$update_value_3433" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3432" to i8*
  call void @_update_field(i8* %"$execptr_load_3430", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_3431", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_3433")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_3435" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3436" = bitcast i8* %"$_amount_3435" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3436", align 8
  %"$_origin_3437" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3438" = bitcast i8* %"$_origin_3437" to [20 x i8]*
  %"$_sender_3439" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3440" = bitcast i8* %"$_sender_3439" to [20 x i8]*
  call void @"$t14_3319"(%Uint128 %_amount, [20 x i8]* %"$_origin_3438", [20 x i8]* %"$_sender_3440")
  ret void
}

define internal void @"$t15_3441"(%Uint128 %_amount, [20 x i8]* %"$_origin_3442", [20 x i8]* %"$_sender_3443") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3442", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3443", align 1
  %"$gasrem_3444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3445" = icmp ugt i64 1, %"$gasrem_3444"
  br i1 %"$gascmp_3445", label %"$out_of_gas_3446", label %"$have_gas_3447"

"$out_of_gas_3446":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3447"

"$have_gas_3447":                                 ; preds = %"$out_of_gas_3446", %entry
  %"$consume_3448" = sub i64 %"$gasrem_3444", 1
  store i64 %"$consume_3448", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3450" = icmp ugt i64 1, %"$gasrem_3449"
  br i1 %"$gascmp_3450", label %"$out_of_gas_3451", label %"$have_gas_3452"

"$out_of_gas_3451":                               ; preds = %"$have_gas_3447"
  call void @_out_of_gas()
  br label %"$have_gas_3452"

"$have_gas_3452":                                 ; preds = %"$out_of_gas_3451", %"$have_gas_3447"
  %"$consume_3453" = sub i64 %"$gasrem_3449", 1
  store i64 %"$consume_3453", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3454", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3456" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3457" = call i8* @_fetch_field(i8* %"$execptr_load_3456", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3455", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m3_3458" = bitcast i8* %"$m3_call_3457" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3458", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3459" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3459_3460" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3459" to i8*
  %"$_literal_cost_call_3461" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3459_3460")
  %"$m3_3462" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3462_3463" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3462" to i8*
  %"$_mapsortcost_call_3464" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3462_3463")
  %"$gasadd_3465" = add i64 %"$_literal_cost_call_3461", %"$_mapsortcost_call_3464"
  %"$gasrem_3466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3467" = icmp ugt i64 %"$gasadd_3465", %"$gasrem_3466"
  br i1 %"$gascmp_3467", label %"$out_of_gas_3468", label %"$have_gas_3469"

"$out_of_gas_3468":                               ; preds = %"$have_gas_3452"
  call void @_out_of_gas()
  br label %"$have_gas_3469"

"$have_gas_3469":                                 ; preds = %"$out_of_gas_3468", %"$have_gas_3452"
  %"$consume_3470" = sub i64 %"$gasrem_3466", %"$gasadd_3465"
  store i64 %"$consume_3470", i64* @_gasrem, align 8
  %"$gasrem_3471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3472" = icmp ugt i64 1, %"$gasrem_3471"
  br i1 %"$gascmp_3472", label %"$out_of_gas_3473", label %"$have_gas_3474"

"$out_of_gas_3473":                               ; preds = %"$have_gas_3469"
  call void @_out_of_gas()
  br label %"$have_gas_3474"

"$have_gas_3474":                                 ; preds = %"$out_of_gas_3473", %"$have_gas_3469"
  %"$consume_3475" = sub i64 %"$gasrem_3471", 1
  store i64 %"$consume_3475", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$gasrem_3476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3477" = icmp ugt i64 1, %"$gasrem_3476"
  br i1 %"$gascmp_3477", label %"$out_of_gas_3478", label %"$have_gas_3479"

"$out_of_gas_3478":                               ; preds = %"$have_gas_3474"
  call void @_out_of_gas()
  br label %"$have_gas_3479"

"$have_gas_3479":                                 ; preds = %"$out_of_gas_3478", %"$have_gas_3474"
  %"$consume_3480" = sub i64 %"$gasrem_3476", 1
  store i64 %"$consume_3480", i64* @_gasrem, align 8
  %"$m3_3481" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3481_3482" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3481" to i8*
  %"$size_call_3483" = call %Uint32 @_size(i8* %"$$m3_3481_3482")
  store %Uint32 %"$size_call_3483", %Uint32* %m3_size, align 4
  %"$gasrem_3484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3485" = icmp ugt i64 1, %"$gasrem_3484"
  br i1 %"$gascmp_3485", label %"$out_of_gas_3486", label %"$have_gas_3487"

"$out_of_gas_3486":                               ; preds = %"$have_gas_3479"
  call void @_out_of_gas()
  br label %"$have_gas_3487"

"$have_gas_3487":                                 ; preds = %"$out_of_gas_3486", %"$have_gas_3479"
  %"$consume_3488" = sub i64 %"$gasrem_3484", 1
  store i64 %"$consume_3488", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3490" = icmp ugt i64 1, %"$gasrem_3489"
  br i1 %"$gascmp_3490", label %"$out_of_gas_3491", label %"$have_gas_3492"

"$out_of_gas_3491":                               ; preds = %"$have_gas_3487"
  call void @_out_of_gas()
  br label %"$have_gas_3492"

"$have_gas_3492":                                 ; preds = %"$out_of_gas_3491", %"$have_gas_3487"
  %"$consume_3493" = sub i64 %"$gasrem_3489", 1
  store i64 %"$consume_3493", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3495" = icmp ugt i64 1, %"$gasrem_3494"
  br i1 %"$gascmp_3495", label %"$out_of_gas_3496", label %"$have_gas_3497"

"$out_of_gas_3496":                               ; preds = %"$have_gas_3492"
  call void @_out_of_gas()
  br label %"$have_gas_3497"

"$have_gas_3497":                                 ; preds = %"$out_of_gas_3496", %"$have_gas_3492"
  %"$consume_3498" = sub i64 %"$gasrem_3494", 1
  store i64 %"$consume_3498", i64* @_gasrem, align 8
  %is_one = alloca %TName_Bool*, align 8
  %"$gasrem_3499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3500" = icmp ugt i64 4, %"$gasrem_3499"
  br i1 %"$gascmp_3500", label %"$out_of_gas_3501", label %"$have_gas_3502"

"$out_of_gas_3501":                               ; preds = %"$have_gas_3497"
  call void @_out_of_gas()
  br label %"$have_gas_3502"

"$have_gas_3502":                                 ; preds = %"$out_of_gas_3501", %"$have_gas_3497"
  %"$consume_3503" = sub i64 %"$gasrem_3499", 4
  store i64 %"$consume_3503", i64* @_gasrem, align 8
  %"$execptr_load_3504" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3505" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3506" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3507" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3504", %Uint32 %"$m3_size_3505", %Uint32 %"$one_3506")
  store %TName_Bool* %"$eq_call_3507", %TName_Bool** %is_one, align 8
  %"$gasrem_3509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3510" = icmp ugt i64 2, %"$gasrem_3509"
  br i1 %"$gascmp_3510", label %"$out_of_gas_3511", label %"$have_gas_3512"

"$out_of_gas_3511":                               ; preds = %"$have_gas_3502"
  call void @_out_of_gas()
  br label %"$have_gas_3512"

"$have_gas_3512":                                 ; preds = %"$out_of_gas_3511", %"$have_gas_3502"
  %"$consume_3513" = sub i64 %"$gasrem_3509", 2
  store i64 %"$consume_3513", i64* @_gasrem, align 8
  %"$is_one_3515" = load %TName_Bool*, %TName_Bool** %is_one, align 8
  %"$is_one_tag_3516" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_3515", i32 0, i32 0
  %"$is_one_tag_3517" = load i8, i8* %"$is_one_tag_3516", align 1
  switch i8 %"$is_one_tag_3517", label %"$empty_default_3518" [
    i8 0, label %"$True_3519"
    i8 1, label %"$False_3521"
  ]

"$True_3519":                                     ; preds = %"$have_gas_3512"
  %"$is_one_3520" = bitcast %TName_Bool* %"$is_one_3515" to %CName_True*
  br label %"$matchsucc_3514"

"$False_3521":                                    ; preds = %"$have_gas_3512"
  %"$is_one_3522" = bitcast %TName_Bool* %"$is_one_3515" to %CName_False*
  %"$gasrem_3523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3524" = icmp ugt i64 1, %"$gasrem_3523"
  br i1 %"$gascmp_3524", label %"$out_of_gas_3525", label %"$have_gas_3526"

"$out_of_gas_3525":                               ; preds = %"$False_3521"
  call void @_out_of_gas()
  br label %"$have_gas_3526"

"$have_gas_3526":                                 ; preds = %"$out_of_gas_3525", %"$False_3521"
  %"$consume_3527" = sub i64 %"$gasrem_3523", 1
  store i64 %"$consume_3527", i64* @_gasrem, align 8
  %err = alloca %String, align 8
  %"$gasrem_3528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3529" = icmp ugt i64 1, %"$gasrem_3528"
  br i1 %"$gascmp_3529", label %"$out_of_gas_3530", label %"$have_gas_3531"

"$out_of_gas_3530":                               ; preds = %"$have_gas_3526"
  call void @_out_of_gas()
  br label %"$have_gas_3531"

"$have_gas_3531":                                 ; preds = %"$out_of_gas_3530", %"$have_gas_3526"
  %"$consume_3532" = sub i64 %"$gasrem_3528", 1
  store i64 %"$consume_3532", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_3533", i32 0, i32 0), i32 22 }, %String* %err, align 8
  %"$gasrem_3534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3535" = icmp ugt i64 1, %"$gasrem_3534"
  br i1 %"$gascmp_3535", label %"$out_of_gas_3536", label %"$have_gas_3537"

"$out_of_gas_3536":                               ; preds = %"$have_gas_3531"
  call void @_out_of_gas()
  br label %"$have_gas_3537"

"$have_gas_3537":                                 ; preds = %"$out_of_gas_3536", %"$have_gas_3531"
  %"$consume_3538" = sub i64 %"$gasrem_3534", 1
  store i64 %"$consume_3538", i64* @_gasrem, align 8
  %"$fail_msg__origin_3539" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3539", align 1
  %"$fail_msg__sender_3540" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3540", align 1
  %"$tname_3541" = load %String, %String* %tname, align 8
  %"$err_3542" = load %String, %String* %err, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3539", [20 x i8]* %"$fail_msg__sender_3540", %String %"$tname_3541", %String %"$err_3542")
  br label %"$matchsucc_3514"

"$empty_default_3518":                            ; preds = %"$have_gas_3512"
  br label %"$matchsucc_3514"

"$matchsucc_3514":                                ; preds = %"$have_gas_3537", %"$True_3519", %"$empty_default_3518"
  %"$gasrem_3543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3544" = icmp ugt i64 1, %"$gasrem_3543"
  br i1 %"$gascmp_3544", label %"$out_of_gas_3545", label %"$have_gas_3546"

"$out_of_gas_3545":                               ; preds = %"$matchsucc_3514"
  call void @_out_of_gas()
  br label %"$have_gas_3546"

"$have_gas_3546":                                 ; preds = %"$out_of_gas_3545", %"$matchsucc_3514"
  %"$consume_3547" = sub i64 %"$gasrem_3543", 1
  store i64 %"$consume_3547", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3549" = icmp ugt i64 1, %"$gasrem_3548"
  br i1 %"$gascmp_3549", label %"$out_of_gas_3550", label %"$have_gas_3551"

"$out_of_gas_3550":                               ; preds = %"$have_gas_3546"
  call void @_out_of_gas()
  br label %"$have_gas_3551"

"$have_gas_3551":                                 ; preds = %"$out_of_gas_3550", %"$have_gas_3546"
  %"$consume_3552" = sub i64 %"$gasrem_3548", 1
  store i64 %"$consume_3552", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3553", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_3554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3555" = icmp ugt i64 1, %"$gasrem_3554"
  br i1 %"$gascmp_3555", label %"$out_of_gas_3556", label %"$have_gas_3557"

"$out_of_gas_3556":                               ; preds = %"$have_gas_3551"
  call void @_out_of_gas()
  br label %"$have_gas_3557"

"$have_gas_3557":                                 ; preds = %"$out_of_gas_3556", %"$have_gas_3551"
  %"$consume_3558" = sub i64 %"$gasrem_3554", 1
  store i64 %"$consume_3558", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3560" = icmp ugt i64 1, %"$gasrem_3559"
  br i1 %"$gascmp_3560", label %"$out_of_gas_3561", label %"$have_gas_3562"

"$out_of_gas_3561":                               ; preds = %"$have_gas_3557"
  call void @_out_of_gas()
  br label %"$have_gas_3562"

"$have_gas_3562":                                 ; preds = %"$out_of_gas_3561", %"$have_gas_3557"
  %"$consume_3563" = sub i64 %"$gasrem_3559", 1
  store i64 %"$consume_3563", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3564", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3566" = icmp ugt i64 1, %"$gasrem_3565"
  br i1 %"$gascmp_3566", label %"$out_of_gas_3567", label %"$have_gas_3568"

"$out_of_gas_3567":                               ; preds = %"$have_gas_3562"
  call void @_out_of_gas()
  br label %"$have_gas_3568"

"$have_gas_3568":                                 ; preds = %"$out_of_gas_3567", %"$have_gas_3562"
  %"$consume_3569" = sub i64 %"$gasrem_3565", 1
  store i64 %"$consume_3569", i64* @_gasrem, align 8
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3571" = icmp ugt i64 1, %"$gasrem_3570"
  br i1 %"$gascmp_3571", label %"$out_of_gas_3572", label %"$have_gas_3573"

"$out_of_gas_3572":                               ; preds = %"$have_gas_3568"
  call void @_out_of_gas()
  br label %"$have_gas_3573"

"$have_gas_3573":                                 ; preds = %"$out_of_gas_3572", %"$have_gas_3568"
  %"$consume_3574" = sub i64 %"$gasrem_3570", 1
  store i64 %"$consume_3574", i64* @_gasrem, align 8
  %"$execptr_load_3575" = load i8*, i8** @_execptr, align 8
  %"$m3_3576" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3576_3577" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3576" to i8*
  %"$get_key1a_3578" = alloca %String, align 8
  %"$key1a_3579" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3579", %String* %"$get_key1a_3578", align 8
  %"$$get_key1a_3578_3580" = bitcast %String* %"$get_key1a_3578" to i8*
  %"$get_call_3581" = call i8* @_get(i8* %"$execptr_load_3575", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m3_3576_3577", i8* %"$$get_key1a_3578_3580")
  %"$get_3582" = bitcast i8* %"$get_call_3581" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$get_3582", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$gasrem_3583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3584" = icmp ugt i64 2, %"$gasrem_3583"
  br i1 %"$gascmp_3584", label %"$out_of_gas_3585", label %"$have_gas_3586"

"$out_of_gas_3585":                               ; preds = %"$have_gas_3573"
  call void @_out_of_gas()
  br label %"$have_gas_3586"

"$have_gas_3586":                                 ; preds = %"$out_of_gas_3585", %"$have_gas_3573"
  %"$consume_3587" = sub i64 %"$gasrem_3583", 2
  store i64 %"$consume_3587", i64* @_gasrem, align 8
  %"$m2o_3589" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$m2o_tag_3590" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3589", i32 0, i32 0
  %"$m2o_tag_3591" = load i8, i8* %"$m2o_tag_3590", align 1
  switch i8 %"$m2o_tag_3591", label %"$empty_default_3592" [
    i8 0, label %"$Some_3593"
    i8 1, label %"$None_3785"
  ]

"$Some_3593":                                     ; preds = %"$have_gas_3586"
  %"$m2o_3594" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3589" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_3595" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_3594", i32 0, i32 1
  %"$m2_load_3596" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_3595", align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_3596", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3598" = icmp ugt i64 1, %"$gasrem_3597"
  br i1 %"$gascmp_3598", label %"$out_of_gas_3599", label %"$have_gas_3600"

"$out_of_gas_3599":                               ; preds = %"$Some_3593"
  call void @_out_of_gas()
  br label %"$have_gas_3600"

"$have_gas_3600":                                 ; preds = %"$out_of_gas_3599", %"$Some_3593"
  %"$consume_3601" = sub i64 %"$gasrem_3597", 1
  store i64 %"$consume_3601", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$gasrem_3602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3603" = icmp ugt i64 1, %"$gasrem_3602"
  br i1 %"$gascmp_3603", label %"$out_of_gas_3604", label %"$have_gas_3605"

"$out_of_gas_3604":                               ; preds = %"$have_gas_3600"
  call void @_out_of_gas()
  br label %"$have_gas_3605"

"$have_gas_3605":                                 ; preds = %"$out_of_gas_3604", %"$have_gas_3600"
  %"$consume_3606" = sub i64 %"$gasrem_3602", 1
  store i64 %"$consume_3606", i64* @_gasrem, align 8
  %"$m2_3607" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3607_3608" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3607" to i8*
  %"$size_call_3609" = call %Uint32 @_size(i8* %"$$m2_3607_3608")
  store %Uint32 %"$size_call_3609", %Uint32* %m2_size, align 4
  %"$gasrem_3610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3611" = icmp ugt i64 1, %"$gasrem_3610"
  br i1 %"$gascmp_3611", label %"$out_of_gas_3612", label %"$have_gas_3613"

"$out_of_gas_3612":                               ; preds = %"$have_gas_3605"
  call void @_out_of_gas()
  br label %"$have_gas_3613"

"$have_gas_3613":                                 ; preds = %"$out_of_gas_3612", %"$have_gas_3605"
  %"$consume_3614" = sub i64 %"$gasrem_3610", 1
  store i64 %"$consume_3614", i64* @_gasrem, align 8
  %is_one_1 = alloca %TName_Bool*, align 8
  %"$gasrem_3615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3616" = icmp ugt i64 4, %"$gasrem_3615"
  br i1 %"$gascmp_3616", label %"$out_of_gas_3617", label %"$have_gas_3618"

"$out_of_gas_3617":                               ; preds = %"$have_gas_3613"
  call void @_out_of_gas()
  br label %"$have_gas_3618"

"$have_gas_3618":                                 ; preds = %"$out_of_gas_3617", %"$have_gas_3613"
  %"$consume_3619" = sub i64 %"$gasrem_3615", 4
  store i64 %"$consume_3619", i64* @_gasrem, align 8
  %"$execptr_load_3620" = load i8*, i8** @_execptr, align 8
  %"$m2_size_3621" = load %Uint32, %Uint32* %m2_size, align 4
  %"$one_3622" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3623" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3620", %Uint32 %"$m2_size_3621", %Uint32 %"$one_3622")
  store %TName_Bool* %"$eq_call_3623", %TName_Bool** %is_one_1, align 8
  %"$gasrem_3625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3626" = icmp ugt i64 2, %"$gasrem_3625"
  br i1 %"$gascmp_3626", label %"$out_of_gas_3627", label %"$have_gas_3628"

"$out_of_gas_3627":                               ; preds = %"$have_gas_3618"
  call void @_out_of_gas()
  br label %"$have_gas_3628"

"$have_gas_3628":                                 ; preds = %"$out_of_gas_3627", %"$have_gas_3618"
  %"$consume_3629" = sub i64 %"$gasrem_3625", 2
  store i64 %"$consume_3629", i64* @_gasrem, align 8
  %"$is_one_1_3631" = load %TName_Bool*, %TName_Bool** %is_one_1, align 8
  %"$is_one_1_tag_3632" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_3631", i32 0, i32 0
  %"$is_one_1_tag_3633" = load i8, i8* %"$is_one_1_tag_3632", align 1
  switch i8 %"$is_one_1_tag_3633", label %"$empty_default_3634" [
    i8 0, label %"$True_3635"
    i8 1, label %"$False_3763"
  ]

"$True_3635":                                     ; preds = %"$have_gas_3628"
  %"$is_one_1_3636" = bitcast %TName_Bool* %"$is_one_1_3631" to %CName_True*
  %"$gasrem_3637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3638" = icmp ugt i64 1, %"$gasrem_3637"
  br i1 %"$gascmp_3638", label %"$out_of_gas_3639", label %"$have_gas_3640"

"$out_of_gas_3639":                               ; preds = %"$True_3635"
  call void @_out_of_gas()
  br label %"$have_gas_3640"

"$have_gas_3640":                                 ; preds = %"$out_of_gas_3639", %"$True_3635"
  %"$consume_3641" = sub i64 %"$gasrem_3637", 1
  store i64 %"$consume_3641", i64* @_gasrem, align 8
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$gasrem_3642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3643" = icmp ugt i64 1, %"$gasrem_3642"
  br i1 %"$gascmp_3643", label %"$out_of_gas_3644", label %"$have_gas_3645"

"$out_of_gas_3644":                               ; preds = %"$have_gas_3640"
  call void @_out_of_gas()
  br label %"$have_gas_3645"

"$have_gas_3645":                                 ; preds = %"$out_of_gas_3644", %"$have_gas_3640"
  %"$consume_3646" = sub i64 %"$gasrem_3642", 1
  store i64 %"$consume_3646", i64* @_gasrem, align 8
  %"$execptr_load_3647" = load i8*, i8** @_execptr, align 8
  %"$m2_3648" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3648_3649" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3648" to i8*
  %"$get_key2a_3650" = alloca %String, align 8
  %"$key2a_3651" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3651", %String* %"$get_key2a_3650", align 8
  %"$$get_key2a_3650_3652" = bitcast %String* %"$get_key2a_3650" to i8*
  %"$get_call_3653" = call i8* @_get(i8* %"$execptr_load_3647", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_3648_3649", i8* %"$$get_key2a_3650_3652")
  %"$get_3654" = bitcast i8* %"$get_call_3653" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$get_3654", %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$gasrem_3655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3656" = icmp ugt i64 2, %"$gasrem_3655"
  br i1 %"$gascmp_3656", label %"$out_of_gas_3657", label %"$have_gas_3658"

"$out_of_gas_3657":                               ; preds = %"$have_gas_3645"
  call void @_out_of_gas()
  br label %"$have_gas_3658"

"$have_gas_3658":                                 ; preds = %"$out_of_gas_3657", %"$have_gas_3645"
  %"$consume_3659" = sub i64 %"$gasrem_3655", 2
  store i64 %"$consume_3659", i64* @_gasrem, align 8
  %"$m1o_3661" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$m1o_tag_3662" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_3661", i32 0, i32 0
  %"$m1o_tag_3663" = load i8, i8* %"$m1o_tag_3662", align 1
  switch i8 %"$m1o_tag_3663", label %"$empty_default_3664" [
    i8 0, label %"$Some_3665"
    i8 1, label %"$None_3741"
  ]

"$Some_3665":                                     ; preds = %"$have_gas_3658"
  %"$m1o_3666" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3661" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_3667" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_3666", i32 0, i32 1
  %"$m1_load_3668" = load %Map_String_String*, %Map_String_String** %"$m1_gep_3667", align 8
  %m1 = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m1_load_3668", %Map_String_String** %m1, align 8
  %"$gasrem_3669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3670" = icmp ugt i64 1, %"$gasrem_3669"
  br i1 %"$gascmp_3670", label %"$out_of_gas_3671", label %"$have_gas_3672"

"$out_of_gas_3671":                               ; preds = %"$Some_3665"
  call void @_out_of_gas()
  br label %"$have_gas_3672"

"$have_gas_3672":                                 ; preds = %"$out_of_gas_3671", %"$Some_3665"
  %"$consume_3673" = sub i64 %"$gasrem_3669", 1
  store i64 %"$consume_3673", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_3674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3675" = icmp ugt i64 1, %"$gasrem_3674"
  br i1 %"$gascmp_3675", label %"$out_of_gas_3676", label %"$have_gas_3677"

"$out_of_gas_3676":                               ; preds = %"$have_gas_3672"
  call void @_out_of_gas()
  br label %"$have_gas_3677"

"$have_gas_3677":                                 ; preds = %"$out_of_gas_3676", %"$have_gas_3672"
  %"$consume_3678" = sub i64 %"$gasrem_3674", 1
  store i64 %"$consume_3678", i64* @_gasrem, align 8
  %"$m1_3679" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_3679_3680" = bitcast %Map_String_String* %"$m1_3679" to i8*
  %"$size_call_3681" = call %Uint32 @_size(i8* %"$$m1_3679_3680")
  store %Uint32 %"$size_call_3681", %Uint32* %m1_size, align 4
  %"$gasrem_3682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3683" = icmp ugt i64 1, %"$gasrem_3682"
  br i1 %"$gascmp_3683", label %"$out_of_gas_3684", label %"$have_gas_3685"

"$out_of_gas_3684":                               ; preds = %"$have_gas_3677"
  call void @_out_of_gas()
  br label %"$have_gas_3685"

"$have_gas_3685":                                 ; preds = %"$out_of_gas_3684", %"$have_gas_3677"
  %"$consume_3686" = sub i64 %"$gasrem_3682", 1
  store i64 %"$consume_3686", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3688" = icmp ugt i64 1, %"$gasrem_3687"
  br i1 %"$gascmp_3688", label %"$out_of_gas_3689", label %"$have_gas_3690"

"$out_of_gas_3689":                               ; preds = %"$have_gas_3685"
  call void @_out_of_gas()
  br label %"$have_gas_3690"

"$have_gas_3690":                                 ; preds = %"$out_of_gas_3689", %"$have_gas_3685"
  %"$consume_3691" = sub i64 %"$gasrem_3687", 1
  store i64 %"$consume_3691", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3693" = icmp ugt i64 1, %"$gasrem_3692"
  br i1 %"$gascmp_3693", label %"$out_of_gas_3694", label %"$have_gas_3695"

"$out_of_gas_3694":                               ; preds = %"$have_gas_3690"
  call void @_out_of_gas()
  br label %"$have_gas_3695"

"$have_gas_3695":                                 ; preds = %"$out_of_gas_3694", %"$have_gas_3690"
  %"$consume_3696" = sub i64 %"$gasrem_3692", 1
  store i64 %"$consume_3696", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3698" = icmp ugt i64 4, %"$gasrem_3697"
  br i1 %"$gascmp_3698", label %"$out_of_gas_3699", label %"$have_gas_3700"

"$out_of_gas_3699":                               ; preds = %"$have_gas_3695"
  call void @_out_of_gas()
  br label %"$have_gas_3700"

"$have_gas_3700":                                 ; preds = %"$out_of_gas_3699", %"$have_gas_3695"
  %"$consume_3701" = sub i64 %"$gasrem_3697", 4
  store i64 %"$consume_3701", i64* @_gasrem, align 8
  %"$execptr_load_3702" = load i8*, i8** @_execptr, align 8
  %"$m1_size_3703" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_3704" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3705" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3702", %Uint32 %"$m1_size_3703", %Uint32 %"$zero_3704")
  store %TName_Bool* %"$eq_call_3705", %TName_Bool** %is_empty, align 8
  %"$gasrem_3707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3708" = icmp ugt i64 2, %"$gasrem_3707"
  br i1 %"$gascmp_3708", label %"$out_of_gas_3709", label %"$have_gas_3710"

"$out_of_gas_3709":                               ; preds = %"$have_gas_3700"
  call void @_out_of_gas()
  br label %"$have_gas_3710"

"$have_gas_3710":                                 ; preds = %"$out_of_gas_3709", %"$have_gas_3700"
  %"$consume_3711" = sub i64 %"$gasrem_3707", 2
  store i64 %"$consume_3711", i64* @_gasrem, align 8
  %"$is_empty_3713" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3714" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3713", i32 0, i32 0
  %"$is_empty_tag_3715" = load i8, i8* %"$is_empty_tag_3714", align 1
  switch i8 %"$is_empty_tag_3715", label %"$empty_default_3716" [
    i8 0, label %"$True_3717"
    i8 1, label %"$False_3719"
  ]

"$True_3717":                                     ; preds = %"$have_gas_3710"
  %"$is_empty_3718" = bitcast %TName_Bool* %"$is_empty_3713" to %CName_True*
  br label %"$matchsucc_3712"

"$False_3719":                                    ; preds = %"$have_gas_3710"
  %"$is_empty_3720" = bitcast %TName_Bool* %"$is_empty_3713" to %CName_False*
  %"$gasrem_3721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3722" = icmp ugt i64 1, %"$gasrem_3721"
  br i1 %"$gascmp_3722", label %"$out_of_gas_3723", label %"$have_gas_3724"

"$out_of_gas_3723":                               ; preds = %"$False_3719"
  call void @_out_of_gas()
  br label %"$have_gas_3724"

"$have_gas_3724":                                 ; preds = %"$out_of_gas_3723", %"$False_3719"
  %"$consume_3725" = sub i64 %"$gasrem_3721", 1
  store i64 %"$consume_3725", i64* @_gasrem, align 8
  %err1 = alloca %String, align 8
  %"$gasrem_3726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3727" = icmp ugt i64 1, %"$gasrem_3726"
  br i1 %"$gascmp_3727", label %"$out_of_gas_3728", label %"$have_gas_3729"

"$out_of_gas_3728":                               ; preds = %"$have_gas_3724"
  call void @_out_of_gas()
  br label %"$have_gas_3729"

"$have_gas_3729":                                 ; preds = %"$out_of_gas_3728", %"$have_gas_3724"
  %"$consume_3730" = sub i64 %"$gasrem_3726", 1
  store i64 %"$consume_3730", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_3731", i32 0, i32 0), i32 36 }, %String* %err1, align 8
  %"$gasrem_3732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3733" = icmp ugt i64 1, %"$gasrem_3732"
  br i1 %"$gascmp_3733", label %"$out_of_gas_3734", label %"$have_gas_3735"

"$out_of_gas_3734":                               ; preds = %"$have_gas_3729"
  call void @_out_of_gas()
  br label %"$have_gas_3735"

"$have_gas_3735":                                 ; preds = %"$out_of_gas_3734", %"$have_gas_3729"
  %"$consume_3736" = sub i64 %"$gasrem_3732", 1
  store i64 %"$consume_3736", i64* @_gasrem, align 8
  %"$fail_msg__origin_3737" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3737", align 1
  %"$fail_msg__sender_3738" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3738", align 1
  %"$tname_3739" = load %String, %String* %tname, align 8
  %"$err_3740" = load %String, %String* %err1, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3737", [20 x i8]* %"$fail_msg__sender_3738", %String %"$tname_3739", %String %"$err_3740")
  br label %"$matchsucc_3712"

"$empty_default_3716":                            ; preds = %"$have_gas_3710"
  br label %"$matchsucc_3712"

"$matchsucc_3712":                                ; preds = %"$have_gas_3735", %"$True_3717", %"$empty_default_3716"
  br label %"$matchsucc_3660"

"$None_3741":                                     ; preds = %"$have_gas_3658"
  %"$m1o_3742" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3661" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3744" = icmp ugt i64 1, %"$gasrem_3743"
  br i1 %"$gascmp_3744", label %"$out_of_gas_3745", label %"$have_gas_3746"

"$out_of_gas_3745":                               ; preds = %"$None_3741"
  call void @_out_of_gas()
  br label %"$have_gas_3746"

"$have_gas_3746":                                 ; preds = %"$out_of_gas_3745", %"$None_3741"
  %"$consume_3747" = sub i64 %"$gasrem_3743", 1
  store i64 %"$consume_3747", i64* @_gasrem, align 8
  %err2 = alloca %String, align 8
  %"$gasrem_3748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3749" = icmp ugt i64 1, %"$gasrem_3748"
  br i1 %"$gascmp_3749", label %"$out_of_gas_3750", label %"$have_gas_3751"

"$out_of_gas_3750":                               ; preds = %"$have_gas_3746"
  call void @_out_of_gas()
  br label %"$have_gas_3751"

"$have_gas_3751":                                 ; preds = %"$out_of_gas_3750", %"$have_gas_3746"
  %"$consume_3752" = sub i64 %"$gasrem_3748", 1
  store i64 %"$consume_3752", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3753", i32 0, i32 0), i32 19 }, %String* %err2, align 8
  %"$gasrem_3754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3755" = icmp ugt i64 1, %"$gasrem_3754"
  br i1 %"$gascmp_3755", label %"$out_of_gas_3756", label %"$have_gas_3757"

"$out_of_gas_3756":                               ; preds = %"$have_gas_3751"
  call void @_out_of_gas()
  br label %"$have_gas_3757"

"$have_gas_3757":                                 ; preds = %"$out_of_gas_3756", %"$have_gas_3751"
  %"$consume_3758" = sub i64 %"$gasrem_3754", 1
  store i64 %"$consume_3758", i64* @_gasrem, align 8
  %"$fail_msg__origin_3759" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3759", align 1
  %"$fail_msg__sender_3760" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3760", align 1
  %"$tname_3761" = load %String, %String* %tname, align 8
  %"$err_3762" = load %String, %String* %err2, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3759", [20 x i8]* %"$fail_msg__sender_3760", %String %"$tname_3761", %String %"$err_3762")
  br label %"$matchsucc_3660"

"$empty_default_3664":                            ; preds = %"$have_gas_3658"
  br label %"$matchsucc_3660"

"$matchsucc_3660":                                ; preds = %"$have_gas_3757", %"$matchsucc_3712", %"$empty_default_3664"
  br label %"$matchsucc_3630"

"$False_3763":                                    ; preds = %"$have_gas_3628"
  %"$is_one_1_3764" = bitcast %TName_Bool* %"$is_one_1_3631" to %CName_False*
  %"$gasrem_3765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3766" = icmp ugt i64 1, %"$gasrem_3765"
  br i1 %"$gascmp_3766", label %"$out_of_gas_3767", label %"$have_gas_3768"

"$out_of_gas_3767":                               ; preds = %"$False_3763"
  call void @_out_of_gas()
  br label %"$have_gas_3768"

"$have_gas_3768":                                 ; preds = %"$out_of_gas_3767", %"$False_3763"
  %"$consume_3769" = sub i64 %"$gasrem_3765", 1
  store i64 %"$consume_3769", i64* @_gasrem, align 8
  %err3 = alloca %String, align 8
  %"$gasrem_3770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3771" = icmp ugt i64 1, %"$gasrem_3770"
  br i1 %"$gascmp_3771", label %"$out_of_gas_3772", label %"$have_gas_3773"

"$out_of_gas_3772":                               ; preds = %"$have_gas_3768"
  call void @_out_of_gas()
  br label %"$have_gas_3773"

"$have_gas_3773":                                 ; preds = %"$out_of_gas_3772", %"$have_gas_3768"
  %"$consume_3774" = sub i64 %"$gasrem_3770", 1
  store i64 %"$consume_3774", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_3775", i32 0, i32 0), i32 28 }, %String* %err3, align 8
  %"$gasrem_3776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3777" = icmp ugt i64 1, %"$gasrem_3776"
  br i1 %"$gascmp_3777", label %"$out_of_gas_3778", label %"$have_gas_3779"

"$out_of_gas_3778":                               ; preds = %"$have_gas_3773"
  call void @_out_of_gas()
  br label %"$have_gas_3779"

"$have_gas_3779":                                 ; preds = %"$out_of_gas_3778", %"$have_gas_3773"
  %"$consume_3780" = sub i64 %"$gasrem_3776", 1
  store i64 %"$consume_3780", i64* @_gasrem, align 8
  %"$fail_msg__origin_3781" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3781", align 1
  %"$fail_msg__sender_3782" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3782", align 1
  %"$tname_3783" = load %String, %String* %tname, align 8
  %"$err_3784" = load %String, %String* %err3, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3781", [20 x i8]* %"$fail_msg__sender_3782", %String %"$tname_3783", %String %"$err_3784")
  br label %"$matchsucc_3630"

"$empty_default_3634":                            ; preds = %"$have_gas_3628"
  br label %"$matchsucc_3630"

"$matchsucc_3630":                                ; preds = %"$have_gas_3779", %"$matchsucc_3660", %"$empty_default_3634"
  br label %"$matchsucc_3588"

"$None_3785":                                     ; preds = %"$have_gas_3586"
  %"$m2o_3786" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3589" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_3787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3788" = icmp ugt i64 1, %"$gasrem_3787"
  br i1 %"$gascmp_3788", label %"$out_of_gas_3789", label %"$have_gas_3790"

"$out_of_gas_3789":                               ; preds = %"$None_3785"
  call void @_out_of_gas()
  br label %"$have_gas_3790"

"$have_gas_3790":                                 ; preds = %"$out_of_gas_3789", %"$None_3785"
  %"$consume_3791" = sub i64 %"$gasrem_3787", 1
  store i64 %"$consume_3791", i64* @_gasrem, align 8
  %err4 = alloca %String, align 8
  %"$gasrem_3792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3793" = icmp ugt i64 1, %"$gasrem_3792"
  br i1 %"$gascmp_3793", label %"$out_of_gas_3794", label %"$have_gas_3795"

"$out_of_gas_3794":                               ; preds = %"$have_gas_3790"
  call void @_out_of_gas()
  br label %"$have_gas_3795"

"$have_gas_3795":                                 ; preds = %"$out_of_gas_3794", %"$have_gas_3790"
  %"$consume_3796" = sub i64 %"$gasrem_3792", 1
  store i64 %"$consume_3796", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3797", i32 0, i32 0), i32 19 }, %String* %err4, align 8
  %"$gasrem_3798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3799" = icmp ugt i64 1, %"$gasrem_3798"
  br i1 %"$gascmp_3799", label %"$out_of_gas_3800", label %"$have_gas_3801"

"$out_of_gas_3800":                               ; preds = %"$have_gas_3795"
  call void @_out_of_gas()
  br label %"$have_gas_3801"

"$have_gas_3801":                                 ; preds = %"$out_of_gas_3800", %"$have_gas_3795"
  %"$consume_3802" = sub i64 %"$gasrem_3798", 1
  store i64 %"$consume_3802", i64* @_gasrem, align 8
  %"$fail_msg__origin_3803" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3803", align 1
  %"$fail_msg__sender_3804" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3804", align 1
  %"$tname_3805" = load %String, %String* %tname, align 8
  %"$err_3806" = load %String, %String* %err4, align 8
  call void @"$fail_msg_290"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3803", [20 x i8]* %"$fail_msg__sender_3804", %String %"$tname_3805", %String %"$err_3806")
  br label %"$matchsucc_3588"

"$empty_default_3592":                            ; preds = %"$have_gas_3586"
  br label %"$matchsucc_3588"

"$matchsucc_3588":                                ; preds = %"$have_gas_3801", %"$matchsucc_3630", %"$empty_default_3592"
  %"$gasrem_3807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3808" = icmp ugt i64 1, %"$gasrem_3807"
  br i1 %"$gascmp_3808", label %"$out_of_gas_3809", label %"$have_gas_3810"

"$out_of_gas_3809":                               ; preds = %"$matchsucc_3588"
  call void @_out_of_gas()
  br label %"$have_gas_3810"

"$have_gas_3810":                                 ; preds = %"$out_of_gas_3809", %"$matchsucc_3588"
  %"$consume_3811" = sub i64 %"$gasrem_3807", 1
  store i64 %"$consume_3811", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_3812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3813" = icmp ugt i64 1, %"$gasrem_3812"
  br i1 %"$gascmp_3813", label %"$out_of_gas_3814", label %"$have_gas_3815"

"$out_of_gas_3814":                               ; preds = %"$have_gas_3810"
  call void @_out_of_gas()
  br label %"$have_gas_3815"

"$have_gas_3815":                                 ; preds = %"$out_of_gas_3814", %"$have_gas_3810"
  %"$consume_3816" = sub i64 %"$gasrem_3812", 1
  store i64 %"$consume_3816", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3817", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_3818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3819" = icmp ugt i64 1, %"$gasrem_3818"
  br i1 %"$gascmp_3819", label %"$out_of_gas_3820", label %"$have_gas_3821"

"$out_of_gas_3820":                               ; preds = %"$have_gas_3815"
  call void @_out_of_gas()
  br label %"$have_gas_3821"

"$have_gas_3821":                                 ; preds = %"$out_of_gas_3820", %"$have_gas_3815"
  %"$consume_3822" = sub i64 %"$gasrem_3818", 1
  store i64 %"$consume_3822", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_3823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3824" = icmp ugt i64 1, %"$gasrem_3823"
  br i1 %"$gascmp_3824", label %"$out_of_gas_3825", label %"$have_gas_3826"

"$out_of_gas_3825":                               ; preds = %"$have_gas_3821"
  call void @_out_of_gas()
  br label %"$have_gas_3826"

"$have_gas_3826":                                 ; preds = %"$out_of_gas_3825", %"$have_gas_3821"
  %"$consume_3827" = sub i64 %"$gasrem_3823", 1
  store i64 %"$consume_3827", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3828", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_3829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3830" = icmp ugt i64 1, %"$gasrem_3829"
  br i1 %"$gascmp_3830", label %"$out_of_gas_3831", label %"$have_gas_3832"

"$out_of_gas_3831":                               ; preds = %"$have_gas_3826"
  call void @_out_of_gas()
  br label %"$have_gas_3832"

"$have_gas_3832":                                 ; preds = %"$out_of_gas_3831", %"$have_gas_3826"
  %"$consume_3833" = sub i64 %"$gasrem_3829", 1
  store i64 %"$consume_3833", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_3834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3835" = icmp ugt i64 1, %"$gasrem_3834"
  br i1 %"$gascmp_3835", label %"$out_of_gas_3836", label %"$have_gas_3837"

"$out_of_gas_3836":                               ; preds = %"$have_gas_3832"
  call void @_out_of_gas()
  br label %"$have_gas_3837"

"$have_gas_3837":                                 ; preds = %"$out_of_gas_3836", %"$have_gas_3832"
  %"$consume_3838" = sub i64 %"$gasrem_3834", 1
  store i64 %"$consume_3838", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3839", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_3840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3841" = icmp ugt i64 1, %"$gasrem_3840"
  br i1 %"$gascmp_3841", label %"$out_of_gas_3842", label %"$have_gas_3843"

"$out_of_gas_3842":                               ; preds = %"$have_gas_3837"
  call void @_out_of_gas()
  br label %"$have_gas_3843"

"$have_gas_3843":                                 ; preds = %"$out_of_gas_3842", %"$have_gas_3837"
  %"$consume_3844" = sub i64 %"$gasrem_3840", 1
  store i64 %"$consume_3844", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_3845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3846" = icmp ugt i64 1, %"$gasrem_3845"
  br i1 %"$gascmp_3846", label %"$out_of_gas_3847", label %"$have_gas_3848"

"$out_of_gas_3847":                               ; preds = %"$have_gas_3843"
  call void @_out_of_gas()
  br label %"$have_gas_3848"

"$have_gas_3848":                                 ; preds = %"$out_of_gas_3847", %"$have_gas_3843"
  %"$consume_3849" = sub i64 %"$gasrem_3845", 1
  store i64 %"$consume_3849", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3850", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_3851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3852" = icmp ugt i64 1, %"$gasrem_3851"
  br i1 %"$gascmp_3852", label %"$out_of_gas_3853", label %"$have_gas_3854"

"$out_of_gas_3853":                               ; preds = %"$have_gas_3848"
  call void @_out_of_gas()
  br label %"$have_gas_3854"

"$have_gas_3854":                                 ; preds = %"$out_of_gas_3853", %"$have_gas_3848"
  %"$consume_3855" = sub i64 %"$gasrem_3851", 1
  store i64 %"$consume_3855", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_3856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3857" = icmp ugt i64 1, %"$gasrem_3856"
  br i1 %"$gascmp_3857", label %"$out_of_gas_3858", label %"$have_gas_3859"

"$out_of_gas_3858":                               ; preds = %"$have_gas_3854"
  call void @_out_of_gas()
  br label %"$have_gas_3859"

"$have_gas_3859":                                 ; preds = %"$out_of_gas_3858", %"$have_gas_3854"
  %"$consume_3860" = sub i64 %"$gasrem_3856", 1
  store i64 %"$consume_3860", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3861", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_3862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3863" = icmp ugt i64 1, %"$gasrem_3862"
  br i1 %"$gascmp_3863", label %"$out_of_gas_3864", label %"$have_gas_3865"

"$out_of_gas_3864":                               ; preds = %"$have_gas_3859"
  call void @_out_of_gas()
  br label %"$have_gas_3865"

"$have_gas_3865":                                 ; preds = %"$out_of_gas_3864", %"$have_gas_3859"
  %"$consume_3866" = sub i64 %"$gasrem_3862", 1
  store i64 %"$consume_3866", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_3867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3868" = icmp ugt i64 1, %"$gasrem_3867"
  br i1 %"$gascmp_3868", label %"$out_of_gas_3869", label %"$have_gas_3870"

"$out_of_gas_3869":                               ; preds = %"$have_gas_3865"
  call void @_out_of_gas()
  br label %"$have_gas_3870"

"$have_gas_3870":                                 ; preds = %"$out_of_gas_3869", %"$have_gas_3865"
  %"$consume_3871" = sub i64 %"$gasrem_3867", 1
  store i64 %"$consume_3871", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3872", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$gasrem_3873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3874" = icmp ugt i64 1, %"$gasrem_3873"
  br i1 %"$gascmp_3874", label %"$out_of_gas_3875", label %"$have_gas_3876"

"$out_of_gas_3875":                               ; preds = %"$have_gas_3870"
  call void @_out_of_gas()
  br label %"$have_gas_3876"

"$have_gas_3876":                                 ; preds = %"$out_of_gas_3875", %"$have_gas_3870"
  %"$consume_3877" = sub i64 %"$gasrem_3873", 1
  store i64 %"$consume_3877", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_3878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3879" = icmp ugt i64 1, %"$gasrem_3878"
  br i1 %"$gascmp_3879", label %"$out_of_gas_3880", label %"$have_gas_3881"

"$out_of_gas_3880":                               ; preds = %"$have_gas_3876"
  call void @_out_of_gas()
  br label %"$have_gas_3881"

"$have_gas_3881":                                 ; preds = %"$out_of_gas_3880", %"$have_gas_3876"
  %"$consume_3882" = sub i64 %"$gasrem_3878", 1
  store i64 %"$consume_3882", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3883", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_3884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3885" = icmp ugt i64 1, %"$gasrem_3884"
  br i1 %"$gascmp_3885", label %"$out_of_gas_3886", label %"$have_gas_3887"

"$out_of_gas_3886":                               ; preds = %"$have_gas_3881"
  call void @_out_of_gas()
  br label %"$have_gas_3887"

"$have_gas_3887":                                 ; preds = %"$out_of_gas_3886", %"$have_gas_3881"
  %"$consume_3888" = sub i64 %"$gasrem_3884", 1
  store i64 %"$consume_3888", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_3889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3890" = icmp ugt i64 1, %"$gasrem_3889"
  br i1 %"$gascmp_3890", label %"$out_of_gas_3891", label %"$have_gas_3892"

"$out_of_gas_3891":                               ; preds = %"$have_gas_3887"
  call void @_out_of_gas()
  br label %"$have_gas_3892"

"$have_gas_3892":                                 ; preds = %"$out_of_gas_3891", %"$have_gas_3887"
  %"$consume_3893" = sub i64 %"$gasrem_3889", 1
  store i64 %"$consume_3893", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3894", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_3895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3896" = icmp ugt i64 1, %"$gasrem_3895"
  br i1 %"$gascmp_3896", label %"$out_of_gas_3897", label %"$have_gas_3898"

"$out_of_gas_3897":                               ; preds = %"$have_gas_3892"
  call void @_out_of_gas()
  br label %"$have_gas_3898"

"$have_gas_3898":                                 ; preds = %"$out_of_gas_3897", %"$have_gas_3892"
  %"$consume_3899" = sub i64 %"$gasrem_3895", 1
  store i64 %"$consume_3899", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_3900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3901" = icmp ugt i64 1, %"$gasrem_3900"
  br i1 %"$gascmp_3901", label %"$out_of_gas_3902", label %"$have_gas_3903"

"$out_of_gas_3902":                               ; preds = %"$have_gas_3898"
  call void @_out_of_gas()
  br label %"$have_gas_3903"

"$have_gas_3903":                                 ; preds = %"$out_of_gas_3902", %"$have_gas_3898"
  %"$consume_3904" = sub i64 %"$gasrem_3900", 1
  store i64 %"$consume_3904", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3905", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_3906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3907" = icmp ugt i64 1, %"$gasrem_3906"
  br i1 %"$gascmp_3907", label %"$out_of_gas_3908", label %"$have_gas_3909"

"$out_of_gas_3908":                               ; preds = %"$have_gas_3903"
  call void @_out_of_gas()
  br label %"$have_gas_3909"

"$have_gas_3909":                                 ; preds = %"$out_of_gas_3908", %"$have_gas_3903"
  %"$consume_3910" = sub i64 %"$gasrem_3906", 1
  store i64 %"$consume_3910", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_3911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3912" = icmp ugt i64 1, %"$gasrem_3911"
  br i1 %"$gascmp_3912", label %"$out_of_gas_3913", label %"$have_gas_3914"

"$out_of_gas_3913":                               ; preds = %"$have_gas_3909"
  call void @_out_of_gas()
  br label %"$have_gas_3914"

"$have_gas_3914":                                 ; preds = %"$out_of_gas_3913", %"$have_gas_3909"
  %"$consume_3915" = sub i64 %"$gasrem_3911", 1
  store i64 %"$consume_3915", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3916", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_3917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3918" = icmp ugt i64 1, %"$gasrem_3917"
  br i1 %"$gascmp_3918", label %"$out_of_gas_3919", label %"$have_gas_3920"

"$out_of_gas_3919":                               ; preds = %"$have_gas_3914"
  call void @_out_of_gas()
  br label %"$have_gas_3920"

"$have_gas_3920":                                 ; preds = %"$out_of_gas_3919", %"$have_gas_3914"
  %"$consume_3921" = sub i64 %"$gasrem_3917", 1
  store i64 %"$consume_3921", i64* @_gasrem, align 8
  %m25 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3923" = icmp ugt i64 1, %"$gasrem_3922"
  br i1 %"$gascmp_3923", label %"$out_of_gas_3924", label %"$have_gas_3925"

"$out_of_gas_3924":                               ; preds = %"$have_gas_3920"
  call void @_out_of_gas()
  br label %"$have_gas_3925"

"$have_gas_3925":                                 ; preds = %"$out_of_gas_3924", %"$have_gas_3920"
  %"$consume_3926" = sub i64 %"$gasrem_3922", 1
  store i64 %"$consume_3926", i64* @_gasrem, align 8
  %"$execptr_load_3927" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3928" = call i8* @_new_empty_map(i8* %"$execptr_load_3927")
  %"$_new_empty_map_3929" = bitcast i8* %"$_new_empty_map_call_3928" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3929", %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$gasrem_3930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3931" = icmp ugt i64 1, %"$gasrem_3930"
  br i1 %"$gascmp_3931", label %"$out_of_gas_3932", label %"$have_gas_3933"

"$out_of_gas_3932":                               ; preds = %"$have_gas_3925"
  call void @_out_of_gas()
  br label %"$have_gas_3933"

"$have_gas_3933":                                 ; preds = %"$out_of_gas_3932", %"$have_gas_3925"
  %"$consume_3934" = sub i64 %"$gasrem_3930", 1
  store i64 %"$consume_3934", i64* @_gasrem, align 8
  %m16 = alloca %Map_String_String*, align 8
  %"$gasrem_3935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3936" = icmp ugt i64 1, %"$gasrem_3935"
  br i1 %"$gascmp_3936", label %"$out_of_gas_3937", label %"$have_gas_3938"

"$out_of_gas_3937":                               ; preds = %"$have_gas_3933"
  call void @_out_of_gas()
  br label %"$have_gas_3938"

"$have_gas_3938":                                 ; preds = %"$out_of_gas_3937", %"$have_gas_3933"
  %"$consume_3939" = sub i64 %"$gasrem_3935", 1
  store i64 %"$consume_3939", i64* @_gasrem, align 8
  %"$execptr_load_3940" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3941" = call i8* @_new_empty_map(i8* %"$execptr_load_3940")
  %"$_new_empty_map_3942" = bitcast i8* %"$_new_empty_map_call_3941" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3942", %Map_String_String** %m16, align 8
  %"$gasrem_3943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3944" = icmp ugt i64 1, %"$gasrem_3943"
  br i1 %"$gascmp_3944", label %"$out_of_gas_3945", label %"$have_gas_3946"

"$out_of_gas_3945":                               ; preds = %"$have_gas_3938"
  call void @_out_of_gas()
  br label %"$have_gas_3946"

"$have_gas_3946":                                 ; preds = %"$out_of_gas_3945", %"$have_gas_3938"
  %"$consume_3947" = sub i64 %"$gasrem_3943", 1
  store i64 %"$consume_3947", i64* @_gasrem, align 8
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3949" = icmp ugt i64 1, %"$gasrem_3948"
  br i1 %"$gascmp_3949", label %"$out_of_gas_3950", label %"$have_gas_3951"

"$out_of_gas_3950":                               ; preds = %"$have_gas_3946"
  call void @_out_of_gas()
  br label %"$have_gas_3951"

"$have_gas_3951":                                 ; preds = %"$out_of_gas_3950", %"$have_gas_3946"
  %"$consume_3952" = sub i64 %"$gasrem_3948", 1
  store i64 %"$consume_3952", i64* @_gasrem, align 8
  %m21 = alloca %Map_String_String*, align 8
  %"$m1_3953" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3953_3954" = bitcast %Map_String_String* %"$m1_3953" to i8*
  %"$_lengthof_call_3955" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3953_3954")
  %"$gasadd_3956" = add i64 1, %"$_lengthof_call_3955"
  %"$gasrem_3957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3958" = icmp ugt i64 %"$gasadd_3956", %"$gasrem_3957"
  br i1 %"$gascmp_3958", label %"$out_of_gas_3959", label %"$have_gas_3960"

"$out_of_gas_3959":                               ; preds = %"$have_gas_3951"
  call void @_out_of_gas()
  br label %"$have_gas_3960"

"$have_gas_3960":                                 ; preds = %"$out_of_gas_3959", %"$have_gas_3951"
  %"$consume_3961" = sub i64 %"$gasrem_3957", %"$gasadd_3956"
  store i64 %"$consume_3961", i64* @_gasrem, align 8
  %"$execptr_load_3962" = load i8*, i8** @_execptr, align 8
  %"$m1_3963" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3963_3964" = bitcast %Map_String_String* %"$m1_3963" to i8*
  %"$put_key2a_3965" = alloca %String, align 8
  %"$key2a_3966" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3966", %String* %"$put_key2a_3965", align 8
  %"$$put_key2a_3965_3967" = bitcast %String* %"$put_key2a_3965" to i8*
  %"$put_v1_3968" = alloca %String, align 8
  %"$v1_3969" = load %String, %String* %v1, align 8
  store %String %"$v1_3969", %String* %"$put_v1_3968", align 8
  %"$$put_v1_3968_3970" = bitcast %String* %"$put_v1_3968" to i8*
  %"$put_call_3971" = call i8* @_put(i8* %"$execptr_load_3962", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3963_3964", i8* %"$$put_key2a_3965_3967", i8* %"$$put_v1_3968_3970")
  %"$put_3972" = bitcast i8* %"$put_call_3971" to %Map_String_String*
  store %Map_String_String* %"$put_3972", %Map_String_String** %m21, align 8
  %"$gasrem_3973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3974" = icmp ugt i64 1, %"$gasrem_3973"
  br i1 %"$gascmp_3974", label %"$out_of_gas_3975", label %"$have_gas_3976"

"$out_of_gas_3975":                               ; preds = %"$have_gas_3960"
  call void @_out_of_gas()
  br label %"$have_gas_3976"

"$have_gas_3976":                                 ; preds = %"$out_of_gas_3975", %"$have_gas_3960"
  %"$consume_3977" = sub i64 %"$gasrem_3973", 1
  store i64 %"$consume_3977", i64* @_gasrem, align 8
  %m22 = alloca %Map_String_String*, align 8
  %"$m1_3978" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3978_3979" = bitcast %Map_String_String* %"$m1_3978" to i8*
  %"$_lengthof_call_3980" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3978_3979")
  %"$gasadd_3981" = add i64 1, %"$_lengthof_call_3980"
  %"$gasrem_3982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3983" = icmp ugt i64 %"$gasadd_3981", %"$gasrem_3982"
  br i1 %"$gascmp_3983", label %"$out_of_gas_3984", label %"$have_gas_3985"

"$out_of_gas_3984":                               ; preds = %"$have_gas_3976"
  call void @_out_of_gas()
  br label %"$have_gas_3985"

"$have_gas_3985":                                 ; preds = %"$out_of_gas_3984", %"$have_gas_3976"
  %"$consume_3986" = sub i64 %"$gasrem_3982", %"$gasadd_3981"
  store i64 %"$consume_3986", i64* @_gasrem, align 8
  %"$execptr_load_3987" = load i8*, i8** @_execptr, align 8
  %"$m1_3988" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3988_3989" = bitcast %Map_String_String* %"$m1_3988" to i8*
  %"$put_key2b_3990" = alloca %String, align 8
  %"$key2b_3991" = load %String, %String* %key2b, align 8
  store %String %"$key2b_3991", %String* %"$put_key2b_3990", align 8
  %"$$put_key2b_3990_3992" = bitcast %String* %"$put_key2b_3990" to i8*
  %"$put_v2_3993" = alloca %String, align 8
  %"$v2_3994" = load %String, %String* %v2, align 8
  store %String %"$v2_3994", %String* %"$put_v2_3993", align 8
  %"$$put_v2_3993_3995" = bitcast %String* %"$put_v2_3993" to i8*
  %"$put_call_3996" = call i8* @_put(i8* %"$execptr_load_3987", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_3988_3989", i8* %"$$put_key2b_3990_3992", i8* %"$$put_v2_3993_3995")
  %"$put_3997" = bitcast i8* %"$put_call_3996" to %Map_String_String*
  store %Map_String_String* %"$put_3997", %Map_String_String** %m22, align 8
  %"$gasrem_3998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3999" = icmp ugt i64 1, %"$gasrem_3998"
  br i1 %"$gascmp_3999", label %"$out_of_gas_4000", label %"$have_gas_4001"

"$out_of_gas_4000":                               ; preds = %"$have_gas_3985"
  call void @_out_of_gas()
  br label %"$have_gas_4001"

"$have_gas_4001":                                 ; preds = %"$out_of_gas_4000", %"$have_gas_3985"
  %"$consume_4002" = sub i64 %"$gasrem_3998", 1
  store i64 %"$consume_4002", i64* @_gasrem, align 8
  %m23 = alloca %Map_String_String*, align 8
  %"$m1_4003" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4003_4004" = bitcast %Map_String_String* %"$m1_4003" to i8*
  %"$_lengthof_call_4005" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4003_4004")
  %"$gasadd_4006" = add i64 1, %"$_lengthof_call_4005"
  %"$gasrem_4007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4008" = icmp ugt i64 %"$gasadd_4006", %"$gasrem_4007"
  br i1 %"$gascmp_4008", label %"$out_of_gas_4009", label %"$have_gas_4010"

"$out_of_gas_4009":                               ; preds = %"$have_gas_4001"
  call void @_out_of_gas()
  br label %"$have_gas_4010"

"$have_gas_4010":                                 ; preds = %"$out_of_gas_4009", %"$have_gas_4001"
  %"$consume_4011" = sub i64 %"$gasrem_4007", %"$gasadd_4006"
  store i64 %"$consume_4011", i64* @_gasrem, align 8
  %"$execptr_load_4012" = load i8*, i8** @_execptr, align 8
  %"$m1_4013" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4013_4014" = bitcast %Map_String_String* %"$m1_4013" to i8*
  %"$put_key2c_4015" = alloca %String, align 8
  %"$key2c_4016" = load %String, %String* %key2c, align 8
  store %String %"$key2c_4016", %String* %"$put_key2c_4015", align 8
  %"$$put_key2c_4015_4017" = bitcast %String* %"$put_key2c_4015" to i8*
  %"$put_v3_4018" = alloca %String, align 8
  %"$v3_4019" = load %String, %String* %v3, align 8
  store %String %"$v3_4019", %String* %"$put_v3_4018", align 8
  %"$$put_v3_4018_4020" = bitcast %String* %"$put_v3_4018" to i8*
  %"$put_call_4021" = call i8* @_put(i8* %"$execptr_load_4012", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4013_4014", i8* %"$$put_key2c_4015_4017", i8* %"$$put_v3_4018_4020")
  %"$put_4022" = bitcast i8* %"$put_call_4021" to %Map_String_String*
  store %Map_String_String* %"$put_4022", %Map_String_String** %m23, align 8
  %"$gasrem_4023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4024" = icmp ugt i64 1, %"$gasrem_4023"
  br i1 %"$gascmp_4024", label %"$out_of_gas_4025", label %"$have_gas_4026"

"$out_of_gas_4025":                               ; preds = %"$have_gas_4010"
  call void @_out_of_gas()
  br label %"$have_gas_4026"

"$have_gas_4026":                                 ; preds = %"$out_of_gas_4025", %"$have_gas_4010"
  %"$consume_4027" = sub i64 %"$gasrem_4023", 1
  store i64 %"$consume_4027", i64* @_gasrem, align 8
  %m24 = alloca %Map_String_String*, align 8
  %"$m1_4028" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4028_4029" = bitcast %Map_String_String* %"$m1_4028" to i8*
  %"$_lengthof_call_4030" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4028_4029")
  %"$gasadd_4031" = add i64 1, %"$_lengthof_call_4030"
  %"$gasrem_4032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4033" = icmp ugt i64 %"$gasadd_4031", %"$gasrem_4032"
  br i1 %"$gascmp_4033", label %"$out_of_gas_4034", label %"$have_gas_4035"

"$out_of_gas_4034":                               ; preds = %"$have_gas_4026"
  call void @_out_of_gas()
  br label %"$have_gas_4035"

"$have_gas_4035":                                 ; preds = %"$out_of_gas_4034", %"$have_gas_4026"
  %"$consume_4036" = sub i64 %"$gasrem_4032", %"$gasadd_4031"
  store i64 %"$consume_4036", i64* @_gasrem, align 8
  %"$execptr_load_4037" = load i8*, i8** @_execptr, align 8
  %"$m1_4038" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4038_4039" = bitcast %Map_String_String* %"$m1_4038" to i8*
  %"$put_key2d_4040" = alloca %String, align 8
  %"$key2d_4041" = load %String, %String* %key2d, align 8
  store %String %"$key2d_4041", %String* %"$put_key2d_4040", align 8
  %"$$put_key2d_4040_4042" = bitcast %String* %"$put_key2d_4040" to i8*
  %"$put_v4_4043" = alloca %String, align 8
  %"$v4_4044" = load %String, %String* %v4, align 8
  store %String %"$v4_4044", %String* %"$put_v4_4043", align 8
  %"$$put_v4_4043_4045" = bitcast %String* %"$put_v4_4043" to i8*
  %"$put_call_4046" = call i8* @_put(i8* %"$execptr_load_4037", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4038_4039", i8* %"$$put_key2d_4040_4042", i8* %"$$put_v4_4043_4045")
  %"$put_4047" = bitcast i8* %"$put_call_4046" to %Map_String_String*
  store %Map_String_String* %"$put_4047", %Map_String_String** %m24, align 8
  %"$gasrem_4048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4049" = icmp ugt i64 1, %"$gasrem_4048"
  br i1 %"$gascmp_4049", label %"$out_of_gas_4050", label %"$have_gas_4051"

"$out_of_gas_4050":                               ; preds = %"$have_gas_4035"
  call void @_out_of_gas()
  br label %"$have_gas_4051"

"$have_gas_4051":                                 ; preds = %"$out_of_gas_4050", %"$have_gas_4035"
  %"$consume_4052" = sub i64 %"$gasrem_4048", 1
  store i64 %"$consume_4052", i64* @_gasrem, align 8
  %m11 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m2_4053" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4053_4054" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4053" to i8*
  %"$_lengthof_call_4055" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_4053_4054")
  %"$gasadd_4056" = add i64 1, %"$_lengthof_call_4055"
  %"$gasrem_4057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4058" = icmp ugt i64 %"$gasadd_4056", %"$gasrem_4057"
  br i1 %"$gascmp_4058", label %"$out_of_gas_4059", label %"$have_gas_4060"

"$out_of_gas_4059":                               ; preds = %"$have_gas_4051"
  call void @_out_of_gas()
  br label %"$have_gas_4060"

"$have_gas_4060":                                 ; preds = %"$out_of_gas_4059", %"$have_gas_4051"
  %"$consume_4061" = sub i64 %"$gasrem_4057", %"$gasadd_4056"
  store i64 %"$consume_4061", i64* @_gasrem, align 8
  %"$execptr_load_4062" = load i8*, i8** @_execptr, align 8
  %"$m2_4063" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4063_4064" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4063" to i8*
  %"$put_key1a_4065" = alloca %String, align 8
  %"$key1a_4066" = load %String, %String* %key1a, align 8
  store %String %"$key1a_4066", %String* %"$put_key1a_4065", align 8
  %"$$put_key1a_4065_4067" = bitcast %String* %"$put_key1a_4065" to i8*
  %"$m21_4068" = load %Map_String_String*, %Map_String_String** %m21, align 8
  %"$$m21_4068_4069" = bitcast %Map_String_String* %"$m21_4068" to i8*
  %"$put_call_4070" = call i8* @_put(i8* %"$execptr_load_4062", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_4063_4064", i8* %"$$put_key1a_4065_4067", i8* %"$$m21_4068_4069")
  %"$put_4071" = bitcast i8* %"$put_call_4070" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4071", %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$gasrem_4072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4073" = icmp ugt i64 1, %"$gasrem_4072"
  br i1 %"$gascmp_4073", label %"$out_of_gas_4074", label %"$have_gas_4075"

"$out_of_gas_4074":                               ; preds = %"$have_gas_4060"
  call void @_out_of_gas()
  br label %"$have_gas_4075"

"$have_gas_4075":                                 ; preds = %"$out_of_gas_4074", %"$have_gas_4060"
  %"$consume_4076" = sub i64 %"$gasrem_4072", 1
  store i64 %"$consume_4076", i64* @_gasrem, align 8
  %m12 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m11_4077" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4077_4078" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4077" to i8*
  %"$_lengthof_call_4079" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m11_4077_4078")
  %"$gasadd_4080" = add i64 1, %"$_lengthof_call_4079"
  %"$gasrem_4081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4082" = icmp ugt i64 %"$gasadd_4080", %"$gasrem_4081"
  br i1 %"$gascmp_4082", label %"$out_of_gas_4083", label %"$have_gas_4084"

"$out_of_gas_4083":                               ; preds = %"$have_gas_4075"
  call void @_out_of_gas()
  br label %"$have_gas_4084"

"$have_gas_4084":                                 ; preds = %"$out_of_gas_4083", %"$have_gas_4075"
  %"$consume_4085" = sub i64 %"$gasrem_4081", %"$gasadd_4080"
  store i64 %"$consume_4085", i64* @_gasrem, align 8
  %"$execptr_load_4086" = load i8*, i8** @_execptr, align 8
  %"$m11_4087" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4087_4088" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4087" to i8*
  %"$put_key1b_4089" = alloca %String, align 8
  %"$key1b_4090" = load %String, %String* %key1b, align 8
  store %String %"$key1b_4090", %String* %"$put_key1b_4089", align 8
  %"$$put_key1b_4089_4091" = bitcast %String* %"$put_key1b_4089" to i8*
  %"$m22_4092" = load %Map_String_String*, %Map_String_String** %m22, align 8
  %"$$m22_4092_4093" = bitcast %Map_String_String* %"$m22_4092" to i8*
  %"$put_call_4094" = call i8* @_put(i8* %"$execptr_load_4086", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m11_4087_4088", i8* %"$$put_key1b_4089_4091", i8* %"$$m22_4092_4093")
  %"$put_4095" = bitcast i8* %"$put_call_4094" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4095", %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$gasrem_4096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4097" = icmp ugt i64 1, %"$gasrem_4096"
  br i1 %"$gascmp_4097", label %"$out_of_gas_4098", label %"$have_gas_4099"

"$out_of_gas_4098":                               ; preds = %"$have_gas_4084"
  call void @_out_of_gas()
  br label %"$have_gas_4099"

"$have_gas_4099":                                 ; preds = %"$out_of_gas_4098", %"$have_gas_4084"
  %"$consume_4100" = sub i64 %"$gasrem_4096", 1
  store i64 %"$consume_4100", i64* @_gasrem, align 8
  %m13 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m12_4101" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4101_4102" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4101" to i8*
  %"$_lengthof_call_4103" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m12_4101_4102")
  %"$gasadd_4104" = add i64 1, %"$_lengthof_call_4103"
  %"$gasrem_4105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4106" = icmp ugt i64 %"$gasadd_4104", %"$gasrem_4105"
  br i1 %"$gascmp_4106", label %"$out_of_gas_4107", label %"$have_gas_4108"

"$out_of_gas_4107":                               ; preds = %"$have_gas_4099"
  call void @_out_of_gas()
  br label %"$have_gas_4108"

"$have_gas_4108":                                 ; preds = %"$out_of_gas_4107", %"$have_gas_4099"
  %"$consume_4109" = sub i64 %"$gasrem_4105", %"$gasadd_4104"
  store i64 %"$consume_4109", i64* @_gasrem, align 8
  %"$execptr_load_4110" = load i8*, i8** @_execptr, align 8
  %"$m12_4111" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4111_4112" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4111" to i8*
  %"$put_key1c_4113" = alloca %String, align 8
  %"$key1c_4114" = load %String, %String* %key1c, align 8
  store %String %"$key1c_4114", %String* %"$put_key1c_4113", align 8
  %"$$put_key1c_4113_4115" = bitcast %String* %"$put_key1c_4113" to i8*
  %"$m23_4116" = load %Map_String_String*, %Map_String_String** %m23, align 8
  %"$$m23_4116_4117" = bitcast %Map_String_String* %"$m23_4116" to i8*
  %"$put_call_4118" = call i8* @_put(i8* %"$execptr_load_4110", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m12_4111_4112", i8* %"$$put_key1c_4113_4115", i8* %"$$m23_4116_4117")
  %"$put_4119" = bitcast i8* %"$put_call_4118" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4119", %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$gasrem_4120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4121" = icmp ugt i64 1, %"$gasrem_4120"
  br i1 %"$gascmp_4121", label %"$out_of_gas_4122", label %"$have_gas_4123"

"$out_of_gas_4122":                               ; preds = %"$have_gas_4108"
  call void @_out_of_gas()
  br label %"$have_gas_4123"

"$have_gas_4123":                                 ; preds = %"$out_of_gas_4122", %"$have_gas_4108"
  %"$consume_4124" = sub i64 %"$gasrem_4120", 1
  store i64 %"$consume_4124", i64* @_gasrem, align 8
  %m14 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m13_4125" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4125_4126" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4125" to i8*
  %"$_lengthof_call_4127" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m13_4125_4126")
  %"$gasadd_4128" = add i64 1, %"$_lengthof_call_4127"
  %"$gasrem_4129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4130" = icmp ugt i64 %"$gasadd_4128", %"$gasrem_4129"
  br i1 %"$gascmp_4130", label %"$out_of_gas_4131", label %"$have_gas_4132"

"$out_of_gas_4131":                               ; preds = %"$have_gas_4123"
  call void @_out_of_gas()
  br label %"$have_gas_4132"

"$have_gas_4132":                                 ; preds = %"$out_of_gas_4131", %"$have_gas_4123"
  %"$consume_4133" = sub i64 %"$gasrem_4129", %"$gasadd_4128"
  store i64 %"$consume_4133", i64* @_gasrem, align 8
  %"$execptr_load_4134" = load i8*, i8** @_execptr, align 8
  %"$m13_4135" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4135_4136" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4135" to i8*
  %"$put_key1d_4137" = alloca %String, align 8
  %"$key1d_4138" = load %String, %String* %key1d, align 8
  store %String %"$key1d_4138", %String* %"$put_key1d_4137", align 8
  %"$$put_key1d_4137_4139" = bitcast %String* %"$put_key1d_4137" to i8*
  %"$m24_4140" = load %Map_String_String*, %Map_String_String** %m24, align 8
  %"$$m24_4140_4141" = bitcast %Map_String_String* %"$m24_4140" to i8*
  %"$put_call_4142" = call i8* @_put(i8* %"$execptr_load_4134", %_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m13_4135_4136", i8* %"$$put_key1d_4137_4139", i8* %"$$m24_4140_4141")
  %"$put_4143" = bitcast i8* %"$put_call_4142" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4143", %"Map_String_Map_(String)_(String)"** %m14, align 8
  %"$gasrem_4144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4145" = icmp ugt i64 1, %"$gasrem_4144"
  br i1 %"$gascmp_4145", label %"$out_of_gas_4146", label %"$have_gas_4147"

"$out_of_gas_4146":                               ; preds = %"$have_gas_4132"
  call void @_out_of_gas()
  br label %"$have_gas_4147"

"$have_gas_4147":                                 ; preds = %"$out_of_gas_4146", %"$have_gas_4132"
  %"$consume_4148" = sub i64 %"$gasrem_4144", 1
  store i64 %"$consume_4148", i64* @_gasrem, align 8
  %"$m14_4149" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m14_4149", %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$m2_full_4150" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$$m2_full_4150_4151" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4150" to i8*
  %"$_literal_cost_call_4152" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_74", i8* %"$$m2_full_4150_4151")
  %"$gasrem_4153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4154" = icmp ugt i64 %"$_literal_cost_call_4152", %"$gasrem_4153"
  br i1 %"$gascmp_4154", label %"$out_of_gas_4155", label %"$have_gas_4156"

"$out_of_gas_4155":                               ; preds = %"$have_gas_4147"
  call void @_out_of_gas()
  br label %"$have_gas_4156"

"$have_gas_4156":                                 ; preds = %"$out_of_gas_4155", %"$have_gas_4147"
  %"$consume_4157" = sub i64 %"$gasrem_4153", %"$_literal_cost_call_4152"
  store i64 %"$consume_4157", i64* @_gasrem, align 8
  %"$execptr_load_4158" = load i8*, i8** @_execptr, align 8
  %"$m2_full_4160" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$update_value_4161" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4160" to i8*
  call void @_update_field(i8* %"$execptr_load_4158", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4159", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 0, i8* null, i8* %"$update_value_4161")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_4163" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4164" = bitcast i8* %"$_amount_4163" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4164", align 8
  %"$_origin_4165" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4166" = bitcast i8* %"$_origin_4165" to [20 x i8]*
  %"$_sender_4167" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4168" = bitcast i8* %"$_sender_4167" to [20 x i8]*
  call void @"$t15_3441"(%Uint128 %_amount, [20 x i8]* %"$_origin_4166", [20 x i8]* %"$_sender_4168")
  ret void
}

define internal void @"$t16_4169"(%Uint128 %_amount, [20 x i8]* %"$_origin_4170", [20 x i8]* %"$_sender_4171") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4170", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4171", align 1
  %"$gasrem_4172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4173" = icmp ugt i64 1, %"$gasrem_4172"
  br i1 %"$gascmp_4173", label %"$out_of_gas_4174", label %"$have_gas_4175"

"$out_of_gas_4174":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4175"

"$have_gas_4175":                                 ; preds = %"$out_of_gas_4174", %entry
  %"$consume_4176" = sub i64 %"$gasrem_4172", 1
  store i64 %"$consume_4176", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4178" = icmp ugt i64 1, %"$gasrem_4177"
  br i1 %"$gascmp_4178", label %"$out_of_gas_4179", label %"$have_gas_4180"

"$out_of_gas_4179":                               ; preds = %"$have_gas_4175"
  call void @_out_of_gas()
  br label %"$have_gas_4180"

"$have_gas_4180":                                 ; preds = %"$out_of_gas_4179", %"$have_gas_4175"
  %"$consume_4181" = sub i64 %"$gasrem_4177", 1
  store i64 %"$consume_4181", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4182", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4184" = icmp ugt i64 1, %"$gasrem_4183"
  br i1 %"$gascmp_4184", label %"$out_of_gas_4185", label %"$have_gas_4186"

"$out_of_gas_4185":                               ; preds = %"$have_gas_4180"
  call void @_out_of_gas()
  br label %"$have_gas_4186"

"$have_gas_4186":                                 ; preds = %"$out_of_gas_4185", %"$have_gas_4180"
  %"$consume_4187" = sub i64 %"$gasrem_4183", 1
  store i64 %"$consume_4187", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_4188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4189" = icmp ugt i64 1, %"$gasrem_4188"
  br i1 %"$gascmp_4189", label %"$out_of_gas_4190", label %"$have_gas_4191"

"$out_of_gas_4190":                               ; preds = %"$have_gas_4186"
  call void @_out_of_gas()
  br label %"$have_gas_4191"

"$have_gas_4191":                                 ; preds = %"$out_of_gas_4190", %"$have_gas_4186"
  %"$consume_4192" = sub i64 %"$gasrem_4188", 1
  store i64 %"$consume_4192", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4193", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_4194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4195" = icmp ugt i64 1, %"$gasrem_4194"
  br i1 %"$gascmp_4195", label %"$out_of_gas_4196", label %"$have_gas_4197"

"$out_of_gas_4196":                               ; preds = %"$have_gas_4191"
  call void @_out_of_gas()
  br label %"$have_gas_4197"

"$have_gas_4197":                                 ; preds = %"$out_of_gas_4196", %"$have_gas_4191"
  %"$consume_4198" = sub i64 %"$gasrem_4194", 1
  store i64 %"$consume_4198", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_4199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4200" = icmp ugt i64 1, %"$gasrem_4199"
  br i1 %"$gascmp_4200", label %"$out_of_gas_4201", label %"$have_gas_4202"

"$out_of_gas_4201":                               ; preds = %"$have_gas_4197"
  call void @_out_of_gas()
  br label %"$have_gas_4202"

"$have_gas_4202":                                 ; preds = %"$out_of_gas_4201", %"$have_gas_4197"
  %"$consume_4203" = sub i64 %"$gasrem_4199", 1
  store i64 %"$consume_4203", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4204", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_4205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4206" = icmp ugt i64 1, %"$gasrem_4205"
  br i1 %"$gascmp_4206", label %"$out_of_gas_4207", label %"$have_gas_4208"

"$out_of_gas_4207":                               ; preds = %"$have_gas_4202"
  call void @_out_of_gas()
  br label %"$have_gas_4208"

"$have_gas_4208":                                 ; preds = %"$out_of_gas_4207", %"$have_gas_4202"
  %"$consume_4209" = sub i64 %"$gasrem_4205", 1
  store i64 %"$consume_4209", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_4210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4211" = icmp ugt i64 1, %"$gasrem_4210"
  br i1 %"$gascmp_4211", label %"$out_of_gas_4212", label %"$have_gas_4213"

"$out_of_gas_4212":                               ; preds = %"$have_gas_4208"
  call void @_out_of_gas()
  br label %"$have_gas_4213"

"$have_gas_4213":                                 ; preds = %"$out_of_gas_4212", %"$have_gas_4208"
  %"$consume_4214" = sub i64 %"$gasrem_4210", 1
  store i64 %"$consume_4214", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4215", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_4216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4217" = icmp ugt i64 1, %"$gasrem_4216"
  br i1 %"$gascmp_4217", label %"$out_of_gas_4218", label %"$have_gas_4219"

"$out_of_gas_4218":                               ; preds = %"$have_gas_4213"
  call void @_out_of_gas()
  br label %"$have_gas_4219"

"$have_gas_4219":                                 ; preds = %"$out_of_gas_4218", %"$have_gas_4213"
  %"$consume_4220" = sub i64 %"$gasrem_4216", 1
  store i64 %"$consume_4220", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_4221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4222" = icmp ugt i64 1, %"$gasrem_4221"
  br i1 %"$gascmp_4222", label %"$out_of_gas_4223", label %"$have_gas_4224"

"$out_of_gas_4223":                               ; preds = %"$have_gas_4219"
  call void @_out_of_gas()
  br label %"$have_gas_4224"

"$have_gas_4224":                                 ; preds = %"$out_of_gas_4223", %"$have_gas_4219"
  %"$consume_4225" = sub i64 %"$gasrem_4221", 1
  store i64 %"$consume_4225", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4226", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_4227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4228" = icmp ugt i64 1, %"$gasrem_4227"
  br i1 %"$gascmp_4228", label %"$out_of_gas_4229", label %"$have_gas_4230"

"$out_of_gas_4229":                               ; preds = %"$have_gas_4224"
  call void @_out_of_gas()
  br label %"$have_gas_4230"

"$have_gas_4230":                                 ; preds = %"$out_of_gas_4229", %"$have_gas_4224"
  %"$consume_4231" = sub i64 %"$gasrem_4227", 1
  store i64 %"$consume_4231", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_4232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4233" = icmp ugt i64 1, %"$gasrem_4232"
  br i1 %"$gascmp_4233", label %"$out_of_gas_4234", label %"$have_gas_4235"

"$out_of_gas_4234":                               ; preds = %"$have_gas_4230"
  call void @_out_of_gas()
  br label %"$have_gas_4235"

"$have_gas_4235":                                 ; preds = %"$out_of_gas_4234", %"$have_gas_4230"
  %"$consume_4236" = sub i64 %"$gasrem_4232", 1
  store i64 %"$consume_4236", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4237", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_4238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4239" = icmp ugt i64 1, %"$gasrem_4238"
  br i1 %"$gascmp_4239", label %"$out_of_gas_4240", label %"$have_gas_4241"

"$out_of_gas_4240":                               ; preds = %"$have_gas_4235"
  call void @_out_of_gas()
  br label %"$have_gas_4241"

"$have_gas_4241":                                 ; preds = %"$out_of_gas_4240", %"$have_gas_4235"
  %"$consume_4242" = sub i64 %"$gasrem_4238", 1
  store i64 %"$consume_4242", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_4243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4244" = icmp ugt i64 1, %"$gasrem_4243"
  br i1 %"$gascmp_4244", label %"$out_of_gas_4245", label %"$have_gas_4246"

"$out_of_gas_4245":                               ; preds = %"$have_gas_4241"
  call void @_out_of_gas()
  br label %"$have_gas_4246"

"$have_gas_4246":                                 ; preds = %"$out_of_gas_4245", %"$have_gas_4241"
  %"$consume_4247" = sub i64 %"$gasrem_4243", 1
  store i64 %"$consume_4247", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4248", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_4249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4250" = icmp ugt i64 1, %"$gasrem_4249"
  br i1 %"$gascmp_4250", label %"$out_of_gas_4251", label %"$have_gas_4252"

"$out_of_gas_4251":                               ; preds = %"$have_gas_4246"
  call void @_out_of_gas()
  br label %"$have_gas_4252"

"$have_gas_4252":                                 ; preds = %"$out_of_gas_4251", %"$have_gas_4246"
  %"$consume_4253" = sub i64 %"$gasrem_4249", 1
  store i64 %"$consume_4253", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_4254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4255" = icmp ugt i64 1, %"$gasrem_4254"
  br i1 %"$gascmp_4255", label %"$out_of_gas_4256", label %"$have_gas_4257"

"$out_of_gas_4256":                               ; preds = %"$have_gas_4252"
  call void @_out_of_gas()
  br label %"$have_gas_4257"

"$have_gas_4257":                                 ; preds = %"$out_of_gas_4256", %"$have_gas_4252"
  %"$consume_4258" = sub i64 %"$gasrem_4254", 1
  store i64 %"$consume_4258", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4259", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_4260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4261" = icmp ugt i64 1, %"$gasrem_4260"
  br i1 %"$gascmp_4261", label %"$out_of_gas_4262", label %"$have_gas_4263"

"$out_of_gas_4262":                               ; preds = %"$have_gas_4257"
  call void @_out_of_gas()
  br label %"$have_gas_4263"

"$have_gas_4263":                                 ; preds = %"$out_of_gas_4262", %"$have_gas_4257"
  %"$consume_4264" = sub i64 %"$gasrem_4260", 1
  store i64 %"$consume_4264", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_4265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4266" = icmp ugt i64 1, %"$gasrem_4265"
  br i1 %"$gascmp_4266", label %"$out_of_gas_4267", label %"$have_gas_4268"

"$out_of_gas_4267":                               ; preds = %"$have_gas_4263"
  call void @_out_of_gas()
  br label %"$have_gas_4268"

"$have_gas_4268":                                 ; preds = %"$out_of_gas_4267", %"$have_gas_4263"
  %"$consume_4269" = sub i64 %"$gasrem_4265", 1
  store i64 %"$consume_4269", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4270", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %t1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4271_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4271_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4271_salloc_load", i64 32)
  %"$indices_buf_4271_salloc" = bitcast i8* %"$indices_buf_4271_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4271" = bitcast [32 x i8]* %"$indices_buf_4271_salloc" to i8*
  %"$key1a_4272" = load %String, %String* %key1a, align 8
  %"$indices_gep_4273" = getelementptr i8, i8* %"$indices_buf_4271", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4273" to %String*
  store %String %"$key1a_4272", %String* %indices_cast, align 8
  %"$key2a_4274" = load %String, %String* %key2a, align 8
  %"$indices_gep_4275" = getelementptr i8, i8* %"$indices_buf_4271", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_4275" to %String*
  store %String %"$key2a_4274", %String* %indices_cast1, align 8
  %"$execptr_load_4277" = load i8*, i8** @_execptr, align 8
  %"$t1_call_4278" = call i8* @_fetch_field(i8* %"$execptr_load_4277", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4276", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4271", i32 1)
  %"$t1_4279" = bitcast i8* %"$t1_call_4278" to %TName_Option_String*
  store %TName_Option_String* %"$t1_4279", %TName_Option_String** %t1, align 8
  %"$t1_4280" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$$t1_4280_4281" = bitcast %TName_Option_String* %"$t1_4280" to i8*
  %"$_literal_cost_call_4282" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t1_4280_4281")
  %"$gasadd_4283" = add i64 %"$_literal_cost_call_4282", 0
  %"$gasadd_4284" = add i64 %"$gasadd_4283", 2
  %"$gasrem_4285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4286" = icmp ugt i64 %"$gasadd_4284", %"$gasrem_4285"
  br i1 %"$gascmp_4286", label %"$out_of_gas_4287", label %"$have_gas_4288"

"$out_of_gas_4287":                               ; preds = %"$have_gas_4268"
  call void @_out_of_gas()
  br label %"$have_gas_4288"

"$have_gas_4288":                                 ; preds = %"$out_of_gas_4287", %"$have_gas_4268"
  %"$consume_4289" = sub i64 %"$gasrem_4285", %"$gasadd_4284"
  store i64 %"$consume_4289", i64* @_gasrem, align 8
  %t2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4290_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4290_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4290_salloc_load", i64 32)
  %"$indices_buf_4290_salloc" = bitcast i8* %"$indices_buf_4290_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4290" = bitcast [32 x i8]* %"$indices_buf_4290_salloc" to i8*
  %"$key1b_4291" = load %String, %String* %key1b, align 8
  %"$indices_gep_4292" = getelementptr i8, i8* %"$indices_buf_4290", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4292" to %String*
  store %String %"$key1b_4291", %String* %indices_cast2, align 8
  %"$key2b_4293" = load %String, %String* %key2b, align 8
  %"$indices_gep_4294" = getelementptr i8, i8* %"$indices_buf_4290", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_4294" to %String*
  store %String %"$key2b_4293", %String* %indices_cast3, align 8
  %"$execptr_load_4296" = load i8*, i8** @_execptr, align 8
  %"$t2_call_4297" = call i8* @_fetch_field(i8* %"$execptr_load_4296", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4295", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4290", i32 1)
  %"$t2_4298" = bitcast i8* %"$t2_call_4297" to %TName_Option_String*
  store %TName_Option_String* %"$t2_4298", %TName_Option_String** %t2, align 8
  %"$t2_4299" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$$t2_4299_4300" = bitcast %TName_Option_String* %"$t2_4299" to i8*
  %"$_literal_cost_call_4301" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t2_4299_4300")
  %"$gasadd_4302" = add i64 %"$_literal_cost_call_4301", 0
  %"$gasadd_4303" = add i64 %"$gasadd_4302", 2
  %"$gasrem_4304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4305" = icmp ugt i64 %"$gasadd_4303", %"$gasrem_4304"
  br i1 %"$gascmp_4305", label %"$out_of_gas_4306", label %"$have_gas_4307"

"$out_of_gas_4306":                               ; preds = %"$have_gas_4288"
  call void @_out_of_gas()
  br label %"$have_gas_4307"

"$have_gas_4307":                                 ; preds = %"$out_of_gas_4306", %"$have_gas_4288"
  %"$consume_4308" = sub i64 %"$gasrem_4304", %"$gasadd_4303"
  store i64 %"$consume_4308", i64* @_gasrem, align 8
  %t3 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4309_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4309_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4309_salloc_load", i64 32)
  %"$indices_buf_4309_salloc" = bitcast i8* %"$indices_buf_4309_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4309" = bitcast [32 x i8]* %"$indices_buf_4309_salloc" to i8*
  %"$key1c_4310" = load %String, %String* %key1c, align 8
  %"$indices_gep_4311" = getelementptr i8, i8* %"$indices_buf_4309", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4311" to %String*
  store %String %"$key1c_4310", %String* %indices_cast4, align 8
  %"$key2c_4312" = load %String, %String* %key2c, align 8
  %"$indices_gep_4313" = getelementptr i8, i8* %"$indices_buf_4309", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_4313" to %String*
  store %String %"$key2c_4312", %String* %indices_cast5, align 8
  %"$execptr_load_4315" = load i8*, i8** @_execptr, align 8
  %"$t3_call_4316" = call i8* @_fetch_field(i8* %"$execptr_load_4315", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4314", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4309", i32 1)
  %"$t3_4317" = bitcast i8* %"$t3_call_4316" to %TName_Option_String*
  store %TName_Option_String* %"$t3_4317", %TName_Option_String** %t3, align 8
  %"$t3_4318" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$$t3_4318_4319" = bitcast %TName_Option_String* %"$t3_4318" to i8*
  %"$_literal_cost_call_4320" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t3_4318_4319")
  %"$gasadd_4321" = add i64 %"$_literal_cost_call_4320", 0
  %"$gasadd_4322" = add i64 %"$gasadd_4321", 2
  %"$gasrem_4323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4324" = icmp ugt i64 %"$gasadd_4322", %"$gasrem_4323"
  br i1 %"$gascmp_4324", label %"$out_of_gas_4325", label %"$have_gas_4326"

"$out_of_gas_4325":                               ; preds = %"$have_gas_4307"
  call void @_out_of_gas()
  br label %"$have_gas_4326"

"$have_gas_4326":                                 ; preds = %"$out_of_gas_4325", %"$have_gas_4307"
  %"$consume_4327" = sub i64 %"$gasrem_4323", %"$gasadd_4322"
  store i64 %"$consume_4327", i64* @_gasrem, align 8
  %t4 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4328_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4328_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4328_salloc_load", i64 32)
  %"$indices_buf_4328_salloc" = bitcast i8* %"$indices_buf_4328_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4328" = bitcast [32 x i8]* %"$indices_buf_4328_salloc" to i8*
  %"$key1d_4329" = load %String, %String* %key1d, align 8
  %"$indices_gep_4330" = getelementptr i8, i8* %"$indices_buf_4328", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_4330" to %String*
  store %String %"$key1d_4329", %String* %indices_cast6, align 8
  %"$key2d_4331" = load %String, %String* %key2d, align 8
  %"$indices_gep_4332" = getelementptr i8, i8* %"$indices_buf_4328", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_4332" to %String*
  store %String %"$key2d_4331", %String* %indices_cast7, align 8
  %"$execptr_load_4334" = load i8*, i8** @_execptr, align 8
  %"$t4_call_4335" = call i8* @_fetch_field(i8* %"$execptr_load_4334", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4333", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_74", i32 2, i8* %"$indices_buf_4328", i32 1)
  %"$t4_4336" = bitcast i8* %"$t4_call_4335" to %TName_Option_String*
  store %TName_Option_String* %"$t4_4336", %TName_Option_String** %t4, align 8
  %"$t4_4337" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$$t4_4337_4338" = bitcast %TName_Option_String* %"$t4_4337" to i8*
  %"$_literal_cost_call_4339" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_70", i8* %"$$t4_4337_4338")
  %"$gasadd_4340" = add i64 %"$_literal_cost_call_4339", 0
  %"$gasadd_4341" = add i64 %"$gasadd_4340", 2
  %"$gasrem_4342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4343" = icmp ugt i64 %"$gasadd_4341", %"$gasrem_4342"
  br i1 %"$gascmp_4343", label %"$out_of_gas_4344", label %"$have_gas_4345"

"$out_of_gas_4344":                               ; preds = %"$have_gas_4326"
  call void @_out_of_gas()
  br label %"$have_gas_4345"

"$have_gas_4345":                                 ; preds = %"$out_of_gas_4344", %"$have_gas_4326"
  %"$consume_4346" = sub i64 %"$gasrem_4342", %"$gasadd_4341"
  store i64 %"$consume_4346", i64* @_gasrem, align 8
  %"$gasrem_4347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4348" = icmp ugt i64 1, %"$gasrem_4347"
  br i1 %"$gascmp_4348", label %"$out_of_gas_4349", label %"$have_gas_4350"

"$out_of_gas_4349":                               ; preds = %"$have_gas_4345"
  call void @_out_of_gas()
  br label %"$have_gas_4350"

"$have_gas_4350":                                 ; preds = %"$out_of_gas_4349", %"$have_gas_4345"
  %"$consume_4351" = sub i64 %"$gasrem_4347", 1
  store i64 %"$consume_4351", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_4352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4353" = icmp ugt i64 1, %"$gasrem_4352"
  br i1 %"$gascmp_4353", label %"$out_of_gas_4354", label %"$have_gas_4355"

"$out_of_gas_4354":                               ; preds = %"$have_gas_4350"
  call void @_out_of_gas()
  br label %"$have_gas_4355"

"$have_gas_4355":                                 ; preds = %"$out_of_gas_4354", %"$have_gas_4350"
  %"$consume_4356" = sub i64 %"$gasrem_4352", 1
  store i64 %"$consume_4356", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4357", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_4358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4359" = icmp ugt i64 1, %"$gasrem_4358"
  br i1 %"$gascmp_4359", label %"$out_of_gas_4360", label %"$have_gas_4361"

"$out_of_gas_4360":                               ; preds = %"$have_gas_4355"
  call void @_out_of_gas()
  br label %"$have_gas_4361"

"$have_gas_4361":                                 ; preds = %"$out_of_gas_4360", %"$have_gas_4355"
  %"$consume_4362" = sub i64 %"$gasrem_4358", 1
  store i64 %"$consume_4362", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_4363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4364" = icmp ugt i64 1, %"$gasrem_4363"
  br i1 %"$gascmp_4364", label %"$out_of_gas_4365", label %"$have_gas_4366"

"$out_of_gas_4365":                               ; preds = %"$have_gas_4361"
  call void @_out_of_gas()
  br label %"$have_gas_4366"

"$have_gas_4366":                                 ; preds = %"$out_of_gas_4365", %"$have_gas_4361"
  %"$consume_4367" = sub i64 %"$gasrem_4363", 1
  store i64 %"$consume_4367", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4368", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_4369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4370" = icmp ugt i64 1, %"$gasrem_4369"
  br i1 %"$gascmp_4370", label %"$out_of_gas_4371", label %"$have_gas_4372"

"$out_of_gas_4371":                               ; preds = %"$have_gas_4366"
  call void @_out_of_gas()
  br label %"$have_gas_4372"

"$have_gas_4372":                                 ; preds = %"$out_of_gas_4371", %"$have_gas_4366"
  %"$consume_4373" = sub i64 %"$gasrem_4369", 1
  store i64 %"$consume_4373", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_4374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4375" = icmp ugt i64 1, %"$gasrem_4374"
  br i1 %"$gascmp_4375", label %"$out_of_gas_4376", label %"$have_gas_4377"

"$out_of_gas_4376":                               ; preds = %"$have_gas_4372"
  call void @_out_of_gas()
  br label %"$have_gas_4377"

"$have_gas_4377":                                 ; preds = %"$out_of_gas_4376", %"$have_gas_4372"
  %"$consume_4378" = sub i64 %"$gasrem_4374", 1
  store i64 %"$consume_4378", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4379", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_4380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4381" = icmp ugt i64 1, %"$gasrem_4380"
  br i1 %"$gascmp_4381", label %"$out_of_gas_4382", label %"$have_gas_4383"

"$out_of_gas_4382":                               ; preds = %"$have_gas_4377"
  call void @_out_of_gas()
  br label %"$have_gas_4383"

"$have_gas_4383":                                 ; preds = %"$out_of_gas_4382", %"$have_gas_4377"
  %"$consume_4384" = sub i64 %"$gasrem_4380", 1
  store i64 %"$consume_4384", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_4385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4386" = icmp ugt i64 1, %"$gasrem_4385"
  br i1 %"$gascmp_4386", label %"$out_of_gas_4387", label %"$have_gas_4388"

"$out_of_gas_4387":                               ; preds = %"$have_gas_4383"
  call void @_out_of_gas()
  br label %"$have_gas_4388"

"$have_gas_4388":                                 ; preds = %"$out_of_gas_4387", %"$have_gas_4383"
  %"$consume_4389" = sub i64 %"$gasrem_4385", 1
  store i64 %"$consume_4389", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4390", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_4391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4392" = icmp ugt i64 1, %"$gasrem_4391"
  br i1 %"$gascmp_4392", label %"$out_of_gas_4393", label %"$have_gas_4394"

"$out_of_gas_4393":                               ; preds = %"$have_gas_4388"
  call void @_out_of_gas()
  br label %"$have_gas_4394"

"$have_gas_4394":                                 ; preds = %"$out_of_gas_4393", %"$have_gas_4388"
  %"$consume_4395" = sub i64 %"$gasrem_4391", 1
  store i64 %"$consume_4395", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_4396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4397" = icmp ugt i64 2, %"$gasrem_4396"
  br i1 %"$gascmp_4397", label %"$out_of_gas_4398", label %"$have_gas_4399"

"$out_of_gas_4398":                               ; preds = %"$have_gas_4394"
  call void @_out_of_gas()
  br label %"$have_gas_4399"

"$have_gas_4399":                                 ; preds = %"$out_of_gas_4398", %"$have_gas_4394"
  %"$consume_4400" = sub i64 %"$gasrem_4396", 2
  store i64 %"$consume_4400", i64* @_gasrem, align 8
  %"$t1_4402" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$t1_tag_4403" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_4402", i32 0, i32 0
  %"$t1_tag_4404" = load i8, i8* %"$t1_tag_4403", align 1
  switch i8 %"$t1_tag_4404", label %"$empty_default_4405" [
    i8 0, label %"$Some_4406"
    i8 1, label %"$None_4429"
  ]

"$Some_4406":                                     ; preds = %"$have_gas_4399"
  %"$t1_4407" = bitcast %TName_Option_String* %"$t1_4402" to %CName_Some_String*
  %"$t1v_gep_4408" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_4407", i32 0, i32 1
  %"$t1v_load_4409" = load %String, %String* %"$t1v_gep_4408", align 8
  %t1v = alloca %String, align 8
  store %String %"$t1v_load_4409", %String* %t1v, align 8
  %"$_literal_cost_t1v_4410" = alloca %String, align 8
  %"$t1v_4411" = load %String, %String* %t1v, align 8
  store %String %"$t1v_4411", %String* %"$_literal_cost_t1v_4410", align 8
  %"$$_literal_cost_t1v_4410_4412" = bitcast %String* %"$_literal_cost_t1v_4410" to i8*
  %"$_literal_cost_call_4413" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t1v_4410_4412")
  %"$_literal_cost_v1_4414" = alloca %String, align 8
  %"$v1_4415" = load %String, %String* %v1, align 8
  store %String %"$v1_4415", %String* %"$_literal_cost_v1_4414", align 8
  %"$$_literal_cost_v1_4414_4416" = bitcast %String* %"$_literal_cost_v1_4414" to i8*
  %"$_literal_cost_call_4417" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v1_4414_4416")
  %"$gasmin_4418" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4413", i64 %"$_literal_cost_call_4417")
  %"$gasrem_4419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4420" = icmp ugt i64 %"$gasmin_4418", %"$gasrem_4419"
  br i1 %"$gascmp_4420", label %"$out_of_gas_4421", label %"$have_gas_4422"

"$out_of_gas_4421":                               ; preds = %"$Some_4406"
  call void @_out_of_gas()
  br label %"$have_gas_4422"

"$have_gas_4422":                                 ; preds = %"$out_of_gas_4421", %"$Some_4406"
  %"$consume_4423" = sub i64 %"$gasrem_4419", %"$gasmin_4418"
  store i64 %"$consume_4423", i64* @_gasrem, align 8
  %"$execptr_load_4424" = load i8*, i8** @_execptr, align 8
  %"$t1v_4425" = load %String, %String* %t1v, align 8
  %"$v1_4426" = load %String, %String* %v1, align 8
  %"$eq_call_4427" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4424", %String %"$t1v_4425", %String %"$v1_4426")
  store %TName_Bool* %"$eq_call_4427", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4401"

"$None_4429":                                     ; preds = %"$have_gas_4399"
  %"$t1_4430" = bitcast %TName_Option_String* %"$t1_4402" to %CName_None_String*
  %"$gasrem_4431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4432" = icmp ugt i64 1, %"$gasrem_4431"
  br i1 %"$gascmp_4432", label %"$out_of_gas_4433", label %"$have_gas_4434"

"$out_of_gas_4433":                               ; preds = %"$None_4429"
  call void @_out_of_gas()
  br label %"$have_gas_4434"

"$have_gas_4434":                                 ; preds = %"$out_of_gas_4433", %"$None_4429"
  %"$consume_4435" = sub i64 %"$gasrem_4431", 1
  store i64 %"$consume_4435", i64* @_gasrem, align 8
  %"$adtval_4436_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4436_salloc" = call i8* @_salloc(i8* %"$adtval_4436_load", i64 1)
  %"$adtval_4436" = bitcast i8* %"$adtval_4436_salloc" to %CName_False*
  %"$adtgep_4437" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4436", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4437", align 1
  %"$adtptr_4438" = bitcast %CName_False* %"$adtval_4436" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4438", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4401"

"$empty_default_4405":                            ; preds = %"$have_gas_4399"
  br label %"$matchsucc_4401"

"$matchsucc_4401":                                ; preds = %"$have_gas_4434", %"$have_gas_4422", %"$empty_default_4405"
  %"$gasrem_4439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4440" = icmp ugt i64 1, %"$gasrem_4439"
  br i1 %"$gascmp_4440", label %"$out_of_gas_4441", label %"$have_gas_4442"

"$out_of_gas_4441":                               ; preds = %"$matchsucc_4401"
  call void @_out_of_gas()
  br label %"$have_gas_4442"

"$have_gas_4442":                                 ; preds = %"$out_of_gas_4441", %"$matchsucc_4401"
  %"$consume_4443" = sub i64 %"$gasrem_4439", 1
  store i64 %"$consume_4443", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  %"$gasrem_4444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4445" = icmp ugt i64 2, %"$gasrem_4444"
  br i1 %"$gascmp_4445", label %"$out_of_gas_4446", label %"$have_gas_4447"

"$out_of_gas_4446":                               ; preds = %"$have_gas_4442"
  call void @_out_of_gas()
  br label %"$have_gas_4447"

"$have_gas_4447":                                 ; preds = %"$out_of_gas_4446", %"$have_gas_4442"
  %"$consume_4448" = sub i64 %"$gasrem_4444", 2
  store i64 %"$consume_4448", i64* @_gasrem, align 8
  %"$t2_4450" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$t2_tag_4451" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_4450", i32 0, i32 0
  %"$t2_tag_4452" = load i8, i8* %"$t2_tag_4451", align 1
  switch i8 %"$t2_tag_4452", label %"$empty_default_4453" [
    i8 0, label %"$Some_4454"
    i8 1, label %"$None_4477"
  ]

"$Some_4454":                                     ; preds = %"$have_gas_4447"
  %"$t2_4455" = bitcast %TName_Option_String* %"$t2_4450" to %CName_Some_String*
  %"$t2v_gep_4456" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_4455", i32 0, i32 1
  %"$t2v_load_4457" = load %String, %String* %"$t2v_gep_4456", align 8
  %t2v = alloca %String, align 8
  store %String %"$t2v_load_4457", %String* %t2v, align 8
  %"$_literal_cost_t2v_4458" = alloca %String, align 8
  %"$t2v_4459" = load %String, %String* %t2v, align 8
  store %String %"$t2v_4459", %String* %"$_literal_cost_t2v_4458", align 8
  %"$$_literal_cost_t2v_4458_4460" = bitcast %String* %"$_literal_cost_t2v_4458" to i8*
  %"$_literal_cost_call_4461" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t2v_4458_4460")
  %"$_literal_cost_v2_4462" = alloca %String, align 8
  %"$v2_4463" = load %String, %String* %v2, align 8
  store %String %"$v2_4463", %String* %"$_literal_cost_v2_4462", align 8
  %"$$_literal_cost_v2_4462_4464" = bitcast %String* %"$_literal_cost_v2_4462" to i8*
  %"$_literal_cost_call_4465" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v2_4462_4464")
  %"$gasmin_4466" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4461", i64 %"$_literal_cost_call_4465")
  %"$gasrem_4467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4468" = icmp ugt i64 %"$gasmin_4466", %"$gasrem_4467"
  br i1 %"$gascmp_4468", label %"$out_of_gas_4469", label %"$have_gas_4470"

"$out_of_gas_4469":                               ; preds = %"$Some_4454"
  call void @_out_of_gas()
  br label %"$have_gas_4470"

"$have_gas_4470":                                 ; preds = %"$out_of_gas_4469", %"$Some_4454"
  %"$consume_4471" = sub i64 %"$gasrem_4467", %"$gasmin_4466"
  store i64 %"$consume_4471", i64* @_gasrem, align 8
  %"$execptr_load_4472" = load i8*, i8** @_execptr, align 8
  %"$t2v_4473" = load %String, %String* %t2v, align 8
  %"$v2_4474" = load %String, %String* %v2, align 8
  %"$eq_call_4475" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4472", %String %"$t2v_4473", %String %"$v2_4474")
  store %TName_Bool* %"$eq_call_4475", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4449"

"$None_4477":                                     ; preds = %"$have_gas_4447"
  %"$t2_4478" = bitcast %TName_Option_String* %"$t2_4450" to %CName_None_String*
  %"$gasrem_4479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4480" = icmp ugt i64 1, %"$gasrem_4479"
  br i1 %"$gascmp_4480", label %"$out_of_gas_4481", label %"$have_gas_4482"

"$out_of_gas_4481":                               ; preds = %"$None_4477"
  call void @_out_of_gas()
  br label %"$have_gas_4482"

"$have_gas_4482":                                 ; preds = %"$out_of_gas_4481", %"$None_4477"
  %"$consume_4483" = sub i64 %"$gasrem_4479", 1
  store i64 %"$consume_4483", i64* @_gasrem, align 8
  %"$adtval_4484_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4484_salloc" = call i8* @_salloc(i8* %"$adtval_4484_load", i64 1)
  %"$adtval_4484" = bitcast i8* %"$adtval_4484_salloc" to %CName_False*
  %"$adtgep_4485" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4484", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4485", align 1
  %"$adtptr_4486" = bitcast %CName_False* %"$adtval_4484" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4486", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4449"

"$empty_default_4453":                            ; preds = %"$have_gas_4447"
  br label %"$matchsucc_4449"

"$matchsucc_4449":                                ; preds = %"$have_gas_4482", %"$have_gas_4470", %"$empty_default_4453"
  %"$gasrem_4487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4488" = icmp ugt i64 1, %"$gasrem_4487"
  br i1 %"$gascmp_4488", label %"$out_of_gas_4489", label %"$have_gas_4490"

"$out_of_gas_4489":                               ; preds = %"$matchsucc_4449"
  call void @_out_of_gas()
  br label %"$have_gas_4490"

"$have_gas_4490":                                 ; preds = %"$out_of_gas_4489", %"$matchsucc_4449"
  %"$consume_4491" = sub i64 %"$gasrem_4487", 1
  store i64 %"$consume_4491", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  %"$gasrem_4492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4493" = icmp ugt i64 2, %"$gasrem_4492"
  br i1 %"$gascmp_4493", label %"$out_of_gas_4494", label %"$have_gas_4495"

"$out_of_gas_4494":                               ; preds = %"$have_gas_4490"
  call void @_out_of_gas()
  br label %"$have_gas_4495"

"$have_gas_4495":                                 ; preds = %"$out_of_gas_4494", %"$have_gas_4490"
  %"$consume_4496" = sub i64 %"$gasrem_4492", 2
  store i64 %"$consume_4496", i64* @_gasrem, align 8
  %"$t3_4498" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$t3_tag_4499" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_4498", i32 0, i32 0
  %"$t3_tag_4500" = load i8, i8* %"$t3_tag_4499", align 1
  switch i8 %"$t3_tag_4500", label %"$empty_default_4501" [
    i8 0, label %"$Some_4502"
    i8 1, label %"$None_4525"
  ]

"$Some_4502":                                     ; preds = %"$have_gas_4495"
  %"$t3_4503" = bitcast %TName_Option_String* %"$t3_4498" to %CName_Some_String*
  %"$t3v_gep_4504" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_4503", i32 0, i32 1
  %"$t3v_load_4505" = load %String, %String* %"$t3v_gep_4504", align 8
  %t3v = alloca %String, align 8
  store %String %"$t3v_load_4505", %String* %t3v, align 8
  %"$_literal_cost_t3v_4506" = alloca %String, align 8
  %"$t3v_4507" = load %String, %String* %t3v, align 8
  store %String %"$t3v_4507", %String* %"$_literal_cost_t3v_4506", align 8
  %"$$_literal_cost_t3v_4506_4508" = bitcast %String* %"$_literal_cost_t3v_4506" to i8*
  %"$_literal_cost_call_4509" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t3v_4506_4508")
  %"$_literal_cost_v3_4510" = alloca %String, align 8
  %"$v3_4511" = load %String, %String* %v3, align 8
  store %String %"$v3_4511", %String* %"$_literal_cost_v3_4510", align 8
  %"$$_literal_cost_v3_4510_4512" = bitcast %String* %"$_literal_cost_v3_4510" to i8*
  %"$_literal_cost_call_4513" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v3_4510_4512")
  %"$gasmin_4514" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4509", i64 %"$_literal_cost_call_4513")
  %"$gasrem_4515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4516" = icmp ugt i64 %"$gasmin_4514", %"$gasrem_4515"
  br i1 %"$gascmp_4516", label %"$out_of_gas_4517", label %"$have_gas_4518"

"$out_of_gas_4517":                               ; preds = %"$Some_4502"
  call void @_out_of_gas()
  br label %"$have_gas_4518"

"$have_gas_4518":                                 ; preds = %"$out_of_gas_4517", %"$Some_4502"
  %"$consume_4519" = sub i64 %"$gasrem_4515", %"$gasmin_4514"
  store i64 %"$consume_4519", i64* @_gasrem, align 8
  %"$execptr_load_4520" = load i8*, i8** @_execptr, align 8
  %"$t3v_4521" = load %String, %String* %t3v, align 8
  %"$v3_4522" = load %String, %String* %v3, align 8
  %"$eq_call_4523" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4520", %String %"$t3v_4521", %String %"$v3_4522")
  store %TName_Bool* %"$eq_call_4523", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4497"

"$None_4525":                                     ; preds = %"$have_gas_4495"
  %"$t3_4526" = bitcast %TName_Option_String* %"$t3_4498" to %CName_None_String*
  %"$gasrem_4527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4528" = icmp ugt i64 1, %"$gasrem_4527"
  br i1 %"$gascmp_4528", label %"$out_of_gas_4529", label %"$have_gas_4530"

"$out_of_gas_4529":                               ; preds = %"$None_4525"
  call void @_out_of_gas()
  br label %"$have_gas_4530"

"$have_gas_4530":                                 ; preds = %"$out_of_gas_4529", %"$None_4525"
  %"$consume_4531" = sub i64 %"$gasrem_4527", 1
  store i64 %"$consume_4531", i64* @_gasrem, align 8
  %"$adtval_4532_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4532_salloc" = call i8* @_salloc(i8* %"$adtval_4532_load", i64 1)
  %"$adtval_4532" = bitcast i8* %"$adtval_4532_salloc" to %CName_False*
  %"$adtgep_4533" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4532", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4533", align 1
  %"$adtptr_4534" = bitcast %CName_False* %"$adtval_4532" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4534", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4497"

"$empty_default_4501":                            ; preds = %"$have_gas_4495"
  br label %"$matchsucc_4497"

"$matchsucc_4497":                                ; preds = %"$have_gas_4530", %"$have_gas_4518", %"$empty_default_4501"
  %"$gasrem_4535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4536" = icmp ugt i64 1, %"$gasrem_4535"
  br i1 %"$gascmp_4536", label %"$out_of_gas_4537", label %"$have_gas_4538"

"$out_of_gas_4537":                               ; preds = %"$matchsucc_4497"
  call void @_out_of_gas()
  br label %"$have_gas_4538"

"$have_gas_4538":                                 ; preds = %"$out_of_gas_4537", %"$matchsucc_4497"
  %"$consume_4539" = sub i64 %"$gasrem_4535", 1
  store i64 %"$consume_4539", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  %"$gasrem_4540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4541" = icmp ugt i64 2, %"$gasrem_4540"
  br i1 %"$gascmp_4541", label %"$out_of_gas_4542", label %"$have_gas_4543"

"$out_of_gas_4542":                               ; preds = %"$have_gas_4538"
  call void @_out_of_gas()
  br label %"$have_gas_4543"

"$have_gas_4543":                                 ; preds = %"$out_of_gas_4542", %"$have_gas_4538"
  %"$consume_4544" = sub i64 %"$gasrem_4540", 2
  store i64 %"$consume_4544", i64* @_gasrem, align 8
  %"$t4_4546" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$t4_tag_4547" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_4546", i32 0, i32 0
  %"$t4_tag_4548" = load i8, i8* %"$t4_tag_4547", align 1
  switch i8 %"$t4_tag_4548", label %"$empty_default_4549" [
    i8 0, label %"$Some_4550"
    i8 1, label %"$None_4573"
  ]

"$Some_4550":                                     ; preds = %"$have_gas_4543"
  %"$t4_4551" = bitcast %TName_Option_String* %"$t4_4546" to %CName_Some_String*
  %"$t4v_gep_4552" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_4551", i32 0, i32 1
  %"$t4v_load_4553" = load %String, %String* %"$t4v_gep_4552", align 8
  %t4v = alloca %String, align 8
  store %String %"$t4v_load_4553", %String* %t4v, align 8
  %"$_literal_cost_t4v_4554" = alloca %String, align 8
  %"$t4v_4555" = load %String, %String* %t4v, align 8
  store %String %"$t4v_4555", %String* %"$_literal_cost_t4v_4554", align 8
  %"$$_literal_cost_t4v_4554_4556" = bitcast %String* %"$_literal_cost_t4v_4554" to i8*
  %"$_literal_cost_call_4557" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t4v_4554_4556")
  %"$_literal_cost_v4_4558" = alloca %String, align 8
  %"$v4_4559" = load %String, %String* %v4, align 8
  store %String %"$v4_4559", %String* %"$_literal_cost_v4_4558", align 8
  %"$$_literal_cost_v4_4558_4560" = bitcast %String* %"$_literal_cost_v4_4558" to i8*
  %"$_literal_cost_call_4561" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v4_4558_4560")
  %"$gasmin_4562" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4557", i64 %"$_literal_cost_call_4561")
  %"$gasrem_4563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4564" = icmp ugt i64 %"$gasmin_4562", %"$gasrem_4563"
  br i1 %"$gascmp_4564", label %"$out_of_gas_4565", label %"$have_gas_4566"

"$out_of_gas_4565":                               ; preds = %"$Some_4550"
  call void @_out_of_gas()
  br label %"$have_gas_4566"

"$have_gas_4566":                                 ; preds = %"$out_of_gas_4565", %"$Some_4550"
  %"$consume_4567" = sub i64 %"$gasrem_4563", %"$gasmin_4562"
  store i64 %"$consume_4567", i64* @_gasrem, align 8
  %"$execptr_load_4568" = load i8*, i8** @_execptr, align 8
  %"$t4v_4569" = load %String, %String* %t4v, align 8
  %"$v4_4570" = load %String, %String* %v4, align 8
  %"$eq_call_4571" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4568", %String %"$t4v_4569", %String %"$v4_4570")
  store %TName_Bool* %"$eq_call_4571", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4545"

"$None_4573":                                     ; preds = %"$have_gas_4543"
  %"$t4_4574" = bitcast %TName_Option_String* %"$t4_4546" to %CName_None_String*
  %"$gasrem_4575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4576" = icmp ugt i64 1, %"$gasrem_4575"
  br i1 %"$gascmp_4576", label %"$out_of_gas_4577", label %"$have_gas_4578"

"$out_of_gas_4577":                               ; preds = %"$None_4573"
  call void @_out_of_gas()
  br label %"$have_gas_4578"

"$have_gas_4578":                                 ; preds = %"$out_of_gas_4577", %"$None_4573"
  %"$consume_4579" = sub i64 %"$gasrem_4575", 1
  store i64 %"$consume_4579", i64* @_gasrem, align 8
  %"$adtval_4580_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4580_salloc" = call i8* @_salloc(i8* %"$adtval_4580_load", i64 1)
  %"$adtval_4580" = bitcast i8* %"$adtval_4580_salloc" to %CName_False*
  %"$adtgep_4581" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4580", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4581", align 1
  %"$adtptr_4582" = bitcast %CName_False* %"$adtval_4580" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4582", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4545"

"$empty_default_4549":                            ; preds = %"$have_gas_4543"
  br label %"$matchsucc_4545"

"$matchsucc_4545":                                ; preds = %"$have_gas_4578", %"$have_gas_4566", %"$empty_default_4549"
  %"$gasrem_4583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4584" = icmp ugt i64 1, %"$gasrem_4583"
  br i1 %"$gascmp_4584", label %"$out_of_gas_4585", label %"$have_gas_4586"

"$out_of_gas_4585":                               ; preds = %"$matchsucc_4545"
  call void @_out_of_gas()
  br label %"$have_gas_4586"

"$have_gas_4586":                                 ; preds = %"$out_of_gas_4585", %"$matchsucc_4545"
  %"$consume_4587" = sub i64 %"$gasrem_4583", 1
  store i64 %"$consume_4587", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_4588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4589" = icmp ugt i64 1, %"$gasrem_4588"
  br i1 %"$gascmp_4589", label %"$out_of_gas_4590", label %"$have_gas_4591"

"$out_of_gas_4590":                               ; preds = %"$have_gas_4586"
  call void @_out_of_gas()
  br label %"$have_gas_4591"

"$have_gas_4591":                                 ; preds = %"$out_of_gas_4590", %"$have_gas_4586"
  %"$consume_4592" = sub i64 %"$gasrem_4588", 1
  store i64 %"$consume_4592", i64* @_gasrem, align 8
  %a1 = alloca %TName_Bool*, align 8
  %"$gasrem_4593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4594" = icmp ugt i64 1, %"$gasrem_4593"
  br i1 %"$gascmp_4594", label %"$out_of_gas_4595", label %"$have_gas_4596"

"$out_of_gas_4595":                               ; preds = %"$have_gas_4591"
  call void @_out_of_gas()
  br label %"$have_gas_4596"

"$have_gas_4596":                                 ; preds = %"$out_of_gas_4595", %"$have_gas_4591"
  %"$consume_4597" = sub i64 %"$gasrem_4593", 1
  store i64 %"$consume_4597", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4598" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4599" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4598", 0
  %"$BoolUtils.andb_envptr_4600" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4598", 1
  %"$b1_4601" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_4602" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4599"(i8* %"$BoolUtils.andb_envptr_4600", %TName_Bool* %"$b1_4601")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4602", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_19_4603" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_4604" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4603", 0
  %"$$BoolUtils.andb_19_envptr_4605" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4603", 1
  %"$b2_4606" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_19_call_4607" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_4604"(i8* %"$$BoolUtils.andb_19_envptr_4605", %TName_Bool* %"$b2_4606")
  store %TName_Bool* %"$$BoolUtils.andb_19_call_4607", %TName_Bool** %"$BoolUtils.andb_20", align 8
  %"$$BoolUtils.andb_20_4608" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_4608", %TName_Bool** %a1, align 8
  %"$gasrem_4609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4610" = icmp ugt i64 1, %"$gasrem_4609"
  br i1 %"$gascmp_4610", label %"$out_of_gas_4611", label %"$have_gas_4612"

"$out_of_gas_4611":                               ; preds = %"$have_gas_4596"
  call void @_out_of_gas()
  br label %"$have_gas_4612"

"$have_gas_4612":                                 ; preds = %"$out_of_gas_4611", %"$have_gas_4596"
  %"$consume_4613" = sub i64 %"$gasrem_4609", 1
  store i64 %"$consume_4613", i64* @_gasrem, align 8
  %a2 = alloca %TName_Bool*, align 8
  %"$gasrem_4614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4615" = icmp ugt i64 1, %"$gasrem_4614"
  br i1 %"$gascmp_4615", label %"$out_of_gas_4616", label %"$have_gas_4617"

"$out_of_gas_4616":                               ; preds = %"$have_gas_4612"
  call void @_out_of_gas()
  br label %"$have_gas_4617"

"$have_gas_4617":                                 ; preds = %"$out_of_gas_4616", %"$have_gas_4612"
  %"$consume_4618" = sub i64 %"$gasrem_4614", 1
  store i64 %"$consume_4618", i64* @_gasrem, align 8
  %"$BoolUtils.andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4619" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4620" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4619", 0
  %"$BoolUtils.andb_envptr_4621" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4619", 1
  %"$b3_4622" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.andb_call_4623" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4620"(i8* %"$BoolUtils.andb_envptr_4621", %TName_Bool* %"$b3_4622")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4623", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$BoolUtils.andb_22" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_21_4624" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$$BoolUtils.andb_21_fptr_4625" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4624", 0
  %"$$BoolUtils.andb_21_envptr_4626" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4624", 1
  %"$b4_4627" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.andb_21_call_4628" = call %TName_Bool* %"$$BoolUtils.andb_21_fptr_4625"(i8* %"$$BoolUtils.andb_21_envptr_4626", %TName_Bool* %"$b4_4627")
  store %TName_Bool* %"$$BoolUtils.andb_21_call_4628", %TName_Bool** %"$BoolUtils.andb_22", align 8
  %"$$BoolUtils.andb_22_4629" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_22", align 8
  store %TName_Bool* %"$$BoolUtils.andb_22_4629", %TName_Bool** %a2, align 8
  %"$gasrem_4630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4631" = icmp ugt i64 1, %"$gasrem_4630"
  br i1 %"$gascmp_4631", label %"$out_of_gas_4632", label %"$have_gas_4633"

"$out_of_gas_4632":                               ; preds = %"$have_gas_4617"
  call void @_out_of_gas()
  br label %"$have_gas_4633"

"$have_gas_4633":                                 ; preds = %"$out_of_gas_4632", %"$have_gas_4617"
  %"$consume_4634" = sub i64 %"$gasrem_4630", 1
  store i64 %"$consume_4634", i64* @_gasrem, align 8
  %"$BoolUtils.andb_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4635" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4636" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4635", 0
  %"$BoolUtils.andb_envptr_4637" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4635", 1
  %"$a1_4638" = load %TName_Bool*, %TName_Bool** %a1, align 8
  %"$BoolUtils.andb_call_4639" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4636"(i8* %"$BoolUtils.andb_envptr_4637", %TName_Bool* %"$a1_4638")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4639", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$BoolUtils.andb_24" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_23_4640" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$$BoolUtils.andb_23_fptr_4641" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_4640", 0
  %"$$BoolUtils.andb_23_envptr_4642" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_4640", 1
  %"$a2_4643" = load %TName_Bool*, %TName_Bool** %a2, align 8
  %"$$BoolUtils.andb_23_call_4644" = call %TName_Bool* %"$$BoolUtils.andb_23_fptr_4641"(i8* %"$$BoolUtils.andb_23_envptr_4642", %TName_Bool* %"$a2_4643")
  store %TName_Bool* %"$$BoolUtils.andb_23_call_4644", %TName_Bool** %"$BoolUtils.andb_24", align 8
  %"$$BoolUtils.andb_24_4645" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_24", align 8
  store %TName_Bool* %"$$BoolUtils.andb_24_4645", %TName_Bool** %b, align 8
  %"$gasrem_4646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4647" = icmp ugt i64 2, %"$gasrem_4646"
  br i1 %"$gascmp_4647", label %"$out_of_gas_4648", label %"$have_gas_4649"

"$out_of_gas_4648":                               ; preds = %"$have_gas_4633"
  call void @_out_of_gas()
  br label %"$have_gas_4649"

"$have_gas_4649":                                 ; preds = %"$out_of_gas_4648", %"$have_gas_4633"
  %"$consume_4650" = sub i64 %"$gasrem_4646", 2
  store i64 %"$consume_4650", i64* @_gasrem, align 8
  %"$b_4652" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_4653" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_4652", i32 0, i32 0
  %"$b_tag_4654" = load i8, i8* %"$b_tag_4653", align 1
  switch i8 %"$b_tag_4654", label %"$empty_default_4655" [
    i8 0, label %"$True_4656"
    i8 1, label %"$False_4658"
  ]

"$True_4656":                                     ; preds = %"$have_gas_4649"
  %"$b_4657" = bitcast %TName_Bool* %"$b_4652" to %CName_True*
  br label %"$matchsucc_4651"

"$False_4658":                                    ; preds = %"$have_gas_4649"
  %"$b_4659" = bitcast %TName_Bool* %"$b_4652" to %CName_False*
  %"$gasrem_4660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4661" = icmp ugt i64 1, %"$gasrem_4660"
  br i1 %"$gascmp_4661", label %"$out_of_gas_4662", label %"$have_gas_4663"

"$out_of_gas_4662":                               ; preds = %"$False_4658"
  call void @_out_of_gas()
  br label %"$have_gas_4663"

"$have_gas_4663":                                 ; preds = %"$out_of_gas_4662", %"$False_4658"
  %"$consume_4664" = sub i64 %"$gasrem_4660", 1
  store i64 %"$consume_4664", i64* @_gasrem, align 8
  %"$fail__origin_4665" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4665", align 1
  %"$fail__sender_4666" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4666", align 1
  %"$tname_4667" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4665", [20 x i8]* %"$fail__sender_4666", %String %"$tname_4667")
  br label %"$matchsucc_4651"

"$empty_default_4655":                            ; preds = %"$have_gas_4649"
  br label %"$matchsucc_4651"

"$matchsucc_4651":                                ; preds = %"$have_gas_4663", %"$True_4656", %"$empty_default_4655"
  %"$gasrem_4668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4669" = icmp ugt i64 1, %"$gasrem_4668"
  br i1 %"$gascmp_4669", label %"$out_of_gas_4670", label %"$have_gas_4671"

"$out_of_gas_4670":                               ; preds = %"$matchsucc_4651"
  call void @_out_of_gas()
  br label %"$have_gas_4671"

"$have_gas_4671":                                 ; preds = %"$out_of_gas_4670", %"$matchsucc_4651"
  %"$consume_4672" = sub i64 %"$gasrem_4668", 1
  store i64 %"$consume_4672", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$gasrem_4673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4674" = icmp ugt i64 1, %"$gasrem_4673"
  br i1 %"$gascmp_4674", label %"$out_of_gas_4675", label %"$have_gas_4676"

"$out_of_gas_4675":                               ; preds = %"$have_gas_4671"
  call void @_out_of_gas()
  br label %"$have_gas_4676"

"$have_gas_4676":                                 ; preds = %"$out_of_gas_4675", %"$have_gas_4671"
  %"$consume_4677" = sub i64 %"$gasrem_4673", 1
  store i64 %"$consume_4677", i64* @_gasrem, align 8
  %k = alloca %String, align 8
  %"$gasrem_4678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4679" = icmp ugt i64 1, %"$gasrem_4678"
  br i1 %"$gascmp_4679", label %"$out_of_gas_4680", label %"$have_gas_4681"

"$out_of_gas_4680":                               ; preds = %"$have_gas_4676"
  call void @_out_of_gas()
  br label %"$have_gas_4681"

"$have_gas_4681":                                 ; preds = %"$out_of_gas_4680", %"$have_gas_4676"
  %"$consume_4682" = sub i64 %"$gasrem_4678", 1
  store i64 %"$consume_4682", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4683", i32 0, i32 0), i32 0 }, %String* %k, align 8
  %"$gasrem_4684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4685" = icmp ugt i64 1, %"$gasrem_4684"
  br i1 %"$gascmp_4685", label %"$out_of_gas_4686", label %"$have_gas_4687"

"$out_of_gas_4686":                               ; preds = %"$have_gas_4681"
  call void @_out_of_gas()
  br label %"$have_gas_4687"

"$have_gas_4687":                                 ; preds = %"$out_of_gas_4686", %"$have_gas_4681"
  %"$consume_4688" = sub i64 %"$gasrem_4684", 1
  store i64 %"$consume_4688", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_4689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4690" = icmp ugt i64 1, %"$gasrem_4689"
  br i1 %"$gascmp_4690", label %"$out_of_gas_4691", label %"$have_gas_4692"

"$out_of_gas_4691":                               ; preds = %"$have_gas_4687"
  call void @_out_of_gas()
  br label %"$have_gas_4692"

"$have_gas_4692":                                 ; preds = %"$out_of_gas_4691", %"$have_gas_4687"
  %"$consume_4693" = sub i64 %"$gasrem_4689", 1
  store i64 %"$consume_4693", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4694", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_4695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4696" = icmp ugt i64 1, %"$gasrem_4695"
  br i1 %"$gascmp_4696", label %"$out_of_gas_4697", label %"$have_gas_4698"

"$out_of_gas_4697":                               ; preds = %"$have_gas_4692"
  call void @_out_of_gas()
  br label %"$have_gas_4698"

"$have_gas_4698":                                 ; preds = %"$out_of_gas_4697", %"$have_gas_4692"
  %"$consume_4699" = sub i64 %"$gasrem_4695", 1
  store i64 %"$consume_4699", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_4700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4701" = icmp ugt i64 1, %"$gasrem_4700"
  br i1 %"$gascmp_4701", label %"$out_of_gas_4702", label %"$have_gas_4703"

"$out_of_gas_4702":                               ; preds = %"$have_gas_4698"
  call void @_out_of_gas()
  br label %"$have_gas_4703"

"$have_gas_4703":                                 ; preds = %"$out_of_gas_4702", %"$have_gas_4698"
  %"$consume_4704" = sub i64 %"$gasrem_4700", 1
  store i64 %"$consume_4704", i64* @_gasrem, align 8
  %"$execptr_load_4705" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_4706" = call i8* @_new_empty_map(i8* %"$execptr_load_4705")
  %"$_new_empty_map_4707" = bitcast i8* %"$_new_empty_map_call_4706" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_4707", %Map_String_String** %e, align 8
  %"$e_4708" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4708_4709" = bitcast %Map_String_String* %"$e_4708" to i8*
  %"$_lengthof_call_4710" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_4708_4709")
  %"$gasadd_4711" = add i64 1, %"$_lengthof_call_4710"
  %"$gasrem_4712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4713" = icmp ugt i64 %"$gasadd_4711", %"$gasrem_4712"
  br i1 %"$gascmp_4713", label %"$out_of_gas_4714", label %"$have_gas_4715"

"$out_of_gas_4714":                               ; preds = %"$have_gas_4703"
  call void @_out_of_gas()
  br label %"$have_gas_4715"

"$have_gas_4715":                                 ; preds = %"$out_of_gas_4714", %"$have_gas_4703"
  %"$consume_4716" = sub i64 %"$gasrem_4712", %"$gasadd_4711"
  store i64 %"$consume_4716", i64* @_gasrem, align 8
  %"$execptr_load_4717" = load i8*, i8** @_execptr, align 8
  %"$e_4718" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4718_4719" = bitcast %Map_String_String* %"$e_4718" to i8*
  %"$put_k_4720" = alloca %String, align 8
  %"$k_4721" = load %String, %String* %k, align 8
  store %String %"$k_4721", %String* %"$put_k_4720", align 8
  %"$$put_k_4720_4722" = bitcast %String* %"$put_k_4720" to i8*
  %"$put_v_4723" = alloca %String, align 8
  %"$v_4724" = load %String, %String* %v, align 8
  store %String %"$v_4724", %String* %"$put_v_4723", align 8
  %"$$put_v_4723_4725" = bitcast %String* %"$put_v_4723" to i8*
  %"$put_call_4726" = call i8* @_put(i8* %"$execptr_load_4717", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$e_4718_4719", i8* %"$$put_k_4720_4722", i8* %"$$put_v_4723_4725")
  %"$put_4727" = bitcast i8* %"$put_call_4726" to %Map_String_String*
  store %Map_String_String* %"$put_4727", %Map_String_String** %m1, align 8
  %"$m1_4728" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_4728_4729" = bitcast %Map_String_String* %"$m1_4728" to i8*
  %"$_literal_cost_call_4730" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m1_4728_4729")
  %"$gasrem_4731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4732" = icmp ugt i64 %"$_literal_cost_call_4730", %"$gasrem_4731"
  br i1 %"$gascmp_4732", label %"$out_of_gas_4733", label %"$have_gas_4734"

"$out_of_gas_4733":                               ; preds = %"$have_gas_4715"
  call void @_out_of_gas()
  br label %"$have_gas_4734"

"$have_gas_4734":                                 ; preds = %"$out_of_gas_4733", %"$have_gas_4715"
  %"$consume_4735" = sub i64 %"$gasrem_4731", %"$_literal_cost_call_4730"
  store i64 %"$consume_4735", i64* @_gasrem, align 8
  %"$execptr_load_4736" = load i8*, i8** @_execptr, align 8
  %"$m1_4738" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$update_value_4739" = bitcast %Map_String_String* %"$m1_4738" to i8*
  call void @_update_field(i8* %"$execptr_load_4736", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4737", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_4739")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_4741" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4742" = bitcast i8* %"$_amount_4741" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4742", align 8
  %"$_origin_4743" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4744" = bitcast i8* %"$_origin_4743" to [20 x i8]*
  %"$_sender_4745" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4746" = bitcast i8* %"$_sender_4745" to [20 x i8]*
  call void @"$t16_4169"(%Uint128 %_amount, [20 x i8]* %"$_origin_4744", [20 x i8]* %"$_sender_4746")
  ret void
}

define internal void @"$t17_4747"(%Uint128 %_amount, [20 x i8]* %"$_origin_4748", [20 x i8]* %"$_sender_4749") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4748", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4749", align 1
  %"$gasrem_4750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4751" = icmp ugt i64 1, %"$gasrem_4750"
  br i1 %"$gascmp_4751", label %"$out_of_gas_4752", label %"$have_gas_4753"

"$out_of_gas_4752":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4753"

"$have_gas_4753":                                 ; preds = %"$out_of_gas_4752", %entry
  %"$consume_4754" = sub i64 %"$gasrem_4750", 1
  store i64 %"$consume_4754", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4756" = icmp ugt i64 1, %"$gasrem_4755"
  br i1 %"$gascmp_4756", label %"$out_of_gas_4757", label %"$have_gas_4758"

"$out_of_gas_4757":                               ; preds = %"$have_gas_4753"
  call void @_out_of_gas()
  br label %"$have_gas_4758"

"$have_gas_4758":                                 ; preds = %"$out_of_gas_4757", %"$have_gas_4753"
  %"$consume_4759" = sub i64 %"$gasrem_4755", 1
  store i64 %"$consume_4759", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4760", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4762" = icmp ugt i64 1, %"$gasrem_4761"
  br i1 %"$gascmp_4762", label %"$out_of_gas_4763", label %"$have_gas_4764"

"$out_of_gas_4763":                               ; preds = %"$have_gas_4758"
  call void @_out_of_gas()
  br label %"$have_gas_4764"

"$have_gas_4764":                                 ; preds = %"$out_of_gas_4763", %"$have_gas_4758"
  %"$consume_4765" = sub i64 %"$gasrem_4761", 1
  store i64 %"$consume_4765", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4767" = icmp ugt i64 1, %"$gasrem_4766"
  br i1 %"$gascmp_4767", label %"$out_of_gas_4768", label %"$have_gas_4769"

"$out_of_gas_4768":                               ; preds = %"$have_gas_4764"
  call void @_out_of_gas()
  br label %"$have_gas_4769"

"$have_gas_4769":                                 ; preds = %"$out_of_gas_4768", %"$have_gas_4764"
  %"$consume_4770" = sub i64 %"$gasrem_4766", 1
  store i64 %"$consume_4770", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4771", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4772_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4772_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4772_salloc_load", i64 16)
  %"$indices_buf_4772_salloc" = bitcast i8* %"$indices_buf_4772_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4772" = bitcast [16 x i8]* %"$indices_buf_4772_salloc" to i8*
  %"$key_4773" = load %String, %String* %key, align 8
  %"$indices_gep_4774" = getelementptr i8, i8* %"$indices_buf_4772", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4774" to %String*
  store %String %"$key_4773", %String* %indices_cast, align 8
  %"$execptr_load_4776" = load i8*, i8** @_execptr, align 8
  %"$found_call_4777" = call i8* @_fetch_field(i8* %"$execptr_load_4776", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4775", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_4772", i32 0)
  %"$found_4778" = bitcast i8* %"$found_call_4777" to %TName_Bool*
  store %TName_Bool* %"$found_4778", %TName_Bool** %found, align 8
  %"$found_4779" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4779_4780" = bitcast %TName_Bool* %"$found_4779" to i8*
  %"$_literal_cost_call_4781" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", i8* %"$$found_4779_4780")
  %"$gasadd_4782" = add i64 %"$_literal_cost_call_4781", 0
  %"$gasadd_4783" = add i64 %"$gasadd_4782", 1
  %"$gasrem_4784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4785" = icmp ugt i64 %"$gasadd_4783", %"$gasrem_4784"
  br i1 %"$gascmp_4785", label %"$out_of_gas_4786", label %"$have_gas_4787"

"$out_of_gas_4786":                               ; preds = %"$have_gas_4769"
  call void @_out_of_gas()
  br label %"$have_gas_4787"

"$have_gas_4787":                                 ; preds = %"$out_of_gas_4786", %"$have_gas_4769"
  %"$consume_4788" = sub i64 %"$gasrem_4784", %"$gasadd_4783"
  store i64 %"$consume_4788", i64* @_gasrem, align 8
  %"$gasrem_4789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4790" = icmp ugt i64 2, %"$gasrem_4789"
  br i1 %"$gascmp_4790", label %"$out_of_gas_4791", label %"$have_gas_4792"

"$out_of_gas_4791":                               ; preds = %"$have_gas_4787"
  call void @_out_of_gas()
  br label %"$have_gas_4792"

"$have_gas_4792":                                 ; preds = %"$out_of_gas_4791", %"$have_gas_4787"
  %"$consume_4793" = sub i64 %"$gasrem_4789", 2
  store i64 %"$consume_4793", i64* @_gasrem, align 8
  %"$found_4795" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4796" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4795", i32 0, i32 0
  %"$found_tag_4797" = load i8, i8* %"$found_tag_4796", align 1
  switch i8 %"$found_tag_4797", label %"$empty_default_4798" [
    i8 0, label %"$True_4799"
    i8 1, label %"$False_4801"
  ]

"$True_4799":                                     ; preds = %"$have_gas_4792"
  %"$found_4800" = bitcast %TName_Bool* %"$found_4795" to %CName_True*
  br label %"$matchsucc_4794"

"$False_4801":                                    ; preds = %"$have_gas_4792"
  %"$found_4802" = bitcast %TName_Bool* %"$found_4795" to %CName_False*
  %"$gasrem_4803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4804" = icmp ugt i64 1, %"$gasrem_4803"
  br i1 %"$gascmp_4804", label %"$out_of_gas_4805", label %"$have_gas_4806"

"$out_of_gas_4805":                               ; preds = %"$False_4801"
  call void @_out_of_gas()
  br label %"$have_gas_4806"

"$have_gas_4806":                                 ; preds = %"$out_of_gas_4805", %"$False_4801"
  %"$consume_4807" = sub i64 %"$gasrem_4803", 1
  store i64 %"$consume_4807", i64* @_gasrem, align 8
  %"$fail__origin_4808" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4808", align 1
  %"$fail__sender_4809" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4809", align 1
  %"$tname_4810" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4808", [20 x i8]* %"$fail__sender_4809", %String %"$tname_4810")
  br label %"$matchsucc_4794"

"$empty_default_4798":                            ; preds = %"$have_gas_4792"
  br label %"$matchsucc_4794"

"$matchsucc_4794":                                ; preds = %"$have_gas_4806", %"$True_4799", %"$empty_default_4798"
  %"$gasrem_4811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4812" = icmp ugt i64 1, %"$gasrem_4811"
  br i1 %"$gascmp_4812", label %"$out_of_gas_4813", label %"$have_gas_4814"

"$out_of_gas_4813":                               ; preds = %"$matchsucc_4794"
  call void @_out_of_gas()
  br label %"$have_gas_4814"

"$have_gas_4814":                                 ; preds = %"$out_of_gas_4813", %"$matchsucc_4794"
  %"$consume_4815" = sub i64 %"$gasrem_4811", 1
  store i64 %"$consume_4815", i64* @_gasrem, align 8
  %"$indices_buf_4816_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4816_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4816_salloc_load", i64 16)
  %"$indices_buf_4816_salloc" = bitcast i8* %"$indices_buf_4816_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4816" = bitcast [16 x i8]* %"$indices_buf_4816_salloc" to i8*
  %"$key_4817" = load %String, %String* %key, align 8
  %"$indices_gep_4818" = getelementptr i8, i8* %"$indices_buf_4816", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4818" to %String*
  store %String %"$key_4817", %String* %indices_cast1, align 8
  %"$execptr_load_4819" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4819", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4820", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_4816", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_4822" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4823" = bitcast i8* %"$_amount_4822" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4823", align 8
  %"$_origin_4824" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4825" = bitcast i8* %"$_origin_4824" to [20 x i8]*
  %"$_sender_4826" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4827" = bitcast i8* %"$_sender_4826" to [20 x i8]*
  call void @"$t17_4747"(%Uint128 %_amount, [20 x i8]* %"$_origin_4825", [20 x i8]* %"$_sender_4827")
  ret void
}

define internal void @"$t18_4828"(%Uint128 %_amount, [20 x i8]* %"$_origin_4829", [20 x i8]* %"$_sender_4830") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4829", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4830", align 1
  %"$gasrem_4831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4832" = icmp ugt i64 1, %"$gasrem_4831"
  br i1 %"$gascmp_4832", label %"$out_of_gas_4833", label %"$have_gas_4834"

"$out_of_gas_4833":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4834"

"$have_gas_4834":                                 ; preds = %"$out_of_gas_4833", %entry
  %"$consume_4835" = sub i64 %"$gasrem_4831", 1
  store i64 %"$consume_4835", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4837" = icmp ugt i64 1, %"$gasrem_4836"
  br i1 %"$gascmp_4837", label %"$out_of_gas_4838", label %"$have_gas_4839"

"$out_of_gas_4838":                               ; preds = %"$have_gas_4834"
  call void @_out_of_gas()
  br label %"$have_gas_4839"

"$have_gas_4839":                                 ; preds = %"$out_of_gas_4838", %"$have_gas_4834"
  %"$consume_4840" = sub i64 %"$gasrem_4836", 1
  store i64 %"$consume_4840", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4841", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4843" = icmp ugt i64 1, %"$gasrem_4842"
  br i1 %"$gascmp_4843", label %"$out_of_gas_4844", label %"$have_gas_4845"

"$out_of_gas_4844":                               ; preds = %"$have_gas_4839"
  call void @_out_of_gas()
  br label %"$have_gas_4845"

"$have_gas_4845":                                 ; preds = %"$out_of_gas_4844", %"$have_gas_4839"
  %"$consume_4846" = sub i64 %"$gasrem_4842", 1
  store i64 %"$consume_4846", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4848" = icmp ugt i64 1, %"$gasrem_4847"
  br i1 %"$gascmp_4848", label %"$out_of_gas_4849", label %"$have_gas_4850"

"$out_of_gas_4849":                               ; preds = %"$have_gas_4845"
  call void @_out_of_gas()
  br label %"$have_gas_4850"

"$have_gas_4850":                                 ; preds = %"$out_of_gas_4849", %"$have_gas_4845"
  %"$consume_4851" = sub i64 %"$gasrem_4847", 1
  store i64 %"$consume_4851", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4852", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4853_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4853_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4853_salloc_load", i64 16)
  %"$indices_buf_4853_salloc" = bitcast i8* %"$indices_buf_4853_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4853" = bitcast [16 x i8]* %"$indices_buf_4853_salloc" to i8*
  %"$key_4854" = load %String, %String* %key, align 8
  %"$indices_gep_4855" = getelementptr i8, i8* %"$indices_buf_4853", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4855" to %String*
  store %String %"$key_4854", %String* %indices_cast, align 8
  %"$execptr_load_4857" = load i8*, i8** @_execptr, align 8
  %"$found_call_4858" = call i8* @_fetch_field(i8* %"$execptr_load_4857", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4856", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 1, i8* %"$indices_buf_4853", i32 0)
  %"$found_4859" = bitcast i8* %"$found_call_4858" to %TName_Bool*
  store %TName_Bool* %"$found_4859", %TName_Bool** %found, align 8
  %"$found_4860" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4860_4861" = bitcast %TName_Bool* %"$found_4860" to i8*
  %"$_literal_cost_call_4862" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_71", i8* %"$$found_4860_4861")
  %"$gasadd_4863" = add i64 %"$_literal_cost_call_4862", 0
  %"$gasadd_4864" = add i64 %"$gasadd_4863", 1
  %"$gasrem_4865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4866" = icmp ugt i64 %"$gasadd_4864", %"$gasrem_4865"
  br i1 %"$gascmp_4866", label %"$out_of_gas_4867", label %"$have_gas_4868"

"$out_of_gas_4867":                               ; preds = %"$have_gas_4850"
  call void @_out_of_gas()
  br label %"$have_gas_4868"

"$have_gas_4868":                                 ; preds = %"$out_of_gas_4867", %"$have_gas_4850"
  %"$consume_4869" = sub i64 %"$gasrem_4865", %"$gasadd_4864"
  store i64 %"$consume_4869", i64* @_gasrem, align 8
  %"$gasrem_4870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4871" = icmp ugt i64 2, %"$gasrem_4870"
  br i1 %"$gascmp_4871", label %"$out_of_gas_4872", label %"$have_gas_4873"

"$out_of_gas_4872":                               ; preds = %"$have_gas_4868"
  call void @_out_of_gas()
  br label %"$have_gas_4873"

"$have_gas_4873":                                 ; preds = %"$out_of_gas_4872", %"$have_gas_4868"
  %"$consume_4874" = sub i64 %"$gasrem_4870", 2
  store i64 %"$consume_4874", i64* @_gasrem, align 8
  %"$found_4876" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4877" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4876", i32 0, i32 0
  %"$found_tag_4878" = load i8, i8* %"$found_tag_4877", align 1
  switch i8 %"$found_tag_4878", label %"$empty_default_4879" [
    i8 0, label %"$True_4880"
    i8 1, label %"$False_4890"
  ]

"$True_4880":                                     ; preds = %"$have_gas_4873"
  %"$found_4881" = bitcast %TName_Bool* %"$found_4876" to %CName_True*
  %"$gasrem_4882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4883" = icmp ugt i64 1, %"$gasrem_4882"
  br i1 %"$gascmp_4883", label %"$out_of_gas_4884", label %"$have_gas_4885"

"$out_of_gas_4884":                               ; preds = %"$True_4880"
  call void @_out_of_gas()
  br label %"$have_gas_4885"

"$have_gas_4885":                                 ; preds = %"$out_of_gas_4884", %"$True_4880"
  %"$consume_4886" = sub i64 %"$gasrem_4882", 1
  store i64 %"$consume_4886", i64* @_gasrem, align 8
  %"$fail__origin_4887" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4887", align 1
  %"$fail__sender_4888" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4888", align 1
  %"$tname_4889" = load %String, %String* %tname, align 8
  call void @"$fail_250"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4887", [20 x i8]* %"$fail__sender_4888", %String %"$tname_4889")
  br label %"$matchsucc_4875"

"$False_4890":                                    ; preds = %"$have_gas_4873"
  %"$found_4891" = bitcast %TName_Bool* %"$found_4876" to %CName_False*
  br label %"$matchsucc_4875"

"$empty_default_4879":                            ; preds = %"$have_gas_4873"
  br label %"$matchsucc_4875"

"$matchsucc_4875":                                ; preds = %"$False_4890", %"$have_gas_4885", %"$empty_default_4879"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_4893" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4894" = bitcast i8* %"$_amount_4893" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4894", align 8
  %"$_origin_4895" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4896" = bitcast i8* %"$_origin_4895" to [20 x i8]*
  %"$_sender_4897" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4898" = bitcast i8* %"$_sender_4897" to [20 x i8]*
  call void @"$t18_4828"(%Uint128 %_amount, [20 x i8]* %"$_origin_4896", [20 x i8]* %"$_sender_4898")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
