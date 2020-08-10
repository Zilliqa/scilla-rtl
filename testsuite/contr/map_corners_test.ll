

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
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Option_String = type { i8, %CName_Some_String*, %CName_None_String* }
%CName_Some_String = type <{ i8, %String }>
%CName_None_String = type <{ i8 }>
%Map_String_String = type { %String, %String }
%"TName_Option_Map_(String)_(String)" = type { i8, %"CName_Some_Map_(String)_(String)"*, %"CName_None_Map_(String)_(String)"* }
%"CName_Some_Map_(String)_(String)" = type <{ i8, %Map_String_String* }>
%"CName_None_Map_(String)_(String)" = type <{ i8 }>
%"Map_String_Map_(String)_(String)" = type { %String, %Map_String_String* }
%"Map_String_Map_(String)_(Map_(String)_(String))" = type { %String, %"Map_String_Map_(String)_(String)"* }
%"TName_Option_Map_(String)_(Map_(String)_(String))" = type { i8, %"CName_Some_Map_(String)_(Map_(String)_(String))"*, %"CName_None_Map_(String)_(Map_(String)_(String))"* }
%"CName_Some_Map_(String)_(Map_(String)_(String))" = type <{ i8, %"Map_String_Map_(String)_(String)"* }>
%"CName_None_Map_(String)_(Map_(String)_(String))" = type <{ i8 }>

@_execptr = global i8* null
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
@"$stringlit_148" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_153" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_156" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_169" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_174" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_177" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_184" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_196" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_198" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_202" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_218" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_220" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_231" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_233" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_237" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_253" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_254" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_259" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_270" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_271" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_272" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_277" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_300" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_310" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_315" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_327" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_337" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_345" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_346" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_351" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_365" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_366" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_367" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_374" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_385" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_386" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_387" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_388" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_395" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_420" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_431" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_432" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_444" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_445" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_457" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_462" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_472" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_473" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_474" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_481" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_493" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_507" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_513" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_517" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_518" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_525" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_537" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_551" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_557" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_561" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_562" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_569" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_581" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_595" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_601" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_609" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_617" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_618" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_619" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_626" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_638" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_652" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_658" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_662" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_667" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_679" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_685" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_686" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_693" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_705" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_711" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_712" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_719" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_731" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_737" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_738" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_739" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_746" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_757" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_758" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_759" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_766" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_778" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_792" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_798" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_802" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_803" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_810" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_822" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_836" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_842" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_850" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_860" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_862" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_883" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_884" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_897" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_907" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_908" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_910" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_930" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_944" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_950" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_958" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_966" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_968" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_993" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1003" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_1005" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1029" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_1034" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1044" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_1045" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_1050" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1078" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_1089" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_1117" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_1127" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_1129" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_1154" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_1164" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_1166" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_1185" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_1189" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1190" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_1255" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_1261" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_1267" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_1273" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_1277" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1278" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1279" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_1280" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1281" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_1282" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_1283" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1284" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_1285" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_1286" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_1379" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1389" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_1390" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1391" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_1392" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1393" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1394" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_1395" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1396" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_1397" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_1404" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_1413" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_1422" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_1431" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1434" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1435" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_1436" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_1437" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_1554" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1555" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_1571" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_1581" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_1582" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_1587" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_1605" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_1613" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_1614" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_1619" = unnamed_addr constant [5 x i8] c"f_m1\00"
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

define internal void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$_sender_146", %String %tname) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_146"
  %e = alloca i8*
  %"$msgobj_147_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_147_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_147_salloc_load", i64 81)
  %"$msgobj_147_salloc" = bitcast i8* %"$msgobj_147_salloc_salloc" to [81 x i8]*
  %"$msgobj_147" = bitcast [81 x i8]* %"$msgobj_147_salloc" to i8*
  store i8 2, i8* %"$msgobj_147"
  %"$msgobj_fname_149" = getelementptr i8, i8* %"$msgobj_147", i32 1
  %"$msgobj_fname_150" = bitcast i8* %"$msgobj_fname_149" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_148", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_150"
  %"$msgobj_td_151" = getelementptr i8, i8* %"$msgobj_147", i32 17
  %"$msgobj_td_152" = bitcast i8* %"$msgobj_td_151" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_152"
  %"$msgobj_v_154" = getelementptr i8, i8* %"$msgobj_147", i32 25
  %"$msgobj_v_155" = bitcast i8* %"$msgobj_v_154" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_153", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_155"
  %"$msgobj_fname_157" = getelementptr i8, i8* %"$msgobj_147", i32 41
  %"$msgobj_fname_158" = bitcast i8* %"$msgobj_fname_157" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_156", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_158"
  %"$msgobj_td_159" = getelementptr i8, i8* %"$msgobj_147", i32 57
  %"$msgobj_td_160" = bitcast i8* %"$msgobj_td_159" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_160"
  %"$msgobj_v_161" = getelementptr i8, i8* %"$msgobj_147", i32 65
  %"$msgobj_v_162" = bitcast i8* %"$msgobj_v_161" to %String*
  store %String %tname, %String* %"$msgobj_v_162"
  store i8* %"$msgobj_147", i8** %e
  %"$execptr_load_164" = load i8*, i8** @_execptr
  %"$e_165" = load i8*, i8** %e
  call void @_throw(i8* %"$execptr_load_164", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_165")
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$_sender_167", %String %tname, %String %msg) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_167"
  %e = alloca i8*
  %"$msgobj_168_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_168_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_168_salloc_load", i64 121)
  %"$msgobj_168_salloc" = bitcast i8* %"$msgobj_168_salloc_salloc" to [121 x i8]*
  %"$msgobj_168" = bitcast [121 x i8]* %"$msgobj_168_salloc" to i8*
  store i8 3, i8* %"$msgobj_168"
  %"$msgobj_fname_170" = getelementptr i8, i8* %"$msgobj_168", i32 1
  %"$msgobj_fname_171" = bitcast i8* %"$msgobj_fname_170" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_169", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_171"
  %"$msgobj_td_172" = getelementptr i8, i8* %"$msgobj_168", i32 17
  %"$msgobj_td_173" = bitcast i8* %"$msgobj_td_172" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_173"
  %"$msgobj_v_175" = getelementptr i8, i8* %"$msgobj_168", i32 25
  %"$msgobj_v_176" = bitcast i8* %"$msgobj_v_175" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_174", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_176"
  %"$msgobj_fname_178" = getelementptr i8, i8* %"$msgobj_168", i32 41
  %"$msgobj_fname_179" = bitcast i8* %"$msgobj_fname_178" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_177", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_179"
  %"$msgobj_td_180" = getelementptr i8, i8* %"$msgobj_168", i32 57
  %"$msgobj_td_181" = bitcast i8* %"$msgobj_td_180" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_181"
  %"$msgobj_v_182" = getelementptr i8, i8* %"$msgobj_168", i32 65
  %"$msgobj_v_183" = bitcast i8* %"$msgobj_v_182" to %String*
  store %String %tname, %String* %"$msgobj_v_183"
  %"$msgobj_fname_185" = getelementptr i8, i8* %"$msgobj_168", i32 81
  %"$msgobj_fname_186" = bitcast i8* %"$msgobj_fname_185" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_184", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_186"
  %"$msgobj_td_187" = getelementptr i8, i8* %"$msgobj_168", i32 97
  %"$msgobj_td_188" = bitcast i8* %"$msgobj_td_187" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_188"
  %"$msgobj_v_189" = getelementptr i8, i8* %"$msgobj_168", i32 105
  %"$msgobj_v_190" = bitcast i8* %"$msgobj_v_189" to %String*
  store %String %msg, %String* %"$msgobj_v_190"
  store i8* %"$msgobj_168", i8** %e
  %"$execptr_load_192" = load i8*, i8** @_execptr
  %"$e_193" = load i8*, i8** %e
  call void @_throw(i8* %"$execptr_load_192", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_193")
  ret void
}

define internal void @"$t1_194"(%Uint128 %_amount, [20 x i8]* %"$_sender_195") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_195"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_196", i32 0, i32 0), i32 2 }, %String* %tname
  %f = alloca %String
  %"$execptr_load_197" = load i8*, i8** @_execptr
  %"$f_199" = call i8* @_fetch_field(i8* %"$execptr_load_197", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_198", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i32 1)
  %"$f_200" = bitcast i8* %"$f_199" to %String*
  %"$f_201" = load %String, %String* %"$f_200"
  store %String %"$f_201", %String* %f
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_202", i32 0, i32 0), i32 3 }, %String* %s
  %t = alloca %TName_Bool*
  %"$execptr_load_203" = load i8*, i8** @_execptr
  %"$f_204" = load %String, %String* %f
  %"$s_205" = load %String, %String* %s
  %"$eq_call_206" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_203", %String %"$f_204", %String %"$s_205")
  store %TName_Bool* %"$eq_call_206", %TName_Bool** %t
  %"$t_208" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_209" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_208", i32 0, i32 0
  %"$t_tag_210" = load i8, i8* %"$t_tag_209"
  switch i8 %"$t_tag_210", label %"$empty_default_211" [
    i8 1, label %"$False_212"
    i8 0, label %"$True_216"
  ]

"$False_212":                                     ; preds = %entry
  %"$t_213" = bitcast %TName_Bool* %"$t_208" to %CName_False*
  %"$fail__sender_214" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_214"
  %"$tname_215" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_214", %String %"$tname_215")
  br label %"$matchsucc_207"

"$True_216":                                      ; preds = %entry
  %"$t_217" = bitcast %TName_Bool* %"$t_208" to %CName_True*
  br label %"$matchsucc_207"

"$empty_default_211":                             ; preds = %entry
  br label %"$matchsucc_207"

"$matchsucc_207":                                 ; preds = %"$True_216", %"$False_212", %"$empty_default_211"
  %s2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_218", i32 0, i32 0), i32 3 }, %String* %s2
  %"$execptr_load_219" = load i8*, i8** @_execptr
  %"$s2_221" = load %String, %String* %s2
  %"$update_value_222" = alloca %String
  store %String %"$s2_221", %String* %"$update_value_222"
  %"$update_value_223" = bitcast %String* %"$update_value_222" to i8*
  call void @_update_field(i8* %"$execptr_load_219", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_220", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i8* %"$update_value_223")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define void @t1(i8* %0) {
entry:
  %"$_amount_225" = getelementptr i8, i8* %0, i32 0
  %"$_amount_226" = bitcast i8* %"$_amount_225" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_226"
  %"$_sender_227" = getelementptr i8, i8* %0, i32 16
  %"$_sender_228" = bitcast i8* %"$_sender_227" to [20 x i8]*
  call void @"$t1_194"(%Uint128 %_amount, [20 x i8]* %"$_sender_228")
  ret void
}

define internal void @"$t2_229"(%Uint128 %_amount, [20 x i8]* %"$_sender_230") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_230"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_231", i32 0, i32 0), i32 2 }, %String* %tname
  %f = alloca %String
  %"$execptr_load_232" = load i8*, i8** @_execptr
  %"$f_234" = call i8* @_fetch_field(i8* %"$execptr_load_232", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_233", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i32 1)
  %"$f_235" = bitcast i8* %"$f_234" to %String*
  %"$f_236" = load %String, %String* %"$f_235"
  store %String %"$f_236", %String* %f
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_237", i32 0, i32 0), i32 3 }, %String* %s
  %t = alloca %TName_Bool*
  %"$execptr_load_238" = load i8*, i8** @_execptr
  %"$f_239" = load %String, %String* %f
  %"$s_240" = load %String, %String* %s
  %"$eq_call_241" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_238", %String %"$f_239", %String %"$s_240")
  store %TName_Bool* %"$eq_call_241", %TName_Bool** %t
  %"$t_243" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_244" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_243", i32 0, i32 0
  %"$t_tag_245" = load i8, i8* %"$t_tag_244"
  switch i8 %"$t_tag_245", label %"$empty_default_246" [
    i8 1, label %"$False_247"
    i8 0, label %"$True_251"
  ]

"$False_247":                                     ; preds = %entry
  %"$t_248" = bitcast %TName_Bool* %"$t_243" to %CName_False*
  %"$fail__sender_249" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_249"
  %"$tname_250" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_249", %String %"$tname_250")
  br label %"$matchsucc_242"

"$True_251":                                      ; preds = %entry
  %"$t_252" = bitcast %TName_Bool* %"$t_243" to %CName_True*
  br label %"$matchsucc_242"

"$empty_default_246":                             ; preds = %entry
  br label %"$matchsucc_242"

"$matchsucc_242":                                 ; preds = %"$True_251", %"$False_247", %"$empty_default_246"
  %key1 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_253", i32 0, i32 0), i32 4 }, %String* %key1
  %val1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_254", i32 0, i32 0), i32 3 }, %String* %val1
  %"$indices_buf_255_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_255_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_255_salloc_load", i64 16)
  %"$indices_buf_255_salloc" = bitcast i8* %"$indices_buf_255_salloc_salloc" to [16 x i8]*
  %"$indices_buf_255" = bitcast [16 x i8]* %"$indices_buf_255_salloc" to i8*
  %"$key1_256" = load %String, %String* %key1
  %"$indices_gep_257" = getelementptr i8, i8* %"$indices_buf_255", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_257" to %String*
  store %String %"$key1_256", %String* %indices_cast
  %"$execptr_load_258" = load i8*, i8** @_execptr
  %"$val1_260" = load %String, %String* %val1
  %"$update_value_261" = alloca %String
  store %String %"$val1_260", %String* %"$update_value_261"
  %"$update_value_262" = bitcast %String* %"$update_value_261" to i8*
  call void @_update_field(i8* %"$execptr_load_258", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_259", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_255", i8* %"$update_value_262")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_264" = getelementptr i8, i8* %0, i32 0
  %"$_amount_265" = bitcast i8* %"$_amount_264" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_265"
  %"$_sender_266" = getelementptr i8, i8* %0, i32 16
  %"$_sender_267" = bitcast i8* %"$_sender_266" to [20 x i8]*
  call void @"$t2_229"(%Uint128 %_amount, [20 x i8]* %"$_sender_267")
  ret void
}

define internal void @"$t3_268"(%Uint128 %_amount, [20 x i8]* %"$_sender_269") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_269"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_270", i32 0, i32 0), i32 2 }, %String* %tname
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_271", i32 0, i32 0), i32 3 }, %String* %s
  %key1 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_272", i32 0, i32 0), i32 4 }, %String* %key1
  %val1 = alloca %TName_Option_String*
  %"$indices_buf_273_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_273_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_273_salloc_load", i64 16)
  %"$indices_buf_273_salloc" = bitcast i8* %"$indices_buf_273_salloc_salloc" to [16 x i8]*
  %"$indices_buf_273" = bitcast [16 x i8]* %"$indices_buf_273_salloc" to i8*
  %"$key1_274" = load %String, %String* %key1
  %"$indices_gep_275" = getelementptr i8, i8* %"$indices_buf_273", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_275" to %String*
  store %String %"$key1_274", %String* %indices_cast
  %"$execptr_load_276" = load i8*, i8** @_execptr
  %"$val1_278" = call i8* @_fetch_field(i8* %"$execptr_load_276", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_277", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_273", i32 1)
  %"$val1_279" = bitcast i8* %"$val1_278" to %TName_Option_String*
  store %TName_Option_String* %"$val1_279", %TName_Option_String** %val1
  %"$val1_281" = load %TName_Option_String*, %TName_Option_String** %val1
  %"$val1_tag_282" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_281", i32 0, i32 0
  %"$val1_tag_283" = load i8, i8* %"$val1_tag_282"
  switch i8 %"$val1_tag_283", label %"$empty_default_284" [
    i8 0, label %"$Some_285"
    i8 1, label %"$None_306"
  ]

"$Some_285":                                      ; preds = %entry
  %"$val1_286" = bitcast %TName_Option_String* %"$val1_281" to %CName_Some_String*
  %"$val_gep_287" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_286", i32 0, i32 1
  %"$val_load_288" = load %String, %String* %"$val_gep_287"
  %val = alloca %String
  store %String %"$val_load_288", %String* %val
  %t = alloca %TName_Bool*
  %"$execptr_load_289" = load i8*, i8** @_execptr
  %"$val_290" = load %String, %String* %val
  %"$s_291" = load %String, %String* %s
  %"$eq_call_292" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_289", %String %"$val_290", %String %"$s_291")
  store %TName_Bool* %"$eq_call_292", %TName_Bool** %t
  %"$t_294" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_295" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_294", i32 0, i32 0
  %"$t_tag_296" = load i8, i8* %"$t_tag_295"
  switch i8 %"$t_tag_296", label %"$empty_default_297" [
    i8 1, label %"$False_298"
    i8 0, label %"$True_304"
  ]

"$False_298":                                     ; preds = %"$Some_285"
  %"$t_299" = bitcast %TName_Bool* %"$t_294" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_300", i32 0, i32 0), i32 23 }, %String* %m
  %"$fail_msg__sender_301" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_301"
  %"$tname_302" = load %String, %String* %tname
  %"$m_303" = load %String, %String* %m
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_301", %String %"$tname_302", %String %"$m_303")
  br label %"$matchsucc_293"

"$True_304":                                      ; preds = %"$Some_285"
  %"$t_305" = bitcast %TName_Bool* %"$t_294" to %CName_True*
  br label %"$matchsucc_293"

"$empty_default_297":                             ; preds = %"$Some_285"
  br label %"$matchsucc_293"

"$matchsucc_293":                                 ; preds = %"$True_304", %"$False_298", %"$empty_default_297"
  br label %"$matchsucc_280"

"$None_306":                                      ; preds = %entry
  %"$val1_307" = bitcast %TName_Option_String* %"$val1_281" to %CName_None_String*
  %"$fail__sender_308" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_308"
  %"$tname_309" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_308", %String %"$tname_309")
  br label %"$matchsucc_280"

"$empty_default_284":                             ; preds = %entry
  br label %"$matchsucc_280"

