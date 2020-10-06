

; gas_remaining: 4002000
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_32" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_64" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_63"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_63" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_65"**, %"$TyDescrTy_ADTTyp_64"* }
%"$TyDescrTy_ADTTyp_Constr_65" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_70" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_25_env_119" = type { %TName_Bool* }
%"$$fundef_23_env_120" = type {}
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
@"$TyDescr_Int32_Prim_33" = global %"$TyDescrTy_PrimTyp_32" zeroinitializer
@"$TyDescr_Int32_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int32_Prim_33" to i8*) }
@"$TyDescr_Uint32_Prim_35" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 0 }
@"$TyDescr_Uint32_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint32_Prim_35" to i8*) }
@"$TyDescr_Int64_Prim_37" = global %"$TyDescrTy_PrimTyp_32" { i32 0, i32 1 }
@"$TyDescr_Int64_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int64_Prim_37" to i8*) }
@"$TyDescr_Uint64_Prim_39" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 1 }
@"$TyDescr_Uint64_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint64_Prim_39" to i8*) }
@"$TyDescr_Int128_Prim_41" = global %"$TyDescrTy_PrimTyp_32" { i32 0, i32 2 }
@"$TyDescr_Int128_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int128_Prim_41" to i8*) }
@"$TyDescr_Uint128_Prim_43" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 2 }
@"$TyDescr_Uint128_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint128_Prim_43" to i8*) }
@"$TyDescr_Int256_Prim_45" = global %"$TyDescrTy_PrimTyp_32" { i32 0, i32 3 }
@"$TyDescr_Int256_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int256_Prim_45" to i8*) }
@"$TyDescr_Uint256_Prim_47" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 3 }
@"$TyDescr_Uint256_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint256_Prim_47" to i8*) }
@"$TyDescr_String_Prim_49" = global %"$TyDescrTy_PrimTyp_32" { i32 2, i32 0 }
@"$TyDescr_String_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_String_Prim_49" to i8*) }
@"$TyDescr_Bnum_Prim_51" = global %"$TyDescrTy_PrimTyp_32" { i32 3, i32 0 }
@"$TyDescr_Bnum_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Bnum_Prim_51" to i8*) }
@"$TyDescr_Message_Prim_53" = global %"$TyDescrTy_PrimTyp_32" { i32 4, i32 0 }
@"$TyDescr_Message_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Message_Prim_53" to i8*) }
@"$TyDescr_Event_Prim_55" = global %"$TyDescrTy_PrimTyp_32" { i32 5, i32 0 }
@"$TyDescr_Event_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Event_Prim_55" to i8*) }
@"$TyDescr_Exception_Prim_57" = global %"$TyDescrTy_PrimTyp_32" { i32 6, i32 0 }
@"$TyDescr_Exception_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Exception_Prim_57" to i8*) }
@"$TyDescr_Bystr_Prim_59" = global %"$TyDescrTy_PrimTyp_32" { i32 7, i32 0 }
@"$TyDescr_Bystr_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Bystr_Prim_59" to i8*) }
@"$TyDescr_Bystr20_Prim_61" = global %"$TyDescrTy_PrimTyp_32" { i32 8, i32 20 }
@"$TyDescr_Bystr20_62" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Bystr20_Prim_61" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_83" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(String)_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_92" to i8*) }
@"$TyDescr_ADT_Option_String_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_String_ADTTyp_Specl_101" to i8*) }
@"$TyDescr_ADT_Bool_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Bool_ADTTyp_Specl_113" to i8*) }
@"$TyDescr_Map_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_70"* @"$TyDescr_MapTyp_116" to i8*) }
@"$TyDescr_Map_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_70"* @"$TyDescr_MapTyp_117" to i8*) }
@"$TyDescr_Map_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_70"* @"$TyDescr_MapTyp_118" to i8*) }
@"$TyDescr_Option_ADTTyp_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_64" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_103", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_63"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_63"*], [3 x %"$TyDescrTy_ADTTyp_Specl_63"*]* @"$TyDescr_Option_ADTTyp_m_specls_102", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_75" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72"]
@"$TyDescr_ADT_Some_76" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_76", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_79" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_79", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_81" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_77", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_80"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_82" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_84" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_73"]
@"$TyDescr_ADT_Some_85" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_85", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_84", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_87" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_88" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_88", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_90" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_86", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_89"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_91" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_73"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_String_Constr_m_args_93" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_50"]
@"$TyDescr_ADT_Some_94" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_String_ADTTyp_Constr_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_94", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_String_Constr_m_args_93", i32 0, i32 0) }
@"$TyDescr_Option_None_String_Constr_m_args_96" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_97" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_String_ADTTyp_Constr_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_97", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_String_Constr_m_args_96", i32 0, i32 0) }
@"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_99" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_Some_String_ADTTyp_Constr_95", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_None_String_ADTTyp_Constr_98"]
@"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_100" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_50"]
@"$TyDescr_Option_String_ADTTyp_Specl_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_100", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_99", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_ADTTyp_m_specls_102" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_63"*] [%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_83", %"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_92", %"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_String_ADTTyp_Specl_101"]
@"$TyDescr_ADT_Option_103" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_115", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_63"*], [1 x %"$TyDescrTy_ADTTyp_Specl_63"*]* @"$TyDescr_Bool_ADTTyp_m_specls_114", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_106" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_106", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_105", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_108" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_109" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_109", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_111" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Bool_True_ADTTyp_Constr_107", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Bool_False_ADTTyp_Constr_110"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_112" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_112", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Bool_ADTTyp_104" }
@"$TyDescr_Bool_ADTTyp_m_specls_114" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_63"*] [%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Bool_ADTTyp_Specl_113"]
@"$TyDescr_ADT_Bool_115" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_116" = unnamed_addr constant %"$TyDescr_MapTyp_70" { %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_Map_72" }
@"$TyDescr_MapTyp_117" = unnamed_addr constant %"$TyDescr_MapTyp_70" { %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_Map_73" }
@"$TyDescr_MapTyp_118" = unnamed_addr constant %"$TyDescr_MapTyp_70" { %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_String_50" }
@andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_145" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_147" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_155" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_162" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_169" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_176" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_182" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_187" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_190" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_203" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_208" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_211" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_218" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_230" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_232" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_236" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_252" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_254" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_265" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_267" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_271" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_287" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_288" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_293" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_304" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_305" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_306" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_311" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_334" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_344" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_349" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_361" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_371" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_379" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_380" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_385" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_399" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_400" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_401" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_408" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_419" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_420" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_421" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_422" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_429" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_454" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_465" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_466" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_478" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_479" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_491" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_496" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_506" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_507" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_508" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_515" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_527" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_541" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_547" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_551" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_552" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_559" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_571" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_585" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_591" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_595" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_596" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_603" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_615" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_629" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_635" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_643" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_651" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_652" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_653" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_660" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_672" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_686" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_692" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_696" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_701" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_713" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_719" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_720" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_727" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_739" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_745" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_746" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_753" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_765" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_771" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_772" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_773" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_780" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_791" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_792" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_793" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_800" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_812" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_826" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_832" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_836" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_837" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_844" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_856" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_870" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_876" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_884" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_894" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_896" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_917" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_918" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_931" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_941" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_942" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_944" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_964" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_978" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_984" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_992" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_1000" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_1002" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_1027" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1037" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_1039" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1063" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_1068" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1078" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_1079" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_1084" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1112" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_1123" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_1151" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_1161" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_1163" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_1188" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_1198" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_1200" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_1219" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_1223" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1224" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_1289" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_1295" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_1301" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_1307" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_1311" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1312" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1313" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_1314" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1315" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_1316" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_1317" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1318" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_1319" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_1320" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_1413" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1423" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_1424" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1425" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_1426" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1427" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1428" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_1429" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1430" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_1431" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_1438" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_1447" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_1456" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_1465" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1468" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1469" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_1470" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_1471" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_1588" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1589" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_1605" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_1615" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_1616" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_1621" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_1639" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_1647" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_1648" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_1653" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_67", %_TyDescrTy_Typ* @"$TyDescr_Event_56", %_TyDescrTy_Typ* @"$TyDescr_Int64_38", %_TyDescrTy_Typ* @"$TyDescr_Map_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_62", %_TyDescrTy_Typ* @"$TyDescr_Uint256_48", %_TyDescrTy_Typ* @"$TyDescr_Uint32_36", %_TyDescrTy_Typ* @"$TyDescr_Map_72", %_TyDescrTy_Typ* @"$TyDescr_Uint64_40", %_TyDescrTy_Typ* @"$TyDescr_Bnum_52", %_TyDescrTy_Typ* @"$TyDescr_Uint128_44", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_66", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", %_TyDescrTy_Typ* @"$TyDescr_Int256_46", %_TyDescrTy_Typ* @"$TyDescr_Int128_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr_60", %_TyDescrTy_Typ* @"$TyDescr_Message_54", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@_tydescr_table_length = constant i32 22

define internal %TName_Bool* @"$fundef_25"(%"$$fundef_25_env_119"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_25_env_b_127" = getelementptr inbounds %"$$fundef_25_env_119", %"$$fundef_25_env_119"* %0, i32 0, i32 0
  %"$b_envload_128" = load %TName_Bool*, %TName_Bool** %"$$fundef_25_env_b_127"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_128", %TName_Bool** %b
  %"$retval_26" = alloca %TName_Bool*
  %"$b_130" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_131" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_130", i32 0, i32 0
  %"$b_tag_132" = load i8, i8* %"$b_tag_131"
  switch i8 %"$b_tag_132", label %"$empty_default_133" [
    i8 1, label %"$False_134"
    i8 0, label %"$True_139"
  ]

"$False_134":                                     ; preds = %entry
  %"$b_135" = bitcast %TName_Bool* %"$b_130" to %CName_False*
  %"$adtval_136_load" = load i8*, i8** @_execptr
  %"$adtval_136_salloc" = call i8* @_salloc(i8* %"$adtval_136_load", i64 1)
  %"$adtval_136" = bitcast i8* %"$adtval_136_salloc" to %CName_False*
  %"$adtgep_137" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_136", i32 0, i32 0
  store i8 1, i8* %"$adtgep_137"
  %"$adtptr_138" = bitcast %CName_False* %"$adtval_136" to %TName_Bool*
  store %TName_Bool* %"$adtptr_138", %TName_Bool** %"$retval_26"
  br label %"$matchsucc_129"

"$True_139":                                      ; preds = %entry
  %"$b_140" = bitcast %TName_Bool* %"$b_130" to %CName_True*
  store %TName_Bool* %1, %TName_Bool** %"$retval_26"
  br label %"$matchsucc_129"

"$empty_default_133":                             ; preds = %entry
  br label %"$matchsucc_129"

"$matchsucc_129":                                 ; preds = %"$True_139", %"$False_134", %"$empty_default_133"
  %"$$retval_26_141" = load %TName_Bool*, %TName_Bool** %"$retval_26"
  ret %TName_Bool* %"$$retval_26_141"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_120"* %0, %TName_Bool* %1) {
entry:
  %"$retval_24" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$$fundef_25_envp_121_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_121_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_121_load", i64 8)
  %"$$fundef_25_envp_121" = bitcast i8* %"$$fundef_25_envp_121_salloc" to %"$$fundef_25_env_119"*
  %"$$fundef_25_env_voidp_123" = bitcast %"$$fundef_25_env_119"* %"$$fundef_25_envp_121" to i8*
  %"$$fundef_25_cloval_124" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_25_env_119"*, %TName_Bool*)* @"$fundef_25" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_123", 1
  %"$$fundef_25_env_b_125" = getelementptr inbounds %"$$fundef_25_env_119", %"$$fundef_25_env_119"* %"$$fundef_25_envp_121", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_25_env_b_125"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_25_cloval_124", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24"
  %"$$retval_24_126" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_24_126"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_23_env_120"*, %TName_Bool*)* @"$fundef_23" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  ret void
}

define void @_init_state() {
entry:
  %"$f_s1_27" = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_145", i32 0, i32 0), i32 3 }, %String* %"$f_s1_27"
  %"$execptr_load_146" = load i8*, i8** @_execptr
  %"$$f_s1_27_148" = load %String, %String* %"$f_s1_27"
  %"$update_value_149" = alloca %String
  store %String %"$$f_s1_27_148", %String* %"$update_value_149"
  %"$update_value_150" = bitcast %String* %"$update_value_149" to i8*
  call void @_update_field(i8* %"$execptr_load_146", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_147", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i8* %"$update_value_150")
  %"$f_m1_28" = alloca %Map_String_String*
  %"$execptr_load_151" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_152" = call i8* @_new_empty_map(i8* %"$execptr_load_151")
  %"$Emp_153" = bitcast i8* %"$_new_empty_map_call_152" to %Map_String_String*
  store %Map_String_String* %"$Emp_153", %Map_String_String** %"$f_m1_28"
  %"$execptr_load_154" = load i8*, i8** @_execptr
  %"$$f_m1_28_156" = load %Map_String_String*, %Map_String_String** %"$f_m1_28"
  %"$update_value_157" = bitcast %Map_String_String* %"$$f_m1_28_156" to i8*
  call void @_update_field(i8* %"$execptr_load_154", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_155", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_157")
  %"$f_m2_29" = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_158" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_159" = call i8* @_new_empty_map(i8* %"$execptr_load_158")
  %"$Emp_160" = bitcast i8* %"$_new_empty_map_call_159" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_160", %"Map_String_Map_(String)_(String)"** %"$f_m2_29"
  %"$execptr_load_161" = load i8*, i8** @_execptr
  %"$$f_m2_29_163" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_29"
  %"$update_value_164" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_29_163" to i8*
  call void @_update_field(i8* %"$execptr_load_161", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_162", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_164")
  %"$f_m3_30" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_165" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_166" = call i8* @_new_empty_map(i8* %"$execptr_load_165")
  %"$Emp_167" = bitcast i8* %"$_new_empty_map_call_166" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$Emp_167", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_30"
  %"$execptr_load_168" = load i8*, i8** @_execptr
  %"$$f_m3_30_170" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_30"
  %"$update_value_171" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_30_170" to i8*
  call void @_update_field(i8* %"$execptr_load_168", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_169", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_171")
  %"$f_m_31" = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_172" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_173" = call i8* @_new_empty_map(i8* %"$execptr_load_172")
  %"$Emp_174" = bitcast i8* %"$_new_empty_map_call_173" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_174", %"Map_String_Map_(String)_(String)"** %"$f_m_31"
  %"$execptr_load_175" = load i8*, i8** @_execptr
  %"$$f_m_31_177" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_31"
  %"$update_value_178" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_31_177" to i8*
  call void @_update_field(i8* %"$execptr_load_175", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_176", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_178")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$_sender_180", %String %tname) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_180"
  %e = alloca i8*
  %"$msgobj_181_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_181_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_181_salloc_load", i64 81)
  %"$msgobj_181_salloc" = bitcast i8* %"$msgobj_181_salloc_salloc" to [81 x i8]*
  %"$msgobj_181" = bitcast [81 x i8]* %"$msgobj_181_salloc" to i8*
  store i8 2, i8* %"$msgobj_181"
  %"$msgobj_fname_183" = getelementptr i8, i8* %"$msgobj_181", i32 1
  %"$msgobj_fname_184" = bitcast i8* %"$msgobj_fname_183" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_182", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_184"
  %"$msgobj_td_185" = getelementptr i8, i8* %"$msgobj_181", i32 17
  %"$msgobj_td_186" = bitcast i8* %"$msgobj_td_185" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_186"
  %"$msgobj_v_188" = getelementptr i8, i8* %"$msgobj_181", i32 25
  %"$msgobj_v_189" = bitcast i8* %"$msgobj_v_188" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_187", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_189"
  %"$msgobj_fname_191" = getelementptr i8, i8* %"$msgobj_181", i32 41
  %"$msgobj_fname_192" = bitcast i8* %"$msgobj_fname_191" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_190", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_192"
  %"$msgobj_td_193" = getelementptr i8, i8* %"$msgobj_181", i32 57
  %"$msgobj_td_194" = bitcast i8* %"$msgobj_td_193" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_194"
  %"$msgobj_v_195" = getelementptr i8, i8* %"$msgobj_181", i32 65
  %"$msgobj_v_196" = bitcast i8* %"$msgobj_v_195" to %String*
  store %String %tname, %String* %"$msgobj_v_196"
  store i8* %"$msgobj_181", i8** %e
  %"$execptr_load_198" = load i8*, i8** @_execptr
  %"$e_199" = load i8*, i8** %e
  call void @_throw(i8* %"$execptr_load_198", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_199")
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$_sender_201", %String %tname, %String %msg) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_201"
  %e = alloca i8*
  %"$msgobj_202_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_202_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_202_salloc_load", i64 121)
  %"$msgobj_202_salloc" = bitcast i8* %"$msgobj_202_salloc_salloc" to [121 x i8]*
  %"$msgobj_202" = bitcast [121 x i8]* %"$msgobj_202_salloc" to i8*
  store i8 3, i8* %"$msgobj_202"
  %"$msgobj_fname_204" = getelementptr i8, i8* %"$msgobj_202", i32 1
  %"$msgobj_fname_205" = bitcast i8* %"$msgobj_fname_204" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_203", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_205"
  %"$msgobj_td_206" = getelementptr i8, i8* %"$msgobj_202", i32 17
  %"$msgobj_td_207" = bitcast i8* %"$msgobj_td_206" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_207"
  %"$msgobj_v_209" = getelementptr i8, i8* %"$msgobj_202", i32 25
  %"$msgobj_v_210" = bitcast i8* %"$msgobj_v_209" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_208", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_210"
  %"$msgobj_fname_212" = getelementptr i8, i8* %"$msgobj_202", i32 41
  %"$msgobj_fname_213" = bitcast i8* %"$msgobj_fname_212" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_211", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_213"
  %"$msgobj_td_214" = getelementptr i8, i8* %"$msgobj_202", i32 57
  %"$msgobj_td_215" = bitcast i8* %"$msgobj_td_214" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_215"
  %"$msgobj_v_216" = getelementptr i8, i8* %"$msgobj_202", i32 65
  %"$msgobj_v_217" = bitcast i8* %"$msgobj_v_216" to %String*
  store %String %tname, %String* %"$msgobj_v_217"
  %"$msgobj_fname_219" = getelementptr i8, i8* %"$msgobj_202", i32 81
  %"$msgobj_fname_220" = bitcast i8* %"$msgobj_fname_219" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_218", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_220"
  %"$msgobj_td_221" = getelementptr i8, i8* %"$msgobj_202", i32 97
  %"$msgobj_td_222" = bitcast i8* %"$msgobj_td_221" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_222"
  %"$msgobj_v_223" = getelementptr i8, i8* %"$msgobj_202", i32 105
  %"$msgobj_v_224" = bitcast i8* %"$msgobj_v_223" to %String*
  store %String %msg, %String* %"$msgobj_v_224"
  store i8* %"$msgobj_202", i8** %e
  %"$execptr_load_226" = load i8*, i8** @_execptr
  %"$e_227" = load i8*, i8** %e
  call void @_throw(i8* %"$execptr_load_226", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_227")
  ret void
}

define internal void @"$t1_228"(%Uint128 %_amount, [20 x i8]* %"$_sender_229") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_229"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_230", i32 0, i32 0), i32 2 }, %String* %tname
  %f = alloca %String
  %"$execptr_load_231" = load i8*, i8** @_execptr
  %"$f_233" = call i8* @_fetch_field(i8* %"$execptr_load_231", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_232", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i32 1)
  %"$f_234" = bitcast i8* %"$f_233" to %String*
  %"$f_235" = load %String, %String* %"$f_234"
  store %String %"$f_235", %String* %f
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_236", i32 0, i32 0), i32 3 }, %String* %s
  %t = alloca %TName_Bool*
  %"$execptr_load_237" = load i8*, i8** @_execptr
  %"$f_238" = load %String, %String* %f
  %"$s_239" = load %String, %String* %s
  %"$eq_call_240" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_237", %String %"$f_238", %String %"$s_239")
  store %TName_Bool* %"$eq_call_240", %TName_Bool** %t
  %"$t_242" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_243" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_242", i32 0, i32 0
  %"$t_tag_244" = load i8, i8* %"$t_tag_243"
  switch i8 %"$t_tag_244", label %"$empty_default_245" [
    i8 1, label %"$False_246"
    i8 0, label %"$True_250"
  ]

"$False_246":                                     ; preds = %entry
  %"$t_247" = bitcast %TName_Bool* %"$t_242" to %CName_False*
  %"$fail__sender_248" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_248"
  %"$tname_249" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_248", %String %"$tname_249")
  br label %"$matchsucc_241"

"$True_250":                                      ; preds = %entry
  %"$t_251" = bitcast %TName_Bool* %"$t_242" to %CName_True*
  br label %"$matchsucc_241"

"$empty_default_245":                             ; preds = %entry
  br label %"$matchsucc_241"

"$matchsucc_241":                                 ; preds = %"$True_250", %"$False_246", %"$empty_default_245"
  %s2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_252", i32 0, i32 0), i32 3 }, %String* %s2
  %"$execptr_load_253" = load i8*, i8** @_execptr
  %"$s2_255" = load %String, %String* %s2
  %"$update_value_256" = alloca %String
  store %String %"$s2_255", %String* %"$update_value_256"
  %"$update_value_257" = bitcast %String* %"$update_value_256" to i8*
  call void @_update_field(i8* %"$execptr_load_253", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_254", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i8* %"$update_value_257")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) {
entry:
  %"$_amount_259" = getelementptr i8, i8* %0, i32 0
  %"$_amount_260" = bitcast i8* %"$_amount_259" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_260"
  %"$_sender_261" = getelementptr i8, i8* %0, i32 16
  %"$_sender_262" = bitcast i8* %"$_sender_261" to [20 x i8]*
  call void @"$t1_228"(%Uint128 %_amount, [20 x i8]* %"$_sender_262")
  ret void
}

define internal void @"$t2_263"(%Uint128 %_amount, [20 x i8]* %"$_sender_264") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_264"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_265", i32 0, i32 0), i32 2 }, %String* %tname
  %f = alloca %String
  %"$execptr_load_266" = load i8*, i8** @_execptr
  %"$f_268" = call i8* @_fetch_field(i8* %"$execptr_load_266", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_267", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i32 1)
  %"$f_269" = bitcast i8* %"$f_268" to %String*
  %"$f_270" = load %String, %String* %"$f_269"
  store %String %"$f_270", %String* %f
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_271", i32 0, i32 0), i32 3 }, %String* %s
  %t = alloca %TName_Bool*
  %"$execptr_load_272" = load i8*, i8** @_execptr
  %"$f_273" = load %String, %String* %f
  %"$s_274" = load %String, %String* %s
  %"$eq_call_275" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_272", %String %"$f_273", %String %"$s_274")
  store %TName_Bool* %"$eq_call_275", %TName_Bool** %t
  %"$t_277" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_278" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_277", i32 0, i32 0
  %"$t_tag_279" = load i8, i8* %"$t_tag_278"
  switch i8 %"$t_tag_279", label %"$empty_default_280" [
    i8 1, label %"$False_281"
    i8 0, label %"$True_285"
  ]

"$False_281":                                     ; preds = %entry
  %"$t_282" = bitcast %TName_Bool* %"$t_277" to %CName_False*
  %"$fail__sender_283" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_283"
  %"$tname_284" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_283", %String %"$tname_284")
  br label %"$matchsucc_276"

"$True_285":                                      ; preds = %entry
  %"$t_286" = bitcast %TName_Bool* %"$t_277" to %CName_True*
  br label %"$matchsucc_276"

"$empty_default_280":                             ; preds = %entry
  br label %"$matchsucc_276"

"$matchsucc_276":                                 ; preds = %"$True_285", %"$False_281", %"$empty_default_280"
  %key1 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_287", i32 0, i32 0), i32 4 }, %String* %key1
  %val1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_288", i32 0, i32 0), i32 3 }, %String* %val1
  %"$indices_buf_289_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_289_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_289_salloc_load", i64 16)
  %"$indices_buf_289_salloc" = bitcast i8* %"$indices_buf_289_salloc_salloc" to [16 x i8]*
  %"$indices_buf_289" = bitcast [16 x i8]* %"$indices_buf_289_salloc" to i8*
  %"$key1_290" = load %String, %String* %key1
  %"$indices_gep_291" = getelementptr i8, i8* %"$indices_buf_289", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_291" to %String*
  store %String %"$key1_290", %String* %indices_cast
  %"$execptr_load_292" = load i8*, i8** @_execptr
  %"$val1_294" = load %String, %String* %val1
  %"$update_value_295" = alloca %String
  store %String %"$val1_294", %String* %"$update_value_295"
  %"$update_value_296" = bitcast %String* %"$update_value_295" to i8*
  call void @_update_field(i8* %"$execptr_load_292", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_293", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_289", i8* %"$update_value_296")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_298" = getelementptr i8, i8* %0, i32 0
  %"$_amount_299" = bitcast i8* %"$_amount_298" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_299"
  %"$_sender_300" = getelementptr i8, i8* %0, i32 16
  %"$_sender_301" = bitcast i8* %"$_sender_300" to [20 x i8]*
  call void @"$t2_263"(%Uint128 %_amount, [20 x i8]* %"$_sender_301")
  ret void
}

define internal void @"$t3_302"(%Uint128 %_amount, [20 x i8]* %"$_sender_303") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_303"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_304", i32 0, i32 0), i32 2 }, %String* %tname
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_305", i32 0, i32 0), i32 3 }, %String* %s
  %key1 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_306", i32 0, i32 0), i32 4 }, %String* %key1
  %val1 = alloca %TName_Option_String*
  %"$indices_buf_307_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_307_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_307_salloc_load", i64 16)
  %"$indices_buf_307_salloc" = bitcast i8* %"$indices_buf_307_salloc_salloc" to [16 x i8]*
  %"$indices_buf_307" = bitcast [16 x i8]* %"$indices_buf_307_salloc" to i8*
  %"$key1_308" = load %String, %String* %key1
  %"$indices_gep_309" = getelementptr i8, i8* %"$indices_buf_307", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_309" to %String*
  store %String %"$key1_308", %String* %indices_cast
  %"$execptr_load_310" = load i8*, i8** @_execptr
  %"$val1_312" = call i8* @_fetch_field(i8* %"$execptr_load_310", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_311", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_307", i32 1)
  %"$val1_313" = bitcast i8* %"$val1_312" to %TName_Option_String*
  store %TName_Option_String* %"$val1_313", %TName_Option_String** %val1
  %"$val1_315" = load %TName_Option_String*, %TName_Option_String** %val1
  %"$val1_tag_316" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_315", i32 0, i32 0
  %"$val1_tag_317" = load i8, i8* %"$val1_tag_316"
  switch i8 %"$val1_tag_317", label %"$empty_default_318" [
    i8 0, label %"$Some_319"
    i8 1, label %"$None_340"
  ]

"$Some_319":                                      ; preds = %entry
  %"$val1_320" = bitcast %TName_Option_String* %"$val1_315" to %CName_Some_String*
  %"$val_gep_321" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_320", i32 0, i32 1
  %"$val_load_322" = load %String, %String* %"$val_gep_321"
  %val = alloca %String
  store %String %"$val_load_322", %String* %val
  %t = alloca %TName_Bool*
  %"$execptr_load_323" = load i8*, i8** @_execptr
  %"$val_324" = load %String, %String* %val
  %"$s_325" = load %String, %String* %s
  %"$eq_call_326" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_323", %String %"$val_324", %String %"$s_325")
  store %TName_Bool* %"$eq_call_326", %TName_Bool** %t
  %"$t_328" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_329" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_328", i32 0, i32 0
  %"$t_tag_330" = load i8, i8* %"$t_tag_329"
  switch i8 %"$t_tag_330", label %"$empty_default_331" [
    i8 1, label %"$False_332"
    i8 0, label %"$True_338"
  ]

"$False_332":                                     ; preds = %"$Some_319"
  %"$t_333" = bitcast %TName_Bool* %"$t_328" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_334", i32 0, i32 0), i32 23 }, %String* %m
  %"$fail_msg__sender_335" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_335"
  %"$tname_336" = load %String, %String* %tname
  %"$m_337" = load %String, %String* %m
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_335", %String %"$tname_336", %String %"$m_337")
  br label %"$matchsucc_327"

"$True_338":                                      ; preds = %"$Some_319"
  %"$t_339" = bitcast %TName_Bool* %"$t_328" to %CName_True*
  br label %"$matchsucc_327"

"$empty_default_331":                             ; preds = %"$Some_319"
  br label %"$matchsucc_327"

"$matchsucc_327":                                 ; preds = %"$True_338", %"$False_332", %"$empty_default_331"
  br label %"$matchsucc_314"

"$None_340":                                      ; preds = %entry
  %"$val1_341" = bitcast %TName_Option_String* %"$val1_315" to %CName_None_String*
  %"$fail__sender_342" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_342"
  %"$tname_343" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_342", %String %"$tname_343")
  br label %"$matchsucc_314"

"$empty_default_318":                             ; preds = %entry
  br label %"$matchsucc_314"

"$matchsucc_314":                                 ; preds = %"$None_340", %"$matchsucc_327", %"$empty_default_318"
  %key2 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_344", i32 0, i32 0), i32 4 }, %String* %key2
  %val2 = alloca %TName_Option_String*
  %"$indices_buf_345_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_345_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_345_salloc_load", i64 16)
  %"$indices_buf_345_salloc" = bitcast i8* %"$indices_buf_345_salloc_salloc" to [16 x i8]*
  %"$indices_buf_345" = bitcast [16 x i8]* %"$indices_buf_345_salloc" to i8*
  %"$key2_346" = load %String, %String* %key2
  %"$indices_gep_347" = getelementptr i8, i8* %"$indices_buf_345", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_347" to %String*
  store %String %"$key2_346", %String* %indices_cast1
  %"$execptr_load_348" = load i8*, i8** @_execptr
  %"$val2_350" = call i8* @_fetch_field(i8* %"$execptr_load_348", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_349", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_345", i32 1)
  %"$val2_351" = bitcast i8* %"$val2_350" to %TName_Option_String*
  store %TName_Option_String* %"$val2_351", %TName_Option_String** %val2
  %"$val2_353" = load %TName_Option_String*, %TName_Option_String** %val2
  %"$val2_tag_354" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_353", i32 0, i32 0
  %"$val2_tag_355" = load i8, i8* %"$val2_tag_354"
  switch i8 %"$val2_tag_355", label %"$empty_default_356" [
    i8 0, label %"$Some_357"
    i8 1, label %"$None_365"
  ]

"$Some_357":                                      ; preds = %"$matchsucc_314"
  %"$val2_358" = bitcast %TName_Option_String* %"$val2_353" to %CName_Some_String*
  %"$$val2_13_gep_359" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_358", i32 0, i32 1
  %"$$val2_13_load_360" = load %String, %String* %"$$val2_13_gep_359"
  %"$val2_13" = alloca %String
  store %String %"$$val2_13_load_360", %String* %"$val2_13"
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_361", i32 0, i32 0), i32 25 }, %String* %m2
  %"$fail_msg__sender_362" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_362"
  %"$tname_363" = load %String, %String* %tname
  %"$m_364" = load %String, %String* %m2
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_362", %String %"$tname_363", %String %"$m_364")
  br label %"$matchsucc_352"

"$None_365":                                      ; preds = %"$matchsucc_314"
  %"$val2_366" = bitcast %TName_Option_String* %"$val2_353" to %CName_None_String*
  br label %"$matchsucc_352"

"$empty_default_356":                             ; preds = %"$matchsucc_314"
  br label %"$matchsucc_352"

"$matchsucc_352":                                 ; preds = %"$None_365", %"$Some_357", %"$empty_default_356"
  %"$indices_buf_367_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_367_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_367_salloc_load", i64 16)
  %"$indices_buf_367_salloc" = bitcast i8* %"$indices_buf_367_salloc_salloc" to [16 x i8]*
  %"$indices_buf_367" = bitcast [16 x i8]* %"$indices_buf_367_salloc" to i8*
  %"$key1_368" = load %String, %String* %key1
  %"$indices_gep_369" = getelementptr i8, i8* %"$indices_buf_367", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_369" to %String*
  store %String %"$key1_368", %String* %indices_cast3
  %"$execptr_load_370" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_370", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_371", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_367", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_373" = getelementptr i8, i8* %0, i32 0
  %"$_amount_374" = bitcast i8* %"$_amount_373" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_374"
  %"$_sender_375" = getelementptr i8, i8* %0, i32 16
  %"$_sender_376" = bitcast i8* %"$_sender_375" to [20 x i8]*
  call void @"$t3_302"(%Uint128 %_amount, [20 x i8]* %"$_sender_376")
  ret void
}

define internal void @"$t4_377"(%Uint128 %_amount, [20 x i8]* %"$_sender_378") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_378"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_379", i32 0, i32 0), i32 2 }, %String* %tname
  %key1 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_380", i32 0, i32 0), i32 4 }, %String* %key1
  %key1_found = alloca %TName_Bool*
  %"$indices_buf_381_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_381_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_381_salloc_load", i64 16)
  %"$indices_buf_381_salloc" = bitcast i8* %"$indices_buf_381_salloc_salloc" to [16 x i8]*
  %"$indices_buf_381" = bitcast [16 x i8]* %"$indices_buf_381_salloc" to i8*
  %"$key1_382" = load %String, %String* %key1
  %"$indices_gep_383" = getelementptr i8, i8* %"$indices_buf_381", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_383" to %String*
  store %String %"$key1_382", %String* %indices_cast
  %"$execptr_load_384" = load i8*, i8** @_execptr
  %"$key1_found_386" = call i8* @_fetch_field(i8* %"$execptr_load_384", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_385", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_381", i32 0)
  %"$key1_found_387" = bitcast i8* %"$key1_found_386" to %TName_Bool*
  store %TName_Bool* %"$key1_found_387", %TName_Bool** %key1_found
  %"$key1_found_389" = load %TName_Bool*, %TName_Bool** %key1_found
  %"$key1_found_tag_390" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_389", i32 0, i32 0
  %"$key1_found_tag_391" = load i8, i8* %"$key1_found_tag_390"
  switch i8 %"$key1_found_tag_391", label %"$empty_default_392" [
    i8 0, label %"$True_393"
    i8 1, label %"$False_397"
  ]

"$True_393":                                      ; preds = %entry
  %"$key1_found_394" = bitcast %TName_Bool* %"$key1_found_389" to %CName_True*
  %"$fail__sender_395" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_395"
  %"$tname_396" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_395", %String %"$tname_396")
  br label %"$matchsucc_388"

"$False_397":                                     ; preds = %entry
  %"$key1_found_398" = bitcast %TName_Bool* %"$key1_found_389" to %CName_False*
  br label %"$matchsucc_388"

"$empty_default_392":                             ; preds = %entry
  br label %"$matchsucc_388"

"$matchsucc_388":                                 ; preds = %"$False_397", %"$True_393", %"$empty_default_392"
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_399", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_400", i32 0, i32 0), i32 5 }, %String* %key2a
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_401", i32 0, i32 0), i32 3 }, %String* %s
  %"$indices_buf_402_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_402_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_402_salloc_load", i64 32)
  %"$indices_buf_402_salloc" = bitcast i8* %"$indices_buf_402_salloc_salloc" to [32 x i8]*
  %"$indices_buf_402" = bitcast [32 x i8]* %"$indices_buf_402_salloc" to i8*
  %"$key1a_403" = load %String, %String* %key1a
  %"$indices_gep_404" = getelementptr i8, i8* %"$indices_buf_402", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_404" to %String*
  store %String %"$key1a_403", %String* %indices_cast1
  %"$key2a_405" = load %String, %String* %key2a
  %"$indices_gep_406" = getelementptr i8, i8* %"$indices_buf_402", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_406" to %String*
  store %String %"$key2a_405", %String* %indices_cast2
  %"$execptr_load_407" = load i8*, i8** @_execptr
  %"$s_409" = load %String, %String* %s
  %"$update_value_410" = alloca %String
  store %String %"$s_409", %String* %"$update_value_410"
  %"$update_value_411" = bitcast %String* %"$update_value_410" to i8*
  call void @_update_field(i8* %"$execptr_load_407", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_408", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_402", i8* %"$update_value_411")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_413" = getelementptr i8, i8* %0, i32 0
  %"$_amount_414" = bitcast i8* %"$_amount_413" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_414"
  %"$_sender_415" = getelementptr i8, i8* %0, i32 16
  %"$_sender_416" = bitcast i8* %"$_sender_415" to [20 x i8]*
  call void @"$t4_377"(%Uint128 %_amount, [20 x i8]* %"$_sender_416")
  ret void
}

define internal void @"$t5_417"(%Uint128 %_amount, [20 x i8]* %"$_sender_418") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_418"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_419", i32 0, i32 0), i32 2 }, %String* %tname
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_420", i32 0, i32 0), i32 3 }, %String* %s
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_421", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_422", i32 0, i32 0), i32 5 }, %String* %key2a
  %val = alloca %TName_Option_String*
  %"$indices_buf_423_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_423_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_423_salloc_load", i64 32)
  %"$indices_buf_423_salloc" = bitcast i8* %"$indices_buf_423_salloc_salloc" to [32 x i8]*
  %"$indices_buf_423" = bitcast [32 x i8]* %"$indices_buf_423_salloc" to i8*
  %"$key1a_424" = load %String, %String* %key1a
  %"$indices_gep_425" = getelementptr i8, i8* %"$indices_buf_423", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_425" to %String*
  store %String %"$key1a_424", %String* %indices_cast
  %"$key2a_426" = load %String, %String* %key2a
  %"$indices_gep_427" = getelementptr i8, i8* %"$indices_buf_423", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_427" to %String*
  store %String %"$key2a_426", %String* %indices_cast1
  %"$execptr_load_428" = load i8*, i8** @_execptr
  %"$val_430" = call i8* @_fetch_field(i8* %"$execptr_load_428", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_429", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_423", i32 1)
  %"$val_431" = bitcast i8* %"$val_430" to %TName_Option_String*
  store %TName_Option_String* %"$val_431", %TName_Option_String** %val
  %"$val_433" = load %TName_Option_String*, %TName_Option_String** %val
  %"$val_tag_434" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_433", i32 0, i32 0
  %"$val_tag_435" = load i8, i8* %"$val_tag_434"
  switch i8 %"$val_tag_435", label %"$empty_default_436" [
    i8 0, label %"$Some_437"
    i8 1, label %"$None_458"
  ]

"$Some_437":                                      ; preds = %entry
  %"$val_438" = bitcast %TName_Option_String* %"$val_433" to %CName_Some_String*
  %"$v_gep_439" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_438", i32 0, i32 1
  %"$v_load_440" = load %String, %String* %"$v_gep_439"
  %v = alloca %String
  store %String %"$v_load_440", %String* %v
  %t = alloca %TName_Bool*
  %"$execptr_load_441" = load i8*, i8** @_execptr
  %"$v_442" = load %String, %String* %v
  %"$s_443" = load %String, %String* %s
  %"$eq_call_444" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_441", %String %"$v_442", %String %"$s_443")
  store %TName_Bool* %"$eq_call_444", %TName_Bool** %t
  %"$t_446" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_447" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_446", i32 0, i32 0
  %"$t_tag_448" = load i8, i8* %"$t_tag_447"
  switch i8 %"$t_tag_448", label %"$empty_default_449" [
    i8 0, label %"$True_450"
    i8 1, label %"$False_452"
  ]