"$matchsucc_280":                                 ; preds = %"$None_306", %"$matchsucc_293", %"$empty_default_284"
  %key2 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_310", i32 0, i32 0), i32 4 }, %String* %key2
  %val2 = alloca %TName_Option_String*
  %"$indices_buf_311_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_311_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_311_salloc_load", i64 16)
  %"$indices_buf_311_salloc" = bitcast i8* %"$indices_buf_311_salloc_salloc" to [16 x i8]*
  %"$indices_buf_311" = bitcast [16 x i8]* %"$indices_buf_311_salloc" to i8*
  %"$key2_312" = load %String, %String* %key2
  %"$indices_gep_313" = getelementptr i8, i8* %"$indices_buf_311", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_313" to %String*
  store %String %"$key2_312", %String* %indices_cast1
  %"$execptr_load_314" = load i8*, i8** @_execptr
  %"$val2_316" = call i8* @_fetch_field(i8* %"$execptr_load_314", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_315", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_311", i32 1)
  %"$val2_317" = bitcast i8* %"$val2_316" to %TName_Option_String*
  store %TName_Option_String* %"$val2_317", %TName_Option_String** %val2
  %"$val2_319" = load %TName_Option_String*, %TName_Option_String** %val2
  %"$val2_tag_320" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_319", i32 0, i32 0
  %"$val2_tag_321" = load i8, i8* %"$val2_tag_320"
  switch i8 %"$val2_tag_321", label %"$empty_default_322" [
    i8 0, label %"$Some_323"
    i8 1, label %"$None_331"
  ]

"$Some_323":                                      ; preds = %"$matchsucc_280"
  %"$val2_324" = bitcast %TName_Option_String* %"$val2_319" to %CName_Some_String*
  %"$$val2_13_gep_325" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_324", i32 0, i32 1
  %"$$val2_13_load_326" = load %String, %String* %"$$val2_13_gep_325"
  %"$val2_13" = alloca %String
  store %String %"$$val2_13_load_326", %String* %"$val2_13"
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_327", i32 0, i32 0), i32 25 }, %String* %m2
  %"$fail_msg__sender_328" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_328"
  %"$tname_329" = load %String, %String* %tname
  %"$m_330" = load %String, %String* %m2
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_328", %String %"$tname_329", %String %"$m_330")
  br label %"$matchsucc_318"

"$None_331":                                      ; preds = %"$matchsucc_280"
  %"$val2_332" = bitcast %TName_Option_String* %"$val2_319" to %CName_None_String*
  br label %"$matchsucc_318"

"$empty_default_322":                             ; preds = %"$matchsucc_280"
  br label %"$matchsucc_318"

"$matchsucc_318":                                 ; preds = %"$None_331", %"$Some_323", %"$empty_default_322"
  %"$indices_buf_333_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_333_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_333_salloc_load", i64 16)
  %"$indices_buf_333_salloc" = bitcast i8* %"$indices_buf_333_salloc_salloc" to [16 x i8]*
  %"$indices_buf_333" = bitcast [16 x i8]* %"$indices_buf_333_salloc" to i8*
  %"$key1_334" = load %String, %String* %key1
  %"$indices_gep_335" = getelementptr i8, i8* %"$indices_buf_333", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_335" to %String*
  store %String %"$key1_334", %String* %indices_cast3
  %"$execptr_load_336" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_336", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_337", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_333", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_339" = getelementptr i8, i8* %0, i32 0
  %"$_amount_340" = bitcast i8* %"$_amount_339" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_340"
  %"$_sender_341" = getelementptr i8, i8* %0, i32 16
  %"$_sender_342" = bitcast i8* %"$_sender_341" to [20 x i8]*
  call void @"$t3_268"(%Uint128 %_amount, [20 x i8]* %"$_sender_342")
  ret void
}

define internal void @"$t4_343"(%Uint128 %_amount, [20 x i8]* %"$_sender_344") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_344"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_345", i32 0, i32 0), i32 2 }, %String* %tname
  %key1 = alloca %String
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_346", i32 0, i32 0), i32 4 }, %String* %key1
  %key1_found = alloca %TName_Bool*
  %"$indices_buf_347_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_347_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_347_salloc_load", i64 16)
  %"$indices_buf_347_salloc" = bitcast i8* %"$indices_buf_347_salloc_salloc" to [16 x i8]*
  %"$indices_buf_347" = bitcast [16 x i8]* %"$indices_buf_347_salloc" to i8*
  %"$key1_348" = load %String, %String* %key1
  %"$indices_gep_349" = getelementptr i8, i8* %"$indices_buf_347", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_349" to %String*
  store %String %"$key1_348", %String* %indices_cast
  %"$execptr_load_350" = load i8*, i8** @_execptr
  %"$key1_found_352" = call i8* @_fetch_field(i8* %"$execptr_load_350", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_351", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_347", i32 0)
  %"$key1_found_353" = bitcast i8* %"$key1_found_352" to %TName_Bool*
  store %TName_Bool* %"$key1_found_353", %TName_Bool** %key1_found
  %"$key1_found_355" = load %TName_Bool*, %TName_Bool** %key1_found
  %"$key1_found_tag_356" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_355", i32 0, i32 0
  %"$key1_found_tag_357" = load i8, i8* %"$key1_found_tag_356"
  switch i8 %"$key1_found_tag_357", label %"$empty_default_358" [
    i8 0, label %"$True_359"
    i8 1, label %"$False_363"
  ]

"$True_359":                                      ; preds = %entry
  %"$key1_found_360" = bitcast %TName_Bool* %"$key1_found_355" to %CName_True*
  %"$fail__sender_361" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_361"
  %"$tname_362" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_361", %String %"$tname_362")
  br label %"$matchsucc_354"

"$False_363":                                     ; preds = %entry
  %"$key1_found_364" = bitcast %TName_Bool* %"$key1_found_355" to %CName_False*
  br label %"$matchsucc_354"

"$empty_default_358":                             ; preds = %entry
  br label %"$matchsucc_354"

"$matchsucc_354":                                 ; preds = %"$False_363", %"$True_359", %"$empty_default_358"
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_365", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_366", i32 0, i32 0), i32 5 }, %String* %key2a
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_367", i32 0, i32 0), i32 3 }, %String* %s
  %"$indices_buf_368_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_368_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_368_salloc_load", i64 32)
  %"$indices_buf_368_salloc" = bitcast i8* %"$indices_buf_368_salloc_salloc" to [32 x i8]*
  %"$indices_buf_368" = bitcast [32 x i8]* %"$indices_buf_368_salloc" to i8*
  %"$key1a_369" = load %String, %String* %key1a
  %"$indices_gep_370" = getelementptr i8, i8* %"$indices_buf_368", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_370" to %String*
  store %String %"$key1a_369", %String* %indices_cast1
  %"$key2a_371" = load %String, %String* %key2a
  %"$indices_gep_372" = getelementptr i8, i8* %"$indices_buf_368", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_372" to %String*
  store %String %"$key2a_371", %String* %indices_cast2
  %"$execptr_load_373" = load i8*, i8** @_execptr
  %"$s_375" = load %String, %String* %s
  %"$update_value_376" = alloca %String
  store %String %"$s_375", %String* %"$update_value_376"
  %"$update_value_377" = bitcast %String* %"$update_value_376" to i8*
  call void @_update_field(i8* %"$execptr_load_373", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_374", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_368", i8* %"$update_value_377")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_379" = getelementptr i8, i8* %0, i32 0
  %"$_amount_380" = bitcast i8* %"$_amount_379" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_380"
  %"$_sender_381" = getelementptr i8, i8* %0, i32 16
  %"$_sender_382" = bitcast i8* %"$_sender_381" to [20 x i8]*
  call void @"$t4_343"(%Uint128 %_amount, [20 x i8]* %"$_sender_382")
  ret void
}

define internal void @"$t5_383"(%Uint128 %_amount, [20 x i8]* %"$_sender_384") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_384"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_385", i32 0, i32 0), i32 2 }, %String* %tname
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_386", i32 0, i32 0), i32 3 }, %String* %s
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_387", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_388", i32 0, i32 0), i32 5 }, %String* %key2a
  %val = alloca %TName_Option_String*
  %"$indices_buf_389_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_389_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_389_salloc_load", i64 32)
  %"$indices_buf_389_salloc" = bitcast i8* %"$indices_buf_389_salloc_salloc" to [32 x i8]*
  %"$indices_buf_389" = bitcast [32 x i8]* %"$indices_buf_389_salloc" to i8*
  %"$key1a_390" = load %String, %String* %key1a
  %"$indices_gep_391" = getelementptr i8, i8* %"$indices_buf_389", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_391" to %String*
  store %String %"$key1a_390", %String* %indices_cast
  %"$key2a_392" = load %String, %String* %key2a
  %"$indices_gep_393" = getelementptr i8, i8* %"$indices_buf_389", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_393" to %String*
  store %String %"$key2a_392", %String* %indices_cast1
  %"$execptr_load_394" = load i8*, i8** @_execptr
  %"$val_396" = call i8* @_fetch_field(i8* %"$execptr_load_394", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_395", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_389", i32 1)
  %"$val_397" = bitcast i8* %"$val_396" to %TName_Option_String*
  store %TName_Option_String* %"$val_397", %TName_Option_String** %val
  %"$val_399" = load %TName_Option_String*, %TName_Option_String** %val
  %"$val_tag_400" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_399", i32 0, i32 0
  %"$val_tag_401" = load i8, i8* %"$val_tag_400"
  switch i8 %"$val_tag_401", label %"$empty_default_402" [
    i8 0, label %"$Some_403"
    i8 1, label %"$None_424"
  ]

"$Some_403":                                      ; preds = %entry
  %"$val_404" = bitcast %TName_Option_String* %"$val_399" to %CName_Some_String*
  %"$v_gep_405" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_404", i32 0, i32 1
  %"$v_load_406" = load %String, %String* %"$v_gep_405"
  %v = alloca %String
  store %String %"$v_load_406", %String* %v
  %t = alloca %TName_Bool*
  %"$execptr_load_407" = load i8*, i8** @_execptr
  %"$v_408" = load %String, %String* %v
  %"$s_409" = load %String, %String* %s
  %"$eq_call_410" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_407", %String %"$v_408", %String %"$s_409")
  store %TName_Bool* %"$eq_call_410", %TName_Bool** %t
  %"$t_412" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_413" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_412", i32 0, i32 0
  %"$t_tag_414" = load i8, i8* %"$t_tag_413"
  switch i8 %"$t_tag_414", label %"$empty_default_415" [
    i8 0, label %"$True_416"
    i8 1, label %"$False_418"
  ]

"$True_416":                                      ; preds = %"$Some_403"
  %"$t_417" = bitcast %TName_Bool* %"$t_412" to %CName_True*
  br label %"$matchsucc_411"

"$False_418":                                     ; preds = %"$Some_403"
  %"$t_419" = bitcast %TName_Bool* %"$t_412" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_420", i32 0, i32 0), i32 23 }, %String* %m
  %"$fail_msg__sender_421" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_421"
  %"$tname_422" = load %String, %String* %tname
  %"$m_423" = load %String, %String* %m
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_421", %String %"$tname_422", %String %"$m_423")
  br label %"$matchsucc_411"

"$empty_default_415":                             ; preds = %"$Some_403"
  br label %"$matchsucc_411"

"$matchsucc_411":                                 ; preds = %"$False_418", %"$True_416", %"$empty_default_415"
  br label %"$matchsucc_398"

"$None_424":                                      ; preds = %entry
  %"$val_425" = bitcast %TName_Option_String* %"$val_399" to %CName_None_String*
  %"$fail__sender_426" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_426"
  %"$tname_427" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_426", %String %"$tname_427")
  br label %"$matchsucc_398"

"$empty_default_402":                             ; preds = %entry
  br label %"$matchsucc_398"

"$matchsucc_398":                                 ; preds = %"$None_424", %"$matchsucc_411", %"$empty_default_402"
  %l_m2 = alloca %Map_String_String*
  %e = alloca %Map_String_String*
  %"$execptr_load_428" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_429" = call i8* @_new_empty_map(i8* %"$execptr_load_428")
  %"$Emp_430" = bitcast i8* %"$_new_empty_map_call_429" to %Map_String_String*
  store %Map_String_String* %"$Emp_430", %Map_String_String** %e
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_431", i32 0, i32 0), i32 5 }, %String* %key2b
  %s1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_432", i32 0, i32 0), i32 3 }, %String* %s1
  %m1 = alloca %Map_String_String*
  %"$execptr_load_433" = load i8*, i8** @_execptr
  %"$e_434" = load %Map_String_String*, %Map_String_String** %e
  %"$$e_434_435" = bitcast %Map_String_String* %"$e_434" to i8*
  %"$put_key2b_436" = alloca %String
  %"$key2b_437" = load %String, %String* %key2b
  store %String %"$key2b_437", %String* %"$put_key2b_436"
  %"$$put_key2b_436_438" = bitcast %String* %"$put_key2b_436" to i8*
  %"$put_s1_439" = alloca %String
  %"$s1_440" = load %String, %String* %s1
  store %String %"$s1_440", %String* %"$put_s1_439"
  %"$$put_s1_439_441" = bitcast %String* %"$put_s1_439" to i8*
  %"$put_call_442" = call i8* @_put(i8* %"$execptr_load_433", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e_434_435", i8* %"$$put_key2b_436_438", i8* %"$$put_s1_439_441")
  %"$_put_443" = bitcast i8* %"$put_call_442" to %Map_String_String*
  store %Map_String_String* %"$_put_443", %Map_String_String** %m1
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_444", i32 0, i32 0), i32 5 }, %String* %key2c
  %s2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_445", i32 0, i32 0), i32 3 }, %String* %s2
  %"$execptr_load_446" = load i8*, i8** @_execptr
  %"$m1_447" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_447_448" = bitcast %Map_String_String* %"$m1_447" to i8*
  %"$put_key2c_449" = alloca %String
  %"$key2c_450" = load %String, %String* %key2c
  store %String %"$key2c_450", %String* %"$put_key2c_449"
  %"$$put_key2c_449_451" = bitcast %String* %"$put_key2c_449" to i8*
  %"$put_s2_452" = alloca %String
  %"$s2_453" = load %String, %String* %s2
  store %String %"$s2_453", %String* %"$put_s2_452"
  %"$$put_s2_452_454" = bitcast %String* %"$put_s2_452" to i8*
  %"$put_call_455" = call i8* @_put(i8* %"$execptr_load_446", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_447_448", i8* %"$$put_key2c_449_451", i8* %"$$put_s2_452_454")
  %"$_put_456" = bitcast i8* %"$put_call_455" to %Map_String_String*
  store %Map_String_String* %"$_put_456", %Map_String_String** %l_m2
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_457", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$indices_buf_458_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_458_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_458_salloc_load", i64 16)
  %"$indices_buf_458_salloc" = bitcast i8* %"$indices_buf_458_salloc_salloc" to [16 x i8]*
  %"$indices_buf_458" = bitcast [16 x i8]* %"$indices_buf_458_salloc" to i8*
  %"$key1b_459" = load %String, %String* %key1b
  %"$indices_gep_460" = getelementptr i8, i8* %"$indices_buf_458", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_460" to %String*
  store %String %"$key1b_459", %String* %indices_cast2
  %"$execptr_load_461" = load i8*, i8** @_execptr
  %"$l_m2_463" = load %Map_String_String*, %Map_String_String** %l_m2
  %"$update_value_464" = bitcast %Map_String_String* %"$l_m2_463" to i8*
  call void @_update_field(i8* %"$execptr_load_461", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_462", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_458", i8* %"$update_value_464")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_466" = getelementptr i8, i8* %0, i32 0
  %"$_amount_467" = bitcast i8* %"$_amount_466" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_467"
  %"$_sender_468" = getelementptr i8, i8* %0, i32 16
  %"$_sender_469" = bitcast i8* %"$_sender_468" to [20 x i8]*
  call void @"$t5_383"(%Uint128 %_amount, [20 x i8]* %"$_sender_469")
  ret void
}

define internal void @"$t6_470"(%Uint128 %_amount, [20 x i8]* %"$_sender_471") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_471"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_472", i32 0, i32 0), i32 2 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_473", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_474", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_475_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_475_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_475_salloc_load", i64 32)
  %"$indices_buf_475_salloc" = bitcast i8* %"$indices_buf_475_salloc_salloc" to [32 x i8]*
  %"$indices_buf_475" = bitcast [32 x i8]* %"$indices_buf_475_salloc" to i8*
  %"$key1a_476" = load %String, %String* %key1a
  %"$indices_gep_477" = getelementptr i8, i8* %"$indices_buf_475", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_477" to %String*
  store %String %"$key1a_476", %String* %indices_cast
  %"$key2a_478" = load %String, %String* %key2a
  %"$indices_gep_479" = getelementptr i8, i8* %"$indices_buf_475", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_479" to %String*
  store %String %"$key2a_478", %String* %indices_cast1
  %"$execptr_load_480" = load i8*, i8** @_execptr
  %"$c1_482" = call i8* @_fetch_field(i8* %"$execptr_load_480", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_481", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_475", i32 1)
  %"$c1_483" = bitcast i8* %"$c1_482" to %TName_Option_String*
  store %TName_Option_String* %"$c1_483", %TName_Option_String** %c1
  %"$c1_485" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_486" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_485", i32 0, i32 0
  %"$c1_tag_487" = load i8, i8* %"$c1_tag_486"
  switch i8 %"$c1_tag_487", label %"$empty_default_488" [
    i8 0, label %"$Some_489"
    i8 1, label %"$None_511"
  ]

"$Some_489":                                      ; preds = %entry
  %"$c1_490" = bitcast %TName_Option_String* %"$c1_485" to %CName_Some_String*
  %"$c_gep_491" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_490", i32 0, i32 1
  %"$c_load_492" = load %String, %String* %"$c_gep_491"
  %c = alloca %String
  store %String %"$c_load_492", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_493", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_494" = load i8*, i8** @_execptr
  %"$c_495" = load %String, %String* %c
  %"$v_496" = load %String, %String* %v
  %"$eq_call_497" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_494", %String %"$c_495", %String %"$v_496")
  store %TName_Bool* %"$eq_call_497", %TName_Bool** %eq
  %"$eq_499" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_500" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_499", i32 0, i32 0
  %"$eq_tag_501" = load i8, i8* %"$eq_tag_500"
  switch i8 %"$eq_tag_501", label %"$empty_default_502" [
    i8 0, label %"$True_503"
    i8 1, label %"$False_505"
  ]

"$True_503":                                      ; preds = %"$Some_489"
  %"$eq_504" = bitcast %TName_Bool* %"$eq_499" to %CName_True*
  br label %"$matchsucc_498"

"$False_505":                                     ; preds = %"$Some_489"
  %"$eq_506" = bitcast %TName_Bool* %"$eq_499" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_507", i32 0, i32 0), i32 31 }, %String* %m
  %"$fail_msg__sender_508" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_508"
  %"$tname_509" = load %String, %String* %tname
  %"$m_510" = load %String, %String* %m
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_508", %String %"$tname_509", %String %"$m_510")
  br label %"$matchsucc_498"

"$empty_default_502":                             ; preds = %"$Some_489"
  br label %"$matchsucc_498"

"$matchsucc_498":                                 ; preds = %"$False_505", %"$True_503", %"$empty_default_502"
  br label %"$matchsucc_484"

"$None_511":                                      ; preds = %entry
  %"$c1_512" = bitcast %TName_Option_String* %"$c1_485" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_513", i32 0, i32 0), i32 21 }, %String* %m2
  %"$fail_msg__sender_514" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_514"
  %"$tname_515" = load %String, %String* %tname
  %"$m_516" = load %String, %String* %m2
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_514", %String %"$tname_515", %String %"$m_516")
  br label %"$matchsucc_484"

"$empty_default_488":                             ; preds = %entry
  br label %"$matchsucc_484"

"$matchsucc_484":                                 ; preds = %"$None_511", %"$matchsucc_498", %"$empty_default_488"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_517", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_518", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$c1_0" = alloca %TName_Option_String*
  %"$indices_buf_519_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_519_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_519_salloc_load", i64 32)
  %"$indices_buf_519_salloc" = bitcast i8* %"$indices_buf_519_salloc_salloc" to [32 x i8]*
  %"$indices_buf_519" = bitcast [32 x i8]* %"$indices_buf_519_salloc" to i8*
  %"$key1b_520" = load %String, %String* %key1b
  %"$indices_gep_521" = getelementptr i8, i8* %"$indices_buf_519", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_521" to %String*
  store %String %"$key1b_520", %String* %indices_cast3
  %"$key2b_522" = load %String, %String* %key2b
  %"$indices_gep_523" = getelementptr i8, i8* %"$indices_buf_519", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_523" to %String*
  store %String %"$key2b_522", %String* %indices_cast4
  %"$execptr_load_524" = load i8*, i8** @_execptr
  %"$$c1_0_526" = call i8* @_fetch_field(i8* %"$execptr_load_524", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_525", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_519", i32 1)
  %"$$c1_0_527" = bitcast i8* %"$$c1_0_526" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_0_527", %TName_Option_String** %"$c1_0"
  %"$$c1_0_529" = load %TName_Option_String*, %TName_Option_String** %"$c1_0"
  %"$$c1_0_tag_530" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_0_529", i32 0, i32 0
  %"$$c1_0_tag_531" = load i8, i8* %"$$c1_0_tag_530"
  switch i8 %"$$c1_0_tag_531", label %"$empty_default_532" [
    i8 0, label %"$Some_533"
    i8 1, label %"$None_555"
  ]

"$Some_533":                                      ; preds = %"$matchsucc_484"
  %"$$c1_0_534" = bitcast %TName_Option_String* %"$$c1_0_529" to %CName_Some_String*
  %"$c_gep_535" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_0_534", i32 0, i32 1
  %"$c_load_536" = load %String, %String* %"$c_gep_535"
  %c5 = alloca %String
  store %String %"$c_load_536", %String* %c5
  %v6 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_537", i32 0, i32 0), i32 3 }, %String* %v6
  %eq7 = alloca %TName_Bool*
  %"$execptr_load_538" = load i8*, i8** @_execptr
  %"$c_539" = load %String, %String* %c5
  %"$v_540" = load %String, %String* %v6
  %"$eq_call_541" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_538", %String %"$c_539", %String %"$v_540")
  store %TName_Bool* %"$eq_call_541", %TName_Bool** %eq7
  %"$eq_543" = load %TName_Bool*, %TName_Bool** %eq7
  %"$eq_tag_544" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_543", i32 0, i32 0
  %"$eq_tag_545" = load i8, i8* %"$eq_tag_544"
  switch i8 %"$eq_tag_545", label %"$empty_default_546" [
    i8 0, label %"$True_547"
    i8 1, label %"$False_549"
  ]

"$True_547":                                      ; preds = %"$Some_533"
  %"$eq_548" = bitcast %TName_Bool* %"$eq_543" to %CName_True*
  br label %"$matchsucc_542"

"$False_549":                                     ; preds = %"$Some_533"
  %"$eq_550" = bitcast %TName_Bool* %"$eq_543" to %CName_False*
  %m8 = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_551", i32 0, i32 0), i32 31 }, %String* %m8
  %"$fail_msg__sender_552" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_552"
  %"$tname_553" = load %String, %String* %tname
  %"$m_554" = load %String, %String* %m8
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_552", %String %"$tname_553", %String %"$m_554")
  br label %"$matchsucc_542"

"$empty_default_546":                             ; preds = %"$Some_533"
  br label %"$matchsucc_542"

"$matchsucc_542":                                 ; preds = %"$False_549", %"$True_547", %"$empty_default_546"
  br label %"$matchsucc_528"

"$None_555":                                      ; preds = %"$matchsucc_484"
  %"$$c1_0_556" = bitcast %TName_Option_String* %"$$c1_0_529" to %CName_None_String*
  %m9 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_557", i32 0, i32 0), i32 21 }, %String* %m9
  %"$fail_msg__sender_558" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_558"
  %"$tname_559" = load %String, %String* %tname
  %"$m_560" = load %String, %String* %m9
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_558", %String %"$tname_559", %String %"$m_560")
  br label %"$matchsucc_528"

"$empty_default_532":                             ; preds = %"$matchsucc_484"
  br label %"$matchsucc_528"

"$matchsucc_528":                                 ; preds = %"$None_555", %"$matchsucc_542", %"$empty_default_532"
  %"$key1b_1" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_561", i32 0, i32 0), i32 5 }, %String* %"$key1b_1"
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_562", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$c1_2" = alloca %TName_Option_String*
  %"$indices_buf_563_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_563_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_563_salloc_load", i64 32)
  %"$indices_buf_563_salloc" = bitcast i8* %"$indices_buf_563_salloc_salloc" to [32 x i8]*
  %"$indices_buf_563" = bitcast [32 x i8]* %"$indices_buf_563_salloc" to i8*
  %"$$key1b_1_564" = load %String, %String* %"$key1b_1"
  %"$indices_gep_565" = getelementptr i8, i8* %"$indices_buf_563", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_565" to %String*
  store %String %"$$key1b_1_564", %String* %indices_cast10
  %"$key2c_566" = load %String, %String* %key2c
  %"$indices_gep_567" = getelementptr i8, i8* %"$indices_buf_563", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_567" to %String*
  store %String %"$key2c_566", %String* %indices_cast11
  %"$execptr_load_568" = load i8*, i8** @_execptr
  %"$$c1_2_570" = call i8* @_fetch_field(i8* %"$execptr_load_568", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_569", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_563", i32 1)
  %"$$c1_2_571" = bitcast i8* %"$$c1_2_570" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_571", %TName_Option_String** %"$c1_2"
  %"$$c1_2_573" = load %TName_Option_String*, %TName_Option_String** %"$c1_2"
  %"$$c1_2_tag_574" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_573", i32 0, i32 0
  %"$$c1_2_tag_575" = load i8, i8* %"$$c1_2_tag_574"
  switch i8 %"$$c1_2_tag_575", label %"$empty_default_576" [
    i8 0, label %"$Some_577"
    i8 1, label %"$None_599"
  ]

"$Some_577":                                      ; preds = %"$matchsucc_528"
  %"$$c1_2_578" = bitcast %TName_Option_String* %"$$c1_2_573" to %CName_Some_String*
  %"$c_gep_579" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_578", i32 0, i32 1
  %"$c_load_580" = load %String, %String* %"$c_gep_579"
  %c12 = alloca %String
  store %String %"$c_load_580", %String* %c12
  %v13 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_581", i32 0, i32 0), i32 3 }, %String* %v13
  %eq14 = alloca %TName_Bool*
  %"$execptr_load_582" = load i8*, i8** @_execptr
  %"$c_583" = load %String, %String* %c12
  %"$v_584" = load %String, %String* %v13
  %"$eq_call_585" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_582", %String %"$c_583", %String %"$v_584")
  store %TName_Bool* %"$eq_call_585", %TName_Bool** %eq14
  %"$eq_587" = load %TName_Bool*, %TName_Bool** %eq14
  %"$eq_tag_588" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_587", i32 0, i32 0
  %"$eq_tag_589" = load i8, i8* %"$eq_tag_588"
  switch i8 %"$eq_tag_589", label %"$empty_default_590" [
    i8 0, label %"$True_591"
    i8 1, label %"$False_593"
  ]

"$True_591":                                      ; preds = %"$Some_577"
  %"$eq_592" = bitcast %TName_Bool* %"$eq_587" to %CName_True*
  br label %"$matchsucc_586"

"$False_593":                                     ; preds = %"$Some_577"
  %"$eq_594" = bitcast %TName_Bool* %"$eq_587" to %CName_False*
  %m15 = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_595", i32 0, i32 0), i32 31 }, %String* %m15
  %"$fail_msg__sender_596" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_596"
  %"$tname_597" = load %String, %String* %tname
  %"$m_598" = load %String, %String* %m15
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_596", %String %"$tname_597", %String %"$m_598")
  br label %"$matchsucc_586"

"$empty_default_590":                             ; preds = %"$Some_577"
  br label %"$matchsucc_586"

"$matchsucc_586":                                 ; preds = %"$False_593", %"$True_591", %"$empty_default_590"
  br label %"$matchsucc_572"

"$None_599":                                      ; preds = %"$matchsucc_528"
  %"$$c1_2_600" = bitcast %TName_Option_String* %"$$c1_2_573" to %CName_None_String*
  %m16 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_601", i32 0, i32 0), i32 21 }, %String* %m16
  %"$fail_msg__sender_602" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_602"
  %"$tname_603" = load %String, %String* %tname
  %"$m_604" = load %String, %String* %m16
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_602", %String %"$tname_603", %String %"$m_604")
  br label %"$matchsucc_572"

"$empty_default_576":                             ; preds = %"$matchsucc_528"
  br label %"$matchsucc_572"

"$matchsucc_572":                                 ; preds = %"$None_599", %"$matchsucc_586", %"$empty_default_576"
  %"$indices_buf_605_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_605_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_605_salloc_load", i64 16)
  %"$indices_buf_605_salloc" = bitcast i8* %"$indices_buf_605_salloc_salloc" to [16 x i8]*
  %"$indices_buf_605" = bitcast [16 x i8]* %"$indices_buf_605_salloc" to i8*
  %"$$key1b_1_606" = load %String, %String* %"$key1b_1"
  %"$indices_gep_607" = getelementptr i8, i8* %"$indices_buf_605", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_607" to %String*
  store %String %"$$key1b_1_606", %String* %indices_cast17
  %"$execptr_load_608" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_608", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_609", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_605", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_611" = getelementptr i8, i8* %0, i32 0
  %"$_amount_612" = bitcast i8* %"$_amount_611" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_612"
  %"$_sender_613" = getelementptr i8, i8* %0, i32 16
  %"$_sender_614" = bitcast i8* %"$_sender_613" to [20 x i8]*
  call void @"$t6_470"(%Uint128 %_amount, [20 x i8]* %"$_sender_614")
  ret void
}

define internal void @"$t7_615"(%Uint128 %_amount, [20 x i8]* %"$_sender_616") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_616"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_617", i32 0, i32 0), i32 2 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_618", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_619", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_620_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_620_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_620_salloc_load", i64 32)
  %"$indices_buf_620_salloc" = bitcast i8* %"$indices_buf_620_salloc_salloc" to [32 x i8]*
  %"$indices_buf_620" = bitcast [32 x i8]* %"$indices_buf_620_salloc" to i8*
  %"$key1a_621" = load %String, %String* %key1a
  %"$indices_gep_622" = getelementptr i8, i8* %"$indices_buf_620", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_622" to %String*
  store %String %"$key1a_621", %String* %indices_cast
  %"$key2a_623" = load %String, %String* %key2a
  %"$indices_gep_624" = getelementptr i8, i8* %"$indices_buf_620", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_624" to %String*
  store %String %"$key2a_623", %String* %indices_cast1
  %"$execptr_load_625" = load i8*, i8** @_execptr
  %"$c1_627" = call i8* @_fetch_field(i8* %"$execptr_load_625", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_626", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_620", i32 1)
  %"$c1_628" = bitcast i8* %"$c1_627" to %TName_Option_String*
  store %TName_Option_String* %"$c1_628", %TName_Option_String** %c1
  %"$c1_630" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_631" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_630", i32 0, i32 0
  %"$c1_tag_632" = load i8, i8* %"$c1_tag_631"
  switch i8 %"$c1_tag_632", label %"$empty_default_633" [
    i8 0, label %"$Some_634"
    i8 1, label %"$None_656"
  ]

"$Some_634":                                      ; preds = %entry
  %"$c1_635" = bitcast %TName_Option_String* %"$c1_630" to %CName_Some_String*
  %"$c_gep_636" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_635", i32 0, i32 1
  %"$c_load_637" = load %String, %String* %"$c_gep_636"
  %c = alloca %String
  store %String %"$c_load_637", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_638", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_639" = load i8*, i8** @_execptr
  %"$c_640" = load %String, %String* %c
  %"$v_641" = load %String, %String* %v
  %"$eq_call_642" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_639", %String %"$c_640", %String %"$v_641")
  store %TName_Bool* %"$eq_call_642", %TName_Bool** %eq
  %"$eq_644" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_645" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_644", i32 0, i32 0
  %"$eq_tag_646" = load i8, i8* %"$eq_tag_645"
  switch i8 %"$eq_tag_646", label %"$empty_default_647" [
    i8 0, label %"$True_648"
    i8 1, label %"$False_650"
  ]

"$True_648":                                      ; preds = %"$Some_634"
  %"$eq_649" = bitcast %TName_Bool* %"$eq_644" to %CName_True*
  br label %"$matchsucc_643"

"$False_650":                                     ; preds = %"$Some_634"
  %"$eq_651" = bitcast %TName_Bool* %"$eq_644" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_652", i32 0, i32 0), i32 31 }, %String* %m
  %"$fail_msg__sender_653" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_653"
  %"$tname_654" = load %String, %String* %tname
  %"$m_655" = load %String, %String* %m
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_653", %String %"$tname_654", %String %"$m_655")
  br label %"$matchsucc_643"

"$empty_default_647":                             ; preds = %"$Some_634"
  br label %"$matchsucc_643"

"$matchsucc_643":                                 ; preds = %"$False_650", %"$True_648", %"$empty_default_647"
  br label %"$matchsucc_629"

"$None_656":                                      ; preds = %entry
  %"$c1_657" = bitcast %TName_Option_String* %"$c1_630" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_658", i32 0, i32 0), i32 21 }, %String* %m2
  %"$fail_msg__sender_659" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_659"
  %"$tname_660" = load %String, %String* %tname
  %"$m_661" = load %String, %String* %m2
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_659", %String %"$tname_660", %String %"$m_661")
  br label %"$matchsucc_629"

"$empty_default_633":                             ; preds = %entry
  br label %"$matchsucc_629"

"$matchsucc_629":                                 ; preds = %"$None_656", %"$matchsucc_643", %"$empty_default_633"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_662", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$c1_3" = alloca %"TName_Option_Map_(String)_(String)"*
  %"$indices_buf_663_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_663_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_663_salloc_load", i64 16)
  %"$indices_buf_663_salloc" = bitcast i8* %"$indices_buf_663_salloc_salloc" to [16 x i8]*
  %"$indices_buf_663" = bitcast [16 x i8]* %"$indices_buf_663_salloc" to i8*
  %"$key1b_664" = load %String, %String* %key1b
  %"$indices_gep_665" = getelementptr i8, i8* %"$indices_buf_663", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_665" to %String*
  store %String %"$key1b_664", %String* %indices_cast3
  %"$execptr_load_666" = load i8*, i8** @_execptr
  %"$$c1_3_668" = call i8* @_fetch_field(i8* %"$execptr_load_666", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_667", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_663", i32 1)
  %"$$c1_3_669" = bitcast i8* %"$$c1_3_668" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_3_669", %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$c1_3_671" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$c1_3_tag_672" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_3_671", i32 0, i32 0
  %"$$c1_3_tag_673" = load i8, i8* %"$$c1_3_tag_672"
  switch i8 %"$$c1_3_tag_673", label %"$empty_default_674" [
    i8 0, label %"$Some_675"
    i8 1, label %"$None_683"
  ]

"$Some_675":                                      ; preds = %"$matchsucc_629"
  %"$$c1_3_676" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_671" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_3_16_gep_677" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_3_676", i32 0, i32 1
  %"$$$c1_3_16_load_678" = load %Map_String_String*, %Map_String_String** %"$$$c1_3_16_gep_677"
  %"$$c1_3_16" = alloca %Map_String_String*
  store %Map_String_String* %"$$$c1_3_16_load_678", %Map_String_String** %"$$c1_3_16"
  %m4 = alloca %String
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_679", i32 0, i32 0), i32 36 }, %String* %m4
  %"$fail_msg__sender_680" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_680"
  %"$tname_681" = load %String, %String* %tname
  %"$m_682" = load %String, %String* %m4
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_680", %String %"$tname_681", %String %"$m_682")
  br label %"$matchsucc_670"

"$None_683":                                      ; preds = %"$matchsucc_629"
  %"$$c1_3_684" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_671" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_670"

"$empty_default_674":                             ; preds = %"$matchsucc_629"
  br label %"$matchsucc_670"