"$True_450":                                      ; preds = %"$Some_437"
  %"$t_451" = bitcast %TName_Bool* %"$t_446" to %CName_True*
  br label %"$matchsucc_445"

"$False_452":                                     ; preds = %"$Some_437"
  %"$t_453" = bitcast %TName_Bool* %"$t_446" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_454", i32 0, i32 0), i32 23 }, %String* %m
  %"$fail_msg__sender_455" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_455"
  %"$tname_456" = load %String, %String* %tname
  %"$m_457" = load %String, %String* %m
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_455", %String %"$tname_456", %String %"$m_457")
  br label %"$matchsucc_445"

"$empty_default_449":                             ; preds = %"$Some_437"
  br label %"$matchsucc_445"

"$matchsucc_445":                                 ; preds = %"$False_452", %"$True_450", %"$empty_default_449"
  br label %"$matchsucc_432"

"$None_458":                                      ; preds = %entry
  %"$val_459" = bitcast %TName_Option_String* %"$val_433" to %CName_None_String*
  %"$fail__sender_460" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_460"
  %"$tname_461" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_460", %String %"$tname_461")
  br label %"$matchsucc_432"

"$empty_default_436":                             ; preds = %entry
  br label %"$matchsucc_432"

"$matchsucc_432":                                 ; preds = %"$None_458", %"$matchsucc_445", %"$empty_default_436"
  %l_m2 = alloca %Map_String_String*
  %e = alloca %Map_String_String*
  %"$execptr_load_462" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_463" = call i8* @_new_empty_map(i8* %"$execptr_load_462")
  %"$Emp_464" = bitcast i8* %"$_new_empty_map_call_463" to %Map_String_String*
  store %Map_String_String* %"$Emp_464", %Map_String_String** %e
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_465", i32 0, i32 0), i32 5 }, %String* %key2b
  %s1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_466", i32 0, i32 0), i32 3 }, %String* %s1
  %m1 = alloca %Map_String_String*
  %"$execptr_load_467" = load i8*, i8** @_execptr
  %"$e_468" = load %Map_String_String*, %Map_String_String** %e
  %"$$e_468_469" = bitcast %Map_String_String* %"$e_468" to i8*
  %"$put_key2b_470" = alloca %String
  %"$key2b_471" = load %String, %String* %key2b
  store %String %"$key2b_471", %String* %"$put_key2b_470"
  %"$$put_key2b_470_472" = bitcast %String* %"$put_key2b_470" to i8*
  %"$put_s1_473" = alloca %String
  %"$s1_474" = load %String, %String* %s1
  store %String %"$s1_474", %String* %"$put_s1_473"
  %"$$put_s1_473_475" = bitcast %String* %"$put_s1_473" to i8*
  %"$put_call_476" = call i8* @_put(i8* %"$execptr_load_467", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e_468_469", i8* %"$$put_key2b_470_472", i8* %"$$put_s1_473_475")
  %"$_put_477" = bitcast i8* %"$put_call_476" to %Map_String_String*
  store %Map_String_String* %"$_put_477", %Map_String_String** %m1
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_478", i32 0, i32 0), i32 5 }, %String* %key2c
  %s2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_479", i32 0, i32 0), i32 3 }, %String* %s2
  %"$execptr_load_480" = load i8*, i8** @_execptr
  %"$m1_481" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_481_482" = bitcast %Map_String_String* %"$m1_481" to i8*
  %"$put_key2c_483" = alloca %String
  %"$key2c_484" = load %String, %String* %key2c
  store %String %"$key2c_484", %String* %"$put_key2c_483"
  %"$$put_key2c_483_485" = bitcast %String* %"$put_key2c_483" to i8*
  %"$put_s2_486" = alloca %String
  %"$s2_487" = load %String, %String* %s2
  store %String %"$s2_487", %String* %"$put_s2_486"
  %"$$put_s2_486_488" = bitcast %String* %"$put_s2_486" to i8*
  %"$put_call_489" = call i8* @_put(i8* %"$execptr_load_480", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_481_482", i8* %"$$put_key2c_483_485", i8* %"$$put_s2_486_488")
  %"$_put_490" = bitcast i8* %"$put_call_489" to %Map_String_String*
  store %Map_String_String* %"$_put_490", %Map_String_String** %l_m2
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_491", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$indices_buf_492_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_492_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_492_salloc_load", i64 16)
  %"$indices_buf_492_salloc" = bitcast i8* %"$indices_buf_492_salloc_salloc" to [16 x i8]*
  %"$indices_buf_492" = bitcast [16 x i8]* %"$indices_buf_492_salloc" to i8*
  %"$key1b_493" = load %String, %String* %key1b
  %"$indices_gep_494" = getelementptr i8, i8* %"$indices_buf_492", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_494" to %String*
  store %String %"$key1b_493", %String* %indices_cast2
  %"$execptr_load_495" = load i8*, i8** @_execptr
  %"$l_m2_497" = load %Map_String_String*, %Map_String_String** %l_m2
  %"$update_value_498" = bitcast %Map_String_String* %"$l_m2_497" to i8*
  call void @_update_field(i8* %"$execptr_load_495", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_496", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_492", i8* %"$update_value_498")
  ret void
}

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_500" = getelementptr i8, i8* %0, i32 0
  %"$_amount_501" = bitcast i8* %"$_amount_500" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_501"
  %"$_sender_502" = getelementptr i8, i8* %0, i32 16
  %"$_sender_503" = bitcast i8* %"$_sender_502" to [20 x i8]*
  call void @"$t5_417"(%Uint128 %_amount, [20 x i8]* %"$_sender_503")
  ret void
}

define internal void @"$t6_504"(%Uint128 %_amount, [20 x i8]* %"$_sender_505") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_505"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_506", i32 0, i32 0), i32 2 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_507", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_508", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_509_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_509_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_509_salloc_load", i64 32)
  %"$indices_buf_509_salloc" = bitcast i8* %"$indices_buf_509_salloc_salloc" to [32 x i8]*
  %"$indices_buf_509" = bitcast [32 x i8]* %"$indices_buf_509_salloc" to i8*
  %"$key1a_510" = load %String, %String* %key1a
  %"$indices_gep_511" = getelementptr i8, i8* %"$indices_buf_509", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_511" to %String*
  store %String %"$key1a_510", %String* %indices_cast
  %"$key2a_512" = load %String, %String* %key2a
  %"$indices_gep_513" = getelementptr i8, i8* %"$indices_buf_509", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_513" to %String*
  store %String %"$key2a_512", %String* %indices_cast1
  %"$execptr_load_514" = load i8*, i8** @_execptr
  %"$c1_516" = call i8* @_fetch_field(i8* %"$execptr_load_514", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_515", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_509", i32 1)
  %"$c1_517" = bitcast i8* %"$c1_516" to %TName_Option_String*
  store %TName_Option_String* %"$c1_517", %TName_Option_String** %c1
  %"$c1_519" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_520" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_519", i32 0, i32 0
  %"$c1_tag_521" = load i8, i8* %"$c1_tag_520"
  switch i8 %"$c1_tag_521", label %"$empty_default_522" [
    i8 0, label %"$Some_523"
    i8 1, label %"$None_545"
  ]

"$Some_523":                                      ; preds = %entry
  %"$c1_524" = bitcast %TName_Option_String* %"$c1_519" to %CName_Some_String*
  %"$c_gep_525" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_524", i32 0, i32 1
  %"$c_load_526" = load %String, %String* %"$c_gep_525"
  %c = alloca %String
  store %String %"$c_load_526", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_527", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_528" = load i8*, i8** @_execptr
  %"$c_529" = load %String, %String* %c
  %"$v_530" = load %String, %String* %v
  %"$eq_call_531" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_528", %String %"$c_529", %String %"$v_530")
  store %TName_Bool* %"$eq_call_531", %TName_Bool** %eq
  %"$eq_533" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_534" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_533", i32 0, i32 0
  %"$eq_tag_535" = load i8, i8* %"$eq_tag_534"
  switch i8 %"$eq_tag_535", label %"$empty_default_536" [
    i8 0, label %"$True_537"
    i8 1, label %"$False_539"
  ]

"$True_537":                                      ; preds = %"$Some_523"
  %"$eq_538" = bitcast %TName_Bool* %"$eq_533" to %CName_True*
  br label %"$matchsucc_532"

"$False_539":                                     ; preds = %"$Some_523"
  %"$eq_540" = bitcast %TName_Bool* %"$eq_533" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_541", i32 0, i32 0), i32 31 }, %String* %m
  %"$fail_msg__sender_542" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_542"
  %"$tname_543" = load %String, %String* %tname
  %"$m_544" = load %String, %String* %m
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_542", %String %"$tname_543", %String %"$m_544")
  br label %"$matchsucc_532"

"$empty_default_536":                             ; preds = %"$Some_523"
  br label %"$matchsucc_532"

"$matchsucc_532":                                 ; preds = %"$False_539", %"$True_537", %"$empty_default_536"
  br label %"$matchsucc_518"

"$None_545":                                      ; preds = %entry
  %"$c1_546" = bitcast %TName_Option_String* %"$c1_519" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_547", i32 0, i32 0), i32 21 }, %String* %m2
  %"$fail_msg__sender_548" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_548"
  %"$tname_549" = load %String, %String* %tname
  %"$m_550" = load %String, %String* %m2
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_548", %String %"$tname_549", %String %"$m_550")
  br label %"$matchsucc_518"

"$empty_default_522":                             ; preds = %entry
  br label %"$matchsucc_518"

"$matchsucc_518":                                 ; preds = %"$None_545", %"$matchsucc_532", %"$empty_default_522"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_551", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_552", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$c1_0" = alloca %TName_Option_String*
  %"$indices_buf_553_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_553_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_553_salloc_load", i64 32)
  %"$indices_buf_553_salloc" = bitcast i8* %"$indices_buf_553_salloc_salloc" to [32 x i8]*
  %"$indices_buf_553" = bitcast [32 x i8]* %"$indices_buf_553_salloc" to i8*
  %"$key1b_554" = load %String, %String* %key1b
  %"$indices_gep_555" = getelementptr i8, i8* %"$indices_buf_553", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_555" to %String*
  store %String %"$key1b_554", %String* %indices_cast3
  %"$key2b_556" = load %String, %String* %key2b
  %"$indices_gep_557" = getelementptr i8, i8* %"$indices_buf_553", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_557" to %String*
  store %String %"$key2b_556", %String* %indices_cast4
  %"$execptr_load_558" = load i8*, i8** @_execptr
  %"$$c1_0_560" = call i8* @_fetch_field(i8* %"$execptr_load_558", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_559", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_553", i32 1)
  %"$$c1_0_561" = bitcast i8* %"$$c1_0_560" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_0_561", %TName_Option_String** %"$c1_0"
  %"$$c1_0_563" = load %TName_Option_String*, %TName_Option_String** %"$c1_0"
  %"$$c1_0_tag_564" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_0_563", i32 0, i32 0
  %"$$c1_0_tag_565" = load i8, i8* %"$$c1_0_tag_564"
  switch i8 %"$$c1_0_tag_565", label %"$empty_default_566" [
    i8 0, label %"$Some_567"
    i8 1, label %"$None_589"
  ]

"$Some_567":                                      ; preds = %"$matchsucc_518"
  %"$$c1_0_568" = bitcast %TName_Option_String* %"$$c1_0_563" to %CName_Some_String*
  %"$c_gep_569" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_0_568", i32 0, i32 1
  %"$c_load_570" = load %String, %String* %"$c_gep_569"
  %c5 = alloca %String
  store %String %"$c_load_570", %String* %c5
  %v6 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_571", i32 0, i32 0), i32 3 }, %String* %v6
  %eq7 = alloca %TName_Bool*
  %"$execptr_load_572" = load i8*, i8** @_execptr
  %"$c_573" = load %String, %String* %c5
  %"$v_574" = load %String, %String* %v6
  %"$eq_call_575" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_572", %String %"$c_573", %String %"$v_574")
  store %TName_Bool* %"$eq_call_575", %TName_Bool** %eq7
  %"$eq_577" = load %TName_Bool*, %TName_Bool** %eq7
  %"$eq_tag_578" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_577", i32 0, i32 0
  %"$eq_tag_579" = load i8, i8* %"$eq_tag_578"
  switch i8 %"$eq_tag_579", label %"$empty_default_580" [
    i8 0, label %"$True_581"
    i8 1, label %"$False_583"
  ]

"$True_581":                                      ; preds = %"$Some_567"
  %"$eq_582" = bitcast %TName_Bool* %"$eq_577" to %CName_True*
  br label %"$matchsucc_576"

"$False_583":                                     ; preds = %"$Some_567"
  %"$eq_584" = bitcast %TName_Bool* %"$eq_577" to %CName_False*
  %m8 = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_585", i32 0, i32 0), i32 31 }, %String* %m8
  %"$fail_msg__sender_586" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_586"
  %"$tname_587" = load %String, %String* %tname
  %"$m_588" = load %String, %String* %m8
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_586", %String %"$tname_587", %String %"$m_588")
  br label %"$matchsucc_576"

"$empty_default_580":                             ; preds = %"$Some_567"
  br label %"$matchsucc_576"

"$matchsucc_576":                                 ; preds = %"$False_583", %"$True_581", %"$empty_default_580"
  br label %"$matchsucc_562"

"$None_589":                                      ; preds = %"$matchsucc_518"
  %"$$c1_0_590" = bitcast %TName_Option_String* %"$$c1_0_563" to %CName_None_String*
  %m9 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_591", i32 0, i32 0), i32 21 }, %String* %m9
  %"$fail_msg__sender_592" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_592"
  %"$tname_593" = load %String, %String* %tname
  %"$m_594" = load %String, %String* %m9
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_592", %String %"$tname_593", %String %"$m_594")
  br label %"$matchsucc_562"

"$empty_default_566":                             ; preds = %"$matchsucc_518"
  br label %"$matchsucc_562"

"$matchsucc_562":                                 ; preds = %"$None_589", %"$matchsucc_576", %"$empty_default_566"
  %"$key1b_1" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_595", i32 0, i32 0), i32 5 }, %String* %"$key1b_1"
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_596", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$c1_2" = alloca %TName_Option_String*
  %"$indices_buf_597_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_597_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_597_salloc_load", i64 32)
  %"$indices_buf_597_salloc" = bitcast i8* %"$indices_buf_597_salloc_salloc" to [32 x i8]*
  %"$indices_buf_597" = bitcast [32 x i8]* %"$indices_buf_597_salloc" to i8*
  %"$$key1b_1_598" = load %String, %String* %"$key1b_1"
  %"$indices_gep_599" = getelementptr i8, i8* %"$indices_buf_597", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_599" to %String*
  store %String %"$$key1b_1_598", %String* %indices_cast10
  %"$key2c_600" = load %String, %String* %key2c
  %"$indices_gep_601" = getelementptr i8, i8* %"$indices_buf_597", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_601" to %String*
  store %String %"$key2c_600", %String* %indices_cast11
  %"$execptr_load_602" = load i8*, i8** @_execptr
  %"$$c1_2_604" = call i8* @_fetch_field(i8* %"$execptr_load_602", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_603", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_597", i32 1)
  %"$$c1_2_605" = bitcast i8* %"$$c1_2_604" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_605", %TName_Option_String** %"$c1_2"
  %"$$c1_2_607" = load %TName_Option_String*, %TName_Option_String** %"$c1_2"
  %"$$c1_2_tag_608" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_607", i32 0, i32 0
  %"$$c1_2_tag_609" = load i8, i8* %"$$c1_2_tag_608"
  switch i8 %"$$c1_2_tag_609", label %"$empty_default_610" [
    i8 0, label %"$Some_611"
    i8 1, label %"$None_633"
  ]

"$Some_611":                                      ; preds = %"$matchsucc_562"
  %"$$c1_2_612" = bitcast %TName_Option_String* %"$$c1_2_607" to %CName_Some_String*
  %"$c_gep_613" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_612", i32 0, i32 1
  %"$c_load_614" = load %String, %String* %"$c_gep_613"
  %c12 = alloca %String
  store %String %"$c_load_614", %String* %c12
  %v13 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_615", i32 0, i32 0), i32 3 }, %String* %v13
  %eq14 = alloca %TName_Bool*
  %"$execptr_load_616" = load i8*, i8** @_execptr
  %"$c_617" = load %String, %String* %c12
  %"$v_618" = load %String, %String* %v13
  %"$eq_call_619" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_616", %String %"$c_617", %String %"$v_618")
  store %TName_Bool* %"$eq_call_619", %TName_Bool** %eq14
  %"$eq_621" = load %TName_Bool*, %TName_Bool** %eq14
  %"$eq_tag_622" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_621", i32 0, i32 0
  %"$eq_tag_623" = load i8, i8* %"$eq_tag_622"
  switch i8 %"$eq_tag_623", label %"$empty_default_624" [
    i8 0, label %"$True_625"
    i8 1, label %"$False_627"
  ]

"$True_625":                                      ; preds = %"$Some_611"
  %"$eq_626" = bitcast %TName_Bool* %"$eq_621" to %CName_True*
  br label %"$matchsucc_620"

"$False_627":                                     ; preds = %"$Some_611"
  %"$eq_628" = bitcast %TName_Bool* %"$eq_621" to %CName_False*
  %m15 = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_629", i32 0, i32 0), i32 31 }, %String* %m15
  %"$fail_msg__sender_630" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_630"
  %"$tname_631" = load %String, %String* %tname
  %"$m_632" = load %String, %String* %m15
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_630", %String %"$tname_631", %String %"$m_632")
  br label %"$matchsucc_620"

"$empty_default_624":                             ; preds = %"$Some_611"
  br label %"$matchsucc_620"

"$matchsucc_620":                                 ; preds = %"$False_627", %"$True_625", %"$empty_default_624"
  br label %"$matchsucc_606"

"$None_633":                                      ; preds = %"$matchsucc_562"
  %"$$c1_2_634" = bitcast %TName_Option_String* %"$$c1_2_607" to %CName_None_String*
  %m16 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_635", i32 0, i32 0), i32 21 }, %String* %m16
  %"$fail_msg__sender_636" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_636"
  %"$tname_637" = load %String, %String* %tname
  %"$m_638" = load %String, %String* %m16
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_636", %String %"$tname_637", %String %"$m_638")
  br label %"$matchsucc_606"

"$empty_default_610":                             ; preds = %"$matchsucc_562"
  br label %"$matchsucc_606"

"$matchsucc_606":                                 ; preds = %"$None_633", %"$matchsucc_620", %"$empty_default_610"
  %"$indices_buf_639_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_639_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_639_salloc_load", i64 16)
  %"$indices_buf_639_salloc" = bitcast i8* %"$indices_buf_639_salloc_salloc" to [16 x i8]*
  %"$indices_buf_639" = bitcast [16 x i8]* %"$indices_buf_639_salloc" to i8*
  %"$$key1b_1_640" = load %String, %String* %"$key1b_1"
  %"$indices_gep_641" = getelementptr i8, i8* %"$indices_buf_639", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_641" to %String*
  store %String %"$$key1b_1_640", %String* %indices_cast17
  %"$execptr_load_642" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_642", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_643", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_639", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_645" = getelementptr i8, i8* %0, i32 0
  %"$_amount_646" = bitcast i8* %"$_amount_645" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_646"
  %"$_sender_647" = getelementptr i8, i8* %0, i32 16
  %"$_sender_648" = bitcast i8* %"$_sender_647" to [20 x i8]*
  call void @"$t6_504"(%Uint128 %_amount, [20 x i8]* %"$_sender_648")
  ret void
}