"$matchsucc_670":                                 ; preds = %"$None_683", %"$Some_675", %"$empty_default_674"
  %"$key1b_4" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_685", i32 0, i32 0), i32 5 }, %String* %"$key1b_4"
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_686", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$c1_5" = alloca %TName_Option_String*
  %"$indices_buf_687_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_687_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_687_salloc_load", i64 32)
  %"$indices_buf_687_salloc" = bitcast i8* %"$indices_buf_687_salloc_salloc" to [32 x i8]*
  %"$indices_buf_687" = bitcast [32 x i8]* %"$indices_buf_687_salloc" to i8*
  %"$$key1b_4_688" = load %String, %String* %"$key1b_4"
  %"$indices_gep_689" = getelementptr i8, i8* %"$indices_buf_687", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_689" to %String*
  store %String %"$$key1b_4_688", %String* %indices_cast5
  %"$key2b_690" = load %String, %String* %key2b
  %"$indices_gep_691" = getelementptr i8, i8* %"$indices_buf_687", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_691" to %String*
  store %String %"$key2b_690", %String* %indices_cast6
  %"$execptr_load_692" = load i8*, i8** @_execptr
  %"$$c1_5_694" = call i8* @_fetch_field(i8* %"$execptr_load_692", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_693", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_687", i32 1)
  %"$$c1_5_695" = bitcast i8* %"$$c1_5_694" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_5_695", %TName_Option_String** %"$c1_5"
  %"$$c1_5_697" = load %TName_Option_String*, %TName_Option_String** %"$c1_5"
  %"$$c1_5_tag_698" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_5_697", i32 0, i32 0
  %"$$c1_5_tag_699" = load i8, i8* %"$$c1_5_tag_698"
  switch i8 %"$$c1_5_tag_699", label %"$empty_default_700" [
    i8 0, label %"$Some_701"
    i8 1, label %"$None_709"
  ]

"$Some_701":                                      ; preds = %"$matchsucc_670"
  %"$$c1_5_702" = bitcast %TName_Option_String* %"$$c1_5_697" to %CName_Some_String*
  %"$$$c1_5_15_gep_703" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_5_702", i32 0, i32 1
  %"$$$c1_5_15_load_704" = load %String, %String* %"$$$c1_5_15_gep_703"
  %"$$c1_5_15" = alloca %String
  store %String %"$$$c1_5_15_load_704", %String* %"$$c1_5_15"
  %m7 = alloca %String
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_705", i32 0, i32 0), i32 42 }, %String* %m7
  %"$fail_msg__sender_706" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_706"
  %"$tname_707" = load %String, %String* %tname
  %"$m_708" = load %String, %String* %m7
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_706", %String %"$tname_707", %String %"$m_708")
  br label %"$matchsucc_696"

"$None_709":                                      ; preds = %"$matchsucc_670"
  %"$$c1_5_710" = bitcast %TName_Option_String* %"$$c1_5_697" to %CName_None_String*
  br label %"$matchsucc_696"

"$empty_default_700":                             ; preds = %"$matchsucc_670"
  br label %"$matchsucc_696"

"$matchsucc_696":                                 ; preds = %"$None_709", %"$Some_701", %"$empty_default_700"
  %"$key1b_6" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_711", i32 0, i32 0), i32 5 }, %String* %"$key1b_6"
  %key2d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_712", i32 0, i32 0), i32 5 }, %String* %key2d
  %"$c1_7" = alloca %TName_Option_String*
  %"$indices_buf_713_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_713_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_713_salloc_load", i64 32)
  %"$indices_buf_713_salloc" = bitcast i8* %"$indices_buf_713_salloc_salloc" to [32 x i8]*
  %"$indices_buf_713" = bitcast [32 x i8]* %"$indices_buf_713_salloc" to i8*
  %"$$key1b_6_714" = load %String, %String* %"$key1b_6"
  %"$indices_gep_715" = getelementptr i8, i8* %"$indices_buf_713", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_715" to %String*
  store %String %"$$key1b_6_714", %String* %indices_cast8
  %"$key2d_716" = load %String, %String* %key2d
  %"$indices_gep_717" = getelementptr i8, i8* %"$indices_buf_713", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_717" to %String*
  store %String %"$key2d_716", %String* %indices_cast9
  %"$execptr_load_718" = load i8*, i8** @_execptr
  %"$$c1_7_720" = call i8* @_fetch_field(i8* %"$execptr_load_718", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_719", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_713", i32 1)
  %"$$c1_7_721" = bitcast i8* %"$$c1_7_720" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_721", %TName_Option_String** %"$c1_7"
  %"$$c1_7_723" = load %TName_Option_String*, %TName_Option_String** %"$c1_7"
  %"$$c1_7_tag_724" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_723", i32 0, i32 0
  %"$$c1_7_tag_725" = load i8, i8* %"$$c1_7_tag_724"
  switch i8 %"$$c1_7_tag_725", label %"$empty_default_726" [
    i8 0, label %"$Some_727"
    i8 1, label %"$None_735"
  ]

"$Some_727":                                      ; preds = %"$matchsucc_696"
  %"$$c1_7_728" = bitcast %TName_Option_String* %"$$c1_7_723" to %CName_Some_String*
  %"$$$c1_7_14_gep_729" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_728", i32 0, i32 1
  %"$$$c1_7_14_load_730" = load %String, %String* %"$$$c1_7_14_gep_729"
  %"$$c1_7_14" = alloca %String
  store %String %"$$$c1_7_14_load_730", %String* %"$$c1_7_14"
  %m10 = alloca %String
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_731", i32 0, i32 0), i32 42 }, %String* %m10
  %"$fail_msg__sender_732" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_732"
  %"$tname_733" = load %String, %String* %tname
  %"$m_734" = load %String, %String* %m10
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_732", %String %"$tname_733", %String %"$m_734")
  br label %"$matchsucc_722"

"$None_735":                                      ; preds = %"$matchsucc_696"
  %"$$c1_7_736" = bitcast %TName_Option_String* %"$$c1_7_723" to %CName_None_String*
  br label %"$matchsucc_722"

"$empty_default_726":                             ; preds = %"$matchsucc_696"
  br label %"$matchsucc_722"

"$matchsucc_722":                                 ; preds = %"$None_735", %"$Some_727", %"$empty_default_726"
  %"$key1b_8" = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_737", i32 0, i32 0), i32 5 }, %String* %"$key1b_8"
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_738", i32 0, i32 0), i32 5 }, %String* %key2c
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_739", i32 0, i32 0), i32 3 }, %String* %s
  %"$indices_buf_740_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_740_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_740_salloc_load", i64 32)
  %"$indices_buf_740_salloc" = bitcast i8* %"$indices_buf_740_salloc_salloc" to [32 x i8]*
  %"$indices_buf_740" = bitcast [32 x i8]* %"$indices_buf_740_salloc" to i8*
  %"$$key1b_8_741" = load %String, %String* %"$key1b_8"
  %"$indices_gep_742" = getelementptr i8, i8* %"$indices_buf_740", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_742" to %String*
  store %String %"$$key1b_8_741", %String* %indices_cast11
  %"$key2c_743" = load %String, %String* %key2c
  %"$indices_gep_744" = getelementptr i8, i8* %"$indices_buf_740", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_744" to %String*
  store %String %"$key2c_743", %String* %indices_cast12
  %"$execptr_load_745" = load i8*, i8** @_execptr
  %"$s_747" = load %String, %String* %s
  %"$update_value_748" = alloca %String
  store %String %"$s_747", %String* %"$update_value_748"
  %"$update_value_749" = bitcast %String* %"$update_value_748" to i8*
  call void @_update_field(i8* %"$execptr_load_745", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_746", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_740", i8* %"$update_value_749")
  ret void
}

define void @t7(i8* %0) {
entry:
  %"$_amount_751" = getelementptr i8, i8* %0, i32 0
  %"$_amount_752" = bitcast i8* %"$_amount_751" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_752"
  %"$_sender_753" = getelementptr i8, i8* %0, i32 16
  %"$_sender_754" = bitcast i8* %"$_sender_753" to [20 x i8]*
  call void @"$t7_615"(%Uint128 %_amount, [20 x i8]* %"$_sender_754")
  ret void
}

define internal void @"$t8_755"(%Uint128 %_amount, [20 x i8]* %"$_sender_756") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_756"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_757", i32 0, i32 0), i32 2 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_758", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_759", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_760_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_760_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_760_salloc_load", i64 32)
  %"$indices_buf_760_salloc" = bitcast i8* %"$indices_buf_760_salloc_salloc" to [32 x i8]*
  %"$indices_buf_760" = bitcast [32 x i8]* %"$indices_buf_760_salloc" to i8*
  %"$key1a_761" = load %String, %String* %key1a
  %"$indices_gep_762" = getelementptr i8, i8* %"$indices_buf_760", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_762" to %String*
  store %String %"$key1a_761", %String* %indices_cast
  %"$key2a_763" = load %String, %String* %key2a
  %"$indices_gep_764" = getelementptr i8, i8* %"$indices_buf_760", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_764" to %String*
  store %String %"$key2a_763", %String* %indices_cast1
  %"$execptr_load_765" = load i8*, i8** @_execptr
  %"$c1_767" = call i8* @_fetch_field(i8* %"$execptr_load_765", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_766", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_760", i32 1)
  %"$c1_768" = bitcast i8* %"$c1_767" to %TName_Option_String*
  store %TName_Option_String* %"$c1_768", %TName_Option_String** %c1
  %"$c1_770" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_771" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_770", i32 0, i32 0
  %"$c1_tag_772" = load i8, i8* %"$c1_tag_771"
  switch i8 %"$c1_tag_772", label %"$empty_default_773" [
    i8 0, label %"$Some_774"
    i8 1, label %"$None_796"
  ]

"$Some_774":                                      ; preds = %entry
  %"$c1_775" = bitcast %TName_Option_String* %"$c1_770" to %CName_Some_String*
  %"$c_gep_776" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_775", i32 0, i32 1
  %"$c_load_777" = load %String, %String* %"$c_gep_776"
  %c = alloca %String
  store %String %"$c_load_777", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_778", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_779" = load i8*, i8** @_execptr
  %"$c_780" = load %String, %String* %c
  %"$v_781" = load %String, %String* %v
  %"$eq_call_782" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_779", %String %"$c_780", %String %"$v_781")
  store %TName_Bool* %"$eq_call_782", %TName_Bool** %eq
  %"$eq_784" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_785" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_784", i32 0, i32 0
  %"$eq_tag_786" = load i8, i8* %"$eq_tag_785"
  switch i8 %"$eq_tag_786", label %"$empty_default_787" [
    i8 0, label %"$True_788"
    i8 1, label %"$False_790"
  ]

"$True_788":                                      ; preds = %"$Some_774"
  %"$eq_789" = bitcast %TName_Bool* %"$eq_784" to %CName_True*
  br label %"$matchsucc_783"

"$False_790":                                     ; preds = %"$Some_774"
  %"$eq_791" = bitcast %TName_Bool* %"$eq_784" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_792", i32 0, i32 0), i32 31 }, %String* %m
  %"$fail_msg__sender_793" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_793"
  %"$tname_794" = load %String, %String* %tname
  %"$m_795" = load %String, %String* %m
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_793", %String %"$tname_794", %String %"$m_795")
  br label %"$matchsucc_783"

"$empty_default_787":                             ; preds = %"$Some_774"
  br label %"$matchsucc_783"

"$matchsucc_783":                                 ; preds = %"$False_790", %"$True_788", %"$empty_default_787"
  br label %"$matchsucc_769"

"$None_796":                                      ; preds = %entry
  %"$c1_797" = bitcast %TName_Option_String* %"$c1_770" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_798", i32 0, i32 0), i32 21 }, %String* %m2
  %"$fail_msg__sender_799" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_799"
  %"$tname_800" = load %String, %String* %tname
  %"$m_801" = load %String, %String* %m2
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_799", %String %"$tname_800", %String %"$m_801")
  br label %"$matchsucc_769"

"$empty_default_773":                             ; preds = %entry
  br label %"$matchsucc_769"

"$matchsucc_769":                                 ; preds = %"$None_796", %"$matchsucc_783", %"$empty_default_773"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_802", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_803", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$c1_9" = alloca %TName_Option_String*
  %"$indices_buf_804_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_804_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_804_salloc_load", i64 32)
  %"$indices_buf_804_salloc" = bitcast i8* %"$indices_buf_804_salloc_salloc" to [32 x i8]*
  %"$indices_buf_804" = bitcast [32 x i8]* %"$indices_buf_804_salloc" to i8*
  %"$key1b_805" = load %String, %String* %key1b
  %"$indices_gep_806" = getelementptr i8, i8* %"$indices_buf_804", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_806" to %String*
  store %String %"$key1b_805", %String* %indices_cast3
  %"$key2c_807" = load %String, %String* %key2c
  %"$indices_gep_808" = getelementptr i8, i8* %"$indices_buf_804", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_808" to %String*
  store %String %"$key2c_807", %String* %indices_cast4
  %"$execptr_load_809" = load i8*, i8** @_execptr
  %"$$c1_9_811" = call i8* @_fetch_field(i8* %"$execptr_load_809", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_810", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_804", i32 1)
  %"$$c1_9_812" = bitcast i8* %"$$c1_9_811" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_812", %TName_Option_String** %"$c1_9"
  %"$$c1_9_814" = load %TName_Option_String*, %TName_Option_String** %"$c1_9"
  %"$$c1_9_tag_815" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_814", i32 0, i32 0
  %"$$c1_9_tag_816" = load i8, i8* %"$$c1_9_tag_815"
  switch i8 %"$$c1_9_tag_816", label %"$empty_default_817" [
    i8 0, label %"$Some_818"
    i8 1, label %"$None_840"
  ]

"$Some_818":                                      ; preds = %"$matchsucc_769"
  %"$$c1_9_819" = bitcast %TName_Option_String* %"$$c1_9_814" to %CName_Some_String*
  %"$c_gep_820" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_819", i32 0, i32 1
  %"$c_load_821" = load %String, %String* %"$c_gep_820"
  %c5 = alloca %String
  store %String %"$c_load_821", %String* %c5
  %v6 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_822", i32 0, i32 0), i32 3 }, %String* %v6
  %eq7 = alloca %TName_Bool*
  %"$execptr_load_823" = load i8*, i8** @_execptr
  %"$c_824" = load %String, %String* %c5
  %"$v_825" = load %String, %String* %v6
  %"$eq_call_826" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_823", %String %"$c_824", %String %"$v_825")
  store %TName_Bool* %"$eq_call_826", %TName_Bool** %eq7
  %"$eq_828" = load %TName_Bool*, %TName_Bool** %eq7
  %"$eq_tag_829" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_828", i32 0, i32 0
  %"$eq_tag_830" = load i8, i8* %"$eq_tag_829"
  switch i8 %"$eq_tag_830", label %"$empty_default_831" [
    i8 0, label %"$True_832"
    i8 1, label %"$False_834"
  ]

"$True_832":                                      ; preds = %"$Some_818"
  %"$eq_833" = bitcast %TName_Bool* %"$eq_828" to %CName_True*
  br label %"$matchsucc_827"

"$False_834":                                     ; preds = %"$Some_818"
  %"$eq_835" = bitcast %TName_Bool* %"$eq_828" to %CName_False*
  %m8 = alloca %String
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_836", i32 0, i32 0), i32 31 }, %String* %m8
  %"$fail_msg__sender_837" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_837"
  %"$tname_838" = load %String, %String* %tname
  %"$m_839" = load %String, %String* %m8
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_837", %String %"$tname_838", %String %"$m_839")
  br label %"$matchsucc_827"

"$empty_default_831":                             ; preds = %"$Some_818"
  br label %"$matchsucc_827"

"$matchsucc_827":                                 ; preds = %"$False_834", %"$True_832", %"$empty_default_831"
  br label %"$matchsucc_813"

"$None_840":                                      ; preds = %"$matchsucc_769"
  %"$$c1_9_841" = bitcast %TName_Option_String* %"$$c1_9_814" to %CName_None_String*
  %m9 = alloca %String
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_842", i32 0, i32 0), i32 21 }, %String* %m9
  %"$fail_msg__sender_843" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_843"
  %"$tname_844" = load %String, %String* %tname
  %"$m_845" = load %String, %String* %m9
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_843", %String %"$tname_844", %String %"$m_845")
  br label %"$matchsucc_813"

"$empty_default_817":                             ; preds = %"$matchsucc_769"
  br label %"$matchsucc_813"

"$matchsucc_813":                                 ; preds = %"$None_840", %"$matchsucc_827", %"$empty_default_817"
  %em = alloca %Map_String_String*
  %"$execptr_load_846" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_847" = call i8* @_new_empty_map(i8* %"$execptr_load_846")
  %"$Emp_848" = bitcast i8* %"$_new_empty_map_call_847" to %Map_String_String*
  store %Map_String_String* %"$Emp_848", %Map_String_String** %em
  %"$execptr_load_849" = load i8*, i8** @_execptr
  %"$em_851" = load %Map_String_String*, %Map_String_String** %em
  %"$update_value_852" = bitcast %Map_String_String* %"$em_851" to i8*
  call void @_update_field(i8* %"$execptr_load_849", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_850", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_852")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_854" = getelementptr i8, i8* %0, i32 0
  %"$_amount_855" = bitcast i8* %"$_amount_854" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_855"
  %"$_sender_856" = getelementptr i8, i8* %0, i32 16
  %"$_sender_857" = bitcast i8* %"$_sender_856" to [20 x i8]*
  call void @"$t8_755"(%Uint128 %_amount, [20 x i8]* %"$_sender_857")
  ret void
}