define internal void @"$t7_649"(%Uint128 %_amount, [20 x i8]* %"$_sender_650") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_650"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_651", i32 0, i32 0), i32 2 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_652", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_653", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_654_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_654_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_654_salloc_load", i64 32)
  %"$indices_buf_654_salloc" = bitcast i8* %"$indices_buf_654_salloc_salloc" to [32 x i8]*
  %"$indices_buf_654" = bitcast [32 x i8]* %"$indices_buf_654_salloc" to i8*
  %"$key1a_655" = load %String, %String* %key1a
  %"$indices_gep_656" = getelementptr i8, i8* %"$indices_buf_654", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_656" to %String*
  store %String %"$key1a_655", %String* %indices_cast
  %"$key2a_657" = load %String, %String* %key2a
  %"$indices_gep_658" = getelementptr i8, i8* %"$indices_buf_654", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_658" to %String*
  store %String %"$key2a_657", %String* %indices_cast1
  %"$execptr_load_659" = load i8*, i8** @_execptr
  %"$c1_661" = call i8* @_fetch_field(i8* %"$execptr_load_659", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_660", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_654", i32 1)
  %"$c1_662" = bitcast i8* %"$c1_661" to %TName_Option_String*
  store %TName_Option_String* %"$c1_662", %TName_Option_String** %c1
  %"$c1_664" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_665" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_664", i32 0, i32 0
  %"$c1_tag_666" = load i8, i8* %"$c1_tag_665"
  switch i8 %"$c1_tag_666", label %"$empty_default_667" [
    i8 0, label %"$Some_668"
    i8 1, label %"$None_690"
  ]

"$Some_668":                                      ; preds = %entry
  %"$c1_669" = bitcast %TName_Option_String* %"$c1_664" to %CName_Some_String*
  %"$c_gep_670" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_669", i32 0, i32 1
  %"$c_load_671" = load %String, %String* %"$c_gep_670"
  %c = alloca %String
  store %String %"$c_load_671", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_672", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_673" = load i8*, i8** @_execptr
  %"$c_674" = load %String, %String* %c
  %"$v_675" = load %String, %String* %v
  %"$eq_call_676" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_673", %String %"$c_674", %String %"$v_675")
  store %TName_Bool* %"$eq_call_676", %TName_Bool** %eq
  %"$eq_678" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_679" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_678", i32 0, i32 0
  %"$eq_tag_680" = load i8, i8* %"$eq_tag_679"
  switch i8 %"$eq_tag_680", label %"$empty_default_681" [
    i8 0, label %"$True_682"
    i8 1, label %"$False_684"
  ]

"$True_682":                                      ; preds = %"$Some_668"
  %"$eq_683" = bitcast %TName_Bool* %"$eq_678" to %CName_True*
  br label %"$matchsucc_677"

"$False_684":                                     ; preds = %"$Some_668"
  %"$eq_685" = bitcast %TName_Bool* %"$eq_678" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_686", i32 0, i32 0), i32 31 }, %String* %m
  %"$fail_msg__sender_687" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_687"
  %"$tname_688" = load %String, %String* %tname
  %"$m_689" = load %String, %String* %m
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_687", %String %"$tname_688", %String %"$m_689")
  br label %"$matchsucc_677"

"$empty_default_681":                             ; preds = %"$Some_668"
  br label %"$matchsucc_677"

"$matchsucc_677":                                 ; preds = %"$False_684", %"$True_682", %"$empty_default_681"
  br label %"$matchsucc_663"

"$None_690":                                      ; preds = %entry
  %"$c1_691" = bitcast %TName_Option_String* %"$c1_664" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_692", i32 0, i32 0), i32 21 }, %String* %m2
  %"$fail_msg__sender_693" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_693"
  %"$tname_694" = load %String, %String* %tname
  %"$m_695" = load %String, %String* %m2
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_693", %String %"$tname_694", %String %"$m_695")
  br label %"$matchsucc_663"

"$empty_default_667":                             ; preds = %entry
  br label %"$matchsucc_663"

"$matchsucc_663":                                 ; preds = %"$None_690", %"$matchsucc_677", %"$empty_default_667"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_696", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$c1_3" = alloca %"TName_Option_Map_(String)_(String)"*
  %"$indices_buf_697_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_697_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_697_salloc_load", i64 16)
  %"$indices_buf_697_salloc" = bitcast i8* %"$indices_buf_697_salloc_salloc" to [16 x i8]*
  %"$indices_buf_697" = bitcast [16 x i8]* %"$indices_buf_697_salloc" to i8*
  %"$key1b_698" = load %String, %String* %key1b
  %"$indices_gep_699" = getelementptr i8, i8* %"$indices_buf_697", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_699" to %String*
  store %String %"$key1b_698", %String* %indices_cast3
  %"$execptr_load_700" = load i8*, i8** @_execptr
  %"$$c1_3_702" = call i8* @_fetch_field(i8* %"$execptr_load_700", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_701", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_697", i32 1)
  %"$$c1_3_703" = bitcast i8* %"$$c1_3_702" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_3_703", %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$c1_3_705" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$c1_3_tag_706" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_3_705", i32 0, i32 0
  %"$$c1_3_tag_707" = load i8, i8* %"$$c1_3_tag_706"
  switch i8 %"$$c1_3_tag_707", label %"$empty_default_708" [
    i8 0, label %"$Some_709"
    i8 1, label %"$None_717"
  ]

"$Some_709":                                      ; preds = %"$matchsucc_663"
  %"$$c1_3_710" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_705" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_3_16_gep_711" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_3_710", i32 0, i32 1
  %"$$$c1_3_16_load_712" = load %Map_String_String*, %Map_String_String** %"$$$c1_3_16_gep_711"
  %"$$c1_3_16" = alloca %Map_String_String*
  store %Map_String_String* %"$$$c1_3_16_load_712", %Map_String_String** %"$$c1_3_16"
  %m4 = alloca %String
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_713", i32 0, i32 0), i32 36 }, %String* %m4
  %"$fail_msg__sender_714" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_714"
  %"$tname_715" = load %String, %String* %tname
  %"$m_716" = load %String, %String* %m4
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_714", %String %"$tname_715", %String %"$m_716")
  br label %"$matchsucc_704"

"$None_717":                                      ; preds = %"$matchsucc_663"
  %"$$c1_3_718" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_705" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_704"

"$empty_default_708":                             ; preds = %"$matchsucc_663"
  br label %"$matchsucc_704"

"$matchsucc_704":                                 ; preds = %"$None_717", %"$Some_709", %"$empty_default_708"
  %"$key1b_4" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_719", i32 0, i32 0), i32 5 }, %String* %"$key1b_4"
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_720", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$c1_5" = alloca %TName_Option_String*
  %"$indices_buf_721_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_721_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_721_salloc_load", i64 32)
  %"$indices_buf_721_salloc" = bitcast i8* %"$indices_buf_721_salloc_salloc" to [32 x i8]*
  %"$indices_buf_721" = bitcast [32 x i8]* %"$indices_buf_721_salloc" to i8*
  %"$$key1b_4_722" = load %String, %String* %"$key1b_4"
  %"$indices_gep_723" = getelementptr i8, i8* %"$indices_buf_721", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_723" to %String*
  store %String %"$$key1b_4_722", %String* %indices_cast5
  %"$key2b_724" = load %String, %String* %key2b
  %"$indices_gep_725" = getelementptr i8, i8* %"$indices_buf_721", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_725" to %String*
  store %String %"$key2b_724", %String* %indices_cast6
  %"$execptr_load_726" = load i8*, i8** @_execptr
  %"$$c1_5_728" = call i8* @_fetch_field(i8* %"$execptr_load_726", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_727", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_721", i32 1)
  %"$$c1_5_729" = bitcast i8* %"$$c1_5_728" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_5_729", %TName_Option_String** %"$c1_5"
  %"$$c1_5_731" = load %TName_Option_String*, %TName_Option_String** %"$c1_5"
  %"$$c1_5_tag_732" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_5_731", i32 0, i32 0
  %"$$c1_5_tag_733" = load i8, i8* %"$$c1_5_tag_732"
  switch i8 %"$$c1_5_tag_733", label %"$empty_default_734" [
    i8 0, label %"$Some_735"
    i8 1, label %"$None_743"
  ]

"$Some_735":                                      ; preds = %"$matchsucc_704"
  %"$$c1_5_736" = bitcast %TName_Option_String* %"$$c1_5_731" to %CName_Some_String*
  %"$$$c1_5_15_gep_737" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_5_736", i32 0, i32 1
  %"$$$c1_5_15_load_738" = load %String, %String* %"$$$c1_5_15_gep_737"
  %"$$c1_5_15" = alloca %String
  store %String %"$$$c1_5_15_load_738", %String* %"$$c1_5_15"
  %m7 = alloca %String
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_739", i32 0, i32 0), i32 42 }, %String* %m7
  %"$fail_msg__sender_740" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_740"
  %"$tname_741" = load %String, %String* %tname
  %"$m_742" = load %String, %String* %m7
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_740", %String %"$tname_741", %String %"$m_742")
  br label %"$matchsucc_730"

"$None_743":                                      ; preds = %"$matchsucc_704"
  %"$$c1_5_744" = bitcast %TName_Option_String* %"$$c1_5_731" to %CName_None_String*
  br label %"$matchsucc_730"

"$empty_default_734":                             ; preds = %"$matchsucc_704"
  br label %"$matchsucc_730"

"$matchsucc_730":                                 ; preds = %"$None_743", %"$Some_735", %"$empty_default_734"
  %"$key1b_6" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_745", i32 0, i32 0), i32 5 }, %String* %"$key1b_6"
  %key2d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_746", i32 0, i32 0), i32 5 }, %String* %key2d
  %"$c1_7" = alloca %TName_Option_String*
  %"$indices_buf_747_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_747_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_747_salloc_load", i64 32)
  %"$indices_buf_747_salloc" = bitcast i8* %"$indices_buf_747_salloc_salloc" to [32 x i8]*
  %"$indices_buf_747" = bitcast [32 x i8]* %"$indices_buf_747_salloc" to i8*
  %"$$key1b_6_748" = load %String, %String* %"$key1b_6"
  %"$indices_gep_749" = getelementptr i8, i8* %"$indices_buf_747", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_749" to %String*
  store %String %"$$key1b_6_748", %String* %indices_cast8
  %"$key2d_750" = load %String, %String* %key2d
  %"$indices_gep_751" = getelementptr i8, i8* %"$indices_buf_747", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_751" to %String*
  store %String %"$key2d_750", %String* %indices_cast9
  %"$execptr_load_752" = load i8*, i8** @_execptr
  %"$$c1_7_754" = call i8* @_fetch_field(i8* %"$execptr_load_752", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_753", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_747", i32 1)
  %"$$c1_7_755" = bitcast i8* %"$$c1_7_754" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_755", %TName_Option_String** %"$c1_7"
  %"$$c1_7_757" = load %TName_Option_String*, %TName_Option_String** %"$c1_7"
  %"$$c1_7_tag_758" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_757", i32 0, i32 0
  %"$$c1_7_tag_759" = load i8, i8* %"$$c1_7_tag_758"
  switch i8 %"$$c1_7_tag_759", label %"$empty_default_760" [
    i8 0, label %"$Some_761"
    i8 1, label %"$None_769"
  ]

"$Some_761":                                      ; preds = %"$matchsucc_730"
  %"$$c1_7_762" = bitcast %TName_Option_String* %"$$c1_7_757" to %CName_Some_String*
  %"$$$c1_7_14_gep_763" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_762", i32 0, i32 1
  %"$$$c1_7_14_load_764" = load %String, %String* %"$$$c1_7_14_gep_763"
  %"$$c1_7_14" = alloca %String
  store %String %"$$$c1_7_14_load_764", %String* %"$$c1_7_14"
  %m10 = alloca %String
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_765", i32 0, i32 0), i32 42 }, %String* %m10
  %"$fail_msg__sender_766" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_766"
  %"$tname_767" = load %String, %String* %tname
  %"$m_768" = load %String, %String* %m10
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_766", %String %"$tname_767", %String %"$m_768")
  br label %"$matchsucc_756"

"$None_769":                                      ; preds = %"$matchsucc_730"
  %"$$c1_7_770" = bitcast %TName_Option_String* %"$$c1_7_757" to %CName_None_String*
  br label %"$matchsucc_756"

"$empty_default_760":                             ; preds = %"$matchsucc_730"
  br label %"$matchsucc_756"

"$matchsucc_756":                                 ; preds = %"$None_769", %"$Some_761", %"$empty_default_760"
  %"$key1b_8" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_771", i32 0, i32 0), i32 5 }, %String* %"$key1b_8"
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_772", i32 0, i32 0), i32 5 }, %String* %key2c
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_773", i32 0, i32 0), i32 3 }, %String* %s
  %"$indices_buf_774_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_774_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_774_salloc_load", i64 32)
  %"$indices_buf_774_salloc" = bitcast i8* %"$indices_buf_774_salloc_salloc" to [32 x i8]*
  %"$indices_buf_774" = bitcast [32 x i8]* %"$indices_buf_774_salloc" to i8*
  %"$$key1b_8_775" = load %String, %String* %"$key1b_8"
  %"$indices_gep_776" = getelementptr i8, i8* %"$indices_buf_774", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_776" to %String*
  store %String %"$$key1b_8_775", %String* %indices_cast11
  %"$key2c_777" = load %String, %String* %key2c
  %"$indices_gep_778" = getelementptr i8, i8* %"$indices_buf_774", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_778" to %String*
  store %String %"$key2c_777", %String* %indices_cast12
  %"$execptr_load_779" = load i8*, i8** @_execptr
  %"$s_781" = load %String, %String* %s
  %"$update_value_782" = alloca %String
  store %String %"$s_781", %String* %"$update_value_782"
  %"$update_value_783" = bitcast %String* %"$update_value_782" to i8*
  call void @_update_field(i8* %"$execptr_load_779", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_780", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_774", i8* %"$update_value_783")
  ret void
}

define void @t7(i8* %0) {
entry:
  %"$_amount_785" = getelementptr i8, i8* %0, i32 0
  %"$_amount_786" = bitcast i8* %"$_amount_785" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_786"
  %"$_sender_787" = getelementptr i8, i8* %0, i32 16
  %"$_sender_788" = bitcast i8* %"$_sender_787" to [20 x i8]*
  call void @"$t7_649"(%Uint128 %_amount, [20 x i8]* %"$_sender_788")
  ret void
}

define internal void @"$t8_789"(%Uint128 %_amount, [20 x i8]* %"$_sender_790") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_790"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_791", i32 0, i32 0), i32 2 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_792", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_793", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_794_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_794_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_794_salloc_load", i64 32)
  %"$indices_buf_794_salloc" = bitcast i8* %"$indices_buf_794_salloc_salloc" to [32 x i8]*
  %"$indices_buf_794" = bitcast [32 x i8]* %"$indices_buf_794_salloc" to i8*
  %"$key1a_795" = load %String, %String* %key1a
  %"$indices_gep_796" = getelementptr i8, i8* %"$indices_buf_794", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_796" to %String*
  store %String %"$key1a_795", %String* %indices_cast
  %"$key2a_797" = load %String, %String* %key2a
  %"$indices_gep_798" = getelementptr i8, i8* %"$indices_buf_794", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_798" to %String*
  store %String %"$key2a_797", %String* %indices_cast1
  %"$execptr_load_799" = load i8*, i8** @_execptr
  %"$c1_801" = call i8* @_fetch_field(i8* %"$execptr_load_799", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_800", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_794", i32 1)
  %"$c1_802" = bitcast i8* %"$c1_801" to %TName_Option_String*
  store %TName_Option_String* %"$c1_802", %TName_Option_String** %c1
  %"$c1_804" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_805" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_804", i32 0, i32 0
  %"$c1_tag_806" = load i8, i8* %"$c1_tag_805"
  switch i8 %"$c1_tag_806", label %"$empty_default_807" [
    i8 0, label %"$Some_808"
    i8 1, label %"$None_830"
  ]

"$Some_808":                                      ; preds = %entry
  %"$c1_809" = bitcast %TName_Option_String* %"$c1_804" to %CName_Some_String*
  %"$c_gep_810" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_809", i32 0, i32 1
  %"$c_load_811" = load %String, %String* %"$c_gep_810"
  %c = alloca %String
  store %String %"$c_load_811", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_812", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_813" = load i8*, i8** @_execptr
  %"$c_814" = load %String, %String* %c
  %"$v_815" = load %String, %String* %v
  %"$eq_call_816" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_813", %String %"$c_814", %String %"$v_815")
  store %TName_Bool* %"$eq_call_816", %TName_Bool** %eq
  %"$eq_818" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_819" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_818", i32 0, i32 0
  %"$eq_tag_820" = load i8, i8* %"$eq_tag_819"
  switch i8 %"$eq_tag_820", label %"$empty_default_821" [
    i8 0, label %"$True_822"
    i8 1, label %"$False_824"
  ]

"$True_822":                                      ; preds = %"$Some_808"
  %"$eq_823" = bitcast %TName_Bool* %"$eq_818" to %CName_True*
  br label %"$matchsucc_817"

"$False_824":                                     ; preds = %"$Some_808"
  %"$eq_825" = bitcast %TName_Bool* %"$eq_818" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_826", i32 0, i32 0), i32 31 }, %String* %m
  %"$fail_msg__sender_827" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_827"
  %"$tname_828" = load %String, %String* %tname
  %"$m_829" = load %String, %String* %m
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_827", %String %"$tname_828", %String %"$m_829")
  br label %"$matchsucc_817"

"$empty_default_821":                             ; preds = %"$Some_808"
  br label %"$matchsucc_817"

"$matchsucc_817":                                 ; preds = %"$False_824", %"$True_822", %"$empty_default_821"
  br label %"$matchsucc_803"

"$None_830":                                      ; preds = %entry
  %"$c1_831" = bitcast %TName_Option_String* %"$c1_804" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_832", i32 0, i32 0), i32 21 }, %String* %m2
  %"$fail_msg__sender_833" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_833"
  %"$tname_834" = load %String, %String* %tname
  %"$m_835" = load %String, %String* %m2
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_833", %String %"$tname_834", %String %"$m_835")
  br label %"$matchsucc_803"

"$empty_default_807":                             ; preds = %entry
  br label %"$matchsucc_803"

"$matchsucc_803":                                 ; preds = %"$None_830", %"$matchsucc_817", %"$empty_default_807"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_836", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_837", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$c1_9" = alloca %TName_Option_String*
  %"$indices_buf_838_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_838_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_838_salloc_load", i64 32)
  %"$indices_buf_838_salloc" = bitcast i8* %"$indices_buf_838_salloc_salloc" to [32 x i8]*
  %"$indices_buf_838" = bitcast [32 x i8]* %"$indices_buf_838_salloc" to i8*
  %"$key1b_839" = load %String, %String* %key1b
  %"$indices_gep_840" = getelementptr i8, i8* %"$indices_buf_838", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_840" to %String*
  store %String %"$key1b_839", %String* %indices_cast3
  %"$key2c_841" = load %String, %String* %key2c
  %"$indices_gep_842" = getelementptr i8, i8* %"$indices_buf_838", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_842" to %String*
  store %String %"$key2c_841", %String* %indices_cast4
  %"$execptr_load_843" = load i8*, i8** @_execptr
  %"$$c1_9_845" = call i8* @_fetch_field(i8* %"$execptr_load_843", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_844", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_838", i32 1)
  %"$$c1_9_846" = bitcast i8* %"$$c1_9_845" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_846", %TName_Option_String** %"$c1_9"
  %"$$c1_9_848" = load %TName_Option_String*, %TName_Option_String** %"$c1_9"
  %"$$c1_9_tag_849" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_848", i32 0, i32 0
  %"$$c1_9_tag_850" = load i8, i8* %"$$c1_9_tag_849"
  switch i8 %"$$c1_9_tag_850", label %"$empty_default_851" [
    i8 0, label %"$Some_852"
    i8 1, label %"$None_874"
  ]

"$Some_852":                                      ; preds = %"$matchsucc_803"
  %"$$c1_9_853" = bitcast %TName_Option_String* %"$$c1_9_848" to %CName_Some_String*
  %"$c_gep_854" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_853", i32 0, i32 1
  %"$c_load_855" = load %String, %String* %"$c_gep_854"
  %c5 = alloca %String
  store %String %"$c_load_855", %String* %c5
  %v6 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_856", i32 0, i32 0), i32 3 }, %String* %v6
  %eq7 = alloca %TName_Bool*
  %"$execptr_load_857" = load i8*, i8** @_execptr
  %"$c_858" = load %String, %String* %c5
  %"$v_859" = load %String, %String* %v6
  %"$eq_call_860" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_857", %String %"$c_858", %String %"$v_859")
  store %TName_Bool* %"$eq_call_860", %TName_Bool** %eq7
  %"$eq_862" = load %TName_Bool*, %TName_Bool** %eq7
  %"$eq_tag_863" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_862", i32 0, i32 0
  %"$eq_tag_864" = load i8, i8* %"$eq_tag_863"
  switch i8 %"$eq_tag_864", label %"$empty_default_865" [
    i8 0, label %"$True_866"
    i8 1, label %"$False_868"
  ]

"$True_866":                                      ; preds = %"$Some_852"
  %"$eq_867" = bitcast %TName_Bool* %"$eq_862" to %CName_True*
  br label %"$matchsucc_861"

"$False_868":                                     ; preds = %"$Some_852"
  %"$eq_869" = bitcast %TName_Bool* %"$eq_862" to %CName_False*
  %m8 = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_870", i32 0, i32 0), i32 31 }, %String* %m8
  %"$fail_msg__sender_871" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_871"
  %"$tname_872" = load %String, %String* %tname
  %"$m_873" = load %String, %String* %m8
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_871", %String %"$tname_872", %String %"$m_873")
  br label %"$matchsucc_861"

"$empty_default_865":                             ; preds = %"$Some_852"
  br label %"$matchsucc_861"

"$matchsucc_861":                                 ; preds = %"$False_868", %"$True_866", %"$empty_default_865"
  br label %"$matchsucc_847"

"$None_874":                                      ; preds = %"$matchsucc_803"
  %"$$c1_9_875" = bitcast %TName_Option_String* %"$$c1_9_848" to %CName_None_String*
  %m9 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_876", i32 0, i32 0), i32 21 }, %String* %m9
  %"$fail_msg__sender_877" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_877"
  %"$tname_878" = load %String, %String* %tname
  %"$m_879" = load %String, %String* %m9
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_877", %String %"$tname_878", %String %"$m_879")
  br label %"$matchsucc_847"

"$empty_default_851":                             ; preds = %"$matchsucc_803"
  br label %"$matchsucc_847"

"$matchsucc_847":                                 ; preds = %"$None_874", %"$matchsucc_861", %"$empty_default_851"
  %em = alloca %Map_String_String*
  %"$execptr_load_880" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_881" = call i8* @_new_empty_map(i8* %"$execptr_load_880")
  %"$Emp_882" = bitcast i8* %"$_new_empty_map_call_881" to %Map_String_String*
  store %Map_String_String* %"$Emp_882", %Map_String_String** %em
  %"$execptr_load_883" = load i8*, i8** @_execptr
  %"$em_885" = load %Map_String_String*, %Map_String_String** %em
  %"$update_value_886" = bitcast %Map_String_String* %"$em_885" to i8*
  call void @_update_field(i8* %"$execptr_load_883", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_884", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_886")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_888" = getelementptr i8, i8* %0, i32 0
  %"$_amount_889" = bitcast i8* %"$_amount_888" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_889"
  %"$_sender_890" = getelementptr i8, i8* %0, i32 16
  %"$_sender_891" = bitcast i8* %"$_sender_890" to [20 x i8]*
  call void @"$t8_789"(%Uint128 %_amount, [20 x i8]* %"$_sender_891")
  ret void
}

define internal void @"$t9_892"(%Uint128 %_amount, [20 x i8]* %"$_sender_893") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_893"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_894", i32 0, i32 0), i32 2 }, %String* %tname
  %m1 = alloca %Map_String_String*
  %"$execptr_load_895" = load i8*, i8** @_execptr
  %"$m1_897" = call i8* @_fetch_field(i8* %"$execptr_load_895", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_896", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_898" = bitcast i8* %"$m1_897" to %Map_String_String*
  store %Map_String_String* %"$m1_898", %Map_String_String** %m1
  %m1_size = alloca %Uint32
  %"$m1_899" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_899_900" = bitcast %Map_String_String* %"$m1_899" to i8*
  %"$size_call_901" = call %Uint32 @_size(i8* %"$$m1_899_900")
  store %Uint32 %"$size_call_901", %Uint32* %m1_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_902" = load i8*, i8** @_execptr
  %"$m1_size_903" = load %Uint32, %Uint32* %m1_size
  %"$zero_904" = load %Uint32, %Uint32* %zero
  %"$eq_call_905" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_902", %Uint32 %"$m1_size_903", %Uint32 %"$zero_904")
  store %TName_Bool* %"$eq_call_905", %TName_Bool** %is_empty
  %"$is_empty_907" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_908" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_907", i32 0, i32 0
  %"$is_empty_tag_909" = load i8, i8* %"$is_empty_tag_908"
  switch i8 %"$is_empty_tag_909", label %"$empty_default_910" [
    i8 0, label %"$True_911"
    i8 1, label %"$False_913"
  ]

"$True_911":                                      ; preds = %entry
  %"$is_empty_912" = bitcast %TName_Bool* %"$is_empty_907" to %CName_True*
  br label %"$matchsucc_906"

"$False_913":                                     ; preds = %entry
  %"$is_empty_914" = bitcast %TName_Bool* %"$is_empty_907" to %CName_False*
  %"$fail__sender_915" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_915"
  %"$tname_916" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_915", %String %"$tname_916")
  br label %"$matchsucc_906"

"$empty_default_910":                             ; preds = %entry
  br label %"$matchsucc_906"

"$matchsucc_906":                                 ; preds = %"$False_913", %"$True_911", %"$empty_default_910"
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_917", i32 0, i32 0), i32 5 }, %String* %key1a
  %val = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_918", i32 0, i32 0), i32 3 }, %String* %val
  %"$m1_10" = alloca %Map_String_String*
  %"$execptr_load_919" = load i8*, i8** @_execptr
  %"$m1_920" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_920_921" = bitcast %Map_String_String* %"$m1_920" to i8*
  %"$put_key1a_922" = alloca %String
  %"$key1a_923" = load %String, %String* %key1a
  store %String %"$key1a_923", %String* %"$put_key1a_922"
  %"$$put_key1a_922_924" = bitcast %String* %"$put_key1a_922" to i8*
  %"$put_val_925" = alloca %String
  %"$val_926" = load %String, %String* %val
  store %String %"$val_926", %String* %"$put_val_925"
  %"$$put_val_925_927" = bitcast %String* %"$put_val_925" to i8*
  %"$put_call_928" = call i8* @_put(i8* %"$execptr_load_919", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_920_921", i8* %"$$put_key1a_922_924", i8* %"$$put_val_925_927")
  %"$_put_929" = bitcast i8* %"$put_call_928" to %Map_String_String*
  store %Map_String_String* %"$_put_929", %Map_String_String** %"$m1_10"
  %"$execptr_load_930" = load i8*, i8** @_execptr
  %"$$m1_10_932" = load %Map_String_String*, %Map_String_String** %"$m1_10"
  %"$update_value_933" = bitcast %Map_String_String* %"$$m1_10_932" to i8*
  call void @_update_field(i8* %"$execptr_load_930", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_931", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_933")
  ret void
}

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_935" = getelementptr i8, i8* %0, i32 0
  %"$_amount_936" = bitcast i8* %"$_amount_935" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_936"
  %"$_sender_937" = getelementptr i8, i8* %0, i32 16
  %"$_sender_938" = bitcast i8* %"$_sender_937" to [20 x i8]*
  call void @"$t9_892"(%Uint128 %_amount, [20 x i8]* %"$_sender_938")
  ret void
}

define internal void @"$t10_939"(%Uint128 %_amount, [20 x i8]* %"$_sender_940") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_940"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_941", i32 0, i32 0), i32 3 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_942", i32 0, i32 0), i32 5 }, %String* %key1a
  %m1 = alloca %Map_String_String*
  %"$execptr_load_943" = load i8*, i8** @_execptr
  %"$m1_945" = call i8* @_fetch_field(i8* %"$execptr_load_943", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_944", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_946" = bitcast i8* %"$m1_945" to %Map_String_String*
  store %Map_String_String* %"$m1_946", %Map_String_String** %m1
  %c1 = alloca %TName_Option_String*
  %"$execptr_load_947" = load i8*, i8** @_execptr
  %"$m1_948" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_948_949" = bitcast %Map_String_String* %"$m1_948" to i8*
  %"$get_key1a_950" = alloca %String
  %"$key1a_951" = load %String, %String* %key1a
  store %String %"$key1a_951", %String* %"$get_key1a_950"
  %"$$get_key1a_950_952" = bitcast %String* %"$get_key1a_950" to i8*
  %"$get_call_953" = call i8* @_get(i8* %"$execptr_load_947", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_948_949", i8* %"$$get_key1a_950_952")
  %"$_get_954" = bitcast i8* %"$get_call_953" to %TName_Option_String*
  store %TName_Option_String* %"$_get_954", %TName_Option_String** %c1
  %"$c1_956" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_957" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_956", i32 0, i32 0
  %"$c1_tag_958" = load i8, i8* %"$c1_tag_957"
  switch i8 %"$c1_tag_958", label %"$empty_default_959" [
    i8 0, label %"$Some_960"
    i8 1, label %"$None_982"
  ]

"$Some_960":                                      ; preds = %entry
  %"$c1_961" = bitcast %TName_Option_String* %"$c1_956" to %CName_Some_String*
  %"$c_gep_962" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_961", i32 0, i32 1
  %"$c_load_963" = load %String, %String* %"$c_gep_962"
  %c = alloca %String
  store %String %"$c_load_963", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_964", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_965" = load i8*, i8** @_execptr
  %"$c_966" = load %String, %String* %c
  %"$v_967" = load %String, %String* %v
  %"$eq_call_968" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_965", %String %"$c_966", %String %"$v_967")
  store %TName_Bool* %"$eq_call_968", %TName_Bool** %eq
  %"$eq_970" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_971" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_970", i32 0, i32 0
  %"$eq_tag_972" = load i8, i8* %"$eq_tag_971"
  switch i8 %"$eq_tag_972", label %"$empty_default_973" [
    i8 0, label %"$True_974"
    i8 1, label %"$False_976"
  ]

"$True_974":                                      ; preds = %"$Some_960"
  %"$eq_975" = bitcast %TName_Bool* %"$eq_970" to %CName_True*
  br label %"$matchsucc_969"

"$False_976":                                     ; preds = %"$Some_960"
  %"$eq_977" = bitcast %TName_Bool* %"$eq_970" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_978", i32 0, i32 0), i32 25 }, %String* %m
  %"$fail_msg__sender_979" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_979"
  %"$tname_980" = load %String, %String* %tname
  %"$m_981" = load %String, %String* %m
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_979", %String %"$tname_980", %String %"$m_981")
  br label %"$matchsucc_969"

"$empty_default_973":                             ; preds = %"$Some_960"
  br label %"$matchsucc_969"

"$matchsucc_969":                                 ; preds = %"$False_976", %"$True_974", %"$empty_default_973"
  br label %"$matchsucc_955"

"$None_982":                                      ; preds = %entry
  %"$c1_983" = bitcast %TName_Option_String* %"$c1_956" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_984", i32 0, i32 0), i32 15 }, %String* %m2
  %"$fail_msg__sender_985" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_985"
  %"$tname_986" = load %String, %String* %tname
  %"$m_987" = load %String, %String* %m2
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_985", %String %"$tname_986", %String %"$m_987")
  br label %"$matchsucc_955"

"$empty_default_959":                             ; preds = %entry
  br label %"$matchsucc_955"

"$matchsucc_955":                                 ; preds = %"$None_982", %"$matchsucc_969", %"$empty_default_959"
  %"$indices_buf_988_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_988_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_988_salloc_load", i64 16)
  %"$indices_buf_988_salloc" = bitcast i8* %"$indices_buf_988_salloc_salloc" to [16 x i8]*
  %"$indices_buf_988" = bitcast [16 x i8]* %"$indices_buf_988_salloc" to i8*
  %"$key1a_989" = load %String, %String* %key1a
  %"$indices_gep_990" = getelementptr i8, i8* %"$indices_buf_988", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_990" to %String*
  store %String %"$key1a_989", %String* %indices_cast
  %"$execptr_load_991" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_991", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_992", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_988", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_994" = getelementptr i8, i8* %0, i32 0
  %"$_amount_995" = bitcast i8* %"$_amount_994" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_995"
  %"$_sender_996" = getelementptr i8, i8* %0, i32 16
  %"$_sender_997" = bitcast i8* %"$_sender_996" to [20 x i8]*
  call void @"$t10_939"(%Uint128 %_amount, [20 x i8]* %"$_sender_997")
  ret void
}

define internal void @"$t11_998"(%Uint128 %_amount, [20 x i8]* %"$_sender_999") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_999"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1000", i32 0, i32 0), i32 3 }, %String* %tname
  %m1 = alloca %Map_String_String*
  %"$execptr_load_1001" = load i8*, i8** @_execptr
  %"$m1_1003" = call i8* @_fetch_field(i8* %"$execptr_load_1001", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1002", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_1004" = bitcast i8* %"$m1_1003" to %Map_String_String*
  store %Map_String_String* %"$m1_1004", %Map_String_String** %m1
  %m1_size = alloca %Uint32
  %"$m1_1005" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_1005_1006" = bitcast %Map_String_String* %"$m1_1005" to i8*
  %"$size_call_1007" = call %Uint32 @_size(i8* %"$$m1_1005_1006")
  store %Uint32 %"$size_call_1007", %Uint32* %m1_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1008" = load i8*, i8** @_execptr
  %"$m1_size_1009" = load %Uint32, %Uint32* %m1_size
  %"$zero_1010" = load %Uint32, %Uint32* %zero
  %"$eq_call_1011" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1008", %Uint32 %"$m1_size_1009", %Uint32 %"$zero_1010")
  store %TName_Bool* %"$eq_call_1011", %TName_Bool** %is_empty
  %"$is_empty_1013" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1014" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1013", i32 0, i32 0
  %"$is_empty_tag_1015" = load i8, i8* %"$is_empty_tag_1014"
  switch i8 %"$is_empty_tag_1015", label %"$empty_default_1016" [
    i8 0, label %"$True_1017"
    i8 1, label %"$False_1019"
  ]

"$True_1017":                                     ; preds = %entry
  %"$is_empty_1018" = bitcast %TName_Bool* %"$is_empty_1013" to %CName_True*
  br label %"$matchsucc_1012"

"$False_1019":                                    ; preds = %entry
  %"$is_empty_1020" = bitcast %TName_Bool* %"$is_empty_1013" to %CName_False*
  %"$fail__sender_1021" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1021"
  %"$tname_1022" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1021", %String %"$tname_1022")
  br label %"$matchsucc_1012"

"$empty_default_1016":                            ; preds = %entry
  br label %"$matchsucc_1012"

"$matchsucc_1012":                                ; preds = %"$False_1019", %"$True_1017", %"$empty_default_1016"
  %e2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1023" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1024" = call i8* @_new_empty_map(i8* %"$execptr_load_1023")
  %"$Emp_1025" = bitcast i8* %"$_new_empty_map_call_1024" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1025", %"Map_String_Map_(String)_(String)"** %e2
  %"$execptr_load_1026" = load i8*, i8** @_execptr
  %"$e2_1028" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2
  %"$update_value_1029" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_1028" to i8*
  call void @_update_field(i8* %"$execptr_load_1026", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1027", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_1029")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_1031" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1032" = bitcast i8* %"$_amount_1031" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1032"
  %"$_sender_1033" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1034" = bitcast i8* %"$_sender_1033" to [20 x i8]*
  call void @"$t11_998"(%Uint128 %_amount, [20 x i8]* %"$_sender_1034")
  ret void
}

define internal void @"$t12_1035"(%Uint128 %_amount, [20 x i8]* %"$_sender_1036") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1036"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1037", i32 0, i32 0), i32 3 }, %String* %tname
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1038" = load i8*, i8** @_execptr
  %"$m2_1040" = call i8* @_fetch_field(i8* %"$execptr_load_1038", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1039", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i32 1)
  %"$m2_1041" = bitcast i8* %"$m2_1040" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_1041", %"Map_String_Map_(String)_(String)"** %m2
  %m2_size = alloca %Uint32
  %"$m2_1042" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1042_1043" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1042" to i8*
  %"$size_call_1044" = call %Uint32 @_size(i8* %"$$m2_1042_1043")
  store %Uint32 %"$size_call_1044", %Uint32* %m2_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1045" = load i8*, i8** @_execptr
  %"$m2_size_1046" = load %Uint32, %Uint32* %m2_size
  %"$zero_1047" = load %Uint32, %Uint32* %zero
  %"$eq_call_1048" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1045", %Uint32 %"$m2_size_1046", %Uint32 %"$zero_1047")
  store %TName_Bool* %"$eq_call_1048", %TName_Bool** %is_empty
  %"$is_empty_1050" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1051" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1050", i32 0, i32 0
  %"$is_empty_tag_1052" = load i8, i8* %"$is_empty_tag_1051"
  switch i8 %"$is_empty_tag_1052", label %"$empty_default_1053" [
    i8 0, label %"$True_1054"
    i8 1, label %"$False_1056"
  ]

"$True_1054":                                     ; preds = %entry
  %"$is_empty_1055" = bitcast %TName_Bool* %"$is_empty_1050" to %CName_True*
  br label %"$matchsucc_1049"

"$False_1056":                                    ; preds = %entry
  %"$is_empty_1057" = bitcast %TName_Bool* %"$is_empty_1050" to %CName_False*
  %"$fail__sender_1058" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1058"
  %"$tname_1059" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1058", %String %"$tname_1059")
  br label %"$matchsucc_1049"

"$empty_default_1053":                            ; preds = %entry
  br label %"$matchsucc_1049"

"$matchsucc_1049":                                ; preds = %"$False_1056", %"$True_1054", %"$empty_default_1053"
  %e1 = alloca %Map_String_String*
  %"$execptr_load_1060" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1061" = call i8* @_new_empty_map(i8* %"$execptr_load_1060")
  %"$Emp_1062" = bitcast i8* %"$_new_empty_map_call_1061" to %Map_String_String*
  store %Map_String_String* %"$Emp_1062", %Map_String_String** %e1
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1063", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$indices_buf_1064_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1064_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1064_salloc_load", i64 16)
  %"$indices_buf_1064_salloc" = bitcast i8* %"$indices_buf_1064_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1064" = bitcast [16 x i8]* %"$indices_buf_1064_salloc" to i8*
  %"$key1a_1065" = load %String, %String* %key1a
  %"$indices_gep_1066" = getelementptr i8, i8* %"$indices_buf_1064", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1066" to %String*
  store %String %"$key1a_1065", %String* %indices_cast
  %"$execptr_load_1067" = load i8*, i8** @_execptr
  %"$e1_1069" = load %Map_String_String*, %Map_String_String** %e1
  %"$update_value_1070" = bitcast %Map_String_String* %"$e1_1069" to i8*
  call void @_update_field(i8* %"$execptr_load_1067", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1068", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1064", i8* %"$update_value_1070")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_1072" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1073" = bitcast i8* %"$_amount_1072" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1073"
  %"$_sender_1074" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1075" = bitcast i8* %"$_sender_1074" to [20 x i8]*
  call void @"$t12_1035"(%Uint128 %_amount, [20 x i8]* %"$_sender_1075")
  ret void
}