define internal void @"$t9_858"(%Uint128 %_amount, [20 x i8]* %"$_sender_859") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_859"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_860", i32 0, i32 0), i32 2 }, %String* %tname
  %m1 = alloca %Map_String_String*
  %"$execptr_load_861" = load i8*, i8** @_execptr
  %"$m1_863" = call i8* @_fetch_field(i8* %"$execptr_load_861", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_862", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_864" = bitcast i8* %"$m1_863" to %Map_String_String*
  store %Map_String_String* %"$m1_864", %Map_String_String** %m1
  %m1_size = alloca %Uint32
  %"$m1_865" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_865_866" = bitcast %Map_String_String* %"$m1_865" to i8*
  %"$size_call_867" = call %Uint32 @_size(i8* %"$$m1_865_866")
  store %Uint32 %"$size_call_867", %Uint32* %m1_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_868" = load i8*, i8** @_execptr
  %"$m1_size_869" = load %Uint32, %Uint32* %m1_size
  %"$zero_870" = load %Uint32, %Uint32* %zero
  %"$eq_call_871" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_868", %Uint32 %"$m1_size_869", %Uint32 %"$zero_870")
  store %TName_Bool* %"$eq_call_871", %TName_Bool** %is_empty
  %"$is_empty_873" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_874" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_873", i32 0, i32 0
  %"$is_empty_tag_875" = load i8, i8* %"$is_empty_tag_874"
  switch i8 %"$is_empty_tag_875", label %"$empty_default_876" [
    i8 0, label %"$True_877"
    i8 1, label %"$False_879"
  ]

"$True_877":                                      ; preds = %entry
  %"$is_empty_878" = bitcast %TName_Bool* %"$is_empty_873" to %CName_True*
  br label %"$matchsucc_872"

"$False_879":                                     ; preds = %entry
  %"$is_empty_880" = bitcast %TName_Bool* %"$is_empty_873" to %CName_False*
  %"$fail__sender_881" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_881"
  %"$tname_882" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_881", %String %"$tname_882")
  br label %"$matchsucc_872"

"$empty_default_876":                             ; preds = %entry
  br label %"$matchsucc_872"

"$matchsucc_872":                                 ; preds = %"$False_879", %"$True_877", %"$empty_default_876"
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_883", i32 0, i32 0), i32 5 }, %String* %key1a
  %val = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_884", i32 0, i32 0), i32 3 }, %String* %val
  %"$m1_10" = alloca %Map_String_String*
  %"$execptr_load_885" = load i8*, i8** @_execptr
  %"$m1_886" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_886_887" = bitcast %Map_String_String* %"$m1_886" to i8*
  %"$put_key1a_888" = alloca %String
  %"$key1a_889" = load %String, %String* %key1a
  store %String %"$key1a_889", %String* %"$put_key1a_888"
  %"$$put_key1a_888_890" = bitcast %String* %"$put_key1a_888" to i8*
  %"$put_val_891" = alloca %String
  %"$val_892" = load %String, %String* %val
  store %String %"$val_892", %String* %"$put_val_891"
  %"$$put_val_891_893" = bitcast %String* %"$put_val_891" to i8*
  %"$put_call_894" = call i8* @_put(i8* %"$execptr_load_885", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_886_887", i8* %"$$put_key1a_888_890", i8* %"$$put_val_891_893")
  %"$_put_895" = bitcast i8* %"$put_call_894" to %Map_String_String*
  store %Map_String_String* %"$_put_895", %Map_String_String** %"$m1_10"
  %"$execptr_load_896" = load i8*, i8** @_execptr
  %"$$m1_10_898" = load %Map_String_String*, %Map_String_String** %"$m1_10"
  %"$update_value_899" = bitcast %Map_String_String* %"$$m1_10_898" to i8*
  call void @_update_field(i8* %"$execptr_load_896", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_897", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_899")
  ret void
}

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_901" = getelementptr i8, i8* %0, i32 0
  %"$_amount_902" = bitcast i8* %"$_amount_901" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_902"
  %"$_sender_903" = getelementptr i8, i8* %0, i32 16
  %"$_sender_904" = bitcast i8* %"$_sender_903" to [20 x i8]*
  call void @"$t9_858"(%Uint128 %_amount, [20 x i8]* %"$_sender_904")
  ret void
}

define internal void @"$t10_905"(%Uint128 %_amount, [20 x i8]* %"$_sender_906") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_906"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_907", i32 0, i32 0), i32 3 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_908", i32 0, i32 0), i32 5 }, %String* %key1a
  %m1 = alloca %Map_String_String*
  %"$execptr_load_909" = load i8*, i8** @_execptr
  %"$m1_911" = call i8* @_fetch_field(i8* %"$execptr_load_909", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_910", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_912" = bitcast i8* %"$m1_911" to %Map_String_String*
  store %Map_String_String* %"$m1_912", %Map_String_String** %m1
  %c1 = alloca %TName_Option_String*
  %"$execptr_load_913" = load i8*, i8** @_execptr
  %"$m1_914" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_914_915" = bitcast %Map_String_String* %"$m1_914" to i8*
  %"$get_key1a_916" = alloca %String
  %"$key1a_917" = load %String, %String* %key1a
  store %String %"$key1a_917", %String* %"$get_key1a_916"
  %"$$get_key1a_916_918" = bitcast %String* %"$get_key1a_916" to i8*
  %"$get_call_919" = call i8* @_get(i8* %"$execptr_load_913", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_914_915", i8* %"$$get_key1a_916_918")
  %"$_get_920" = bitcast i8* %"$get_call_919" to %TName_Option_String*
  store %TName_Option_String* %"$_get_920", %TName_Option_String** %c1
  %"$c1_922" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_923" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_922", i32 0, i32 0
  %"$c1_tag_924" = load i8, i8* %"$c1_tag_923"
  switch i8 %"$c1_tag_924", label %"$empty_default_925" [
    i8 0, label %"$Some_926"
    i8 1, label %"$None_948"
  ]

"$Some_926":                                      ; preds = %entry
  %"$c1_927" = bitcast %TName_Option_String* %"$c1_922" to %CName_Some_String*
  %"$c_gep_928" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_927", i32 0, i32 1
  %"$c_load_929" = load %String, %String* %"$c_gep_928"
  %c = alloca %String
  store %String %"$c_load_929", %String* %c
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_930", i32 0, i32 0), i32 3 }, %String* %v
  %eq = alloca %TName_Bool*
  %"$execptr_load_931" = load i8*, i8** @_execptr
  %"$c_932" = load %String, %String* %c
  %"$v_933" = load %String, %String* %v
  %"$eq_call_934" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_931", %String %"$c_932", %String %"$v_933")
  store %TName_Bool* %"$eq_call_934", %TName_Bool** %eq
  %"$eq_936" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_937" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_936", i32 0, i32 0
  %"$eq_tag_938" = load i8, i8* %"$eq_tag_937"
  switch i8 %"$eq_tag_938", label %"$empty_default_939" [
    i8 0, label %"$True_940"
    i8 1, label %"$False_942"
  ]

"$True_940":                                      ; preds = %"$Some_926"
  %"$eq_941" = bitcast %TName_Bool* %"$eq_936" to %CName_True*
  br label %"$matchsucc_935"

"$False_942":                                     ; preds = %"$Some_926"
  %"$eq_943" = bitcast %TName_Bool* %"$eq_936" to %CName_False*
  %m = alloca %String
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_944", i32 0, i32 0), i32 25 }, %String* %m
  %"$fail_msg__sender_945" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_945"
  %"$tname_946" = load %String, %String* %tname
  %"$m_947" = load %String, %String* %m
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_945", %String %"$tname_946", %String %"$m_947")
  br label %"$matchsucc_935"

"$empty_default_939":                             ; preds = %"$Some_926"
  br label %"$matchsucc_935"

"$matchsucc_935":                                 ; preds = %"$False_942", %"$True_940", %"$empty_default_939"
  br label %"$matchsucc_921"

"$None_948":                                      ; preds = %entry
  %"$c1_949" = bitcast %TName_Option_String* %"$c1_922" to %CName_None_String*
  %m2 = alloca %String
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_950", i32 0, i32 0), i32 15 }, %String* %m2
  %"$fail_msg__sender_951" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_951"
  %"$tname_952" = load %String, %String* %tname
  %"$m_953" = load %String, %String* %m2
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_951", %String %"$tname_952", %String %"$m_953")
  br label %"$matchsucc_921"

"$empty_default_925":                             ; preds = %entry
  br label %"$matchsucc_921"

"$matchsucc_921":                                 ; preds = %"$None_948", %"$matchsucc_935", %"$empty_default_925"
  %"$indices_buf_954_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_954_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_954_salloc_load", i64 16)
  %"$indices_buf_954_salloc" = bitcast i8* %"$indices_buf_954_salloc_salloc" to [16 x i8]*
  %"$indices_buf_954" = bitcast [16 x i8]* %"$indices_buf_954_salloc" to i8*
  %"$key1a_955" = load %String, %String* %key1a
  %"$indices_gep_956" = getelementptr i8, i8* %"$indices_buf_954", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_956" to %String*
  store %String %"$key1a_955", %String* %indices_cast
  %"$execptr_load_957" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_957", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_958", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_954", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_960" = getelementptr i8, i8* %0, i32 0
  %"$_amount_961" = bitcast i8* %"$_amount_960" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_961"
  %"$_sender_962" = getelementptr i8, i8* %0, i32 16
  %"$_sender_963" = bitcast i8* %"$_sender_962" to [20 x i8]*
  call void @"$t10_905"(%Uint128 %_amount, [20 x i8]* %"$_sender_963")
  ret void
}

define internal void @"$t11_964"(%Uint128 %_amount, [20 x i8]* %"$_sender_965") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_965"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_966", i32 0, i32 0), i32 3 }, %String* %tname
  %m1 = alloca %Map_String_String*
  %"$execptr_load_967" = load i8*, i8** @_execptr
  %"$m1_969" = call i8* @_fetch_field(i8* %"$execptr_load_967", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_968", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_970" = bitcast i8* %"$m1_969" to %Map_String_String*
  store %Map_String_String* %"$m1_970", %Map_String_String** %m1
  %m1_size = alloca %Uint32
  %"$m1_971" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_971_972" = bitcast %Map_String_String* %"$m1_971" to i8*
  %"$size_call_973" = call %Uint32 @_size(i8* %"$$m1_971_972")
  store %Uint32 %"$size_call_973", %Uint32* %m1_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_974" = load i8*, i8** @_execptr
  %"$m1_size_975" = load %Uint32, %Uint32* %m1_size
  %"$zero_976" = load %Uint32, %Uint32* %zero
  %"$eq_call_977" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_974", %Uint32 %"$m1_size_975", %Uint32 %"$zero_976")
  store %TName_Bool* %"$eq_call_977", %TName_Bool** %is_empty
  %"$is_empty_979" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_980" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_979", i32 0, i32 0
  %"$is_empty_tag_981" = load i8, i8* %"$is_empty_tag_980"
  switch i8 %"$is_empty_tag_981", label %"$empty_default_982" [
    i8 0, label %"$True_983"
    i8 1, label %"$False_985"
  ]

"$True_983":                                      ; preds = %entry
  %"$is_empty_984" = bitcast %TName_Bool* %"$is_empty_979" to %CName_True*
  br label %"$matchsucc_978"

"$False_985":                                     ; preds = %entry
  %"$is_empty_986" = bitcast %TName_Bool* %"$is_empty_979" to %CName_False*
  %"$fail__sender_987" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_987"
  %"$tname_988" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_987", %String %"$tname_988")
  br label %"$matchsucc_978"

"$empty_default_982":                             ; preds = %entry
  br label %"$matchsucc_978"

"$matchsucc_978":                                 ; preds = %"$False_985", %"$True_983", %"$empty_default_982"
  %e2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_989" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_990" = call i8* @_new_empty_map(i8* %"$execptr_load_989")
  %"$Emp_991" = bitcast i8* %"$_new_empty_map_call_990" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_991", %"Map_String_Map_(String)_(String)"** %e2
  %"$execptr_load_992" = load i8*, i8** @_execptr
  %"$e2_994" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2
  %"$update_value_995" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_994" to i8*
  call void @_update_field(i8* %"$execptr_load_992", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_993", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_995")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_997" = getelementptr i8, i8* %0, i32 0
  %"$_amount_998" = bitcast i8* %"$_amount_997" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_998"
  %"$_sender_999" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1000" = bitcast i8* %"$_sender_999" to [20 x i8]*
  call void @"$t11_964"(%Uint128 %_amount, [20 x i8]* %"$_sender_1000")
  ret void
}

define internal void @"$t12_1001"(%Uint128 %_amount, [20 x i8]* %"$_sender_1002") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1002"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1003", i32 0, i32 0), i32 3 }, %String* %tname
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1004" = load i8*, i8** @_execptr
  %"$m2_1006" = call i8* @_fetch_field(i8* %"$execptr_load_1004", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1005", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i32 1)
  %"$m2_1007" = bitcast i8* %"$m2_1006" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_1007", %"Map_String_Map_(String)_(String)"** %m2
  %m2_size = alloca %Uint32
  %"$m2_1008" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1008_1009" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1008" to i8*
  %"$size_call_1010" = call %Uint32 @_size(i8* %"$$m2_1008_1009")
  store %Uint32 %"$size_call_1010", %Uint32* %m2_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1011" = load i8*, i8** @_execptr
  %"$m2_size_1012" = load %Uint32, %Uint32* %m2_size
  %"$zero_1013" = load %Uint32, %Uint32* %zero
  %"$eq_call_1014" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1011", %Uint32 %"$m2_size_1012", %Uint32 %"$zero_1013")
  store %TName_Bool* %"$eq_call_1014", %TName_Bool** %is_empty
  %"$is_empty_1016" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1017" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1016", i32 0, i32 0
  %"$is_empty_tag_1018" = load i8, i8* %"$is_empty_tag_1017"
  switch i8 %"$is_empty_tag_1018", label %"$empty_default_1019" [
    i8 0, label %"$True_1020"
    i8 1, label %"$False_1022"
  ]

"$True_1020":                                     ; preds = %entry
  %"$is_empty_1021" = bitcast %TName_Bool* %"$is_empty_1016" to %CName_True*
  br label %"$matchsucc_1015"

"$False_1022":                                    ; preds = %entry
  %"$is_empty_1023" = bitcast %TName_Bool* %"$is_empty_1016" to %CName_False*
  %"$fail__sender_1024" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1024"
  %"$tname_1025" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1024", %String %"$tname_1025")
  br label %"$matchsucc_1015"

"$empty_default_1019":                            ; preds = %entry
  br label %"$matchsucc_1015"

"$matchsucc_1015":                                ; preds = %"$False_1022", %"$True_1020", %"$empty_default_1019"
  %e1 = alloca %Map_String_String*
  %"$execptr_load_1026" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1027" = call i8* @_new_empty_map(i8* %"$execptr_load_1026")
  %"$Emp_1028" = bitcast i8* %"$_new_empty_map_call_1027" to %Map_String_String*
  store %Map_String_String* %"$Emp_1028", %Map_String_String** %e1
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1029", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$indices_buf_1030_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1030_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1030_salloc_load", i64 16)
  %"$indices_buf_1030_salloc" = bitcast i8* %"$indices_buf_1030_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1030" = bitcast [16 x i8]* %"$indices_buf_1030_salloc" to i8*
  %"$key1a_1031" = load %String, %String* %key1a
  %"$indices_gep_1032" = getelementptr i8, i8* %"$indices_buf_1030", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1032" to %String*
  store %String %"$key1a_1031", %String* %indices_cast
  %"$execptr_load_1033" = load i8*, i8** @_execptr
  %"$e1_1035" = load %Map_String_String*, %Map_String_String** %e1
  %"$update_value_1036" = bitcast %Map_String_String* %"$e1_1035" to i8*
  call void @_update_field(i8* %"$execptr_load_1033", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1034", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1030", i8* %"$update_value_1036")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_1038" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1039" = bitcast i8* %"$_amount_1038" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1039"
  %"$_sender_1040" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1041" = bitcast i8* %"$_sender_1040" to [20 x i8]*
  call void @"$t12_1001"(%Uint128 %_amount, [20 x i8]* %"$_sender_1041")
  ret void
}

define internal void @"$t13_1042"(%Uint128 %_amount, [20 x i8]* %"$_sender_1043") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1043"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1044", i32 0, i32 0), i32 3 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1045", i32 0, i32 0), i32 5 }, %String* %key1a
  %mo = alloca %"TName_Option_Map_(String)_(String)"*
  %"$indices_buf_1046_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1046_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1046_salloc_load", i64 16)
  %"$indices_buf_1046_salloc" = bitcast i8* %"$indices_buf_1046_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1046" = bitcast [16 x i8]* %"$indices_buf_1046_salloc" to i8*
  %"$key1a_1047" = load %String, %String* %key1a
  %"$indices_gep_1048" = getelementptr i8, i8* %"$indices_buf_1046", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1048" to %String*
  store %String %"$key1a_1047", %String* %indices_cast
  %"$execptr_load_1049" = load i8*, i8** @_execptr
  %"$mo_1051" = call i8* @_fetch_field(i8* %"$execptr_load_1049", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1050", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1046", i32 1)
  %"$mo_1052" = bitcast i8* %"$mo_1051" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_1052", %"TName_Option_Map_(String)_(String)"** %mo
  %"$mo_1054" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo
  %"$mo_tag_1055" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_1054", i32 0, i32 0
  %"$mo_tag_1056" = load i8, i8* %"$mo_tag_1055"
  switch i8 %"$mo_tag_1056", label %"$empty_default_1057" [
    i8 0, label %"$Some_1058"
    i8 1, label %"$None_1082"
  ]

"$Some_1058":                                     ; preds = %entry
  %"$mo_1059" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_1054" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_1060" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_1059", i32 0, i32 1
  %"$m_load_1061" = load %Map_String_String*, %Map_String_String** %"$m_gep_1060"
  %m = alloca %Map_String_String*
  store %Map_String_String* %"$m_load_1061", %Map_String_String** %m
  %m_size = alloca %Uint32
  %"$m_1062" = load %Map_String_String*, %Map_String_String** %m
  %"$$m_1062_1063" = bitcast %Map_String_String* %"$m_1062" to i8*
  %"$size_call_1064" = call %Uint32 @_size(i8* %"$$m_1062_1063")
  store %Uint32 %"$size_call_1064", %Uint32* %m_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1065" = load i8*, i8** @_execptr
  %"$m_size_1066" = load %Uint32, %Uint32* %m_size
  %"$zero_1067" = load %Uint32, %Uint32* %zero
  %"$eq_call_1068" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1065", %Uint32 %"$m_size_1066", %Uint32 %"$zero_1067")
  store %TName_Bool* %"$eq_call_1068", %TName_Bool** %is_empty
  %"$is_empty_1070" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1071" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1070", i32 0, i32 0
  %"$is_empty_tag_1072" = load i8, i8* %"$is_empty_tag_1071"
  switch i8 %"$is_empty_tag_1072", label %"$empty_default_1073" [
    i8 0, label %"$True_1074"
    i8 1, label %"$False_1076"
  ]

"$True_1074":                                     ; preds = %"$Some_1058"
  %"$is_empty_1075" = bitcast %TName_Bool* %"$is_empty_1070" to %CName_True*
  br label %"$matchsucc_1069"

"$False_1076":                                    ; preds = %"$Some_1058"
  %"$is_empty_1077" = bitcast %TName_Bool* %"$is_empty_1070" to %CName_False*
  %msg = alloca %String
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_1078", i32 0, i32 0), i32 29 }, %String* %msg
  %"$fail_msg__sender_1079" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1079"
  %"$tname_1080" = load %String, %String* %tname
  %"$msg_1081" = load %String, %String* %msg
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1079", %String %"$tname_1080", %String %"$msg_1081")
  br label %"$matchsucc_1069"