define internal void @"$t13_1076"(%Uint128 %_amount, [20 x i8]* %"$_sender_1077") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1077"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1078", i32 0, i32 0), i32 3 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1079", i32 0, i32 0), i32 5 }, %String* %key1a
  %mo = alloca %"TName_Option_Map_(String)_(String)"*
  %"$indices_buf_1080_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1080_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1080_salloc_load", i64 16)
  %"$indices_buf_1080_salloc" = bitcast i8* %"$indices_buf_1080_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1080" = bitcast [16 x i8]* %"$indices_buf_1080_salloc" to i8*
  %"$key1a_1081" = load %String, %String* %key1a
  %"$indices_gep_1082" = getelementptr i8, i8* %"$indices_buf_1080", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1082" to %String*
  store %String %"$key1a_1081", %String* %indices_cast
  %"$execptr_load_1083" = load i8*, i8** @_execptr
  %"$mo_1085" = call i8* @_fetch_field(i8* %"$execptr_load_1083", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1084", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1080", i32 1)
  %"$mo_1086" = bitcast i8* %"$mo_1085" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_1086", %"TName_Option_Map_(String)_(String)"** %mo
  %"$mo_1088" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo
  %"$mo_tag_1089" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_1088", i32 0, i32 0
  %"$mo_tag_1090" = load i8, i8* %"$mo_tag_1089"
  switch i8 %"$mo_tag_1090", label %"$empty_default_1091" [
    i8 0, label %"$Some_1092"
    i8 1, label %"$None_1116"
  ]

"$Some_1092":                                     ; preds = %entry
  %"$mo_1093" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_1088" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_1094" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_1093", i32 0, i32 1
  %"$m_load_1095" = load %Map_String_String*, %Map_String_String** %"$m_gep_1094"
  %m = alloca %Map_String_String*
  store %Map_String_String* %"$m_load_1095", %Map_String_String** %m
  %m_size = alloca %Uint32
  %"$m_1096" = load %Map_String_String*, %Map_String_String** %m
  %"$$m_1096_1097" = bitcast %Map_String_String* %"$m_1096" to i8*
  %"$size_call_1098" = call %Uint32 @_size(i8* %"$$m_1096_1097")
  store %Uint32 %"$size_call_1098", %Uint32* %m_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1099" = load i8*, i8** @_execptr
  %"$m_size_1100" = load %Uint32, %Uint32* %m_size
  %"$zero_1101" = load %Uint32, %Uint32* %zero
  %"$eq_call_1102" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1099", %Uint32 %"$m_size_1100", %Uint32 %"$zero_1101")
  store %TName_Bool* %"$eq_call_1102", %TName_Bool** %is_empty
  %"$is_empty_1104" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1105" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1104", i32 0, i32 0
  %"$is_empty_tag_1106" = load i8, i8* %"$is_empty_tag_1105"
  switch i8 %"$is_empty_tag_1106", label %"$empty_default_1107" [
    i8 0, label %"$True_1108"
    i8 1, label %"$False_1110"
  ]

"$True_1108":                                     ; preds = %"$Some_1092"
  %"$is_empty_1109" = bitcast %TName_Bool* %"$is_empty_1104" to %CName_True*
  br label %"$matchsucc_1103"

"$False_1110":                                    ; preds = %"$Some_1092"
  %"$is_empty_1111" = bitcast %TName_Bool* %"$is_empty_1104" to %CName_False*
  %msg = alloca %String
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_1112", i32 0, i32 0), i32 29 }, %String* %msg
  %"$fail_msg__sender_1113" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1113"
  %"$tname_1114" = load %String, %String* %tname
  %"$msg_1115" = load %String, %String* %msg
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1113", %String %"$tname_1114", %String %"$msg_1115")
  br label %"$matchsucc_1103"

"$empty_default_1107":                            ; preds = %"$Some_1092"
  br label %"$matchsucc_1103"

"$matchsucc_1103":                                ; preds = %"$False_1110", %"$True_1108", %"$empty_default_1107"
  br label %"$matchsucc_1087"

"$None_1116":                                     ; preds = %entry
  %"$mo_1117" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_1088" to %"CName_None_Map_(String)_(String)"*
  %"$fail__sender_1118" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1118"
  %"$tname_1119" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1118", %String %"$tname_1119")
  br label %"$matchsucc_1087"

"$empty_default_1091":                            ; preds = %entry
  br label %"$matchsucc_1087"

"$matchsucc_1087":                                ; preds = %"$None_1116", %"$matchsucc_1103", %"$empty_default_1091"
  %m3 = alloca %Map_String_String*
  %"$execptr_load_1120" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1121" = call i8* @_new_empty_map(i8* %"$execptr_load_1120")
  %"$Emp_1122" = bitcast i8* %"$_new_empty_map_call_1121" to %Map_String_String*
  store %Map_String_String* %"$Emp_1122", %Map_String_String** %m3
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1123", i32 0, i32 0), i32 5 }, %String* %key2a
  %e = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1124" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1125" = call i8* @_new_empty_map(i8* %"$execptr_load_1124")
  %"$Emp_1126" = bitcast i8* %"$_new_empty_map_call_1125" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1126", %"Map_String_Map_(String)_(String)"** %e
  %"$execptr_load_1127" = load i8*, i8** @_execptr
  %"$e_1128" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$$e_1128_1129" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_1128" to i8*
  %"$put_key2a_1130" = alloca %String
  %"$key2a_1131" = load %String, %String* %key2a
  store %String %"$key2a_1131", %String* %"$put_key2a_1130"
  %"$$put_key2a_1130_1132" = bitcast %String* %"$put_key2a_1130" to i8*
  %"$m3_1133" = load %Map_String_String*, %Map_String_String** %m3
  %"$$m3_1133_1134" = bitcast %Map_String_String* %"$m3_1133" to i8*
  %"$put_call_1135" = call i8* @_put(i8* %"$execptr_load_1127", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e_1128_1129", i8* %"$$put_key2a_1130_1132", i8* %"$$m3_1133_1134")
  %"$_put_1136" = bitcast i8* %"$put_call_1135" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1136", %"Map_String_Map_(String)_(String)"** %m2
  %"$m3_12" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$e_11" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1137" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1138" = call i8* @_new_empty_map(i8* %"$execptr_load_1137")
  %"$Emp_1139" = bitcast i8* %"$_new_empty_map_call_1138" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$Emp_1139", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11"
  %"$execptr_load_1140" = load i8*, i8** @_execptr
  %"$$e_11_1141" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11"
  %"$$$e_11_1141_1142" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_11_1141" to i8*
  %"$put_key1a_1143" = alloca %String
  %"$key1a_1144" = load %String, %String* %key1a
  store %String %"$key1a_1144", %String* %"$put_key1a_1143"
  %"$$put_key1a_1143_1145" = bitcast %String* %"$put_key1a_1143" to i8*
  %"$m2_1146" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1146_1147" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1146" to i8*
  %"$put_call_1148" = call i8* @_put(i8* %"$execptr_load_1140", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$$e_11_1141_1142", i8* %"$$put_key1a_1143_1145", i8* %"$$m2_1146_1147")
  %"$_put_1149" = bitcast i8* %"$put_call_1148" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_put_1149", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12"
  %"$execptr_load_1150" = load i8*, i8** @_execptr
  %"$$m3_12_1152" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12"
  %"$update_value_1153" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_12_1152" to i8*
  call void @_update_field(i8* %"$execptr_load_1150", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_1151", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_1153")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_1155" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1156" = bitcast i8* %"$_amount_1155" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1156"
  %"$_sender_1157" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1158" = bitcast i8* %"$_sender_1157" to [20 x i8]*
  call void @"$t13_1076"(%Uint128 %_amount, [20 x i8]* %"$_sender_1158")
  ret void
}

define internal void @"$t14_1159"(%Uint128 %_amount, [20 x i8]* %"$_sender_1160") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1160"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1161", i32 0, i32 0), i32 3 }, %String* %tname
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1162" = load i8*, i8** @_execptr
  %"$m3_1164" = call i8* @_fetch_field(i8* %"$execptr_load_1162", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_1163", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m3_1165" = bitcast i8* %"$m3_1164" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1165", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %m3_size = alloca %Uint32
  %"$m3_1166" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_1166_1167" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1166" to i8*
  %"$size_call_1168" = call %Uint32 @_size(i8* %"$$m3_1166_1167")
  store %Uint32 %"$size_call_1168", %Uint32* %m3_size
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1169" = load i8*, i8** @_execptr
  %"$m3_size_1170" = load %Uint32, %Uint32* %m3_size
  %"$one_1171" = load %Uint32, %Uint32* %one
  %"$eq_call_1172" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1169", %Uint32 %"$m3_size_1170", %Uint32 %"$one_1171")
  store %TName_Bool* %"$eq_call_1172", %TName_Bool** %is_empty
  %"$is_empty_1174" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1175" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1174", i32 0, i32 0
  %"$is_empty_tag_1176" = load i8, i8* %"$is_empty_tag_1175"
  switch i8 %"$is_empty_tag_1176", label %"$empty_default_1177" [
    i8 0, label %"$True_1178"
    i8 1, label %"$False_1180"
  ]

"$True_1178":                                     ; preds = %entry
  %"$is_empty_1179" = bitcast %TName_Bool* %"$is_empty_1174" to %CName_True*
  br label %"$matchsucc_1173"

"$False_1180":                                    ; preds = %entry
  %"$is_empty_1181" = bitcast %TName_Bool* %"$is_empty_1174" to %CName_False*
  %"$fail__sender_1182" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1182"
  %"$tname_1183" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1182", %String %"$tname_1183")
  br label %"$matchsucc_1173"

"$empty_default_1177":                            ; preds = %entry
  br label %"$matchsucc_1173"

"$matchsucc_1173":                                ; preds = %"$False_1180", %"$True_1178", %"$empty_default_1177"
  %e = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1184" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1185" = call i8* @_new_empty_map(i8* %"$execptr_load_1184")
  %"$Emp_1186" = bitcast i8* %"$_new_empty_map_call_1185" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1186", %"Map_String_Map_(String)_(String)"** %e
  %"$execptr_load_1187" = load i8*, i8** @_execptr
  %"$e_1189" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$update_value_1190" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_1189" to i8*
  call void @_update_field(i8* %"$execptr_load_1187", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_1188", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_1190")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_1192" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1193" = bitcast i8* %"$_amount_1192" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1193"
  %"$_sender_1194" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1195" = bitcast i8* %"$_sender_1194" to [20 x i8]*
  call void @"$t14_1159"(%Uint128 %_amount, [20 x i8]* %"$_sender_1195")
  ret void
}