"$empty_default_1073":                            ; preds = %"$Some_1058"
  br label %"$matchsucc_1069"

"$matchsucc_1069":                                ; preds = %"$False_1076", %"$True_1074", %"$empty_default_1073"
  br label %"$matchsucc_1053"

"$None_1082":                                     ; preds = %entry
  %"$mo_1083" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_1054" to %"CName_None_Map_(String)_(String)"*
  %"$fail__sender_1084" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1084"
  %"$tname_1085" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1084", %String %"$tname_1085")
  br label %"$matchsucc_1053"

"$empty_default_1057":                            ; preds = %entry
  br label %"$matchsucc_1053"

"$matchsucc_1053":                                ; preds = %"$None_1082", %"$matchsucc_1069", %"$empty_default_1057"
  %m3 = alloca %Map_String_String*
  %"$execptr_load_1086" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1087" = call i8* @_new_empty_map(i8* %"$execptr_load_1086")
  %"$Emp_1088" = bitcast i8* %"$_new_empty_map_call_1087" to %Map_String_String*
  store %Map_String_String* %"$Emp_1088", %Map_String_String** %m3
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1089", i32 0, i32 0), i32 5 }, %String* %key2a
  %e = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1090" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1091" = call i8* @_new_empty_map(i8* %"$execptr_load_1090")
  %"$Emp_1092" = bitcast i8* %"$_new_empty_map_call_1091" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1092", %"Map_String_Map_(String)_(String)"** %e
  %"$execptr_load_1093" = load i8*, i8** @_execptr
  %"$e_1094" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$$e_1094_1095" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_1094" to i8*
  %"$put_key2a_1096" = alloca %String
  %"$key2a_1097" = load %String, %String* %key2a
  store %String %"$key2a_1097", %String* %"$put_key2a_1096"
  %"$$put_key2a_1096_1098" = bitcast %String* %"$put_key2a_1096" to i8*
  %"$m3_1099" = load %Map_String_String*, %Map_String_String** %m3
  %"$$m3_1099_1100" = bitcast %Map_String_String* %"$m3_1099" to i8*
  %"$put_call_1101" = call i8* @_put(i8* %"$execptr_load_1093", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e_1094_1095", i8* %"$$put_key2a_1096_1098", i8* %"$$m3_1099_1100")
  %"$_put_1102" = bitcast i8* %"$put_call_1101" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1102", %"Map_String_Map_(String)_(String)"** %m2
  %"$m3_12" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$e_11" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1103" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1104" = call i8* @_new_empty_map(i8* %"$execptr_load_1103")
  %"$Emp_1105" = bitcast i8* %"$_new_empty_map_call_1104" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$Emp_1105", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11"
  %"$execptr_load_1106" = load i8*, i8** @_execptr
  %"$$e_11_1107" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11"
  %"$$$e_11_1107_1108" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_11_1107" to i8*
  %"$put_key1a_1109" = alloca %String
  %"$key1a_1110" = load %String, %String* %key1a
  store %String %"$key1a_1110", %String* %"$put_key1a_1109"
  %"$$put_key1a_1109_1111" = bitcast %String* %"$put_key1a_1109" to i8*
  %"$m2_1112" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1112_1113" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1112" to i8*
  %"$put_call_1114" = call i8* @_put(i8* %"$execptr_load_1106", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$$e_11_1107_1108", i8* %"$$put_key1a_1109_1111", i8* %"$$m2_1112_1113")
  %"$_put_1115" = bitcast i8* %"$put_call_1114" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_put_1115", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12"
  %"$execptr_load_1116" = load i8*, i8** @_execptr
  %"$$m3_12_1118" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12"
  %"$update_value_1119" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_12_1118" to i8*
  call void @_update_field(i8* %"$execptr_load_1116", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_1117", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_1119")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_1121" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1122" = bitcast i8* %"$_amount_1121" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1122"
  %"$_sender_1123" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1124" = bitcast i8* %"$_sender_1123" to [20 x i8]*
  call void @"$t13_1042"(%Uint128 %_amount, [20 x i8]* %"$_sender_1124")
  ret void
}

define internal void @"$t14_1125"(%Uint128 %_amount, [20 x i8]* %"$_sender_1126") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1126"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1127", i32 0, i32 0), i32 3 }, %String* %tname
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1128" = load i8*, i8** @_execptr
  %"$m3_1130" = call i8* @_fetch_field(i8* %"$execptr_load_1128", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_1129", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m3_1131" = bitcast i8* %"$m3_1130" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1131", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %m3_size = alloca %Uint32
  %"$m3_1132" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_1132_1133" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1132" to i8*
  %"$size_call_1134" = call %Uint32 @_size(i8* %"$$m3_1132_1133")
  store %Uint32 %"$size_call_1134", %Uint32* %m3_size
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1135" = load i8*, i8** @_execptr
  %"$m3_size_1136" = load %Uint32, %Uint32* %m3_size
  %"$one_1137" = load %Uint32, %Uint32* %one
  %"$eq_call_1138" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1135", %Uint32 %"$m3_size_1136", %Uint32 %"$one_1137")
  store %TName_Bool* %"$eq_call_1138", %TName_Bool** %is_empty
  %"$is_empty_1140" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1141" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1140", i32 0, i32 0
  %"$is_empty_tag_1142" = load i8, i8* %"$is_empty_tag_1141"
  switch i8 %"$is_empty_tag_1142", label %"$empty_default_1143" [
    i8 0, label %"$True_1144"
    i8 1, label %"$False_1146"
  ]

"$True_1144":                                     ; preds = %entry
  %"$is_empty_1145" = bitcast %TName_Bool* %"$is_empty_1140" to %CName_True*
  br label %"$matchsucc_1139"

"$False_1146":                                    ; preds = %entry
  %"$is_empty_1147" = bitcast %TName_Bool* %"$is_empty_1140" to %CName_False*
  %"$fail__sender_1148" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1148"
  %"$tname_1149" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1148", %String %"$tname_1149")
  br label %"$matchsucc_1139"

"$empty_default_1143":                            ; preds = %entry
  br label %"$matchsucc_1139"

"$matchsucc_1139":                                ; preds = %"$False_1146", %"$True_1144", %"$empty_default_1143"
  %e = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1150" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1151" = call i8* @_new_empty_map(i8* %"$execptr_load_1150")
  %"$Emp_1152" = bitcast i8* %"$_new_empty_map_call_1151" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1152", %"Map_String_Map_(String)_(String)"** %e
  %"$execptr_load_1153" = load i8*, i8** @_execptr
  %"$e_1155" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$update_value_1156" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_1155" to i8*
  call void @_update_field(i8* %"$execptr_load_1153", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_1154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_1156")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_1158" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1159" = bitcast i8* %"$_amount_1158" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1159"
  %"$_sender_1160" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1161" = bitcast i8* %"$_sender_1160" to [20 x i8]*
  call void @"$t14_1125"(%Uint128 %_amount, [20 x i8]* %"$_sender_1161")
  ret void
}

define internal void @"$t15_1162"(%Uint128 %_amount, [20 x i8]* %"$_sender_1163") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1163"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1164", i32 0, i32 0), i32 3 }, %String* %tname
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1165" = load i8*, i8** @_execptr
  %"$m3_1167" = call i8* @_fetch_field(i8* %"$execptr_load_1165", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_1166", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m3_1168" = bitcast i8* %"$m3_1167" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1168", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %m3_size = alloca %Uint32
  %"$m3_1169" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_1169_1170" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1169" to i8*
  %"$size_call_1171" = call %Uint32 @_size(i8* %"$$m3_1169_1170")
  store %Uint32 %"$size_call_1171", %Uint32* %m3_size
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %is_one = alloca %TName_Bool*
  %"$execptr_load_1172" = load i8*, i8** @_execptr
  %"$m3_size_1173" = load %Uint32, %Uint32* %m3_size
  %"$one_1174" = load %Uint32, %Uint32* %one
  %"$eq_call_1175" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1172", %Uint32 %"$m3_size_1173", %Uint32 %"$one_1174")
  store %TName_Bool* %"$eq_call_1175", %TName_Bool** %is_one
  %"$is_one_1177" = load %TName_Bool*, %TName_Bool** %is_one
  %"$is_one_tag_1178" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1177", i32 0, i32 0
  %"$is_one_tag_1179" = load i8, i8* %"$is_one_tag_1178"
  switch i8 %"$is_one_tag_1179", label %"$empty_default_1180" [
    i8 0, label %"$True_1181"
    i8 1, label %"$False_1183"
  ]

"$True_1181":                                     ; preds = %entry
  %"$is_one_1182" = bitcast %TName_Bool* %"$is_one_1177" to %CName_True*
  br label %"$matchsucc_1176"

"$False_1183":                                    ; preds = %entry
  %"$is_one_1184" = bitcast %TName_Bool* %"$is_one_1177" to %CName_False*
  %err = alloca %String
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_1185", i32 0, i32 0), i32 22 }, %String* %err
  %"$fail_msg__sender_1186" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1186"
  %"$tname_1187" = load %String, %String* %tname
  %"$err_1188" = load %String, %String* %err
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1186", %String %"$tname_1187", %String %"$err_1188")
  br label %"$matchsucc_1176"

"$empty_default_1180":                            ; preds = %entry
  br label %"$matchsucc_1176"

"$matchsucc_1176":                                ; preds = %"$False_1183", %"$True_1181", %"$empty_default_1180"
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1189", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1190", i32 0, i32 0), i32 5 }, %String* %key2a
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_1191" = load i8*, i8** @_execptr
  %"$m3_1192" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_1192_1193" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_1192" to i8*
  %"$get_key1a_1194" = alloca %String
  %"$key1a_1195" = load %String, %String* %key1a
  store %String %"$key1a_1195", %String* %"$get_key1a_1194"
  %"$$get_key1a_1194_1196" = bitcast %String* %"$get_key1a_1194" to i8*
  %"$get_call_1197" = call i8* @_get(i8* %"$execptr_load_1191", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m3_1192_1193", i8* %"$$get_key1a_1194_1196")
  %"$_get_1198" = bitcast i8* %"$get_call_1197" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$_get_1198", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o
  %"$m2o_1200" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o
  %"$m2o_tag_1201" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_1200", i32 0, i32 0
  %"$m2o_tag_1202" = load i8, i8* %"$m2o_tag_1201"
  switch i8 %"$m2o_tag_1202", label %"$empty_default_1203" [
    i8 0, label %"$Some_1204"
    i8 1, label %"$None_1271"
  ]

"$Some_1204":                                     ; preds = %"$matchsucc_1176"
  %"$m2o_1205" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_1200" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_1206" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_1205", i32 0, i32 1
  %"$m2_load_1207" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_1206"
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_1207", %"Map_String_Map_(String)_(String)"** %m2
  %m2_size = alloca %Uint32
  %"$m2_1208" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1208_1209" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1208" to i8*
  %"$size_call_1210" = call %Uint32 @_size(i8* %"$$m2_1208_1209")
  store %Uint32 %"$size_call_1210", %Uint32* %m2_size
  %is_one_1 = alloca %TName_Bool*
  %"$execptr_load_1211" = load i8*, i8** @_execptr
  %"$m2_size_1212" = load %Uint32, %Uint32* %m2_size
  %"$one_1213" = load %Uint32, %Uint32* %one
  %"$eq_call_1214" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1211", %Uint32 %"$m2_size_1212", %Uint32 %"$one_1213")
  store %TName_Bool* %"$eq_call_1214", %TName_Bool** %is_one_1
  %"$is_one_1_1216" = load %TName_Bool*, %TName_Bool** %is_one_1
  %"$is_one_1_tag_1217" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_1216", i32 0, i32 0
  %"$is_one_1_tag_1218" = load i8, i8* %"$is_one_1_tag_1217"
  switch i8 %"$is_one_1_tag_1218", label %"$empty_default_1219" [
    i8 0, label %"$True_1220"
    i8 1, label %"$False_1265"
  ]

"$True_1220":                                     ; preds = %"$Some_1204"
  %"$is_one_1_1221" = bitcast %TName_Bool* %"$is_one_1_1216" to %CName_True*
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*
  %"$execptr_load_1222" = load i8*, i8** @_execptr
  %"$m2_1223" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_1223_1224" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1223" to i8*
  %"$get_key2a_1225" = alloca %String
  %"$key2a_1226" = load %String, %String* %key2a
  store %String %"$key2a_1226", %String* %"$get_key2a_1225"
  %"$$get_key2a_1225_1227" = bitcast %String* %"$get_key2a_1225" to i8*
  %"$get_call_1228" = call i8* @_get(i8* %"$execptr_load_1222", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_1223_1224", i8* %"$$get_key2a_1225_1227")
  %"$_get_1229" = bitcast i8* %"$get_call_1228" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$_get_1229", %"TName_Option_Map_(String)_(String)"** %m1o
  %"$m1o_1231" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o
  %"$m1o_tag_1232" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_1231", i32 0, i32 0
  %"$m1o_tag_1233" = load i8, i8* %"$m1o_tag_1232"
  switch i8 %"$m1o_tag_1233", label %"$empty_default_1234" [
    i8 0, label %"$Some_1235"
    i8 1, label %"$None_1259"
  ]

"$Some_1235":                                     ; preds = %"$True_1220"
  %"$m1o_1236" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_1231" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_1237" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_1236", i32 0, i32 1
  %"$m1_load_1238" = load %Map_String_String*, %Map_String_String** %"$m1_gep_1237"
  %m1 = alloca %Map_String_String*
  store %Map_String_String* %"$m1_load_1238", %Map_String_String** %m1
  %m1_size = alloca %Uint32
  %"$m1_1239" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_1239_1240" = bitcast %Map_String_String* %"$m1_1239" to i8*
  %"$size_call_1241" = call %Uint32 @_size(i8* %"$$m1_1239_1240")
  store %Uint32 %"$size_call_1241", %Uint32* %m1_size
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_1242" = load i8*, i8** @_execptr
  %"$m1_size_1243" = load %Uint32, %Uint32* %m1_size
  %"$zero_1244" = load %Uint32, %Uint32* %zero
  %"$eq_call_1245" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_1242", %Uint32 %"$m1_size_1243", %Uint32 %"$zero_1244")
  store %TName_Bool* %"$eq_call_1245", %TName_Bool** %is_empty
  %"$is_empty_1247" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_1248" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_1247", i32 0, i32 0
  %"$is_empty_tag_1249" = load i8, i8* %"$is_empty_tag_1248"
  switch i8 %"$is_empty_tag_1249", label %"$empty_default_1250" [
    i8 0, label %"$True_1251"
    i8 1, label %"$False_1253"
  ]

"$True_1251":                                     ; preds = %"$Some_1235"
  %"$is_empty_1252" = bitcast %TName_Bool* %"$is_empty_1247" to %CName_True*
  br label %"$matchsucc_1246"

"$False_1253":                                    ; preds = %"$Some_1235"
  %"$is_empty_1254" = bitcast %TName_Bool* %"$is_empty_1247" to %CName_False*
  %err1 = alloca %String
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1255", i32 0, i32 0), i32 36 }, %String* %err1
  %"$fail_msg__sender_1256" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1256"
  %"$tname_1257" = load %String, %String* %tname
  %"$err_1258" = load %String, %String* %err1
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1256", %String %"$tname_1257", %String %"$err_1258")
  br label %"$matchsucc_1246"

"$empty_default_1250":                            ; preds = %"$Some_1235"
  br label %"$matchsucc_1246"

"$matchsucc_1246":                                ; preds = %"$False_1253", %"$True_1251", %"$empty_default_1250"
  br label %"$matchsucc_1230"

"$None_1259":                                     ; preds = %"$True_1220"
  %"$m1o_1260" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_1231" to %"CName_None_Map_(String)_(String)"*
  %err2 = alloca %String
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1261", i32 0, i32 0), i32 19 }, %String* %err2
  %"$fail_msg__sender_1262" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1262"
  %"$tname_1263" = load %String, %String* %tname
  %"$err_1264" = load %String, %String* %err2
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1262", %String %"$tname_1263", %String %"$err_1264")
  br label %"$matchsucc_1230"

"$empty_default_1234":                            ; preds = %"$True_1220"
  br label %"$matchsucc_1230"

"$matchsucc_1230":                                ; preds = %"$None_1259", %"$matchsucc_1246", %"$empty_default_1234"
  br label %"$matchsucc_1215"

"$False_1265":                                    ; preds = %"$Some_1204"
  %"$is_one_1_1266" = bitcast %TName_Bool* %"$is_one_1_1216" to %CName_False*
  %err3 = alloca %String
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_1267", i32 0, i32 0), i32 28 }, %String* %err3
  %"$fail_msg__sender_1268" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1268"
  %"$tname_1269" = load %String, %String* %tname
  %"$err_1270" = load %String, %String* %err3
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1268", %String %"$tname_1269", %String %"$err_1270")
  br label %"$matchsucc_1215"

"$empty_default_1219":                            ; preds = %"$Some_1204"
  br label %"$matchsucc_1215"

"$matchsucc_1215":                                ; preds = %"$False_1265", %"$matchsucc_1230", %"$empty_default_1219"
  br label %"$matchsucc_1199"

"$None_1271":                                     ; preds = %"$matchsucc_1176"
  %"$m2o_1272" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_1200" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %err4 = alloca %String
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_1273", i32 0, i32 0), i32 19 }, %String* %err4
  %"$fail_msg__sender_1274" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1274"
  %"$tname_1275" = load %String, %String* %tname
  %"$err_1276" = load %String, %String* %err4
  call void @"$fail_msg_166"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1274", %String %"$tname_1275", %String %"$err_1276")
  br label %"$matchsucc_1199"

"$empty_default_1203":                            ; preds = %"$matchsucc_1176"
  br label %"$matchsucc_1199"

"$matchsucc_1199":                                ; preds = %"$None_1271", %"$matchsucc_1215", %"$empty_default_1203"
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1277", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1278", i32 0, i32 0), i32 5 }, %String* %key2b
  %key1c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1279", i32 0, i32 0), i32 5 }, %String* %key1c
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1280", i32 0, i32 0), i32 5 }, %String* %key2c
  %key1d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1281", i32 0, i32 0), i32 5 }, %String* %key1d
  %key2d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1282", i32 0, i32 0), i32 5 }, %String* %key2d
  %v1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1283", i32 0, i32 0), i32 3 }, %String* %v1
  %v2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1284", i32 0, i32 0), i32 3 }, %String* %v2
  %v3 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1285", i32 0, i32 0), i32 3 }, %String* %v3
  %v4 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1286", i32 0, i32 0), i32 3 }, %String* %v4
  %m25 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1287" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1288" = call i8* @_new_empty_map(i8* %"$execptr_load_1287")
  %"$Emp_1289" = bitcast i8* %"$_new_empty_map_call_1288" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_1289", %"Map_String_Map_(String)_(String)"** %m25
  %m16 = alloca %Map_String_String*
  %"$execptr_load_1290" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1291" = call i8* @_new_empty_map(i8* %"$execptr_load_1290")
  %"$Emp_1292" = bitcast i8* %"$_new_empty_map_call_1291" to %Map_String_String*
  store %Map_String_String* %"$Emp_1292", %Map_String_String** %m16
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*
  %m21 = alloca %Map_String_String*
  %"$execptr_load_1293" = load i8*, i8** @_execptr
  %"$m1_1294" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1294_1295" = bitcast %Map_String_String* %"$m1_1294" to i8*
  %"$put_key2a_1296" = alloca %String
  %"$key2a_1297" = load %String, %String* %key2a
  store %String %"$key2a_1297", %String* %"$put_key2a_1296"
  %"$$put_key2a_1296_1298" = bitcast %String* %"$put_key2a_1296" to i8*
  %"$put_v1_1299" = alloca %String
  %"$v1_1300" = load %String, %String* %v1
  store %String %"$v1_1300", %String* %"$put_v1_1299"
  %"$$put_v1_1299_1301" = bitcast %String* %"$put_v1_1299" to i8*
  %"$put_call_1302" = call i8* @_put(i8* %"$execptr_load_1293", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1294_1295", i8* %"$$put_key2a_1296_1298", i8* %"$$put_v1_1299_1301")
  %"$_put_1303" = bitcast i8* %"$put_call_1302" to %Map_String_String*
  store %Map_String_String* %"$_put_1303", %Map_String_String** %m21
  %m22 = alloca %Map_String_String*
  %"$execptr_load_1304" = load i8*, i8** @_execptr
  %"$m1_1305" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1305_1306" = bitcast %Map_String_String* %"$m1_1305" to i8*
  %"$put_key2b_1307" = alloca %String
  %"$key2b_1308" = load %String, %String* %key2b
  store %String %"$key2b_1308", %String* %"$put_key2b_1307"
  %"$$put_key2b_1307_1309" = bitcast %String* %"$put_key2b_1307" to i8*
  %"$put_v2_1310" = alloca %String
  %"$v2_1311" = load %String, %String* %v2
  store %String %"$v2_1311", %String* %"$put_v2_1310"
  %"$$put_v2_1310_1312" = bitcast %String* %"$put_v2_1310" to i8*
  %"$put_call_1313" = call i8* @_put(i8* %"$execptr_load_1304", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1305_1306", i8* %"$$put_key2b_1307_1309", i8* %"$$put_v2_1310_1312")
  %"$_put_1314" = bitcast i8* %"$put_call_1313" to %Map_String_String*
  store %Map_String_String* %"$_put_1314", %Map_String_String** %m22
  %m23 = alloca %Map_String_String*
  %"$execptr_load_1315" = load i8*, i8** @_execptr
  %"$m1_1316" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1316_1317" = bitcast %Map_String_String* %"$m1_1316" to i8*
  %"$put_key2c_1318" = alloca %String
  %"$key2c_1319" = load %String, %String* %key2c
  store %String %"$key2c_1319", %String* %"$put_key2c_1318"
  %"$$put_key2c_1318_1320" = bitcast %String* %"$put_key2c_1318" to i8*
  %"$put_v3_1321" = alloca %String
  %"$v3_1322" = load %String, %String* %v3
  store %String %"$v3_1322", %String* %"$put_v3_1321"
  %"$$put_v3_1321_1323" = bitcast %String* %"$put_v3_1321" to i8*
  %"$put_call_1324" = call i8* @_put(i8* %"$execptr_load_1315", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1316_1317", i8* %"$$put_key2c_1318_1320", i8* %"$$put_v3_1321_1323")
  %"$_put_1325" = bitcast i8* %"$put_call_1324" to %Map_String_String*
  store %Map_String_String* %"$_put_1325", %Map_String_String** %m23
  %m24 = alloca %Map_String_String*
  %"$execptr_load_1326" = load i8*, i8** @_execptr
  %"$m1_1327" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_1327_1328" = bitcast %Map_String_String* %"$m1_1327" to i8*
  %"$put_key2d_1329" = alloca %String
  %"$key2d_1330" = load %String, %String* %key2d
  store %String %"$key2d_1330", %String* %"$put_key2d_1329"
  %"$$put_key2d_1329_1331" = bitcast %String* %"$put_key2d_1329" to i8*
  %"$put_v4_1332" = alloca %String
  %"$v4_1333" = load %String, %String* %v4
  store %String %"$v4_1333", %String* %"$put_v4_1332"
  %"$$put_v4_1332_1334" = bitcast %String* %"$put_v4_1332" to i8*
  %"$put_call_1335" = call i8* @_put(i8* %"$execptr_load_1326", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1327_1328", i8* %"$$put_key2d_1329_1331", i8* %"$$put_v4_1332_1334")
  %"$_put_1336" = bitcast i8* %"$put_call_1335" to %Map_String_String*
  store %Map_String_String* %"$_put_1336", %Map_String_String** %m24
  %m11 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1337" = load i8*, i8** @_execptr
  %"$m2_1338" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25
  %"$$m2_1338_1339" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_1338" to i8*
  %"$put_key1a_1340" = alloca %String
  %"$key1a_1341" = load %String, %String* %key1a
  store %String %"$key1a_1341", %String* %"$put_key1a_1340"
  %"$$put_key1a_1340_1342" = bitcast %String* %"$put_key1a_1340" to i8*
  %"$m21_1343" = load %Map_String_String*, %Map_String_String** %m21
  %"$$m21_1343_1344" = bitcast %Map_String_String* %"$m21_1343" to i8*
  %"$put_call_1345" = call i8* @_put(i8* %"$execptr_load_1337", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_1338_1339", i8* %"$$put_key1a_1340_1342", i8* %"$$m21_1343_1344")
  %"$_put_1346" = bitcast i8* %"$put_call_1345" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1346", %"Map_String_Map_(String)_(String)"** %m11
  %m12 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1347" = load i8*, i8** @_execptr
  %"$m11_1348" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11
  %"$$m11_1348_1349" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_1348" to i8*
  %"$put_key1b_1350" = alloca %String
  %"$key1b_1351" = load %String, %String* %key1b
  store %String %"$key1b_1351", %String* %"$put_key1b_1350"
  %"$$put_key1b_1350_1352" = bitcast %String* %"$put_key1b_1350" to i8*
  %"$m22_1353" = load %Map_String_String*, %Map_String_String** %m22
  %"$$m22_1353_1354" = bitcast %Map_String_String* %"$m22_1353" to i8*
  %"$put_call_1355" = call i8* @_put(i8* %"$execptr_load_1347", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m11_1348_1349", i8* %"$$put_key1b_1350_1352", i8* %"$$m22_1353_1354")
  %"$_put_1356" = bitcast i8* %"$put_call_1355" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1356", %"Map_String_Map_(String)_(String)"** %m12
  %m13 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1357" = load i8*, i8** @_execptr
  %"$m12_1358" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12
  %"$$m12_1358_1359" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_1358" to i8*
  %"$put_key1c_1360" = alloca %String
  %"$key1c_1361" = load %String, %String* %key1c
  store %String %"$key1c_1361", %String* %"$put_key1c_1360"
  %"$$put_key1c_1360_1362" = bitcast %String* %"$put_key1c_1360" to i8*
  %"$m23_1363" = load %Map_String_String*, %Map_String_String** %m23
  %"$$m23_1363_1364" = bitcast %Map_String_String* %"$m23_1363" to i8*
  %"$put_call_1365" = call i8* @_put(i8* %"$execptr_load_1357", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m12_1358_1359", i8* %"$$put_key1c_1360_1362", i8* %"$$m23_1363_1364")
  %"$_put_1366" = bitcast i8* %"$put_call_1365" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1366", %"Map_String_Map_(String)_(String)"** %m13
  %m14 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_1367" = load i8*, i8** @_execptr
  %"$m13_1368" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13
  %"$$m13_1368_1369" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_1368" to i8*
  %"$put_key1d_1370" = alloca %String
  %"$key1d_1371" = load %String, %String* %key1d
  store %String %"$key1d_1371", %String* %"$put_key1d_1370"
  %"$$put_key1d_1370_1372" = bitcast %String* %"$put_key1d_1370" to i8*
  %"$m24_1373" = load %Map_String_String*, %Map_String_String** %m24
  %"$$m24_1373_1374" = bitcast %Map_String_String* %"$m24_1373" to i8*
  %"$put_call_1375" = call i8* @_put(i8* %"$execptr_load_1367", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m13_1368_1369", i8* %"$$put_key1d_1370_1372", i8* %"$$m24_1373_1374")
  %"$_put_1376" = bitcast i8* %"$put_call_1375" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_1376", %"Map_String_Map_(String)_(String)"** %m14
  %"$m14_1377" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14
  store %"Map_String_Map_(String)_(String)"* %"$m14_1377", %"Map_String_Map_(String)_(String)"** %m2_full
  %"$execptr_load_1378" = load i8*, i8** @_execptr
  %"$m2_full_1380" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full
  %"$update_value_1381" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_1380" to i8*
  call void @_update_field(i8* %"$execptr_load_1378", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1379", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_1381")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_1383" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1384" = bitcast i8* %"$_amount_1383" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1384"
  %"$_sender_1385" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1386" = bitcast i8* %"$_sender_1385" to [20 x i8]*
  call void @"$t15_1162"(%Uint128 %_amount, [20 x i8]* %"$_sender_1386")
  ret void
}

define internal void @"$t16_1387"(%Uint128 %_amount, [20 x i8]* %"$_sender_1388") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1388"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1389", i32 0, i32 0), i32 3 }, %String* %tname
  %key1a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1390", i32 0, i32 0), i32 5 }, %String* %key1a
  %key2a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1391", i32 0, i32 0), i32 5 }, %String* %key2a
  %key1b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1392", i32 0, i32 0), i32 5 }, %String* %key1b
  %key2b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1393", i32 0, i32 0), i32 5 }, %String* %key2b
  %key1c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1394", i32 0, i32 0), i32 5 }, %String* %key1c
  %key2c = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1395", i32 0, i32 0), i32 5 }, %String* %key2c
  %key1d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1396", i32 0, i32 0), i32 5 }, %String* %key1d
  %key2d = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1397", i32 0, i32 0), i32 5 }, %String* %key2d
  %t1 = alloca %TName_Option_String*
  %"$indices_buf_1398_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1398_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1398_salloc_load", i64 32)
  %"$indices_buf_1398_salloc" = bitcast i8* %"$indices_buf_1398_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1398" = bitcast [32 x i8]* %"$indices_buf_1398_salloc" to i8*
  %"$key1a_1399" = load %String, %String* %key1a
  %"$indices_gep_1400" = getelementptr i8, i8* %"$indices_buf_1398", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1400" to %String*
  store %String %"$key1a_1399", %String* %indices_cast
  %"$key2a_1401" = load %String, %String* %key2a
  %"$indices_gep_1402" = getelementptr i8, i8* %"$indices_buf_1398", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1402" to %String*
  store %String %"$key2a_1401", %String* %indices_cast1
  %"$execptr_load_1403" = load i8*, i8** @_execptr
  %"$t1_1405" = call i8* @_fetch_field(i8* %"$execptr_load_1403", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1404", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1398", i32 1)
  %"$t1_1406" = bitcast i8* %"$t1_1405" to %TName_Option_String*
  store %TName_Option_String* %"$t1_1406", %TName_Option_String** %t1
  %t2 = alloca %TName_Option_String*
  %"$indices_buf_1407_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1407_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1407_salloc_load", i64 32)
  %"$indices_buf_1407_salloc" = bitcast i8* %"$indices_buf_1407_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1407" = bitcast [32 x i8]* %"$indices_buf_1407_salloc" to i8*
  %"$key1b_1408" = load %String, %String* %key1b
  %"$indices_gep_1409" = getelementptr i8, i8* %"$indices_buf_1407", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1409" to %String*
  store %String %"$key1b_1408", %String* %indices_cast2
  %"$key2b_1410" = load %String, %String* %key2b
  %"$indices_gep_1411" = getelementptr i8, i8* %"$indices_buf_1407", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_1411" to %String*
  store %String %"$key2b_1410", %String* %indices_cast3
  %"$execptr_load_1412" = load i8*, i8** @_execptr
  %"$t2_1414" = call i8* @_fetch_field(i8* %"$execptr_load_1412", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1413", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1407", i32 1)
  %"$t2_1415" = bitcast i8* %"$t2_1414" to %TName_Option_String*
  store %TName_Option_String* %"$t2_1415", %TName_Option_String** %t2
  %t3 = alloca %TName_Option_String*
  %"$indices_buf_1416_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1416_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1416_salloc_load", i64 32)
  %"$indices_buf_1416_salloc" = bitcast i8* %"$indices_buf_1416_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1416" = bitcast [32 x i8]* %"$indices_buf_1416_salloc" to i8*
  %"$key1c_1417" = load %String, %String* %key1c
  %"$indices_gep_1418" = getelementptr i8, i8* %"$indices_buf_1416", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_1418" to %String*
  store %String %"$key1c_1417", %String* %indices_cast4
  %"$key2c_1419" = load %String, %String* %key2c
  %"$indices_gep_1420" = getelementptr i8, i8* %"$indices_buf_1416", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_1420" to %String*
  store %String %"$key2c_1419", %String* %indices_cast5
  %"$execptr_load_1421" = load i8*, i8** @_execptr
  %"$t3_1423" = call i8* @_fetch_field(i8* %"$execptr_load_1421", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1422", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1416", i32 1)
  %"$t3_1424" = bitcast i8* %"$t3_1423" to %TName_Option_String*
  store %TName_Option_String* %"$t3_1424", %TName_Option_String** %t3
  %t4 = alloca %TName_Option_String*
  %"$indices_buf_1425_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1425_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1425_salloc_load", i64 32)
  %"$indices_buf_1425_salloc" = bitcast i8* %"$indices_buf_1425_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1425" = bitcast [32 x i8]* %"$indices_buf_1425_salloc" to i8*
  %"$key1d_1426" = load %String, %String* %key1d
  %"$indices_gep_1427" = getelementptr i8, i8* %"$indices_buf_1425", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_1427" to %String*
  store %String %"$key1d_1426", %String* %indices_cast6
  %"$key2d_1428" = load %String, %String* %key2d
  %"$indices_gep_1429" = getelementptr i8, i8* %"$indices_buf_1425", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_1429" to %String*
  store %String %"$key2d_1428", %String* %indices_cast7
  %"$execptr_load_1430" = load i8*, i8** @_execptr
  %"$t4_1432" = call i8* @_fetch_field(i8* %"$execptr_load_1430", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1431", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1425", i32 1)
  %"$t4_1433" = bitcast i8* %"$t4_1432" to %TName_Option_String*
  store %TName_Option_String* %"$t4_1433", %TName_Option_String** %t4
  %v1 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1434", i32 0, i32 0), i32 3 }, %String* %v1
  %v2 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1435", i32 0, i32 0), i32 3 }, %String* %v2
  %v3 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1436", i32 0, i32 0), i32 3 }, %String* %v3
  %v4 = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1437", i32 0, i32 0), i32 3 }, %String* %v4
  %b1 = alloca %TName_Bool*
  %"$t1_1439" = load %TName_Option_String*, %TName_Option_String** %t1
  %"$t1_tag_1440" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_1439", i32 0, i32 0
  %"$t1_tag_1441" = load i8, i8* %"$t1_tag_1440"
  switch i8 %"$t1_tag_1441", label %"$empty_default_1442" [
    i8 0, label %"$Some_1443"
    i8 1, label %"$None_1451"
  ]

"$Some_1443":                                     ; preds = %entry
  %"$t1_1444" = bitcast %TName_Option_String* %"$t1_1439" to %CName_Some_String*
  %"$t1v_gep_1445" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_1444", i32 0, i32 1
  %"$t1v_load_1446" = load %String, %String* %"$t1v_gep_1445"
  %t1v = alloca %String
  store %String %"$t1v_load_1446", %String* %t1v
  %"$execptr_load_1447" = load i8*, i8** @_execptr
  %"$t1v_1448" = load %String, %String* %t1v
  %"$v1_1449" = load %String, %String* %v1
  %"$eq_call_1450" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1447", %String %"$t1v_1448", %String %"$v1_1449")
  store %TName_Bool* %"$eq_call_1450", %TName_Bool** %b1
  br label %"$matchsucc_1438"

"$None_1451":                                     ; preds = %entry
  %"$t1_1452" = bitcast %TName_Option_String* %"$t1_1439" to %CName_None_String*
  %"$adtval_1453_load" = load i8*, i8** @_execptr
  %"$adtval_1453_salloc" = call i8* @_salloc(i8* %"$adtval_1453_load", i64 1)
  %"$adtval_1453" = bitcast i8* %"$adtval_1453_salloc" to %CName_False*
  %"$adtgep_1454" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1453", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1454"
  %"$adtptr_1455" = bitcast %CName_False* %"$adtval_1453" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1455", %TName_Bool** %b1
  br label %"$matchsucc_1438"

"$empty_default_1442":                            ; preds = %entry
  br label %"$matchsucc_1438"

"$matchsucc_1438":                                ; preds = %"$None_1451", %"$Some_1443", %"$empty_default_1442"
  %b2 = alloca %TName_Bool*
  %"$t2_1457" = load %TName_Option_String*, %TName_Option_String** %t2
  %"$t2_tag_1458" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_1457", i32 0, i32 0
  %"$t2_tag_1459" = load i8, i8* %"$t2_tag_1458"
  switch i8 %"$t2_tag_1459", label %"$empty_default_1460" [
    i8 0, label %"$Some_1461"
    i8 1, label %"$None_1469"
  ]

"$Some_1461":                                     ; preds = %"$matchsucc_1438"
  %"$t2_1462" = bitcast %TName_Option_String* %"$t2_1457" to %CName_Some_String*
  %"$t2v_gep_1463" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_1462", i32 0, i32 1
  %"$t2v_load_1464" = load %String, %String* %"$t2v_gep_1463"
  %t2v = alloca %String
  store %String %"$t2v_load_1464", %String* %t2v
  %"$execptr_load_1465" = load i8*, i8** @_execptr
  %"$t2v_1466" = load %String, %String* %t2v
  %"$v2_1467" = load %String, %String* %v2
  %"$eq_call_1468" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1465", %String %"$t2v_1466", %String %"$v2_1467")
  store %TName_Bool* %"$eq_call_1468", %TName_Bool** %b2
  br label %"$matchsucc_1456"

"$None_1469":                                     ; preds = %"$matchsucc_1438"
  %"$t2_1470" = bitcast %TName_Option_String* %"$t2_1457" to %CName_None_String*
  %"$adtval_1471_load" = load i8*, i8** @_execptr
  %"$adtval_1471_salloc" = call i8* @_salloc(i8* %"$adtval_1471_load", i64 1)
  %"$adtval_1471" = bitcast i8* %"$adtval_1471_salloc" to %CName_False*
  %"$adtgep_1472" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1471", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1472"
  %"$adtptr_1473" = bitcast %CName_False* %"$adtval_1471" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1473", %TName_Bool** %b2
  br label %"$matchsucc_1456"

"$empty_default_1460":                            ; preds = %"$matchsucc_1438"
  br label %"$matchsucc_1456"

"$matchsucc_1456":                                ; preds = %"$None_1469", %"$Some_1461", %"$empty_default_1460"
  %b3 = alloca %TName_Bool*
  %"$t3_1475" = load %TName_Option_String*, %TName_Option_String** %t3
  %"$t3_tag_1476" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_1475", i32 0, i32 0
  %"$t3_tag_1477" = load i8, i8* %"$t3_tag_1476"
  switch i8 %"$t3_tag_1477", label %"$empty_default_1478" [
    i8 0, label %"$Some_1479"
    i8 1, label %"$None_1487"
  ]

"$Some_1479":                                     ; preds = %"$matchsucc_1456"
  %"$t3_1480" = bitcast %TName_Option_String* %"$t3_1475" to %CName_Some_String*
  %"$t3v_gep_1481" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_1480", i32 0, i32 1
  %"$t3v_load_1482" = load %String, %String* %"$t3v_gep_1481"
  %t3v = alloca %String
  store %String %"$t3v_load_1482", %String* %t3v
  %"$execptr_load_1483" = load i8*, i8** @_execptr
  %"$t3v_1484" = load %String, %String* %t3v
  %"$v3_1485" = load %String, %String* %v3
  %"$eq_call_1486" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1483", %String %"$t3v_1484", %String %"$v3_1485")
  store %TName_Bool* %"$eq_call_1486", %TName_Bool** %b3
  br label %"$matchsucc_1474"

"$None_1487":                                     ; preds = %"$matchsucc_1456"
  %"$t3_1488" = bitcast %TName_Option_String* %"$t3_1475" to %CName_None_String*
  %"$adtval_1489_load" = load i8*, i8** @_execptr
  %"$adtval_1489_salloc" = call i8* @_salloc(i8* %"$adtval_1489_load", i64 1)
  %"$adtval_1489" = bitcast i8* %"$adtval_1489_salloc" to %CName_False*
  %"$adtgep_1490" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1489", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1490"
  %"$adtptr_1491" = bitcast %CName_False* %"$adtval_1489" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1491", %TName_Bool** %b3
  br label %"$matchsucc_1474"

"$empty_default_1478":                            ; preds = %"$matchsucc_1456"
  br label %"$matchsucc_1474"

"$matchsucc_1474":                                ; preds = %"$None_1487", %"$Some_1479", %"$empty_default_1478"
  %b4 = alloca %TName_Bool*
  %"$t4_1493" = load %TName_Option_String*, %TName_Option_String** %t4
  %"$t4_tag_1494" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_1493", i32 0, i32 0
  %"$t4_tag_1495" = load i8, i8* %"$t4_tag_1494"
  switch i8 %"$t4_tag_1495", label %"$empty_default_1496" [
    i8 0, label %"$Some_1497"
    i8 1, label %"$None_1505"
  ]

"$Some_1497":                                     ; preds = %"$matchsucc_1474"
  %"$t4_1498" = bitcast %TName_Option_String* %"$t4_1493" to %CName_Some_String*
  %"$t4v_gep_1499" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_1498", i32 0, i32 1
  %"$t4v_load_1500" = load %String, %String* %"$t4v_gep_1499"
  %t4v = alloca %String
  store %String %"$t4v_load_1500", %String* %t4v
  %"$execptr_load_1501" = load i8*, i8** @_execptr
  %"$t4v_1502" = load %String, %String* %t4v
  %"$v4_1503" = load %String, %String* %v4
  %"$eq_call_1504" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1501", %String %"$t4v_1502", %String %"$v4_1503")
  store %TName_Bool* %"$eq_call_1504", %TName_Bool** %b4
  br label %"$matchsucc_1492"

"$None_1505":                                     ; preds = %"$matchsucc_1474"
  %"$t4_1506" = bitcast %TName_Option_String* %"$t4_1493" to %CName_None_String*
  %"$adtval_1507_load" = load i8*, i8** @_execptr
  %"$adtval_1507_salloc" = call i8* @_salloc(i8* %"$adtval_1507_load", i64 1)
  %"$adtval_1507" = bitcast i8* %"$adtval_1507_salloc" to %CName_False*
  %"$adtgep_1508" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1507", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1508"
  %"$adtptr_1509" = bitcast %CName_False* %"$adtval_1507" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1509", %TName_Bool** %b4
  br label %"$matchsucc_1492"

"$empty_default_1496":                            ; preds = %"$matchsucc_1474"
  br label %"$matchsucc_1492"

"$matchsucc_1492":                                ; preds = %"$None_1505", %"$Some_1497", %"$empty_default_1496"
  %b = alloca %TName_Bool*
  %a1 = alloca %TName_Bool*
  %"$andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_1510" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_1511" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1510", 0
  %"$andb_envptr_1512" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1510", 1
  %"$b1_1513" = load %TName_Bool*, %TName_Bool** %b1
  %"$andb_call_1514" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_1511"(i8* %"$andb_envptr_1512", %TName_Bool* %"$b1_1513")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_1514", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_17"
  %"$andb_18" = alloca %TName_Bool*
  %"$$andb_17_1515" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_17"
  %"$$andb_17_fptr_1516" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_17_1515", 0
  %"$$andb_17_envptr_1517" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_17_1515", 1
  %"$b2_1518" = load %TName_Bool*, %TName_Bool** %b2
  %"$$andb_17_call_1519" = call %TName_Bool* %"$$andb_17_fptr_1516"(i8* %"$$andb_17_envptr_1517", %TName_Bool* %"$b2_1518")
  store %TName_Bool* %"$$andb_17_call_1519", %TName_Bool** %"$andb_18"
  %"$$andb_18_1520" = load %TName_Bool*, %TName_Bool** %"$andb_18"
  store %TName_Bool* %"$$andb_18_1520", %TName_Bool** %a1
  %a2 = alloca %TName_Bool*
  %"$andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_1521" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_1522" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1521", 0
  %"$andb_envptr_1523" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1521", 1
  %"$b3_1524" = load %TName_Bool*, %TName_Bool** %b3
  %"$andb_call_1525" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_1522"(i8* %"$andb_envptr_1523", %TName_Bool* %"$b3_1524")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_1525", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_19"
  %"$andb_20" = alloca %TName_Bool*
  %"$$andb_19_1526" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_19"
  %"$$andb_19_fptr_1527" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_19_1526", 0
  %"$$andb_19_envptr_1528" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_19_1526", 1
  %"$b4_1529" = load %TName_Bool*, %TName_Bool** %b4
  %"$$andb_19_call_1530" = call %TName_Bool* %"$$andb_19_fptr_1527"(i8* %"$$andb_19_envptr_1528", %TName_Bool* %"$b4_1529")
  store %TName_Bool* %"$$andb_19_call_1530", %TName_Bool** %"$andb_20"
  %"$$andb_20_1531" = load %TName_Bool*, %TName_Bool** %"$andb_20"
  store %TName_Bool* %"$$andb_20_1531", %TName_Bool** %a2
  %"$andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_1532" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_1533" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1532", 0
  %"$andb_envptr_1534" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_1532", 1
  %"$a1_1535" = load %TName_Bool*, %TName_Bool** %a1
  %"$andb_call_1536" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_1533"(i8* %"$andb_envptr_1534", %TName_Bool* %"$a1_1535")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_1536", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_21"
  %"$andb_22" = alloca %TName_Bool*
  %"$$andb_21_1537" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_21"
  %"$$andb_21_fptr_1538" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_21_1537", 0
  %"$$andb_21_envptr_1539" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_21_1537", 1
  %"$a2_1540" = load %TName_Bool*, %TName_Bool** %a2
  %"$$andb_21_call_1541" = call %TName_Bool* %"$$andb_21_fptr_1538"(i8* %"$$andb_21_envptr_1539", %TName_Bool* %"$a2_1540")
  store %TName_Bool* %"$$andb_21_call_1541", %TName_Bool** %"$andb_22"
  %"$$andb_22_1542" = load %TName_Bool*, %TName_Bool** %"$andb_22"
  store %TName_Bool* %"$$andb_22_1542", %TName_Bool** %b
  %"$b_1544" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_1545" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_1544", i32 0, i32 0
  %"$b_tag_1546" = load i8, i8* %"$b_tag_1545"
  switch i8 %"$b_tag_1546", label %"$empty_default_1547" [
    i8 0, label %"$True_1548"
    i8 1, label %"$False_1550"
  ]

"$True_1548":                                     ; preds = %"$matchsucc_1492"
  %"$b_1549" = bitcast %TName_Bool* %"$b_1544" to %CName_True*
  br label %"$matchsucc_1543"

"$False_1550":                                    ; preds = %"$matchsucc_1492"
  %"$b_1551" = bitcast %TName_Bool* %"$b_1544" to %CName_False*
  %"$fail__sender_1552" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1552"
  %"$tname_1553" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1552", %String %"$tname_1553")
  br label %"$matchsucc_1543"

"$empty_default_1547":                            ; preds = %"$matchsucc_1492"
  br label %"$matchsucc_1543"

"$matchsucc_1543":                                ; preds = %"$False_1550", %"$True_1548", %"$empty_default_1547"
  %m1 = alloca %Map_String_String*
  %k = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1554", i32 0, i32 0), i32 0 }, %String* %k
  %v = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1555", i32 0, i32 0), i32 3 }, %String* %v
  %e = alloca %Map_String_String*
  %"$execptr_load_1556" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_1557" = call i8* @_new_empty_map(i8* %"$execptr_load_1556")
  %"$Emp_1558" = bitcast i8* %"$_new_empty_map_call_1557" to %Map_String_String*
  store %Map_String_String* %"$Emp_1558", %Map_String_String** %e
  %"$execptr_load_1559" = load i8*, i8** @_execptr
  %"$e_1560" = load %Map_String_String*, %Map_String_String** %e
  %"$$e_1560_1561" = bitcast %Map_String_String* %"$e_1560" to i8*
  %"$put_k_1562" = alloca %String
  %"$k_1563" = load %String, %String* %k
  store %String %"$k_1563", %String* %"$put_k_1562"
  %"$$put_k_1562_1564" = bitcast %String* %"$put_k_1562" to i8*
  %"$put_v_1565" = alloca %String
  %"$v_1566" = load %String, %String* %v
  store %String %"$v_1566", %String* %"$put_v_1565"
  %"$$put_v_1565_1567" = bitcast %String* %"$put_v_1565" to i8*
  %"$put_call_1568" = call i8* @_put(i8* %"$execptr_load_1559", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e_1560_1561", i8* %"$$put_k_1562_1564", i8* %"$$put_v_1565_1567")
  %"$_put_1569" = bitcast i8* %"$put_call_1568" to %Map_String_String*
  store %Map_String_String* %"$_put_1569", %Map_String_String** %m1
  %"$execptr_load_1570" = load i8*, i8** @_execptr
  %"$m1_1572" = load %Map_String_String*, %Map_String_String** %m1
  %"$update_value_1573" = bitcast %Map_String_String* %"$m1_1572" to i8*
  call void @_update_field(i8* %"$execptr_load_1570", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1571", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_1573")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_1575" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1576" = bitcast i8* %"$_amount_1575" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1576"
  %"$_sender_1577" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1578" = bitcast i8* %"$_sender_1577" to [20 x i8]*
  call void @"$t16_1387"(%Uint128 %_amount, [20 x i8]* %"$_sender_1578")
  ret void
}

define internal void @"$t17_1579"(%Uint128 %_amount, [20 x i8]* %"$_sender_1580") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1580"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1581", i32 0, i32 0), i32 3 }, %String* %tname
  %key = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1582", i32 0, i32 0), i32 0 }, %String* %key
  %found = alloca %TName_Bool*
  %"$indices_buf_1583_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1583_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1583_salloc_load", i64 16)
  %"$indices_buf_1583_salloc" = bitcast i8* %"$indices_buf_1583_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1583" = bitcast [16 x i8]* %"$indices_buf_1583_salloc" to i8*
  %"$key_1584" = load %String, %String* %key
  %"$indices_gep_1585" = getelementptr i8, i8* %"$indices_buf_1583", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1585" to %String*
  store %String %"$key_1584", %String* %indices_cast
  %"$execptr_load_1586" = load i8*, i8** @_execptr
  %"$found_1588" = call i8* @_fetch_field(i8* %"$execptr_load_1586", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1587", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_1583", i32 0)
  %"$found_1589" = bitcast i8* %"$found_1588" to %TName_Bool*
  store %TName_Bool* %"$found_1589", %TName_Bool** %found
  %"$found_1591" = load %TName_Bool*, %TName_Bool** %found
  %"$found_tag_1592" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_1591", i32 0, i32 0
  %"$found_tag_1593" = load i8, i8* %"$found_tag_1592"
  switch i8 %"$found_tag_1593", label %"$empty_default_1594" [
    i8 0, label %"$True_1595"
    i8 1, label %"$False_1597"
  ]