define internal void @"$t15_1196"(%Uint128 %_amount, [20 x i8]* %"$_sender_1197") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1197"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1198", i32 0, i32 0), i32 3 }, %String* %tname
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1199" = load i8*, i8** @_execptr
  %"$m3_1201" = call i8* @_fetch_field(i8* %"$execptr_load_1199", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_1200", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m3_1202" = bitcast i8* %"$m3_1201" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1202", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %m3_size = alloca %Uint32
  %"$m3_1203" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_1203_1204" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1203" to i8*
  %"$size_call_1205" = call %Uint32 @_size(i8* %"$$m3_1203_1204")
  store %Uint32 %"$size_call_1205", %Uint32* %m3_size
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %is_one = alloca %TName_Bool*
  %"$execptr_load_1206" = load i8*, i8** @_execptr
  %"$m3_size_1207" = load %Uint32, %Uint32* %m3_size
  %"$one_1208" = load %Uint32, %Uint32* %one
  %"$eq_call_1209" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1206", %Uint32 %"$m3_size_1207", %Uint32 %"$one_1208")
  store %TName_Bool* %"$eq_call_1209", %TName_Bool** %is_one
  %"$is_one_1211" = load %TName_Bool*, %TName_Bool** %is_one
  %"$is_one_tag_1212" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1211", i32 0, i32 0
  %"$is_one_tag_1213" = load i8, i8* %"$is_one_tag_1212"
  switch i8 %"$is_one_tag_1213", label %"$empty_default_1214" [
    i8 0, label %"$True_1215"
    i8 1, label %"$False_1217"
  ]

"$True_1215":                                     ; preds = %entry
  %"$is_one_1216" = bitcast %TName_Bool* %"$is_one_1211" to %CName_True*
  br label %"$matchsucc_1210"

"$False_1217":                                    ; preds = %entry
  %"$is_one_1218" = bitcast %TName_Bool* %"$is_one_1211" to %CName_False*
  %err = alloca %String
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_1219", i32 0, i32 0), i32 22 }, %String* %err
  %"$fail_msg__sender_1220" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1220"
  %"$tname_1221" = load %String, %String* %tname
  %"$err_1222" = load %String, %String* %err
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1220", %String %"$tname_1221", %String %"$err_1222")
  br label %"$matchsucc_1210"

"$empty_default_1214":                            ; preds = %entry
  br label %"$matchsucc_1210"

"$matchsucc_1210":                                ; preds = %"$False_1217", %"$True_1215", %"$empty_default_1214"
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1223", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1224", i32 0, i32 0), i32 5 }, %String* %key2a
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1225" = load i8*, i8** @_execptr
  %"$m3_1226" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_1226_1227" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1226" to i8*
  %"$get_key1a_1228" = alloca %String
  %"$key1a_1229" = load %String, %String* %key1a
  store %String %"$key1a_1229", %String* %"$get_key1a_1228"
  %"$$get_key1a_1228_1230" = bitcast %String* %"$get_key1a_1228" to i8*
  %"$get_call_1231" = call i8* @_get(i8* %"$execptr_load_1225", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m3_1226_1227", i8* %"$$get_key1a_1228_1230")
  %"$_get_1232" = bitcast i8* %"$get_call_1231" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$_get_1232", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o
  %"$m2o_1234" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o
  %"$m2o_tag_1235" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_1234", i32 0, i32 0
  %"$m2o_tag_1236" = load i8, i8* %"$m2o_tag_1235"
  switch i8 %"$m2o_tag_1236", label %"$empty_default_1237" [
    i8 0, label %"$Some_1238"
    i8 1, label %"$None_1305"
  ]

"$Some_1238":                                     ; preds = %"$matchsucc_1210"
  %"$m2o_1239" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_1234" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_1240" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_1239", i32 0, i32 1
  %"$m2_load_1241" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_1240"
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_1241", %"Map_String_Map_(String)_(String)"** %m2
  %m2_size = alloca %Uint32
  %"$m2_1242" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1242_1243" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1242" to i8*
  %"$size_call_1244" = call %Uint32 @_size(i8* %"$$m2_1242_1243")
  store %Uint32 %"$size_call_1244", %Uint32* %m2_size
  %is_one_1 = alloca %TName_Bool*
  %"$execptr_load_1245" = load i8*, i8** @_execptr
  %"$m2_size_1246" = load %Uint32, %Uint32* %m2_size
  %"$one_1247" = load %Uint32, %Uint32* %one
  %"$eq_call_1248" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1245", %Uint32 %"$m2_size_1246", %Uint32 %"$one_1247")
  store %TName_Bool* %"$eq_call_1248", %TName_Bool** %is_one_1
  %"$is_one_1_1250" = load %TName_Bool*, %TName_Bool** %is_one_1
  %"$is_one_1_tag_1251" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_1250", i32 0, i32 0
  %"$is_one_1_tag_1252" = load i8, i8* %"$is_one_1_tag_1251"
  switch i8 %"$is_one_1_tag_1252", label %"$empty_default_1253" [
    i8 0, label %"$True_1254"
    i8 1, label %"$False_1299"
  ]

"$True_1254":                                     ; preds = %"$Some_1238"
  %"$is_one_1_1255" = bitcast %TName_Bool* %"$is_one_1_1250" to %CName_True*
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*
  %"$execptr_load_1256" = load i8*, i8** @_execptr
  %"$m2_1257" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1257_1258" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1257" to i8*
  %"$get_key2a_1259" = alloca %String
  %"$key2a_1260" = load %String, %String* %key2a
  store %String %"$key2a_1260", %String* %"$get_key2a_1259"
  %"$$get_key2a_1259_1261" = bitcast %String* %"$get_key2a_1259" to i8*
  %"$get_call_1262" = call i8* @_get(i8* %"$execptr_load_1256", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_1257_1258", i8* %"$$get_key2a_1259_1261")
  %"$_get_1263" = bitcast i8* %"$get_call_1262" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$_get_1263", %"TName_Option_Map_(String)_(String)"** %m1o
  %"$m1o_1265" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o
  %"$m1o_tag_1266" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_1265", i32 0, i32 0
  %"$m1o_tag_1267" = load i8, i8* %"$m1o_tag_1266"
  switch i8 %"$m1o_tag_1267", label %"$empty_default_1268" [
    i8 0, label %"$Some_1269"
    i8 1, label %"$None_1293"
  ]

"$Some_1269":                                     ; preds = %"$True_1254"
  %"$m1o_1270" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_1265" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_1271" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_1270", i32 0, i32 1
  %"$m1_load_1272" = load %Map_String_String*, %Map_String_String** %"$m1_gep_1271"
  %m1 = alloca %Map_String_String*
  store %Map_String_String* %"$m1_load_1272", %Map_String_String** %m1
  %m1_size = alloca %Uint32
  %"$m1_1273" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_1273_1274" = bitcast %Map_String_String* %"$m1_1273" to i8*
  %"$size_call_1275" = call %Uint32 @_size(i8* %"$$m1_1273_1274")
  store %Uint32 %"$size_call_1275", %Uint32* %m1_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1276" = load i8*, i8** @_execptr
  %"$m1_size_1277" = load %Uint32, %Uint32* %m1_size
  %"$zero_1278" = load %Uint32, %Uint32* %zero
  %"$eq_call_1279" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1276", %Uint32 %"$m1_size_1277", %Uint32 %"$zero_1278")
  store %TName_Bool* %"$eq_call_1279", %TName_Bool** %is_empty
  %"$is_empty_1281" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1282" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1281", i32 0, i32 0
  %"$is_empty_tag_1283" = load i8, i8* %"$is_empty_tag_1282"
  switch i8 %"$is_empty_tag_1283", label %"$empty_default_1284" [
    i8 0, label %"$True_1285"
    i8 1, label %"$False_1287"
  ]

"$True_1285":                                     ; preds = %"$Some_1269"
  %"$is_empty_1286" = bitcast %TName_Bool* %"$is_empty_1281" to %CName_True*
  br label %"$matchsucc_1280"

"$False_1287":                                    ; preds = %"$Some_1269"
  %"$is_empty_1288" = bitcast %TName_Bool* %"$is_empty_1281" to %CName_False*
  %err1 = alloca %String
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1289", i32 0, i32 0), i32 36 }, %String* %err1
  %"$fail_msg__sender_1290" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1290"
  %"$tname_1291" = load %String, %String* %tname
  %"$err_1292" = load %String, %String* %err1
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1290", %String %"$tname_1291", %String %"$err_1292")
  br label %"$matchsucc_1280"

"$empty_default_1284":                            ; preds = %"$Some_1269"
  br label %"$matchsucc_1280"

"$matchsucc_1280":                                ; preds = %"$False_1287", %"$True_1285", %"$empty_default_1284"
  br label %"$matchsucc_1264"

"$None_1293":                                     ; preds = %"$True_1254"
  %"$m1o_1294" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_1265" to %"CName_None_Map_(String)_(String)"*
  %err2 = alloca %String
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1295", i32 0, i32 0), i32 19 }, %String* %err2
  %"$fail_msg__sender_1296" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1296"
  %"$tname_1297" = load %String, %String* %tname
  %"$err_1298" = load %String, %String* %err2
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1296", %String %"$tname_1297", %String %"$err_1298")
  br label %"$matchsucc_1264"

"$empty_default_1268":                            ; preds = %"$True_1254"
  br label %"$matchsucc_1264"

"$matchsucc_1264":                                ; preds = %"$None_1293", %"$matchsucc_1280", %"$empty_default_1268"
  br label %"$matchsucc_1249"

"$False_1299":                                    ; preds = %"$Some_1238"
  %"$is_one_1_1300" = bitcast %TName_Bool* %"$is_one_1_1250" to %CName_False*
  %err3 = alloca %String
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_1301", i32 0, i32 0), i32 28 }, %String* %err3
  %"$fail_msg__sender_1302" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1302"
  %"$tname_1303" = load %String, %String* %tname
  %"$err_1304" = load %String, %String* %err3
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1302", %String %"$tname_1303", %String %"$err_1304")
  br label %"$matchsucc_1249"

"$empty_default_1253":                            ; preds = %"$Some_1238"
  br label %"$matchsucc_1249"

"$matchsucc_1249":                                ; preds = %"$False_1299", %"$matchsucc_1264", %"$empty_default_1253"
  br label %"$matchsucc_1233"

"$None_1305":                                     ; preds = %"$matchsucc_1210"
  %"$m2o_1306" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_1234" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %err4 = alloca %String
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1307", i32 0, i32 0), i32 19 }, %String* %err4
  %"$fail_msg__sender_1308" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1308"
  %"$tname_1309" = load %String, %String* %tname
  %"$err_1310" = load %String, %String* %err4
  call void @"$fail_msg_200"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1308", %String %"$tname_1309", %String %"$err_1310")
  br label %"$matchsucc_1233"

"$empty_default_1237":                            ; preds = %"$matchsucc_1210"
  br label %"$matchsucc_1233"

"$matchsucc_1233":                                ; preds = %"$None_1305", %"$matchsucc_1249", %"$empty_default_1237"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1311", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1312", i32 0, i32 0), i32 5 }, %String* %key2b
  %key1c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1313", i32 0, i32 0), i32 5 }, %String* %key1c
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1314", i32 0, i32 0), i32 5 }, %String* %key2c
  %key1d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1315", i32 0, i32 0), i32 5 }, %String* %key1d
  %key2d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1316", i32 0, i32 0), i32 5 }, %String* %key2d
  %v1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1317", i32 0, i32 0), i32 3 }, %String* %v1
  %v2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1318", i32 0, i32 0), i32 3 }, %String* %v2
  %v3 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1319", i32 0, i32 0), i32 3 }, %String* %v3
  %v4 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1320", i32 0, i32 0), i32 3 }, %String* %v4
  %m25 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1321" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1322" = call i8* @_new_empty_map(i8* %"$execptr_load_1321")
  %"$Emp_1323" = bitcast i8* %"$_new_empty_map_call_1322" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1323", %"Map_String_Map_(String)_(String)"** %m25
  %m16 = alloca %Map_String_String*
  %"$execptr_load_1324" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1325" = call i8* @_new_empty_map(i8* %"$execptr_load_1324")
  %"$Emp_1326" = bitcast i8* %"$_new_empty_map_call_1325" to %Map_String_String*
  store %Map_String_String* %"$Emp_1326", %Map_String_String** %m16
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*
  %m21 = alloca %Map_String_String*
  %"$execptr_load_1327" = load i8*, i8** @_execptr
  %"$m1_1328" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1328_1329" = bitcast %Map_String_String* %"$m1_1328" to i8*
  %"$put_key2a_1330" = alloca %String
  %"$key2a_1331" = load %String, %String* %key2a
  store %String %"$key2a_1331", %String* %"$put_key2a_1330"
  %"$$put_key2a_1330_1332" = bitcast %String* %"$put_key2a_1330" to i8*
  %"$put_v1_1333" = alloca %String
  %"$v1_1334" = load %String, %String* %v1
  store %String %"$v1_1334", %String* %"$put_v1_1333"
  %"$$put_v1_1333_1335" = bitcast %String* %"$put_v1_1333" to i8*
  %"$put_call_1336" = call i8* @_put(i8* %"$execptr_load_1327", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1328_1329", i8* %"$$put_key2a_1330_1332", i8* %"$$put_v1_1333_1335")
  %"$_put_1337" = bitcast i8* %"$put_call_1336" to %Map_String_String*
  store %Map_String_String* %"$_put_1337", %Map_String_String** %m21
  %m22 = alloca %Map_String_String*
  %"$execptr_load_1338" = load i8*, i8** @_execptr
  %"$m1_1339" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1339_1340" = bitcast %Map_String_String* %"$m1_1339" to i8*
  %"$put_key2b_1341" = alloca %String
  %"$key2b_1342" = load %String, %String* %key2b
  store %String %"$key2b_1342", %String* %"$put_key2b_1341"
  %"$$put_key2b_1341_1343" = bitcast %String* %"$put_key2b_1341" to i8*
  %"$put_v2_1344" = alloca %String
  %"$v2_1345" = load %String, %String* %v2
  store %String %"$v2_1345", %String* %"$put_v2_1344"
  %"$$put_v2_1344_1346" = bitcast %String* %"$put_v2_1344" to i8*
  %"$put_call_1347" = call i8* @_put(i8* %"$execptr_load_1338", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1339_1340", i8* %"$$put_key2b_1341_1343", i8* %"$$put_v2_1344_1346")
  %"$_put_1348" = bitcast i8* %"$put_call_1347" to %Map_String_String*
  store %Map_String_String* %"$_put_1348", %Map_String_String** %m22
  %m23 = alloca %Map_String_String*
  %"$execptr_load_1349" = load i8*, i8** @_execptr
  %"$m1_1350" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1350_1351" = bitcast %Map_String_String* %"$m1_1350" to i8*
  %"$put_key2c_1352" = alloca %String
  %"$key2c_1353" = load %String, %String* %key2c
  store %String %"$key2c_1353", %String* %"$put_key2c_1352"
  %"$$put_key2c_1352_1354" = bitcast %String* %"$put_key2c_1352" to i8*
  %"$put_v3_1355" = alloca %String
  %"$v3_1356" = load %String, %String* %v3
  store %String %"$v3_1356", %String* %"$put_v3_1355"
  %"$$put_v3_1355_1357" = bitcast %String* %"$put_v3_1355" to i8*
  %"$put_call_1358" = call i8* @_put(i8* %"$execptr_load_1349", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1350_1351", i8* %"$$put_key2c_1352_1354", i8* %"$$put_v3_1355_1357")
  %"$_put_1359" = bitcast i8* %"$put_call_1358" to %Map_String_String*
  store %Map_String_String* %"$_put_1359", %Map_String_String** %m23
  %m24 = alloca %Map_String_String*
  %"$execptr_load_1360" = load i8*, i8** @_execptr
  %"$m1_1361" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1361_1362" = bitcast %Map_String_String* %"$m1_1361" to i8*
  %"$put_key2d_1363" = alloca %String
  %"$key2d_1364" = load %String, %String* %key2d
  store %String %"$key2d_1364", %String* %"$put_key2d_1363"
  %"$$put_key2d_1363_1365" = bitcast %String* %"$put_key2d_1363" to i8*
  %"$put_v4_1366" = alloca %String
  %"$v4_1367" = load %String, %String* %v4
  store %String %"$v4_1367", %String* %"$put_v4_1366"
  %"$$put_v4_1366_1368" = bitcast %String* %"$put_v4_1366" to i8*
  %"$put_call_1369" = call i8* @_put(i8* %"$execptr_load_1360", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1361_1362", i8* %"$$put_key2d_1363_1365", i8* %"$$put_v4_1366_1368")
  %"$_put_1370" = bitcast i8* %"$put_call_1369" to %Map_String_String*
  store %Map_String_String* %"$_put_1370", %Map_String_String** %m24
  %m11 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1371" = load i8*, i8** @_execptr
  %"$m2_1372" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25
  %"$$m2_1372_1373" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1372" to i8*
  %"$put_key1a_1374" = alloca %String
  %"$key1a_1375" = load %String, %String* %key1a
  store %String %"$key1a_1375", %String* %"$put_key1a_1374"
  %"$$put_key1a_1374_1376" = bitcast %String* %"$put_key1a_1374" to i8*
  %"$m21_1377" = load %Map_String_String*, %Map_String_String** %m21
  %"$$m21_1377_1378" = bitcast %Map_String_String* %"$m21_1377" to i8*
  %"$put_call_1379" = call i8* @_put(i8* %"$execptr_load_1371", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_1372_1373", i8* %"$$put_key1a_1374_1376", i8* %"$$m21_1377_1378")
  %"$_put_1380" = bitcast i8* %"$put_call_1379" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1380", %"Map_String_Map_(String)_(String)"** %m11
  %m12 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1381" = load i8*, i8** @_execptr
  %"$m11_1382" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11
  %"$$m11_1382_1383" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_1382" to i8*
  %"$put_key1b_1384" = alloca %String
  %"$key1b_1385" = load %String, %String* %key1b
  store %String %"$key1b_1385", %String* %"$put_key1b_1384"
  %"$$put_key1b_1384_1386" = bitcast %String* %"$put_key1b_1384" to i8*
  %"$m22_1387" = load %Map_String_String*, %Map_String_String** %m22
  %"$$m22_1387_1388" = bitcast %Map_String_String* %"$m22_1387" to i8*
  %"$put_call_1389" = call i8* @_put(i8* %"$execptr_load_1381", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m11_1382_1383", i8* %"$$put_key1b_1384_1386", i8* %"$$m22_1387_1388")
  %"$_put_1390" = bitcast i8* %"$put_call_1389" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1390", %"Map_String_Map_(String)_(String)"** %m12
  %m13 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1391" = load i8*, i8** @_execptr
  %"$m12_1392" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12
  %"$$m12_1392_1393" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_1392" to i8*
  %"$put_key1c_1394" = alloca %String
  %"$key1c_1395" = load %String, %String* %key1c
  store %String %"$key1c_1395", %String* %"$put_key1c_1394"
  %"$$put_key1c_1394_1396" = bitcast %String* %"$put_key1c_1394" to i8*
  %"$m23_1397" = load %Map_String_String*, %Map_String_String** %m23
  %"$$m23_1397_1398" = bitcast %Map_String_String* %"$m23_1397" to i8*
  %"$put_call_1399" = call i8* @_put(i8* %"$execptr_load_1391", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m12_1392_1393", i8* %"$$put_key1c_1394_1396", i8* %"$$m23_1397_1398")
  %"$_put_1400" = bitcast i8* %"$put_call_1399" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1400", %"Map_String_Map_(String)_(String)"** %m13
  %m14 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1401" = load i8*, i8** @_execptr
  %"$m13_1402" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13
  %"$$m13_1402_1403" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_1402" to i8*
  %"$put_key1d_1404" = alloca %String
  %"$key1d_1405" = load %String, %String* %key1d
  store %String %"$key1d_1405", %String* %"$put_key1d_1404"
  %"$$put_key1d_1404_1406" = bitcast %String* %"$put_key1d_1404" to i8*
  %"$m24_1407" = load %Map_String_String*, %Map_String_String** %m24
  %"$$m24_1407_1408" = bitcast %Map_String_String* %"$m24_1407" to i8*
  %"$put_call_1409" = call i8* @_put(i8* %"$execptr_load_1401", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m13_1402_1403", i8* %"$$put_key1d_1404_1406", i8* %"$$m24_1407_1408")
  %"$_put_1410" = bitcast i8* %"$put_call_1409" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1410", %"Map_String_Map_(String)_(String)"** %m14
  %"$m14_1411" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14
  store %"Map_String_Map_(String)_(String)"* %"$m14_1411", %"Map_String_Map_(String)_(String)"** %m2_full
  %"$execptr_load_1412" = load i8*, i8** @_execptr
  %"$m2_full_1414" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full
  %"$update_value_1415" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_1414" to i8*
  call void @_update_field(i8* %"$execptr_load_1412", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1413", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_1415")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_1417" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1418" = bitcast i8* %"$_amount_1417" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1418"
  %"$_sender_1419" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1420" = bitcast i8* %"$_sender_1419" to [20 x i8]*
  call void @"$t15_1196"(%Uint128 %_amount, [20 x i8]* %"$_sender_1420")
  ret void
}

define internal void @"$t16_1421"(%Uint128 %_amount, [20 x i8]* %"$_sender_1422") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1422"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1423", i32 0, i32 0), i32 3 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1424", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1425", i32 0, i32 0), i32 5 }, %String* %key2a
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1426", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1427", i32 0, i32 0), i32 5 }, %String* %key2b
  %key1c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1428", i32 0, i32 0), i32 5 }, %String* %key1c
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1429", i32 0, i32 0), i32 5 }, %String* %key2c
  %key1d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1430", i32 0, i32 0), i32 5 }, %String* %key1d
  %key2d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1431", i32 0, i32 0), i32 5 }, %String* %key2d
  %t1 = alloca %TName_Option_String*
  %"$indices_buf_1432_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1432_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1432_salloc_load", i64 32)
  %"$indices_buf_1432_salloc" = bitcast i8* %"$indices_buf_1432_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1432" = bitcast [32 x i8]* %"$indices_buf_1432_salloc" to i8*
  %"$key1a_1433" = load %String, %String* %key1a
  %"$indices_gep_1434" = getelementptr i8, i8* %"$indices_buf_1432", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1434" to %String*
  store %String %"$key1a_1433", %String* %indices_cast
  %"$key2a_1435" = load %String, %String* %key2a
  %"$indices_gep_1436" = getelementptr i8, i8* %"$indices_buf_1432", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1436" to %String*
  store %String %"$key2a_1435", %String* %indices_cast1
  %"$execptr_load_1437" = load i8*, i8** @_execptr
  %"$t1_1439" = call i8* @_fetch_field(i8* %"$execptr_load_1437", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1438", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1432", i32 1)
  %"$t1_1440" = bitcast i8* %"$t1_1439" to %TName_Option_String*
  store %TName_Option_String* %"$t1_1440", %TName_Option_String** %t1
  %t2 = alloca %TName_Option_String*
  %"$indices_buf_1441_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1441_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1441_salloc_load", i64 32)
  %"$indices_buf_1441_salloc" = bitcast i8* %"$indices_buf_1441_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1441" = bitcast [32 x i8]* %"$indices_buf_1441_salloc" to i8*
  %"$key1b_1442" = load %String, %String* %key1b
  %"$indices_gep_1443" = getelementptr i8, i8* %"$indices_buf_1441", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1443" to %String*
  store %String %"$key1b_1442", %String* %indices_cast2
  %"$key2b_1444" = load %String, %String* %key2b
  %"$indices_gep_1445" = getelementptr i8, i8* %"$indices_buf_1441", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_1445" to %String*
  store %String %"$key2b_1444", %String* %indices_cast3
  %"$execptr_load_1446" = load i8*, i8** @_execptr
  %"$t2_1448" = call i8* @_fetch_field(i8* %"$execptr_load_1446", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1447", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1441", i32 1)
  %"$t2_1449" = bitcast i8* %"$t2_1448" to %TName_Option_String*
  store %TName_Option_String* %"$t2_1449", %TName_Option_String** %t2
  %t3 = alloca %TName_Option_String*
  %"$indices_buf_1450_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1450_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1450_salloc_load", i64 32)
  %"$indices_buf_1450_salloc" = bitcast i8* %"$indices_buf_1450_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1450" = bitcast [32 x i8]* %"$indices_buf_1450_salloc" to i8*
  %"$key1c_1451" = load %String, %String* %key1c
  %"$indices_gep_1452" = getelementptr i8, i8* %"$indices_buf_1450", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_1452" to %String*
  store %String %"$key1c_1451", %String* %indices_cast4
  %"$key2c_1453" = load %String, %String* %key2c
  %"$indices_gep_1454" = getelementptr i8, i8* %"$indices_buf_1450", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_1454" to %String*
  store %String %"$key2c_1453", %String* %indices_cast5
  %"$execptr_load_1455" = load i8*, i8** @_execptr
  %"$t3_1457" = call i8* @_fetch_field(i8* %"$execptr_load_1455", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1456", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1450", i32 1)
  %"$t3_1458" = bitcast i8* %"$t3_1457" to %TName_Option_String*
  store %TName_Option_String* %"$t3_1458", %TName_Option_String** %t3
  %t4 = alloca %TName_Option_String*
  %"$indices_buf_1459_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1459_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1459_salloc_load", i64 32)
  %"$indices_buf_1459_salloc" = bitcast i8* %"$indices_buf_1459_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1459" = bitcast [32 x i8]* %"$indices_buf_1459_salloc" to i8*
  %"$key1d_1460" = load %String, %String* %key1d
  %"$indices_gep_1461" = getelementptr i8, i8* %"$indices_buf_1459", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_1461" to %String*
  store %String %"$key1d_1460", %String* %indices_cast6
  %"$key2d_1462" = load %String, %String* %key2d
  %"$indices_gep_1463" = getelementptr i8, i8* %"$indices_buf_1459", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_1463" to %String*
  store %String %"$key2d_1462", %String* %indices_cast7
  %"$execptr_load_1464" = load i8*, i8** @_execptr
  %"$t4_1466" = call i8* @_fetch_field(i8* %"$execptr_load_1464", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1465", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1459", i32 1)
  %"$t4_1467" = bitcast i8* %"$t4_1466" to %TName_Option_String*
  store %TName_Option_String* %"$t4_1467", %TName_Option_String** %t4
  %v1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1468", i32 0, i32 0), i32 3 }, %String* %v1
  %v2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1469", i32 0, i32 0), i32 3 }, %String* %v2
  %v3 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1470", i32 0, i32 0), i32 3 }, %String* %v3
  %v4 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1471", i32 0, i32 0), i32 3 }, %String* %v4
  %b1 = alloca %TName_Bool*
  %"$t1_1473" = load %TName_Option_String*, %TName_Option_String** %t1
  %"$t1_tag_1474" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_1473", i32 0, i32 0
  %"$t1_tag_1475" = load i8, i8* %"$t1_tag_1474"
  switch i8 %"$t1_tag_1475", label %"$empty_default_1476" [
    i8 0, label %"$Some_1477"
    i8 1, label %"$None_1485"
  ]

"$Some_1477":                                     ; preds = %entry
  %"$t1_1478" = bitcast %TName_Option_String* %"$t1_1473" to %CName_Some_String*
  %"$t1v_gep_1479" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_1478", i32 0, i32 1
  %"$t1v_load_1480" = load %String, %String* %"$t1v_gep_1479"
  %t1v = alloca %String
  store %String %"$t1v_load_1480", %String* %t1v
  %"$execptr_load_1481" = load i8*, i8** @_execptr
  %"$t1v_1482" = load %String, %String* %t1v
  %"$v1_1483" = load %String, %String* %v1
  %"$eq_call_1484" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1481", %String %"$t1v_1482", %String %"$v1_1483")
  store %TName_Bool* %"$eq_call_1484", %TName_Bool** %b1
  br label %"$matchsucc_1472"