"$True_1595":                                     ; preds = %entry
  %"$found_1596" = bitcast %TName_Bool* %"$found_1591" to %CName_True*
  br label %"$matchsucc_1590"

"$False_1597":                                    ; preds = %entry
  %"$found_1598" = bitcast %TName_Bool* %"$found_1591" to %CName_False*
  %"$fail__sender_1599" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1599"
  %"$tname_1600" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1599", %String %"$tname_1600")
  br label %"$matchsucc_1590"

"$empty_default_1594":                            ; preds = %entry
  br label %"$matchsucc_1590"

"$matchsucc_1590":                                ; preds = %"$False_1597", %"$True_1595", %"$empty_default_1594"
  %"$indices_buf_1601_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1601_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1601_salloc_load", i64 16)
  %"$indices_buf_1601_salloc" = bitcast i8* %"$indices_buf_1601_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1601" = bitcast [16 x i8]* %"$indices_buf_1601_salloc" to i8*
  %"$key_1602" = load %String, %String* %key
  %"$indices_gep_1603" = getelementptr i8, i8* %"$indices_buf_1601", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_1603" to %String*
  store %String %"$key_1602", %String* %indices_cast1
  %"$execptr_load_1604" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_1604", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1605", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_1601", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_1607" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1608" = bitcast i8* %"$_amount_1607" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1608"
  %"$_sender_1609" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1610" = bitcast i8* %"$_sender_1609" to [20 x i8]*
  call void @"$t17_1579"(%Uint128 %_amount, [20 x i8]* %"$_sender_1610")
  ret void
}