"$None_1485":                                     ; preds = %entry
  %"$t1_1486" = bitcast %TName_Option_String* %"$t1_1473" to %CName_None_String*
  %"$adtval_1487_load" = load i8*, i8** @_execptr
  %"$adtval_1487_salloc" = call i8* @_salloc(i8* %"$adtval_1487_load", i64 1)
  %"$adtval_1487" = bitcast i8* %"$adtval_1487_salloc" to %CName_False*
  %"$adtgep_1488" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1487", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1488"
  %"$adtptr_1489" = bitcast %CName_False* %"$adtval_1487" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1489", %TName_Bool** %b1
  br label %"$matchsucc_1472"

"$empty_default_1476":                            ; preds = %entry
  br label %"$matchsucc_1472"

"$matchsucc_1472":                                ; preds = %"$None_1485", %"$Some_1477", %"$empty_default_1476"
  %b2 = alloca %TName_Bool*
  %"$t2_1491" = load %TName_Option_String*, %TName_Option_String** %t2
  %"$t2_tag_1492" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_1491", i32 0, i32 0
  %"$t2_tag_1493" = load i8, i8* %"$t2_tag_1492"
  switch i8 %"$t2_tag_1493", label %"$empty_default_1494" [
    i8 0, label %"$Some_1495"
    i8 1, label %"$None_1503"
  ]

"$Some_1495":                                     ; preds = %"$matchsucc_1472"
  %"$t2_1496" = bitcast %TName_Option_String* %"$t2_1491" to %CName_Some_String*
  %"$t2v_gep_1497" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_1496", i32 0, i32 1
  %"$t2v_load_1498" = load %String, %String* %"$t2v_gep_1497"
  %t2v = alloca %String
  store %String %"$t2v_load_1498", %String* %t2v
  %"$execptr_load_1499" = load i8*, i8** @_execptr
  %"$t2v_1500" = load %String, %String* %t2v
  %"$v2_1501" = load %String, %String* %v2
  %"$eq_call_1502" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1499", %String %"$t2v_1500", %String %"$v2_1501")
  store %TName_Bool* %"$eq_call_1502", %TName_Bool** %b2
  br label %"$matchsucc_1490"

"$None_1503":                                     ; preds = %"$matchsucc_1472"
  %"$t2_1504" = bitcast %TName_Option_String* %"$t2_1491" to %CName_None_String*
  %"$adtval_1505_load" = load i8*, i8** @_execptr
  %"$adtval_1505_salloc" = call i8* @_salloc(i8* %"$adtval_1505_load", i64 1)
  %"$adtval_1505" = bitcast i8* %"$adtval_1505_salloc" to %CName_False*
  %"$adtgep_1506" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1505", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1506"
  %"$adtptr_1507" = bitcast %CName_False* %"$adtval_1505" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1507", %TName_Bool** %b2
  br label %"$matchsucc_1490"

"$empty_default_1494":                            ; preds = %"$matchsucc_1472"
  br label %"$matchsucc_1490"

"$matchsucc_1490":                                ; preds = %"$None_1503", %"$Some_1495", %"$empty_default_1494"
  %b3 = alloca %TName_Bool*
  %"$t3_1509" = load %TName_Option_String*, %TName_Option_String** %t3
  %"$t3_tag_1510" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_1509", i32 0, i32 0
  %"$t3_tag_1511" = load i8, i8* %"$t3_tag_1510"
  switch i8 %"$t3_tag_1511", label %"$empty_default_1512" [
    i8 0, label %"$Some_1513"
    i8 1, label %"$None_1521"
  ]

"$Some_1513":                                     ; preds = %"$matchsucc_1490"
  %"$t3_1514" = bitcast %TName_Option_String* %"$t3_1509" to %CName_Some_String*
  %"$t3v_gep_1515" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_1514", i32 0, i32 1
  %"$t3v_load_1516" = load %String, %String* %"$t3v_gep_1515"
  %t3v = alloca %String
  store %String %"$t3v_load_1516", %String* %t3v
  %"$execptr_load_1517" = load i8*, i8** @_execptr
  %"$t3v_1518" = load %String, %String* %t3v
  %"$v3_1519" = load %String, %String* %v3
  %"$eq_call_1520" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1517", %String %"$t3v_1518", %String %"$v3_1519")
  store %TName_Bool* %"$eq_call_1520", %TName_Bool** %b3
  br label %"$matchsucc_1508"

"$None_1521":                                     ; preds = %"$matchsucc_1490"
  %"$t3_1522" = bitcast %TName_Option_String* %"$t3_1509" to %CName_None_String*
  %"$adtval_1523_load" = load i8*, i8** @_execptr
  %"$adtval_1523_salloc" = call i8* @_salloc(i8* %"$adtval_1523_load", i64 1)
  %"$adtval_1523" = bitcast i8* %"$adtval_1523_salloc" to %CName_False*
  %"$adtgep_1524" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1523", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1524"
  %"$adtptr_1525" = bitcast %CName_False* %"$adtval_1523" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1525", %TName_Bool** %b3
  br label %"$matchsucc_1508"

"$empty_default_1512":                            ; preds = %"$matchsucc_1490"
  br label %"$matchsucc_1508"

"$matchsucc_1508":                                ; preds = %"$None_1521", %"$Some_1513", %"$empty_default_1512"
  %b4 = alloca %TName_Bool*
  %"$t4_1527" = load %TName_Option_String*, %TName_Option_String** %t4
  %"$t4_tag_1528" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_1527", i32 0, i32 0
  %"$t4_tag_1529" = load i8, i8* %"$t4_tag_1528"
  switch i8 %"$t4_tag_1529", label %"$empty_default_1530" [
    i8 0, label %"$Some_1531"
    i8 1, label %"$None_1539"
  ]

"$Some_1531":                                     ; preds = %"$matchsucc_1508"
  %"$t4_1532" = bitcast %TName_Option_String* %"$t4_1527" to %CName_Some_String*
  %"$t4v_gep_1533" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_1532", i32 0, i32 1
  %"$t4v_load_1534" = load %String, %String* %"$t4v_gep_1533"
  %t4v = alloca %String
  store %String %"$t4v_load_1534", %String* %t4v
  %"$execptr_load_1535" = load i8*, i8** @_execptr
  %"$t4v_1536" = load %String, %String* %t4v
  %"$v4_1537" = load %String, %String* %v4
  %"$eq_call_1538" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1535", %String %"$t4v_1536", %String %"$v4_1537")
  store %TName_Bool* %"$eq_call_1538", %TName_Bool** %b4
  br label %"$matchsucc_1526"

"$None_1539":                                     ; preds = %"$matchsucc_1508"
  %"$t4_1540" = bitcast %TName_Option_String* %"$t4_1527" to %CName_None_String*
  %"$adtval_1541_load" = load i8*, i8** @_execptr
  %"$adtval_1541_salloc" = call i8* @_salloc(i8* %"$adtval_1541_load", i64 1)
  %"$adtval_1541" = bitcast i8* %"$adtval_1541_salloc" to %CName_False*
  %"$adtgep_1542" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1541", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1542"
  %"$adtptr_1543" = bitcast %CName_False* %"$adtval_1541" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1543", %TName_Bool** %b4
  br label %"$matchsucc_1526"

"$empty_default_1530":                            ; preds = %"$matchsucc_1508"
  br label %"$matchsucc_1526"

"$matchsucc_1526":                                ; preds = %"$None_1539", %"$Some_1531", %"$empty_default_1530"
  %b = alloca %TName_Bool*
  %a1 = alloca %TName_Bool*
  %"$andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_1544" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_1545" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1544", 0
  %"$andb_envptr_1546" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1544", 1
  %"$b1_1547" = load %TName_Bool*, %TName_Bool** %b1
  %"$andb_call_1548" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_1545"(i8* %"$andb_envptr_1546", %TName_Bool* %"$b1_1547")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_1548", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_17"
  %"$andb_18" = alloca %TName_Bool*
  %"$$andb_17_1549" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_17"
  %"$$andb_17_fptr_1550" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_17_1549", 0
  %"$$andb_17_envptr_1551" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_17_1549", 1
  %"$b2_1552" = load %TName_Bool*, %TName_Bool** %b2
  %"$$andb_17_call_1553" = call %TName_Bool* %"$$andb_17_fptr_1550"(i8* %"$$andb_17_envptr_1551", %TName_Bool* %"$b2_1552")
  store %TName_Bool* %"$$andb_17_call_1553", %TName_Bool** %"$andb_18"
  %"$$andb_18_1554" = load %TName_Bool*, %TName_Bool** %"$andb_18"
  store %TName_Bool* %"$$andb_18_1554", %TName_Bool** %a1
  %a2 = alloca %TName_Bool*
  %"$andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_1555" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_1556" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1555", 0
  %"$andb_envptr_1557" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1555", 1
  %"$b3_1558" = load %TName_Bool*, %TName_Bool** %b3
  %"$andb_call_1559" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_1556"(i8* %"$andb_envptr_1557", %TName_Bool* %"$b3_1558")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_1559", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_19"
  %"$andb_20" = alloca %TName_Bool*
  %"$$andb_19_1560" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_19"
  %"$$andb_19_fptr_1561" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_19_1560", 0
  %"$$andb_19_envptr_1562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_19_1560", 1
  %"$b4_1563" = load %TName_Bool*, %TName_Bool** %b4
  %"$$andb_19_call_1564" = call %TName_Bool* %"$$andb_19_fptr_1561"(i8* %"$$andb_19_envptr_1562", %TName_Bool* %"$b4_1563")
  store %TName_Bool* %"$$andb_19_call_1564", %TName_Bool** %"$andb_20"
  %"$$andb_20_1565" = load %TName_Bool*, %TName_Bool** %"$andb_20"
  store %TName_Bool* %"$$andb_20_1565", %TName_Bool** %a2
  %"$andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_1566" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_1567" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1566", 0
  %"$andb_envptr_1568" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1566", 1
  %"$a1_1569" = load %TName_Bool*, %TName_Bool** %a1
  %"$andb_call_1570" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_1567"(i8* %"$andb_envptr_1568", %TName_Bool* %"$a1_1569")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_1570", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_21"
  %"$andb_22" = alloca %TName_Bool*
  %"$$andb_21_1571" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_21"
  %"$$andb_21_fptr_1572" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_21_1571", 0
  %"$$andb_21_envptr_1573" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_21_1571", 1
  %"$a2_1574" = load %TName_Bool*, %TName_Bool** %a2
  %"$$andb_21_call_1575" = call %TName_Bool* %"$$andb_21_fptr_1572"(i8* %"$$andb_21_envptr_1573", %TName_Bool* %"$a2_1574")
  store %TName_Bool* %"$$andb_21_call_1575", %TName_Bool** %"$andb_22"
  %"$$andb_22_1576" = load %TName_Bool*, %TName_Bool** %"$andb_22"
  store %TName_Bool* %"$$andb_22_1576", %TName_Bool** %b
  %"$b_1578" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_1579" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_1578", i32 0, i32 0
  %"$b_tag_1580" = load i8, i8* %"$b_tag_1579"
  switch i8 %"$b_tag_1580", label %"$empty_default_1581" [
    i8 0, label %"$True_1582"
    i8 1, label %"$False_1584"
  ]

"$True_1582":                                     ; preds = %"$matchsucc_1526"
  %"$b_1583" = bitcast %TName_Bool* %"$b_1578" to %CName_True*
  br label %"$matchsucc_1577"

"$False_1584":                                    ; preds = %"$matchsucc_1526"
  %"$b_1585" = bitcast %TName_Bool* %"$b_1578" to %CName_False*
  %"$fail__sender_1586" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1586"
  %"$tname_1587" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1586", %String %"$tname_1587")
  br label %"$matchsucc_1577"

"$empty_default_1581":                            ; preds = %"$matchsucc_1526"
  br label %"$matchsucc_1577"

"$matchsucc_1577":                                ; preds = %"$False_1584", %"$True_1582", %"$empty_default_1581"
  %m1 = alloca %Map_String_String*
  %k = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1588", i32 0, i32 0), i32 0 }, %String* %k
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1589", i32 0, i32 0), i32 3 }, %String* %v
  %e = alloca %Map_String_String*
  %"$execptr_load_1590" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1591" = call i8* @_new_empty_map(i8* %"$execptr_load_1590")
  %"$Emp_1592" = bitcast i8* %"$_new_empty_map_call_1591" to %Map_String_String*
  store %Map_String_String* %"$Emp_1592", %Map_String_String** %e
  %"$execptr_load_1593" = load i8*, i8** @_execptr
  %"$e_1594" = load %Map_String_String*, %Map_String_String** %e
  %"$$e_1594_1595" = bitcast %Map_String_String* %"$e_1594" to i8*
  %"$put_k_1596" = alloca %String
  %"$k_1597" = load %String, %String* %k
  store %String %"$k_1597", %String* %"$put_k_1596"
  %"$$put_k_1596_1598" = bitcast %String* %"$put_k_1596" to i8*
  %"$put_v_1599" = alloca %String
  %"$v_1600" = load %String, %String* %v
  store %String %"$v_1600", %String* %"$put_v_1599"
  %"$$put_v_1599_1601" = bitcast %String* %"$put_v_1599" to i8*
  %"$put_call_1602" = call i8* @_put(i8* %"$execptr_load_1593", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e_1594_1595", i8* %"$$put_k_1596_1598", i8* %"$$put_v_1599_1601")
  %"$_put_1603" = bitcast i8* %"$put_call_1602" to %Map_String_String*
  store %Map_String_String* %"$_put_1603", %Map_String_String** %m1
  %"$execptr_load_1604" = load i8*, i8** @_execptr
  %"$m1_1606" = load %Map_String_String*, %Map_String_String** %m1
  %"$update_value_1607" = bitcast %Map_String_String* %"$m1_1606" to i8*
  call void @_update_field(i8* %"$execptr_load_1604", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1605", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_1607")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_1609" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1610" = bitcast i8* %"$_amount_1609" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1610"
  %"$_sender_1611" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1612" = bitcast i8* %"$_sender_1611" to [20 x i8]*
  call void @"$t16_1421"(%Uint128 %_amount, [20 x i8]* %"$_sender_1612")
  ret void
}

define internal void @"$t17_1613"(%Uint128 %_amount, [20 x i8]* %"$_sender_1614") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1614"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1615", i32 0, i32 0), i32 3 }, %String* %tname
  %key = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1616", i32 0, i32 0), i32 0 }, %String* %key
  %found = alloca %TName_Bool*
  %"$indices_buf_1617_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1617_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1617_salloc_load", i64 16)
  %"$indices_buf_1617_salloc" = bitcast i8* %"$indices_buf_1617_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1617" = bitcast [16 x i8]* %"$indices_buf_1617_salloc" to i8*
  %"$key_1618" = load %String, %String* %key
  %"$indices_gep_1619" = getelementptr i8, i8* %"$indices_buf_1617", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1619" to %String*
  store %String %"$key_1618", %String* %indices_cast
  %"$execptr_load_1620" = load i8*, i8** @_execptr
  %"$found_1622" = call i8* @_fetch_field(i8* %"$execptr_load_1620", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1621", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_1617", i32 0)
  %"$found_1623" = bitcast i8* %"$found_1622" to %TName_Bool*
  store %TName_Bool* %"$found_1623", %TName_Bool** %found
  %"$found_1625" = load %TName_Bool*, %TName_Bool** %found
  %"$found_tag_1626" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_1625", i32 0, i32 0
  %"$found_tag_1627" = load i8, i8* %"$found_tag_1626"
  switch i8 %"$found_tag_1627", label %"$empty_default_1628" [
    i8 0, label %"$True_1629"
    i8 1, label %"$False_1631"
  ]

"$True_1629":                                     ; preds = %entry
  %"$found_1630" = bitcast %TName_Bool* %"$found_1625" to %CName_True*
  br label %"$matchsucc_1624"

"$False_1631":                                    ; preds = %entry
  %"$found_1632" = bitcast %TName_Bool* %"$found_1625" to %CName_False*
  %"$fail__sender_1633" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1633"
  %"$tname_1634" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1633", %String %"$tname_1634")
  br label %"$matchsucc_1624"

"$empty_default_1628":                            ; preds = %entry
  br label %"$matchsucc_1624"

"$matchsucc_1624":                                ; preds = %"$False_1631", %"$True_1629", %"$empty_default_1628"
  %"$indices_buf_1635_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1635_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1635_salloc_load", i64 16)
  %"$indices_buf_1635_salloc" = bitcast i8* %"$indices_buf_1635_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1635" = bitcast [16 x i8]* %"$indices_buf_1635_salloc" to i8*
  %"$key_1636" = load %String, %String* %key
  %"$indices_gep_1637" = getelementptr i8, i8* %"$indices_buf_1635", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_1637" to %String*
  store %String %"$key_1636", %String* %indices_cast1
  %"$execptr_load_1638" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_1638", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1639", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_1635", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_1641" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1642" = bitcast i8* %"$_amount_1641" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1642"
  %"$_sender_1643" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1644" = bitcast i8* %"$_sender_1643" to [20 x i8]*
  call void @"$t17_1613"(%Uint128 %_amount, [20 x i8]* %"$_sender_1644")
  ret void
}

define internal void @"$t18_1645"(%Uint128 %_amount, [20 x i8]* %"$_sender_1646") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1646"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1647", i32 0, i32 0), i32 3 }, %String* %tname
  %key = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1648", i32 0, i32 0), i32 0 }, %String* %key
  %found = alloca %TName_Bool*
  %"$indices_buf_1649_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1649_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1649_salloc_load", i64 16)
  %"$indices_buf_1649_salloc" = bitcast i8* %"$indices_buf_1649_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1649" = bitcast [16 x i8]* %"$indices_buf_1649_salloc" to i8*
  %"$key_1650" = load %String, %String* %key
  %"$indices_gep_1651" = getelementptr i8, i8* %"$indices_buf_1649", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1651" to %String*
  store %String %"$key_1650", %String* %indices_cast
  %"$execptr_load_1652" = load i8*, i8** @_execptr
  %"$found_1654" = call i8* @_fetch_field(i8* %"$execptr_load_1652", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1653", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_1649", i32 0)
  %"$found_1655" = bitcast i8* %"$found_1654" to %TName_Bool*
  store %TName_Bool* %"$found_1655", %TName_Bool** %found
  %"$found_1657" = load %TName_Bool*, %TName_Bool** %found
  %"$found_tag_1658" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_1657", i32 0, i32 0
  %"$found_tag_1659" = load i8, i8* %"$found_tag_1658"
  switch i8 %"$found_tag_1659", label %"$empty_default_1660" [
    i8 0, label %"$True_1661"
    i8 1, label %"$False_1665"
  ]

"$True_1661":                                     ; preds = %entry
  %"$found_1662" = bitcast %TName_Bool* %"$found_1657" to %CName_True*
  %"$fail__sender_1663" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1663"
  %"$tname_1664" = load %String, %String* %tname
  call void @"$fail_179"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1663", %String %"$tname_1664")
  br label %"$matchsucc_1656"

"$False_1665":                                    ; preds = %entry
  %"$found_1666" = bitcast %TName_Bool* %"$found_1657" to %CName_False*
  br label %"$matchsucc_1656"

"$empty_default_1660":                            ; preds = %entry
  br label %"$matchsucc_1656"

"$matchsucc_1656":                                ; preds = %"$False_1665", %"$True_1661", %"$empty_default_1660"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_1668" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1669" = bitcast i8* %"$_amount_1668" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1669"
  %"$_sender_1670" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1671" = bitcast i8* %"$_sender_1670" to [20 x i8]*
  call void @"$t18_1645"(%Uint128 %_amount, [20 x i8]* %"$_sender_1671")
  ret void
}