define internal void @"$t18_1611"(%Uint128 %_amount, [20 x i8]* %"$_sender_1612") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1612"
  %tname = alloca %String
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1613", i32 0, i32 0), i32 3 }, %String* %tname
  %key = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1614", i32 0, i32 0), i32 0 }, %String* %key
  %found = alloca %TName_Bool*
  %"$indices_buf_1615_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1615_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1615_salloc_load", i64 16)
  %"$indices_buf_1615_salloc" = bitcast i8* %"$indices_buf_1615_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1615" = bitcast [16 x i8]* %"$indices_buf_1615_salloc" to i8*
  %"$key_1616" = load %String, %String* %key
  %"$indices_gep_1617" = getelementptr i8, i8* %"$indices_buf_1615", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1617" to %String*
  store %String %"$key_1616", %String* %indices_cast
  %"$execptr_load_1618" = load i8*, i8** @_execptr
  %"$found_1620" = call i8* @_fetch_field(i8* %"$execptr_load_1618", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_1619", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_1615", i32 0)
  %"$found_1621" = bitcast i8* %"$found_1620" to %TName_Bool*
  store %TName_Bool* %"$found_1621", %TName_Bool** %found
  %"$found_1623" = load %TName_Bool*, %TName_Bool** %found
  %"$found_tag_1624" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_1623", i32 0, i32 0
  %"$found_tag_1625" = load i8, i8* %"$found_tag_1624"
  switch i8 %"$found_tag_1625", label %"$empty_default_1626" [
    i8 0, label %"$True_1627"
    i8 1, label %"$False_1631"
  ]

"$True_1627":                                     ; preds = %entry
  %"$found_1628" = bitcast %TName_Bool* %"$found_1623" to %CName_True*
  %"$fail__sender_1629" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1629"
  %"$tname_1630" = load %String, %String* %tname
  call void @"$fail_145"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_1629", %String %"$tname_1630")
  br label %"$matchsucc_1622"

"$False_1631":                                    ; preds = %entry
  %"$found_1632" = bitcast %TName_Bool* %"$found_1623" to %CName_False*
  br label %"$matchsucc_1622"

"$empty_default_1626":                            ; preds = %entry
  br label %"$matchsucc_1622"

"$matchsucc_1622":                                ; preds = %"$False_1631", %"$True_1627", %"$empty_default_1626"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_1634" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1635" = bitcast i8* %"$_amount_1634" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1635"
  %"$_sender_1636" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1637" = bitcast i8* %"$_sender_1636" to [20 x i8]*
  call void @"$t18_1611"(%Uint128 %_amount, [20 x i8]* %"$_sender_1637")
  ret void
}
