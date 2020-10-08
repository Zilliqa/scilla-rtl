

; gas_remaining: 4002000
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_31" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_63" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_62"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_62" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_64"**, %"$TyDescrTy_ADTTyp_63"* }
%"$TyDescrTy_ADTTyp_Constr_64" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_69" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_24_env_118" = type { %TName_Bool* }
%"$$fundef_22_env_119" = type {}
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
@"$TyDescr_Int32_Prim_32" = global %"$TyDescrTy_PrimTyp_31" zeroinitializer
@"$TyDescr_Int32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int32_Prim_32" to i8*) }
@"$TyDescr_Uint32_Prim_34" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 0 }
@"$TyDescr_Uint32_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint32_Prim_34" to i8*) }
@"$TyDescr_Int64_Prim_36" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 1 }
@"$TyDescr_Int64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int64_Prim_36" to i8*) }
@"$TyDescr_Uint64_Prim_38" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 1 }
@"$TyDescr_Uint64_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint64_Prim_38" to i8*) }
@"$TyDescr_Int128_Prim_40" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 2 }
@"$TyDescr_Int128_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int128_Prim_40" to i8*) }
@"$TyDescr_Uint128_Prim_42" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 2 }
@"$TyDescr_Uint128_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint128_Prim_42" to i8*) }
@"$TyDescr_Int256_Prim_44" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 3 }
@"$TyDescr_Int256_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int256_Prim_44" to i8*) }
@"$TyDescr_Uint256_Prim_46" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 3 }
@"$TyDescr_Uint256_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint256_Prim_46" to i8*) }
@"$TyDescr_String_Prim_48" = global %"$TyDescrTy_PrimTyp_31" { i32 2, i32 0 }
@"$TyDescr_String_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_String_Prim_48" to i8*) }
@"$TyDescr_Bnum_Prim_50" = global %"$TyDescrTy_PrimTyp_31" { i32 3, i32 0 }
@"$TyDescr_Bnum_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bnum_Prim_50" to i8*) }
@"$TyDescr_Message_Prim_52" = global %"$TyDescrTy_PrimTyp_31" { i32 4, i32 0 }
@"$TyDescr_Message_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Message_Prim_52" to i8*) }
@"$TyDescr_Event_Prim_54" = global %"$TyDescrTy_PrimTyp_31" { i32 5, i32 0 }
@"$TyDescr_Event_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Event_Prim_54" to i8*) }
@"$TyDescr_Exception_Prim_56" = global %"$TyDescrTy_PrimTyp_31" { i32 6, i32 0 }
@"$TyDescr_Exception_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Exception_Prim_56" to i8*) }
@"$TyDescr_Bystr_Prim_58" = global %"$TyDescrTy_PrimTyp_31" { i32 7, i32 0 }
@"$TyDescr_Bystr_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr_Prim_58" to i8*) }
@"$TyDescr_Bystr20_Prim_60" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 20 }
@"$TyDescr_Bystr20_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr20_Prim_60" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_82" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(String)_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_91" to i8*) }
@"$TyDescr_ADT_Option_String_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_String_ADTTyp_Specl_100" to i8*) }
@"$TyDescr_ADT_Bool_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_112" to i8*) }
@"$TyDescr_Map_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_69"* @"$TyDescr_MapTyp_115" to i8*) }
@"$TyDescr_Map_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_69"* @"$TyDescr_MapTyp_116" to i8*) }
@"$TyDescr_Map_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_69"* @"$TyDescr_MapTyp_117" to i8*) }
@"$TyDescr_Option_ADTTyp_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_102", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_62"*], [3 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Option_ADTTyp_m_specls_101", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_74" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_71"]
@"$TyDescr_ADT_Some_75" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_75", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_78" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_78", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_80" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_76", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_79"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_81" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_71"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Option_ADTTyp_73" }
@"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_83" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72"]
@"$TyDescr_ADT_Some_84" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_84", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_86" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_87" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_87", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_86", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_89" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_85", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_88"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_90" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Option_ADTTyp_73" }
@"$TyDescr_Option_Some_String_Constr_m_args_92" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_49"]
@"$TyDescr_ADT_Some_93" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_String_ADTTyp_Constr_94" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_93", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_String_Constr_m_args_92", i32 0, i32 0) }
@"$TyDescr_Option_None_String_Constr_m_args_95" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_96" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_String_ADTTyp_Constr_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_96", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_String_Constr_m_args_95", i32 0, i32 0) }
@"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_98" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_Some_String_ADTTyp_Constr_94", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_None_String_ADTTyp_Constr_97"]
@"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_99" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_49"]
@"$TyDescr_Option_String_ADTTyp_Specl_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_99", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_98", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Option_ADTTyp_73" }
@"$TyDescr_Option_ADTTyp_m_specls_101" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_82", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_91", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_String_ADTTyp_Specl_100"]
@"$TyDescr_ADT_Option_102" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_114", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Bool_ADTTyp_m_specls_113", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_104" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_105" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_105", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_104", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_107" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_108" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_108", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_107", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_110" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_True_ADTTyp_Constr_106", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_False_ADTTyp_Constr_109"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_110", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Bool_ADTTyp_103" }
@"$TyDescr_Bool_ADTTyp_m_specls_113" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_112"]
@"$TyDescr_ADT_Bool_114" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_115" = unnamed_addr constant %"$TyDescr_MapTyp_69" { %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_Map_71" }
@"$TyDescr_MapTyp_116" = unnamed_addr constant %"$TyDescr_MapTyp_69" { %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_Map_72" }
@"$TyDescr_MapTyp_117" = unnamed_addr constant %"$TyDescr_MapTyp_69" { %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_String_49" }
@andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_174" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_176" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_189" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_201" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_213" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_225" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_241" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_246" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_249" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_272" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_277" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_280" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_287" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_309" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_311" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_335" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_376" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_387" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_408" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_410" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_434" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_475" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_486" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_501" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_522" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_533" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_544" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_549" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_607" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_637" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_642" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_679" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_699" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_717" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_728" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_733" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_777" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_788" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_799" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_816" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_837" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_848" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_859" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_870" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_877" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_937" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_983" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_994" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1021" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1032" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1054" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1068" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1088" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_1099" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1110" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1117" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1154" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1188" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1209" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1228" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1239" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1246" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1283" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1317" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_1338" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_1357" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1368" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_1375" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1412" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1446" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_1467" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_1485" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1503" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_1514" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1525" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1532" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1569" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1603" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1624" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1643" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1648" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1685" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_1706" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1717" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1724" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1761" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_1782" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1793" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_1800" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1837" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_1858" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1869" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1880" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_1897" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1918" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_1929" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1940" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1947" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1984" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2018" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_2039" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_2058" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2069" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_2076" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2113" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_2147" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_2168" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_2199" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2219" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_2221" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2294" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2305" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_2331" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2351" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_2362" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_2364" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2416" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2450" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_2471" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_2489" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2507" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_2509" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_2594" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2614" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_2616" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2702" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_2716" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2736" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_2747" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_2752" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2830" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_2876" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_2937" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_2957" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_2959" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_3044" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_3064" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_3066" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3132" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_3151" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3162" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3297" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_3318" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_3339" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_3360" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_3379" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3390" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3401" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3412" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3423" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3434" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_3445" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3456" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3467" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3478" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_3649" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3669" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_3680" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3691" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3702" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3713" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3724" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3735" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3746" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3757" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_3764" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_3783" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_3802" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_3821" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3844" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3855" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3866" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3877" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_4109" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_4120" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_4154" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4174" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_4185" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4190" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_4233" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4251" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_4262" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4267" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_66", %_TyDescrTy_Typ* @"$TyDescr_Event_55", %_TyDescrTy_Typ* @"$TyDescr_Int64_37", %_TyDescrTy_Typ* @"$TyDescr_Map_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_68", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_Uint256_47", %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Map_71", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39", %_TyDescrTy_Typ* @"$TyDescr_Bnum_51", %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", %_TyDescrTy_Typ* @"$TyDescr_Int256_45", %_TyDescrTy_Typ* @"$TyDescr_Int128_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_59", %_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_Int32_33"]
@_tydescr_table_length = constant i32 22

define internal %TName_Bool* @"$fundef_24"(%"$$fundef_24_env_118"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_24_env_b_131" = getelementptr inbounds %"$$fundef_24_env_118", %"$$fundef_24_env_118"* %0, i32 0, i32 0
  %"$b_envload_132" = load %TName_Bool*, %TName_Bool** %"$$fundef_24_env_b_131"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_132", %TName_Bool** %b
  %"$retval_25" = alloca %TName_Bool*
  %"$gasrem_133" = load i64, i64* @_gasrem
  %"$gascmp_134" = icmp ugt i64 2, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %entry
  %"$consume_137" = sub i64 %"$gasrem_133", 2
  store i64 %"$consume_137", i64* @_gasrem
  %"$b_139" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_140" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_139", i32 0, i32 0
  %"$b_tag_141" = load i8, i8* %"$b_tag_140"
  switch i8 %"$b_tag_141", label %"$empty_default_142" [
    i8 1, label %"$False_143"
    i8 0, label %"$True_153"
  ]

"$False_143":                                     ; preds = %"$have_gas_136"
  %"$b_144" = bitcast %TName_Bool* %"$b_139" to %CName_False*
  %"$gasrem_145" = load i64, i64* @_gasrem
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$False_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$False_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem
  %"$adtval_150_load" = load i8*, i8** @_execptr
  %"$adtval_150_salloc" = call i8* @_salloc(i8* %"$adtval_150_load", i64 1)
  %"$adtval_150" = bitcast i8* %"$adtval_150_salloc" to %CName_False*
  %"$adtgep_151" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_150", i32 0, i32 0
  store i8 1, i8* %"$adtgep_151"
  %"$adtptr_152" = bitcast %CName_False* %"$adtval_150" to %TName_Bool*
  store %TName_Bool* %"$adtptr_152", %TName_Bool** %"$retval_25"
  br label %"$matchsucc_138"

"$True_153":                                      ; preds = %"$have_gas_136"
  %"$b_154" = bitcast %TName_Bool* %"$b_139" to %CName_True*
  %"$gasrem_155" = load i64, i64* @_gasrem
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$True_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$True_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem
  store %TName_Bool* %1, %TName_Bool** %"$retval_25"
  br label %"$matchsucc_138"

"$empty_default_142":                             ; preds = %"$have_gas_136"
  br label %"$matchsucc_138"

"$matchsucc_138":                                 ; preds = %"$have_gas_158", %"$have_gas_148", %"$empty_default_142"
  %"$$retval_25_160" = load %TName_Bool*, %TName_Bool** %"$retval_25"
  ret %TName_Bool* %"$$retval_25_160"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_119"* %0, %TName_Bool* %1) {
entry:
  %"$retval_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_120" = load i64, i64* @_gasrem
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem
  %"$$fundef_24_envp_125_load" = load i8*, i8** @_execptr
  %"$$fundef_24_envp_125_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_125_load", i64 8)
  %"$$fundef_24_envp_125" = bitcast i8* %"$$fundef_24_envp_125_salloc" to %"$$fundef_24_env_118"*
  %"$$fundef_24_env_voidp_127" = bitcast %"$$fundef_24_env_118"* %"$$fundef_24_envp_125" to i8*
  %"$$fundef_24_cloval_128" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_24_env_118"*, %TName_Bool*)* @"$fundef_24" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_127", 1
  %"$$fundef_24_env_b_129" = getelementptr inbounds %"$$fundef_24_env_118", %"$$fundef_24_env_118"* %"$$fundef_24_envp_125", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_24_env_b_129"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_24_cloval_128", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_23"
  %"$$retval_23_130" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_23"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_23_130"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_161" = load i64, i64* @_gasrem
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %entry
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_22_env_119"*, %TName_Bool*)* @"$fundef_22" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  ret void
}

define void @_init_state() {
entry:
  %"$f_s1_26" = alloca %String
  %"$gasrem_169" = load i64, i64* @_gasrem
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %entry
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_174", i32 0, i32 0), i32 3 }, %String* %"$f_s1_26"
  %"$execptr_load_175" = load i8*, i8** @_execptr
  %"$$f_s1_26_177" = load %String, %String* %"$f_s1_26"
  %"$update_value_178" = alloca %String
  store %String %"$$f_s1_26_177", %String* %"$update_value_178"
  %"$update_value_179" = bitcast %String* %"$update_value_178" to i8*
  call void @_update_field(i8* %"$execptr_load_175", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_176", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_49", i32 0, i8* null, i8* %"$update_value_179")
  %"$f_m1_27" = alloca %Map_String_String*
  %"$gasrem_180" = load i64, i64* @_gasrem
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_172"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem
  %"$execptr_load_185" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_186" = call i8* @_new_empty_map(i8* %"$execptr_load_185")
  %"$Emp_187" = bitcast i8* %"$_new_empty_map_call_186" to %Map_String_String*
  store %Map_String_String* %"$Emp_187", %Map_String_String** %"$f_m1_27"
  %"$execptr_load_188" = load i8*, i8** @_execptr
  %"$$f_m1_27_190" = load %Map_String_String*, %Map_String_String** %"$f_m1_27"
  %"$update_value_191" = bitcast %Map_String_String* %"$$f_m1_27_190" to i8*
  call void @_update_field(i8* %"$execptr_load_188", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_189", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_191")
  %"$f_m2_28" = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_192" = load i64, i64* @_gasrem
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_183"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem
  %"$execptr_load_197" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_198" = call i8* @_new_empty_map(i8* %"$execptr_load_197")
  %"$Emp_199" = bitcast i8* %"$_new_empty_map_call_198" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_199", %"Map_String_Map_(String)_(String)"** %"$f_m2_28"
  %"$execptr_load_200" = load i8*, i8** @_execptr
  %"$$f_m2_28_202" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_28"
  %"$update_value_203" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_28_202" to i8*
  call void @_update_field(i8* %"$execptr_load_200", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_201", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_203")
  %"$f_m3_29" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_204" = load i64, i64* @_gasrem
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_195"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem
  %"$execptr_load_209" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_210" = call i8* @_new_empty_map(i8* %"$execptr_load_209")
  %"$Emp_211" = bitcast i8* %"$_new_empty_map_call_210" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$Emp_211", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_29"
  %"$execptr_load_212" = load i8*, i8** @_execptr
  %"$$f_m3_29_214" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_29"
  %"$update_value_215" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_29_214" to i8*
  call void @_update_field(i8* %"$execptr_load_212", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_213", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_70", i32 0, i8* null, i8* %"$update_value_215")
  %"$f_m_30" = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_216" = load i64, i64* @_gasrem
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_207"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem
  %"$execptr_load_221" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_222" = call i8* @_new_empty_map(i8* %"$execptr_load_221")
  %"$Emp_223" = bitcast i8* %"$_new_empty_map_call_222" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_223", %"Map_String_Map_(String)_(String)"** %"$f_m_30"
  %"$execptr_load_224" = load i8*, i8** @_execptr
  %"$$f_m_30_226" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_30"
  %"$update_value_227" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_30_226" to i8*
  call void @_update_field(i8* %"$execptr_load_224", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_225", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_227")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$_sender_229", %String %tname) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_229"
  %"$gasrem_230" = load i64, i64* @_gasrem
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %entry
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_235" = load i64, i64* @_gasrem
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem
  %"$msgobj_240_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_240_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_240_salloc_load", i64 81)
  %"$msgobj_240_salloc" = bitcast i8* %"$msgobj_240_salloc_salloc" to [81 x i8]*
  %"$msgobj_240" = bitcast [81 x i8]* %"$msgobj_240_salloc" to i8*
  store i8 2, i8* %"$msgobj_240"
  %"$msgobj_fname_242" = getelementptr i8, i8* %"$msgobj_240", i32 1
  %"$msgobj_fname_243" = bitcast i8* %"$msgobj_fname_242" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_241", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_243"
  %"$msgobj_td_244" = getelementptr i8, i8* %"$msgobj_240", i32 17
  %"$msgobj_td_245" = bitcast i8* %"$msgobj_td_244" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_245"
  %"$msgobj_v_247" = getelementptr i8, i8* %"$msgobj_240", i32 25
  %"$msgobj_v_248" = bitcast i8* %"$msgobj_v_247" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_246", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_248"
  %"$msgobj_fname_250" = getelementptr i8, i8* %"$msgobj_240", i32 41
  %"$msgobj_fname_251" = bitcast i8* %"$msgobj_fname_250" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_249", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_251"
  %"$msgobj_td_252" = getelementptr i8, i8* %"$msgobj_240", i32 57
  %"$msgobj_td_253" = bitcast i8* %"$msgobj_td_252" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_253"
  %"$msgobj_v_254" = getelementptr i8, i8* %"$msgobj_240", i32 65
  %"$msgobj_v_255" = bitcast i8* %"$msgobj_v_254" to %String*
  store %String %tname, %String* %"$msgobj_v_255"
  store i8* %"$msgobj_240", i8** %e
  %"$execptr_load_257" = load i8*, i8** @_execptr
  %"$e_258" = load i8*, i8** %e
  call void @_throw(i8* %"$execptr_load_257", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_258")
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$_sender_260", %String %tname, %String %msg) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_260"
  %"$gasrem_261" = load i64, i64* @_gasrem
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %entry
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_266" = load i64, i64* @_gasrem
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem
  %"$msgobj_271_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_271_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_271_salloc_load", i64 121)
  %"$msgobj_271_salloc" = bitcast i8* %"$msgobj_271_salloc_salloc" to [121 x i8]*
  %"$msgobj_271" = bitcast [121 x i8]* %"$msgobj_271_salloc" to i8*
  store i8 3, i8* %"$msgobj_271"
  %"$msgobj_fname_273" = getelementptr i8, i8* %"$msgobj_271", i32 1
  %"$msgobj_fname_274" = bitcast i8* %"$msgobj_fname_273" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_272", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_274"
  %"$msgobj_td_275" = getelementptr i8, i8* %"$msgobj_271", i32 17
  %"$msgobj_td_276" = bitcast i8* %"$msgobj_td_275" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_276"
  %"$msgobj_v_278" = getelementptr i8, i8* %"$msgobj_271", i32 25
  %"$msgobj_v_279" = bitcast i8* %"$msgobj_v_278" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_277", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_279"
  %"$msgobj_fname_281" = getelementptr i8, i8* %"$msgobj_271", i32 41
  %"$msgobj_fname_282" = bitcast i8* %"$msgobj_fname_281" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_280", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_282"
  %"$msgobj_td_283" = getelementptr i8, i8* %"$msgobj_271", i32 57
  %"$msgobj_td_284" = bitcast i8* %"$msgobj_td_283" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_284"
  %"$msgobj_v_285" = getelementptr i8, i8* %"$msgobj_271", i32 65
  %"$msgobj_v_286" = bitcast i8* %"$msgobj_v_285" to %String*
  store %String %tname, %String* %"$msgobj_v_286"
  %"$msgobj_fname_288" = getelementptr i8, i8* %"$msgobj_271", i32 81
  %"$msgobj_fname_289" = bitcast i8* %"$msgobj_fname_288" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_287", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_289"
  %"$msgobj_td_290" = getelementptr i8, i8* %"$msgobj_271", i32 97
  %"$msgobj_td_291" = bitcast i8* %"$msgobj_td_290" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_291"
  %"$msgobj_v_292" = getelementptr i8, i8* %"$msgobj_271", i32 105
  %"$msgobj_v_293" = bitcast i8* %"$msgobj_v_292" to %String*
  store %String %msg, %String* %"$msgobj_v_293"
  store i8* %"$msgobj_271", i8** %e
  %"$execptr_load_295" = load i8*, i8** @_execptr
  %"$e_296" = load i8*, i8** %e
  call void @_throw(i8* %"$execptr_load_295", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_296")
  ret void
}

define internal void @"$t1_297"(%Uint128 %_amount, [20 x i8]* %"$_sender_298") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_298"
  %"$gasrem_299" = load i64, i64* @_gasrem
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %entry
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_304" = load i64, i64* @_gasrem
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_309", i32 0, i32 0), i32 2 }, %String* %tname
  %f = alloca %String
  %"$execptr_load_310" = load i8*, i8** @_execptr
  %"$f_312" = call i8* @_fetch_field(i8* %"$execptr_load_310", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_311", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_49", i32 0, i8* null, i32 1)
  %"$f_313" = bitcast i8* %"$f_312" to %String*
  %"$f_314" = load %String, %String* %"$f_313"
  store %String %"$f_314", %String* %f
  %"$_literal_cost_f_315" = alloca %String
  %"$f_316" = load %String, %String* %f
  store %String %"$f_316", %String* %"$_literal_cost_f_315"
  %"$$_literal_cost_f_315_317" = bitcast %String* %"$_literal_cost_f_315" to i8*
  %"$_literal_cost_call_318" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_f_315_317")
  %"$gasadd_319" = add i64 %"$_literal_cost_call_318", 0
  %"$gasrem_320" = load i64, i64* @_gasrem
  %"$gascmp_321" = icmp ugt i64 %"$gasadd_319", %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_307"
  %"$consume_324" = sub i64 %"$gasrem_320", %"$gasadd_319"
  store i64 %"$consume_324", i64* @_gasrem
  %"$gasrem_325" = load i64, i64* @_gasrem
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_330" = load i64, i64* @_gasrem
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_335", i32 0, i32 0), i32 3 }, %String* %s
  %"$gasrem_336" = load i64, i64* @_gasrem
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_333"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem
  %t = alloca %TName_Bool*
  %"$execptr_load_341" = load i8*, i8** @_execptr
  %"$f_342" = load %String, %String* %f
  %"$s_343" = load %String, %String* %s
  %"$eq_call_344" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_341", %String %"$f_342", %String %"$s_343")
  store %TName_Bool* %"$eq_call_344", %TName_Bool** %t
  %"$gasrem_345" = load i64, i64* @_gasrem
  %"$gascmp_346" = icmp ugt i64 2, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_339"
  %"$consume_349" = sub i64 %"$gasrem_345", 2
  store i64 %"$consume_349", i64* @_gasrem
  %"$t_351" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_352" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_351", i32 0, i32 0
  %"$t_tag_353" = load i8, i8* %"$t_tag_352"
  switch i8 %"$t_tag_353", label %"$empty_default_354" [
    i8 1, label %"$False_355"
    i8 0, label %"$True_364"
  ]

"$False_355":                                     ; preds = %"$have_gas_348"
  %"$t_356" = bitcast %TName_Bool* %"$t_351" to %CName_False*
  %"$gasrem_357" = load i64, i64* @_gasrem
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$False_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$False_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem
  %"$fail__sender_362" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_362"
  %"$tname_363" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_362", %String %"$tname_363")
  br label %"$matchsucc_350"

"$True_364":                                      ; preds = %"$have_gas_348"
  %"$t_365" = bitcast %TName_Bool* %"$t_351" to %CName_True*
  br label %"$matchsucc_350"

"$empty_default_354":                             ; preds = %"$have_gas_348"
  br label %"$matchsucc_350"

"$matchsucc_350":                                 ; preds = %"$True_364", %"$have_gas_360", %"$empty_default_354"
  %"$gasrem_366" = load i64, i64* @_gasrem
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$matchsucc_350"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$matchsucc_350"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem
  %s2 = alloca %String
  %"$gasrem_371" = load i64, i64* @_gasrem
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_376", i32 0, i32 0), i32 3 }, %String* %s2
  %"$_literal_cost_s2_377" = alloca %String
  %"$s2_378" = load %String, %String* %s2
  store %String %"$s2_378", %String* %"$_literal_cost_s2_377"
  %"$$_literal_cost_s2_377_379" = bitcast %String* %"$_literal_cost_s2_377" to i8*
  %"$_literal_cost_call_380" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s2_377_379")
  %"$gasrem_381" = load i64, i64* @_gasrem
  %"$gascmp_382" = icmp ugt i64 %"$_literal_cost_call_380", %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_374"
  %"$consume_385" = sub i64 %"$gasrem_381", %"$_literal_cost_call_380"
  store i64 %"$consume_385", i64* @_gasrem
  %"$execptr_load_386" = load i8*, i8** @_execptr
  %"$s2_388" = load %String, %String* %s2
  %"$update_value_389" = alloca %String
  store %String %"$s2_388", %String* %"$update_value_389"
  %"$update_value_390" = bitcast %String* %"$update_value_389" to i8*
  call void @_update_field(i8* %"$execptr_load_386", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_387", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_49", i32 0, i8* null, i8* %"$update_value_390")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) {
entry:
  %"$_amount_392" = getelementptr i8, i8* %0, i32 0
  %"$_amount_393" = bitcast i8* %"$_amount_392" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_393"
  %"$_sender_394" = getelementptr i8, i8* %0, i32 16
  %"$_sender_395" = bitcast i8* %"$_sender_394" to [20 x i8]*
  call void @"$t1_297"(%Uint128 %_amount, [20 x i8]* %"$_sender_395")
  ret void
}

define internal void @"$t2_396"(%Uint128 %_amount, [20 x i8]* %"$_sender_397") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_397"
  %"$gasrem_398" = load i64, i64* @_gasrem
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %entry
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_403" = load i64, i64* @_gasrem
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_408", i32 0, i32 0), i32 2 }, %String* %tname
  %f = alloca %String
  %"$execptr_load_409" = load i8*, i8** @_execptr
  %"$f_411" = call i8* @_fetch_field(i8* %"$execptr_load_409", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_410", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_49", i32 0, i8* null, i32 1)
  %"$f_412" = bitcast i8* %"$f_411" to %String*
  %"$f_413" = load %String, %String* %"$f_412"
  store %String %"$f_413", %String* %f
  %"$_literal_cost_f_414" = alloca %String
  %"$f_415" = load %String, %String* %f
  store %String %"$f_415", %String* %"$_literal_cost_f_414"
  %"$$_literal_cost_f_414_416" = bitcast %String* %"$_literal_cost_f_414" to i8*
  %"$_literal_cost_call_417" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_f_414_416")
  %"$gasadd_418" = add i64 %"$_literal_cost_call_417", 0
  %"$gasrem_419" = load i64, i64* @_gasrem
  %"$gascmp_420" = icmp ugt i64 %"$gasadd_418", %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_406"
  %"$consume_423" = sub i64 %"$gasrem_419", %"$gasadd_418"
  store i64 %"$consume_423", i64* @_gasrem
  %"$gasrem_424" = load i64, i64* @_gasrem
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_429" = load i64, i64* @_gasrem
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_434", i32 0, i32 0), i32 3 }, %String* %s
  %"$gasrem_435" = load i64, i64* @_gasrem
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_432"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem
  %t = alloca %TName_Bool*
  %"$execptr_load_440" = load i8*, i8** @_execptr
  %"$f_441" = load %String, %String* %f
  %"$s_442" = load %String, %String* %s
  %"$eq_call_443" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_440", %String %"$f_441", %String %"$s_442")
  store %TName_Bool* %"$eq_call_443", %TName_Bool** %t
  %"$gasrem_444" = load i64, i64* @_gasrem
  %"$gascmp_445" = icmp ugt i64 2, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_438"
  %"$consume_448" = sub i64 %"$gasrem_444", 2
  store i64 %"$consume_448", i64* @_gasrem
  %"$t_450" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_451" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_450", i32 0, i32 0
  %"$t_tag_452" = load i8, i8* %"$t_tag_451"
  switch i8 %"$t_tag_452", label %"$empty_default_453" [
    i8 1, label %"$False_454"
    i8 0, label %"$True_463"
  ]

"$False_454":                                     ; preds = %"$have_gas_447"
  %"$t_455" = bitcast %TName_Bool* %"$t_450" to %CName_False*
  %"$gasrem_456" = load i64, i64* @_gasrem
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$False_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$False_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem
  %"$fail__sender_461" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_461"
  %"$tname_462" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_461", %String %"$tname_462")
  br label %"$matchsucc_449"

"$True_463":                                      ; preds = %"$have_gas_447"
  %"$t_464" = bitcast %TName_Bool* %"$t_450" to %CName_True*
  br label %"$matchsucc_449"

"$empty_default_453":                             ; preds = %"$have_gas_447"
  br label %"$matchsucc_449"

"$matchsucc_449":                                 ; preds = %"$True_463", %"$have_gas_459", %"$empty_default_453"
  %"$gasrem_465" = load i64, i64* @_gasrem
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$matchsucc_449"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$matchsucc_449"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem
  %key1 = alloca %String
  %"$gasrem_470" = load i64, i64* @_gasrem
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_475", i32 0, i32 0), i32 4 }, %String* %key1
  %"$gasrem_476" = load i64, i64* @_gasrem
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_473"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem
  %val1 = alloca %String
  %"$gasrem_481" = load i64, i64* @_gasrem
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_479"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_486", i32 0, i32 0), i32 3 }, %String* %val1
  %"$_literal_cost_val1_487" = alloca %String
  %"$val1_488" = load %String, %String* %val1
  store %String %"$val1_488", %String* %"$_literal_cost_val1_487"
  %"$$_literal_cost_val1_487_489" = bitcast %String* %"$_literal_cost_val1_487" to i8*
  %"$_literal_cost_call_490" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_val1_487_489")
  %"$gasadd_491" = add i64 %"$_literal_cost_call_490", 1
  %"$gasrem_492" = load i64, i64* @_gasrem
  %"$gascmp_493" = icmp ugt i64 %"$gasadd_491", %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_484"
  %"$consume_496" = sub i64 %"$gasrem_492", %"$gasadd_491"
  store i64 %"$consume_496", i64* @_gasrem
  %"$indices_buf_497_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_497_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_497_salloc_load", i64 16)
  %"$indices_buf_497_salloc" = bitcast i8* %"$indices_buf_497_salloc_salloc" to [16 x i8]*
  %"$indices_buf_497" = bitcast [16 x i8]* %"$indices_buf_497_salloc" to i8*
  %"$key1_498" = load %String, %String* %key1
  %"$indices_gep_499" = getelementptr i8, i8* %"$indices_buf_497", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_499" to %String*
  store %String %"$key1_498", %String* %indices_cast
  %"$execptr_load_500" = load i8*, i8** @_execptr
  %"$val1_502" = load %String, %String* %val1
  %"$update_value_503" = alloca %String
  store %String %"$val1_502", %String* %"$update_value_503"
  %"$update_value_504" = bitcast %String* %"$update_value_503" to i8*
  call void @_update_field(i8* %"$execptr_load_500", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_501", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_497", i8* %"$update_value_504")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_506" = getelementptr i8, i8* %0, i32 0
  %"$_amount_507" = bitcast i8* %"$_amount_506" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_507"
  %"$_sender_508" = getelementptr i8, i8* %0, i32 16
  %"$_sender_509" = bitcast i8* %"$_sender_508" to [20 x i8]*
  call void @"$t2_396"(%Uint128 %_amount, [20 x i8]* %"$_sender_509")
  ret void
}

define internal void @"$t3_510"(%Uint128 %_amount, [20 x i8]* %"$_sender_511") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_511"
  %"$gasrem_512" = load i64, i64* @_gasrem
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %entry
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_517" = load i64, i64* @_gasrem
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_522", i32 0, i32 0), i32 2 }, %String* %tname
  %"$gasrem_523" = load i64, i64* @_gasrem
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_520"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_528" = load i64, i64* @_gasrem
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_533", i32 0, i32 0), i32 3 }, %String* %s
  %"$gasrem_534" = load i64, i64* @_gasrem
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_531"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem
  %key1 = alloca %String
  %"$gasrem_539" = load i64, i64* @_gasrem
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_544", i32 0, i32 0), i32 4 }, %String* %key1
  %val1 = alloca %TName_Option_String*
  %"$indices_buf_545_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_545_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_545_salloc_load", i64 16)
  %"$indices_buf_545_salloc" = bitcast i8* %"$indices_buf_545_salloc_salloc" to [16 x i8]*
  %"$indices_buf_545" = bitcast [16 x i8]* %"$indices_buf_545_salloc" to i8*
  %"$key1_546" = load %String, %String* %key1
  %"$indices_gep_547" = getelementptr i8, i8* %"$indices_buf_545", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_547" to %String*
  store %String %"$key1_546", %String* %indices_cast
  %"$execptr_load_548" = load i8*, i8** @_execptr
  %"$val1_550" = call i8* @_fetch_field(i8* %"$execptr_load_548", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_549", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_545", i32 1)
  %"$val1_551" = bitcast i8* %"$val1_550" to %TName_Option_String*
  store %TName_Option_String* %"$val1_551", %TName_Option_String** %val1
  %"$val1_552" = load %TName_Option_String*, %TName_Option_String** %val1
  %"$$val1_552_553" = bitcast %TName_Option_String* %"$val1_552" to i8*
  %"$_literal_cost_call_554" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$val1_552_553")
  %"$gasadd_555" = add i64 %"$_literal_cost_call_554", 0
  %"$gasadd_556" = add i64 %"$gasadd_555", 1
  %"$gasrem_557" = load i64, i64* @_gasrem
  %"$gascmp_558" = icmp ugt i64 %"$gasadd_556", %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_542"
  %"$consume_561" = sub i64 %"$gasrem_557", %"$gasadd_556"
  store i64 %"$consume_561", i64* @_gasrem
  %"$gasrem_562" = load i64, i64* @_gasrem
  %"$gascmp_563" = icmp ugt i64 2, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 2
  store i64 %"$consume_566", i64* @_gasrem
  %"$val1_568" = load %TName_Option_String*, %TName_Option_String** %val1
  %"$val1_tag_569" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_568", i32 0, i32 0
  %"$val1_tag_570" = load i8, i8* %"$val1_tag_569"
  switch i8 %"$val1_tag_570", label %"$empty_default_571" [
    i8 0, label %"$Some_572"
    i8 1, label %"$None_618"
  ]

"$Some_572":                                      ; preds = %"$have_gas_565"
  %"$val1_573" = bitcast %TName_Option_String* %"$val1_568" to %CName_Some_String*
  %"$val_gep_574" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_573", i32 0, i32 1
  %"$val_load_575" = load %String, %String* %"$val_gep_574"
  %val = alloca %String
  store %String %"$val_load_575", %String* %val
  %"$gasrem_576" = load i64, i64* @_gasrem
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$Some_572"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$Some_572"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem
  %t = alloca %TName_Bool*
  %"$execptr_load_581" = load i8*, i8** @_execptr
  %"$val_582" = load %String, %String* %val
  %"$s_583" = load %String, %String* %s
  %"$eq_call_584" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_581", %String %"$val_582", %String %"$s_583")
  store %TName_Bool* %"$eq_call_584", %TName_Bool** %t
  %"$gasrem_585" = load i64, i64* @_gasrem
  %"$gascmp_586" = icmp ugt i64 2, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_579"
  %"$consume_589" = sub i64 %"$gasrem_585", 2
  store i64 %"$consume_589", i64* @_gasrem
  %"$t_591" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_592" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_591", i32 0, i32 0
  %"$t_tag_593" = load i8, i8* %"$t_tag_592"
  switch i8 %"$t_tag_593", label %"$empty_default_594" [
    i8 1, label %"$False_595"
    i8 0, label %"$True_616"
  ]

"$False_595":                                     ; preds = %"$have_gas_588"
  %"$t_596" = bitcast %TName_Bool* %"$t_591" to %CName_False*
  %"$gasrem_597" = load i64, i64* @_gasrem
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$False_595"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$False_595"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_602" = load i64, i64* @_gasrem
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_600"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_607", i32 0, i32 0), i32 23 }, %String* %m
  %"$gasrem_608" = load i64, i64* @_gasrem
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_605"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem
  %"$fail_msg__sender_613" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_613"
  %"$tname_614" = load %String, %String* %tname
  %"$m_615" = load %String, %String* %m
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_613", %String %"$tname_614", %String %"$m_615")
  br label %"$matchsucc_590"

"$True_616":                                      ; preds = %"$have_gas_588"
  %"$t_617" = bitcast %TName_Bool* %"$t_591" to %CName_True*
  br label %"$matchsucc_590"

"$empty_default_594":                             ; preds = %"$have_gas_588"
  br label %"$matchsucc_590"

"$matchsucc_590":                                 ; preds = %"$True_616", %"$have_gas_611", %"$empty_default_594"
  br label %"$matchsucc_567"

"$None_618":                                      ; preds = %"$have_gas_565"
  %"$val1_619" = bitcast %TName_Option_String* %"$val1_568" to %CName_None_String*
  %"$gasrem_620" = load i64, i64* @_gasrem
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$None_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$None_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem
  %"$fail__sender_625" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_625"
  %"$tname_626" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_625", %String %"$tname_626")
  br label %"$matchsucc_567"

"$empty_default_571":                             ; preds = %"$have_gas_565"
  br label %"$matchsucc_567"

"$matchsucc_567":                                 ; preds = %"$have_gas_623", %"$matchsucc_590", %"$empty_default_571"
  %"$gasrem_627" = load i64, i64* @_gasrem
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$matchsucc_567"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$matchsucc_567"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem
  %key2 = alloca %String
  %"$gasrem_632" = load i64, i64* @_gasrem
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_637", i32 0, i32 0), i32 4 }, %String* %key2
  %val2 = alloca %TName_Option_String*
  %"$indices_buf_638_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_638_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_638_salloc_load", i64 16)
  %"$indices_buf_638_salloc" = bitcast i8* %"$indices_buf_638_salloc_salloc" to [16 x i8]*
  %"$indices_buf_638" = bitcast [16 x i8]* %"$indices_buf_638_salloc" to i8*
  %"$key2_639" = load %String, %String* %key2
  %"$indices_gep_640" = getelementptr i8, i8* %"$indices_buf_638", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_640" to %String*
  store %String %"$key2_639", %String* %indices_cast1
  %"$execptr_load_641" = load i8*, i8** @_execptr
  %"$val2_643" = call i8* @_fetch_field(i8* %"$execptr_load_641", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_642", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_638", i32 1)
  %"$val2_644" = bitcast i8* %"$val2_643" to %TName_Option_String*
  store %TName_Option_String* %"$val2_644", %TName_Option_String** %val2
  %"$val2_645" = load %TName_Option_String*, %TName_Option_String** %val2
  %"$$val2_645_646" = bitcast %TName_Option_String* %"$val2_645" to i8*
  %"$_literal_cost_call_647" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$val2_645_646")
  %"$gasadd_648" = add i64 %"$_literal_cost_call_647", 0
  %"$gasadd_649" = add i64 %"$gasadd_648", 1
  %"$gasrem_650" = load i64, i64* @_gasrem
  %"$gascmp_651" = icmp ugt i64 %"$gasadd_649", %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_635"
  %"$consume_654" = sub i64 %"$gasrem_650", %"$gasadd_649"
  store i64 %"$consume_654", i64* @_gasrem
  %"$gasrem_655" = load i64, i64* @_gasrem
  %"$gascmp_656" = icmp ugt i64 2, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 2
  store i64 %"$consume_659", i64* @_gasrem
  %"$val2_661" = load %TName_Option_String*, %TName_Option_String** %val2
  %"$val2_tag_662" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_661", i32 0, i32 0
  %"$val2_tag_663" = load i8, i8* %"$val2_tag_662"
  switch i8 %"$val2_tag_663", label %"$empty_default_664" [
    i8 0, label %"$Some_665"
    i8 1, label %"$None_688"
  ]

"$Some_665":                                      ; preds = %"$have_gas_658"
  %"$val2_666" = bitcast %TName_Option_String* %"$val2_661" to %CName_Some_String*
  %"$$val2_12_gep_667" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_666", i32 0, i32 1
  %"$$val2_12_load_668" = load %String, %String* %"$$val2_12_gep_667"
  %"$val2_12" = alloca %String
  store %String %"$$val2_12_load_668", %String* %"$val2_12"
  %"$gasrem_669" = load i64, i64* @_gasrem
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$Some_665"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$Some_665"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem
  %m2 = alloca %String
  %"$gasrem_674" = load i64, i64* @_gasrem
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_672"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_679", i32 0, i32 0), i32 25 }, %String* %m2
  %"$gasrem_680" = load i64, i64* @_gasrem
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_677"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem
  %"$fail_msg__sender_685" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_685"
  %"$tname_686" = load %String, %String* %tname
  %"$m_687" = load %String, %String* %m2
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_685", %String %"$tname_686", %String %"$m_687")
  br label %"$matchsucc_660"

"$None_688":                                      ; preds = %"$have_gas_658"
  %"$val2_689" = bitcast %TName_Option_String* %"$val2_661" to %CName_None_String*
  br label %"$matchsucc_660"

"$empty_default_664":                             ; preds = %"$have_gas_658"
  br label %"$matchsucc_660"

"$matchsucc_660":                                 ; preds = %"$None_688", %"$have_gas_683", %"$empty_default_664"
  %"$gasrem_690" = load i64, i64* @_gasrem
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$matchsucc_660"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$matchsucc_660"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem
  %"$indices_buf_695_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_695_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_695_salloc_load", i64 16)
  %"$indices_buf_695_salloc" = bitcast i8* %"$indices_buf_695_salloc_salloc" to [16 x i8]*
  %"$indices_buf_695" = bitcast [16 x i8]* %"$indices_buf_695_salloc" to i8*
  %"$key1_696" = load %String, %String* %key1
  %"$indices_gep_697" = getelementptr i8, i8* %"$indices_buf_695", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_697" to %String*
  store %String %"$key1_696", %String* %indices_cast3
  %"$execptr_load_698" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_698", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_699", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_695", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_701" = getelementptr i8, i8* %0, i32 0
  %"$_amount_702" = bitcast i8* %"$_amount_701" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_702"
  %"$_sender_703" = getelementptr i8, i8* %0, i32 16
  %"$_sender_704" = bitcast i8* %"$_sender_703" to [20 x i8]*
  call void @"$t3_510"(%Uint128 %_amount, [20 x i8]* %"$_sender_704")
  ret void
}

define internal void @"$t4_705"(%Uint128 %_amount, [20 x i8]* %"$_sender_706") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_706"
  %"$gasrem_707" = load i64, i64* @_gasrem
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %entry
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_712" = load i64, i64* @_gasrem
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_710"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_717", i32 0, i32 0), i32 2 }, %String* %tname
  %"$gasrem_718" = load i64, i64* @_gasrem
  %"$gascmp_719" = icmp ugt i64 1, %"$gasrem_718"
  br i1 %"$gascmp_719", label %"$out_of_gas_720", label %"$have_gas_721"

"$out_of_gas_720":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_721"

"$have_gas_721":                                  ; preds = %"$out_of_gas_720", %"$have_gas_715"
  %"$consume_722" = sub i64 %"$gasrem_718", 1
  store i64 %"$consume_722", i64* @_gasrem
  %key1 = alloca %String
  %"$gasrem_723" = load i64, i64* @_gasrem
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_721"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_721"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_728", i32 0, i32 0), i32 4 }, %String* %key1
  %key1_found = alloca %TName_Bool*
  %"$indices_buf_729_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_729_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_729_salloc_load", i64 16)
  %"$indices_buf_729_salloc" = bitcast i8* %"$indices_buf_729_salloc_salloc" to [16 x i8]*
  %"$indices_buf_729" = bitcast [16 x i8]* %"$indices_buf_729_salloc" to i8*
  %"$key1_730" = load %String, %String* %key1
  %"$indices_gep_731" = getelementptr i8, i8* %"$indices_buf_729", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_731" to %String*
  store %String %"$key1_730", %String* %indices_cast
  %"$execptr_load_732" = load i8*, i8** @_execptr
  %"$key1_found_734" = call i8* @_fetch_field(i8* %"$execptr_load_732", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_733", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_729", i32 0)
  %"$key1_found_735" = bitcast i8* %"$key1_found_734" to %TName_Bool*
  store %TName_Bool* %"$key1_found_735", %TName_Bool** %key1_found
  %"$key1_found_736" = load %TName_Bool*, %TName_Bool** %key1_found
  %"$$key1_found_736_737" = bitcast %TName_Bool* %"$key1_found_736" to i8*
  %"$_literal_cost_call_738" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_68", i8* %"$$key1_found_736_737")
  %"$gasadd_739" = add i64 %"$_literal_cost_call_738", 0
  %"$gasadd_740" = add i64 %"$gasadd_739", 1
  %"$gasrem_741" = load i64, i64* @_gasrem
  %"$gascmp_742" = icmp ugt i64 %"$gasadd_740", %"$gasrem_741"
  br i1 %"$gascmp_742", label %"$out_of_gas_743", label %"$have_gas_744"

"$out_of_gas_743":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_744"

"$have_gas_744":                                  ; preds = %"$out_of_gas_743", %"$have_gas_726"
  %"$consume_745" = sub i64 %"$gasrem_741", %"$gasadd_740"
  store i64 %"$consume_745", i64* @_gasrem
  %"$gasrem_746" = load i64, i64* @_gasrem
  %"$gascmp_747" = icmp ugt i64 2, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_744"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_744"
  %"$consume_750" = sub i64 %"$gasrem_746", 2
  store i64 %"$consume_750", i64* @_gasrem
  %"$key1_found_752" = load %TName_Bool*, %TName_Bool** %key1_found
  %"$key1_found_tag_753" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_752", i32 0, i32 0
  %"$key1_found_tag_754" = load i8, i8* %"$key1_found_tag_753"
  switch i8 %"$key1_found_tag_754", label %"$empty_default_755" [
    i8 0, label %"$True_756"
    i8 1, label %"$False_765"
  ]

"$True_756":                                      ; preds = %"$have_gas_749"
  %"$key1_found_757" = bitcast %TName_Bool* %"$key1_found_752" to %CName_True*
  %"$gasrem_758" = load i64, i64* @_gasrem
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$True_756"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$True_756"
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem
  %"$fail__sender_763" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_763"
  %"$tname_764" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_763", %String %"$tname_764")
  br label %"$matchsucc_751"

"$False_765":                                     ; preds = %"$have_gas_749"
  %"$key1_found_766" = bitcast %TName_Bool* %"$key1_found_752" to %CName_False*
  br label %"$matchsucc_751"

"$empty_default_755":                             ; preds = %"$have_gas_749"
  br label %"$matchsucc_751"

"$matchsucc_751":                                 ; preds = %"$False_765", %"$have_gas_761", %"$empty_default_755"
  %"$gasrem_767" = load i64, i64* @_gasrem
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$matchsucc_751"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$matchsucc_751"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_772" = load i64, i64* @_gasrem
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_777", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_778" = load i64, i64* @_gasrem
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_775"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_783" = load i64, i64* @_gasrem
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_788", i32 0, i32 0), i32 5 }, %String* %key2a
  %"$gasrem_789" = load i64, i64* @_gasrem
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %"$have_gas_786"
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_794" = load i64, i64* @_gasrem
  %"$gascmp_795" = icmp ugt i64 1, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_792"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_792"
  %"$consume_798" = sub i64 %"$gasrem_794", 1
  store i64 %"$consume_798", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_799", i32 0, i32 0), i32 3 }, %String* %s
  %"$_literal_cost_s_800" = alloca %String
  %"$s_801" = load %String, %String* %s
  store %String %"$s_801", %String* %"$_literal_cost_s_800"
  %"$$_literal_cost_s_800_802" = bitcast %String* %"$_literal_cost_s_800" to i8*
  %"$_literal_cost_call_803" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s_800_802")
  %"$gasadd_804" = add i64 %"$_literal_cost_call_803", 2
  %"$gasrem_805" = load i64, i64* @_gasrem
  %"$gascmp_806" = icmp ugt i64 %"$gasadd_804", %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_797"
  %"$consume_809" = sub i64 %"$gasrem_805", %"$gasadd_804"
  store i64 %"$consume_809", i64* @_gasrem
  %"$indices_buf_810_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_810_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_810_salloc_load", i64 32)
  %"$indices_buf_810_salloc" = bitcast i8* %"$indices_buf_810_salloc_salloc" to [32 x i8]*
  %"$indices_buf_810" = bitcast [32 x i8]* %"$indices_buf_810_salloc" to i8*
  %"$key1a_811" = load %String, %String* %key1a
  %"$indices_gep_812" = getelementptr i8, i8* %"$indices_buf_810", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_812" to %String*
  store %String %"$key1a_811", %String* %indices_cast1
  %"$key2a_813" = load %String, %String* %key2a
  %"$indices_gep_814" = getelementptr i8, i8* %"$indices_buf_810", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_814" to %String*
  store %String %"$key2a_813", %String* %indices_cast2
  %"$execptr_load_815" = load i8*, i8** @_execptr
  %"$s_817" = load %String, %String* %s
  %"$update_value_818" = alloca %String
  store %String %"$s_817", %String* %"$update_value_818"
  %"$update_value_819" = bitcast %String* %"$update_value_818" to i8*
  call void @_update_field(i8* %"$execptr_load_815", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_816", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_810", i8* %"$update_value_819")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_821" = getelementptr i8, i8* %0, i32 0
  %"$_amount_822" = bitcast i8* %"$_amount_821" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_822"
  %"$_sender_823" = getelementptr i8, i8* %0, i32 16
  %"$_sender_824" = bitcast i8* %"$_sender_823" to [20 x i8]*
  call void @"$t4_705"(%Uint128 %_amount, [20 x i8]* %"$_sender_824")
  ret void
}

define internal void @"$t5_825"(%Uint128 %_amount, [20 x i8]* %"$_sender_826") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_826"
  %"$gasrem_827" = load i64, i64* @_gasrem
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %entry
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_832" = load i64, i64* @_gasrem
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_830"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_830"
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_837", i32 0, i32 0), i32 2 }, %String* %tname
  %"$gasrem_838" = load i64, i64* @_gasrem
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_835"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_843" = load i64, i64* @_gasrem
  %"$gascmp_844" = icmp ugt i64 1, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$have_gas_841"
  %"$consume_847" = sub i64 %"$gasrem_843", 1
  store i64 %"$consume_847", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_848", i32 0, i32 0), i32 3 }, %String* %s
  %"$gasrem_849" = load i64, i64* @_gasrem
  %"$gascmp_850" = icmp ugt i64 1, %"$gasrem_849"
  br i1 %"$gascmp_850", label %"$out_of_gas_851", label %"$have_gas_852"

"$out_of_gas_851":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_852"

"$have_gas_852":                                  ; preds = %"$out_of_gas_851", %"$have_gas_846"
  %"$consume_853" = sub i64 %"$gasrem_849", 1
  store i64 %"$consume_853", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_854" = load i64, i64* @_gasrem
  %"$gascmp_855" = icmp ugt i64 1, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_852"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_852"
  %"$consume_858" = sub i64 %"$gasrem_854", 1
  store i64 %"$consume_858", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_859", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_860" = load i64, i64* @_gasrem
  %"$gascmp_861" = icmp ugt i64 1, %"$gasrem_860"
  br i1 %"$gascmp_861", label %"$out_of_gas_862", label %"$have_gas_863"

"$out_of_gas_862":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_863"

"$have_gas_863":                                  ; preds = %"$out_of_gas_862", %"$have_gas_857"
  %"$consume_864" = sub i64 %"$gasrem_860", 1
  store i64 %"$consume_864", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_865" = load i64, i64* @_gasrem
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_863"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_863"
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_870", i32 0, i32 0), i32 5 }, %String* %key2a
  %val = alloca %TName_Option_String*
  %"$indices_buf_871_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_871_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_871_salloc_load", i64 32)
  %"$indices_buf_871_salloc" = bitcast i8* %"$indices_buf_871_salloc_salloc" to [32 x i8]*
  %"$indices_buf_871" = bitcast [32 x i8]* %"$indices_buf_871_salloc" to i8*
  %"$key1a_872" = load %String, %String* %key1a
  %"$indices_gep_873" = getelementptr i8, i8* %"$indices_buf_871", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_873" to %String*
  store %String %"$key1a_872", %String* %indices_cast
  %"$key2a_874" = load %String, %String* %key2a
  %"$indices_gep_875" = getelementptr i8, i8* %"$indices_buf_871", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_875" to %String*
  store %String %"$key2a_874", %String* %indices_cast1
  %"$execptr_load_876" = load i8*, i8** @_execptr
  %"$val_878" = call i8* @_fetch_field(i8* %"$execptr_load_876", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_877", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_871", i32 1)
  %"$val_879" = bitcast i8* %"$val_878" to %TName_Option_String*
  store %TName_Option_String* %"$val_879", %TName_Option_String** %val
  %"$val_880" = load %TName_Option_String*, %TName_Option_String** %val
  %"$$val_880_881" = bitcast %TName_Option_String* %"$val_880" to i8*
  %"$_literal_cost_call_882" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$val_880_881")
  %"$gasadd_883" = add i64 %"$_literal_cost_call_882", 0
  %"$gasadd_884" = add i64 %"$gasadd_883", 2
  %"$gasrem_885" = load i64, i64* @_gasrem
  %"$gascmp_886" = icmp ugt i64 %"$gasadd_884", %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_868"
  %"$consume_889" = sub i64 %"$gasrem_885", %"$gasadd_884"
  store i64 %"$consume_889", i64* @_gasrem
  %"$gasrem_890" = load i64, i64* @_gasrem
  %"$gascmp_891" = icmp ugt i64 2, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_888"
  %"$consume_894" = sub i64 %"$gasrem_890", 2
  store i64 %"$consume_894", i64* @_gasrem
  %"$val_896" = load %TName_Option_String*, %TName_Option_String** %val
  %"$val_tag_897" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_896", i32 0, i32 0
  %"$val_tag_898" = load i8, i8* %"$val_tag_897"
  switch i8 %"$val_tag_898", label %"$empty_default_899" [
    i8 0, label %"$Some_900"
    i8 1, label %"$None_946"
  ]

"$Some_900":                                      ; preds = %"$have_gas_893"
  %"$val_901" = bitcast %TName_Option_String* %"$val_896" to %CName_Some_String*
  %"$v_gep_902" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_901", i32 0, i32 1
  %"$v_load_903" = load %String, %String* %"$v_gep_902"
  %v = alloca %String
  store %String %"$v_load_903", %String* %v
  %"$gasrem_904" = load i64, i64* @_gasrem
  %"$gascmp_905" = icmp ugt i64 1, %"$gasrem_904"
  br i1 %"$gascmp_905", label %"$out_of_gas_906", label %"$have_gas_907"

"$out_of_gas_906":                                ; preds = %"$Some_900"
  call void @_out_of_gas()
  br label %"$have_gas_907"

"$have_gas_907":                                  ; preds = %"$out_of_gas_906", %"$Some_900"
  %"$consume_908" = sub i64 %"$gasrem_904", 1
  store i64 %"$consume_908", i64* @_gasrem
  %t = alloca %TName_Bool*
  %"$execptr_load_909" = load i8*, i8** @_execptr
  %"$v_910" = load %String, %String* %v
  %"$s_911" = load %String, %String* %s
  %"$eq_call_912" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_909", %String %"$v_910", %String %"$s_911")
  store %TName_Bool* %"$eq_call_912", %TName_Bool** %t
  %"$gasrem_913" = load i64, i64* @_gasrem
  %"$gascmp_914" = icmp ugt i64 2, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_907"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_907"
  %"$consume_917" = sub i64 %"$gasrem_913", 2
  store i64 %"$consume_917", i64* @_gasrem
  %"$t_919" = load %TName_Bool*, %TName_Bool** %t
  %"$t_tag_920" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_919", i32 0, i32 0
  %"$t_tag_921" = load i8, i8* %"$t_tag_920"
  switch i8 %"$t_tag_921", label %"$empty_default_922" [
    i8 0, label %"$True_923"
    i8 1, label %"$False_925"
  ]

"$True_923":                                      ; preds = %"$have_gas_916"
  %"$t_924" = bitcast %TName_Bool* %"$t_919" to %CName_True*
  br label %"$matchsucc_918"

"$False_925":                                     ; preds = %"$have_gas_916"
  %"$t_926" = bitcast %TName_Bool* %"$t_919" to %CName_False*
  %"$gasrem_927" = load i64, i64* @_gasrem
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$False_925"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$False_925"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_932" = load i64, i64* @_gasrem
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_937", i32 0, i32 0), i32 23 }, %String* %m
  %"$gasrem_938" = load i64, i64* @_gasrem
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_935"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem
  %"$fail_msg__sender_943" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_943"
  %"$tname_944" = load %String, %String* %tname
  %"$m_945" = load %String, %String* %m
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_943", %String %"$tname_944", %String %"$m_945")
  br label %"$matchsucc_918"

"$empty_default_922":                             ; preds = %"$have_gas_916"
  br label %"$matchsucc_918"

"$matchsucc_918":                                 ; preds = %"$have_gas_941", %"$True_923", %"$empty_default_922"
  br label %"$matchsucc_895"

"$None_946":                                      ; preds = %"$have_gas_893"
  %"$val_947" = bitcast %TName_Option_String* %"$val_896" to %CName_None_String*
  %"$gasrem_948" = load i64, i64* @_gasrem
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$None_946"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$None_946"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem
  %"$fail__sender_953" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_953"
  %"$tname_954" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_953", %String %"$tname_954")
  br label %"$matchsucc_895"

"$empty_default_899":                             ; preds = %"$have_gas_893"
  br label %"$matchsucc_895"

"$matchsucc_895":                                 ; preds = %"$have_gas_951", %"$matchsucc_918", %"$empty_default_899"
  %"$gasrem_955" = load i64, i64* @_gasrem
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$matchsucc_895"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$matchsucc_895"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem
  %l_m2 = alloca %Map_String_String*
  %"$gasrem_960" = load i64, i64* @_gasrem
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_958"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem
  %e = alloca %Map_String_String*
  %"$gasrem_965" = load i64, i64* @_gasrem
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem
  %"$execptr_load_970" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_971" = call i8* @_new_empty_map(i8* %"$execptr_load_970")
  %"$Emp_972" = bitcast i8* %"$_new_empty_map_call_971" to %Map_String_String*
  store %Map_String_String* %"$Emp_972", %Map_String_String** %e
  %"$gasrem_973" = load i64, i64* @_gasrem
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_968"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem
  %key2b = alloca %String
  %"$gasrem_978" = load i64, i64* @_gasrem
  %"$gascmp_979" = icmp ugt i64 1, %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_976"
  %"$consume_982" = sub i64 %"$gasrem_978", 1
  store i64 %"$consume_982", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_983", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$gasrem_984" = load i64, i64* @_gasrem
  %"$gascmp_985" = icmp ugt i64 1, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_981"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_981"
  %"$consume_988" = sub i64 %"$gasrem_984", 1
  store i64 %"$consume_988", i64* @_gasrem
  %s1 = alloca %String
  %"$gasrem_989" = load i64, i64* @_gasrem
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_987"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_987"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_994", i32 0, i32 0), i32 3 }, %String* %s1
  %"$gasrem_995" = load i64, i64* @_gasrem
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$have_gas_992"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem
  %m1 = alloca %Map_String_String*
  %"$execptr_load_1000" = load i8*, i8** @_execptr
  %"$e_1001" = load %Map_String_String*, %Map_String_String** %e
  %"$$e_1001_1002" = bitcast %Map_String_String* %"$e_1001" to i8*
  %"$put_key2b_1003" = alloca %String
  %"$key2b_1004" = load %String, %String* %key2b
  store %String %"$key2b_1004", %String* %"$put_key2b_1003"
  %"$$put_key2b_1003_1005" = bitcast %String* %"$put_key2b_1003" to i8*
  %"$put_s1_1006" = alloca %String
  %"$s1_1007" = load %String, %String* %s1
  store %String %"$s1_1007", %String* %"$put_s1_1006"
  %"$$put_s1_1006_1008" = bitcast %String* %"$put_s1_1006" to i8*
  %"$put_call_1009" = call i8* @_put(i8* %"$execptr_load_1000", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e_1001_1002", i8* %"$$put_key2b_1003_1005", i8* %"$$put_s1_1006_1008")
  %"$_put_1010" = bitcast i8* %"$put_call_1009" to %Map_String_String*
  store %Map_String_String* %"$_put_1010", %Map_String_String** %m1
  %"$gasrem_1011" = load i64, i64* @_gasrem
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_998"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem
  %key2c = alloca %String
  %"$gasrem_1016" = load i64, i64* @_gasrem
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1021", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$gasrem_1022" = load i64, i64* @_gasrem
  %"$gascmp_1023" = icmp ugt i64 1, %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1019"
  %"$consume_1026" = sub i64 %"$gasrem_1022", 1
  store i64 %"$consume_1026", i64* @_gasrem
  %s2 = alloca %String
  %"$gasrem_1027" = load i64, i64* @_gasrem
  %"$gascmp_1028" = icmp ugt i64 1, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1025"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1025"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 1
  store i64 %"$consume_1031", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1032", i32 0, i32 0), i32 3 }, %String* %s2
  %"$execptr_load_1033" = load i8*, i8** @_execptr
  %"$m1_1034" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_1034_1035" = bitcast %Map_String_String* %"$m1_1034" to i8*
  %"$put_key2c_1036" = alloca %String
  %"$key2c_1037" = load %String, %String* %key2c
  store %String %"$key2c_1037", %String* %"$put_key2c_1036"
  %"$$put_key2c_1036_1038" = bitcast %String* %"$put_key2c_1036" to i8*
  %"$put_s2_1039" = alloca %String
  %"$s2_1040" = load %String, %String* %s2
  store %String %"$s2_1040", %String* %"$put_s2_1039"
  %"$$put_s2_1039_1041" = bitcast %String* %"$put_s2_1039" to i8*
  %"$put_call_1042" = call i8* @_put(i8* %"$execptr_load_1033", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_1034_1035", i8* %"$$put_key2c_1036_1038", i8* %"$$put_s2_1039_1041")
  %"$_put_1043" = bitcast i8* %"$put_call_1042" to %Map_String_String*
  store %Map_String_String* %"$_put_1043", %Map_String_String** %l_m2
  %"$gasrem_1044" = load i64, i64* @_gasrem
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1030"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1030"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem
  %key1b = alloca %String
  %"$gasrem_1049" = load i64, i64* @_gasrem
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1054", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$l_m2_1055" = load %Map_String_String*, %Map_String_String** %l_m2
  %"$$l_m2_1055_1056" = bitcast %Map_String_String* %"$l_m2_1055" to i8*
  %"$_literal_cost_call_1057" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$l_m2_1055_1056")
  %"$gasadd_1058" = add i64 %"$_literal_cost_call_1057", 1
  %"$gasrem_1059" = load i64, i64* @_gasrem
  %"$gascmp_1060" = icmp ugt i64 %"$gasadd_1058", %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1052"
  %"$consume_1063" = sub i64 %"$gasrem_1059", %"$gasadd_1058"
  store i64 %"$consume_1063", i64* @_gasrem
  %"$indices_buf_1064_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1064_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1064_salloc_load", i64 16)
  %"$indices_buf_1064_salloc" = bitcast i8* %"$indices_buf_1064_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1064" = bitcast [16 x i8]* %"$indices_buf_1064_salloc" to i8*
  %"$key1b_1065" = load %String, %String* %key1b
  %"$indices_gep_1066" = getelementptr i8, i8* %"$indices_buf_1064", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1066" to %String*
  store %String %"$key1b_1065", %String* %indices_cast2
  %"$execptr_load_1067" = load i8*, i8** @_execptr
  %"$l_m2_1069" = load %Map_String_String*, %Map_String_String** %l_m2
  %"$update_value_1070" = bitcast %Map_String_String* %"$l_m2_1069" to i8*
  call void @_update_field(i8* %"$execptr_load_1067", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1068", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 1, i8* %"$indices_buf_1064", i8* %"$update_value_1070")
  ret void
}

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_1072" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1073" = bitcast i8* %"$_amount_1072" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1073"
  %"$_sender_1074" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1075" = bitcast i8* %"$_sender_1074" to [20 x i8]*
  call void @"$t5_825"(%Uint128 %_amount, [20 x i8]* %"$_sender_1075")
  ret void
}

define internal void @"$t6_1076"(%Uint128 %_amount, [20 x i8]* %"$_sender_1077") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1077"
  %"$gasrem_1078" = load i64, i64* @_gasrem
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %entry
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_1083" = load i64, i64* @_gasrem
  %"$gascmp_1084" = icmp ugt i64 1, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1081"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 1
  store i64 %"$consume_1087", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1088", i32 0, i32 0), i32 2 }, %String* %tname
  %"$gasrem_1089" = load i64, i64* @_gasrem
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1086"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1086"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_1094" = load i64, i64* @_gasrem
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1092"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1099", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_1100" = load i64, i64* @_gasrem
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1097"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_1105" = load i64, i64* @_gasrem
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1110", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_1111_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1111_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1111_salloc_load", i64 32)
  %"$indices_buf_1111_salloc" = bitcast i8* %"$indices_buf_1111_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1111" = bitcast [32 x i8]* %"$indices_buf_1111_salloc" to i8*
  %"$key1a_1112" = load %String, %String* %key1a
  %"$indices_gep_1113" = getelementptr i8, i8* %"$indices_buf_1111", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1113" to %String*
  store %String %"$key1a_1112", %String* %indices_cast
  %"$key2a_1114" = load %String, %String* %key2a
  %"$indices_gep_1115" = getelementptr i8, i8* %"$indices_buf_1111", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1115" to %String*
  store %String %"$key2a_1114", %String* %indices_cast1
  %"$execptr_load_1116" = load i8*, i8** @_execptr
  %"$c1_1118" = call i8* @_fetch_field(i8* %"$execptr_load_1116", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1117", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1111", i32 1)
  %"$c1_1119" = bitcast i8* %"$c1_1118" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1119", %TName_Option_String** %c1
  %"$c1_1120" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$$c1_1120_1121" = bitcast %TName_Option_String* %"$c1_1120" to i8*
  %"$_literal_cost_call_1122" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$c1_1120_1121")
  %"$gasadd_1123" = add i64 %"$_literal_cost_call_1122", 0
  %"$gasadd_1124" = add i64 %"$gasadd_1123", 2
  %"$gasrem_1125" = load i64, i64* @_gasrem
  %"$gascmp_1126" = icmp ugt i64 %"$gasadd_1124", %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1108"
  %"$consume_1129" = sub i64 %"$gasrem_1125", %"$gasadd_1124"
  store i64 %"$consume_1129", i64* @_gasrem
  %"$gasrem_1130" = load i64, i64* @_gasrem
  %"$gascmp_1131" = icmp ugt i64 2, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1128"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 2
  store i64 %"$consume_1134", i64* @_gasrem
  %"$c1_1136" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_1137" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1136", i32 0, i32 0
  %"$c1_tag_1138" = load i8, i8* %"$c1_tag_1137"
  switch i8 %"$c1_tag_1138", label %"$empty_default_1139" [
    i8 0, label %"$Some_1140"
    i8 1, label %"$None_1197"
  ]

"$Some_1140":                                     ; preds = %"$have_gas_1133"
  %"$c1_1141" = bitcast %TName_Option_String* %"$c1_1136" to %CName_Some_String*
  %"$c_gep_1142" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1141", i32 0, i32 1
  %"$c_load_1143" = load %String, %String* %"$c_gep_1142"
  %c = alloca %String
  store %String %"$c_load_1143", %String* %c
  %"$gasrem_1144" = load i64, i64* @_gasrem
  %"$gascmp_1145" = icmp ugt i64 1, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$Some_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$Some_1140"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 1
  store i64 %"$consume_1148", i64* @_gasrem
  %v = alloca %String
  %"$gasrem_1149" = load i64, i64* @_gasrem
  %"$gascmp_1150" = icmp ugt i64 1, %"$gasrem_1149"
  br i1 %"$gascmp_1150", label %"$out_of_gas_1151", label %"$have_gas_1152"

"$out_of_gas_1151":                               ; preds = %"$have_gas_1147"
  call void @_out_of_gas()
  br label %"$have_gas_1152"

"$have_gas_1152":                                 ; preds = %"$out_of_gas_1151", %"$have_gas_1147"
  %"$consume_1153" = sub i64 %"$gasrem_1149", 1
  store i64 %"$consume_1153", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1154", i32 0, i32 0), i32 3 }, %String* %v
  %"$gasrem_1155" = load i64, i64* @_gasrem
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1152"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem
  %eq = alloca %TName_Bool*
  %"$execptr_load_1160" = load i8*, i8** @_execptr
  %"$c_1161" = load %String, %String* %c
  %"$v_1162" = load %String, %String* %v
  %"$eq_call_1163" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1160", %String %"$c_1161", %String %"$v_1162")
  store %TName_Bool* %"$eq_call_1163", %TName_Bool** %eq
  %"$gasrem_1164" = load i64, i64* @_gasrem
  %"$gascmp_1165" = icmp ugt i64 2, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1158"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 2
  store i64 %"$consume_1168", i64* @_gasrem
  %"$eq_1170" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_1171" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1170", i32 0, i32 0
  %"$eq_tag_1172" = load i8, i8* %"$eq_tag_1171"
  switch i8 %"$eq_tag_1172", label %"$empty_default_1173" [
    i8 0, label %"$True_1174"
    i8 1, label %"$False_1176"
  ]

"$True_1174":                                     ; preds = %"$have_gas_1167"
  %"$eq_1175" = bitcast %TName_Bool* %"$eq_1170" to %CName_True*
  br label %"$matchsucc_1169"

"$False_1176":                                    ; preds = %"$have_gas_1167"
  %"$eq_1177" = bitcast %TName_Bool* %"$eq_1170" to %CName_False*
  %"$gasrem_1178" = load i64, i64* @_gasrem
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$False_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$False_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_1183" = load i64, i64* @_gasrem
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1181"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1188", i32 0, i32 0), i32 31 }, %String* %m
  %"$gasrem_1189" = load i64, i64* @_gasrem
  %"$gascmp_1190" = icmp ugt i64 1, %"$gasrem_1189"
  br i1 %"$gascmp_1190", label %"$out_of_gas_1191", label %"$have_gas_1192"

"$out_of_gas_1191":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1192"

"$have_gas_1192":                                 ; preds = %"$out_of_gas_1191", %"$have_gas_1186"
  %"$consume_1193" = sub i64 %"$gasrem_1189", 1
  store i64 %"$consume_1193", i64* @_gasrem
  %"$fail_msg__sender_1194" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1194"
  %"$tname_1195" = load %String, %String* %tname
  %"$m_1196" = load %String, %String* %m
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1194", %String %"$tname_1195", %String %"$m_1196")
  br label %"$matchsucc_1169"

"$empty_default_1173":                            ; preds = %"$have_gas_1167"
  br label %"$matchsucc_1169"

"$matchsucc_1169":                                ; preds = %"$have_gas_1192", %"$True_1174", %"$empty_default_1173"
  br label %"$matchsucc_1135"

"$None_1197":                                     ; preds = %"$have_gas_1133"
  %"$c1_1198" = bitcast %TName_Option_String* %"$c1_1136" to %CName_None_String*
  %"$gasrem_1199" = load i64, i64* @_gasrem
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$None_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$None_1197"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem
  %m2 = alloca %String
  %"$gasrem_1204" = load i64, i64* @_gasrem
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1202"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1209", i32 0, i32 0), i32 21 }, %String* %m2
  %"$gasrem_1210" = load i64, i64* @_gasrem
  %"$gascmp_1211" = icmp ugt i64 1, %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %"$have_gas_1207"
  %"$consume_1214" = sub i64 %"$gasrem_1210", 1
  store i64 %"$consume_1214", i64* @_gasrem
  %"$fail_msg__sender_1215" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1215"
  %"$tname_1216" = load %String, %String* %tname
  %"$m_1217" = load %String, %String* %m2
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1215", %String %"$tname_1216", %String %"$m_1217")
  br label %"$matchsucc_1135"

"$empty_default_1139":                            ; preds = %"$have_gas_1133"
  br label %"$matchsucc_1135"

"$matchsucc_1135":                                ; preds = %"$have_gas_1213", %"$matchsucc_1169", %"$empty_default_1139"
  %"$gasrem_1218" = load i64, i64* @_gasrem
  %"$gascmp_1219" = icmp ugt i64 1, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$matchsucc_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$matchsucc_1135"
  %"$consume_1222" = sub i64 %"$gasrem_1218", 1
  store i64 %"$consume_1222", i64* @_gasrem
  %key1b = alloca %String
  %"$gasrem_1223" = load i64, i64* @_gasrem
  %"$gascmp_1224" = icmp ugt i64 1, %"$gasrem_1223"
  br i1 %"$gascmp_1224", label %"$out_of_gas_1225", label %"$have_gas_1226"

"$out_of_gas_1225":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1226"

"$have_gas_1226":                                 ; preds = %"$out_of_gas_1225", %"$have_gas_1221"
  %"$consume_1227" = sub i64 %"$gasrem_1223", 1
  store i64 %"$consume_1227", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1228", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$gasrem_1229" = load i64, i64* @_gasrem
  %"$gascmp_1230" = icmp ugt i64 1, %"$gasrem_1229"
  br i1 %"$gascmp_1230", label %"$out_of_gas_1231", label %"$have_gas_1232"

"$out_of_gas_1231":                               ; preds = %"$have_gas_1226"
  call void @_out_of_gas()
  br label %"$have_gas_1232"

"$have_gas_1232":                                 ; preds = %"$out_of_gas_1231", %"$have_gas_1226"
  %"$consume_1233" = sub i64 %"$gasrem_1229", 1
  store i64 %"$consume_1233", i64* @_gasrem
  %key2b = alloca %String
  %"$gasrem_1234" = load i64, i64* @_gasrem
  %"$gascmp_1235" = icmp ugt i64 1, %"$gasrem_1234"
  br i1 %"$gascmp_1235", label %"$out_of_gas_1236", label %"$have_gas_1237"

"$out_of_gas_1236":                               ; preds = %"$have_gas_1232"
  call void @_out_of_gas()
  br label %"$have_gas_1237"

"$have_gas_1237":                                 ; preds = %"$out_of_gas_1236", %"$have_gas_1232"
  %"$consume_1238" = sub i64 %"$gasrem_1234", 1
  store i64 %"$consume_1238", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1239", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$c1_0" = alloca %TName_Option_String*
  %"$indices_buf_1240_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1240_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1240_salloc_load", i64 32)
  %"$indices_buf_1240_salloc" = bitcast i8* %"$indices_buf_1240_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1240" = bitcast [32 x i8]* %"$indices_buf_1240_salloc" to i8*
  %"$key1b_1241" = load %String, %String* %key1b
  %"$indices_gep_1242" = getelementptr i8, i8* %"$indices_buf_1240", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1242" to %String*
  store %String %"$key1b_1241", %String* %indices_cast3
  %"$key2b_1243" = load %String, %String* %key2b
  %"$indices_gep_1244" = getelementptr i8, i8* %"$indices_buf_1240", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_1244" to %String*
  store %String %"$key2b_1243", %String* %indices_cast4
  %"$execptr_load_1245" = load i8*, i8** @_execptr
  %"$$c1_0_1247" = call i8* @_fetch_field(i8* %"$execptr_load_1245", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1246", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1240", i32 1)
  %"$$c1_0_1248" = bitcast i8* %"$$c1_0_1247" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_0_1248", %TName_Option_String** %"$c1_0"
  %"$$c1_0_1249" = load %TName_Option_String*, %TName_Option_String** %"$c1_0"
  %"$$$c1_0_1249_1250" = bitcast %TName_Option_String* %"$$c1_0_1249" to i8*
  %"$_literal_cost_call_1251" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$$c1_0_1249_1250")
  %"$gasadd_1252" = add i64 %"$_literal_cost_call_1251", 0
  %"$gasadd_1253" = add i64 %"$gasadd_1252", 2
  %"$gasrem_1254" = load i64, i64* @_gasrem
  %"$gascmp_1255" = icmp ugt i64 %"$gasadd_1253", %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1237"
  %"$consume_1258" = sub i64 %"$gasrem_1254", %"$gasadd_1253"
  store i64 %"$consume_1258", i64* @_gasrem
  %"$gasrem_1259" = load i64, i64* @_gasrem
  %"$gascmp_1260" = icmp ugt i64 2, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1257"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 2
  store i64 %"$consume_1263", i64* @_gasrem
  %"$$c1_0_1265" = load %TName_Option_String*, %TName_Option_String** %"$c1_0"
  %"$$c1_0_tag_1266" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_0_1265", i32 0, i32 0
  %"$$c1_0_tag_1267" = load i8, i8* %"$$c1_0_tag_1266"
  switch i8 %"$$c1_0_tag_1267", label %"$empty_default_1268" [
    i8 0, label %"$Some_1269"
    i8 1, label %"$None_1326"
  ]

"$Some_1269":                                     ; preds = %"$have_gas_1262"
  %"$$c1_0_1270" = bitcast %TName_Option_String* %"$$c1_0_1265" to %CName_Some_String*
  %"$c_gep_1271" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_0_1270", i32 0, i32 1
  %"$c_load_1272" = load %String, %String* %"$c_gep_1271"
  %c5 = alloca %String
  store %String %"$c_load_1272", %String* %c5
  %"$gasrem_1273" = load i64, i64* @_gasrem
  %"$gascmp_1274" = icmp ugt i64 1, %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$Some_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$Some_1269"
  %"$consume_1277" = sub i64 %"$gasrem_1273", 1
  store i64 %"$consume_1277", i64* @_gasrem
  %v6 = alloca %String
  %"$gasrem_1278" = load i64, i64* @_gasrem
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1276"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1283", i32 0, i32 0), i32 3 }, %String* %v6
  %"$gasrem_1284" = load i64, i64* @_gasrem
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1281"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem
  %eq7 = alloca %TName_Bool*
  %"$execptr_load_1289" = load i8*, i8** @_execptr
  %"$c_1290" = load %String, %String* %c5
  %"$v_1291" = load %String, %String* %v6
  %"$eq_call_1292" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1289", %String %"$c_1290", %String %"$v_1291")
  store %TName_Bool* %"$eq_call_1292", %TName_Bool** %eq7
  %"$gasrem_1293" = load i64, i64* @_gasrem
  %"$gascmp_1294" = icmp ugt i64 2, %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %"$have_gas_1287"
  %"$consume_1297" = sub i64 %"$gasrem_1293", 2
  store i64 %"$consume_1297", i64* @_gasrem
  %"$eq_1299" = load %TName_Bool*, %TName_Bool** %eq7
  %"$eq_tag_1300" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1299", i32 0, i32 0
  %"$eq_tag_1301" = load i8, i8* %"$eq_tag_1300"
  switch i8 %"$eq_tag_1301", label %"$empty_default_1302" [
    i8 0, label %"$True_1303"
    i8 1, label %"$False_1305"
  ]

"$True_1303":                                     ; preds = %"$have_gas_1296"
  %"$eq_1304" = bitcast %TName_Bool* %"$eq_1299" to %CName_True*
  br label %"$matchsucc_1298"

"$False_1305":                                    ; preds = %"$have_gas_1296"
  %"$eq_1306" = bitcast %TName_Bool* %"$eq_1299" to %CName_False*
  %"$gasrem_1307" = load i64, i64* @_gasrem
  %"$gascmp_1308" = icmp ugt i64 1, %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %"$False_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %"$False_1305"
  %"$consume_1311" = sub i64 %"$gasrem_1307", 1
  store i64 %"$consume_1311", i64* @_gasrem
  %m8 = alloca %String
  %"$gasrem_1312" = load i64, i64* @_gasrem
  %"$gascmp_1313" = icmp ugt i64 1, %"$gasrem_1312"
  br i1 %"$gascmp_1313", label %"$out_of_gas_1314", label %"$have_gas_1315"

"$out_of_gas_1314":                               ; preds = %"$have_gas_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1315"

"$have_gas_1315":                                 ; preds = %"$out_of_gas_1314", %"$have_gas_1310"
  %"$consume_1316" = sub i64 %"$gasrem_1312", 1
  store i64 %"$consume_1316", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1317", i32 0, i32 0), i32 31 }, %String* %m8
  %"$gasrem_1318" = load i64, i64* @_gasrem
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1315"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem
  %"$fail_msg__sender_1323" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1323"
  %"$tname_1324" = load %String, %String* %tname
  %"$m_1325" = load %String, %String* %m8
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1323", %String %"$tname_1324", %String %"$m_1325")
  br label %"$matchsucc_1298"

"$empty_default_1302":                            ; preds = %"$have_gas_1296"
  br label %"$matchsucc_1298"

"$matchsucc_1298":                                ; preds = %"$have_gas_1321", %"$True_1303", %"$empty_default_1302"
  br label %"$matchsucc_1264"

"$None_1326":                                     ; preds = %"$have_gas_1262"
  %"$$c1_0_1327" = bitcast %TName_Option_String* %"$$c1_0_1265" to %CName_None_String*
  %"$gasrem_1328" = load i64, i64* @_gasrem
  %"$gascmp_1329" = icmp ugt i64 1, %"$gasrem_1328"
  br i1 %"$gascmp_1329", label %"$out_of_gas_1330", label %"$have_gas_1331"

"$out_of_gas_1330":                               ; preds = %"$None_1326"
  call void @_out_of_gas()
  br label %"$have_gas_1331"

"$have_gas_1331":                                 ; preds = %"$out_of_gas_1330", %"$None_1326"
  %"$consume_1332" = sub i64 %"$gasrem_1328", 1
  store i64 %"$consume_1332", i64* @_gasrem
  %m9 = alloca %String
  %"$gasrem_1333" = load i64, i64* @_gasrem
  %"$gascmp_1334" = icmp ugt i64 1, %"$gasrem_1333"
  br i1 %"$gascmp_1334", label %"$out_of_gas_1335", label %"$have_gas_1336"

"$out_of_gas_1335":                               ; preds = %"$have_gas_1331"
  call void @_out_of_gas()
  br label %"$have_gas_1336"

"$have_gas_1336":                                 ; preds = %"$out_of_gas_1335", %"$have_gas_1331"
  %"$consume_1337" = sub i64 %"$gasrem_1333", 1
  store i64 %"$consume_1337", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1338", i32 0, i32 0), i32 21 }, %String* %m9
  %"$gasrem_1339" = load i64, i64* @_gasrem
  %"$gascmp_1340" = icmp ugt i64 1, %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %"$have_gas_1336"
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %"$have_gas_1336"
  %"$consume_1343" = sub i64 %"$gasrem_1339", 1
  store i64 %"$consume_1343", i64* @_gasrem
  %"$fail_msg__sender_1344" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1344"
  %"$tname_1345" = load %String, %String* %tname
  %"$m_1346" = load %String, %String* %m9
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1344", %String %"$tname_1345", %String %"$m_1346")
  br label %"$matchsucc_1264"

"$empty_default_1268":                            ; preds = %"$have_gas_1262"
  br label %"$matchsucc_1264"

"$matchsucc_1264":                                ; preds = %"$have_gas_1342", %"$matchsucc_1298", %"$empty_default_1268"
  %"$gasrem_1347" = load i64, i64* @_gasrem
  %"$gascmp_1348" = icmp ugt i64 1, %"$gasrem_1347"
  br i1 %"$gascmp_1348", label %"$out_of_gas_1349", label %"$have_gas_1350"

"$out_of_gas_1349":                               ; preds = %"$matchsucc_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1350"

"$have_gas_1350":                                 ; preds = %"$out_of_gas_1349", %"$matchsucc_1264"
  %"$consume_1351" = sub i64 %"$gasrem_1347", 1
  store i64 %"$consume_1351", i64* @_gasrem
  %"$key1b_1" = alloca %String
  %"$gasrem_1352" = load i64, i64* @_gasrem
  %"$gascmp_1353" = icmp ugt i64 1, %"$gasrem_1352"
  br i1 %"$gascmp_1353", label %"$out_of_gas_1354", label %"$have_gas_1355"

"$out_of_gas_1354":                               ; preds = %"$have_gas_1350"
  call void @_out_of_gas()
  br label %"$have_gas_1355"

"$have_gas_1355":                                 ; preds = %"$out_of_gas_1354", %"$have_gas_1350"
  %"$consume_1356" = sub i64 %"$gasrem_1352", 1
  store i64 %"$consume_1356", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1357", i32 0, i32 0), i32 5 }, %String* %"$key1b_1"
  %"$gasrem_1358" = load i64, i64* @_gasrem
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1355"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1355"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem
  %key2c = alloca %String
  %"$gasrem_1363" = load i64, i64* @_gasrem
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1368", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$c1_2" = alloca %TName_Option_String*
  %"$indices_buf_1369_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1369_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1369_salloc_load", i64 32)
  %"$indices_buf_1369_salloc" = bitcast i8* %"$indices_buf_1369_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1369" = bitcast [32 x i8]* %"$indices_buf_1369_salloc" to i8*
  %"$$key1b_1_1370" = load %String, %String* %"$key1b_1"
  %"$indices_gep_1371" = getelementptr i8, i8* %"$indices_buf_1369", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_1371" to %String*
  store %String %"$$key1b_1_1370", %String* %indices_cast10
  %"$key2c_1372" = load %String, %String* %key2c
  %"$indices_gep_1373" = getelementptr i8, i8* %"$indices_buf_1369", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_1373" to %String*
  store %String %"$key2c_1372", %String* %indices_cast11
  %"$execptr_load_1374" = load i8*, i8** @_execptr
  %"$$c1_2_1376" = call i8* @_fetch_field(i8* %"$execptr_load_1374", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1375", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1369", i32 1)
  %"$$c1_2_1377" = bitcast i8* %"$$c1_2_1376" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_1377", %TName_Option_String** %"$c1_2"
  %"$$c1_2_1378" = load %TName_Option_String*, %TName_Option_String** %"$c1_2"
  %"$$$c1_2_1378_1379" = bitcast %TName_Option_String* %"$$c1_2_1378" to i8*
  %"$_literal_cost_call_1380" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$$c1_2_1378_1379")
  %"$gasadd_1381" = add i64 %"$_literal_cost_call_1380", 0
  %"$gasadd_1382" = add i64 %"$gasadd_1381", 2
  %"$gasrem_1383" = load i64, i64* @_gasrem
  %"$gascmp_1384" = icmp ugt i64 %"$gasadd_1382", %"$gasrem_1383"
  br i1 %"$gascmp_1384", label %"$out_of_gas_1385", label %"$have_gas_1386"

"$out_of_gas_1385":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1386"

"$have_gas_1386":                                 ; preds = %"$out_of_gas_1385", %"$have_gas_1366"
  %"$consume_1387" = sub i64 %"$gasrem_1383", %"$gasadd_1382"
  store i64 %"$consume_1387", i64* @_gasrem
  %"$gasrem_1388" = load i64, i64* @_gasrem
  %"$gascmp_1389" = icmp ugt i64 2, %"$gasrem_1388"
  br i1 %"$gascmp_1389", label %"$out_of_gas_1390", label %"$have_gas_1391"

"$out_of_gas_1390":                               ; preds = %"$have_gas_1386"
  call void @_out_of_gas()
  br label %"$have_gas_1391"

"$have_gas_1391":                                 ; preds = %"$out_of_gas_1390", %"$have_gas_1386"
  %"$consume_1392" = sub i64 %"$gasrem_1388", 2
  store i64 %"$consume_1392", i64* @_gasrem
  %"$$c1_2_1394" = load %TName_Option_String*, %TName_Option_String** %"$c1_2"
  %"$$c1_2_tag_1395" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_1394", i32 0, i32 0
  %"$$c1_2_tag_1396" = load i8, i8* %"$$c1_2_tag_1395"
  switch i8 %"$$c1_2_tag_1396", label %"$empty_default_1397" [
    i8 0, label %"$Some_1398"
    i8 1, label %"$None_1455"
  ]

"$Some_1398":                                     ; preds = %"$have_gas_1391"
  %"$$c1_2_1399" = bitcast %TName_Option_String* %"$$c1_2_1394" to %CName_Some_String*
  %"$c_gep_1400" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_1399", i32 0, i32 1
  %"$c_load_1401" = load %String, %String* %"$c_gep_1400"
  %c12 = alloca %String
  store %String %"$c_load_1401", %String* %c12
  %"$gasrem_1402" = load i64, i64* @_gasrem
  %"$gascmp_1403" = icmp ugt i64 1, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$Some_1398"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$Some_1398"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 1
  store i64 %"$consume_1406", i64* @_gasrem
  %v13 = alloca %String
  %"$gasrem_1407" = load i64, i64* @_gasrem
  %"$gascmp_1408" = icmp ugt i64 1, %"$gasrem_1407"
  br i1 %"$gascmp_1408", label %"$out_of_gas_1409", label %"$have_gas_1410"

"$out_of_gas_1409":                               ; preds = %"$have_gas_1405"
  call void @_out_of_gas()
  br label %"$have_gas_1410"

"$have_gas_1410":                                 ; preds = %"$out_of_gas_1409", %"$have_gas_1405"
  %"$consume_1411" = sub i64 %"$gasrem_1407", 1
  store i64 %"$consume_1411", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1412", i32 0, i32 0), i32 3 }, %String* %v13
  %"$gasrem_1413" = load i64, i64* @_gasrem
  %"$gascmp_1414" = icmp ugt i64 1, %"$gasrem_1413"
  br i1 %"$gascmp_1414", label %"$out_of_gas_1415", label %"$have_gas_1416"

"$out_of_gas_1415":                               ; preds = %"$have_gas_1410"
  call void @_out_of_gas()
  br label %"$have_gas_1416"

"$have_gas_1416":                                 ; preds = %"$out_of_gas_1415", %"$have_gas_1410"
  %"$consume_1417" = sub i64 %"$gasrem_1413", 1
  store i64 %"$consume_1417", i64* @_gasrem
  %eq14 = alloca %TName_Bool*
  %"$execptr_load_1418" = load i8*, i8** @_execptr
  %"$c_1419" = load %String, %String* %c12
  %"$v_1420" = load %String, %String* %v13
  %"$eq_call_1421" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1418", %String %"$c_1419", %String %"$v_1420")
  store %TName_Bool* %"$eq_call_1421", %TName_Bool** %eq14
  %"$gasrem_1422" = load i64, i64* @_gasrem
  %"$gascmp_1423" = icmp ugt i64 2, %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %"$have_gas_1416"
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %"$have_gas_1416"
  %"$consume_1426" = sub i64 %"$gasrem_1422", 2
  store i64 %"$consume_1426", i64* @_gasrem
  %"$eq_1428" = load %TName_Bool*, %TName_Bool** %eq14
  %"$eq_tag_1429" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1428", i32 0, i32 0
  %"$eq_tag_1430" = load i8, i8* %"$eq_tag_1429"
  switch i8 %"$eq_tag_1430", label %"$empty_default_1431" [
    i8 0, label %"$True_1432"
    i8 1, label %"$False_1434"
  ]

"$True_1432":                                     ; preds = %"$have_gas_1425"
  %"$eq_1433" = bitcast %TName_Bool* %"$eq_1428" to %CName_True*
  br label %"$matchsucc_1427"

"$False_1434":                                    ; preds = %"$have_gas_1425"
  %"$eq_1435" = bitcast %TName_Bool* %"$eq_1428" to %CName_False*
  %"$gasrem_1436" = load i64, i64* @_gasrem
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$False_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$False_1434"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem
  %m15 = alloca %String
  %"$gasrem_1441" = load i64, i64* @_gasrem
  %"$gascmp_1442" = icmp ugt i64 1, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 1
  store i64 %"$consume_1445", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1446", i32 0, i32 0), i32 31 }, %String* %m15
  %"$gasrem_1447" = load i64, i64* @_gasrem
  %"$gascmp_1448" = icmp ugt i64 1, %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1444"
  %"$consume_1451" = sub i64 %"$gasrem_1447", 1
  store i64 %"$consume_1451", i64* @_gasrem
  %"$fail_msg__sender_1452" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1452"
  %"$tname_1453" = load %String, %String* %tname
  %"$m_1454" = load %String, %String* %m15
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1452", %String %"$tname_1453", %String %"$m_1454")
  br label %"$matchsucc_1427"

"$empty_default_1431":                            ; preds = %"$have_gas_1425"
  br label %"$matchsucc_1427"

"$matchsucc_1427":                                ; preds = %"$have_gas_1450", %"$True_1432", %"$empty_default_1431"
  br label %"$matchsucc_1393"

"$None_1455":                                     ; preds = %"$have_gas_1391"
  %"$$c1_2_1456" = bitcast %TName_Option_String* %"$$c1_2_1394" to %CName_None_String*
  %"$gasrem_1457" = load i64, i64* @_gasrem
  %"$gascmp_1458" = icmp ugt i64 1, %"$gasrem_1457"
  br i1 %"$gascmp_1458", label %"$out_of_gas_1459", label %"$have_gas_1460"

"$out_of_gas_1459":                               ; preds = %"$None_1455"
  call void @_out_of_gas()
  br label %"$have_gas_1460"

"$have_gas_1460":                                 ; preds = %"$out_of_gas_1459", %"$None_1455"
  %"$consume_1461" = sub i64 %"$gasrem_1457", 1
  store i64 %"$consume_1461", i64* @_gasrem
  %m16 = alloca %String
  %"$gasrem_1462" = load i64, i64* @_gasrem
  %"$gascmp_1463" = icmp ugt i64 1, %"$gasrem_1462"
  br i1 %"$gascmp_1463", label %"$out_of_gas_1464", label %"$have_gas_1465"

"$out_of_gas_1464":                               ; preds = %"$have_gas_1460"
  call void @_out_of_gas()
  br label %"$have_gas_1465"

"$have_gas_1465":                                 ; preds = %"$out_of_gas_1464", %"$have_gas_1460"
  %"$consume_1466" = sub i64 %"$gasrem_1462", 1
  store i64 %"$consume_1466", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1467", i32 0, i32 0), i32 21 }, %String* %m16
  %"$gasrem_1468" = load i64, i64* @_gasrem
  %"$gascmp_1469" = icmp ugt i64 1, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1465"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1465"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 1
  store i64 %"$consume_1472", i64* @_gasrem
  %"$fail_msg__sender_1473" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1473"
  %"$tname_1474" = load %String, %String* %tname
  %"$m_1475" = load %String, %String* %m16
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1473", %String %"$tname_1474", %String %"$m_1475")
  br label %"$matchsucc_1393"

"$empty_default_1397":                            ; preds = %"$have_gas_1391"
  br label %"$matchsucc_1393"

"$matchsucc_1393":                                ; preds = %"$have_gas_1471", %"$matchsucc_1427", %"$empty_default_1397"
  %"$gasrem_1476" = load i64, i64* @_gasrem
  %"$gascmp_1477" = icmp ugt i64 1, %"$gasrem_1476"
  br i1 %"$gascmp_1477", label %"$out_of_gas_1478", label %"$have_gas_1479"

"$out_of_gas_1478":                               ; preds = %"$matchsucc_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1479"

"$have_gas_1479":                                 ; preds = %"$out_of_gas_1478", %"$matchsucc_1393"
  %"$consume_1480" = sub i64 %"$gasrem_1476", 1
  store i64 %"$consume_1480", i64* @_gasrem
  %"$indices_buf_1481_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1481_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1481_salloc_load", i64 16)
  %"$indices_buf_1481_salloc" = bitcast i8* %"$indices_buf_1481_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1481" = bitcast [16 x i8]* %"$indices_buf_1481_salloc" to i8*
  %"$$key1b_1_1482" = load %String, %String* %"$key1b_1"
  %"$indices_gep_1483" = getelementptr i8, i8* %"$indices_buf_1481", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_1483" to %String*
  store %String %"$$key1b_1_1482", %String* %indices_cast17
  %"$execptr_load_1484" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_1484", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1485", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 1, i8* %"$indices_buf_1481", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_1487" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1488" = bitcast i8* %"$_amount_1487" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1488"
  %"$_sender_1489" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1490" = bitcast i8* %"$_sender_1489" to [20 x i8]*
  call void @"$t6_1076"(%Uint128 %_amount, [20 x i8]* %"$_sender_1490")
  ret void
}

define internal void @"$t7_1491"(%Uint128 %_amount, [20 x i8]* %"$_sender_1492") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1492"
  %"$gasrem_1493" = load i64, i64* @_gasrem
  %"$gascmp_1494" = icmp ugt i64 1, %"$gasrem_1493"
  br i1 %"$gascmp_1494", label %"$out_of_gas_1495", label %"$have_gas_1496"

"$out_of_gas_1495":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1496"

"$have_gas_1496":                                 ; preds = %"$out_of_gas_1495", %entry
  %"$consume_1497" = sub i64 %"$gasrem_1493", 1
  store i64 %"$consume_1497", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_1498" = load i64, i64* @_gasrem
  %"$gascmp_1499" = icmp ugt i64 1, %"$gasrem_1498"
  br i1 %"$gascmp_1499", label %"$out_of_gas_1500", label %"$have_gas_1501"

"$out_of_gas_1500":                               ; preds = %"$have_gas_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1501"

"$have_gas_1501":                                 ; preds = %"$out_of_gas_1500", %"$have_gas_1496"
  %"$consume_1502" = sub i64 %"$gasrem_1498", 1
  store i64 %"$consume_1502", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1503", i32 0, i32 0), i32 2 }, %String* %tname
  %"$gasrem_1504" = load i64, i64* @_gasrem
  %"$gascmp_1505" = icmp ugt i64 1, %"$gasrem_1504"
  br i1 %"$gascmp_1505", label %"$out_of_gas_1506", label %"$have_gas_1507"

"$out_of_gas_1506":                               ; preds = %"$have_gas_1501"
  call void @_out_of_gas()
  br label %"$have_gas_1507"

"$have_gas_1507":                                 ; preds = %"$out_of_gas_1506", %"$have_gas_1501"
  %"$consume_1508" = sub i64 %"$gasrem_1504", 1
  store i64 %"$consume_1508", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_1509" = load i64, i64* @_gasrem
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1507"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1507"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1514", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_1515" = load i64, i64* @_gasrem
  %"$gascmp_1516" = icmp ugt i64 1, %"$gasrem_1515"
  br i1 %"$gascmp_1516", label %"$out_of_gas_1517", label %"$have_gas_1518"

"$out_of_gas_1517":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1518"

"$have_gas_1518":                                 ; preds = %"$out_of_gas_1517", %"$have_gas_1512"
  %"$consume_1519" = sub i64 %"$gasrem_1515", 1
  store i64 %"$consume_1519", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_1520" = load i64, i64* @_gasrem
  %"$gascmp_1521" = icmp ugt i64 1, %"$gasrem_1520"
  br i1 %"$gascmp_1521", label %"$out_of_gas_1522", label %"$have_gas_1523"

"$out_of_gas_1522":                               ; preds = %"$have_gas_1518"
  call void @_out_of_gas()
  br label %"$have_gas_1523"

"$have_gas_1523":                                 ; preds = %"$out_of_gas_1522", %"$have_gas_1518"
  %"$consume_1524" = sub i64 %"$gasrem_1520", 1
  store i64 %"$consume_1524", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1525", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_1526_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1526_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1526_salloc_load", i64 32)
  %"$indices_buf_1526_salloc" = bitcast i8* %"$indices_buf_1526_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1526" = bitcast [32 x i8]* %"$indices_buf_1526_salloc" to i8*
  %"$key1a_1527" = load %String, %String* %key1a
  %"$indices_gep_1528" = getelementptr i8, i8* %"$indices_buf_1526", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1528" to %String*
  store %String %"$key1a_1527", %String* %indices_cast
  %"$key2a_1529" = load %String, %String* %key2a
  %"$indices_gep_1530" = getelementptr i8, i8* %"$indices_buf_1526", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1530" to %String*
  store %String %"$key2a_1529", %String* %indices_cast1
  %"$execptr_load_1531" = load i8*, i8** @_execptr
  %"$c1_1533" = call i8* @_fetch_field(i8* %"$execptr_load_1531", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1532", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1526", i32 1)
  %"$c1_1534" = bitcast i8* %"$c1_1533" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1534", %TName_Option_String** %c1
  %"$c1_1535" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$$c1_1535_1536" = bitcast %TName_Option_String* %"$c1_1535" to i8*
  %"$_literal_cost_call_1537" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$c1_1535_1536")
  %"$gasadd_1538" = add i64 %"$_literal_cost_call_1537", 0
  %"$gasadd_1539" = add i64 %"$gasadd_1538", 2
  %"$gasrem_1540" = load i64, i64* @_gasrem
  %"$gascmp_1541" = icmp ugt i64 %"$gasadd_1539", %"$gasrem_1540"
  br i1 %"$gascmp_1541", label %"$out_of_gas_1542", label %"$have_gas_1543"

"$out_of_gas_1542":                               ; preds = %"$have_gas_1523"
  call void @_out_of_gas()
  br label %"$have_gas_1543"

"$have_gas_1543":                                 ; preds = %"$out_of_gas_1542", %"$have_gas_1523"
  %"$consume_1544" = sub i64 %"$gasrem_1540", %"$gasadd_1539"
  store i64 %"$consume_1544", i64* @_gasrem
  %"$gasrem_1545" = load i64, i64* @_gasrem
  %"$gascmp_1546" = icmp ugt i64 2, %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1543"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1543"
  %"$consume_1549" = sub i64 %"$gasrem_1545", 2
  store i64 %"$consume_1549", i64* @_gasrem
  %"$c1_1551" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_1552" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1551", i32 0, i32 0
  %"$c1_tag_1553" = load i8, i8* %"$c1_tag_1552"
  switch i8 %"$c1_tag_1553", label %"$empty_default_1554" [
    i8 0, label %"$Some_1555"
    i8 1, label %"$None_1612"
  ]

"$Some_1555":                                     ; preds = %"$have_gas_1548"
  %"$c1_1556" = bitcast %TName_Option_String* %"$c1_1551" to %CName_Some_String*
  %"$c_gep_1557" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1556", i32 0, i32 1
  %"$c_load_1558" = load %String, %String* %"$c_gep_1557"
  %c = alloca %String
  store %String %"$c_load_1558", %String* %c
  %"$gasrem_1559" = load i64, i64* @_gasrem
  %"$gascmp_1560" = icmp ugt i64 1, %"$gasrem_1559"
  br i1 %"$gascmp_1560", label %"$out_of_gas_1561", label %"$have_gas_1562"

"$out_of_gas_1561":                               ; preds = %"$Some_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1562"

"$have_gas_1562":                                 ; preds = %"$out_of_gas_1561", %"$Some_1555"
  %"$consume_1563" = sub i64 %"$gasrem_1559", 1
  store i64 %"$consume_1563", i64* @_gasrem
  %v = alloca %String
  %"$gasrem_1564" = load i64, i64* @_gasrem
  %"$gascmp_1565" = icmp ugt i64 1, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$have_gas_1562"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$have_gas_1562"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 1
  store i64 %"$consume_1568", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1569", i32 0, i32 0), i32 3 }, %String* %v
  %"$gasrem_1570" = load i64, i64* @_gasrem
  %"$gascmp_1571" = icmp ugt i64 1, %"$gasrem_1570"
  br i1 %"$gascmp_1571", label %"$out_of_gas_1572", label %"$have_gas_1573"

"$out_of_gas_1572":                               ; preds = %"$have_gas_1567"
  call void @_out_of_gas()
  br label %"$have_gas_1573"

"$have_gas_1573":                                 ; preds = %"$out_of_gas_1572", %"$have_gas_1567"
  %"$consume_1574" = sub i64 %"$gasrem_1570", 1
  store i64 %"$consume_1574", i64* @_gasrem
  %eq = alloca %TName_Bool*
  %"$execptr_load_1575" = load i8*, i8** @_execptr
  %"$c_1576" = load %String, %String* %c
  %"$v_1577" = load %String, %String* %v
  %"$eq_call_1578" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1575", %String %"$c_1576", %String %"$v_1577")
  store %TName_Bool* %"$eq_call_1578", %TName_Bool** %eq
  %"$gasrem_1579" = load i64, i64* @_gasrem
  %"$gascmp_1580" = icmp ugt i64 2, %"$gasrem_1579"
  br i1 %"$gascmp_1580", label %"$out_of_gas_1581", label %"$have_gas_1582"

"$out_of_gas_1581":                               ; preds = %"$have_gas_1573"
  call void @_out_of_gas()
  br label %"$have_gas_1582"

"$have_gas_1582":                                 ; preds = %"$out_of_gas_1581", %"$have_gas_1573"
  %"$consume_1583" = sub i64 %"$gasrem_1579", 2
  store i64 %"$consume_1583", i64* @_gasrem
  %"$eq_1585" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_1586" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1585", i32 0, i32 0
  %"$eq_tag_1587" = load i8, i8* %"$eq_tag_1586"
  switch i8 %"$eq_tag_1587", label %"$empty_default_1588" [
    i8 0, label %"$True_1589"
    i8 1, label %"$False_1591"
  ]

"$True_1589":                                     ; preds = %"$have_gas_1582"
  %"$eq_1590" = bitcast %TName_Bool* %"$eq_1585" to %CName_True*
  br label %"$matchsucc_1584"

"$False_1591":                                    ; preds = %"$have_gas_1582"
  %"$eq_1592" = bitcast %TName_Bool* %"$eq_1585" to %CName_False*
  %"$gasrem_1593" = load i64, i64* @_gasrem
  %"$gascmp_1594" = icmp ugt i64 1, %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$False_1591"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$False_1591"
  %"$consume_1597" = sub i64 %"$gasrem_1593", 1
  store i64 %"$consume_1597", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_1598" = load i64, i64* @_gasrem
  %"$gascmp_1599" = icmp ugt i64 1, %"$gasrem_1598"
  br i1 %"$gascmp_1599", label %"$out_of_gas_1600", label %"$have_gas_1601"

"$out_of_gas_1600":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1601"

"$have_gas_1601":                                 ; preds = %"$out_of_gas_1600", %"$have_gas_1596"
  %"$consume_1602" = sub i64 %"$gasrem_1598", 1
  store i64 %"$consume_1602", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1603", i32 0, i32 0), i32 31 }, %String* %m
  %"$gasrem_1604" = load i64, i64* @_gasrem
  %"$gascmp_1605" = icmp ugt i64 1, %"$gasrem_1604"
  br i1 %"$gascmp_1605", label %"$out_of_gas_1606", label %"$have_gas_1607"

"$out_of_gas_1606":                               ; preds = %"$have_gas_1601"
  call void @_out_of_gas()
  br label %"$have_gas_1607"

"$have_gas_1607":                                 ; preds = %"$out_of_gas_1606", %"$have_gas_1601"
  %"$consume_1608" = sub i64 %"$gasrem_1604", 1
  store i64 %"$consume_1608", i64* @_gasrem
  %"$fail_msg__sender_1609" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1609"
  %"$tname_1610" = load %String, %String* %tname
  %"$m_1611" = load %String, %String* %m
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1609", %String %"$tname_1610", %String %"$m_1611")
  br label %"$matchsucc_1584"

"$empty_default_1588":                            ; preds = %"$have_gas_1582"
  br label %"$matchsucc_1584"

"$matchsucc_1584":                                ; preds = %"$have_gas_1607", %"$True_1589", %"$empty_default_1588"
  br label %"$matchsucc_1550"

"$None_1612":                                     ; preds = %"$have_gas_1548"
  %"$c1_1613" = bitcast %TName_Option_String* %"$c1_1551" to %CName_None_String*
  %"$gasrem_1614" = load i64, i64* @_gasrem
  %"$gascmp_1615" = icmp ugt i64 1, %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$None_1612"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$None_1612"
  %"$consume_1618" = sub i64 %"$gasrem_1614", 1
  store i64 %"$consume_1618", i64* @_gasrem
  %m2 = alloca %String
  %"$gasrem_1619" = load i64, i64* @_gasrem
  %"$gascmp_1620" = icmp ugt i64 1, %"$gasrem_1619"
  br i1 %"$gascmp_1620", label %"$out_of_gas_1621", label %"$have_gas_1622"

"$out_of_gas_1621":                               ; preds = %"$have_gas_1617"
  call void @_out_of_gas()
  br label %"$have_gas_1622"

"$have_gas_1622":                                 ; preds = %"$out_of_gas_1621", %"$have_gas_1617"
  %"$consume_1623" = sub i64 %"$gasrem_1619", 1
  store i64 %"$consume_1623", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1624", i32 0, i32 0), i32 21 }, %String* %m2
  %"$gasrem_1625" = load i64, i64* @_gasrem
  %"$gascmp_1626" = icmp ugt i64 1, %"$gasrem_1625"
  br i1 %"$gascmp_1626", label %"$out_of_gas_1627", label %"$have_gas_1628"

"$out_of_gas_1627":                               ; preds = %"$have_gas_1622"
  call void @_out_of_gas()
  br label %"$have_gas_1628"

"$have_gas_1628":                                 ; preds = %"$out_of_gas_1627", %"$have_gas_1622"
  %"$consume_1629" = sub i64 %"$gasrem_1625", 1
  store i64 %"$consume_1629", i64* @_gasrem
  %"$fail_msg__sender_1630" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1630"
  %"$tname_1631" = load %String, %String* %tname
  %"$m_1632" = load %String, %String* %m2
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1630", %String %"$tname_1631", %String %"$m_1632")
  br label %"$matchsucc_1550"

"$empty_default_1554":                            ; preds = %"$have_gas_1548"
  br label %"$matchsucc_1550"

"$matchsucc_1550":                                ; preds = %"$have_gas_1628", %"$matchsucc_1584", %"$empty_default_1554"
  %"$gasrem_1633" = load i64, i64* @_gasrem
  %"$gascmp_1634" = icmp ugt i64 1, %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$matchsucc_1550"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$matchsucc_1550"
  %"$consume_1637" = sub i64 %"$gasrem_1633", 1
  store i64 %"$consume_1637", i64* @_gasrem
  %key1b = alloca %String
  %"$gasrem_1638" = load i64, i64* @_gasrem
  %"$gascmp_1639" = icmp ugt i64 1, %"$gasrem_1638"
  br i1 %"$gascmp_1639", label %"$out_of_gas_1640", label %"$have_gas_1641"

"$out_of_gas_1640":                               ; preds = %"$have_gas_1636"
  call void @_out_of_gas()
  br label %"$have_gas_1641"

"$have_gas_1641":                                 ; preds = %"$out_of_gas_1640", %"$have_gas_1636"
  %"$consume_1642" = sub i64 %"$gasrem_1638", 1
  store i64 %"$consume_1642", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1643", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$c1_3" = alloca %"TName_Option_Map_(String)_(String)"*
  %"$indices_buf_1644_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1644_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1644_salloc_load", i64 16)
  %"$indices_buf_1644_salloc" = bitcast i8* %"$indices_buf_1644_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1644" = bitcast [16 x i8]* %"$indices_buf_1644_salloc" to i8*
  %"$key1b_1645" = load %String, %String* %key1b
  %"$indices_gep_1646" = getelementptr i8, i8* %"$indices_buf_1644", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1646" to %String*
  store %String %"$key1b_1645", %String* %indices_cast3
  %"$execptr_load_1647" = load i8*, i8** @_execptr
  %"$$c1_3_1649" = call i8* @_fetch_field(i8* %"$execptr_load_1647", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1648", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 1, i8* %"$indices_buf_1644", i32 1)
  %"$$c1_3_1650" = bitcast i8* %"$$c1_3_1649" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1650", %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$c1_3_1651" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$$c1_3_1651_1652" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1651" to i8*
  %"$_literal_cost_call_1653" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_66", i8* %"$$$c1_3_1651_1652")
  %"$gasadd_1654" = add i64 %"$_literal_cost_call_1653", 0
  %"$gasadd_1655" = add i64 %"$gasadd_1654", 1
  %"$gasrem_1656" = load i64, i64* @_gasrem
  %"$gascmp_1657" = icmp ugt i64 %"$gasadd_1655", %"$gasrem_1656"
  br i1 %"$gascmp_1657", label %"$out_of_gas_1658", label %"$have_gas_1659"

"$out_of_gas_1658":                               ; preds = %"$have_gas_1641"
  call void @_out_of_gas()
  br label %"$have_gas_1659"

"$have_gas_1659":                                 ; preds = %"$out_of_gas_1658", %"$have_gas_1641"
  %"$consume_1660" = sub i64 %"$gasrem_1656", %"$gasadd_1655"
  store i64 %"$consume_1660", i64* @_gasrem
  %"$gasrem_1661" = load i64, i64* @_gasrem
  %"$gascmp_1662" = icmp ugt i64 2, %"$gasrem_1661"
  br i1 %"$gascmp_1662", label %"$out_of_gas_1663", label %"$have_gas_1664"

"$out_of_gas_1663":                               ; preds = %"$have_gas_1659"
  call void @_out_of_gas()
  br label %"$have_gas_1664"

"$have_gas_1664":                                 ; preds = %"$out_of_gas_1663", %"$have_gas_1659"
  %"$consume_1665" = sub i64 %"$gasrem_1661", 2
  store i64 %"$consume_1665", i64* @_gasrem
  %"$$c1_3_1667" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3"
  %"$$c1_3_tag_1668" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1667", i32 0, i32 0
  %"$$c1_3_tag_1669" = load i8, i8* %"$$c1_3_tag_1668"
  switch i8 %"$$c1_3_tag_1669", label %"$empty_default_1670" [
    i8 0, label %"$Some_1671"
    i8 1, label %"$None_1694"
  ]

"$Some_1671":                                     ; preds = %"$have_gas_1664"
  %"$$c1_3_1672" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1667" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_3_15_gep_1673" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_3_1672", i32 0, i32 1
  %"$$$c1_3_15_load_1674" = load %Map_String_String*, %Map_String_String** %"$$$c1_3_15_gep_1673"
  %"$$c1_3_15" = alloca %Map_String_String*
  store %Map_String_String* %"$$$c1_3_15_load_1674", %Map_String_String** %"$$c1_3_15"
  %"$gasrem_1675" = load i64, i64* @_gasrem
  %"$gascmp_1676" = icmp ugt i64 1, %"$gasrem_1675"
  br i1 %"$gascmp_1676", label %"$out_of_gas_1677", label %"$have_gas_1678"

"$out_of_gas_1677":                               ; preds = %"$Some_1671"
  call void @_out_of_gas()
  br label %"$have_gas_1678"

"$have_gas_1678":                                 ; preds = %"$out_of_gas_1677", %"$Some_1671"
  %"$consume_1679" = sub i64 %"$gasrem_1675", 1
  store i64 %"$consume_1679", i64* @_gasrem
  %m4 = alloca %String
  %"$gasrem_1680" = load i64, i64* @_gasrem
  %"$gascmp_1681" = icmp ugt i64 1, %"$gasrem_1680"
  br i1 %"$gascmp_1681", label %"$out_of_gas_1682", label %"$have_gas_1683"

"$out_of_gas_1682":                               ; preds = %"$have_gas_1678"
  call void @_out_of_gas()
  br label %"$have_gas_1683"

"$have_gas_1683":                                 ; preds = %"$out_of_gas_1682", %"$have_gas_1678"
  %"$consume_1684" = sub i64 %"$gasrem_1680", 1
  store i64 %"$consume_1684", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1685", i32 0, i32 0), i32 36 }, %String* %m4
  %"$gasrem_1686" = load i64, i64* @_gasrem
  %"$gascmp_1687" = icmp ugt i64 1, %"$gasrem_1686"
  br i1 %"$gascmp_1687", label %"$out_of_gas_1688", label %"$have_gas_1689"

"$out_of_gas_1688":                               ; preds = %"$have_gas_1683"
  call void @_out_of_gas()
  br label %"$have_gas_1689"

"$have_gas_1689":                                 ; preds = %"$out_of_gas_1688", %"$have_gas_1683"
  %"$consume_1690" = sub i64 %"$gasrem_1686", 1
  store i64 %"$consume_1690", i64* @_gasrem
  %"$fail_msg__sender_1691" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1691"
  %"$tname_1692" = load %String, %String* %tname
  %"$m_1693" = load %String, %String* %m4
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1691", %String %"$tname_1692", %String %"$m_1693")
  br label %"$matchsucc_1666"

"$None_1694":                                     ; preds = %"$have_gas_1664"
  %"$$c1_3_1695" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1667" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_1666"

"$empty_default_1670":                            ; preds = %"$have_gas_1664"
  br label %"$matchsucc_1666"

"$matchsucc_1666":                                ; preds = %"$None_1694", %"$have_gas_1689", %"$empty_default_1670"
  %"$gasrem_1696" = load i64, i64* @_gasrem
  %"$gascmp_1697" = icmp ugt i64 1, %"$gasrem_1696"
  br i1 %"$gascmp_1697", label %"$out_of_gas_1698", label %"$have_gas_1699"

"$out_of_gas_1698":                               ; preds = %"$matchsucc_1666"
  call void @_out_of_gas()
  br label %"$have_gas_1699"

"$have_gas_1699":                                 ; preds = %"$out_of_gas_1698", %"$matchsucc_1666"
  %"$consume_1700" = sub i64 %"$gasrem_1696", 1
  store i64 %"$consume_1700", i64* @_gasrem
  %"$key1b_4" = alloca %String
  %"$gasrem_1701" = load i64, i64* @_gasrem
  %"$gascmp_1702" = icmp ugt i64 1, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1699"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1699"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 1
  store i64 %"$consume_1705", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1706", i32 0, i32 0), i32 5 }, %String* %"$key1b_4"
  %"$gasrem_1707" = load i64, i64* @_gasrem
  %"$gascmp_1708" = icmp ugt i64 1, %"$gasrem_1707"
  br i1 %"$gascmp_1708", label %"$out_of_gas_1709", label %"$have_gas_1710"

"$out_of_gas_1709":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1710"

"$have_gas_1710":                                 ; preds = %"$out_of_gas_1709", %"$have_gas_1704"
  %"$consume_1711" = sub i64 %"$gasrem_1707", 1
  store i64 %"$consume_1711", i64* @_gasrem
  %key2b = alloca %String
  %"$gasrem_1712" = load i64, i64* @_gasrem
  %"$gascmp_1713" = icmp ugt i64 1, %"$gasrem_1712"
  br i1 %"$gascmp_1713", label %"$out_of_gas_1714", label %"$have_gas_1715"

"$out_of_gas_1714":                               ; preds = %"$have_gas_1710"
  call void @_out_of_gas()
  br label %"$have_gas_1715"

"$have_gas_1715":                                 ; preds = %"$out_of_gas_1714", %"$have_gas_1710"
  %"$consume_1716" = sub i64 %"$gasrem_1712", 1
  store i64 %"$consume_1716", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1717", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$c1_5" = alloca %TName_Option_String*
  %"$indices_buf_1718_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1718_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1718_salloc_load", i64 32)
  %"$indices_buf_1718_salloc" = bitcast i8* %"$indices_buf_1718_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1718" = bitcast [32 x i8]* %"$indices_buf_1718_salloc" to i8*
  %"$$key1b_4_1719" = load %String, %String* %"$key1b_4"
  %"$indices_gep_1720" = getelementptr i8, i8* %"$indices_buf_1718", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_1720" to %String*
  store %String %"$$key1b_4_1719", %String* %indices_cast5
  %"$key2b_1721" = load %String, %String* %key2b
  %"$indices_gep_1722" = getelementptr i8, i8* %"$indices_buf_1718", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_1722" to %String*
  store %String %"$key2b_1721", %String* %indices_cast6
  %"$execptr_load_1723" = load i8*, i8** @_execptr
  %"$$c1_5_1725" = call i8* @_fetch_field(i8* %"$execptr_load_1723", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1724", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1718", i32 1)
  %"$$c1_5_1726" = bitcast i8* %"$$c1_5_1725" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_5_1726", %TName_Option_String** %"$c1_5"
  %"$$c1_5_1727" = load %TName_Option_String*, %TName_Option_String** %"$c1_5"
  %"$$$c1_5_1727_1728" = bitcast %TName_Option_String* %"$$c1_5_1727" to i8*
  %"$_literal_cost_call_1729" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$$c1_5_1727_1728")
  %"$gasadd_1730" = add i64 %"$_literal_cost_call_1729", 0
  %"$gasadd_1731" = add i64 %"$gasadd_1730", 2
  %"$gasrem_1732" = load i64, i64* @_gasrem
  %"$gascmp_1733" = icmp ugt i64 %"$gasadd_1731", %"$gasrem_1732"
  br i1 %"$gascmp_1733", label %"$out_of_gas_1734", label %"$have_gas_1735"

"$out_of_gas_1734":                               ; preds = %"$have_gas_1715"
  call void @_out_of_gas()
  br label %"$have_gas_1735"

"$have_gas_1735":                                 ; preds = %"$out_of_gas_1734", %"$have_gas_1715"
  %"$consume_1736" = sub i64 %"$gasrem_1732", %"$gasadd_1731"
  store i64 %"$consume_1736", i64* @_gasrem
  %"$gasrem_1737" = load i64, i64* @_gasrem
  %"$gascmp_1738" = icmp ugt i64 2, %"$gasrem_1737"
  br i1 %"$gascmp_1738", label %"$out_of_gas_1739", label %"$have_gas_1740"

"$out_of_gas_1739":                               ; preds = %"$have_gas_1735"
  call void @_out_of_gas()
  br label %"$have_gas_1740"

"$have_gas_1740":                                 ; preds = %"$out_of_gas_1739", %"$have_gas_1735"
  %"$consume_1741" = sub i64 %"$gasrem_1737", 2
  store i64 %"$consume_1741", i64* @_gasrem
  %"$$c1_5_1743" = load %TName_Option_String*, %TName_Option_String** %"$c1_5"
  %"$$c1_5_tag_1744" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_5_1743", i32 0, i32 0
  %"$$c1_5_tag_1745" = load i8, i8* %"$$c1_5_tag_1744"
  switch i8 %"$$c1_5_tag_1745", label %"$empty_default_1746" [
    i8 0, label %"$Some_1747"
    i8 1, label %"$None_1770"
  ]

"$Some_1747":                                     ; preds = %"$have_gas_1740"
  %"$$c1_5_1748" = bitcast %TName_Option_String* %"$$c1_5_1743" to %CName_Some_String*
  %"$$$c1_5_14_gep_1749" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_5_1748", i32 0, i32 1
  %"$$$c1_5_14_load_1750" = load %String, %String* %"$$$c1_5_14_gep_1749"
  %"$$c1_5_14" = alloca %String
  store %String %"$$$c1_5_14_load_1750", %String* %"$$c1_5_14"
  %"$gasrem_1751" = load i64, i64* @_gasrem
  %"$gascmp_1752" = icmp ugt i64 1, %"$gasrem_1751"
  br i1 %"$gascmp_1752", label %"$out_of_gas_1753", label %"$have_gas_1754"

"$out_of_gas_1753":                               ; preds = %"$Some_1747"
  call void @_out_of_gas()
  br label %"$have_gas_1754"

"$have_gas_1754":                                 ; preds = %"$out_of_gas_1753", %"$Some_1747"
  %"$consume_1755" = sub i64 %"$gasrem_1751", 1
  store i64 %"$consume_1755", i64* @_gasrem
  %m7 = alloca %String
  %"$gasrem_1756" = load i64, i64* @_gasrem
  %"$gascmp_1757" = icmp ugt i64 1, %"$gasrem_1756"
  br i1 %"$gascmp_1757", label %"$out_of_gas_1758", label %"$have_gas_1759"

"$out_of_gas_1758":                               ; preds = %"$have_gas_1754"
  call void @_out_of_gas()
  br label %"$have_gas_1759"

"$have_gas_1759":                                 ; preds = %"$out_of_gas_1758", %"$have_gas_1754"
  %"$consume_1760" = sub i64 %"$gasrem_1756", 1
  store i64 %"$consume_1760", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1761", i32 0, i32 0), i32 42 }, %String* %m7
  %"$gasrem_1762" = load i64, i64* @_gasrem
  %"$gascmp_1763" = icmp ugt i64 1, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %"$have_gas_1759"
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %"$have_gas_1759"
  %"$consume_1766" = sub i64 %"$gasrem_1762", 1
  store i64 %"$consume_1766", i64* @_gasrem
  %"$fail_msg__sender_1767" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1767"
  %"$tname_1768" = load %String, %String* %tname
  %"$m_1769" = load %String, %String* %m7
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1767", %String %"$tname_1768", %String %"$m_1769")
  br label %"$matchsucc_1742"

"$None_1770":                                     ; preds = %"$have_gas_1740"
  %"$$c1_5_1771" = bitcast %TName_Option_String* %"$$c1_5_1743" to %CName_None_String*
  br label %"$matchsucc_1742"

"$empty_default_1746":                            ; preds = %"$have_gas_1740"
  br label %"$matchsucc_1742"

"$matchsucc_1742":                                ; preds = %"$None_1770", %"$have_gas_1765", %"$empty_default_1746"
  %"$gasrem_1772" = load i64, i64* @_gasrem
  %"$gascmp_1773" = icmp ugt i64 1, %"$gasrem_1772"
  br i1 %"$gascmp_1773", label %"$out_of_gas_1774", label %"$have_gas_1775"

"$out_of_gas_1774":                               ; preds = %"$matchsucc_1742"
  call void @_out_of_gas()
  br label %"$have_gas_1775"

"$have_gas_1775":                                 ; preds = %"$out_of_gas_1774", %"$matchsucc_1742"
  %"$consume_1776" = sub i64 %"$gasrem_1772", 1
  store i64 %"$consume_1776", i64* @_gasrem
  %"$key1b_6" = alloca %String
  %"$gasrem_1777" = load i64, i64* @_gasrem
  %"$gascmp_1778" = icmp ugt i64 1, %"$gasrem_1777"
  br i1 %"$gascmp_1778", label %"$out_of_gas_1779", label %"$have_gas_1780"

"$out_of_gas_1779":                               ; preds = %"$have_gas_1775"
  call void @_out_of_gas()
  br label %"$have_gas_1780"

"$have_gas_1780":                                 ; preds = %"$out_of_gas_1779", %"$have_gas_1775"
  %"$consume_1781" = sub i64 %"$gasrem_1777", 1
  store i64 %"$consume_1781", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1782", i32 0, i32 0), i32 5 }, %String* %"$key1b_6"
  %"$gasrem_1783" = load i64, i64* @_gasrem
  %"$gascmp_1784" = icmp ugt i64 1, %"$gasrem_1783"
  br i1 %"$gascmp_1784", label %"$out_of_gas_1785", label %"$have_gas_1786"

"$out_of_gas_1785":                               ; preds = %"$have_gas_1780"
  call void @_out_of_gas()
  br label %"$have_gas_1786"

"$have_gas_1786":                                 ; preds = %"$out_of_gas_1785", %"$have_gas_1780"
  %"$consume_1787" = sub i64 %"$gasrem_1783", 1
  store i64 %"$consume_1787", i64* @_gasrem
  %key2d = alloca %String
  %"$gasrem_1788" = load i64, i64* @_gasrem
  %"$gascmp_1789" = icmp ugt i64 1, %"$gasrem_1788"
  br i1 %"$gascmp_1789", label %"$out_of_gas_1790", label %"$have_gas_1791"

"$out_of_gas_1790":                               ; preds = %"$have_gas_1786"
  call void @_out_of_gas()
  br label %"$have_gas_1791"

"$have_gas_1791":                                 ; preds = %"$out_of_gas_1790", %"$have_gas_1786"
  %"$consume_1792" = sub i64 %"$gasrem_1788", 1
  store i64 %"$consume_1792", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1793", i32 0, i32 0), i32 5 }, %String* %key2d
  %"$c1_7" = alloca %TName_Option_String*
  %"$indices_buf_1794_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1794_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1794_salloc_load", i64 32)
  %"$indices_buf_1794_salloc" = bitcast i8* %"$indices_buf_1794_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1794" = bitcast [32 x i8]* %"$indices_buf_1794_salloc" to i8*
  %"$$key1b_6_1795" = load %String, %String* %"$key1b_6"
  %"$indices_gep_1796" = getelementptr i8, i8* %"$indices_buf_1794", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_1796" to %String*
  store %String %"$$key1b_6_1795", %String* %indices_cast8
  %"$key2d_1797" = load %String, %String* %key2d
  %"$indices_gep_1798" = getelementptr i8, i8* %"$indices_buf_1794", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_1798" to %String*
  store %String %"$key2d_1797", %String* %indices_cast9
  %"$execptr_load_1799" = load i8*, i8** @_execptr
  %"$$c1_7_1801" = call i8* @_fetch_field(i8* %"$execptr_load_1799", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1800", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1794", i32 1)
  %"$$c1_7_1802" = bitcast i8* %"$$c1_7_1801" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_1802", %TName_Option_String** %"$c1_7"
  %"$$c1_7_1803" = load %TName_Option_String*, %TName_Option_String** %"$c1_7"
  %"$$$c1_7_1803_1804" = bitcast %TName_Option_String* %"$$c1_7_1803" to i8*
  %"$_literal_cost_call_1805" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$$c1_7_1803_1804")
  %"$gasadd_1806" = add i64 %"$_literal_cost_call_1805", 0
  %"$gasadd_1807" = add i64 %"$gasadd_1806", 2
  %"$gasrem_1808" = load i64, i64* @_gasrem
  %"$gascmp_1809" = icmp ugt i64 %"$gasadd_1807", %"$gasrem_1808"
  br i1 %"$gascmp_1809", label %"$out_of_gas_1810", label %"$have_gas_1811"

"$out_of_gas_1810":                               ; preds = %"$have_gas_1791"
  call void @_out_of_gas()
  br label %"$have_gas_1811"

"$have_gas_1811":                                 ; preds = %"$out_of_gas_1810", %"$have_gas_1791"
  %"$consume_1812" = sub i64 %"$gasrem_1808", %"$gasadd_1807"
  store i64 %"$consume_1812", i64* @_gasrem
  %"$gasrem_1813" = load i64, i64* @_gasrem
  %"$gascmp_1814" = icmp ugt i64 2, %"$gasrem_1813"
  br i1 %"$gascmp_1814", label %"$out_of_gas_1815", label %"$have_gas_1816"

"$out_of_gas_1815":                               ; preds = %"$have_gas_1811"
  call void @_out_of_gas()
  br label %"$have_gas_1816"

"$have_gas_1816":                                 ; preds = %"$out_of_gas_1815", %"$have_gas_1811"
  %"$consume_1817" = sub i64 %"$gasrem_1813", 2
  store i64 %"$consume_1817", i64* @_gasrem
  %"$$c1_7_1819" = load %TName_Option_String*, %TName_Option_String** %"$c1_7"
  %"$$c1_7_tag_1820" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_1819", i32 0, i32 0
  %"$$c1_7_tag_1821" = load i8, i8* %"$$c1_7_tag_1820"
  switch i8 %"$$c1_7_tag_1821", label %"$empty_default_1822" [
    i8 0, label %"$Some_1823"
    i8 1, label %"$None_1846"
  ]

"$Some_1823":                                     ; preds = %"$have_gas_1816"
  %"$$c1_7_1824" = bitcast %TName_Option_String* %"$$c1_7_1819" to %CName_Some_String*
  %"$$$c1_7_13_gep_1825" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_1824", i32 0, i32 1
  %"$$$c1_7_13_load_1826" = load %String, %String* %"$$$c1_7_13_gep_1825"
  %"$$c1_7_13" = alloca %String
  store %String %"$$$c1_7_13_load_1826", %String* %"$$c1_7_13"
  %"$gasrem_1827" = load i64, i64* @_gasrem
  %"$gascmp_1828" = icmp ugt i64 1, %"$gasrem_1827"
  br i1 %"$gascmp_1828", label %"$out_of_gas_1829", label %"$have_gas_1830"

"$out_of_gas_1829":                               ; preds = %"$Some_1823"
  call void @_out_of_gas()
  br label %"$have_gas_1830"

"$have_gas_1830":                                 ; preds = %"$out_of_gas_1829", %"$Some_1823"
  %"$consume_1831" = sub i64 %"$gasrem_1827", 1
  store i64 %"$consume_1831", i64* @_gasrem
  %m10 = alloca %String
  %"$gasrem_1832" = load i64, i64* @_gasrem
  %"$gascmp_1833" = icmp ugt i64 1, %"$gasrem_1832"
  br i1 %"$gascmp_1833", label %"$out_of_gas_1834", label %"$have_gas_1835"

"$out_of_gas_1834":                               ; preds = %"$have_gas_1830"
  call void @_out_of_gas()
  br label %"$have_gas_1835"

"$have_gas_1835":                                 ; preds = %"$out_of_gas_1834", %"$have_gas_1830"
  %"$consume_1836" = sub i64 %"$gasrem_1832", 1
  store i64 %"$consume_1836", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1837", i32 0, i32 0), i32 42 }, %String* %m10
  %"$gasrem_1838" = load i64, i64* @_gasrem
  %"$gascmp_1839" = icmp ugt i64 1, %"$gasrem_1838"
  br i1 %"$gascmp_1839", label %"$out_of_gas_1840", label %"$have_gas_1841"

"$out_of_gas_1840":                               ; preds = %"$have_gas_1835"
  call void @_out_of_gas()
  br label %"$have_gas_1841"

"$have_gas_1841":                                 ; preds = %"$out_of_gas_1840", %"$have_gas_1835"
  %"$consume_1842" = sub i64 %"$gasrem_1838", 1
  store i64 %"$consume_1842", i64* @_gasrem
  %"$fail_msg__sender_1843" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1843"
  %"$tname_1844" = load %String, %String* %tname
  %"$m_1845" = load %String, %String* %m10
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_1843", %String %"$tname_1844", %String %"$m_1845")
  br label %"$matchsucc_1818"

"$None_1846":                                     ; preds = %"$have_gas_1816"
  %"$$c1_7_1847" = bitcast %TName_Option_String* %"$$c1_7_1819" to %CName_None_String*
  br label %"$matchsucc_1818"

"$empty_default_1822":                            ; preds = %"$have_gas_1816"
  br label %"$matchsucc_1818"

"$matchsucc_1818":                                ; preds = %"$None_1846", %"$have_gas_1841", %"$empty_default_1822"
  %"$gasrem_1848" = load i64, i64* @_gasrem
  %"$gascmp_1849" = icmp ugt i64 1, %"$gasrem_1848"
  br i1 %"$gascmp_1849", label %"$out_of_gas_1850", label %"$have_gas_1851"

"$out_of_gas_1850":                               ; preds = %"$matchsucc_1818"
  call void @_out_of_gas()
  br label %"$have_gas_1851"

"$have_gas_1851":                                 ; preds = %"$out_of_gas_1850", %"$matchsucc_1818"
  %"$consume_1852" = sub i64 %"$gasrem_1848", 1
  store i64 %"$consume_1852", i64* @_gasrem
  %"$key1b_8" = alloca %String
  %"$gasrem_1853" = load i64, i64* @_gasrem
  %"$gascmp_1854" = icmp ugt i64 1, %"$gasrem_1853"
  br i1 %"$gascmp_1854", label %"$out_of_gas_1855", label %"$have_gas_1856"

"$out_of_gas_1855":                               ; preds = %"$have_gas_1851"
  call void @_out_of_gas()
  br label %"$have_gas_1856"

"$have_gas_1856":                                 ; preds = %"$out_of_gas_1855", %"$have_gas_1851"
  %"$consume_1857" = sub i64 %"$gasrem_1853", 1
  store i64 %"$consume_1857", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1858", i32 0, i32 0), i32 5 }, %String* %"$key1b_8"
  %"$gasrem_1859" = load i64, i64* @_gasrem
  %"$gascmp_1860" = icmp ugt i64 1, %"$gasrem_1859"
  br i1 %"$gascmp_1860", label %"$out_of_gas_1861", label %"$have_gas_1862"

"$out_of_gas_1861":                               ; preds = %"$have_gas_1856"
  call void @_out_of_gas()
  br label %"$have_gas_1862"

"$have_gas_1862":                                 ; preds = %"$out_of_gas_1861", %"$have_gas_1856"
  %"$consume_1863" = sub i64 %"$gasrem_1859", 1
  store i64 %"$consume_1863", i64* @_gasrem
  %key2c = alloca %String
  %"$gasrem_1864" = load i64, i64* @_gasrem
  %"$gascmp_1865" = icmp ugt i64 1, %"$gasrem_1864"
  br i1 %"$gascmp_1865", label %"$out_of_gas_1866", label %"$have_gas_1867"

"$out_of_gas_1866":                               ; preds = %"$have_gas_1862"
  call void @_out_of_gas()
  br label %"$have_gas_1867"

"$have_gas_1867":                                 ; preds = %"$out_of_gas_1866", %"$have_gas_1862"
  %"$consume_1868" = sub i64 %"$gasrem_1864", 1
  store i64 %"$consume_1868", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1869", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$gasrem_1870" = load i64, i64* @_gasrem
  %"$gascmp_1871" = icmp ugt i64 1, %"$gasrem_1870"
  br i1 %"$gascmp_1871", label %"$out_of_gas_1872", label %"$have_gas_1873"

"$out_of_gas_1872":                               ; preds = %"$have_gas_1867"
  call void @_out_of_gas()
  br label %"$have_gas_1873"

"$have_gas_1873":                                 ; preds = %"$out_of_gas_1872", %"$have_gas_1867"
  %"$consume_1874" = sub i64 %"$gasrem_1870", 1
  store i64 %"$consume_1874", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_1875" = load i64, i64* @_gasrem
  %"$gascmp_1876" = icmp ugt i64 1, %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$have_gas_1873"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$have_gas_1873"
  %"$consume_1879" = sub i64 %"$gasrem_1875", 1
  store i64 %"$consume_1879", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1880", i32 0, i32 0), i32 3 }, %String* %s
  %"$_literal_cost_s_1881" = alloca %String
  %"$s_1882" = load %String, %String* %s
  store %String %"$s_1882", %String* %"$_literal_cost_s_1881"
  %"$$_literal_cost_s_1881_1883" = bitcast %String* %"$_literal_cost_s_1881" to i8*
  %"$_literal_cost_call_1884" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s_1881_1883")
  %"$gasadd_1885" = add i64 %"$_literal_cost_call_1884", 2
  %"$gasrem_1886" = load i64, i64* @_gasrem
  %"$gascmp_1887" = icmp ugt i64 %"$gasadd_1885", %"$gasrem_1886"
  br i1 %"$gascmp_1887", label %"$out_of_gas_1888", label %"$have_gas_1889"

"$out_of_gas_1888":                               ; preds = %"$have_gas_1878"
  call void @_out_of_gas()
  br label %"$have_gas_1889"

"$have_gas_1889":                                 ; preds = %"$out_of_gas_1888", %"$have_gas_1878"
  %"$consume_1890" = sub i64 %"$gasrem_1886", %"$gasadd_1885"
  store i64 %"$consume_1890", i64* @_gasrem
  %"$indices_buf_1891_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1891_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1891_salloc_load", i64 32)
  %"$indices_buf_1891_salloc" = bitcast i8* %"$indices_buf_1891_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1891" = bitcast [32 x i8]* %"$indices_buf_1891_salloc" to i8*
  %"$$key1b_8_1892" = load %String, %String* %"$key1b_8"
  %"$indices_gep_1893" = getelementptr i8, i8* %"$indices_buf_1891", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_1893" to %String*
  store %String %"$$key1b_8_1892", %String* %indices_cast11
  %"$key2c_1894" = load %String, %String* %key2c
  %"$indices_gep_1895" = getelementptr i8, i8* %"$indices_buf_1891", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_1895" to %String*
  store %String %"$key2c_1894", %String* %indices_cast12
  %"$execptr_load_1896" = load i8*, i8** @_execptr
  %"$s_1898" = load %String, %String* %s
  %"$update_value_1899" = alloca %String
  store %String %"$s_1898", %String* %"$update_value_1899"
  %"$update_value_1900" = bitcast %String* %"$update_value_1899" to i8*
  call void @_update_field(i8* %"$execptr_load_1896", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1897", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1891", i8* %"$update_value_1900")
  ret void
}

define void @t7(i8* %0) {
entry:
  %"$_amount_1902" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1903" = bitcast i8* %"$_amount_1902" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1903"
  %"$_sender_1904" = getelementptr i8, i8* %0, i32 16
  %"$_sender_1905" = bitcast i8* %"$_sender_1904" to [20 x i8]*
  call void @"$t7_1491"(%Uint128 %_amount, [20 x i8]* %"$_sender_1905")
  ret void
}

define internal void @"$t8_1906"(%Uint128 %_amount, [20 x i8]* %"$_sender_1907") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1907"
  %"$gasrem_1908" = load i64, i64* @_gasrem
  %"$gascmp_1909" = icmp ugt i64 1, %"$gasrem_1908"
  br i1 %"$gascmp_1909", label %"$out_of_gas_1910", label %"$have_gas_1911"

"$out_of_gas_1910":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1911"

"$have_gas_1911":                                 ; preds = %"$out_of_gas_1910", %entry
  %"$consume_1912" = sub i64 %"$gasrem_1908", 1
  store i64 %"$consume_1912", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_1913" = load i64, i64* @_gasrem
  %"$gascmp_1914" = icmp ugt i64 1, %"$gasrem_1913"
  br i1 %"$gascmp_1914", label %"$out_of_gas_1915", label %"$have_gas_1916"

"$out_of_gas_1915":                               ; preds = %"$have_gas_1911"
  call void @_out_of_gas()
  br label %"$have_gas_1916"

"$have_gas_1916":                                 ; preds = %"$out_of_gas_1915", %"$have_gas_1911"
  %"$consume_1917" = sub i64 %"$gasrem_1913", 1
  store i64 %"$consume_1917", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1918", i32 0, i32 0), i32 2 }, %String* %tname
  %"$gasrem_1919" = load i64, i64* @_gasrem
  %"$gascmp_1920" = icmp ugt i64 1, %"$gasrem_1919"
  br i1 %"$gascmp_1920", label %"$out_of_gas_1921", label %"$have_gas_1922"

"$out_of_gas_1921":                               ; preds = %"$have_gas_1916"
  call void @_out_of_gas()
  br label %"$have_gas_1922"

"$have_gas_1922":                                 ; preds = %"$out_of_gas_1921", %"$have_gas_1916"
  %"$consume_1923" = sub i64 %"$gasrem_1919", 1
  store i64 %"$consume_1923", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_1924" = load i64, i64* @_gasrem
  %"$gascmp_1925" = icmp ugt i64 1, %"$gasrem_1924"
  br i1 %"$gascmp_1925", label %"$out_of_gas_1926", label %"$have_gas_1927"

"$out_of_gas_1926":                               ; preds = %"$have_gas_1922"
  call void @_out_of_gas()
  br label %"$have_gas_1927"

"$have_gas_1927":                                 ; preds = %"$out_of_gas_1926", %"$have_gas_1922"
  %"$consume_1928" = sub i64 %"$gasrem_1924", 1
  store i64 %"$consume_1928", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1929", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_1930" = load i64, i64* @_gasrem
  %"$gascmp_1931" = icmp ugt i64 1, %"$gasrem_1930"
  br i1 %"$gascmp_1931", label %"$out_of_gas_1932", label %"$have_gas_1933"

"$out_of_gas_1932":                               ; preds = %"$have_gas_1927"
  call void @_out_of_gas()
  br label %"$have_gas_1933"

"$have_gas_1933":                                 ; preds = %"$out_of_gas_1932", %"$have_gas_1927"
  %"$consume_1934" = sub i64 %"$gasrem_1930", 1
  store i64 %"$consume_1934", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_1935" = load i64, i64* @_gasrem
  %"$gascmp_1936" = icmp ugt i64 1, %"$gasrem_1935"
  br i1 %"$gascmp_1936", label %"$out_of_gas_1937", label %"$have_gas_1938"

"$out_of_gas_1937":                               ; preds = %"$have_gas_1933"
  call void @_out_of_gas()
  br label %"$have_gas_1938"

"$have_gas_1938":                                 ; preds = %"$out_of_gas_1937", %"$have_gas_1933"
  %"$consume_1939" = sub i64 %"$gasrem_1935", 1
  store i64 %"$consume_1939", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1940", i32 0, i32 0), i32 5 }, %String* %key2a
  %c1 = alloca %TName_Option_String*
  %"$indices_buf_1941_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_1941_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1941_salloc_load", i64 32)
  %"$indices_buf_1941_salloc" = bitcast i8* %"$indices_buf_1941_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1941" = bitcast [32 x i8]* %"$indices_buf_1941_salloc" to i8*
  %"$key1a_1942" = load %String, %String* %key1a
  %"$indices_gep_1943" = getelementptr i8, i8* %"$indices_buf_1941", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1943" to %String*
  store %String %"$key1a_1942", %String* %indices_cast
  %"$key2a_1944" = load %String, %String* %key2a
  %"$indices_gep_1945" = getelementptr i8, i8* %"$indices_buf_1941", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1945" to %String*
  store %String %"$key2a_1944", %String* %indices_cast1
  %"$execptr_load_1946" = load i8*, i8** @_execptr
  %"$c1_1948" = call i8* @_fetch_field(i8* %"$execptr_load_1946", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1947", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_1941", i32 1)
  %"$c1_1949" = bitcast i8* %"$c1_1948" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1949", %TName_Option_String** %c1
  %"$c1_1950" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$$c1_1950_1951" = bitcast %TName_Option_String* %"$c1_1950" to i8*
  %"$_literal_cost_call_1952" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$c1_1950_1951")
  %"$gasadd_1953" = add i64 %"$_literal_cost_call_1952", 0
  %"$gasadd_1954" = add i64 %"$gasadd_1953", 2
  %"$gasrem_1955" = load i64, i64* @_gasrem
  %"$gascmp_1956" = icmp ugt i64 %"$gasadd_1954", %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1938"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1938"
  %"$consume_1959" = sub i64 %"$gasrem_1955", %"$gasadd_1954"
  store i64 %"$consume_1959", i64* @_gasrem
  %"$gasrem_1960" = load i64, i64* @_gasrem
  %"$gascmp_1961" = icmp ugt i64 2, %"$gasrem_1960"
  br i1 %"$gascmp_1961", label %"$out_of_gas_1962", label %"$have_gas_1963"

"$out_of_gas_1962":                               ; preds = %"$have_gas_1958"
  call void @_out_of_gas()
  br label %"$have_gas_1963"

"$have_gas_1963":                                 ; preds = %"$out_of_gas_1962", %"$have_gas_1958"
  %"$consume_1964" = sub i64 %"$gasrem_1960", 2
  store i64 %"$consume_1964", i64* @_gasrem
  %"$c1_1966" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_1967" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1966", i32 0, i32 0
  %"$c1_tag_1968" = load i8, i8* %"$c1_tag_1967"
  switch i8 %"$c1_tag_1968", label %"$empty_default_1969" [
    i8 0, label %"$Some_1970"
    i8 1, label %"$None_2027"
  ]

"$Some_1970":                                     ; preds = %"$have_gas_1963"
  %"$c1_1971" = bitcast %TName_Option_String* %"$c1_1966" to %CName_Some_String*
  %"$c_gep_1972" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1971", i32 0, i32 1
  %"$c_load_1973" = load %String, %String* %"$c_gep_1972"
  %c = alloca %String
  store %String %"$c_load_1973", %String* %c
  %"$gasrem_1974" = load i64, i64* @_gasrem
  %"$gascmp_1975" = icmp ugt i64 1, %"$gasrem_1974"
  br i1 %"$gascmp_1975", label %"$out_of_gas_1976", label %"$have_gas_1977"

"$out_of_gas_1976":                               ; preds = %"$Some_1970"
  call void @_out_of_gas()
  br label %"$have_gas_1977"

"$have_gas_1977":                                 ; preds = %"$out_of_gas_1976", %"$Some_1970"
  %"$consume_1978" = sub i64 %"$gasrem_1974", 1
  store i64 %"$consume_1978", i64* @_gasrem
  %v = alloca %String
  %"$gasrem_1979" = load i64, i64* @_gasrem
  %"$gascmp_1980" = icmp ugt i64 1, %"$gasrem_1979"
  br i1 %"$gascmp_1980", label %"$out_of_gas_1981", label %"$have_gas_1982"

"$out_of_gas_1981":                               ; preds = %"$have_gas_1977"
  call void @_out_of_gas()
  br label %"$have_gas_1982"

"$have_gas_1982":                                 ; preds = %"$out_of_gas_1981", %"$have_gas_1977"
  %"$consume_1983" = sub i64 %"$gasrem_1979", 1
  store i64 %"$consume_1983", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1984", i32 0, i32 0), i32 3 }, %String* %v
  %"$gasrem_1985" = load i64, i64* @_gasrem
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$have_gas_1982"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$have_gas_1982"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem
  %eq = alloca %TName_Bool*
  %"$execptr_load_1990" = load i8*, i8** @_execptr
  %"$c_1991" = load %String, %String* %c
  %"$v_1992" = load %String, %String* %v
  %"$eq_call_1993" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1990", %String %"$c_1991", %String %"$v_1992")
  store %TName_Bool* %"$eq_call_1993", %TName_Bool** %eq
  %"$gasrem_1994" = load i64, i64* @_gasrem
  %"$gascmp_1995" = icmp ugt i64 2, %"$gasrem_1994"
  br i1 %"$gascmp_1995", label %"$out_of_gas_1996", label %"$have_gas_1997"

"$out_of_gas_1996":                               ; preds = %"$have_gas_1988"
  call void @_out_of_gas()
  br label %"$have_gas_1997"

"$have_gas_1997":                                 ; preds = %"$out_of_gas_1996", %"$have_gas_1988"
  %"$consume_1998" = sub i64 %"$gasrem_1994", 2
  store i64 %"$consume_1998", i64* @_gasrem
  %"$eq_2000" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_2001" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2000", i32 0, i32 0
  %"$eq_tag_2002" = load i8, i8* %"$eq_tag_2001"
  switch i8 %"$eq_tag_2002", label %"$empty_default_2003" [
    i8 0, label %"$True_2004"
    i8 1, label %"$False_2006"
  ]

"$True_2004":                                     ; preds = %"$have_gas_1997"
  %"$eq_2005" = bitcast %TName_Bool* %"$eq_2000" to %CName_True*
  br label %"$matchsucc_1999"

"$False_2006":                                    ; preds = %"$have_gas_1997"
  %"$eq_2007" = bitcast %TName_Bool* %"$eq_2000" to %CName_False*
  %"$gasrem_2008" = load i64, i64* @_gasrem
  %"$gascmp_2009" = icmp ugt i64 1, %"$gasrem_2008"
  br i1 %"$gascmp_2009", label %"$out_of_gas_2010", label %"$have_gas_2011"

"$out_of_gas_2010":                               ; preds = %"$False_2006"
  call void @_out_of_gas()
  br label %"$have_gas_2011"

"$have_gas_2011":                                 ; preds = %"$out_of_gas_2010", %"$False_2006"
  %"$consume_2012" = sub i64 %"$gasrem_2008", 1
  store i64 %"$consume_2012", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_2013" = load i64, i64* @_gasrem
  %"$gascmp_2014" = icmp ugt i64 1, %"$gasrem_2013"
  br i1 %"$gascmp_2014", label %"$out_of_gas_2015", label %"$have_gas_2016"

"$out_of_gas_2015":                               ; preds = %"$have_gas_2011"
  call void @_out_of_gas()
  br label %"$have_gas_2016"

"$have_gas_2016":                                 ; preds = %"$out_of_gas_2015", %"$have_gas_2011"
  %"$consume_2017" = sub i64 %"$gasrem_2013", 1
  store i64 %"$consume_2017", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2018", i32 0, i32 0), i32 31 }, %String* %m
  %"$gasrem_2019" = load i64, i64* @_gasrem
  %"$gascmp_2020" = icmp ugt i64 1, %"$gasrem_2019"
  br i1 %"$gascmp_2020", label %"$out_of_gas_2021", label %"$have_gas_2022"

"$out_of_gas_2021":                               ; preds = %"$have_gas_2016"
  call void @_out_of_gas()
  br label %"$have_gas_2022"

"$have_gas_2022":                                 ; preds = %"$out_of_gas_2021", %"$have_gas_2016"
  %"$consume_2023" = sub i64 %"$gasrem_2019", 1
  store i64 %"$consume_2023", i64* @_gasrem
  %"$fail_msg__sender_2024" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2024"
  %"$tname_2025" = load %String, %String* %tname
  %"$m_2026" = load %String, %String* %m
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2024", %String %"$tname_2025", %String %"$m_2026")
  br label %"$matchsucc_1999"

"$empty_default_2003":                            ; preds = %"$have_gas_1997"
  br label %"$matchsucc_1999"

"$matchsucc_1999":                                ; preds = %"$have_gas_2022", %"$True_2004", %"$empty_default_2003"
  br label %"$matchsucc_1965"

"$None_2027":                                     ; preds = %"$have_gas_1963"
  %"$c1_2028" = bitcast %TName_Option_String* %"$c1_1966" to %CName_None_String*
  %"$gasrem_2029" = load i64, i64* @_gasrem
  %"$gascmp_2030" = icmp ugt i64 1, %"$gasrem_2029"
  br i1 %"$gascmp_2030", label %"$out_of_gas_2031", label %"$have_gas_2032"

"$out_of_gas_2031":                               ; preds = %"$None_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2032"

"$have_gas_2032":                                 ; preds = %"$out_of_gas_2031", %"$None_2027"
  %"$consume_2033" = sub i64 %"$gasrem_2029", 1
  store i64 %"$consume_2033", i64* @_gasrem
  %m2 = alloca %String
  %"$gasrem_2034" = load i64, i64* @_gasrem
  %"$gascmp_2035" = icmp ugt i64 1, %"$gasrem_2034"
  br i1 %"$gascmp_2035", label %"$out_of_gas_2036", label %"$have_gas_2037"

"$out_of_gas_2036":                               ; preds = %"$have_gas_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2037"

"$have_gas_2037":                                 ; preds = %"$out_of_gas_2036", %"$have_gas_2032"
  %"$consume_2038" = sub i64 %"$gasrem_2034", 1
  store i64 %"$consume_2038", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2039", i32 0, i32 0), i32 21 }, %String* %m2
  %"$gasrem_2040" = load i64, i64* @_gasrem
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$have_gas_2037"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$have_gas_2037"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem
  %"$fail_msg__sender_2045" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2045"
  %"$tname_2046" = load %String, %String* %tname
  %"$m_2047" = load %String, %String* %m2
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2045", %String %"$tname_2046", %String %"$m_2047")
  br label %"$matchsucc_1965"

"$empty_default_1969":                            ; preds = %"$have_gas_1963"
  br label %"$matchsucc_1965"

"$matchsucc_1965":                                ; preds = %"$have_gas_2043", %"$matchsucc_1999", %"$empty_default_1969"
  %"$gasrem_2048" = load i64, i64* @_gasrem
  %"$gascmp_2049" = icmp ugt i64 1, %"$gasrem_2048"
  br i1 %"$gascmp_2049", label %"$out_of_gas_2050", label %"$have_gas_2051"

"$out_of_gas_2050":                               ; preds = %"$matchsucc_1965"
  call void @_out_of_gas()
  br label %"$have_gas_2051"

"$have_gas_2051":                                 ; preds = %"$out_of_gas_2050", %"$matchsucc_1965"
  %"$consume_2052" = sub i64 %"$gasrem_2048", 1
  store i64 %"$consume_2052", i64* @_gasrem
  %key1b = alloca %String
  %"$gasrem_2053" = load i64, i64* @_gasrem
  %"$gascmp_2054" = icmp ugt i64 1, %"$gasrem_2053"
  br i1 %"$gascmp_2054", label %"$out_of_gas_2055", label %"$have_gas_2056"

"$out_of_gas_2055":                               ; preds = %"$have_gas_2051"
  call void @_out_of_gas()
  br label %"$have_gas_2056"

"$have_gas_2056":                                 ; preds = %"$out_of_gas_2055", %"$have_gas_2051"
  %"$consume_2057" = sub i64 %"$gasrem_2053", 1
  store i64 %"$consume_2057", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2058", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$gasrem_2059" = load i64, i64* @_gasrem
  %"$gascmp_2060" = icmp ugt i64 1, %"$gasrem_2059"
  br i1 %"$gascmp_2060", label %"$out_of_gas_2061", label %"$have_gas_2062"

"$out_of_gas_2061":                               ; preds = %"$have_gas_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2062"

"$have_gas_2062":                                 ; preds = %"$out_of_gas_2061", %"$have_gas_2056"
  %"$consume_2063" = sub i64 %"$gasrem_2059", 1
  store i64 %"$consume_2063", i64* @_gasrem
  %key2c = alloca %String
  %"$gasrem_2064" = load i64, i64* @_gasrem
  %"$gascmp_2065" = icmp ugt i64 1, %"$gasrem_2064"
  br i1 %"$gascmp_2065", label %"$out_of_gas_2066", label %"$have_gas_2067"

"$out_of_gas_2066":                               ; preds = %"$have_gas_2062"
  call void @_out_of_gas()
  br label %"$have_gas_2067"

"$have_gas_2067":                                 ; preds = %"$out_of_gas_2066", %"$have_gas_2062"
  %"$consume_2068" = sub i64 %"$gasrem_2064", 1
  store i64 %"$consume_2068", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2069", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$c1_9" = alloca %TName_Option_String*
  %"$indices_buf_2070_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_2070_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2070_salloc_load", i64 32)
  %"$indices_buf_2070_salloc" = bitcast i8* %"$indices_buf_2070_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2070" = bitcast [32 x i8]* %"$indices_buf_2070_salloc" to i8*
  %"$key1b_2071" = load %String, %String* %key1b
  %"$indices_gep_2072" = getelementptr i8, i8* %"$indices_buf_2070", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_2072" to %String*
  store %String %"$key1b_2071", %String* %indices_cast3
  %"$key2c_2073" = load %String, %String* %key2c
  %"$indices_gep_2074" = getelementptr i8, i8* %"$indices_buf_2070", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_2074" to %String*
  store %String %"$key2c_2073", %String* %indices_cast4
  %"$execptr_load_2075" = load i8*, i8** @_execptr
  %"$$c1_9_2077" = call i8* @_fetch_field(i8* %"$execptr_load_2075", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2076", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_2070", i32 1)
  %"$$c1_9_2078" = bitcast i8* %"$$c1_9_2077" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_2078", %TName_Option_String** %"$c1_9"
  %"$$c1_9_2079" = load %TName_Option_String*, %TName_Option_String** %"$c1_9"
  %"$$$c1_9_2079_2080" = bitcast %TName_Option_String* %"$$c1_9_2079" to i8*
  %"$_literal_cost_call_2081" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$$c1_9_2079_2080")
  %"$gasadd_2082" = add i64 %"$_literal_cost_call_2081", 0
  %"$gasadd_2083" = add i64 %"$gasadd_2082", 2
  %"$gasrem_2084" = load i64, i64* @_gasrem
  %"$gascmp_2085" = icmp ugt i64 %"$gasadd_2083", %"$gasrem_2084"
  br i1 %"$gascmp_2085", label %"$out_of_gas_2086", label %"$have_gas_2087"

"$out_of_gas_2086":                               ; preds = %"$have_gas_2067"
  call void @_out_of_gas()
  br label %"$have_gas_2087"

"$have_gas_2087":                                 ; preds = %"$out_of_gas_2086", %"$have_gas_2067"
  %"$consume_2088" = sub i64 %"$gasrem_2084", %"$gasadd_2083"
  store i64 %"$consume_2088", i64* @_gasrem
  %"$gasrem_2089" = load i64, i64* @_gasrem
  %"$gascmp_2090" = icmp ugt i64 2, %"$gasrem_2089"
  br i1 %"$gascmp_2090", label %"$out_of_gas_2091", label %"$have_gas_2092"

"$out_of_gas_2091":                               ; preds = %"$have_gas_2087"
  call void @_out_of_gas()
  br label %"$have_gas_2092"

"$have_gas_2092":                                 ; preds = %"$out_of_gas_2091", %"$have_gas_2087"
  %"$consume_2093" = sub i64 %"$gasrem_2089", 2
  store i64 %"$consume_2093", i64* @_gasrem
  %"$$c1_9_2095" = load %TName_Option_String*, %TName_Option_String** %"$c1_9"
  %"$$c1_9_tag_2096" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_2095", i32 0, i32 0
  %"$$c1_9_tag_2097" = load i8, i8* %"$$c1_9_tag_2096"
  switch i8 %"$$c1_9_tag_2097", label %"$empty_default_2098" [
    i8 0, label %"$Some_2099"
    i8 1, label %"$None_2156"
  ]

"$Some_2099":                                     ; preds = %"$have_gas_2092"
  %"$$c1_9_2100" = bitcast %TName_Option_String* %"$$c1_9_2095" to %CName_Some_String*
  %"$c_gep_2101" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_2100", i32 0, i32 1
  %"$c_load_2102" = load %String, %String* %"$c_gep_2101"
  %c5 = alloca %String
  store %String %"$c_load_2102", %String* %c5
  %"$gasrem_2103" = load i64, i64* @_gasrem
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$Some_2099"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$Some_2099"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem
  %v6 = alloca %String
  %"$gasrem_2108" = load i64, i64* @_gasrem
  %"$gascmp_2109" = icmp ugt i64 1, %"$gasrem_2108"
  br i1 %"$gascmp_2109", label %"$out_of_gas_2110", label %"$have_gas_2111"

"$out_of_gas_2110":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2111"

"$have_gas_2111":                                 ; preds = %"$out_of_gas_2110", %"$have_gas_2106"
  %"$consume_2112" = sub i64 %"$gasrem_2108", 1
  store i64 %"$consume_2112", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2113", i32 0, i32 0), i32 3 }, %String* %v6
  %"$gasrem_2114" = load i64, i64* @_gasrem
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2111"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2111"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem
  %eq7 = alloca %TName_Bool*
  %"$execptr_load_2119" = load i8*, i8** @_execptr
  %"$c_2120" = load %String, %String* %c5
  %"$v_2121" = load %String, %String* %v6
  %"$eq_call_2122" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2119", %String %"$c_2120", %String %"$v_2121")
  store %TName_Bool* %"$eq_call_2122", %TName_Bool** %eq7
  %"$gasrem_2123" = load i64, i64* @_gasrem
  %"$gascmp_2124" = icmp ugt i64 2, %"$gasrem_2123"
  br i1 %"$gascmp_2124", label %"$out_of_gas_2125", label %"$have_gas_2126"

"$out_of_gas_2125":                               ; preds = %"$have_gas_2117"
  call void @_out_of_gas()
  br label %"$have_gas_2126"

"$have_gas_2126":                                 ; preds = %"$out_of_gas_2125", %"$have_gas_2117"
  %"$consume_2127" = sub i64 %"$gasrem_2123", 2
  store i64 %"$consume_2127", i64* @_gasrem
  %"$eq_2129" = load %TName_Bool*, %TName_Bool** %eq7
  %"$eq_tag_2130" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2129", i32 0, i32 0
  %"$eq_tag_2131" = load i8, i8* %"$eq_tag_2130"
  switch i8 %"$eq_tag_2131", label %"$empty_default_2132" [
    i8 0, label %"$True_2133"
    i8 1, label %"$False_2135"
  ]

"$True_2133":                                     ; preds = %"$have_gas_2126"
  %"$eq_2134" = bitcast %TName_Bool* %"$eq_2129" to %CName_True*
  br label %"$matchsucc_2128"

"$False_2135":                                    ; preds = %"$have_gas_2126"
  %"$eq_2136" = bitcast %TName_Bool* %"$eq_2129" to %CName_False*
  %"$gasrem_2137" = load i64, i64* @_gasrem
  %"$gascmp_2138" = icmp ugt i64 1, %"$gasrem_2137"
  br i1 %"$gascmp_2138", label %"$out_of_gas_2139", label %"$have_gas_2140"

"$out_of_gas_2139":                               ; preds = %"$False_2135"
  call void @_out_of_gas()
  br label %"$have_gas_2140"

"$have_gas_2140":                                 ; preds = %"$out_of_gas_2139", %"$False_2135"
  %"$consume_2141" = sub i64 %"$gasrem_2137", 1
  store i64 %"$consume_2141", i64* @_gasrem
  %m8 = alloca %String
  %"$gasrem_2142" = load i64, i64* @_gasrem
  %"$gascmp_2143" = icmp ugt i64 1, %"$gasrem_2142"
  br i1 %"$gascmp_2143", label %"$out_of_gas_2144", label %"$have_gas_2145"

"$out_of_gas_2144":                               ; preds = %"$have_gas_2140"
  call void @_out_of_gas()
  br label %"$have_gas_2145"

"$have_gas_2145":                                 ; preds = %"$out_of_gas_2144", %"$have_gas_2140"
  %"$consume_2146" = sub i64 %"$gasrem_2142", 1
  store i64 %"$consume_2146", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2147", i32 0, i32 0), i32 31 }, %String* %m8
  %"$gasrem_2148" = load i64, i64* @_gasrem
  %"$gascmp_2149" = icmp ugt i64 1, %"$gasrem_2148"
  br i1 %"$gascmp_2149", label %"$out_of_gas_2150", label %"$have_gas_2151"

"$out_of_gas_2150":                               ; preds = %"$have_gas_2145"
  call void @_out_of_gas()
  br label %"$have_gas_2151"

"$have_gas_2151":                                 ; preds = %"$out_of_gas_2150", %"$have_gas_2145"
  %"$consume_2152" = sub i64 %"$gasrem_2148", 1
  store i64 %"$consume_2152", i64* @_gasrem
  %"$fail_msg__sender_2153" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2153"
  %"$tname_2154" = load %String, %String* %tname
  %"$m_2155" = load %String, %String* %m8
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2153", %String %"$tname_2154", %String %"$m_2155")
  br label %"$matchsucc_2128"

"$empty_default_2132":                            ; preds = %"$have_gas_2126"
  br label %"$matchsucc_2128"

"$matchsucc_2128":                                ; preds = %"$have_gas_2151", %"$True_2133", %"$empty_default_2132"
  br label %"$matchsucc_2094"

"$None_2156":                                     ; preds = %"$have_gas_2092"
  %"$$c1_9_2157" = bitcast %TName_Option_String* %"$$c1_9_2095" to %CName_None_String*
  %"$gasrem_2158" = load i64, i64* @_gasrem
  %"$gascmp_2159" = icmp ugt i64 1, %"$gasrem_2158"
  br i1 %"$gascmp_2159", label %"$out_of_gas_2160", label %"$have_gas_2161"

"$out_of_gas_2160":                               ; preds = %"$None_2156"
  call void @_out_of_gas()
  br label %"$have_gas_2161"

"$have_gas_2161":                                 ; preds = %"$out_of_gas_2160", %"$None_2156"
  %"$consume_2162" = sub i64 %"$gasrem_2158", 1
  store i64 %"$consume_2162", i64* @_gasrem
  %m9 = alloca %String
  %"$gasrem_2163" = load i64, i64* @_gasrem
  %"$gascmp_2164" = icmp ugt i64 1, %"$gasrem_2163"
  br i1 %"$gascmp_2164", label %"$out_of_gas_2165", label %"$have_gas_2166"

"$out_of_gas_2165":                               ; preds = %"$have_gas_2161"
  call void @_out_of_gas()
  br label %"$have_gas_2166"

"$have_gas_2166":                                 ; preds = %"$out_of_gas_2165", %"$have_gas_2161"
  %"$consume_2167" = sub i64 %"$gasrem_2163", 1
  store i64 %"$consume_2167", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2168", i32 0, i32 0), i32 21 }, %String* %m9
  %"$gasrem_2169" = load i64, i64* @_gasrem
  %"$gascmp_2170" = icmp ugt i64 1, %"$gasrem_2169"
  br i1 %"$gascmp_2170", label %"$out_of_gas_2171", label %"$have_gas_2172"

"$out_of_gas_2171":                               ; preds = %"$have_gas_2166"
  call void @_out_of_gas()
  br label %"$have_gas_2172"

"$have_gas_2172":                                 ; preds = %"$out_of_gas_2171", %"$have_gas_2166"
  %"$consume_2173" = sub i64 %"$gasrem_2169", 1
  store i64 %"$consume_2173", i64* @_gasrem
  %"$fail_msg__sender_2174" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2174"
  %"$tname_2175" = load %String, %String* %tname
  %"$m_2176" = load %String, %String* %m9
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2174", %String %"$tname_2175", %String %"$m_2176")
  br label %"$matchsucc_2094"

"$empty_default_2098":                            ; preds = %"$have_gas_2092"
  br label %"$matchsucc_2094"

"$matchsucc_2094":                                ; preds = %"$have_gas_2172", %"$matchsucc_2128", %"$empty_default_2098"
  %"$gasrem_2177" = load i64, i64* @_gasrem
  %"$gascmp_2178" = icmp ugt i64 1, %"$gasrem_2177"
  br i1 %"$gascmp_2178", label %"$out_of_gas_2179", label %"$have_gas_2180"

"$out_of_gas_2179":                               ; preds = %"$matchsucc_2094"
  call void @_out_of_gas()
  br label %"$have_gas_2180"

"$have_gas_2180":                                 ; preds = %"$out_of_gas_2179", %"$matchsucc_2094"
  %"$consume_2181" = sub i64 %"$gasrem_2177", 1
  store i64 %"$consume_2181", i64* @_gasrem
  %em = alloca %Map_String_String*
  %"$gasrem_2182" = load i64, i64* @_gasrem
  %"$gascmp_2183" = icmp ugt i64 1, %"$gasrem_2182"
  br i1 %"$gascmp_2183", label %"$out_of_gas_2184", label %"$have_gas_2185"

"$out_of_gas_2184":                               ; preds = %"$have_gas_2180"
  call void @_out_of_gas()
  br label %"$have_gas_2185"

"$have_gas_2185":                                 ; preds = %"$out_of_gas_2184", %"$have_gas_2180"
  %"$consume_2186" = sub i64 %"$gasrem_2182", 1
  store i64 %"$consume_2186", i64* @_gasrem
  %"$execptr_load_2187" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2188" = call i8* @_new_empty_map(i8* %"$execptr_load_2187")
  %"$Emp_2189" = bitcast i8* %"$_new_empty_map_call_2188" to %Map_String_String*
  store %Map_String_String* %"$Emp_2189", %Map_String_String** %em
  %"$em_2190" = load %Map_String_String*, %Map_String_String** %em
  %"$$em_2190_2191" = bitcast %Map_String_String* %"$em_2190" to i8*
  %"$_literal_cost_call_2192" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$em_2190_2191")
  %"$gasrem_2193" = load i64, i64* @_gasrem
  %"$gascmp_2194" = icmp ugt i64 %"$_literal_cost_call_2192", %"$gasrem_2193"
  br i1 %"$gascmp_2194", label %"$out_of_gas_2195", label %"$have_gas_2196"

"$out_of_gas_2195":                               ; preds = %"$have_gas_2185"
  call void @_out_of_gas()
  br label %"$have_gas_2196"

"$have_gas_2196":                                 ; preds = %"$out_of_gas_2195", %"$have_gas_2185"
  %"$consume_2197" = sub i64 %"$gasrem_2193", %"$_literal_cost_call_2192"
  store i64 %"$consume_2197", i64* @_gasrem
  %"$execptr_load_2198" = load i8*, i8** @_execptr
  %"$em_2200" = load %Map_String_String*, %Map_String_String** %em
  %"$update_value_2201" = bitcast %Map_String_String* %"$em_2200" to i8*
  call void @_update_field(i8* %"$execptr_load_2198", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2199", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_2201")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_2203" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2204" = bitcast i8* %"$_amount_2203" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2204"
  %"$_sender_2205" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2206" = bitcast i8* %"$_sender_2205" to [20 x i8]*
  call void @"$t8_1906"(%Uint128 %_amount, [20 x i8]* %"$_sender_2206")
  ret void
}

define internal void @"$t9_2207"(%Uint128 %_amount, [20 x i8]* %"$_sender_2208") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2208"
  %"$gasrem_2209" = load i64, i64* @_gasrem
  %"$gascmp_2210" = icmp ugt i64 1, %"$gasrem_2209"
  br i1 %"$gascmp_2210", label %"$out_of_gas_2211", label %"$have_gas_2212"

"$out_of_gas_2211":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2212"

"$have_gas_2212":                                 ; preds = %"$out_of_gas_2211", %entry
  %"$consume_2213" = sub i64 %"$gasrem_2209", 1
  store i64 %"$consume_2213", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_2214" = load i64, i64* @_gasrem
  %"$gascmp_2215" = icmp ugt i64 1, %"$gasrem_2214"
  br i1 %"$gascmp_2215", label %"$out_of_gas_2216", label %"$have_gas_2217"

"$out_of_gas_2216":                               ; preds = %"$have_gas_2212"
  call void @_out_of_gas()
  br label %"$have_gas_2217"

"$have_gas_2217":                                 ; preds = %"$out_of_gas_2216", %"$have_gas_2212"
  %"$consume_2218" = sub i64 %"$gasrem_2214", 1
  store i64 %"$consume_2218", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2219", i32 0, i32 0), i32 2 }, %String* %tname
  %m1 = alloca %Map_String_String*
  %"$execptr_load_2220" = load i8*, i8** @_execptr
  %"$m1_2222" = call i8* @_fetch_field(i8* %"$execptr_load_2220", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2221", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i32 1)
  %"$m1_2223" = bitcast i8* %"$m1_2222" to %Map_String_String*
  store %Map_String_String* %"$m1_2223", %Map_String_String** %m1
  %"$m1_2224" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2224_2225" = bitcast %Map_String_String* %"$m1_2224" to i8*
  %"$_literal_cost_call_2226" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_2224_2225")
  %"$m1_2227" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2227_2228" = bitcast %Map_String_String* %"$m1_2227" to i8*
  %"$_mapsortcost_call_2229" = call i64 @_mapsortcost(i8* %"$$m1_2227_2228")
  %"$gasadd_2230" = add i64 %"$_literal_cost_call_2226", %"$_mapsortcost_call_2229"
  %"$gasrem_2231" = load i64, i64* @_gasrem
  %"$gascmp_2232" = icmp ugt i64 %"$gasadd_2230", %"$gasrem_2231"
  br i1 %"$gascmp_2232", label %"$out_of_gas_2233", label %"$have_gas_2234"

"$out_of_gas_2233":                               ; preds = %"$have_gas_2217"
  call void @_out_of_gas()
  br label %"$have_gas_2234"

"$have_gas_2234":                                 ; preds = %"$out_of_gas_2233", %"$have_gas_2217"
  %"$consume_2235" = sub i64 %"$gasrem_2231", %"$gasadd_2230"
  store i64 %"$consume_2235", i64* @_gasrem
  %"$gasrem_2236" = load i64, i64* @_gasrem
  %"$gascmp_2237" = icmp ugt i64 1, %"$gasrem_2236"
  br i1 %"$gascmp_2237", label %"$out_of_gas_2238", label %"$have_gas_2239"

"$out_of_gas_2238":                               ; preds = %"$have_gas_2234"
  call void @_out_of_gas()
  br label %"$have_gas_2239"

"$have_gas_2239":                                 ; preds = %"$out_of_gas_2238", %"$have_gas_2234"
  %"$consume_2240" = sub i64 %"$gasrem_2236", 1
  store i64 %"$consume_2240", i64* @_gasrem
  %m1_size = alloca %Uint32
  %"$m1_2241" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2241_2242" = bitcast %Map_String_String* %"$m1_2241" to i8*
  %"$size_call_2243" = call %Uint32 @_size(i8* %"$$m1_2241_2242")
  store %Uint32 %"$size_call_2243", %Uint32* %m1_size
  %"$gasrem_2244" = load i64, i64* @_gasrem
  %"$gascmp_2245" = icmp ugt i64 1, %"$gasrem_2244"
  br i1 %"$gascmp_2245", label %"$out_of_gas_2246", label %"$have_gas_2247"

"$out_of_gas_2246":                               ; preds = %"$have_gas_2239"
  call void @_out_of_gas()
  br label %"$have_gas_2247"

"$have_gas_2247":                                 ; preds = %"$out_of_gas_2246", %"$have_gas_2239"
  %"$consume_2248" = sub i64 %"$gasrem_2244", 1
  store i64 %"$consume_2248", i64* @_gasrem
  %zero = alloca %Uint32
  %"$gasrem_2249" = load i64, i64* @_gasrem
  %"$gascmp_2250" = icmp ugt i64 1, %"$gasrem_2249"
  br i1 %"$gascmp_2250", label %"$out_of_gas_2251", label %"$have_gas_2252"

"$out_of_gas_2251":                               ; preds = %"$have_gas_2247"
  call void @_out_of_gas()
  br label %"$have_gas_2252"

"$have_gas_2252":                                 ; preds = %"$out_of_gas_2251", %"$have_gas_2247"
  %"$consume_2253" = sub i64 %"$gasrem_2249", 1
  store i64 %"$consume_2253", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %zero
  %"$gasrem_2254" = load i64, i64* @_gasrem
  %"$gascmp_2255" = icmp ugt i64 1, %"$gasrem_2254"
  br i1 %"$gascmp_2255", label %"$out_of_gas_2256", label %"$have_gas_2257"

"$out_of_gas_2256":                               ; preds = %"$have_gas_2252"
  call void @_out_of_gas()
  br label %"$have_gas_2257"

"$have_gas_2257":                                 ; preds = %"$out_of_gas_2256", %"$have_gas_2252"
  %"$consume_2258" = sub i64 %"$gasrem_2254", 1
  store i64 %"$consume_2258", i64* @_gasrem
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_2259" = load i8*, i8** @_execptr
  %"$m1_size_2260" = load %Uint32, %Uint32* %m1_size
  %"$zero_2261" = load %Uint32, %Uint32* %zero
  %"$eq_call_2262" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2259", %Uint32 %"$m1_size_2260", %Uint32 %"$zero_2261")
  store %TName_Bool* %"$eq_call_2262", %TName_Bool** %is_empty
  %"$gasrem_2263" = load i64, i64* @_gasrem
  %"$gascmp_2264" = icmp ugt i64 2, %"$gasrem_2263"
  br i1 %"$gascmp_2264", label %"$out_of_gas_2265", label %"$have_gas_2266"

"$out_of_gas_2265":                               ; preds = %"$have_gas_2257"
  call void @_out_of_gas()
  br label %"$have_gas_2266"

"$have_gas_2266":                                 ; preds = %"$out_of_gas_2265", %"$have_gas_2257"
  %"$consume_2267" = sub i64 %"$gasrem_2263", 2
  store i64 %"$consume_2267", i64* @_gasrem
  %"$is_empty_2269" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_2270" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2269", i32 0, i32 0
  %"$is_empty_tag_2271" = load i8, i8* %"$is_empty_tag_2270"
  switch i8 %"$is_empty_tag_2271", label %"$empty_default_2272" [
    i8 0, label %"$True_2273"
    i8 1, label %"$False_2275"
  ]

"$True_2273":                                     ; preds = %"$have_gas_2266"
  %"$is_empty_2274" = bitcast %TName_Bool* %"$is_empty_2269" to %CName_True*
  br label %"$matchsucc_2268"

"$False_2275":                                    ; preds = %"$have_gas_2266"
  %"$is_empty_2276" = bitcast %TName_Bool* %"$is_empty_2269" to %CName_False*
  %"$gasrem_2277" = load i64, i64* @_gasrem
  %"$gascmp_2278" = icmp ugt i64 1, %"$gasrem_2277"
  br i1 %"$gascmp_2278", label %"$out_of_gas_2279", label %"$have_gas_2280"

"$out_of_gas_2279":                               ; preds = %"$False_2275"
  call void @_out_of_gas()
  br label %"$have_gas_2280"

"$have_gas_2280":                                 ; preds = %"$out_of_gas_2279", %"$False_2275"
  %"$consume_2281" = sub i64 %"$gasrem_2277", 1
  store i64 %"$consume_2281", i64* @_gasrem
  %"$fail__sender_2282" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2282"
  %"$tname_2283" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_2282", %String %"$tname_2283")
  br label %"$matchsucc_2268"

"$empty_default_2272":                            ; preds = %"$have_gas_2266"
  br label %"$matchsucc_2268"

"$matchsucc_2268":                                ; preds = %"$have_gas_2280", %"$True_2273", %"$empty_default_2272"
  %"$gasrem_2284" = load i64, i64* @_gasrem
  %"$gascmp_2285" = icmp ugt i64 1, %"$gasrem_2284"
  br i1 %"$gascmp_2285", label %"$out_of_gas_2286", label %"$have_gas_2287"

"$out_of_gas_2286":                               ; preds = %"$matchsucc_2268"
  call void @_out_of_gas()
  br label %"$have_gas_2287"

"$have_gas_2287":                                 ; preds = %"$out_of_gas_2286", %"$matchsucc_2268"
  %"$consume_2288" = sub i64 %"$gasrem_2284", 1
  store i64 %"$consume_2288", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_2289" = load i64, i64* @_gasrem
  %"$gascmp_2290" = icmp ugt i64 1, %"$gasrem_2289"
  br i1 %"$gascmp_2290", label %"$out_of_gas_2291", label %"$have_gas_2292"

"$out_of_gas_2291":                               ; preds = %"$have_gas_2287"
  call void @_out_of_gas()
  br label %"$have_gas_2292"

"$have_gas_2292":                                 ; preds = %"$out_of_gas_2291", %"$have_gas_2287"
  %"$consume_2293" = sub i64 %"$gasrem_2289", 1
  store i64 %"$consume_2293", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2294", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_2295" = load i64, i64* @_gasrem
  %"$gascmp_2296" = icmp ugt i64 1, %"$gasrem_2295"
  br i1 %"$gascmp_2296", label %"$out_of_gas_2297", label %"$have_gas_2298"

"$out_of_gas_2297":                               ; preds = %"$have_gas_2292"
  call void @_out_of_gas()
  br label %"$have_gas_2298"

"$have_gas_2298":                                 ; preds = %"$out_of_gas_2297", %"$have_gas_2292"
  %"$consume_2299" = sub i64 %"$gasrem_2295", 1
  store i64 %"$consume_2299", i64* @_gasrem
  %val = alloca %String
  %"$gasrem_2300" = load i64, i64* @_gasrem
  %"$gascmp_2301" = icmp ugt i64 1, %"$gasrem_2300"
  br i1 %"$gascmp_2301", label %"$out_of_gas_2302", label %"$have_gas_2303"

"$out_of_gas_2302":                               ; preds = %"$have_gas_2298"
  call void @_out_of_gas()
  br label %"$have_gas_2303"

"$have_gas_2303":                                 ; preds = %"$out_of_gas_2302", %"$have_gas_2298"
  %"$consume_2304" = sub i64 %"$gasrem_2300", 1
  store i64 %"$consume_2304", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2305", i32 0, i32 0), i32 3 }, %String* %val
  %"$gasrem_2306" = load i64, i64* @_gasrem
  %"$gascmp_2307" = icmp ugt i64 1, %"$gasrem_2306"
  br i1 %"$gascmp_2307", label %"$out_of_gas_2308", label %"$have_gas_2309"

"$out_of_gas_2308":                               ; preds = %"$have_gas_2303"
  call void @_out_of_gas()
  br label %"$have_gas_2309"

"$have_gas_2309":                                 ; preds = %"$out_of_gas_2308", %"$have_gas_2303"
  %"$consume_2310" = sub i64 %"$gasrem_2306", 1
  store i64 %"$consume_2310", i64* @_gasrem
  %"$m1_10" = alloca %Map_String_String*
  %"$execptr_load_2311" = load i8*, i8** @_execptr
  %"$m1_2312" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2312_2313" = bitcast %Map_String_String* %"$m1_2312" to i8*
  %"$put_key1a_2314" = alloca %String
  %"$key1a_2315" = load %String, %String* %key1a
  store %String %"$key1a_2315", %String* %"$put_key1a_2314"
  %"$$put_key1a_2314_2316" = bitcast %String* %"$put_key1a_2314" to i8*
  %"$put_val_2317" = alloca %String
  %"$val_2318" = load %String, %String* %val
  store %String %"$val_2318", %String* %"$put_val_2317"
  %"$$put_val_2317_2319" = bitcast %String* %"$put_val_2317" to i8*
  %"$put_call_2320" = call i8* @_put(i8* %"$execptr_load_2311", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_2312_2313", i8* %"$$put_key1a_2314_2316", i8* %"$$put_val_2317_2319")
  %"$_put_2321" = bitcast i8* %"$put_call_2320" to %Map_String_String*
  store %Map_String_String* %"$_put_2321", %Map_String_String** %"$m1_10"
  %"$$m1_10_2322" = load %Map_String_String*, %Map_String_String** %"$m1_10"
  %"$$$m1_10_2322_2323" = bitcast %Map_String_String* %"$$m1_10_2322" to i8*
  %"$_literal_cost_call_2324" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$$m1_10_2322_2323")
  %"$gasrem_2325" = load i64, i64* @_gasrem
  %"$gascmp_2326" = icmp ugt i64 %"$_literal_cost_call_2324", %"$gasrem_2325"
  br i1 %"$gascmp_2326", label %"$out_of_gas_2327", label %"$have_gas_2328"

"$out_of_gas_2327":                               ; preds = %"$have_gas_2309"
  call void @_out_of_gas()
  br label %"$have_gas_2328"

"$have_gas_2328":                                 ; preds = %"$out_of_gas_2327", %"$have_gas_2309"
  %"$consume_2329" = sub i64 %"$gasrem_2325", %"$_literal_cost_call_2324"
  store i64 %"$consume_2329", i64* @_gasrem
  %"$execptr_load_2330" = load i8*, i8** @_execptr
  %"$$m1_10_2332" = load %Map_String_String*, %Map_String_String** %"$m1_10"
  %"$update_value_2333" = bitcast %Map_String_String* %"$$m1_10_2332" to i8*
  call void @_update_field(i8* %"$execptr_load_2330", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2331", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_2333")
  ret void
}

declare i64 @_mapsortcost(i8*)

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_2335" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2336" = bitcast i8* %"$_amount_2335" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2336"
  %"$_sender_2337" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2338" = bitcast i8* %"$_sender_2337" to [20 x i8]*
  call void @"$t9_2207"(%Uint128 %_amount, [20 x i8]* %"$_sender_2338")
  ret void
}

define internal void @"$t10_2339"(%Uint128 %_amount, [20 x i8]* %"$_sender_2340") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2340"
  %"$gasrem_2341" = load i64, i64* @_gasrem
  %"$gascmp_2342" = icmp ugt i64 1, %"$gasrem_2341"
  br i1 %"$gascmp_2342", label %"$out_of_gas_2343", label %"$have_gas_2344"

"$out_of_gas_2343":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2344"

"$have_gas_2344":                                 ; preds = %"$out_of_gas_2343", %entry
  %"$consume_2345" = sub i64 %"$gasrem_2341", 1
  store i64 %"$consume_2345", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_2346" = load i64, i64* @_gasrem
  %"$gascmp_2347" = icmp ugt i64 1, %"$gasrem_2346"
  br i1 %"$gascmp_2347", label %"$out_of_gas_2348", label %"$have_gas_2349"

"$out_of_gas_2348":                               ; preds = %"$have_gas_2344"
  call void @_out_of_gas()
  br label %"$have_gas_2349"

"$have_gas_2349":                                 ; preds = %"$out_of_gas_2348", %"$have_gas_2344"
  %"$consume_2350" = sub i64 %"$gasrem_2346", 1
  store i64 %"$consume_2350", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2351", i32 0, i32 0), i32 3 }, %String* %tname
  %"$gasrem_2352" = load i64, i64* @_gasrem
  %"$gascmp_2353" = icmp ugt i64 1, %"$gasrem_2352"
  br i1 %"$gascmp_2353", label %"$out_of_gas_2354", label %"$have_gas_2355"

"$out_of_gas_2354":                               ; preds = %"$have_gas_2349"
  call void @_out_of_gas()
  br label %"$have_gas_2355"

"$have_gas_2355":                                 ; preds = %"$out_of_gas_2354", %"$have_gas_2349"
  %"$consume_2356" = sub i64 %"$gasrem_2352", 1
  store i64 %"$consume_2356", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_2357" = load i64, i64* @_gasrem
  %"$gascmp_2358" = icmp ugt i64 1, %"$gasrem_2357"
  br i1 %"$gascmp_2358", label %"$out_of_gas_2359", label %"$have_gas_2360"

"$out_of_gas_2359":                               ; preds = %"$have_gas_2355"
  call void @_out_of_gas()
  br label %"$have_gas_2360"

"$have_gas_2360":                                 ; preds = %"$out_of_gas_2359", %"$have_gas_2355"
  %"$consume_2361" = sub i64 %"$gasrem_2357", 1
  store i64 %"$consume_2361", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2362", i32 0, i32 0), i32 5 }, %String* %key1a
  %m1 = alloca %Map_String_String*
  %"$execptr_load_2363" = load i8*, i8** @_execptr
  %"$m1_2365" = call i8* @_fetch_field(i8* %"$execptr_load_2363", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2364", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i32 1)
  %"$m1_2366" = bitcast i8* %"$m1_2365" to %Map_String_String*
  store %Map_String_String* %"$m1_2366", %Map_String_String** %m1
  %"$m1_2367" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2367_2368" = bitcast %Map_String_String* %"$m1_2367" to i8*
  %"$_literal_cost_call_2369" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_2367_2368")
  %"$m1_2370" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2370_2371" = bitcast %Map_String_String* %"$m1_2370" to i8*
  %"$_mapsortcost_call_2372" = call i64 @_mapsortcost(i8* %"$$m1_2370_2371")
  %"$gasadd_2373" = add i64 %"$_literal_cost_call_2369", %"$_mapsortcost_call_2372"
  %"$gasrem_2374" = load i64, i64* @_gasrem
  %"$gascmp_2375" = icmp ugt i64 %"$gasadd_2373", %"$gasrem_2374"
  br i1 %"$gascmp_2375", label %"$out_of_gas_2376", label %"$have_gas_2377"

"$out_of_gas_2376":                               ; preds = %"$have_gas_2360"
  call void @_out_of_gas()
  br label %"$have_gas_2377"

"$have_gas_2377":                                 ; preds = %"$out_of_gas_2376", %"$have_gas_2360"
  %"$consume_2378" = sub i64 %"$gasrem_2374", %"$gasadd_2373"
  store i64 %"$consume_2378", i64* @_gasrem
  %"$gasrem_2379" = load i64, i64* @_gasrem
  %"$gascmp_2380" = icmp ugt i64 1, %"$gasrem_2379"
  br i1 %"$gascmp_2380", label %"$out_of_gas_2381", label %"$have_gas_2382"

"$out_of_gas_2381":                               ; preds = %"$have_gas_2377"
  call void @_out_of_gas()
  br label %"$have_gas_2382"

"$have_gas_2382":                                 ; preds = %"$out_of_gas_2381", %"$have_gas_2377"
  %"$consume_2383" = sub i64 %"$gasrem_2379", 1
  store i64 %"$consume_2383", i64* @_gasrem
  %c1 = alloca %TName_Option_String*
  %"$execptr_load_2384" = load i8*, i8** @_execptr
  %"$m1_2385" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2385_2386" = bitcast %Map_String_String* %"$m1_2385" to i8*
  %"$get_key1a_2387" = alloca %String
  %"$key1a_2388" = load %String, %String* %key1a
  store %String %"$key1a_2388", %String* %"$get_key1a_2387"
  %"$$get_key1a_2387_2389" = bitcast %String* %"$get_key1a_2387" to i8*
  %"$get_call_2390" = call i8* @_get(i8* %"$execptr_load_2384", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_2385_2386", i8* %"$$get_key1a_2387_2389")
  %"$_get_2391" = bitcast i8* %"$get_call_2390" to %TName_Option_String*
  store %TName_Option_String* %"$_get_2391", %TName_Option_String** %c1
  %"$gasrem_2392" = load i64, i64* @_gasrem
  %"$gascmp_2393" = icmp ugt i64 2, %"$gasrem_2392"
  br i1 %"$gascmp_2393", label %"$out_of_gas_2394", label %"$have_gas_2395"

"$out_of_gas_2394":                               ; preds = %"$have_gas_2382"
  call void @_out_of_gas()
  br label %"$have_gas_2395"

"$have_gas_2395":                                 ; preds = %"$out_of_gas_2394", %"$have_gas_2382"
  %"$consume_2396" = sub i64 %"$gasrem_2392", 2
  store i64 %"$consume_2396", i64* @_gasrem
  %"$c1_2398" = load %TName_Option_String*, %TName_Option_String** %c1
  %"$c1_tag_2399" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2398", i32 0, i32 0
  %"$c1_tag_2400" = load i8, i8* %"$c1_tag_2399"
  switch i8 %"$c1_tag_2400", label %"$empty_default_2401" [
    i8 0, label %"$Some_2402"
    i8 1, label %"$None_2459"
  ]

"$Some_2402":                                     ; preds = %"$have_gas_2395"
  %"$c1_2403" = bitcast %TName_Option_String* %"$c1_2398" to %CName_Some_String*
  %"$c_gep_2404" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2403", i32 0, i32 1
  %"$c_load_2405" = load %String, %String* %"$c_gep_2404"
  %c = alloca %String
  store %String %"$c_load_2405", %String* %c
  %"$gasrem_2406" = load i64, i64* @_gasrem
  %"$gascmp_2407" = icmp ugt i64 1, %"$gasrem_2406"
  br i1 %"$gascmp_2407", label %"$out_of_gas_2408", label %"$have_gas_2409"

"$out_of_gas_2408":                               ; preds = %"$Some_2402"
  call void @_out_of_gas()
  br label %"$have_gas_2409"

"$have_gas_2409":                                 ; preds = %"$out_of_gas_2408", %"$Some_2402"
  %"$consume_2410" = sub i64 %"$gasrem_2406", 1
  store i64 %"$consume_2410", i64* @_gasrem
  %v = alloca %String
  %"$gasrem_2411" = load i64, i64* @_gasrem
  %"$gascmp_2412" = icmp ugt i64 1, %"$gasrem_2411"
  br i1 %"$gascmp_2412", label %"$out_of_gas_2413", label %"$have_gas_2414"

"$out_of_gas_2413":                               ; preds = %"$have_gas_2409"
  call void @_out_of_gas()
  br label %"$have_gas_2414"

"$have_gas_2414":                                 ; preds = %"$out_of_gas_2413", %"$have_gas_2409"
  %"$consume_2415" = sub i64 %"$gasrem_2411", 1
  store i64 %"$consume_2415", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2416", i32 0, i32 0), i32 3 }, %String* %v
  %"$gasrem_2417" = load i64, i64* @_gasrem
  %"$gascmp_2418" = icmp ugt i64 1, %"$gasrem_2417"
  br i1 %"$gascmp_2418", label %"$out_of_gas_2419", label %"$have_gas_2420"

"$out_of_gas_2419":                               ; preds = %"$have_gas_2414"
  call void @_out_of_gas()
  br label %"$have_gas_2420"

"$have_gas_2420":                                 ; preds = %"$out_of_gas_2419", %"$have_gas_2414"
  %"$consume_2421" = sub i64 %"$gasrem_2417", 1
  store i64 %"$consume_2421", i64* @_gasrem
  %eq = alloca %TName_Bool*
  %"$execptr_load_2422" = load i8*, i8** @_execptr
  %"$c_2423" = load %String, %String* %c
  %"$v_2424" = load %String, %String* %v
  %"$eq_call_2425" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2422", %String %"$c_2423", %String %"$v_2424")
  store %TName_Bool* %"$eq_call_2425", %TName_Bool** %eq
  %"$gasrem_2426" = load i64, i64* @_gasrem
  %"$gascmp_2427" = icmp ugt i64 2, %"$gasrem_2426"
  br i1 %"$gascmp_2427", label %"$out_of_gas_2428", label %"$have_gas_2429"

"$out_of_gas_2428":                               ; preds = %"$have_gas_2420"
  call void @_out_of_gas()
  br label %"$have_gas_2429"

"$have_gas_2429":                                 ; preds = %"$out_of_gas_2428", %"$have_gas_2420"
  %"$consume_2430" = sub i64 %"$gasrem_2426", 2
  store i64 %"$consume_2430", i64* @_gasrem
  %"$eq_2432" = load %TName_Bool*, %TName_Bool** %eq
  %"$eq_tag_2433" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2432", i32 0, i32 0
  %"$eq_tag_2434" = load i8, i8* %"$eq_tag_2433"
  switch i8 %"$eq_tag_2434", label %"$empty_default_2435" [
    i8 0, label %"$True_2436"
    i8 1, label %"$False_2438"
  ]

"$True_2436":                                     ; preds = %"$have_gas_2429"
  %"$eq_2437" = bitcast %TName_Bool* %"$eq_2432" to %CName_True*
  br label %"$matchsucc_2431"

"$False_2438":                                    ; preds = %"$have_gas_2429"
  %"$eq_2439" = bitcast %TName_Bool* %"$eq_2432" to %CName_False*
  %"$gasrem_2440" = load i64, i64* @_gasrem
  %"$gascmp_2441" = icmp ugt i64 1, %"$gasrem_2440"
  br i1 %"$gascmp_2441", label %"$out_of_gas_2442", label %"$have_gas_2443"

"$out_of_gas_2442":                               ; preds = %"$False_2438"
  call void @_out_of_gas()
  br label %"$have_gas_2443"

"$have_gas_2443":                                 ; preds = %"$out_of_gas_2442", %"$False_2438"
  %"$consume_2444" = sub i64 %"$gasrem_2440", 1
  store i64 %"$consume_2444", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_2445" = load i64, i64* @_gasrem
  %"$gascmp_2446" = icmp ugt i64 1, %"$gasrem_2445"
  br i1 %"$gascmp_2446", label %"$out_of_gas_2447", label %"$have_gas_2448"

"$out_of_gas_2447":                               ; preds = %"$have_gas_2443"
  call void @_out_of_gas()
  br label %"$have_gas_2448"

"$have_gas_2448":                                 ; preds = %"$out_of_gas_2447", %"$have_gas_2443"
  %"$consume_2449" = sub i64 %"$gasrem_2445", 1
  store i64 %"$consume_2449", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_2450", i32 0, i32 0), i32 25 }, %String* %m
  %"$gasrem_2451" = load i64, i64* @_gasrem
  %"$gascmp_2452" = icmp ugt i64 1, %"$gasrem_2451"
  br i1 %"$gascmp_2452", label %"$out_of_gas_2453", label %"$have_gas_2454"

"$out_of_gas_2453":                               ; preds = %"$have_gas_2448"
  call void @_out_of_gas()
  br label %"$have_gas_2454"

"$have_gas_2454":                                 ; preds = %"$out_of_gas_2453", %"$have_gas_2448"
  %"$consume_2455" = sub i64 %"$gasrem_2451", 1
  store i64 %"$consume_2455", i64* @_gasrem
  %"$fail_msg__sender_2456" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2456"
  %"$tname_2457" = load %String, %String* %tname
  %"$m_2458" = load %String, %String* %m
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2456", %String %"$tname_2457", %String %"$m_2458")
  br label %"$matchsucc_2431"

"$empty_default_2435":                            ; preds = %"$have_gas_2429"
  br label %"$matchsucc_2431"

"$matchsucc_2431":                                ; preds = %"$have_gas_2454", %"$True_2436", %"$empty_default_2435"
  br label %"$matchsucc_2397"

"$None_2459":                                     ; preds = %"$have_gas_2395"
  %"$c1_2460" = bitcast %TName_Option_String* %"$c1_2398" to %CName_None_String*
  %"$gasrem_2461" = load i64, i64* @_gasrem
  %"$gascmp_2462" = icmp ugt i64 1, %"$gasrem_2461"
  br i1 %"$gascmp_2462", label %"$out_of_gas_2463", label %"$have_gas_2464"

"$out_of_gas_2463":                               ; preds = %"$None_2459"
  call void @_out_of_gas()
  br label %"$have_gas_2464"

"$have_gas_2464":                                 ; preds = %"$out_of_gas_2463", %"$None_2459"
  %"$consume_2465" = sub i64 %"$gasrem_2461", 1
  store i64 %"$consume_2465", i64* @_gasrem
  %m2 = alloca %String
  %"$gasrem_2466" = load i64, i64* @_gasrem
  %"$gascmp_2467" = icmp ugt i64 1, %"$gasrem_2466"
  br i1 %"$gascmp_2467", label %"$out_of_gas_2468", label %"$have_gas_2469"

"$out_of_gas_2468":                               ; preds = %"$have_gas_2464"
  call void @_out_of_gas()
  br label %"$have_gas_2469"

"$have_gas_2469":                                 ; preds = %"$out_of_gas_2468", %"$have_gas_2464"
  %"$consume_2470" = sub i64 %"$gasrem_2466", 1
  store i64 %"$consume_2470", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_2471", i32 0, i32 0), i32 15 }, %String* %m2
  %"$gasrem_2472" = load i64, i64* @_gasrem
  %"$gascmp_2473" = icmp ugt i64 1, %"$gasrem_2472"
  br i1 %"$gascmp_2473", label %"$out_of_gas_2474", label %"$have_gas_2475"

"$out_of_gas_2474":                               ; preds = %"$have_gas_2469"
  call void @_out_of_gas()
  br label %"$have_gas_2475"

"$have_gas_2475":                                 ; preds = %"$out_of_gas_2474", %"$have_gas_2469"
  %"$consume_2476" = sub i64 %"$gasrem_2472", 1
  store i64 %"$consume_2476", i64* @_gasrem
  %"$fail_msg__sender_2477" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2477"
  %"$tname_2478" = load %String, %String* %tname
  %"$m_2479" = load %String, %String* %m2
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2477", %String %"$tname_2478", %String %"$m_2479")
  br label %"$matchsucc_2397"

"$empty_default_2401":                            ; preds = %"$have_gas_2395"
  br label %"$matchsucc_2397"

"$matchsucc_2397":                                ; preds = %"$have_gas_2475", %"$matchsucc_2431", %"$empty_default_2401"
  %"$gasrem_2480" = load i64, i64* @_gasrem
  %"$gascmp_2481" = icmp ugt i64 1, %"$gasrem_2480"
  br i1 %"$gascmp_2481", label %"$out_of_gas_2482", label %"$have_gas_2483"

"$out_of_gas_2482":                               ; preds = %"$matchsucc_2397"
  call void @_out_of_gas()
  br label %"$have_gas_2483"

"$have_gas_2483":                                 ; preds = %"$out_of_gas_2482", %"$matchsucc_2397"
  %"$consume_2484" = sub i64 %"$gasrem_2480", 1
  store i64 %"$consume_2484", i64* @_gasrem
  %"$indices_buf_2485_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_2485_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2485_salloc_load", i64 16)
  %"$indices_buf_2485_salloc" = bitcast i8* %"$indices_buf_2485_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2485" = bitcast [16 x i8]* %"$indices_buf_2485_salloc" to i8*
  %"$key1a_2486" = load %String, %String* %key1a
  %"$indices_gep_2487" = getelementptr i8, i8* %"$indices_buf_2485", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2487" to %String*
  store %String %"$key1a_2486", %String* %indices_cast
  %"$execptr_load_2488" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_2488", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2489", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_2485", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_2491" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2492" = bitcast i8* %"$_amount_2491" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2492"
  %"$_sender_2493" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2494" = bitcast i8* %"$_sender_2493" to [20 x i8]*
  call void @"$t10_2339"(%Uint128 %_amount, [20 x i8]* %"$_sender_2494")
  ret void
}

define internal void @"$t11_2495"(%Uint128 %_amount, [20 x i8]* %"$_sender_2496") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2496"
  %"$gasrem_2497" = load i64, i64* @_gasrem
  %"$gascmp_2498" = icmp ugt i64 1, %"$gasrem_2497"
  br i1 %"$gascmp_2498", label %"$out_of_gas_2499", label %"$have_gas_2500"

"$out_of_gas_2499":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2500"

"$have_gas_2500":                                 ; preds = %"$out_of_gas_2499", %entry
  %"$consume_2501" = sub i64 %"$gasrem_2497", 1
  store i64 %"$consume_2501", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_2502" = load i64, i64* @_gasrem
  %"$gascmp_2503" = icmp ugt i64 1, %"$gasrem_2502"
  br i1 %"$gascmp_2503", label %"$out_of_gas_2504", label %"$have_gas_2505"

"$out_of_gas_2504":                               ; preds = %"$have_gas_2500"
  call void @_out_of_gas()
  br label %"$have_gas_2505"

"$have_gas_2505":                                 ; preds = %"$out_of_gas_2504", %"$have_gas_2500"
  %"$consume_2506" = sub i64 %"$gasrem_2502", 1
  store i64 %"$consume_2506", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2507", i32 0, i32 0), i32 3 }, %String* %tname
  %m1 = alloca %Map_String_String*
  %"$execptr_load_2508" = load i8*, i8** @_execptr
  %"$m1_2510" = call i8* @_fetch_field(i8* %"$execptr_load_2508", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2509", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i32 1)
  %"$m1_2511" = bitcast i8* %"$m1_2510" to %Map_String_String*
  store %Map_String_String* %"$m1_2511", %Map_String_String** %m1
  %"$m1_2512" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2512_2513" = bitcast %Map_String_String* %"$m1_2512" to i8*
  %"$_literal_cost_call_2514" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_2512_2513")
  %"$m1_2515" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2515_2516" = bitcast %Map_String_String* %"$m1_2515" to i8*
  %"$_mapsortcost_call_2517" = call i64 @_mapsortcost(i8* %"$$m1_2515_2516")
  %"$gasadd_2518" = add i64 %"$_literal_cost_call_2514", %"$_mapsortcost_call_2517"
  %"$gasrem_2519" = load i64, i64* @_gasrem
  %"$gascmp_2520" = icmp ugt i64 %"$gasadd_2518", %"$gasrem_2519"
  br i1 %"$gascmp_2520", label %"$out_of_gas_2521", label %"$have_gas_2522"

"$out_of_gas_2521":                               ; preds = %"$have_gas_2505"
  call void @_out_of_gas()
  br label %"$have_gas_2522"

"$have_gas_2522":                                 ; preds = %"$out_of_gas_2521", %"$have_gas_2505"
  %"$consume_2523" = sub i64 %"$gasrem_2519", %"$gasadd_2518"
  store i64 %"$consume_2523", i64* @_gasrem
  %"$gasrem_2524" = load i64, i64* @_gasrem
  %"$gascmp_2525" = icmp ugt i64 1, %"$gasrem_2524"
  br i1 %"$gascmp_2525", label %"$out_of_gas_2526", label %"$have_gas_2527"

"$out_of_gas_2526":                               ; preds = %"$have_gas_2522"
  call void @_out_of_gas()
  br label %"$have_gas_2527"

"$have_gas_2527":                                 ; preds = %"$out_of_gas_2526", %"$have_gas_2522"
  %"$consume_2528" = sub i64 %"$gasrem_2524", 1
  store i64 %"$consume_2528", i64* @_gasrem
  %m1_size = alloca %Uint32
  %"$m1_2529" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_2529_2530" = bitcast %Map_String_String* %"$m1_2529" to i8*
  %"$size_call_2531" = call %Uint32 @_size(i8* %"$$m1_2529_2530")
  store %Uint32 %"$size_call_2531", %Uint32* %m1_size
  %"$gasrem_2532" = load i64, i64* @_gasrem
  %"$gascmp_2533" = icmp ugt i64 1, %"$gasrem_2532"
  br i1 %"$gascmp_2533", label %"$out_of_gas_2534", label %"$have_gas_2535"

"$out_of_gas_2534":                               ; preds = %"$have_gas_2527"
  call void @_out_of_gas()
  br label %"$have_gas_2535"

"$have_gas_2535":                                 ; preds = %"$out_of_gas_2534", %"$have_gas_2527"
  %"$consume_2536" = sub i64 %"$gasrem_2532", 1
  store i64 %"$consume_2536", i64* @_gasrem
  %zero = alloca %Uint32
  %"$gasrem_2537" = load i64, i64* @_gasrem
  %"$gascmp_2538" = icmp ugt i64 1, %"$gasrem_2537"
  br i1 %"$gascmp_2538", label %"$out_of_gas_2539", label %"$have_gas_2540"

"$out_of_gas_2539":                               ; preds = %"$have_gas_2535"
  call void @_out_of_gas()
  br label %"$have_gas_2540"

"$have_gas_2540":                                 ; preds = %"$out_of_gas_2539", %"$have_gas_2535"
  %"$consume_2541" = sub i64 %"$gasrem_2537", 1
  store i64 %"$consume_2541", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %zero
  %"$gasrem_2542" = load i64, i64* @_gasrem
  %"$gascmp_2543" = icmp ugt i64 1, %"$gasrem_2542"
  br i1 %"$gascmp_2543", label %"$out_of_gas_2544", label %"$have_gas_2545"

"$out_of_gas_2544":                               ; preds = %"$have_gas_2540"
  call void @_out_of_gas()
  br label %"$have_gas_2545"

"$have_gas_2545":                                 ; preds = %"$out_of_gas_2544", %"$have_gas_2540"
  %"$consume_2546" = sub i64 %"$gasrem_2542", 1
  store i64 %"$consume_2546", i64* @_gasrem
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_2547" = load i8*, i8** @_execptr
  %"$m1_size_2548" = load %Uint32, %Uint32* %m1_size
  %"$zero_2549" = load %Uint32, %Uint32* %zero
  %"$eq_call_2550" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2547", %Uint32 %"$m1_size_2548", %Uint32 %"$zero_2549")
  store %TName_Bool* %"$eq_call_2550", %TName_Bool** %is_empty
  %"$gasrem_2551" = load i64, i64* @_gasrem
  %"$gascmp_2552" = icmp ugt i64 2, %"$gasrem_2551"
  br i1 %"$gascmp_2552", label %"$out_of_gas_2553", label %"$have_gas_2554"

"$out_of_gas_2553":                               ; preds = %"$have_gas_2545"
  call void @_out_of_gas()
  br label %"$have_gas_2554"

"$have_gas_2554":                                 ; preds = %"$out_of_gas_2553", %"$have_gas_2545"
  %"$consume_2555" = sub i64 %"$gasrem_2551", 2
  store i64 %"$consume_2555", i64* @_gasrem
  %"$is_empty_2557" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_2558" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2557", i32 0, i32 0
  %"$is_empty_tag_2559" = load i8, i8* %"$is_empty_tag_2558"
  switch i8 %"$is_empty_tag_2559", label %"$empty_default_2560" [
    i8 0, label %"$True_2561"
    i8 1, label %"$False_2563"
  ]

"$True_2561":                                     ; preds = %"$have_gas_2554"
  %"$is_empty_2562" = bitcast %TName_Bool* %"$is_empty_2557" to %CName_True*
  br label %"$matchsucc_2556"

"$False_2563":                                    ; preds = %"$have_gas_2554"
  %"$is_empty_2564" = bitcast %TName_Bool* %"$is_empty_2557" to %CName_False*
  %"$gasrem_2565" = load i64, i64* @_gasrem
  %"$gascmp_2566" = icmp ugt i64 1, %"$gasrem_2565"
  br i1 %"$gascmp_2566", label %"$out_of_gas_2567", label %"$have_gas_2568"

"$out_of_gas_2567":                               ; preds = %"$False_2563"
  call void @_out_of_gas()
  br label %"$have_gas_2568"

"$have_gas_2568":                                 ; preds = %"$out_of_gas_2567", %"$False_2563"
  %"$consume_2569" = sub i64 %"$gasrem_2565", 1
  store i64 %"$consume_2569", i64* @_gasrem
  %"$fail__sender_2570" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2570"
  %"$tname_2571" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_2570", %String %"$tname_2571")
  br label %"$matchsucc_2556"

"$empty_default_2560":                            ; preds = %"$have_gas_2554"
  br label %"$matchsucc_2556"

"$matchsucc_2556":                                ; preds = %"$have_gas_2568", %"$True_2561", %"$empty_default_2560"
  %"$gasrem_2572" = load i64, i64* @_gasrem
  %"$gascmp_2573" = icmp ugt i64 1, %"$gasrem_2572"
  br i1 %"$gascmp_2573", label %"$out_of_gas_2574", label %"$have_gas_2575"

"$out_of_gas_2574":                               ; preds = %"$matchsucc_2556"
  call void @_out_of_gas()
  br label %"$have_gas_2575"

"$have_gas_2575":                                 ; preds = %"$out_of_gas_2574", %"$matchsucc_2556"
  %"$consume_2576" = sub i64 %"$gasrem_2572", 1
  store i64 %"$consume_2576", i64* @_gasrem
  %e2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_2577" = load i64, i64* @_gasrem
  %"$gascmp_2578" = icmp ugt i64 1, %"$gasrem_2577"
  br i1 %"$gascmp_2578", label %"$out_of_gas_2579", label %"$have_gas_2580"

"$out_of_gas_2579":                               ; preds = %"$have_gas_2575"
  call void @_out_of_gas()
  br label %"$have_gas_2580"

"$have_gas_2580":                                 ; preds = %"$out_of_gas_2579", %"$have_gas_2575"
  %"$consume_2581" = sub i64 %"$gasrem_2577", 1
  store i64 %"$consume_2581", i64* @_gasrem
  %"$execptr_load_2582" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2583" = call i8* @_new_empty_map(i8* %"$execptr_load_2582")
  %"$Emp_2584" = bitcast i8* %"$_new_empty_map_call_2583" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_2584", %"Map_String_Map_(String)_(String)"** %e2
  %"$e2_2585" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2
  %"$$e2_2585_2586" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2585" to i8*
  %"$_literal_cost_call_2587" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$e2_2585_2586")
  %"$gasrem_2588" = load i64, i64* @_gasrem
  %"$gascmp_2589" = icmp ugt i64 %"$_literal_cost_call_2587", %"$gasrem_2588"
  br i1 %"$gascmp_2589", label %"$out_of_gas_2590", label %"$have_gas_2591"

"$out_of_gas_2590":                               ; preds = %"$have_gas_2580"
  call void @_out_of_gas()
  br label %"$have_gas_2591"

"$have_gas_2591":                                 ; preds = %"$out_of_gas_2590", %"$have_gas_2580"
  %"$consume_2592" = sub i64 %"$gasrem_2588", %"$_literal_cost_call_2587"
  store i64 %"$consume_2592", i64* @_gasrem
  %"$execptr_load_2593" = load i8*, i8** @_execptr
  %"$e2_2595" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2
  %"$update_value_2596" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2595" to i8*
  call void @_update_field(i8* %"$execptr_load_2593", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2594", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_2596")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_2598" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2599" = bitcast i8* %"$_amount_2598" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2599"
  %"$_sender_2600" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2601" = bitcast i8* %"$_sender_2600" to [20 x i8]*
  call void @"$t11_2495"(%Uint128 %_amount, [20 x i8]* %"$_sender_2601")
  ret void
}

define internal void @"$t12_2602"(%Uint128 %_amount, [20 x i8]* %"$_sender_2603") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2603"
  %"$gasrem_2604" = load i64, i64* @_gasrem
  %"$gascmp_2605" = icmp ugt i64 1, %"$gasrem_2604"
  br i1 %"$gascmp_2605", label %"$out_of_gas_2606", label %"$have_gas_2607"

"$out_of_gas_2606":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2607"

"$have_gas_2607":                                 ; preds = %"$out_of_gas_2606", %entry
  %"$consume_2608" = sub i64 %"$gasrem_2604", 1
  store i64 %"$consume_2608", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_2609" = load i64, i64* @_gasrem
  %"$gascmp_2610" = icmp ugt i64 1, %"$gasrem_2609"
  br i1 %"$gascmp_2610", label %"$out_of_gas_2611", label %"$have_gas_2612"

"$out_of_gas_2611":                               ; preds = %"$have_gas_2607"
  call void @_out_of_gas()
  br label %"$have_gas_2612"

"$have_gas_2612":                                 ; preds = %"$out_of_gas_2611", %"$have_gas_2607"
  %"$consume_2613" = sub i64 %"$gasrem_2609", 1
  store i64 %"$consume_2613", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2614", i32 0, i32 0), i32 3 }, %String* %tname
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_2615" = load i8*, i8** @_execptr
  %"$m2_2617" = call i8* @_fetch_field(i8* %"$execptr_load_2615", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2616", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m2_2618" = bitcast i8* %"$m2_2617" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_2618", %"Map_String_Map_(String)_(String)"** %m2
  %"$m2_2619" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_2619_2620" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2619" to i8*
  %"$_literal_cost_call_2621" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m2_2619_2620")
  %"$m2_2622" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_2622_2623" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2622" to i8*
  %"$_mapsortcost_call_2624" = call i64 @_mapsortcost(i8* %"$$m2_2622_2623")
  %"$gasadd_2625" = add i64 %"$_literal_cost_call_2621", %"$_mapsortcost_call_2624"
  %"$gasrem_2626" = load i64, i64* @_gasrem
  %"$gascmp_2627" = icmp ugt i64 %"$gasadd_2625", %"$gasrem_2626"
  br i1 %"$gascmp_2627", label %"$out_of_gas_2628", label %"$have_gas_2629"

"$out_of_gas_2628":                               ; preds = %"$have_gas_2612"
  call void @_out_of_gas()
  br label %"$have_gas_2629"

"$have_gas_2629":                                 ; preds = %"$out_of_gas_2628", %"$have_gas_2612"
  %"$consume_2630" = sub i64 %"$gasrem_2626", %"$gasadd_2625"
  store i64 %"$consume_2630", i64* @_gasrem
  %"$gasrem_2631" = load i64, i64* @_gasrem
  %"$gascmp_2632" = icmp ugt i64 1, %"$gasrem_2631"
  br i1 %"$gascmp_2632", label %"$out_of_gas_2633", label %"$have_gas_2634"

"$out_of_gas_2633":                               ; preds = %"$have_gas_2629"
  call void @_out_of_gas()
  br label %"$have_gas_2634"

"$have_gas_2634":                                 ; preds = %"$out_of_gas_2633", %"$have_gas_2629"
  %"$consume_2635" = sub i64 %"$gasrem_2631", 1
  store i64 %"$consume_2635", i64* @_gasrem
  %m2_size = alloca %Uint32
  %"$m2_2636" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_2636_2637" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2636" to i8*
  %"$size_call_2638" = call %Uint32 @_size(i8* %"$$m2_2636_2637")
  store %Uint32 %"$size_call_2638", %Uint32* %m2_size
  %"$gasrem_2639" = load i64, i64* @_gasrem
  %"$gascmp_2640" = icmp ugt i64 1, %"$gasrem_2639"
  br i1 %"$gascmp_2640", label %"$out_of_gas_2641", label %"$have_gas_2642"

"$out_of_gas_2641":                               ; preds = %"$have_gas_2634"
  call void @_out_of_gas()
  br label %"$have_gas_2642"

"$have_gas_2642":                                 ; preds = %"$out_of_gas_2641", %"$have_gas_2634"
  %"$consume_2643" = sub i64 %"$gasrem_2639", 1
  store i64 %"$consume_2643", i64* @_gasrem
  %zero = alloca %Uint32
  %"$gasrem_2644" = load i64, i64* @_gasrem
  %"$gascmp_2645" = icmp ugt i64 1, %"$gasrem_2644"
  br i1 %"$gascmp_2645", label %"$out_of_gas_2646", label %"$have_gas_2647"

"$out_of_gas_2646":                               ; preds = %"$have_gas_2642"
  call void @_out_of_gas()
  br label %"$have_gas_2647"

"$have_gas_2647":                                 ; preds = %"$out_of_gas_2646", %"$have_gas_2642"
  %"$consume_2648" = sub i64 %"$gasrem_2644", 1
  store i64 %"$consume_2648", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %zero
  %"$gasrem_2649" = load i64, i64* @_gasrem
  %"$gascmp_2650" = icmp ugt i64 1, %"$gasrem_2649"
  br i1 %"$gascmp_2650", label %"$out_of_gas_2651", label %"$have_gas_2652"

"$out_of_gas_2651":                               ; preds = %"$have_gas_2647"
  call void @_out_of_gas()
  br label %"$have_gas_2652"

"$have_gas_2652":                                 ; preds = %"$out_of_gas_2651", %"$have_gas_2647"
  %"$consume_2653" = sub i64 %"$gasrem_2649", 1
  store i64 %"$consume_2653", i64* @_gasrem
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_2654" = load i8*, i8** @_execptr
  %"$m2_size_2655" = load %Uint32, %Uint32* %m2_size
  %"$zero_2656" = load %Uint32, %Uint32* %zero
  %"$eq_call_2657" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2654", %Uint32 %"$m2_size_2655", %Uint32 %"$zero_2656")
  store %TName_Bool* %"$eq_call_2657", %TName_Bool** %is_empty
  %"$gasrem_2658" = load i64, i64* @_gasrem
  %"$gascmp_2659" = icmp ugt i64 2, %"$gasrem_2658"
  br i1 %"$gascmp_2659", label %"$out_of_gas_2660", label %"$have_gas_2661"

"$out_of_gas_2660":                               ; preds = %"$have_gas_2652"
  call void @_out_of_gas()
  br label %"$have_gas_2661"

"$have_gas_2661":                                 ; preds = %"$out_of_gas_2660", %"$have_gas_2652"
  %"$consume_2662" = sub i64 %"$gasrem_2658", 2
  store i64 %"$consume_2662", i64* @_gasrem
  %"$is_empty_2664" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_2665" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2664", i32 0, i32 0
  %"$is_empty_tag_2666" = load i8, i8* %"$is_empty_tag_2665"
  switch i8 %"$is_empty_tag_2666", label %"$empty_default_2667" [
    i8 0, label %"$True_2668"
    i8 1, label %"$False_2670"
  ]

"$True_2668":                                     ; preds = %"$have_gas_2661"
  %"$is_empty_2669" = bitcast %TName_Bool* %"$is_empty_2664" to %CName_True*
  br label %"$matchsucc_2663"

"$False_2670":                                    ; preds = %"$have_gas_2661"
  %"$is_empty_2671" = bitcast %TName_Bool* %"$is_empty_2664" to %CName_False*
  %"$gasrem_2672" = load i64, i64* @_gasrem
  %"$gascmp_2673" = icmp ugt i64 1, %"$gasrem_2672"
  br i1 %"$gascmp_2673", label %"$out_of_gas_2674", label %"$have_gas_2675"

"$out_of_gas_2674":                               ; preds = %"$False_2670"
  call void @_out_of_gas()
  br label %"$have_gas_2675"

"$have_gas_2675":                                 ; preds = %"$out_of_gas_2674", %"$False_2670"
  %"$consume_2676" = sub i64 %"$gasrem_2672", 1
  store i64 %"$consume_2676", i64* @_gasrem
  %"$fail__sender_2677" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2677"
  %"$tname_2678" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_2677", %String %"$tname_2678")
  br label %"$matchsucc_2663"

"$empty_default_2667":                            ; preds = %"$have_gas_2661"
  br label %"$matchsucc_2663"

"$matchsucc_2663":                                ; preds = %"$have_gas_2675", %"$True_2668", %"$empty_default_2667"
  %"$gasrem_2679" = load i64, i64* @_gasrem
  %"$gascmp_2680" = icmp ugt i64 1, %"$gasrem_2679"
  br i1 %"$gascmp_2680", label %"$out_of_gas_2681", label %"$have_gas_2682"

"$out_of_gas_2681":                               ; preds = %"$matchsucc_2663"
  call void @_out_of_gas()
  br label %"$have_gas_2682"

"$have_gas_2682":                                 ; preds = %"$out_of_gas_2681", %"$matchsucc_2663"
  %"$consume_2683" = sub i64 %"$gasrem_2679", 1
  store i64 %"$consume_2683", i64* @_gasrem
  %e1 = alloca %Map_String_String*
  %"$gasrem_2684" = load i64, i64* @_gasrem
  %"$gascmp_2685" = icmp ugt i64 1, %"$gasrem_2684"
  br i1 %"$gascmp_2685", label %"$out_of_gas_2686", label %"$have_gas_2687"

"$out_of_gas_2686":                               ; preds = %"$have_gas_2682"
  call void @_out_of_gas()
  br label %"$have_gas_2687"

"$have_gas_2687":                                 ; preds = %"$out_of_gas_2686", %"$have_gas_2682"
  %"$consume_2688" = sub i64 %"$gasrem_2684", 1
  store i64 %"$consume_2688", i64* @_gasrem
  %"$execptr_load_2689" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2690" = call i8* @_new_empty_map(i8* %"$execptr_load_2689")
  %"$Emp_2691" = bitcast i8* %"$_new_empty_map_call_2690" to %Map_String_String*
  store %Map_String_String* %"$Emp_2691", %Map_String_String** %e1
  %"$gasrem_2692" = load i64, i64* @_gasrem
  %"$gascmp_2693" = icmp ugt i64 1, %"$gasrem_2692"
  br i1 %"$gascmp_2693", label %"$out_of_gas_2694", label %"$have_gas_2695"

"$out_of_gas_2694":                               ; preds = %"$have_gas_2687"
  call void @_out_of_gas()
  br label %"$have_gas_2695"

"$have_gas_2695":                                 ; preds = %"$out_of_gas_2694", %"$have_gas_2687"
  %"$consume_2696" = sub i64 %"$gasrem_2692", 1
  store i64 %"$consume_2696", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_2697" = load i64, i64* @_gasrem
  %"$gascmp_2698" = icmp ugt i64 1, %"$gasrem_2697"
  br i1 %"$gascmp_2698", label %"$out_of_gas_2699", label %"$have_gas_2700"

"$out_of_gas_2699":                               ; preds = %"$have_gas_2695"
  call void @_out_of_gas()
  br label %"$have_gas_2700"

"$have_gas_2700":                                 ; preds = %"$out_of_gas_2699", %"$have_gas_2695"
  %"$consume_2701" = sub i64 %"$gasrem_2697", 1
  store i64 %"$consume_2701", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2702", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$e1_2703" = load %Map_String_String*, %Map_String_String** %e1
  %"$$e1_2703_2704" = bitcast %Map_String_String* %"$e1_2703" to i8*
  %"$_literal_cost_call_2705" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e1_2703_2704")
  %"$gasadd_2706" = add i64 %"$_literal_cost_call_2705", 1
  %"$gasrem_2707" = load i64, i64* @_gasrem
  %"$gascmp_2708" = icmp ugt i64 %"$gasadd_2706", %"$gasrem_2707"
  br i1 %"$gascmp_2708", label %"$out_of_gas_2709", label %"$have_gas_2710"

"$out_of_gas_2709":                               ; preds = %"$have_gas_2700"
  call void @_out_of_gas()
  br label %"$have_gas_2710"

"$have_gas_2710":                                 ; preds = %"$out_of_gas_2709", %"$have_gas_2700"
  %"$consume_2711" = sub i64 %"$gasrem_2707", %"$gasadd_2706"
  store i64 %"$consume_2711", i64* @_gasrem
  %"$indices_buf_2712_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_2712_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2712_salloc_load", i64 16)
  %"$indices_buf_2712_salloc" = bitcast i8* %"$indices_buf_2712_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2712" = bitcast [16 x i8]* %"$indices_buf_2712_salloc" to i8*
  %"$key1a_2713" = load %String, %String* %key1a
  %"$indices_gep_2714" = getelementptr i8, i8* %"$indices_buf_2712", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2714" to %String*
  store %String %"$key1a_2713", %String* %indices_cast
  %"$execptr_load_2715" = load i8*, i8** @_execptr
  %"$e1_2717" = load %Map_String_String*, %Map_String_String** %e1
  %"$update_value_2718" = bitcast %Map_String_String* %"$e1_2717" to i8*
  call void @_update_field(i8* %"$execptr_load_2715", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2716", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 1, i8* %"$indices_buf_2712", i8* %"$update_value_2718")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_2720" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2721" = bitcast i8* %"$_amount_2720" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2721"
  %"$_sender_2722" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2723" = bitcast i8* %"$_sender_2722" to [20 x i8]*
  call void @"$t12_2602"(%Uint128 %_amount, [20 x i8]* %"$_sender_2723")
  ret void
}

define internal void @"$t13_2724"(%Uint128 %_amount, [20 x i8]* %"$_sender_2725") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2725"
  %"$gasrem_2726" = load i64, i64* @_gasrem
  %"$gascmp_2727" = icmp ugt i64 1, %"$gasrem_2726"
  br i1 %"$gascmp_2727", label %"$out_of_gas_2728", label %"$have_gas_2729"

"$out_of_gas_2728":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2729"

"$have_gas_2729":                                 ; preds = %"$out_of_gas_2728", %entry
  %"$consume_2730" = sub i64 %"$gasrem_2726", 1
  store i64 %"$consume_2730", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_2731" = load i64, i64* @_gasrem
  %"$gascmp_2732" = icmp ugt i64 1, %"$gasrem_2731"
  br i1 %"$gascmp_2732", label %"$out_of_gas_2733", label %"$have_gas_2734"

"$out_of_gas_2733":                               ; preds = %"$have_gas_2729"
  call void @_out_of_gas()
  br label %"$have_gas_2734"

"$have_gas_2734":                                 ; preds = %"$out_of_gas_2733", %"$have_gas_2729"
  %"$consume_2735" = sub i64 %"$gasrem_2731", 1
  store i64 %"$consume_2735", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2736", i32 0, i32 0), i32 3 }, %String* %tname
  %"$gasrem_2737" = load i64, i64* @_gasrem
  %"$gascmp_2738" = icmp ugt i64 1, %"$gasrem_2737"
  br i1 %"$gascmp_2738", label %"$out_of_gas_2739", label %"$have_gas_2740"

"$out_of_gas_2739":                               ; preds = %"$have_gas_2734"
  call void @_out_of_gas()
  br label %"$have_gas_2740"

"$have_gas_2740":                                 ; preds = %"$out_of_gas_2739", %"$have_gas_2734"
  %"$consume_2741" = sub i64 %"$gasrem_2737", 1
  store i64 %"$consume_2741", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_2742" = load i64, i64* @_gasrem
  %"$gascmp_2743" = icmp ugt i64 1, %"$gasrem_2742"
  br i1 %"$gascmp_2743", label %"$out_of_gas_2744", label %"$have_gas_2745"

"$out_of_gas_2744":                               ; preds = %"$have_gas_2740"
  call void @_out_of_gas()
  br label %"$have_gas_2745"

"$have_gas_2745":                                 ; preds = %"$out_of_gas_2744", %"$have_gas_2740"
  %"$consume_2746" = sub i64 %"$gasrem_2742", 1
  store i64 %"$consume_2746", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2747", i32 0, i32 0), i32 5 }, %String* %key1a
  %mo = alloca %"TName_Option_Map_(String)_(String)"*
  %"$indices_buf_2748_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_2748_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2748_salloc_load", i64 16)
  %"$indices_buf_2748_salloc" = bitcast i8* %"$indices_buf_2748_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2748" = bitcast [16 x i8]* %"$indices_buf_2748_salloc" to i8*
  %"$key1a_2749" = load %String, %String* %key1a
  %"$indices_gep_2750" = getelementptr i8, i8* %"$indices_buf_2748", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2750" to %String*
  store %String %"$key1a_2749", %String* %indices_cast
  %"$execptr_load_2751" = load i8*, i8** @_execptr
  %"$mo_2753" = call i8* @_fetch_field(i8* %"$execptr_load_2751", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2752", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 1, i8* %"$indices_buf_2748", i32 1)
  %"$mo_2754" = bitcast i8* %"$mo_2753" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_2754", %"TName_Option_Map_(String)_(String)"** %mo
  %"$mo_2755" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo
  %"$$mo_2755_2756" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_2755" to i8*
  %"$_literal_cost_call_2757" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_66", i8* %"$$mo_2755_2756")
  %"$gasadd_2758" = add i64 %"$_literal_cost_call_2757", 0
  %"$gasadd_2759" = add i64 %"$gasadd_2758", 1
  %"$gasrem_2760" = load i64, i64* @_gasrem
  %"$gascmp_2761" = icmp ugt i64 %"$gasadd_2759", %"$gasrem_2760"
  br i1 %"$gascmp_2761", label %"$out_of_gas_2762", label %"$have_gas_2763"

"$out_of_gas_2762":                               ; preds = %"$have_gas_2745"
  call void @_out_of_gas()
  br label %"$have_gas_2763"

"$have_gas_2763":                                 ; preds = %"$out_of_gas_2762", %"$have_gas_2745"
  %"$consume_2764" = sub i64 %"$gasrem_2760", %"$gasadd_2759"
  store i64 %"$consume_2764", i64* @_gasrem
  %"$gasrem_2765" = load i64, i64* @_gasrem
  %"$gascmp_2766" = icmp ugt i64 2, %"$gasrem_2765"
  br i1 %"$gascmp_2766", label %"$out_of_gas_2767", label %"$have_gas_2768"

"$out_of_gas_2767":                               ; preds = %"$have_gas_2763"
  call void @_out_of_gas()
  br label %"$have_gas_2768"

"$have_gas_2768":                                 ; preds = %"$out_of_gas_2767", %"$have_gas_2763"
  %"$consume_2769" = sub i64 %"$gasrem_2765", 2
  store i64 %"$consume_2769", i64* @_gasrem
  %"$mo_2771" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo
  %"$mo_tag_2772" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_2771", i32 0, i32 0
  %"$mo_tag_2773" = load i8, i8* %"$mo_tag_2772"
  switch i8 %"$mo_tag_2773", label %"$empty_default_2774" [
    i8 0, label %"$Some_2775"
    i8 1, label %"$None_2839"
  ]

"$Some_2775":                                     ; preds = %"$have_gas_2768"
  %"$mo_2776" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_2771" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_2777" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_2776", i32 0, i32 1
  %"$m_load_2778" = load %Map_String_String*, %Map_String_String** %"$m_gep_2777"
  %m = alloca %Map_String_String*
  store %Map_String_String* %"$m_load_2778", %Map_String_String** %m
  %"$gasrem_2779" = load i64, i64* @_gasrem
  %"$gascmp_2780" = icmp ugt i64 1, %"$gasrem_2779"
  br i1 %"$gascmp_2780", label %"$out_of_gas_2781", label %"$have_gas_2782"

"$out_of_gas_2781":                               ; preds = %"$Some_2775"
  call void @_out_of_gas()
  br label %"$have_gas_2782"

"$have_gas_2782":                                 ; preds = %"$out_of_gas_2781", %"$Some_2775"
  %"$consume_2783" = sub i64 %"$gasrem_2779", 1
  store i64 %"$consume_2783", i64* @_gasrem
  %m_size = alloca %Uint32
  %"$m_2784" = load %Map_String_String*, %Map_String_String** %m
  %"$$m_2784_2785" = bitcast %Map_String_String* %"$m_2784" to i8*
  %"$size_call_2786" = call %Uint32 @_size(i8* %"$$m_2784_2785")
  store %Uint32 %"$size_call_2786", %Uint32* %m_size
  %"$gasrem_2787" = load i64, i64* @_gasrem
  %"$gascmp_2788" = icmp ugt i64 1, %"$gasrem_2787"
  br i1 %"$gascmp_2788", label %"$out_of_gas_2789", label %"$have_gas_2790"

"$out_of_gas_2789":                               ; preds = %"$have_gas_2782"
  call void @_out_of_gas()
  br label %"$have_gas_2790"

"$have_gas_2790":                                 ; preds = %"$out_of_gas_2789", %"$have_gas_2782"
  %"$consume_2791" = sub i64 %"$gasrem_2787", 1
  store i64 %"$consume_2791", i64* @_gasrem
  %zero = alloca %Uint32
  %"$gasrem_2792" = load i64, i64* @_gasrem
  %"$gascmp_2793" = icmp ugt i64 1, %"$gasrem_2792"
  br i1 %"$gascmp_2793", label %"$out_of_gas_2794", label %"$have_gas_2795"

"$out_of_gas_2794":                               ; preds = %"$have_gas_2790"
  call void @_out_of_gas()
  br label %"$have_gas_2795"

"$have_gas_2795":                                 ; preds = %"$out_of_gas_2794", %"$have_gas_2790"
  %"$consume_2796" = sub i64 %"$gasrem_2792", 1
  store i64 %"$consume_2796", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %zero
  %"$gasrem_2797" = load i64, i64* @_gasrem
  %"$gascmp_2798" = icmp ugt i64 1, %"$gasrem_2797"
  br i1 %"$gascmp_2798", label %"$out_of_gas_2799", label %"$have_gas_2800"

"$out_of_gas_2799":                               ; preds = %"$have_gas_2795"
  call void @_out_of_gas()
  br label %"$have_gas_2800"

"$have_gas_2800":                                 ; preds = %"$out_of_gas_2799", %"$have_gas_2795"
  %"$consume_2801" = sub i64 %"$gasrem_2797", 1
  store i64 %"$consume_2801", i64* @_gasrem
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_2802" = load i8*, i8** @_execptr
  %"$m_size_2803" = load %Uint32, %Uint32* %m_size
  %"$zero_2804" = load %Uint32, %Uint32* %zero
  %"$eq_call_2805" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2802", %Uint32 %"$m_size_2803", %Uint32 %"$zero_2804")
  store %TName_Bool* %"$eq_call_2805", %TName_Bool** %is_empty
  %"$gasrem_2806" = load i64, i64* @_gasrem
  %"$gascmp_2807" = icmp ugt i64 2, %"$gasrem_2806"
  br i1 %"$gascmp_2807", label %"$out_of_gas_2808", label %"$have_gas_2809"

"$out_of_gas_2808":                               ; preds = %"$have_gas_2800"
  call void @_out_of_gas()
  br label %"$have_gas_2809"

"$have_gas_2809":                                 ; preds = %"$out_of_gas_2808", %"$have_gas_2800"
  %"$consume_2810" = sub i64 %"$gasrem_2806", 2
  store i64 %"$consume_2810", i64* @_gasrem
  %"$is_empty_2812" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_2813" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2812", i32 0, i32 0
  %"$is_empty_tag_2814" = load i8, i8* %"$is_empty_tag_2813"
  switch i8 %"$is_empty_tag_2814", label %"$empty_default_2815" [
    i8 0, label %"$True_2816"
    i8 1, label %"$False_2818"
  ]

"$True_2816":                                     ; preds = %"$have_gas_2809"
  %"$is_empty_2817" = bitcast %TName_Bool* %"$is_empty_2812" to %CName_True*
  br label %"$matchsucc_2811"

"$False_2818":                                    ; preds = %"$have_gas_2809"
  %"$is_empty_2819" = bitcast %TName_Bool* %"$is_empty_2812" to %CName_False*
  %"$gasrem_2820" = load i64, i64* @_gasrem
  %"$gascmp_2821" = icmp ugt i64 1, %"$gasrem_2820"
  br i1 %"$gascmp_2821", label %"$out_of_gas_2822", label %"$have_gas_2823"

"$out_of_gas_2822":                               ; preds = %"$False_2818"
  call void @_out_of_gas()
  br label %"$have_gas_2823"

"$have_gas_2823":                                 ; preds = %"$out_of_gas_2822", %"$False_2818"
  %"$consume_2824" = sub i64 %"$gasrem_2820", 1
  store i64 %"$consume_2824", i64* @_gasrem
  %msg = alloca %String
  %"$gasrem_2825" = load i64, i64* @_gasrem
  %"$gascmp_2826" = icmp ugt i64 1, %"$gasrem_2825"
  br i1 %"$gascmp_2826", label %"$out_of_gas_2827", label %"$have_gas_2828"

"$out_of_gas_2827":                               ; preds = %"$have_gas_2823"
  call void @_out_of_gas()
  br label %"$have_gas_2828"

"$have_gas_2828":                                 ; preds = %"$out_of_gas_2827", %"$have_gas_2823"
  %"$consume_2829" = sub i64 %"$gasrem_2825", 1
  store i64 %"$consume_2829", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_2830", i32 0, i32 0), i32 29 }, %String* %msg
  %"$gasrem_2831" = load i64, i64* @_gasrem
  %"$gascmp_2832" = icmp ugt i64 1, %"$gasrem_2831"
  br i1 %"$gascmp_2832", label %"$out_of_gas_2833", label %"$have_gas_2834"

"$out_of_gas_2833":                               ; preds = %"$have_gas_2828"
  call void @_out_of_gas()
  br label %"$have_gas_2834"

"$have_gas_2834":                                 ; preds = %"$out_of_gas_2833", %"$have_gas_2828"
  %"$consume_2835" = sub i64 %"$gasrem_2831", 1
  store i64 %"$consume_2835", i64* @_gasrem
  %"$fail_msg__sender_2836" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2836"
  %"$tname_2837" = load %String, %String* %tname
  %"$msg_2838" = load %String, %String* %msg
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_2836", %String %"$tname_2837", %String %"$msg_2838")
  br label %"$matchsucc_2811"

"$empty_default_2815":                            ; preds = %"$have_gas_2809"
  br label %"$matchsucc_2811"

"$matchsucc_2811":                                ; preds = %"$have_gas_2834", %"$True_2816", %"$empty_default_2815"
  br label %"$matchsucc_2770"

"$None_2839":                                     ; preds = %"$have_gas_2768"
  %"$mo_2840" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_2771" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_2841" = load i64, i64* @_gasrem
  %"$gascmp_2842" = icmp ugt i64 1, %"$gasrem_2841"
  br i1 %"$gascmp_2842", label %"$out_of_gas_2843", label %"$have_gas_2844"

"$out_of_gas_2843":                               ; preds = %"$None_2839"
  call void @_out_of_gas()
  br label %"$have_gas_2844"

"$have_gas_2844":                                 ; preds = %"$out_of_gas_2843", %"$None_2839"
  %"$consume_2845" = sub i64 %"$gasrem_2841", 1
  store i64 %"$consume_2845", i64* @_gasrem
  %"$fail__sender_2846" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2846"
  %"$tname_2847" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_2846", %String %"$tname_2847")
  br label %"$matchsucc_2770"

"$empty_default_2774":                            ; preds = %"$have_gas_2768"
  br label %"$matchsucc_2770"

"$matchsucc_2770":                                ; preds = %"$have_gas_2844", %"$matchsucc_2811", %"$empty_default_2774"
  %"$gasrem_2848" = load i64, i64* @_gasrem
  %"$gascmp_2849" = icmp ugt i64 1, %"$gasrem_2848"
  br i1 %"$gascmp_2849", label %"$out_of_gas_2850", label %"$have_gas_2851"

"$out_of_gas_2850":                               ; preds = %"$matchsucc_2770"
  call void @_out_of_gas()
  br label %"$have_gas_2851"

"$have_gas_2851":                                 ; preds = %"$out_of_gas_2850", %"$matchsucc_2770"
  %"$consume_2852" = sub i64 %"$gasrem_2848", 1
  store i64 %"$consume_2852", i64* @_gasrem
  %m3 = alloca %Map_String_String*
  %"$gasrem_2853" = load i64, i64* @_gasrem
  %"$gascmp_2854" = icmp ugt i64 1, %"$gasrem_2853"
  br i1 %"$gascmp_2854", label %"$out_of_gas_2855", label %"$have_gas_2856"

"$out_of_gas_2855":                               ; preds = %"$have_gas_2851"
  call void @_out_of_gas()
  br label %"$have_gas_2856"

"$have_gas_2856":                                 ; preds = %"$out_of_gas_2855", %"$have_gas_2851"
  %"$consume_2857" = sub i64 %"$gasrem_2853", 1
  store i64 %"$consume_2857", i64* @_gasrem
  %"$execptr_load_2858" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2859" = call i8* @_new_empty_map(i8* %"$execptr_load_2858")
  %"$Emp_2860" = bitcast i8* %"$_new_empty_map_call_2859" to %Map_String_String*
  store %Map_String_String* %"$Emp_2860", %Map_String_String** %m3
  %"$gasrem_2861" = load i64, i64* @_gasrem
  %"$gascmp_2862" = icmp ugt i64 1, %"$gasrem_2861"
  br i1 %"$gascmp_2862", label %"$out_of_gas_2863", label %"$have_gas_2864"

"$out_of_gas_2863":                               ; preds = %"$have_gas_2856"
  call void @_out_of_gas()
  br label %"$have_gas_2864"

"$have_gas_2864":                                 ; preds = %"$out_of_gas_2863", %"$have_gas_2856"
  %"$consume_2865" = sub i64 %"$gasrem_2861", 1
  store i64 %"$consume_2865", i64* @_gasrem
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_2866" = load i64, i64* @_gasrem
  %"$gascmp_2867" = icmp ugt i64 1, %"$gasrem_2866"
  br i1 %"$gascmp_2867", label %"$out_of_gas_2868", label %"$have_gas_2869"

"$out_of_gas_2868":                               ; preds = %"$have_gas_2864"
  call void @_out_of_gas()
  br label %"$have_gas_2869"

"$have_gas_2869":                                 ; preds = %"$out_of_gas_2868", %"$have_gas_2864"
  %"$consume_2870" = sub i64 %"$gasrem_2866", 1
  store i64 %"$consume_2870", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_2871" = load i64, i64* @_gasrem
  %"$gascmp_2872" = icmp ugt i64 1, %"$gasrem_2871"
  br i1 %"$gascmp_2872", label %"$out_of_gas_2873", label %"$have_gas_2874"

"$out_of_gas_2873":                               ; preds = %"$have_gas_2869"
  call void @_out_of_gas()
  br label %"$have_gas_2874"

"$have_gas_2874":                                 ; preds = %"$out_of_gas_2873", %"$have_gas_2869"
  %"$consume_2875" = sub i64 %"$gasrem_2871", 1
  store i64 %"$consume_2875", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2876", i32 0, i32 0), i32 5 }, %String* %key2a
  %"$gasrem_2877" = load i64, i64* @_gasrem
  %"$gascmp_2878" = icmp ugt i64 1, %"$gasrem_2877"
  br i1 %"$gascmp_2878", label %"$out_of_gas_2879", label %"$have_gas_2880"

"$out_of_gas_2879":                               ; preds = %"$have_gas_2874"
  call void @_out_of_gas()
  br label %"$have_gas_2880"

"$have_gas_2880":                                 ; preds = %"$out_of_gas_2879", %"$have_gas_2874"
  %"$consume_2881" = sub i64 %"$gasrem_2877", 1
  store i64 %"$consume_2881", i64* @_gasrem
  %e = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_2882" = load i64, i64* @_gasrem
  %"$gascmp_2883" = icmp ugt i64 1, %"$gasrem_2882"
  br i1 %"$gascmp_2883", label %"$out_of_gas_2884", label %"$have_gas_2885"

"$out_of_gas_2884":                               ; preds = %"$have_gas_2880"
  call void @_out_of_gas()
  br label %"$have_gas_2885"

"$have_gas_2885":                                 ; preds = %"$out_of_gas_2884", %"$have_gas_2880"
  %"$consume_2886" = sub i64 %"$gasrem_2882", 1
  store i64 %"$consume_2886", i64* @_gasrem
  %"$execptr_load_2887" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2888" = call i8* @_new_empty_map(i8* %"$execptr_load_2887")
  %"$Emp_2889" = bitcast i8* %"$_new_empty_map_call_2888" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_2889", %"Map_String_Map_(String)_(String)"** %e
  %"$execptr_load_2890" = load i8*, i8** @_execptr
  %"$e_2891" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$$e_2891_2892" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_2891" to i8*
  %"$put_key2a_2893" = alloca %String
  %"$key2a_2894" = load %String, %String* %key2a
  store %String %"$key2a_2894", %String* %"$put_key2a_2893"
  %"$$put_key2a_2893_2895" = bitcast %String* %"$put_key2a_2893" to i8*
  %"$m3_2896" = load %Map_String_String*, %Map_String_String** %m3
  %"$$m3_2896_2897" = bitcast %Map_String_String* %"$m3_2896" to i8*
  %"$put_call_2898" = call i8* @_put(i8* %"$execptr_load_2890", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$e_2891_2892", i8* %"$$put_key2a_2893_2895", i8* %"$$m3_2896_2897")
  %"$_put_2899" = bitcast i8* %"$put_call_2898" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_2899", %"Map_String_Map_(String)_(String)"** %m2
  %"$gasrem_2900" = load i64, i64* @_gasrem
  %"$gascmp_2901" = icmp ugt i64 1, %"$gasrem_2900"
  br i1 %"$gascmp_2901", label %"$out_of_gas_2902", label %"$have_gas_2903"

"$out_of_gas_2902":                               ; preds = %"$have_gas_2885"
  call void @_out_of_gas()
  br label %"$have_gas_2903"

"$have_gas_2903":                                 ; preds = %"$out_of_gas_2902", %"$have_gas_2885"
  %"$consume_2904" = sub i64 %"$gasrem_2900", 1
  store i64 %"$consume_2904", i64* @_gasrem
  %"$m3_11" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_2905" = load i64, i64* @_gasrem
  %"$gascmp_2906" = icmp ugt i64 1, %"$gasrem_2905"
  br i1 %"$gascmp_2906", label %"$out_of_gas_2907", label %"$have_gas_2908"

"$out_of_gas_2907":                               ; preds = %"$have_gas_2903"
  call void @_out_of_gas()
  br label %"$have_gas_2908"

"$have_gas_2908":                                 ; preds = %"$out_of_gas_2907", %"$have_gas_2903"
  %"$consume_2909" = sub i64 %"$gasrem_2905", 1
  store i64 %"$consume_2909", i64* @_gasrem
  %e1 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_2910" = load i64, i64* @_gasrem
  %"$gascmp_2911" = icmp ugt i64 1, %"$gasrem_2910"
  br i1 %"$gascmp_2911", label %"$out_of_gas_2912", label %"$have_gas_2913"

"$out_of_gas_2912":                               ; preds = %"$have_gas_2908"
  call void @_out_of_gas()
  br label %"$have_gas_2913"

"$have_gas_2913":                                 ; preds = %"$out_of_gas_2912", %"$have_gas_2908"
  %"$consume_2914" = sub i64 %"$gasrem_2910", 1
  store i64 %"$consume_2914", i64* @_gasrem
  %"$execptr_load_2915" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2916" = call i8* @_new_empty_map(i8* %"$execptr_load_2915")
  %"$Emp_2917" = bitcast i8* %"$_new_empty_map_call_2916" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$Emp_2917", %"Map_String_Map_(String)_(Map_(String)_(String))"** %e1
  %"$execptr_load_2918" = load i8*, i8** @_execptr
  %"$e_2919" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %e1
  %"$$e_2919_2920" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$e_2919" to i8*
  %"$put_key1a_2921" = alloca %String
  %"$key1a_2922" = load %String, %String* %key1a
  store %String %"$key1a_2922", %String* %"$put_key1a_2921"
  %"$$put_key1a_2921_2923" = bitcast %String* %"$put_key1a_2921" to i8*
  %"$m2_2924" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_2924_2925" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2924" to i8*
  %"$put_call_2926" = call i8* @_put(i8* %"$execptr_load_2918", %_TyDescrTy_Typ* @"$TyDescr_Map_70", i8* %"$$e_2919_2920", i8* %"$$put_key1a_2921_2923", i8* %"$$m2_2924_2925")
  %"$_put_2927" = bitcast i8* %"$put_call_2926" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_put_2927", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_11"
  %"$$m3_11_2928" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_11"
  %"$$$m3_11_2928_2929" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_11_2928" to i8*
  %"$_literal_cost_call_2930" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_70", i8* %"$$$m3_11_2928_2929")
  %"$gasrem_2931" = load i64, i64* @_gasrem
  %"$gascmp_2932" = icmp ugt i64 %"$_literal_cost_call_2930", %"$gasrem_2931"
  br i1 %"$gascmp_2932", label %"$out_of_gas_2933", label %"$have_gas_2934"

"$out_of_gas_2933":                               ; preds = %"$have_gas_2913"
  call void @_out_of_gas()
  br label %"$have_gas_2934"

"$have_gas_2934":                                 ; preds = %"$out_of_gas_2933", %"$have_gas_2913"
  %"$consume_2935" = sub i64 %"$gasrem_2931", %"$_literal_cost_call_2930"
  store i64 %"$consume_2935", i64* @_gasrem
  %"$execptr_load_2936" = load i8*, i8** @_execptr
  %"$$m3_11_2938" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_11"
  %"$update_value_2939" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_11_2938" to i8*
  call void @_update_field(i8* %"$execptr_load_2936", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_2937", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_70", i32 0, i8* null, i8* %"$update_value_2939")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_2941" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2942" = bitcast i8* %"$_amount_2941" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2942"
  %"$_sender_2943" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2944" = bitcast i8* %"$_sender_2943" to [20 x i8]*
  call void @"$t13_2724"(%Uint128 %_amount, [20 x i8]* %"$_sender_2944")
  ret void
}

define internal void @"$t14_2945"(%Uint128 %_amount, [20 x i8]* %"$_sender_2946") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2946"
  %"$gasrem_2947" = load i64, i64* @_gasrem
  %"$gascmp_2948" = icmp ugt i64 1, %"$gasrem_2947"
  br i1 %"$gascmp_2948", label %"$out_of_gas_2949", label %"$have_gas_2950"

"$out_of_gas_2949":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2950"

"$have_gas_2950":                                 ; preds = %"$out_of_gas_2949", %entry
  %"$consume_2951" = sub i64 %"$gasrem_2947", 1
  store i64 %"$consume_2951", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_2952" = load i64, i64* @_gasrem
  %"$gascmp_2953" = icmp ugt i64 1, %"$gasrem_2952"
  br i1 %"$gascmp_2953", label %"$out_of_gas_2954", label %"$have_gas_2955"

"$out_of_gas_2954":                               ; preds = %"$have_gas_2950"
  call void @_out_of_gas()
  br label %"$have_gas_2955"

"$have_gas_2955":                                 ; preds = %"$out_of_gas_2954", %"$have_gas_2950"
  %"$consume_2956" = sub i64 %"$gasrem_2952", 1
  store i64 %"$consume_2956", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2957", i32 0, i32 0), i32 3 }, %String* %tname
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_2958" = load i8*, i8** @_execptr
  %"$m3_2960" = call i8* @_fetch_field(i8* %"$execptr_load_2958", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_2959", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_70", i32 0, i8* null, i32 1)
  %"$m3_2961" = bitcast i8* %"$m3_2960" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_2961", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$m3_2962" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_2962_2963" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_2962" to i8*
  %"$_literal_cost_call_2964" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_70", i8* %"$$m3_2962_2963")
  %"$m3_2965" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_2965_2966" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_2965" to i8*
  %"$_mapsortcost_call_2967" = call i64 @_mapsortcost(i8* %"$$m3_2965_2966")
  %"$gasadd_2968" = add i64 %"$_literal_cost_call_2964", %"$_mapsortcost_call_2967"
  %"$gasrem_2969" = load i64, i64* @_gasrem
  %"$gascmp_2970" = icmp ugt i64 %"$gasadd_2968", %"$gasrem_2969"
  br i1 %"$gascmp_2970", label %"$out_of_gas_2971", label %"$have_gas_2972"

"$out_of_gas_2971":                               ; preds = %"$have_gas_2955"
  call void @_out_of_gas()
  br label %"$have_gas_2972"

"$have_gas_2972":                                 ; preds = %"$out_of_gas_2971", %"$have_gas_2955"
  %"$consume_2973" = sub i64 %"$gasrem_2969", %"$gasadd_2968"
  store i64 %"$consume_2973", i64* @_gasrem
  %"$gasrem_2974" = load i64, i64* @_gasrem
  %"$gascmp_2975" = icmp ugt i64 1, %"$gasrem_2974"
  br i1 %"$gascmp_2975", label %"$out_of_gas_2976", label %"$have_gas_2977"

"$out_of_gas_2976":                               ; preds = %"$have_gas_2972"
  call void @_out_of_gas()
  br label %"$have_gas_2977"

"$have_gas_2977":                                 ; preds = %"$out_of_gas_2976", %"$have_gas_2972"
  %"$consume_2978" = sub i64 %"$gasrem_2974", 1
  store i64 %"$consume_2978", i64* @_gasrem
  %m3_size = alloca %Uint32
  %"$m3_2979" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_2979_2980" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_2979" to i8*
  %"$size_call_2981" = call %Uint32 @_size(i8* %"$$m3_2979_2980")
  store %Uint32 %"$size_call_2981", %Uint32* %m3_size
  %"$gasrem_2982" = load i64, i64* @_gasrem
  %"$gascmp_2983" = icmp ugt i64 1, %"$gasrem_2982"
  br i1 %"$gascmp_2983", label %"$out_of_gas_2984", label %"$have_gas_2985"

"$out_of_gas_2984":                               ; preds = %"$have_gas_2977"
  call void @_out_of_gas()
  br label %"$have_gas_2985"

"$have_gas_2985":                                 ; preds = %"$out_of_gas_2984", %"$have_gas_2977"
  %"$consume_2986" = sub i64 %"$gasrem_2982", 1
  store i64 %"$consume_2986", i64* @_gasrem
  %one = alloca %Uint32
  %"$gasrem_2987" = load i64, i64* @_gasrem
  %"$gascmp_2988" = icmp ugt i64 1, %"$gasrem_2987"
  br i1 %"$gascmp_2988", label %"$out_of_gas_2989", label %"$have_gas_2990"

"$out_of_gas_2989":                               ; preds = %"$have_gas_2985"
  call void @_out_of_gas()
  br label %"$have_gas_2990"

"$have_gas_2990":                                 ; preds = %"$out_of_gas_2989", %"$have_gas_2985"
  %"$consume_2991" = sub i64 %"$gasrem_2987", 1
  store i64 %"$consume_2991", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$gasrem_2992" = load i64, i64* @_gasrem
  %"$gascmp_2993" = icmp ugt i64 1, %"$gasrem_2992"
  br i1 %"$gascmp_2993", label %"$out_of_gas_2994", label %"$have_gas_2995"

"$out_of_gas_2994":                               ; preds = %"$have_gas_2990"
  call void @_out_of_gas()
  br label %"$have_gas_2995"

"$have_gas_2995":                                 ; preds = %"$out_of_gas_2994", %"$have_gas_2990"
  %"$consume_2996" = sub i64 %"$gasrem_2992", 1
  store i64 %"$consume_2996", i64* @_gasrem
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_2997" = load i8*, i8** @_execptr
  %"$m3_size_2998" = load %Uint32, %Uint32* %m3_size
  %"$one_2999" = load %Uint32, %Uint32* %one
  %"$eq_call_3000" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2997", %Uint32 %"$m3_size_2998", %Uint32 %"$one_2999")
  store %TName_Bool* %"$eq_call_3000", %TName_Bool** %is_empty
  %"$gasrem_3001" = load i64, i64* @_gasrem
  %"$gascmp_3002" = icmp ugt i64 2, %"$gasrem_3001"
  br i1 %"$gascmp_3002", label %"$out_of_gas_3003", label %"$have_gas_3004"

"$out_of_gas_3003":                               ; preds = %"$have_gas_2995"
  call void @_out_of_gas()
  br label %"$have_gas_3004"

"$have_gas_3004":                                 ; preds = %"$out_of_gas_3003", %"$have_gas_2995"
  %"$consume_3005" = sub i64 %"$gasrem_3001", 2
  store i64 %"$consume_3005", i64* @_gasrem
  %"$is_empty_3007" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_3008" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3007", i32 0, i32 0
  %"$is_empty_tag_3009" = load i8, i8* %"$is_empty_tag_3008"
  switch i8 %"$is_empty_tag_3009", label %"$empty_default_3010" [
    i8 0, label %"$True_3011"
    i8 1, label %"$False_3013"
  ]

"$True_3011":                                     ; preds = %"$have_gas_3004"
  %"$is_empty_3012" = bitcast %TName_Bool* %"$is_empty_3007" to %CName_True*
  br label %"$matchsucc_3006"

"$False_3013":                                    ; preds = %"$have_gas_3004"
  %"$is_empty_3014" = bitcast %TName_Bool* %"$is_empty_3007" to %CName_False*
  %"$gasrem_3015" = load i64, i64* @_gasrem
  %"$gascmp_3016" = icmp ugt i64 1, %"$gasrem_3015"
  br i1 %"$gascmp_3016", label %"$out_of_gas_3017", label %"$have_gas_3018"

"$out_of_gas_3017":                               ; preds = %"$False_3013"
  call void @_out_of_gas()
  br label %"$have_gas_3018"

"$have_gas_3018":                                 ; preds = %"$out_of_gas_3017", %"$False_3013"
  %"$consume_3019" = sub i64 %"$gasrem_3015", 1
  store i64 %"$consume_3019", i64* @_gasrem
  %"$fail__sender_3020" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3020"
  %"$tname_3021" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_3020", %String %"$tname_3021")
  br label %"$matchsucc_3006"

"$empty_default_3010":                            ; preds = %"$have_gas_3004"
  br label %"$matchsucc_3006"

"$matchsucc_3006":                                ; preds = %"$have_gas_3018", %"$True_3011", %"$empty_default_3010"
  %"$gasrem_3022" = load i64, i64* @_gasrem
  %"$gascmp_3023" = icmp ugt i64 1, %"$gasrem_3022"
  br i1 %"$gascmp_3023", label %"$out_of_gas_3024", label %"$have_gas_3025"

"$out_of_gas_3024":                               ; preds = %"$matchsucc_3006"
  call void @_out_of_gas()
  br label %"$have_gas_3025"

"$have_gas_3025":                                 ; preds = %"$out_of_gas_3024", %"$matchsucc_3006"
  %"$consume_3026" = sub i64 %"$gasrem_3022", 1
  store i64 %"$consume_3026", i64* @_gasrem
  %e = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_3027" = load i64, i64* @_gasrem
  %"$gascmp_3028" = icmp ugt i64 1, %"$gasrem_3027"
  br i1 %"$gascmp_3028", label %"$out_of_gas_3029", label %"$have_gas_3030"

"$out_of_gas_3029":                               ; preds = %"$have_gas_3025"
  call void @_out_of_gas()
  br label %"$have_gas_3030"

"$have_gas_3030":                                 ; preds = %"$out_of_gas_3029", %"$have_gas_3025"
  %"$consume_3031" = sub i64 %"$gasrem_3027", 1
  store i64 %"$consume_3031", i64* @_gasrem
  %"$execptr_load_3032" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_3033" = call i8* @_new_empty_map(i8* %"$execptr_load_3032")
  %"$Emp_3034" = bitcast i8* %"$_new_empty_map_call_3033" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_3034", %"Map_String_Map_(String)_(String)"** %e
  %"$e_3035" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$$e_3035_3036" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3035" to i8*
  %"$_literal_cost_call_3037" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$e_3035_3036")
  %"$gasrem_3038" = load i64, i64* @_gasrem
  %"$gascmp_3039" = icmp ugt i64 %"$_literal_cost_call_3037", %"$gasrem_3038"
  br i1 %"$gascmp_3039", label %"$out_of_gas_3040", label %"$have_gas_3041"

"$out_of_gas_3040":                               ; preds = %"$have_gas_3030"
  call void @_out_of_gas()
  br label %"$have_gas_3041"

"$have_gas_3041":                                 ; preds = %"$out_of_gas_3040", %"$have_gas_3030"
  %"$consume_3042" = sub i64 %"$gasrem_3038", %"$_literal_cost_call_3037"
  store i64 %"$consume_3042", i64* @_gasrem
  %"$execptr_load_3043" = load i8*, i8** @_execptr
  %"$e_3045" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e
  %"$update_value_3046" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3045" to i8*
  call void @_update_field(i8* %"$execptr_load_3043", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_3044", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_3046")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_3048" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3049" = bitcast i8* %"$_amount_3048" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3049"
  %"$_sender_3050" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3051" = bitcast i8* %"$_sender_3050" to [20 x i8]*
  call void @"$t14_2945"(%Uint128 %_amount, [20 x i8]* %"$_sender_3051")
  ret void
}

define internal void @"$t15_3052"(%Uint128 %_amount, [20 x i8]* %"$_sender_3053") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3053"
  %"$gasrem_3054" = load i64, i64* @_gasrem
  %"$gascmp_3055" = icmp ugt i64 1, %"$gasrem_3054"
  br i1 %"$gascmp_3055", label %"$out_of_gas_3056", label %"$have_gas_3057"

"$out_of_gas_3056":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3057"

"$have_gas_3057":                                 ; preds = %"$out_of_gas_3056", %entry
  %"$consume_3058" = sub i64 %"$gasrem_3054", 1
  store i64 %"$consume_3058", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_3059" = load i64, i64* @_gasrem
  %"$gascmp_3060" = icmp ugt i64 1, %"$gasrem_3059"
  br i1 %"$gascmp_3060", label %"$out_of_gas_3061", label %"$have_gas_3062"

"$out_of_gas_3061":                               ; preds = %"$have_gas_3057"
  call void @_out_of_gas()
  br label %"$have_gas_3062"

"$have_gas_3062":                                 ; preds = %"$out_of_gas_3061", %"$have_gas_3057"
  %"$consume_3063" = sub i64 %"$gasrem_3059", 1
  store i64 %"$consume_3063", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3064", i32 0, i32 0), i32 3 }, %String* %tname
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_3065" = load i8*, i8** @_execptr
  %"$m3_3067" = call i8* @_fetch_field(i8* %"$execptr_load_3065", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3066", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_70", i32 0, i8* null, i32 1)
  %"$m3_3068" = bitcast i8* %"$m3_3067" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3068", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$m3_3069" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_3069_3070" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3069" to i8*
  %"$_literal_cost_call_3071" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_70", i8* %"$$m3_3069_3070")
  %"$m3_3072" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_3072_3073" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3072" to i8*
  %"$_mapsortcost_call_3074" = call i64 @_mapsortcost(i8* %"$$m3_3072_3073")
  %"$gasadd_3075" = add i64 %"$_literal_cost_call_3071", %"$_mapsortcost_call_3074"
  %"$gasrem_3076" = load i64, i64* @_gasrem
  %"$gascmp_3077" = icmp ugt i64 %"$gasadd_3075", %"$gasrem_3076"
  br i1 %"$gascmp_3077", label %"$out_of_gas_3078", label %"$have_gas_3079"

"$out_of_gas_3078":                               ; preds = %"$have_gas_3062"
  call void @_out_of_gas()
  br label %"$have_gas_3079"

"$have_gas_3079":                                 ; preds = %"$out_of_gas_3078", %"$have_gas_3062"
  %"$consume_3080" = sub i64 %"$gasrem_3076", %"$gasadd_3075"
  store i64 %"$consume_3080", i64* @_gasrem
  %"$gasrem_3081" = load i64, i64* @_gasrem
  %"$gascmp_3082" = icmp ugt i64 1, %"$gasrem_3081"
  br i1 %"$gascmp_3082", label %"$out_of_gas_3083", label %"$have_gas_3084"

"$out_of_gas_3083":                               ; preds = %"$have_gas_3079"
  call void @_out_of_gas()
  br label %"$have_gas_3084"

"$have_gas_3084":                                 ; preds = %"$out_of_gas_3083", %"$have_gas_3079"
  %"$consume_3085" = sub i64 %"$gasrem_3081", 1
  store i64 %"$consume_3085", i64* @_gasrem
  %m3_size = alloca %Uint32
  %"$m3_3086" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_3086_3087" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3086" to i8*
  %"$size_call_3088" = call %Uint32 @_size(i8* %"$$m3_3086_3087")
  store %Uint32 %"$size_call_3088", %Uint32* %m3_size
  %"$gasrem_3089" = load i64, i64* @_gasrem
  %"$gascmp_3090" = icmp ugt i64 1, %"$gasrem_3089"
  br i1 %"$gascmp_3090", label %"$out_of_gas_3091", label %"$have_gas_3092"

"$out_of_gas_3091":                               ; preds = %"$have_gas_3084"
  call void @_out_of_gas()
  br label %"$have_gas_3092"

"$have_gas_3092":                                 ; preds = %"$out_of_gas_3091", %"$have_gas_3084"
  %"$consume_3093" = sub i64 %"$gasrem_3089", 1
  store i64 %"$consume_3093", i64* @_gasrem
  %one = alloca %Uint32
  %"$gasrem_3094" = load i64, i64* @_gasrem
  %"$gascmp_3095" = icmp ugt i64 1, %"$gasrem_3094"
  br i1 %"$gascmp_3095", label %"$out_of_gas_3096", label %"$have_gas_3097"

"$out_of_gas_3096":                               ; preds = %"$have_gas_3092"
  call void @_out_of_gas()
  br label %"$have_gas_3097"

"$have_gas_3097":                                 ; preds = %"$out_of_gas_3096", %"$have_gas_3092"
  %"$consume_3098" = sub i64 %"$gasrem_3094", 1
  store i64 %"$consume_3098", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$gasrem_3099" = load i64, i64* @_gasrem
  %"$gascmp_3100" = icmp ugt i64 1, %"$gasrem_3099"
  br i1 %"$gascmp_3100", label %"$out_of_gas_3101", label %"$have_gas_3102"

"$out_of_gas_3101":                               ; preds = %"$have_gas_3097"
  call void @_out_of_gas()
  br label %"$have_gas_3102"

"$have_gas_3102":                                 ; preds = %"$out_of_gas_3101", %"$have_gas_3097"
  %"$consume_3103" = sub i64 %"$gasrem_3099", 1
  store i64 %"$consume_3103", i64* @_gasrem
  %is_one = alloca %TName_Bool*
  %"$execptr_load_3104" = load i8*, i8** @_execptr
  %"$m3_size_3105" = load %Uint32, %Uint32* %m3_size
  %"$one_3106" = load %Uint32, %Uint32* %one
  %"$eq_call_3107" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3104", %Uint32 %"$m3_size_3105", %Uint32 %"$one_3106")
  store %TName_Bool* %"$eq_call_3107", %TName_Bool** %is_one
  %"$gasrem_3108" = load i64, i64* @_gasrem
  %"$gascmp_3109" = icmp ugt i64 2, %"$gasrem_3108"
  br i1 %"$gascmp_3109", label %"$out_of_gas_3110", label %"$have_gas_3111"

"$out_of_gas_3110":                               ; preds = %"$have_gas_3102"
  call void @_out_of_gas()
  br label %"$have_gas_3111"

"$have_gas_3111":                                 ; preds = %"$out_of_gas_3110", %"$have_gas_3102"
  %"$consume_3112" = sub i64 %"$gasrem_3108", 2
  store i64 %"$consume_3112", i64* @_gasrem
  %"$is_one_3114" = load %TName_Bool*, %TName_Bool** %is_one
  %"$is_one_tag_3115" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_3114", i32 0, i32 0
  %"$is_one_tag_3116" = load i8, i8* %"$is_one_tag_3115"
  switch i8 %"$is_one_tag_3116", label %"$empty_default_3117" [
    i8 0, label %"$True_3118"
    i8 1, label %"$False_3120"
  ]

"$True_3118":                                     ; preds = %"$have_gas_3111"
  %"$is_one_3119" = bitcast %TName_Bool* %"$is_one_3114" to %CName_True*
  br label %"$matchsucc_3113"

"$False_3120":                                    ; preds = %"$have_gas_3111"
  %"$is_one_3121" = bitcast %TName_Bool* %"$is_one_3114" to %CName_False*
  %"$gasrem_3122" = load i64, i64* @_gasrem
  %"$gascmp_3123" = icmp ugt i64 1, %"$gasrem_3122"
  br i1 %"$gascmp_3123", label %"$out_of_gas_3124", label %"$have_gas_3125"

"$out_of_gas_3124":                               ; preds = %"$False_3120"
  call void @_out_of_gas()
  br label %"$have_gas_3125"

"$have_gas_3125":                                 ; preds = %"$out_of_gas_3124", %"$False_3120"
  %"$consume_3126" = sub i64 %"$gasrem_3122", 1
  store i64 %"$consume_3126", i64* @_gasrem
  %err = alloca %String
  %"$gasrem_3127" = load i64, i64* @_gasrem
  %"$gascmp_3128" = icmp ugt i64 1, %"$gasrem_3127"
  br i1 %"$gascmp_3128", label %"$out_of_gas_3129", label %"$have_gas_3130"

"$out_of_gas_3129":                               ; preds = %"$have_gas_3125"
  call void @_out_of_gas()
  br label %"$have_gas_3130"

"$have_gas_3130":                                 ; preds = %"$out_of_gas_3129", %"$have_gas_3125"
  %"$consume_3131" = sub i64 %"$gasrem_3127", 1
  store i64 %"$consume_3131", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_3132", i32 0, i32 0), i32 22 }, %String* %err
  %"$gasrem_3133" = load i64, i64* @_gasrem
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3130"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3130"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem
  %"$fail_msg__sender_3138" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3138"
  %"$tname_3139" = load %String, %String* %tname
  %"$err_3140" = load %String, %String* %err
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_3138", %String %"$tname_3139", %String %"$err_3140")
  br label %"$matchsucc_3113"

"$empty_default_3117":                            ; preds = %"$have_gas_3111"
  br label %"$matchsucc_3113"

"$matchsucc_3113":                                ; preds = %"$have_gas_3136", %"$True_3118", %"$empty_default_3117"
  %"$gasrem_3141" = load i64, i64* @_gasrem
  %"$gascmp_3142" = icmp ugt i64 1, %"$gasrem_3141"
  br i1 %"$gascmp_3142", label %"$out_of_gas_3143", label %"$have_gas_3144"

"$out_of_gas_3143":                               ; preds = %"$matchsucc_3113"
  call void @_out_of_gas()
  br label %"$have_gas_3144"

"$have_gas_3144":                                 ; preds = %"$out_of_gas_3143", %"$matchsucc_3113"
  %"$consume_3145" = sub i64 %"$gasrem_3141", 1
  store i64 %"$consume_3145", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_3146" = load i64, i64* @_gasrem
  %"$gascmp_3147" = icmp ugt i64 1, %"$gasrem_3146"
  br i1 %"$gascmp_3147", label %"$out_of_gas_3148", label %"$have_gas_3149"

"$out_of_gas_3148":                               ; preds = %"$have_gas_3144"
  call void @_out_of_gas()
  br label %"$have_gas_3149"

"$have_gas_3149":                                 ; preds = %"$out_of_gas_3148", %"$have_gas_3144"
  %"$consume_3150" = sub i64 %"$gasrem_3146", 1
  store i64 %"$consume_3150", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3151", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_3152" = load i64, i64* @_gasrem
  %"$gascmp_3153" = icmp ugt i64 1, %"$gasrem_3152"
  br i1 %"$gascmp_3153", label %"$out_of_gas_3154", label %"$have_gas_3155"

"$out_of_gas_3154":                               ; preds = %"$have_gas_3149"
  call void @_out_of_gas()
  br label %"$have_gas_3155"

"$have_gas_3155":                                 ; preds = %"$out_of_gas_3154", %"$have_gas_3149"
  %"$consume_3156" = sub i64 %"$gasrem_3152", 1
  store i64 %"$consume_3156", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_3157" = load i64, i64* @_gasrem
  %"$gascmp_3158" = icmp ugt i64 1, %"$gasrem_3157"
  br i1 %"$gascmp_3158", label %"$out_of_gas_3159", label %"$have_gas_3160"

"$out_of_gas_3159":                               ; preds = %"$have_gas_3155"
  call void @_out_of_gas()
  br label %"$have_gas_3160"

"$have_gas_3160":                                 ; preds = %"$out_of_gas_3159", %"$have_gas_3155"
  %"$consume_3161" = sub i64 %"$gasrem_3157", 1
  store i64 %"$consume_3161", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3162", i32 0, i32 0), i32 5 }, %String* %key2a
  %"$gasrem_3163" = load i64, i64* @_gasrem
  %"$gascmp_3164" = icmp ugt i64 1, %"$gasrem_3163"
  br i1 %"$gascmp_3164", label %"$out_of_gas_3165", label %"$have_gas_3166"

"$out_of_gas_3165":                               ; preds = %"$have_gas_3160"
  call void @_out_of_gas()
  br label %"$have_gas_3166"

"$have_gas_3166":                                 ; preds = %"$out_of_gas_3165", %"$have_gas_3160"
  %"$consume_3167" = sub i64 %"$gasrem_3163", 1
  store i64 %"$consume_3167", i64* @_gasrem
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  %"$execptr_load_3168" = load i8*, i8** @_execptr
  %"$m3_3169" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3
  %"$$m3_3169_3170" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3169" to i8*
  %"$get_key1a_3171" = alloca %String
  %"$key1a_3172" = load %String, %String* %key1a
  store %String %"$key1a_3172", %String* %"$get_key1a_3171"
  %"$$get_key1a_3171_3173" = bitcast %String* %"$get_key1a_3171" to i8*
  %"$get_call_3174" = call i8* @_get(i8* %"$execptr_load_3168", %_TyDescrTy_Typ* @"$TyDescr_Map_70", i8* %"$$m3_3169_3170", i8* %"$$get_key1a_3171_3173")
  %"$_get_3175" = bitcast i8* %"$get_call_3174" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$_get_3175", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o
  %"$gasrem_3176" = load i64, i64* @_gasrem
  %"$gascmp_3177" = icmp ugt i64 2, %"$gasrem_3176"
  br i1 %"$gascmp_3177", label %"$out_of_gas_3178", label %"$have_gas_3179"

"$out_of_gas_3178":                               ; preds = %"$have_gas_3166"
  call void @_out_of_gas()
  br label %"$have_gas_3179"

"$have_gas_3179":                                 ; preds = %"$out_of_gas_3178", %"$have_gas_3166"
  %"$consume_3180" = sub i64 %"$gasrem_3176", 2
  store i64 %"$consume_3180", i64* @_gasrem
  %"$m2o_3182" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o
  %"$m2o_tag_3183" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3182", i32 0, i32 0
  %"$m2o_tag_3184" = load i8, i8* %"$m2o_tag_3183"
  switch i8 %"$m2o_tag_3184", label %"$empty_default_3185" [
    i8 0, label %"$Some_3186"
    i8 1, label %"$None_3348"
  ]

"$Some_3186":                                     ; preds = %"$have_gas_3179"
  %"$m2o_3187" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3182" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_3188" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_3187", i32 0, i32 1
  %"$m2_load_3189" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_3188"
  %m2 = alloca %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_3189", %"Map_String_Map_(String)_(String)"** %m2
  %"$gasrem_3190" = load i64, i64* @_gasrem
  %"$gascmp_3191" = icmp ugt i64 1, %"$gasrem_3190"
  br i1 %"$gascmp_3191", label %"$out_of_gas_3192", label %"$have_gas_3193"

"$out_of_gas_3192":                               ; preds = %"$Some_3186"
  call void @_out_of_gas()
  br label %"$have_gas_3193"

"$have_gas_3193":                                 ; preds = %"$out_of_gas_3192", %"$Some_3186"
  %"$consume_3194" = sub i64 %"$gasrem_3190", 1
  store i64 %"$consume_3194", i64* @_gasrem
  %m2_size = alloca %Uint32
  %"$m2_3195" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_3195_3196" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3195" to i8*
  %"$size_call_3197" = call %Uint32 @_size(i8* %"$$m2_3195_3196")
  store %Uint32 %"$size_call_3197", %Uint32* %m2_size
  %"$gasrem_3198" = load i64, i64* @_gasrem
  %"$gascmp_3199" = icmp ugt i64 1, %"$gasrem_3198"
  br i1 %"$gascmp_3199", label %"$out_of_gas_3200", label %"$have_gas_3201"

"$out_of_gas_3200":                               ; preds = %"$have_gas_3193"
  call void @_out_of_gas()
  br label %"$have_gas_3201"

"$have_gas_3201":                                 ; preds = %"$out_of_gas_3200", %"$have_gas_3193"
  %"$consume_3202" = sub i64 %"$gasrem_3198", 1
  store i64 %"$consume_3202", i64* @_gasrem
  %is_one_1 = alloca %TName_Bool*
  %"$execptr_load_3203" = load i8*, i8** @_execptr
  %"$m2_size_3204" = load %Uint32, %Uint32* %m2_size
  %"$one_3205" = load %Uint32, %Uint32* %one
  %"$eq_call_3206" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3203", %Uint32 %"$m2_size_3204", %Uint32 %"$one_3205")
  store %TName_Bool* %"$eq_call_3206", %TName_Bool** %is_one_1
  %"$gasrem_3207" = load i64, i64* @_gasrem
  %"$gascmp_3208" = icmp ugt i64 2, %"$gasrem_3207"
  br i1 %"$gascmp_3208", label %"$out_of_gas_3209", label %"$have_gas_3210"

"$out_of_gas_3209":                               ; preds = %"$have_gas_3201"
  call void @_out_of_gas()
  br label %"$have_gas_3210"

"$have_gas_3210":                                 ; preds = %"$out_of_gas_3209", %"$have_gas_3201"
  %"$consume_3211" = sub i64 %"$gasrem_3207", 2
  store i64 %"$consume_3211", i64* @_gasrem
  %"$is_one_1_3213" = load %TName_Bool*, %TName_Bool** %is_one_1
  %"$is_one_1_tag_3214" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_3213", i32 0, i32 0
  %"$is_one_1_tag_3215" = load i8, i8* %"$is_one_1_tag_3214"
  switch i8 %"$is_one_1_tag_3215", label %"$empty_default_3216" [
    i8 0, label %"$True_3217"
    i8 1, label %"$False_3327"
  ]

"$True_3217":                                     ; preds = %"$have_gas_3210"
  %"$is_one_1_3218" = bitcast %TName_Bool* %"$is_one_1_3213" to %CName_True*
  %"$gasrem_3219" = load i64, i64* @_gasrem
  %"$gascmp_3220" = icmp ugt i64 1, %"$gasrem_3219"
  br i1 %"$gascmp_3220", label %"$out_of_gas_3221", label %"$have_gas_3222"

"$out_of_gas_3221":                               ; preds = %"$True_3217"
  call void @_out_of_gas()
  br label %"$have_gas_3222"

"$have_gas_3222":                                 ; preds = %"$out_of_gas_3221", %"$True_3217"
  %"$consume_3223" = sub i64 %"$gasrem_3219", 1
  store i64 %"$consume_3223", i64* @_gasrem
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*
  %"$execptr_load_3224" = load i8*, i8** @_execptr
  %"$m2_3225" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2
  %"$$m2_3225_3226" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3225" to i8*
  %"$get_key2a_3227" = alloca %String
  %"$key2a_3228" = load %String, %String* %key2a
  store %String %"$key2a_3228", %String* %"$get_key2a_3227"
  %"$$get_key2a_3227_3229" = bitcast %String* %"$get_key2a_3227" to i8*
  %"$get_call_3230" = call i8* @_get(i8* %"$execptr_load_3224", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m2_3225_3226", i8* %"$$get_key2a_3227_3229")
  %"$_get_3231" = bitcast i8* %"$get_call_3230" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$_get_3231", %"TName_Option_Map_(String)_(String)"** %m1o
  %"$gasrem_3232" = load i64, i64* @_gasrem
  %"$gascmp_3233" = icmp ugt i64 2, %"$gasrem_3232"
  br i1 %"$gascmp_3233", label %"$out_of_gas_3234", label %"$have_gas_3235"

"$out_of_gas_3234":                               ; preds = %"$have_gas_3222"
  call void @_out_of_gas()
  br label %"$have_gas_3235"

"$have_gas_3235":                                 ; preds = %"$out_of_gas_3234", %"$have_gas_3222"
  %"$consume_3236" = sub i64 %"$gasrem_3232", 2
  store i64 %"$consume_3236", i64* @_gasrem
  %"$m1o_3238" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o
  %"$m1o_tag_3239" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_3238", i32 0, i32 0
  %"$m1o_tag_3240" = load i8, i8* %"$m1o_tag_3239"
  switch i8 %"$m1o_tag_3240", label %"$empty_default_3241" [
    i8 0, label %"$Some_3242"
    i8 1, label %"$None_3306"
  ]

"$Some_3242":                                     ; preds = %"$have_gas_3235"
  %"$m1o_3243" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3238" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_3244" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_3243", i32 0, i32 1
  %"$m1_load_3245" = load %Map_String_String*, %Map_String_String** %"$m1_gep_3244"
  %m1 = alloca %Map_String_String*
  store %Map_String_String* %"$m1_load_3245", %Map_String_String** %m1
  %"$gasrem_3246" = load i64, i64* @_gasrem
  %"$gascmp_3247" = icmp ugt i64 1, %"$gasrem_3246"
  br i1 %"$gascmp_3247", label %"$out_of_gas_3248", label %"$have_gas_3249"

"$out_of_gas_3248":                               ; preds = %"$Some_3242"
  call void @_out_of_gas()
  br label %"$have_gas_3249"

"$have_gas_3249":                                 ; preds = %"$out_of_gas_3248", %"$Some_3242"
  %"$consume_3250" = sub i64 %"$gasrem_3246", 1
  store i64 %"$consume_3250", i64* @_gasrem
  %m1_size = alloca %Uint32
  %"$m1_3251" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_3251_3252" = bitcast %Map_String_String* %"$m1_3251" to i8*
  %"$size_call_3253" = call %Uint32 @_size(i8* %"$$m1_3251_3252")
  store %Uint32 %"$size_call_3253", %Uint32* %m1_size
  %"$gasrem_3254" = load i64, i64* @_gasrem
  %"$gascmp_3255" = icmp ugt i64 1, %"$gasrem_3254"
  br i1 %"$gascmp_3255", label %"$out_of_gas_3256", label %"$have_gas_3257"

"$out_of_gas_3256":                               ; preds = %"$have_gas_3249"
  call void @_out_of_gas()
  br label %"$have_gas_3257"

"$have_gas_3257":                                 ; preds = %"$out_of_gas_3256", %"$have_gas_3249"
  %"$consume_3258" = sub i64 %"$gasrem_3254", 1
  store i64 %"$consume_3258", i64* @_gasrem
  %zero = alloca %Uint32
  %"$gasrem_3259" = load i64, i64* @_gasrem
  %"$gascmp_3260" = icmp ugt i64 1, %"$gasrem_3259"
  br i1 %"$gascmp_3260", label %"$out_of_gas_3261", label %"$have_gas_3262"

"$out_of_gas_3261":                               ; preds = %"$have_gas_3257"
  call void @_out_of_gas()
  br label %"$have_gas_3262"

"$have_gas_3262":                                 ; preds = %"$out_of_gas_3261", %"$have_gas_3257"
  %"$consume_3263" = sub i64 %"$gasrem_3259", 1
  store i64 %"$consume_3263", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %zero
  %"$gasrem_3264" = load i64, i64* @_gasrem
  %"$gascmp_3265" = icmp ugt i64 1, %"$gasrem_3264"
  br i1 %"$gascmp_3265", label %"$out_of_gas_3266", label %"$have_gas_3267"

"$out_of_gas_3266":                               ; preds = %"$have_gas_3262"
  call void @_out_of_gas()
  br label %"$have_gas_3267"

"$have_gas_3267":                                 ; preds = %"$out_of_gas_3266", %"$have_gas_3262"
  %"$consume_3268" = sub i64 %"$gasrem_3264", 1
  store i64 %"$consume_3268", i64* @_gasrem
  %is_empty = alloca %TName_Bool*
  %"$execptr_load_3269" = load i8*, i8** @_execptr
  %"$m1_size_3270" = load %Uint32, %Uint32* %m1_size
  %"$zero_3271" = load %Uint32, %Uint32* %zero
  %"$eq_call_3272" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3269", %Uint32 %"$m1_size_3270", %Uint32 %"$zero_3271")
  store %TName_Bool* %"$eq_call_3272", %TName_Bool** %is_empty
  %"$gasrem_3273" = load i64, i64* @_gasrem
  %"$gascmp_3274" = icmp ugt i64 2, %"$gasrem_3273"
  br i1 %"$gascmp_3274", label %"$out_of_gas_3275", label %"$have_gas_3276"

"$out_of_gas_3275":                               ; preds = %"$have_gas_3267"
  call void @_out_of_gas()
  br label %"$have_gas_3276"

"$have_gas_3276":                                 ; preds = %"$out_of_gas_3275", %"$have_gas_3267"
  %"$consume_3277" = sub i64 %"$gasrem_3273", 2
  store i64 %"$consume_3277", i64* @_gasrem
  %"$is_empty_3279" = load %TName_Bool*, %TName_Bool** %is_empty
  %"$is_empty_tag_3280" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3279", i32 0, i32 0
  %"$is_empty_tag_3281" = load i8, i8* %"$is_empty_tag_3280"
  switch i8 %"$is_empty_tag_3281", label %"$empty_default_3282" [
    i8 0, label %"$True_3283"
    i8 1, label %"$False_3285"
  ]

"$True_3283":                                     ; preds = %"$have_gas_3276"
  %"$is_empty_3284" = bitcast %TName_Bool* %"$is_empty_3279" to %CName_True*
  br label %"$matchsucc_3278"

"$False_3285":                                    ; preds = %"$have_gas_3276"
  %"$is_empty_3286" = bitcast %TName_Bool* %"$is_empty_3279" to %CName_False*
  %"$gasrem_3287" = load i64, i64* @_gasrem
  %"$gascmp_3288" = icmp ugt i64 1, %"$gasrem_3287"
  br i1 %"$gascmp_3288", label %"$out_of_gas_3289", label %"$have_gas_3290"

"$out_of_gas_3289":                               ; preds = %"$False_3285"
  call void @_out_of_gas()
  br label %"$have_gas_3290"

"$have_gas_3290":                                 ; preds = %"$out_of_gas_3289", %"$False_3285"
  %"$consume_3291" = sub i64 %"$gasrem_3287", 1
  store i64 %"$consume_3291", i64* @_gasrem
  %err1 = alloca %String
  %"$gasrem_3292" = load i64, i64* @_gasrem
  %"$gascmp_3293" = icmp ugt i64 1, %"$gasrem_3292"
  br i1 %"$gascmp_3293", label %"$out_of_gas_3294", label %"$have_gas_3295"

"$out_of_gas_3294":                               ; preds = %"$have_gas_3290"
  call void @_out_of_gas()
  br label %"$have_gas_3295"

"$have_gas_3295":                                 ; preds = %"$out_of_gas_3294", %"$have_gas_3290"
  %"$consume_3296" = sub i64 %"$gasrem_3292", 1
  store i64 %"$consume_3296", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_3297", i32 0, i32 0), i32 36 }, %String* %err1
  %"$gasrem_3298" = load i64, i64* @_gasrem
  %"$gascmp_3299" = icmp ugt i64 1, %"$gasrem_3298"
  br i1 %"$gascmp_3299", label %"$out_of_gas_3300", label %"$have_gas_3301"

"$out_of_gas_3300":                               ; preds = %"$have_gas_3295"
  call void @_out_of_gas()
  br label %"$have_gas_3301"

"$have_gas_3301":                                 ; preds = %"$out_of_gas_3300", %"$have_gas_3295"
  %"$consume_3302" = sub i64 %"$gasrem_3298", 1
  store i64 %"$consume_3302", i64* @_gasrem
  %"$fail_msg__sender_3303" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3303"
  %"$tname_3304" = load %String, %String* %tname
  %"$err_3305" = load %String, %String* %err1
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_3303", %String %"$tname_3304", %String %"$err_3305")
  br label %"$matchsucc_3278"

"$empty_default_3282":                            ; preds = %"$have_gas_3276"
  br label %"$matchsucc_3278"

"$matchsucc_3278":                                ; preds = %"$have_gas_3301", %"$True_3283", %"$empty_default_3282"
  br label %"$matchsucc_3237"

"$None_3306":                                     ; preds = %"$have_gas_3235"
  %"$m1o_3307" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3238" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3308" = load i64, i64* @_gasrem
  %"$gascmp_3309" = icmp ugt i64 1, %"$gasrem_3308"
  br i1 %"$gascmp_3309", label %"$out_of_gas_3310", label %"$have_gas_3311"

"$out_of_gas_3310":                               ; preds = %"$None_3306"
  call void @_out_of_gas()
  br label %"$have_gas_3311"

"$have_gas_3311":                                 ; preds = %"$out_of_gas_3310", %"$None_3306"
  %"$consume_3312" = sub i64 %"$gasrem_3308", 1
  store i64 %"$consume_3312", i64* @_gasrem
  %err2 = alloca %String
  %"$gasrem_3313" = load i64, i64* @_gasrem
  %"$gascmp_3314" = icmp ugt i64 1, %"$gasrem_3313"
  br i1 %"$gascmp_3314", label %"$out_of_gas_3315", label %"$have_gas_3316"

"$out_of_gas_3315":                               ; preds = %"$have_gas_3311"
  call void @_out_of_gas()
  br label %"$have_gas_3316"

"$have_gas_3316":                                 ; preds = %"$out_of_gas_3315", %"$have_gas_3311"
  %"$consume_3317" = sub i64 %"$gasrem_3313", 1
  store i64 %"$consume_3317", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3318", i32 0, i32 0), i32 19 }, %String* %err2
  %"$gasrem_3319" = load i64, i64* @_gasrem
  %"$gascmp_3320" = icmp ugt i64 1, %"$gasrem_3319"
  br i1 %"$gascmp_3320", label %"$out_of_gas_3321", label %"$have_gas_3322"

"$out_of_gas_3321":                               ; preds = %"$have_gas_3316"
  call void @_out_of_gas()
  br label %"$have_gas_3322"

"$have_gas_3322":                                 ; preds = %"$out_of_gas_3321", %"$have_gas_3316"
  %"$consume_3323" = sub i64 %"$gasrem_3319", 1
  store i64 %"$consume_3323", i64* @_gasrem
  %"$fail_msg__sender_3324" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3324"
  %"$tname_3325" = load %String, %String* %tname
  %"$err_3326" = load %String, %String* %err2
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_3324", %String %"$tname_3325", %String %"$err_3326")
  br label %"$matchsucc_3237"

"$empty_default_3241":                            ; preds = %"$have_gas_3235"
  br label %"$matchsucc_3237"

"$matchsucc_3237":                                ; preds = %"$have_gas_3322", %"$matchsucc_3278", %"$empty_default_3241"
  br label %"$matchsucc_3212"

"$False_3327":                                    ; preds = %"$have_gas_3210"
  %"$is_one_1_3328" = bitcast %TName_Bool* %"$is_one_1_3213" to %CName_False*
  %"$gasrem_3329" = load i64, i64* @_gasrem
  %"$gascmp_3330" = icmp ugt i64 1, %"$gasrem_3329"
  br i1 %"$gascmp_3330", label %"$out_of_gas_3331", label %"$have_gas_3332"

"$out_of_gas_3331":                               ; preds = %"$False_3327"
  call void @_out_of_gas()
  br label %"$have_gas_3332"

"$have_gas_3332":                                 ; preds = %"$out_of_gas_3331", %"$False_3327"
  %"$consume_3333" = sub i64 %"$gasrem_3329", 1
  store i64 %"$consume_3333", i64* @_gasrem
  %err3 = alloca %String
  %"$gasrem_3334" = load i64, i64* @_gasrem
  %"$gascmp_3335" = icmp ugt i64 1, %"$gasrem_3334"
  br i1 %"$gascmp_3335", label %"$out_of_gas_3336", label %"$have_gas_3337"

"$out_of_gas_3336":                               ; preds = %"$have_gas_3332"
  call void @_out_of_gas()
  br label %"$have_gas_3337"

"$have_gas_3337":                                 ; preds = %"$out_of_gas_3336", %"$have_gas_3332"
  %"$consume_3338" = sub i64 %"$gasrem_3334", 1
  store i64 %"$consume_3338", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_3339", i32 0, i32 0), i32 28 }, %String* %err3
  %"$gasrem_3340" = load i64, i64* @_gasrem
  %"$gascmp_3341" = icmp ugt i64 1, %"$gasrem_3340"
  br i1 %"$gascmp_3341", label %"$out_of_gas_3342", label %"$have_gas_3343"

"$out_of_gas_3342":                               ; preds = %"$have_gas_3337"
  call void @_out_of_gas()
  br label %"$have_gas_3343"

"$have_gas_3343":                                 ; preds = %"$out_of_gas_3342", %"$have_gas_3337"
  %"$consume_3344" = sub i64 %"$gasrem_3340", 1
  store i64 %"$consume_3344", i64* @_gasrem
  %"$fail_msg__sender_3345" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3345"
  %"$tname_3346" = load %String, %String* %tname
  %"$err_3347" = load %String, %String* %err3
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_3345", %String %"$tname_3346", %String %"$err_3347")
  br label %"$matchsucc_3212"

"$empty_default_3216":                            ; preds = %"$have_gas_3210"
  br label %"$matchsucc_3212"

"$matchsucc_3212":                                ; preds = %"$have_gas_3343", %"$matchsucc_3237", %"$empty_default_3216"
  br label %"$matchsucc_3181"

"$None_3348":                                     ; preds = %"$have_gas_3179"
  %"$m2o_3349" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3182" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_3350" = load i64, i64* @_gasrem
  %"$gascmp_3351" = icmp ugt i64 1, %"$gasrem_3350"
  br i1 %"$gascmp_3351", label %"$out_of_gas_3352", label %"$have_gas_3353"

"$out_of_gas_3352":                               ; preds = %"$None_3348"
  call void @_out_of_gas()
  br label %"$have_gas_3353"

"$have_gas_3353":                                 ; preds = %"$out_of_gas_3352", %"$None_3348"
  %"$consume_3354" = sub i64 %"$gasrem_3350", 1
  store i64 %"$consume_3354", i64* @_gasrem
  %err4 = alloca %String
  %"$gasrem_3355" = load i64, i64* @_gasrem
  %"$gascmp_3356" = icmp ugt i64 1, %"$gasrem_3355"
  br i1 %"$gascmp_3356", label %"$out_of_gas_3357", label %"$have_gas_3358"

"$out_of_gas_3357":                               ; preds = %"$have_gas_3353"
  call void @_out_of_gas()
  br label %"$have_gas_3358"

"$have_gas_3358":                                 ; preds = %"$out_of_gas_3357", %"$have_gas_3353"
  %"$consume_3359" = sub i64 %"$gasrem_3355", 1
  store i64 %"$consume_3359", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3360", i32 0, i32 0), i32 19 }, %String* %err4
  %"$gasrem_3361" = load i64, i64* @_gasrem
  %"$gascmp_3362" = icmp ugt i64 1, %"$gasrem_3361"
  br i1 %"$gascmp_3362", label %"$out_of_gas_3363", label %"$have_gas_3364"

"$out_of_gas_3363":                               ; preds = %"$have_gas_3358"
  call void @_out_of_gas()
  br label %"$have_gas_3364"

"$have_gas_3364":                                 ; preds = %"$out_of_gas_3363", %"$have_gas_3358"
  %"$consume_3365" = sub i64 %"$gasrem_3361", 1
  store i64 %"$consume_3365", i64* @_gasrem
  %"$fail_msg__sender_3366" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3366"
  %"$tname_3367" = load %String, %String* %tname
  %"$err_3368" = load %String, %String* %err4
  call void @"$fail_msg_259"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__sender_3366", %String %"$tname_3367", %String %"$err_3368")
  br label %"$matchsucc_3181"

"$empty_default_3185":                            ; preds = %"$have_gas_3179"
  br label %"$matchsucc_3181"

"$matchsucc_3181":                                ; preds = %"$have_gas_3364", %"$matchsucc_3212", %"$empty_default_3185"
  %"$gasrem_3369" = load i64, i64* @_gasrem
  %"$gascmp_3370" = icmp ugt i64 1, %"$gasrem_3369"
  br i1 %"$gascmp_3370", label %"$out_of_gas_3371", label %"$have_gas_3372"

"$out_of_gas_3371":                               ; preds = %"$matchsucc_3181"
  call void @_out_of_gas()
  br label %"$have_gas_3372"

"$have_gas_3372":                                 ; preds = %"$out_of_gas_3371", %"$matchsucc_3181"
  %"$consume_3373" = sub i64 %"$gasrem_3369", 1
  store i64 %"$consume_3373", i64* @_gasrem
  %key1b = alloca %String
  %"$gasrem_3374" = load i64, i64* @_gasrem
  %"$gascmp_3375" = icmp ugt i64 1, %"$gasrem_3374"
  br i1 %"$gascmp_3375", label %"$out_of_gas_3376", label %"$have_gas_3377"

"$out_of_gas_3376":                               ; preds = %"$have_gas_3372"
  call void @_out_of_gas()
  br label %"$have_gas_3377"

"$have_gas_3377":                                 ; preds = %"$out_of_gas_3376", %"$have_gas_3372"
  %"$consume_3378" = sub i64 %"$gasrem_3374", 1
  store i64 %"$consume_3378", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3379", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$gasrem_3380" = load i64, i64* @_gasrem
  %"$gascmp_3381" = icmp ugt i64 1, %"$gasrem_3380"
  br i1 %"$gascmp_3381", label %"$out_of_gas_3382", label %"$have_gas_3383"

"$out_of_gas_3382":                               ; preds = %"$have_gas_3377"
  call void @_out_of_gas()
  br label %"$have_gas_3383"

"$have_gas_3383":                                 ; preds = %"$out_of_gas_3382", %"$have_gas_3377"
  %"$consume_3384" = sub i64 %"$gasrem_3380", 1
  store i64 %"$consume_3384", i64* @_gasrem
  %key2b = alloca %String
  %"$gasrem_3385" = load i64, i64* @_gasrem
  %"$gascmp_3386" = icmp ugt i64 1, %"$gasrem_3385"
  br i1 %"$gascmp_3386", label %"$out_of_gas_3387", label %"$have_gas_3388"

"$out_of_gas_3387":                               ; preds = %"$have_gas_3383"
  call void @_out_of_gas()
  br label %"$have_gas_3388"

"$have_gas_3388":                                 ; preds = %"$out_of_gas_3387", %"$have_gas_3383"
  %"$consume_3389" = sub i64 %"$gasrem_3385", 1
  store i64 %"$consume_3389", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3390", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$gasrem_3391" = load i64, i64* @_gasrem
  %"$gascmp_3392" = icmp ugt i64 1, %"$gasrem_3391"
  br i1 %"$gascmp_3392", label %"$out_of_gas_3393", label %"$have_gas_3394"

"$out_of_gas_3393":                               ; preds = %"$have_gas_3388"
  call void @_out_of_gas()
  br label %"$have_gas_3394"

"$have_gas_3394":                                 ; preds = %"$out_of_gas_3393", %"$have_gas_3388"
  %"$consume_3395" = sub i64 %"$gasrem_3391", 1
  store i64 %"$consume_3395", i64* @_gasrem
  %key1c = alloca %String
  %"$gasrem_3396" = load i64, i64* @_gasrem
  %"$gascmp_3397" = icmp ugt i64 1, %"$gasrem_3396"
  br i1 %"$gascmp_3397", label %"$out_of_gas_3398", label %"$have_gas_3399"

"$out_of_gas_3398":                               ; preds = %"$have_gas_3394"
  call void @_out_of_gas()
  br label %"$have_gas_3399"

"$have_gas_3399":                                 ; preds = %"$out_of_gas_3398", %"$have_gas_3394"
  %"$consume_3400" = sub i64 %"$gasrem_3396", 1
  store i64 %"$consume_3400", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3401", i32 0, i32 0), i32 5 }, %String* %key1c
  %"$gasrem_3402" = load i64, i64* @_gasrem
  %"$gascmp_3403" = icmp ugt i64 1, %"$gasrem_3402"
  br i1 %"$gascmp_3403", label %"$out_of_gas_3404", label %"$have_gas_3405"

"$out_of_gas_3404":                               ; preds = %"$have_gas_3399"
  call void @_out_of_gas()
  br label %"$have_gas_3405"

"$have_gas_3405":                                 ; preds = %"$out_of_gas_3404", %"$have_gas_3399"
  %"$consume_3406" = sub i64 %"$gasrem_3402", 1
  store i64 %"$consume_3406", i64* @_gasrem
  %key2c = alloca %String
  %"$gasrem_3407" = load i64, i64* @_gasrem
  %"$gascmp_3408" = icmp ugt i64 1, %"$gasrem_3407"
  br i1 %"$gascmp_3408", label %"$out_of_gas_3409", label %"$have_gas_3410"

"$out_of_gas_3409":                               ; preds = %"$have_gas_3405"
  call void @_out_of_gas()
  br label %"$have_gas_3410"

"$have_gas_3410":                                 ; preds = %"$out_of_gas_3409", %"$have_gas_3405"
  %"$consume_3411" = sub i64 %"$gasrem_3407", 1
  store i64 %"$consume_3411", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3412", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$gasrem_3413" = load i64, i64* @_gasrem
  %"$gascmp_3414" = icmp ugt i64 1, %"$gasrem_3413"
  br i1 %"$gascmp_3414", label %"$out_of_gas_3415", label %"$have_gas_3416"

"$out_of_gas_3415":                               ; preds = %"$have_gas_3410"
  call void @_out_of_gas()
  br label %"$have_gas_3416"

"$have_gas_3416":                                 ; preds = %"$out_of_gas_3415", %"$have_gas_3410"
  %"$consume_3417" = sub i64 %"$gasrem_3413", 1
  store i64 %"$consume_3417", i64* @_gasrem
  %key1d = alloca %String
  %"$gasrem_3418" = load i64, i64* @_gasrem
  %"$gascmp_3419" = icmp ugt i64 1, %"$gasrem_3418"
  br i1 %"$gascmp_3419", label %"$out_of_gas_3420", label %"$have_gas_3421"

"$out_of_gas_3420":                               ; preds = %"$have_gas_3416"
  call void @_out_of_gas()
  br label %"$have_gas_3421"

"$have_gas_3421":                                 ; preds = %"$out_of_gas_3420", %"$have_gas_3416"
  %"$consume_3422" = sub i64 %"$gasrem_3418", 1
  store i64 %"$consume_3422", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3423", i32 0, i32 0), i32 5 }, %String* %key1d
  %"$gasrem_3424" = load i64, i64* @_gasrem
  %"$gascmp_3425" = icmp ugt i64 1, %"$gasrem_3424"
  br i1 %"$gascmp_3425", label %"$out_of_gas_3426", label %"$have_gas_3427"

"$out_of_gas_3426":                               ; preds = %"$have_gas_3421"
  call void @_out_of_gas()
  br label %"$have_gas_3427"

"$have_gas_3427":                                 ; preds = %"$out_of_gas_3426", %"$have_gas_3421"
  %"$consume_3428" = sub i64 %"$gasrem_3424", 1
  store i64 %"$consume_3428", i64* @_gasrem
  %key2d = alloca %String
  %"$gasrem_3429" = load i64, i64* @_gasrem
  %"$gascmp_3430" = icmp ugt i64 1, %"$gasrem_3429"
  br i1 %"$gascmp_3430", label %"$out_of_gas_3431", label %"$have_gas_3432"

"$out_of_gas_3431":                               ; preds = %"$have_gas_3427"
  call void @_out_of_gas()
  br label %"$have_gas_3432"

"$have_gas_3432":                                 ; preds = %"$out_of_gas_3431", %"$have_gas_3427"
  %"$consume_3433" = sub i64 %"$gasrem_3429", 1
  store i64 %"$consume_3433", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3434", i32 0, i32 0), i32 5 }, %String* %key2d
  %"$gasrem_3435" = load i64, i64* @_gasrem
  %"$gascmp_3436" = icmp ugt i64 1, %"$gasrem_3435"
  br i1 %"$gascmp_3436", label %"$out_of_gas_3437", label %"$have_gas_3438"

"$out_of_gas_3437":                               ; preds = %"$have_gas_3432"
  call void @_out_of_gas()
  br label %"$have_gas_3438"

"$have_gas_3438":                                 ; preds = %"$out_of_gas_3437", %"$have_gas_3432"
  %"$consume_3439" = sub i64 %"$gasrem_3435", 1
  store i64 %"$consume_3439", i64* @_gasrem
  %v1 = alloca %String
  %"$gasrem_3440" = load i64, i64* @_gasrem
  %"$gascmp_3441" = icmp ugt i64 1, %"$gasrem_3440"
  br i1 %"$gascmp_3441", label %"$out_of_gas_3442", label %"$have_gas_3443"

"$out_of_gas_3442":                               ; preds = %"$have_gas_3438"
  call void @_out_of_gas()
  br label %"$have_gas_3443"

"$have_gas_3443":                                 ; preds = %"$out_of_gas_3442", %"$have_gas_3438"
  %"$consume_3444" = sub i64 %"$gasrem_3440", 1
  store i64 %"$consume_3444", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3445", i32 0, i32 0), i32 3 }, %String* %v1
  %"$gasrem_3446" = load i64, i64* @_gasrem
  %"$gascmp_3447" = icmp ugt i64 1, %"$gasrem_3446"
  br i1 %"$gascmp_3447", label %"$out_of_gas_3448", label %"$have_gas_3449"

"$out_of_gas_3448":                               ; preds = %"$have_gas_3443"
  call void @_out_of_gas()
  br label %"$have_gas_3449"

"$have_gas_3449":                                 ; preds = %"$out_of_gas_3448", %"$have_gas_3443"
  %"$consume_3450" = sub i64 %"$gasrem_3446", 1
  store i64 %"$consume_3450", i64* @_gasrem
  %v2 = alloca %String
  %"$gasrem_3451" = load i64, i64* @_gasrem
  %"$gascmp_3452" = icmp ugt i64 1, %"$gasrem_3451"
  br i1 %"$gascmp_3452", label %"$out_of_gas_3453", label %"$have_gas_3454"

"$out_of_gas_3453":                               ; preds = %"$have_gas_3449"
  call void @_out_of_gas()
  br label %"$have_gas_3454"

"$have_gas_3454":                                 ; preds = %"$out_of_gas_3453", %"$have_gas_3449"
  %"$consume_3455" = sub i64 %"$gasrem_3451", 1
  store i64 %"$consume_3455", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3456", i32 0, i32 0), i32 3 }, %String* %v2
  %"$gasrem_3457" = load i64, i64* @_gasrem
  %"$gascmp_3458" = icmp ugt i64 1, %"$gasrem_3457"
  br i1 %"$gascmp_3458", label %"$out_of_gas_3459", label %"$have_gas_3460"

"$out_of_gas_3459":                               ; preds = %"$have_gas_3454"
  call void @_out_of_gas()
  br label %"$have_gas_3460"

"$have_gas_3460":                                 ; preds = %"$out_of_gas_3459", %"$have_gas_3454"
  %"$consume_3461" = sub i64 %"$gasrem_3457", 1
  store i64 %"$consume_3461", i64* @_gasrem
  %v3 = alloca %String
  %"$gasrem_3462" = load i64, i64* @_gasrem
  %"$gascmp_3463" = icmp ugt i64 1, %"$gasrem_3462"
  br i1 %"$gascmp_3463", label %"$out_of_gas_3464", label %"$have_gas_3465"

"$out_of_gas_3464":                               ; preds = %"$have_gas_3460"
  call void @_out_of_gas()
  br label %"$have_gas_3465"

"$have_gas_3465":                                 ; preds = %"$out_of_gas_3464", %"$have_gas_3460"
  %"$consume_3466" = sub i64 %"$gasrem_3462", 1
  store i64 %"$consume_3466", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3467", i32 0, i32 0), i32 3 }, %String* %v3
  %"$gasrem_3468" = load i64, i64* @_gasrem
  %"$gascmp_3469" = icmp ugt i64 1, %"$gasrem_3468"
  br i1 %"$gascmp_3469", label %"$out_of_gas_3470", label %"$have_gas_3471"

"$out_of_gas_3470":                               ; preds = %"$have_gas_3465"
  call void @_out_of_gas()
  br label %"$have_gas_3471"

"$have_gas_3471":                                 ; preds = %"$out_of_gas_3470", %"$have_gas_3465"
  %"$consume_3472" = sub i64 %"$gasrem_3468", 1
  store i64 %"$consume_3472", i64* @_gasrem
  %v4 = alloca %String
  %"$gasrem_3473" = load i64, i64* @_gasrem
  %"$gascmp_3474" = icmp ugt i64 1, %"$gasrem_3473"
  br i1 %"$gascmp_3474", label %"$out_of_gas_3475", label %"$have_gas_3476"

"$out_of_gas_3475":                               ; preds = %"$have_gas_3471"
  call void @_out_of_gas()
  br label %"$have_gas_3476"

"$have_gas_3476":                                 ; preds = %"$out_of_gas_3475", %"$have_gas_3471"
  %"$consume_3477" = sub i64 %"$gasrem_3473", 1
  store i64 %"$consume_3477", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3478", i32 0, i32 0), i32 3 }, %String* %v4
  %"$gasrem_3479" = load i64, i64* @_gasrem
  %"$gascmp_3480" = icmp ugt i64 1, %"$gasrem_3479"
  br i1 %"$gascmp_3480", label %"$out_of_gas_3481", label %"$have_gas_3482"

"$out_of_gas_3481":                               ; preds = %"$have_gas_3476"
  call void @_out_of_gas()
  br label %"$have_gas_3482"

"$have_gas_3482":                                 ; preds = %"$out_of_gas_3481", %"$have_gas_3476"
  %"$consume_3483" = sub i64 %"$gasrem_3479", 1
  store i64 %"$consume_3483", i64* @_gasrem
  %m25 = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_3484" = load i64, i64* @_gasrem
  %"$gascmp_3485" = icmp ugt i64 1, %"$gasrem_3484"
  br i1 %"$gascmp_3485", label %"$out_of_gas_3486", label %"$have_gas_3487"

"$out_of_gas_3486":                               ; preds = %"$have_gas_3482"
  call void @_out_of_gas()
  br label %"$have_gas_3487"

"$have_gas_3487":                                 ; preds = %"$out_of_gas_3486", %"$have_gas_3482"
  %"$consume_3488" = sub i64 %"$gasrem_3484", 1
  store i64 %"$consume_3488", i64* @_gasrem
  %"$execptr_load_3489" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_3490" = call i8* @_new_empty_map(i8* %"$execptr_load_3489")
  %"$Emp_3491" = bitcast i8* %"$_new_empty_map_call_3490" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$Emp_3491", %"Map_String_Map_(String)_(String)"** %m25
  %"$gasrem_3492" = load i64, i64* @_gasrem
  %"$gascmp_3493" = icmp ugt i64 1, %"$gasrem_3492"
  br i1 %"$gascmp_3493", label %"$out_of_gas_3494", label %"$have_gas_3495"

"$out_of_gas_3494":                               ; preds = %"$have_gas_3487"
  call void @_out_of_gas()
  br label %"$have_gas_3495"

"$have_gas_3495":                                 ; preds = %"$out_of_gas_3494", %"$have_gas_3487"
  %"$consume_3496" = sub i64 %"$gasrem_3492", 1
  store i64 %"$consume_3496", i64* @_gasrem
  %m16 = alloca %Map_String_String*
  %"$gasrem_3497" = load i64, i64* @_gasrem
  %"$gascmp_3498" = icmp ugt i64 1, %"$gasrem_3497"
  br i1 %"$gascmp_3498", label %"$out_of_gas_3499", label %"$have_gas_3500"

"$out_of_gas_3499":                               ; preds = %"$have_gas_3495"
  call void @_out_of_gas()
  br label %"$have_gas_3500"

"$have_gas_3500":                                 ; preds = %"$out_of_gas_3499", %"$have_gas_3495"
  %"$consume_3501" = sub i64 %"$gasrem_3497", 1
  store i64 %"$consume_3501", i64* @_gasrem
  %"$execptr_load_3502" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_3503" = call i8* @_new_empty_map(i8* %"$execptr_load_3502")
  %"$Emp_3504" = bitcast i8* %"$_new_empty_map_call_3503" to %Map_String_String*
  store %Map_String_String* %"$Emp_3504", %Map_String_String** %m16
  %"$gasrem_3505" = load i64, i64* @_gasrem
  %"$gascmp_3506" = icmp ugt i64 1, %"$gasrem_3505"
  br i1 %"$gascmp_3506", label %"$out_of_gas_3507", label %"$have_gas_3508"

"$out_of_gas_3507":                               ; preds = %"$have_gas_3500"
  call void @_out_of_gas()
  br label %"$have_gas_3508"

"$have_gas_3508":                                 ; preds = %"$out_of_gas_3507", %"$have_gas_3500"
  %"$consume_3509" = sub i64 %"$gasrem_3505", 1
  store i64 %"$consume_3509", i64* @_gasrem
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*
  %"$gasrem_3510" = load i64, i64* @_gasrem
  %"$gascmp_3511" = icmp ugt i64 1, %"$gasrem_3510"
  br i1 %"$gascmp_3511", label %"$out_of_gas_3512", label %"$have_gas_3513"

"$out_of_gas_3512":                               ; preds = %"$have_gas_3508"
  call void @_out_of_gas()
  br label %"$have_gas_3513"

"$have_gas_3513":                                 ; preds = %"$out_of_gas_3512", %"$have_gas_3508"
  %"$consume_3514" = sub i64 %"$gasrem_3510", 1
  store i64 %"$consume_3514", i64* @_gasrem
  %m21 = alloca %Map_String_String*
  %"$execptr_load_3515" = load i8*, i8** @_execptr
  %"$m1_3516" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_3516_3517" = bitcast %Map_String_String* %"$m1_3516" to i8*
  %"$put_key2a_3518" = alloca %String
  %"$key2a_3519" = load %String, %String* %key2a
  store %String %"$key2a_3519", %String* %"$put_key2a_3518"
  %"$$put_key2a_3518_3520" = bitcast %String* %"$put_key2a_3518" to i8*
  %"$put_v1_3521" = alloca %String
  %"$v1_3522" = load %String, %String* %v1
  store %String %"$v1_3522", %String* %"$put_v1_3521"
  %"$$put_v1_3521_3523" = bitcast %String* %"$put_v1_3521" to i8*
  %"$put_call_3524" = call i8* @_put(i8* %"$execptr_load_3515", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_3516_3517", i8* %"$$put_key2a_3518_3520", i8* %"$$put_v1_3521_3523")
  %"$_put_3525" = bitcast i8* %"$put_call_3524" to %Map_String_String*
  store %Map_String_String* %"$_put_3525", %Map_String_String** %m21
  %"$gasrem_3526" = load i64, i64* @_gasrem
  %"$gascmp_3527" = icmp ugt i64 1, %"$gasrem_3526"
  br i1 %"$gascmp_3527", label %"$out_of_gas_3528", label %"$have_gas_3529"

"$out_of_gas_3528":                               ; preds = %"$have_gas_3513"
  call void @_out_of_gas()
  br label %"$have_gas_3529"

"$have_gas_3529":                                 ; preds = %"$out_of_gas_3528", %"$have_gas_3513"
  %"$consume_3530" = sub i64 %"$gasrem_3526", 1
  store i64 %"$consume_3530", i64* @_gasrem
  %m22 = alloca %Map_String_String*
  %"$execptr_load_3531" = load i8*, i8** @_execptr
  %"$m1_3532" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_3532_3533" = bitcast %Map_String_String* %"$m1_3532" to i8*
  %"$put_key2b_3534" = alloca %String
  %"$key2b_3535" = load %String, %String* %key2b
  store %String %"$key2b_3535", %String* %"$put_key2b_3534"
  %"$$put_key2b_3534_3536" = bitcast %String* %"$put_key2b_3534" to i8*
  %"$put_v2_3537" = alloca %String
  %"$v2_3538" = load %String, %String* %v2
  store %String %"$v2_3538", %String* %"$put_v2_3537"
  %"$$put_v2_3537_3539" = bitcast %String* %"$put_v2_3537" to i8*
  %"$put_call_3540" = call i8* @_put(i8* %"$execptr_load_3531", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_3532_3533", i8* %"$$put_key2b_3534_3536", i8* %"$$put_v2_3537_3539")
  %"$_put_3541" = bitcast i8* %"$put_call_3540" to %Map_String_String*
  store %Map_String_String* %"$_put_3541", %Map_String_String** %m22
  %"$gasrem_3542" = load i64, i64* @_gasrem
  %"$gascmp_3543" = icmp ugt i64 1, %"$gasrem_3542"
  br i1 %"$gascmp_3543", label %"$out_of_gas_3544", label %"$have_gas_3545"

"$out_of_gas_3544":                               ; preds = %"$have_gas_3529"
  call void @_out_of_gas()
  br label %"$have_gas_3545"

"$have_gas_3545":                                 ; preds = %"$out_of_gas_3544", %"$have_gas_3529"
  %"$consume_3546" = sub i64 %"$gasrem_3542", 1
  store i64 %"$consume_3546", i64* @_gasrem
  %m23 = alloca %Map_String_String*
  %"$execptr_load_3547" = load i8*, i8** @_execptr
  %"$m1_3548" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_3548_3549" = bitcast %Map_String_String* %"$m1_3548" to i8*
  %"$put_key2c_3550" = alloca %String
  %"$key2c_3551" = load %String, %String* %key2c
  store %String %"$key2c_3551", %String* %"$put_key2c_3550"
  %"$$put_key2c_3550_3552" = bitcast %String* %"$put_key2c_3550" to i8*
  %"$put_v3_3553" = alloca %String
  %"$v3_3554" = load %String, %String* %v3
  store %String %"$v3_3554", %String* %"$put_v3_3553"
  %"$$put_v3_3553_3555" = bitcast %String* %"$put_v3_3553" to i8*
  %"$put_call_3556" = call i8* @_put(i8* %"$execptr_load_3547", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_3548_3549", i8* %"$$put_key2c_3550_3552", i8* %"$$put_v3_3553_3555")
  %"$_put_3557" = bitcast i8* %"$put_call_3556" to %Map_String_String*
  store %Map_String_String* %"$_put_3557", %Map_String_String** %m23
  %"$gasrem_3558" = load i64, i64* @_gasrem
  %"$gascmp_3559" = icmp ugt i64 1, %"$gasrem_3558"
  br i1 %"$gascmp_3559", label %"$out_of_gas_3560", label %"$have_gas_3561"

"$out_of_gas_3560":                               ; preds = %"$have_gas_3545"
  call void @_out_of_gas()
  br label %"$have_gas_3561"

"$have_gas_3561":                                 ; preds = %"$out_of_gas_3560", %"$have_gas_3545"
  %"$consume_3562" = sub i64 %"$gasrem_3558", 1
  store i64 %"$consume_3562", i64* @_gasrem
  %m24 = alloca %Map_String_String*
  %"$execptr_load_3563" = load i8*, i8** @_execptr
  %"$m1_3564" = load %Map_String_String*, %Map_String_String** %m16
  %"$$m1_3564_3565" = bitcast %Map_String_String* %"$m1_3564" to i8*
  %"$put_key2d_3566" = alloca %String
  %"$key2d_3567" = load %String, %String* %key2d
  store %String %"$key2d_3567", %String* %"$put_key2d_3566"
  %"$$put_key2d_3566_3568" = bitcast %String* %"$put_key2d_3566" to i8*
  %"$put_v4_3569" = alloca %String
  %"$v4_3570" = load %String, %String* %v4
  store %String %"$v4_3570", %String* %"$put_v4_3569"
  %"$$put_v4_3569_3571" = bitcast %String* %"$put_v4_3569" to i8*
  %"$put_call_3572" = call i8* @_put(i8* %"$execptr_load_3563", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_3564_3565", i8* %"$$put_key2d_3566_3568", i8* %"$$put_v4_3569_3571")
  %"$_put_3573" = bitcast i8* %"$put_call_3572" to %Map_String_String*
  store %Map_String_String* %"$_put_3573", %Map_String_String** %m24
  %"$gasrem_3574" = load i64, i64* @_gasrem
  %"$gascmp_3575" = icmp ugt i64 1, %"$gasrem_3574"
  br i1 %"$gascmp_3575", label %"$out_of_gas_3576", label %"$have_gas_3577"

"$out_of_gas_3576":                               ; preds = %"$have_gas_3561"
  call void @_out_of_gas()
  br label %"$have_gas_3577"

"$have_gas_3577":                                 ; preds = %"$out_of_gas_3576", %"$have_gas_3561"
  %"$consume_3578" = sub i64 %"$gasrem_3574", 1
  store i64 %"$consume_3578", i64* @_gasrem
  %m11 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_3579" = load i8*, i8** @_execptr
  %"$m2_3580" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25
  %"$$m2_3580_3581" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3580" to i8*
  %"$put_key1a_3582" = alloca %String
  %"$key1a_3583" = load %String, %String* %key1a
  store %String %"$key1a_3583", %String* %"$put_key1a_3582"
  %"$$put_key1a_3582_3584" = bitcast %String* %"$put_key1a_3582" to i8*
  %"$m21_3585" = load %Map_String_String*, %Map_String_String** %m21
  %"$$m21_3585_3586" = bitcast %Map_String_String* %"$m21_3585" to i8*
  %"$put_call_3587" = call i8* @_put(i8* %"$execptr_load_3579", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m2_3580_3581", i8* %"$$put_key1a_3582_3584", i8* %"$$m21_3585_3586")
  %"$_put_3588" = bitcast i8* %"$put_call_3587" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_3588", %"Map_String_Map_(String)_(String)"** %m11
  %"$gasrem_3589" = load i64, i64* @_gasrem
  %"$gascmp_3590" = icmp ugt i64 1, %"$gasrem_3589"
  br i1 %"$gascmp_3590", label %"$out_of_gas_3591", label %"$have_gas_3592"

"$out_of_gas_3591":                               ; preds = %"$have_gas_3577"
  call void @_out_of_gas()
  br label %"$have_gas_3592"

"$have_gas_3592":                                 ; preds = %"$out_of_gas_3591", %"$have_gas_3577"
  %"$consume_3593" = sub i64 %"$gasrem_3589", 1
  store i64 %"$consume_3593", i64* @_gasrem
  %m12 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_3594" = load i8*, i8** @_execptr
  %"$m11_3595" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11
  %"$$m11_3595_3596" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_3595" to i8*
  %"$put_key1b_3597" = alloca %String
  %"$key1b_3598" = load %String, %String* %key1b
  store %String %"$key1b_3598", %String* %"$put_key1b_3597"
  %"$$put_key1b_3597_3599" = bitcast %String* %"$put_key1b_3597" to i8*
  %"$m22_3600" = load %Map_String_String*, %Map_String_String** %m22
  %"$$m22_3600_3601" = bitcast %Map_String_String* %"$m22_3600" to i8*
  %"$put_call_3602" = call i8* @_put(i8* %"$execptr_load_3594", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m11_3595_3596", i8* %"$$put_key1b_3597_3599", i8* %"$$m22_3600_3601")
  %"$_put_3603" = bitcast i8* %"$put_call_3602" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_3603", %"Map_String_Map_(String)_(String)"** %m12
  %"$gasrem_3604" = load i64, i64* @_gasrem
  %"$gascmp_3605" = icmp ugt i64 1, %"$gasrem_3604"
  br i1 %"$gascmp_3605", label %"$out_of_gas_3606", label %"$have_gas_3607"

"$out_of_gas_3606":                               ; preds = %"$have_gas_3592"
  call void @_out_of_gas()
  br label %"$have_gas_3607"

"$have_gas_3607":                                 ; preds = %"$out_of_gas_3606", %"$have_gas_3592"
  %"$consume_3608" = sub i64 %"$gasrem_3604", 1
  store i64 %"$consume_3608", i64* @_gasrem
  %m13 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_3609" = load i8*, i8** @_execptr
  %"$m12_3610" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12
  %"$$m12_3610_3611" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_3610" to i8*
  %"$put_key1c_3612" = alloca %String
  %"$key1c_3613" = load %String, %String* %key1c
  store %String %"$key1c_3613", %String* %"$put_key1c_3612"
  %"$$put_key1c_3612_3614" = bitcast %String* %"$put_key1c_3612" to i8*
  %"$m23_3615" = load %Map_String_String*, %Map_String_String** %m23
  %"$$m23_3615_3616" = bitcast %Map_String_String* %"$m23_3615" to i8*
  %"$put_call_3617" = call i8* @_put(i8* %"$execptr_load_3609", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m12_3610_3611", i8* %"$$put_key1c_3612_3614", i8* %"$$m23_3615_3616")
  %"$_put_3618" = bitcast i8* %"$put_call_3617" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_3618", %"Map_String_Map_(String)_(String)"** %m13
  %"$gasrem_3619" = load i64, i64* @_gasrem
  %"$gascmp_3620" = icmp ugt i64 1, %"$gasrem_3619"
  br i1 %"$gascmp_3620", label %"$out_of_gas_3621", label %"$have_gas_3622"

"$out_of_gas_3621":                               ; preds = %"$have_gas_3607"
  call void @_out_of_gas()
  br label %"$have_gas_3622"

"$have_gas_3622":                                 ; preds = %"$out_of_gas_3621", %"$have_gas_3607"
  %"$consume_3623" = sub i64 %"$gasrem_3619", 1
  store i64 %"$consume_3623", i64* @_gasrem
  %m14 = alloca %"Map_String_Map_(String)_(String)"*
  %"$execptr_load_3624" = load i8*, i8** @_execptr
  %"$m13_3625" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13
  %"$$m13_3625_3626" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_3625" to i8*
  %"$put_key1d_3627" = alloca %String
  %"$key1d_3628" = load %String, %String* %key1d
  store %String %"$key1d_3628", %String* %"$put_key1d_3627"
  %"$$put_key1d_3627_3629" = bitcast %String* %"$put_key1d_3627" to i8*
  %"$m24_3630" = load %Map_String_String*, %Map_String_String** %m24
  %"$$m24_3630_3631" = bitcast %Map_String_String* %"$m24_3630" to i8*
  %"$put_call_3632" = call i8* @_put(i8* %"$execptr_load_3624", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m13_3625_3626", i8* %"$$put_key1d_3627_3629", i8* %"$$m24_3630_3631")
  %"$_put_3633" = bitcast i8* %"$put_call_3632" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_put_3633", %"Map_String_Map_(String)_(String)"** %m14
  %"$gasrem_3634" = load i64, i64* @_gasrem
  %"$gascmp_3635" = icmp ugt i64 1, %"$gasrem_3634"
  br i1 %"$gascmp_3635", label %"$out_of_gas_3636", label %"$have_gas_3637"

"$out_of_gas_3636":                               ; preds = %"$have_gas_3622"
  call void @_out_of_gas()
  br label %"$have_gas_3637"

"$have_gas_3637":                                 ; preds = %"$out_of_gas_3636", %"$have_gas_3622"
  %"$consume_3638" = sub i64 %"$gasrem_3634", 1
  store i64 %"$consume_3638", i64* @_gasrem
  %"$m14_3639" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14
  store %"Map_String_Map_(String)_(String)"* %"$m14_3639", %"Map_String_Map_(String)_(String)"** %m2_full
  %"$m2_full_3640" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full
  %"$$m2_full_3640_3641" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_3640" to i8*
  %"$_literal_cost_call_3642" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m2_full_3640_3641")
  %"$gasrem_3643" = load i64, i64* @_gasrem
  %"$gascmp_3644" = icmp ugt i64 %"$_literal_cost_call_3642", %"$gasrem_3643"
  br i1 %"$gascmp_3644", label %"$out_of_gas_3645", label %"$have_gas_3646"

"$out_of_gas_3645":                               ; preds = %"$have_gas_3637"
  call void @_out_of_gas()
  br label %"$have_gas_3646"

"$have_gas_3646":                                 ; preds = %"$out_of_gas_3645", %"$have_gas_3637"
  %"$consume_3647" = sub i64 %"$gasrem_3643", %"$_literal_cost_call_3642"
  store i64 %"$consume_3647", i64* @_gasrem
  %"$execptr_load_3648" = load i8*, i8** @_execptr
  %"$m2_full_3650" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full
  %"$update_value_3651" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_3650" to i8*
  call void @_update_field(i8* %"$execptr_load_3648", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3649", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_3651")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_3653" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3654" = bitcast i8* %"$_amount_3653" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3654"
  %"$_sender_3655" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3656" = bitcast i8* %"$_sender_3655" to [20 x i8]*
  call void @"$t15_3052"(%Uint128 %_amount, [20 x i8]* %"$_sender_3656")
  ret void
}

define internal void @"$t16_3657"(%Uint128 %_amount, [20 x i8]* %"$_sender_3658") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3658"
  %"$gasrem_3659" = load i64, i64* @_gasrem
  %"$gascmp_3660" = icmp ugt i64 1, %"$gasrem_3659"
  br i1 %"$gascmp_3660", label %"$out_of_gas_3661", label %"$have_gas_3662"

"$out_of_gas_3661":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3662"

"$have_gas_3662":                                 ; preds = %"$out_of_gas_3661", %entry
  %"$consume_3663" = sub i64 %"$gasrem_3659", 1
  store i64 %"$consume_3663", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_3664" = load i64, i64* @_gasrem
  %"$gascmp_3665" = icmp ugt i64 1, %"$gasrem_3664"
  br i1 %"$gascmp_3665", label %"$out_of_gas_3666", label %"$have_gas_3667"

"$out_of_gas_3666":                               ; preds = %"$have_gas_3662"
  call void @_out_of_gas()
  br label %"$have_gas_3667"

"$have_gas_3667":                                 ; preds = %"$out_of_gas_3666", %"$have_gas_3662"
  %"$consume_3668" = sub i64 %"$gasrem_3664", 1
  store i64 %"$consume_3668", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3669", i32 0, i32 0), i32 3 }, %String* %tname
  %"$gasrem_3670" = load i64, i64* @_gasrem
  %"$gascmp_3671" = icmp ugt i64 1, %"$gasrem_3670"
  br i1 %"$gascmp_3671", label %"$out_of_gas_3672", label %"$have_gas_3673"

"$out_of_gas_3672":                               ; preds = %"$have_gas_3667"
  call void @_out_of_gas()
  br label %"$have_gas_3673"

"$have_gas_3673":                                 ; preds = %"$out_of_gas_3672", %"$have_gas_3667"
  %"$consume_3674" = sub i64 %"$gasrem_3670", 1
  store i64 %"$consume_3674", i64* @_gasrem
  %key1a = alloca %String
  %"$gasrem_3675" = load i64, i64* @_gasrem
  %"$gascmp_3676" = icmp ugt i64 1, %"$gasrem_3675"
  br i1 %"$gascmp_3676", label %"$out_of_gas_3677", label %"$have_gas_3678"

"$out_of_gas_3677":                               ; preds = %"$have_gas_3673"
  call void @_out_of_gas()
  br label %"$have_gas_3678"

"$have_gas_3678":                                 ; preds = %"$out_of_gas_3677", %"$have_gas_3673"
  %"$consume_3679" = sub i64 %"$gasrem_3675", 1
  store i64 %"$consume_3679", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3680", i32 0, i32 0), i32 5 }, %String* %key1a
  %"$gasrem_3681" = load i64, i64* @_gasrem
  %"$gascmp_3682" = icmp ugt i64 1, %"$gasrem_3681"
  br i1 %"$gascmp_3682", label %"$out_of_gas_3683", label %"$have_gas_3684"

"$out_of_gas_3683":                               ; preds = %"$have_gas_3678"
  call void @_out_of_gas()
  br label %"$have_gas_3684"

"$have_gas_3684":                                 ; preds = %"$out_of_gas_3683", %"$have_gas_3678"
  %"$consume_3685" = sub i64 %"$gasrem_3681", 1
  store i64 %"$consume_3685", i64* @_gasrem
  %key2a = alloca %String
  %"$gasrem_3686" = load i64, i64* @_gasrem
  %"$gascmp_3687" = icmp ugt i64 1, %"$gasrem_3686"
  br i1 %"$gascmp_3687", label %"$out_of_gas_3688", label %"$have_gas_3689"

"$out_of_gas_3688":                               ; preds = %"$have_gas_3684"
  call void @_out_of_gas()
  br label %"$have_gas_3689"

"$have_gas_3689":                                 ; preds = %"$out_of_gas_3688", %"$have_gas_3684"
  %"$consume_3690" = sub i64 %"$gasrem_3686", 1
  store i64 %"$consume_3690", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3691", i32 0, i32 0), i32 5 }, %String* %key2a
  %"$gasrem_3692" = load i64, i64* @_gasrem
  %"$gascmp_3693" = icmp ugt i64 1, %"$gasrem_3692"
  br i1 %"$gascmp_3693", label %"$out_of_gas_3694", label %"$have_gas_3695"

"$out_of_gas_3694":                               ; preds = %"$have_gas_3689"
  call void @_out_of_gas()
  br label %"$have_gas_3695"

"$have_gas_3695":                                 ; preds = %"$out_of_gas_3694", %"$have_gas_3689"
  %"$consume_3696" = sub i64 %"$gasrem_3692", 1
  store i64 %"$consume_3696", i64* @_gasrem
  %key1b = alloca %String
  %"$gasrem_3697" = load i64, i64* @_gasrem
  %"$gascmp_3698" = icmp ugt i64 1, %"$gasrem_3697"
  br i1 %"$gascmp_3698", label %"$out_of_gas_3699", label %"$have_gas_3700"

"$out_of_gas_3699":                               ; preds = %"$have_gas_3695"
  call void @_out_of_gas()
  br label %"$have_gas_3700"

"$have_gas_3700":                                 ; preds = %"$out_of_gas_3699", %"$have_gas_3695"
  %"$consume_3701" = sub i64 %"$gasrem_3697", 1
  store i64 %"$consume_3701", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3702", i32 0, i32 0), i32 5 }, %String* %key1b
  %"$gasrem_3703" = load i64, i64* @_gasrem
  %"$gascmp_3704" = icmp ugt i64 1, %"$gasrem_3703"
  br i1 %"$gascmp_3704", label %"$out_of_gas_3705", label %"$have_gas_3706"

"$out_of_gas_3705":                               ; preds = %"$have_gas_3700"
  call void @_out_of_gas()
  br label %"$have_gas_3706"

"$have_gas_3706":                                 ; preds = %"$out_of_gas_3705", %"$have_gas_3700"
  %"$consume_3707" = sub i64 %"$gasrem_3703", 1
  store i64 %"$consume_3707", i64* @_gasrem
  %key2b = alloca %String
  %"$gasrem_3708" = load i64, i64* @_gasrem
  %"$gascmp_3709" = icmp ugt i64 1, %"$gasrem_3708"
  br i1 %"$gascmp_3709", label %"$out_of_gas_3710", label %"$have_gas_3711"

"$out_of_gas_3710":                               ; preds = %"$have_gas_3706"
  call void @_out_of_gas()
  br label %"$have_gas_3711"

"$have_gas_3711":                                 ; preds = %"$out_of_gas_3710", %"$have_gas_3706"
  %"$consume_3712" = sub i64 %"$gasrem_3708", 1
  store i64 %"$consume_3712", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3713", i32 0, i32 0), i32 5 }, %String* %key2b
  %"$gasrem_3714" = load i64, i64* @_gasrem
  %"$gascmp_3715" = icmp ugt i64 1, %"$gasrem_3714"
  br i1 %"$gascmp_3715", label %"$out_of_gas_3716", label %"$have_gas_3717"

"$out_of_gas_3716":                               ; preds = %"$have_gas_3711"
  call void @_out_of_gas()
  br label %"$have_gas_3717"

"$have_gas_3717":                                 ; preds = %"$out_of_gas_3716", %"$have_gas_3711"
  %"$consume_3718" = sub i64 %"$gasrem_3714", 1
  store i64 %"$consume_3718", i64* @_gasrem
  %key1c = alloca %String
  %"$gasrem_3719" = load i64, i64* @_gasrem
  %"$gascmp_3720" = icmp ugt i64 1, %"$gasrem_3719"
  br i1 %"$gascmp_3720", label %"$out_of_gas_3721", label %"$have_gas_3722"

"$out_of_gas_3721":                               ; preds = %"$have_gas_3717"
  call void @_out_of_gas()
  br label %"$have_gas_3722"

"$have_gas_3722":                                 ; preds = %"$out_of_gas_3721", %"$have_gas_3717"
  %"$consume_3723" = sub i64 %"$gasrem_3719", 1
  store i64 %"$consume_3723", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3724", i32 0, i32 0), i32 5 }, %String* %key1c
  %"$gasrem_3725" = load i64, i64* @_gasrem
  %"$gascmp_3726" = icmp ugt i64 1, %"$gasrem_3725"
  br i1 %"$gascmp_3726", label %"$out_of_gas_3727", label %"$have_gas_3728"

"$out_of_gas_3727":                               ; preds = %"$have_gas_3722"
  call void @_out_of_gas()
  br label %"$have_gas_3728"

"$have_gas_3728":                                 ; preds = %"$out_of_gas_3727", %"$have_gas_3722"
  %"$consume_3729" = sub i64 %"$gasrem_3725", 1
  store i64 %"$consume_3729", i64* @_gasrem
  %key2c = alloca %String
  %"$gasrem_3730" = load i64, i64* @_gasrem
  %"$gascmp_3731" = icmp ugt i64 1, %"$gasrem_3730"
  br i1 %"$gascmp_3731", label %"$out_of_gas_3732", label %"$have_gas_3733"

"$out_of_gas_3732":                               ; preds = %"$have_gas_3728"
  call void @_out_of_gas()
  br label %"$have_gas_3733"

"$have_gas_3733":                                 ; preds = %"$out_of_gas_3732", %"$have_gas_3728"
  %"$consume_3734" = sub i64 %"$gasrem_3730", 1
  store i64 %"$consume_3734", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3735", i32 0, i32 0), i32 5 }, %String* %key2c
  %"$gasrem_3736" = load i64, i64* @_gasrem
  %"$gascmp_3737" = icmp ugt i64 1, %"$gasrem_3736"
  br i1 %"$gascmp_3737", label %"$out_of_gas_3738", label %"$have_gas_3739"

"$out_of_gas_3738":                               ; preds = %"$have_gas_3733"
  call void @_out_of_gas()
  br label %"$have_gas_3739"

"$have_gas_3739":                                 ; preds = %"$out_of_gas_3738", %"$have_gas_3733"
  %"$consume_3740" = sub i64 %"$gasrem_3736", 1
  store i64 %"$consume_3740", i64* @_gasrem
  %key1d = alloca %String
  %"$gasrem_3741" = load i64, i64* @_gasrem
  %"$gascmp_3742" = icmp ugt i64 1, %"$gasrem_3741"
  br i1 %"$gascmp_3742", label %"$out_of_gas_3743", label %"$have_gas_3744"

"$out_of_gas_3743":                               ; preds = %"$have_gas_3739"
  call void @_out_of_gas()
  br label %"$have_gas_3744"

"$have_gas_3744":                                 ; preds = %"$out_of_gas_3743", %"$have_gas_3739"
  %"$consume_3745" = sub i64 %"$gasrem_3741", 1
  store i64 %"$consume_3745", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3746", i32 0, i32 0), i32 5 }, %String* %key1d
  %"$gasrem_3747" = load i64, i64* @_gasrem
  %"$gascmp_3748" = icmp ugt i64 1, %"$gasrem_3747"
  br i1 %"$gascmp_3748", label %"$out_of_gas_3749", label %"$have_gas_3750"

"$out_of_gas_3749":                               ; preds = %"$have_gas_3744"
  call void @_out_of_gas()
  br label %"$have_gas_3750"

"$have_gas_3750":                                 ; preds = %"$out_of_gas_3749", %"$have_gas_3744"
  %"$consume_3751" = sub i64 %"$gasrem_3747", 1
  store i64 %"$consume_3751", i64* @_gasrem
  %key2d = alloca %String
  %"$gasrem_3752" = load i64, i64* @_gasrem
  %"$gascmp_3753" = icmp ugt i64 1, %"$gasrem_3752"
  br i1 %"$gascmp_3753", label %"$out_of_gas_3754", label %"$have_gas_3755"

"$out_of_gas_3754":                               ; preds = %"$have_gas_3750"
  call void @_out_of_gas()
  br label %"$have_gas_3755"

"$have_gas_3755":                                 ; preds = %"$out_of_gas_3754", %"$have_gas_3750"
  %"$consume_3756" = sub i64 %"$gasrem_3752", 1
  store i64 %"$consume_3756", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3757", i32 0, i32 0), i32 5 }, %String* %key2d
  %t1 = alloca %TName_Option_String*
  %"$indices_buf_3758_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3758_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3758_salloc_load", i64 32)
  %"$indices_buf_3758_salloc" = bitcast i8* %"$indices_buf_3758_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3758" = bitcast [32 x i8]* %"$indices_buf_3758_salloc" to i8*
  %"$key1a_3759" = load %String, %String* %key1a
  %"$indices_gep_3760" = getelementptr i8, i8* %"$indices_buf_3758", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3760" to %String*
  store %String %"$key1a_3759", %String* %indices_cast
  %"$key2a_3761" = load %String, %String* %key2a
  %"$indices_gep_3762" = getelementptr i8, i8* %"$indices_buf_3758", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_3762" to %String*
  store %String %"$key2a_3761", %String* %indices_cast1
  %"$execptr_load_3763" = load i8*, i8** @_execptr
  %"$t1_3765" = call i8* @_fetch_field(i8* %"$execptr_load_3763", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3764", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_3758", i32 1)
  %"$t1_3766" = bitcast i8* %"$t1_3765" to %TName_Option_String*
  store %TName_Option_String* %"$t1_3766", %TName_Option_String** %t1
  %"$t1_3767" = load %TName_Option_String*, %TName_Option_String** %t1
  %"$$t1_3767_3768" = bitcast %TName_Option_String* %"$t1_3767" to i8*
  %"$_literal_cost_call_3769" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$t1_3767_3768")
  %"$gasadd_3770" = add i64 %"$_literal_cost_call_3769", 0
  %"$gasadd_3771" = add i64 %"$gasadd_3770", 2
  %"$gasrem_3772" = load i64, i64* @_gasrem
  %"$gascmp_3773" = icmp ugt i64 %"$gasadd_3771", %"$gasrem_3772"
  br i1 %"$gascmp_3773", label %"$out_of_gas_3774", label %"$have_gas_3775"

"$out_of_gas_3774":                               ; preds = %"$have_gas_3755"
  call void @_out_of_gas()
  br label %"$have_gas_3775"

"$have_gas_3775":                                 ; preds = %"$out_of_gas_3774", %"$have_gas_3755"
  %"$consume_3776" = sub i64 %"$gasrem_3772", %"$gasadd_3771"
  store i64 %"$consume_3776", i64* @_gasrem
  %t2 = alloca %TName_Option_String*
  %"$indices_buf_3777_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3777_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3777_salloc_load", i64 32)
  %"$indices_buf_3777_salloc" = bitcast i8* %"$indices_buf_3777_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3777" = bitcast [32 x i8]* %"$indices_buf_3777_salloc" to i8*
  %"$key1b_3778" = load %String, %String* %key1b
  %"$indices_gep_3779" = getelementptr i8, i8* %"$indices_buf_3777", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3779" to %String*
  store %String %"$key1b_3778", %String* %indices_cast2
  %"$key2b_3780" = load %String, %String* %key2b
  %"$indices_gep_3781" = getelementptr i8, i8* %"$indices_buf_3777", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_3781" to %String*
  store %String %"$key2b_3780", %String* %indices_cast3
  %"$execptr_load_3782" = load i8*, i8** @_execptr
  %"$t2_3784" = call i8* @_fetch_field(i8* %"$execptr_load_3782", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3783", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_3777", i32 1)
  %"$t2_3785" = bitcast i8* %"$t2_3784" to %TName_Option_String*
  store %TName_Option_String* %"$t2_3785", %TName_Option_String** %t2
  %"$t2_3786" = load %TName_Option_String*, %TName_Option_String** %t2
  %"$$t2_3786_3787" = bitcast %TName_Option_String* %"$t2_3786" to i8*
  %"$_literal_cost_call_3788" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$t2_3786_3787")
  %"$gasadd_3789" = add i64 %"$_literal_cost_call_3788", 0
  %"$gasadd_3790" = add i64 %"$gasadd_3789", 2
  %"$gasrem_3791" = load i64, i64* @_gasrem
  %"$gascmp_3792" = icmp ugt i64 %"$gasadd_3790", %"$gasrem_3791"
  br i1 %"$gascmp_3792", label %"$out_of_gas_3793", label %"$have_gas_3794"

"$out_of_gas_3793":                               ; preds = %"$have_gas_3775"
  call void @_out_of_gas()
  br label %"$have_gas_3794"

"$have_gas_3794":                                 ; preds = %"$out_of_gas_3793", %"$have_gas_3775"
  %"$consume_3795" = sub i64 %"$gasrem_3791", %"$gasadd_3790"
  store i64 %"$consume_3795", i64* @_gasrem
  %t3 = alloca %TName_Option_String*
  %"$indices_buf_3796_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3796_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3796_salloc_load", i64 32)
  %"$indices_buf_3796_salloc" = bitcast i8* %"$indices_buf_3796_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3796" = bitcast [32 x i8]* %"$indices_buf_3796_salloc" to i8*
  %"$key1c_3797" = load %String, %String* %key1c
  %"$indices_gep_3798" = getelementptr i8, i8* %"$indices_buf_3796", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_3798" to %String*
  store %String %"$key1c_3797", %String* %indices_cast4
  %"$key2c_3799" = load %String, %String* %key2c
  %"$indices_gep_3800" = getelementptr i8, i8* %"$indices_buf_3796", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_3800" to %String*
  store %String %"$key2c_3799", %String* %indices_cast5
  %"$execptr_load_3801" = load i8*, i8** @_execptr
  %"$t3_3803" = call i8* @_fetch_field(i8* %"$execptr_load_3801", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3802", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_3796", i32 1)
  %"$t3_3804" = bitcast i8* %"$t3_3803" to %TName_Option_String*
  store %TName_Option_String* %"$t3_3804", %TName_Option_String** %t3
  %"$t3_3805" = load %TName_Option_String*, %TName_Option_String** %t3
  %"$$t3_3805_3806" = bitcast %TName_Option_String* %"$t3_3805" to i8*
  %"$_literal_cost_call_3807" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$t3_3805_3806")
  %"$gasadd_3808" = add i64 %"$_literal_cost_call_3807", 0
  %"$gasadd_3809" = add i64 %"$gasadd_3808", 2
  %"$gasrem_3810" = load i64, i64* @_gasrem
  %"$gascmp_3811" = icmp ugt i64 %"$gasadd_3809", %"$gasrem_3810"
  br i1 %"$gascmp_3811", label %"$out_of_gas_3812", label %"$have_gas_3813"

"$out_of_gas_3812":                               ; preds = %"$have_gas_3794"
  call void @_out_of_gas()
  br label %"$have_gas_3813"

"$have_gas_3813":                                 ; preds = %"$out_of_gas_3812", %"$have_gas_3794"
  %"$consume_3814" = sub i64 %"$gasrem_3810", %"$gasadd_3809"
  store i64 %"$consume_3814", i64* @_gasrem
  %t4 = alloca %TName_Option_String*
  %"$indices_buf_3815_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3815_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3815_salloc_load", i64 32)
  %"$indices_buf_3815_salloc" = bitcast i8* %"$indices_buf_3815_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3815" = bitcast [32 x i8]* %"$indices_buf_3815_salloc" to i8*
  %"$key1d_3816" = load %String, %String* %key1d
  %"$indices_gep_3817" = getelementptr i8, i8* %"$indices_buf_3815", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_3817" to %String*
  store %String %"$key1d_3816", %String* %indices_cast6
  %"$key2d_3818" = load %String, %String* %key2d
  %"$indices_gep_3819" = getelementptr i8, i8* %"$indices_buf_3815", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_3819" to %String*
  store %String %"$key2d_3818", %String* %indices_cast7
  %"$execptr_load_3820" = load i8*, i8** @_execptr
  %"$t4_3822" = call i8* @_fetch_field(i8* %"$execptr_load_3820", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3821", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 2, i8* %"$indices_buf_3815", i32 1)
  %"$t4_3823" = bitcast i8* %"$t4_3822" to %TName_Option_String*
  store %TName_Option_String* %"$t4_3823", %TName_Option_String** %t4
  %"$t4_3824" = load %TName_Option_String*, %TName_Option_String** %t4
  %"$$t4_3824_3825" = bitcast %TName_Option_String* %"$t4_3824" to i8*
  %"$_literal_cost_call_3826" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_67", i8* %"$$t4_3824_3825")
  %"$gasadd_3827" = add i64 %"$_literal_cost_call_3826", 0
  %"$gasadd_3828" = add i64 %"$gasadd_3827", 2
  %"$gasrem_3829" = load i64, i64* @_gasrem
  %"$gascmp_3830" = icmp ugt i64 %"$gasadd_3828", %"$gasrem_3829"
  br i1 %"$gascmp_3830", label %"$out_of_gas_3831", label %"$have_gas_3832"

"$out_of_gas_3831":                               ; preds = %"$have_gas_3813"
  call void @_out_of_gas()
  br label %"$have_gas_3832"

"$have_gas_3832":                                 ; preds = %"$out_of_gas_3831", %"$have_gas_3813"
  %"$consume_3833" = sub i64 %"$gasrem_3829", %"$gasadd_3828"
  store i64 %"$consume_3833", i64* @_gasrem
  %"$gasrem_3834" = load i64, i64* @_gasrem
  %"$gascmp_3835" = icmp ugt i64 1, %"$gasrem_3834"
  br i1 %"$gascmp_3835", label %"$out_of_gas_3836", label %"$have_gas_3837"

"$out_of_gas_3836":                               ; preds = %"$have_gas_3832"
  call void @_out_of_gas()
  br label %"$have_gas_3837"

"$have_gas_3837":                                 ; preds = %"$out_of_gas_3836", %"$have_gas_3832"
  %"$consume_3838" = sub i64 %"$gasrem_3834", 1
  store i64 %"$consume_3838", i64* @_gasrem
  %v1 = alloca %String
  %"$gasrem_3839" = load i64, i64* @_gasrem
  %"$gascmp_3840" = icmp ugt i64 1, %"$gasrem_3839"
  br i1 %"$gascmp_3840", label %"$out_of_gas_3841", label %"$have_gas_3842"

"$out_of_gas_3841":                               ; preds = %"$have_gas_3837"
  call void @_out_of_gas()
  br label %"$have_gas_3842"

"$have_gas_3842":                                 ; preds = %"$out_of_gas_3841", %"$have_gas_3837"
  %"$consume_3843" = sub i64 %"$gasrem_3839", 1
  store i64 %"$consume_3843", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3844", i32 0, i32 0), i32 3 }, %String* %v1
  %"$gasrem_3845" = load i64, i64* @_gasrem
  %"$gascmp_3846" = icmp ugt i64 1, %"$gasrem_3845"
  br i1 %"$gascmp_3846", label %"$out_of_gas_3847", label %"$have_gas_3848"

"$out_of_gas_3847":                               ; preds = %"$have_gas_3842"
  call void @_out_of_gas()
  br label %"$have_gas_3848"

"$have_gas_3848":                                 ; preds = %"$out_of_gas_3847", %"$have_gas_3842"
  %"$consume_3849" = sub i64 %"$gasrem_3845", 1
  store i64 %"$consume_3849", i64* @_gasrem
  %v2 = alloca %String
  %"$gasrem_3850" = load i64, i64* @_gasrem
  %"$gascmp_3851" = icmp ugt i64 1, %"$gasrem_3850"
  br i1 %"$gascmp_3851", label %"$out_of_gas_3852", label %"$have_gas_3853"

"$out_of_gas_3852":                               ; preds = %"$have_gas_3848"
  call void @_out_of_gas()
  br label %"$have_gas_3853"

"$have_gas_3853":                                 ; preds = %"$out_of_gas_3852", %"$have_gas_3848"
  %"$consume_3854" = sub i64 %"$gasrem_3850", 1
  store i64 %"$consume_3854", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3855", i32 0, i32 0), i32 3 }, %String* %v2
  %"$gasrem_3856" = load i64, i64* @_gasrem
  %"$gascmp_3857" = icmp ugt i64 1, %"$gasrem_3856"
  br i1 %"$gascmp_3857", label %"$out_of_gas_3858", label %"$have_gas_3859"

"$out_of_gas_3858":                               ; preds = %"$have_gas_3853"
  call void @_out_of_gas()
  br label %"$have_gas_3859"

"$have_gas_3859":                                 ; preds = %"$out_of_gas_3858", %"$have_gas_3853"
  %"$consume_3860" = sub i64 %"$gasrem_3856", 1
  store i64 %"$consume_3860", i64* @_gasrem
  %v3 = alloca %String
  %"$gasrem_3861" = load i64, i64* @_gasrem
  %"$gascmp_3862" = icmp ugt i64 1, %"$gasrem_3861"
  br i1 %"$gascmp_3862", label %"$out_of_gas_3863", label %"$have_gas_3864"

"$out_of_gas_3863":                               ; preds = %"$have_gas_3859"
  call void @_out_of_gas()
  br label %"$have_gas_3864"

"$have_gas_3864":                                 ; preds = %"$out_of_gas_3863", %"$have_gas_3859"
  %"$consume_3865" = sub i64 %"$gasrem_3861", 1
  store i64 %"$consume_3865", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3866", i32 0, i32 0), i32 3 }, %String* %v3
  %"$gasrem_3867" = load i64, i64* @_gasrem
  %"$gascmp_3868" = icmp ugt i64 1, %"$gasrem_3867"
  br i1 %"$gascmp_3868", label %"$out_of_gas_3869", label %"$have_gas_3870"

"$out_of_gas_3869":                               ; preds = %"$have_gas_3864"
  call void @_out_of_gas()
  br label %"$have_gas_3870"

"$have_gas_3870":                                 ; preds = %"$out_of_gas_3869", %"$have_gas_3864"
  %"$consume_3871" = sub i64 %"$gasrem_3867", 1
  store i64 %"$consume_3871", i64* @_gasrem
  %v4 = alloca %String
  %"$gasrem_3872" = load i64, i64* @_gasrem
  %"$gascmp_3873" = icmp ugt i64 1, %"$gasrem_3872"
  br i1 %"$gascmp_3873", label %"$out_of_gas_3874", label %"$have_gas_3875"

"$out_of_gas_3874":                               ; preds = %"$have_gas_3870"
  call void @_out_of_gas()
  br label %"$have_gas_3875"

"$have_gas_3875":                                 ; preds = %"$out_of_gas_3874", %"$have_gas_3870"
  %"$consume_3876" = sub i64 %"$gasrem_3872", 1
  store i64 %"$consume_3876", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3877", i32 0, i32 0), i32 3 }, %String* %v4
  %"$gasrem_3878" = load i64, i64* @_gasrem
  %"$gascmp_3879" = icmp ugt i64 1, %"$gasrem_3878"
  br i1 %"$gascmp_3879", label %"$out_of_gas_3880", label %"$have_gas_3881"

"$out_of_gas_3880":                               ; preds = %"$have_gas_3875"
  call void @_out_of_gas()
  br label %"$have_gas_3881"

"$have_gas_3881":                                 ; preds = %"$out_of_gas_3880", %"$have_gas_3875"
  %"$consume_3882" = sub i64 %"$gasrem_3878", 1
  store i64 %"$consume_3882", i64* @_gasrem
  %b1 = alloca %TName_Bool*
  %"$gasrem_3883" = load i64, i64* @_gasrem
  %"$gascmp_3884" = icmp ugt i64 2, %"$gasrem_3883"
  br i1 %"$gascmp_3884", label %"$out_of_gas_3885", label %"$have_gas_3886"

"$out_of_gas_3885":                               ; preds = %"$have_gas_3881"
  call void @_out_of_gas()
  br label %"$have_gas_3886"

"$have_gas_3886":                                 ; preds = %"$out_of_gas_3885", %"$have_gas_3881"
  %"$consume_3887" = sub i64 %"$gasrem_3883", 2
  store i64 %"$consume_3887", i64* @_gasrem
  %"$t1_3889" = load %TName_Option_String*, %TName_Option_String** %t1
  %"$t1_tag_3890" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_3889", i32 0, i32 0
  %"$t1_tag_3891" = load i8, i8* %"$t1_tag_3890"
  switch i8 %"$t1_tag_3891", label %"$empty_default_3892" [
    i8 0, label %"$Some_3893"
    i8 1, label %"$None_3901"
  ]

"$Some_3893":                                     ; preds = %"$have_gas_3886"
  %"$t1_3894" = bitcast %TName_Option_String* %"$t1_3889" to %CName_Some_String*
  %"$t1v_gep_3895" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_3894", i32 0, i32 1
  %"$t1v_load_3896" = load %String, %String* %"$t1v_gep_3895"
  %t1v = alloca %String
  store %String %"$t1v_load_3896", %String* %t1v
  %"$execptr_load_3897" = load i8*, i8** @_execptr
  %"$t1v_3898" = load %String, %String* %t1v
  %"$v1_3899" = load %String, %String* %v1
  %"$eq_call_3900" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_3897", %String %"$t1v_3898", %String %"$v1_3899")
  store %TName_Bool* %"$eq_call_3900", %TName_Bool** %b1
  br label %"$matchsucc_3888"

"$None_3901":                                     ; preds = %"$have_gas_3886"
  %"$t1_3902" = bitcast %TName_Option_String* %"$t1_3889" to %CName_None_String*
  %"$gasrem_3903" = load i64, i64* @_gasrem
  %"$gascmp_3904" = icmp ugt i64 1, %"$gasrem_3903"
  br i1 %"$gascmp_3904", label %"$out_of_gas_3905", label %"$have_gas_3906"

"$out_of_gas_3905":                               ; preds = %"$None_3901"
  call void @_out_of_gas()
  br label %"$have_gas_3906"

"$have_gas_3906":                                 ; preds = %"$out_of_gas_3905", %"$None_3901"
  %"$consume_3907" = sub i64 %"$gasrem_3903", 1
  store i64 %"$consume_3907", i64* @_gasrem
  %"$adtval_3908_load" = load i8*, i8** @_execptr
  %"$adtval_3908_salloc" = call i8* @_salloc(i8* %"$adtval_3908_load", i64 1)
  %"$adtval_3908" = bitcast i8* %"$adtval_3908_salloc" to %CName_False*
  %"$adtgep_3909" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_3908", i32 0, i32 0
  store i8 1, i8* %"$adtgep_3909"
  %"$adtptr_3910" = bitcast %CName_False* %"$adtval_3908" to %TName_Bool*
  store %TName_Bool* %"$adtptr_3910", %TName_Bool** %b1
  br label %"$matchsucc_3888"

"$empty_default_3892":                            ; preds = %"$have_gas_3886"
  br label %"$matchsucc_3888"

"$matchsucc_3888":                                ; preds = %"$have_gas_3906", %"$Some_3893", %"$empty_default_3892"
  %"$gasrem_3911" = load i64, i64* @_gasrem
  %"$gascmp_3912" = icmp ugt i64 1, %"$gasrem_3911"
  br i1 %"$gascmp_3912", label %"$out_of_gas_3913", label %"$have_gas_3914"

"$out_of_gas_3913":                               ; preds = %"$matchsucc_3888"
  call void @_out_of_gas()
  br label %"$have_gas_3914"

"$have_gas_3914":                                 ; preds = %"$out_of_gas_3913", %"$matchsucc_3888"
  %"$consume_3915" = sub i64 %"$gasrem_3911", 1
  store i64 %"$consume_3915", i64* @_gasrem
  %b2 = alloca %TName_Bool*
  %"$gasrem_3916" = load i64, i64* @_gasrem
  %"$gascmp_3917" = icmp ugt i64 2, %"$gasrem_3916"
  br i1 %"$gascmp_3917", label %"$out_of_gas_3918", label %"$have_gas_3919"

"$out_of_gas_3918":                               ; preds = %"$have_gas_3914"
  call void @_out_of_gas()
  br label %"$have_gas_3919"

"$have_gas_3919":                                 ; preds = %"$out_of_gas_3918", %"$have_gas_3914"
  %"$consume_3920" = sub i64 %"$gasrem_3916", 2
  store i64 %"$consume_3920", i64* @_gasrem
  %"$t2_3922" = load %TName_Option_String*, %TName_Option_String** %t2
  %"$t2_tag_3923" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_3922", i32 0, i32 0
  %"$t2_tag_3924" = load i8, i8* %"$t2_tag_3923"
  switch i8 %"$t2_tag_3924", label %"$empty_default_3925" [
    i8 0, label %"$Some_3926"
    i8 1, label %"$None_3934"
  ]

"$Some_3926":                                     ; preds = %"$have_gas_3919"
  %"$t2_3927" = bitcast %TName_Option_String* %"$t2_3922" to %CName_Some_String*
  %"$t2v_gep_3928" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_3927", i32 0, i32 1
  %"$t2v_load_3929" = load %String, %String* %"$t2v_gep_3928"
  %t2v = alloca %String
  store %String %"$t2v_load_3929", %String* %t2v
  %"$execptr_load_3930" = load i8*, i8** @_execptr
  %"$t2v_3931" = load %String, %String* %t2v
  %"$v2_3932" = load %String, %String* %v2
  %"$eq_call_3933" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_3930", %String %"$t2v_3931", %String %"$v2_3932")
  store %TName_Bool* %"$eq_call_3933", %TName_Bool** %b2
  br label %"$matchsucc_3921"

"$None_3934":                                     ; preds = %"$have_gas_3919"
  %"$t2_3935" = bitcast %TName_Option_String* %"$t2_3922" to %CName_None_String*
  %"$gasrem_3936" = load i64, i64* @_gasrem
  %"$gascmp_3937" = icmp ugt i64 1, %"$gasrem_3936"
  br i1 %"$gascmp_3937", label %"$out_of_gas_3938", label %"$have_gas_3939"

"$out_of_gas_3938":                               ; preds = %"$None_3934"
  call void @_out_of_gas()
  br label %"$have_gas_3939"

"$have_gas_3939":                                 ; preds = %"$out_of_gas_3938", %"$None_3934"
  %"$consume_3940" = sub i64 %"$gasrem_3936", 1
  store i64 %"$consume_3940", i64* @_gasrem
  %"$adtval_3941_load" = load i8*, i8** @_execptr
  %"$adtval_3941_salloc" = call i8* @_salloc(i8* %"$adtval_3941_load", i64 1)
  %"$adtval_3941" = bitcast i8* %"$adtval_3941_salloc" to %CName_False*
  %"$adtgep_3942" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_3941", i32 0, i32 0
  store i8 1, i8* %"$adtgep_3942"
  %"$adtptr_3943" = bitcast %CName_False* %"$adtval_3941" to %TName_Bool*
  store %TName_Bool* %"$adtptr_3943", %TName_Bool** %b2
  br label %"$matchsucc_3921"

"$empty_default_3925":                            ; preds = %"$have_gas_3919"
  br label %"$matchsucc_3921"

"$matchsucc_3921":                                ; preds = %"$have_gas_3939", %"$Some_3926", %"$empty_default_3925"
  %"$gasrem_3944" = load i64, i64* @_gasrem
  %"$gascmp_3945" = icmp ugt i64 1, %"$gasrem_3944"
  br i1 %"$gascmp_3945", label %"$out_of_gas_3946", label %"$have_gas_3947"

"$out_of_gas_3946":                               ; preds = %"$matchsucc_3921"
  call void @_out_of_gas()
  br label %"$have_gas_3947"

"$have_gas_3947":                                 ; preds = %"$out_of_gas_3946", %"$matchsucc_3921"
  %"$consume_3948" = sub i64 %"$gasrem_3944", 1
  store i64 %"$consume_3948", i64* @_gasrem
  %b3 = alloca %TName_Bool*
  %"$gasrem_3949" = load i64, i64* @_gasrem
  %"$gascmp_3950" = icmp ugt i64 2, %"$gasrem_3949"
  br i1 %"$gascmp_3950", label %"$out_of_gas_3951", label %"$have_gas_3952"

"$out_of_gas_3951":                               ; preds = %"$have_gas_3947"
  call void @_out_of_gas()
  br label %"$have_gas_3952"

"$have_gas_3952":                                 ; preds = %"$out_of_gas_3951", %"$have_gas_3947"
  %"$consume_3953" = sub i64 %"$gasrem_3949", 2
  store i64 %"$consume_3953", i64* @_gasrem
  %"$t3_3955" = load %TName_Option_String*, %TName_Option_String** %t3
  %"$t3_tag_3956" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_3955", i32 0, i32 0
  %"$t3_tag_3957" = load i8, i8* %"$t3_tag_3956"
  switch i8 %"$t3_tag_3957", label %"$empty_default_3958" [
    i8 0, label %"$Some_3959"
    i8 1, label %"$None_3967"
  ]

"$Some_3959":                                     ; preds = %"$have_gas_3952"
  %"$t3_3960" = bitcast %TName_Option_String* %"$t3_3955" to %CName_Some_String*
  %"$t3v_gep_3961" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_3960", i32 0, i32 1
  %"$t3v_load_3962" = load %String, %String* %"$t3v_gep_3961"
  %t3v = alloca %String
  store %String %"$t3v_load_3962", %String* %t3v
  %"$execptr_load_3963" = load i8*, i8** @_execptr
  %"$t3v_3964" = load %String, %String* %t3v
  %"$v3_3965" = load %String, %String* %v3
  %"$eq_call_3966" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_3963", %String %"$t3v_3964", %String %"$v3_3965")
  store %TName_Bool* %"$eq_call_3966", %TName_Bool** %b3
  br label %"$matchsucc_3954"

"$None_3967":                                     ; preds = %"$have_gas_3952"
  %"$t3_3968" = bitcast %TName_Option_String* %"$t3_3955" to %CName_None_String*
  %"$gasrem_3969" = load i64, i64* @_gasrem
  %"$gascmp_3970" = icmp ugt i64 1, %"$gasrem_3969"
  br i1 %"$gascmp_3970", label %"$out_of_gas_3971", label %"$have_gas_3972"

"$out_of_gas_3971":                               ; preds = %"$None_3967"
  call void @_out_of_gas()
  br label %"$have_gas_3972"

"$have_gas_3972":                                 ; preds = %"$out_of_gas_3971", %"$None_3967"
  %"$consume_3973" = sub i64 %"$gasrem_3969", 1
  store i64 %"$consume_3973", i64* @_gasrem
  %"$adtval_3974_load" = load i8*, i8** @_execptr
  %"$adtval_3974_salloc" = call i8* @_salloc(i8* %"$adtval_3974_load", i64 1)
  %"$adtval_3974" = bitcast i8* %"$adtval_3974_salloc" to %CName_False*
  %"$adtgep_3975" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_3974", i32 0, i32 0
  store i8 1, i8* %"$adtgep_3975"
  %"$adtptr_3976" = bitcast %CName_False* %"$adtval_3974" to %TName_Bool*
  store %TName_Bool* %"$adtptr_3976", %TName_Bool** %b3
  br label %"$matchsucc_3954"

"$empty_default_3958":                            ; preds = %"$have_gas_3952"
  br label %"$matchsucc_3954"

"$matchsucc_3954":                                ; preds = %"$have_gas_3972", %"$Some_3959", %"$empty_default_3958"
  %"$gasrem_3977" = load i64, i64* @_gasrem
  %"$gascmp_3978" = icmp ugt i64 1, %"$gasrem_3977"
  br i1 %"$gascmp_3978", label %"$out_of_gas_3979", label %"$have_gas_3980"

"$out_of_gas_3979":                               ; preds = %"$matchsucc_3954"
  call void @_out_of_gas()
  br label %"$have_gas_3980"

"$have_gas_3980":                                 ; preds = %"$out_of_gas_3979", %"$matchsucc_3954"
  %"$consume_3981" = sub i64 %"$gasrem_3977", 1
  store i64 %"$consume_3981", i64* @_gasrem
  %b4 = alloca %TName_Bool*
  %"$gasrem_3982" = load i64, i64* @_gasrem
  %"$gascmp_3983" = icmp ugt i64 2, %"$gasrem_3982"
  br i1 %"$gascmp_3983", label %"$out_of_gas_3984", label %"$have_gas_3985"

"$out_of_gas_3984":                               ; preds = %"$have_gas_3980"
  call void @_out_of_gas()
  br label %"$have_gas_3985"

"$have_gas_3985":                                 ; preds = %"$out_of_gas_3984", %"$have_gas_3980"
  %"$consume_3986" = sub i64 %"$gasrem_3982", 2
  store i64 %"$consume_3986", i64* @_gasrem
  %"$t4_3988" = load %TName_Option_String*, %TName_Option_String** %t4
  %"$t4_tag_3989" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_3988", i32 0, i32 0
  %"$t4_tag_3990" = load i8, i8* %"$t4_tag_3989"
  switch i8 %"$t4_tag_3990", label %"$empty_default_3991" [
    i8 0, label %"$Some_3992"
    i8 1, label %"$None_4000"
  ]

"$Some_3992":                                     ; preds = %"$have_gas_3985"
  %"$t4_3993" = bitcast %TName_Option_String* %"$t4_3988" to %CName_Some_String*
  %"$t4v_gep_3994" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_3993", i32 0, i32 1
  %"$t4v_load_3995" = load %String, %String* %"$t4v_gep_3994"
  %t4v = alloca %String
  store %String %"$t4v_load_3995", %String* %t4v
  %"$execptr_load_3996" = load i8*, i8** @_execptr
  %"$t4v_3997" = load %String, %String* %t4v
  %"$v4_3998" = load %String, %String* %v4
  %"$eq_call_3999" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_3996", %String %"$t4v_3997", %String %"$v4_3998")
  store %TName_Bool* %"$eq_call_3999", %TName_Bool** %b4
  br label %"$matchsucc_3987"

"$None_4000":                                     ; preds = %"$have_gas_3985"
  %"$t4_4001" = bitcast %TName_Option_String* %"$t4_3988" to %CName_None_String*
  %"$gasrem_4002" = load i64, i64* @_gasrem
  %"$gascmp_4003" = icmp ugt i64 1, %"$gasrem_4002"
  br i1 %"$gascmp_4003", label %"$out_of_gas_4004", label %"$have_gas_4005"

"$out_of_gas_4004":                               ; preds = %"$None_4000"
  call void @_out_of_gas()
  br label %"$have_gas_4005"

"$have_gas_4005":                                 ; preds = %"$out_of_gas_4004", %"$None_4000"
  %"$consume_4006" = sub i64 %"$gasrem_4002", 1
  store i64 %"$consume_4006", i64* @_gasrem
  %"$adtval_4007_load" = load i8*, i8** @_execptr
  %"$adtval_4007_salloc" = call i8* @_salloc(i8* %"$adtval_4007_load", i64 1)
  %"$adtval_4007" = bitcast i8* %"$adtval_4007_salloc" to %CName_False*
  %"$adtgep_4008" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4007", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4008"
  %"$adtptr_4009" = bitcast %CName_False* %"$adtval_4007" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4009", %TName_Bool** %b4
  br label %"$matchsucc_3987"

"$empty_default_3991":                            ; preds = %"$have_gas_3985"
  br label %"$matchsucc_3987"

"$matchsucc_3987":                                ; preds = %"$have_gas_4005", %"$Some_3992", %"$empty_default_3991"
  %"$gasrem_4010" = load i64, i64* @_gasrem
  %"$gascmp_4011" = icmp ugt i64 1, %"$gasrem_4010"
  br i1 %"$gascmp_4011", label %"$out_of_gas_4012", label %"$have_gas_4013"

"$out_of_gas_4012":                               ; preds = %"$matchsucc_3987"
  call void @_out_of_gas()
  br label %"$have_gas_4013"

"$have_gas_4013":                                 ; preds = %"$out_of_gas_4012", %"$matchsucc_3987"
  %"$consume_4014" = sub i64 %"$gasrem_4010", 1
  store i64 %"$consume_4014", i64* @_gasrem
  %b = alloca %TName_Bool*
  %"$gasrem_4015" = load i64, i64* @_gasrem
  %"$gascmp_4016" = icmp ugt i64 1, %"$gasrem_4015"
  br i1 %"$gascmp_4016", label %"$out_of_gas_4017", label %"$have_gas_4018"

"$out_of_gas_4017":                               ; preds = %"$have_gas_4013"
  call void @_out_of_gas()
  br label %"$have_gas_4018"

"$have_gas_4018":                                 ; preds = %"$out_of_gas_4017", %"$have_gas_4013"
  %"$consume_4019" = sub i64 %"$gasrem_4015", 1
  store i64 %"$consume_4019", i64* @_gasrem
  %a1 = alloca %TName_Bool*
  %"$gasrem_4020" = load i64, i64* @_gasrem
  %"$gascmp_4021" = icmp ugt i64 1, %"$gasrem_4020"
  br i1 %"$gascmp_4021", label %"$out_of_gas_4022", label %"$have_gas_4023"

"$out_of_gas_4022":                               ; preds = %"$have_gas_4018"
  call void @_out_of_gas()
  br label %"$have_gas_4023"

"$have_gas_4023":                                 ; preds = %"$out_of_gas_4022", %"$have_gas_4018"
  %"$consume_4024" = sub i64 %"$gasrem_4020", 1
  store i64 %"$consume_4024", i64* @_gasrem
  %"$andb_16" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_4025" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_4026" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_4025", 0
  %"$andb_envptr_4027" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_4025", 1
  %"$b1_4028" = load %TName_Bool*, %TName_Bool** %b1
  %"$andb_call_4029" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_4026"(i8* %"$andb_envptr_4027", %TName_Bool* %"$b1_4028")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_4029", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_16"
  %"$andb_17" = alloca %TName_Bool*
  %"$$andb_16_4030" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_16"
  %"$$andb_16_fptr_4031" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_16_4030", 0
  %"$$andb_16_envptr_4032" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_16_4030", 1
  %"$b2_4033" = load %TName_Bool*, %TName_Bool** %b2
  %"$$andb_16_call_4034" = call %TName_Bool* %"$$andb_16_fptr_4031"(i8* %"$$andb_16_envptr_4032", %TName_Bool* %"$b2_4033")
  store %TName_Bool* %"$$andb_16_call_4034", %TName_Bool** %"$andb_17"
  %"$$andb_17_4035" = load %TName_Bool*, %TName_Bool** %"$andb_17"
  store %TName_Bool* %"$$andb_17_4035", %TName_Bool** %a1
  %"$gasrem_4036" = load i64, i64* @_gasrem
  %"$gascmp_4037" = icmp ugt i64 1, %"$gasrem_4036"
  br i1 %"$gascmp_4037", label %"$out_of_gas_4038", label %"$have_gas_4039"

"$out_of_gas_4038":                               ; preds = %"$have_gas_4023"
  call void @_out_of_gas()
  br label %"$have_gas_4039"

"$have_gas_4039":                                 ; preds = %"$out_of_gas_4038", %"$have_gas_4023"
  %"$consume_4040" = sub i64 %"$gasrem_4036", 1
  store i64 %"$consume_4040", i64* @_gasrem
  %a2 = alloca %TName_Bool*
  %"$gasrem_4041" = load i64, i64* @_gasrem
  %"$gascmp_4042" = icmp ugt i64 1, %"$gasrem_4041"
  br i1 %"$gascmp_4042", label %"$out_of_gas_4043", label %"$have_gas_4044"

"$out_of_gas_4043":                               ; preds = %"$have_gas_4039"
  call void @_out_of_gas()
  br label %"$have_gas_4044"

"$have_gas_4044":                                 ; preds = %"$out_of_gas_4043", %"$have_gas_4039"
  %"$consume_4045" = sub i64 %"$gasrem_4041", 1
  store i64 %"$consume_4045", i64* @_gasrem
  %"$andb_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_4046" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_4047" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_4046", 0
  %"$andb_envptr_4048" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_4046", 1
  %"$b3_4049" = load %TName_Bool*, %TName_Bool** %b3
  %"$andb_call_4050" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_4047"(i8* %"$andb_envptr_4048", %TName_Bool* %"$b3_4049")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_4050", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_18"
  %"$andb_19" = alloca %TName_Bool*
  %"$$andb_18_4051" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_18"
  %"$$andb_18_fptr_4052" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_18_4051", 0
  %"$$andb_18_envptr_4053" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_18_4051", 1
  %"$b4_4054" = load %TName_Bool*, %TName_Bool** %b4
  %"$$andb_18_call_4055" = call %TName_Bool* %"$$andb_18_fptr_4052"(i8* %"$$andb_18_envptr_4053", %TName_Bool* %"$b4_4054")
  store %TName_Bool* %"$$andb_18_call_4055", %TName_Bool** %"$andb_19"
  %"$$andb_19_4056" = load %TName_Bool*, %TName_Bool** %"$andb_19"
  store %TName_Bool* %"$$andb_19_4056", %TName_Bool** %a2
  %"$gasrem_4057" = load i64, i64* @_gasrem
  %"$gascmp_4058" = icmp ugt i64 1, %"$gasrem_4057"
  br i1 %"$gascmp_4058", label %"$out_of_gas_4059", label %"$have_gas_4060"

"$out_of_gas_4059":                               ; preds = %"$have_gas_4044"
  call void @_out_of_gas()
  br label %"$have_gas_4060"

"$have_gas_4060":                                 ; preds = %"$out_of_gas_4059", %"$have_gas_4044"
  %"$consume_4061" = sub i64 %"$gasrem_4057", 1
  store i64 %"$consume_4061", i64* @_gasrem
  %"$andb_20" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_4062" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_4063" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_4062", 0
  %"$andb_envptr_4064" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_4062", 1
  %"$a1_4065" = load %TName_Bool*, %TName_Bool** %a1
  %"$andb_call_4066" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_4063"(i8* %"$andb_envptr_4064", %TName_Bool* %"$a1_4065")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_4066", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_20"
  %"$andb_21" = alloca %TName_Bool*
  %"$$andb_20_4067" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_20"
  %"$$andb_20_fptr_4068" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_20_4067", 0
  %"$$andb_20_envptr_4069" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_20_4067", 1
  %"$a2_4070" = load %TName_Bool*, %TName_Bool** %a2
  %"$$andb_20_call_4071" = call %TName_Bool* %"$$andb_20_fptr_4068"(i8* %"$$andb_20_envptr_4069", %TName_Bool* %"$a2_4070")
  store %TName_Bool* %"$$andb_20_call_4071", %TName_Bool** %"$andb_21"
  %"$$andb_21_4072" = load %TName_Bool*, %TName_Bool** %"$andb_21"
  store %TName_Bool* %"$$andb_21_4072", %TName_Bool** %b
  %"$gasrem_4073" = load i64, i64* @_gasrem
  %"$gascmp_4074" = icmp ugt i64 2, %"$gasrem_4073"
  br i1 %"$gascmp_4074", label %"$out_of_gas_4075", label %"$have_gas_4076"

"$out_of_gas_4075":                               ; preds = %"$have_gas_4060"
  call void @_out_of_gas()
  br label %"$have_gas_4076"

"$have_gas_4076":                                 ; preds = %"$out_of_gas_4075", %"$have_gas_4060"
  %"$consume_4077" = sub i64 %"$gasrem_4073", 2
  store i64 %"$consume_4077", i64* @_gasrem
  %"$b_4079" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_4080" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_4079", i32 0, i32 0
  %"$b_tag_4081" = load i8, i8* %"$b_tag_4080"
  switch i8 %"$b_tag_4081", label %"$empty_default_4082" [
    i8 0, label %"$True_4083"
    i8 1, label %"$False_4085"
  ]

"$True_4083":                                     ; preds = %"$have_gas_4076"
  %"$b_4084" = bitcast %TName_Bool* %"$b_4079" to %CName_True*
  br label %"$matchsucc_4078"

"$False_4085":                                    ; preds = %"$have_gas_4076"
  %"$b_4086" = bitcast %TName_Bool* %"$b_4079" to %CName_False*
  %"$gasrem_4087" = load i64, i64* @_gasrem
  %"$gascmp_4088" = icmp ugt i64 1, %"$gasrem_4087"
  br i1 %"$gascmp_4088", label %"$out_of_gas_4089", label %"$have_gas_4090"

"$out_of_gas_4089":                               ; preds = %"$False_4085"
  call void @_out_of_gas()
  br label %"$have_gas_4090"

"$have_gas_4090":                                 ; preds = %"$out_of_gas_4089", %"$False_4085"
  %"$consume_4091" = sub i64 %"$gasrem_4087", 1
  store i64 %"$consume_4091", i64* @_gasrem
  %"$fail__sender_4092" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4092"
  %"$tname_4093" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_4092", %String %"$tname_4093")
  br label %"$matchsucc_4078"

"$empty_default_4082":                            ; preds = %"$have_gas_4076"
  br label %"$matchsucc_4078"

"$matchsucc_4078":                                ; preds = %"$have_gas_4090", %"$True_4083", %"$empty_default_4082"
  %"$gasrem_4094" = load i64, i64* @_gasrem
  %"$gascmp_4095" = icmp ugt i64 1, %"$gasrem_4094"
  br i1 %"$gascmp_4095", label %"$out_of_gas_4096", label %"$have_gas_4097"

"$out_of_gas_4096":                               ; preds = %"$matchsucc_4078"
  call void @_out_of_gas()
  br label %"$have_gas_4097"

"$have_gas_4097":                                 ; preds = %"$out_of_gas_4096", %"$matchsucc_4078"
  %"$consume_4098" = sub i64 %"$gasrem_4094", 1
  store i64 %"$consume_4098", i64* @_gasrem
  %m1 = alloca %Map_String_String*
  %"$gasrem_4099" = load i64, i64* @_gasrem
  %"$gascmp_4100" = icmp ugt i64 1, %"$gasrem_4099"
  br i1 %"$gascmp_4100", label %"$out_of_gas_4101", label %"$have_gas_4102"

"$out_of_gas_4101":                               ; preds = %"$have_gas_4097"
  call void @_out_of_gas()
  br label %"$have_gas_4102"

"$have_gas_4102":                                 ; preds = %"$out_of_gas_4101", %"$have_gas_4097"
  %"$consume_4103" = sub i64 %"$gasrem_4099", 1
  store i64 %"$consume_4103", i64* @_gasrem
  %k = alloca %String
  %"$gasrem_4104" = load i64, i64* @_gasrem
  %"$gascmp_4105" = icmp ugt i64 1, %"$gasrem_4104"
  br i1 %"$gascmp_4105", label %"$out_of_gas_4106", label %"$have_gas_4107"

"$out_of_gas_4106":                               ; preds = %"$have_gas_4102"
  call void @_out_of_gas()
  br label %"$have_gas_4107"

"$have_gas_4107":                                 ; preds = %"$out_of_gas_4106", %"$have_gas_4102"
  %"$consume_4108" = sub i64 %"$gasrem_4104", 1
  store i64 %"$consume_4108", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4109", i32 0, i32 0), i32 0 }, %String* %k
  %"$gasrem_4110" = load i64, i64* @_gasrem
  %"$gascmp_4111" = icmp ugt i64 1, %"$gasrem_4110"
  br i1 %"$gascmp_4111", label %"$out_of_gas_4112", label %"$have_gas_4113"

"$out_of_gas_4112":                               ; preds = %"$have_gas_4107"
  call void @_out_of_gas()
  br label %"$have_gas_4113"

"$have_gas_4113":                                 ; preds = %"$out_of_gas_4112", %"$have_gas_4107"
  %"$consume_4114" = sub i64 %"$gasrem_4110", 1
  store i64 %"$consume_4114", i64* @_gasrem
  %v = alloca %String
  %"$gasrem_4115" = load i64, i64* @_gasrem
  %"$gascmp_4116" = icmp ugt i64 1, %"$gasrem_4115"
  br i1 %"$gascmp_4116", label %"$out_of_gas_4117", label %"$have_gas_4118"

"$out_of_gas_4117":                               ; preds = %"$have_gas_4113"
  call void @_out_of_gas()
  br label %"$have_gas_4118"

"$have_gas_4118":                                 ; preds = %"$out_of_gas_4117", %"$have_gas_4113"
  %"$consume_4119" = sub i64 %"$gasrem_4115", 1
  store i64 %"$consume_4119", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4120", i32 0, i32 0), i32 3 }, %String* %v
  %"$gasrem_4121" = load i64, i64* @_gasrem
  %"$gascmp_4122" = icmp ugt i64 1, %"$gasrem_4121"
  br i1 %"$gascmp_4122", label %"$out_of_gas_4123", label %"$have_gas_4124"

"$out_of_gas_4123":                               ; preds = %"$have_gas_4118"
  call void @_out_of_gas()
  br label %"$have_gas_4124"

"$have_gas_4124":                                 ; preds = %"$out_of_gas_4123", %"$have_gas_4118"
  %"$consume_4125" = sub i64 %"$gasrem_4121", 1
  store i64 %"$consume_4125", i64* @_gasrem
  %e = alloca %Map_String_String*
  %"$gasrem_4126" = load i64, i64* @_gasrem
  %"$gascmp_4127" = icmp ugt i64 1, %"$gasrem_4126"
  br i1 %"$gascmp_4127", label %"$out_of_gas_4128", label %"$have_gas_4129"

"$out_of_gas_4128":                               ; preds = %"$have_gas_4124"
  call void @_out_of_gas()
  br label %"$have_gas_4129"

"$have_gas_4129":                                 ; preds = %"$out_of_gas_4128", %"$have_gas_4124"
  %"$consume_4130" = sub i64 %"$gasrem_4126", 1
  store i64 %"$consume_4130", i64* @_gasrem
  %"$execptr_load_4131" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_4132" = call i8* @_new_empty_map(i8* %"$execptr_load_4131")
  %"$Emp_4133" = bitcast i8* %"$_new_empty_map_call_4132" to %Map_String_String*
  store %Map_String_String* %"$Emp_4133", %Map_String_String** %e
  %"$execptr_load_4134" = load i8*, i8** @_execptr
  %"$e_4135" = load %Map_String_String*, %Map_String_String** %e
  %"$$e_4135_4136" = bitcast %Map_String_String* %"$e_4135" to i8*
  %"$put_k_4137" = alloca %String
  %"$k_4138" = load %String, %String* %k
  store %String %"$k_4138", %String* %"$put_k_4137"
  %"$$put_k_4137_4139" = bitcast %String* %"$put_k_4137" to i8*
  %"$put_v_4140" = alloca %String
  %"$v_4141" = load %String, %String* %v
  store %String %"$v_4141", %String* %"$put_v_4140"
  %"$$put_v_4140_4142" = bitcast %String* %"$put_v_4140" to i8*
  %"$put_call_4143" = call i8* @_put(i8* %"$execptr_load_4134", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e_4135_4136", i8* %"$$put_k_4137_4139", i8* %"$$put_v_4140_4142")
  %"$_put_4144" = bitcast i8* %"$put_call_4143" to %Map_String_String*
  store %Map_String_String* %"$_put_4144", %Map_String_String** %m1
  %"$m1_4145" = load %Map_String_String*, %Map_String_String** %m1
  %"$$m1_4145_4146" = bitcast %Map_String_String* %"$m1_4145" to i8*
  %"$_literal_cost_call_4147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m1_4145_4146")
  %"$gasrem_4148" = load i64, i64* @_gasrem
  %"$gascmp_4149" = icmp ugt i64 %"$_literal_cost_call_4147", %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4129"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4129"
  %"$consume_4152" = sub i64 %"$gasrem_4148", %"$_literal_cost_call_4147"
  store i64 %"$consume_4152", i64* @_gasrem
  %"$execptr_load_4153" = load i8*, i8** @_execptr
  %"$m1_4155" = load %Map_String_String*, %Map_String_String** %m1
  %"$update_value_4156" = bitcast %Map_String_String* %"$m1_4155" to i8*
  call void @_update_field(i8* %"$execptr_load_4153", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_4156")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_4158" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4159" = bitcast i8* %"$_amount_4158" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4159"
  %"$_sender_4160" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4161" = bitcast i8* %"$_sender_4160" to [20 x i8]*
  call void @"$t16_3657"(%Uint128 %_amount, [20 x i8]* %"$_sender_4161")
  ret void
}

define internal void @"$t17_4162"(%Uint128 %_amount, [20 x i8]* %"$_sender_4163") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4163"
  %"$gasrem_4164" = load i64, i64* @_gasrem
  %"$gascmp_4165" = icmp ugt i64 1, %"$gasrem_4164"
  br i1 %"$gascmp_4165", label %"$out_of_gas_4166", label %"$have_gas_4167"

"$out_of_gas_4166":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4167"

"$have_gas_4167":                                 ; preds = %"$out_of_gas_4166", %entry
  %"$consume_4168" = sub i64 %"$gasrem_4164", 1
  store i64 %"$consume_4168", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_4169" = load i64, i64* @_gasrem
  %"$gascmp_4170" = icmp ugt i64 1, %"$gasrem_4169"
  br i1 %"$gascmp_4170", label %"$out_of_gas_4171", label %"$have_gas_4172"

"$out_of_gas_4171":                               ; preds = %"$have_gas_4167"
  call void @_out_of_gas()
  br label %"$have_gas_4172"

"$have_gas_4172":                                 ; preds = %"$out_of_gas_4171", %"$have_gas_4167"
  %"$consume_4173" = sub i64 %"$gasrem_4169", 1
  store i64 %"$consume_4173", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4174", i32 0, i32 0), i32 3 }, %String* %tname
  %"$gasrem_4175" = load i64, i64* @_gasrem
  %"$gascmp_4176" = icmp ugt i64 1, %"$gasrem_4175"
  br i1 %"$gascmp_4176", label %"$out_of_gas_4177", label %"$have_gas_4178"

"$out_of_gas_4177":                               ; preds = %"$have_gas_4172"
  call void @_out_of_gas()
  br label %"$have_gas_4178"

"$have_gas_4178":                                 ; preds = %"$out_of_gas_4177", %"$have_gas_4172"
  %"$consume_4179" = sub i64 %"$gasrem_4175", 1
  store i64 %"$consume_4179", i64* @_gasrem
  %key = alloca %String
  %"$gasrem_4180" = load i64, i64* @_gasrem
  %"$gascmp_4181" = icmp ugt i64 1, %"$gasrem_4180"
  br i1 %"$gascmp_4181", label %"$out_of_gas_4182", label %"$have_gas_4183"

"$out_of_gas_4182":                               ; preds = %"$have_gas_4178"
  call void @_out_of_gas()
  br label %"$have_gas_4183"

"$have_gas_4183":                                 ; preds = %"$out_of_gas_4182", %"$have_gas_4178"
  %"$consume_4184" = sub i64 %"$gasrem_4180", 1
  store i64 %"$consume_4184", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4185", i32 0, i32 0), i32 0 }, %String* %key
  %found = alloca %TName_Bool*
  %"$indices_buf_4186_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4186_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4186_salloc_load", i64 16)
  %"$indices_buf_4186_salloc" = bitcast i8* %"$indices_buf_4186_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4186" = bitcast [16 x i8]* %"$indices_buf_4186_salloc" to i8*
  %"$key_4187" = load %String, %String* %key
  %"$indices_gep_4188" = getelementptr i8, i8* %"$indices_buf_4186", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4188" to %String*
  store %String %"$key_4187", %String* %indices_cast
  %"$execptr_load_4189" = load i8*, i8** @_execptr
  %"$found_4191" = call i8* @_fetch_field(i8* %"$execptr_load_4189", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4190", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_4186", i32 0)
  %"$found_4192" = bitcast i8* %"$found_4191" to %TName_Bool*
  store %TName_Bool* %"$found_4192", %TName_Bool** %found
  %"$found_4193" = load %TName_Bool*, %TName_Bool** %found
  %"$$found_4193_4194" = bitcast %TName_Bool* %"$found_4193" to i8*
  %"$_literal_cost_call_4195" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_68", i8* %"$$found_4193_4194")
  %"$gasadd_4196" = add i64 %"$_literal_cost_call_4195", 0
  %"$gasadd_4197" = add i64 %"$gasadd_4196", 1
  %"$gasrem_4198" = load i64, i64* @_gasrem
  %"$gascmp_4199" = icmp ugt i64 %"$gasadd_4197", %"$gasrem_4198"
  br i1 %"$gascmp_4199", label %"$out_of_gas_4200", label %"$have_gas_4201"

"$out_of_gas_4200":                               ; preds = %"$have_gas_4183"
  call void @_out_of_gas()
  br label %"$have_gas_4201"

"$have_gas_4201":                                 ; preds = %"$out_of_gas_4200", %"$have_gas_4183"
  %"$consume_4202" = sub i64 %"$gasrem_4198", %"$gasadd_4197"
  store i64 %"$consume_4202", i64* @_gasrem
  %"$gasrem_4203" = load i64, i64* @_gasrem
  %"$gascmp_4204" = icmp ugt i64 2, %"$gasrem_4203"
  br i1 %"$gascmp_4204", label %"$out_of_gas_4205", label %"$have_gas_4206"

"$out_of_gas_4205":                               ; preds = %"$have_gas_4201"
  call void @_out_of_gas()
  br label %"$have_gas_4206"

"$have_gas_4206":                                 ; preds = %"$out_of_gas_4205", %"$have_gas_4201"
  %"$consume_4207" = sub i64 %"$gasrem_4203", 2
  store i64 %"$consume_4207", i64* @_gasrem
  %"$found_4209" = load %TName_Bool*, %TName_Bool** %found
  %"$found_tag_4210" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4209", i32 0, i32 0
  %"$found_tag_4211" = load i8, i8* %"$found_tag_4210"
  switch i8 %"$found_tag_4211", label %"$empty_default_4212" [
    i8 0, label %"$True_4213"
    i8 1, label %"$False_4215"
  ]

"$True_4213":                                     ; preds = %"$have_gas_4206"
  %"$found_4214" = bitcast %TName_Bool* %"$found_4209" to %CName_True*
  br label %"$matchsucc_4208"

"$False_4215":                                    ; preds = %"$have_gas_4206"
  %"$found_4216" = bitcast %TName_Bool* %"$found_4209" to %CName_False*
  %"$gasrem_4217" = load i64, i64* @_gasrem
  %"$gascmp_4218" = icmp ugt i64 1, %"$gasrem_4217"
  br i1 %"$gascmp_4218", label %"$out_of_gas_4219", label %"$have_gas_4220"

"$out_of_gas_4219":                               ; preds = %"$False_4215"
  call void @_out_of_gas()
  br label %"$have_gas_4220"

"$have_gas_4220":                                 ; preds = %"$out_of_gas_4219", %"$False_4215"
  %"$consume_4221" = sub i64 %"$gasrem_4217", 1
  store i64 %"$consume_4221", i64* @_gasrem
  %"$fail__sender_4222" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4222"
  %"$tname_4223" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_4222", %String %"$tname_4223")
  br label %"$matchsucc_4208"

"$empty_default_4212":                            ; preds = %"$have_gas_4206"
  br label %"$matchsucc_4208"

"$matchsucc_4208":                                ; preds = %"$have_gas_4220", %"$True_4213", %"$empty_default_4212"
  %"$gasrem_4224" = load i64, i64* @_gasrem
  %"$gascmp_4225" = icmp ugt i64 1, %"$gasrem_4224"
  br i1 %"$gascmp_4225", label %"$out_of_gas_4226", label %"$have_gas_4227"

"$out_of_gas_4226":                               ; preds = %"$matchsucc_4208"
  call void @_out_of_gas()
  br label %"$have_gas_4227"

"$have_gas_4227":                                 ; preds = %"$out_of_gas_4226", %"$matchsucc_4208"
  %"$consume_4228" = sub i64 %"$gasrem_4224", 1
  store i64 %"$consume_4228", i64* @_gasrem
  %"$indices_buf_4229_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4229_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4229_salloc_load", i64 16)
  %"$indices_buf_4229_salloc" = bitcast i8* %"$indices_buf_4229_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4229" = bitcast [16 x i8]* %"$indices_buf_4229_salloc" to i8*
  %"$key_4230" = load %String, %String* %key
  %"$indices_gep_4231" = getelementptr i8, i8* %"$indices_buf_4229", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4231" to %String*
  store %String %"$key_4230", %String* %indices_cast1
  %"$execptr_load_4232" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_4232", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4233", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_4229", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_4235" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4236" = bitcast i8* %"$_amount_4235" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4236"
  %"$_sender_4237" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4238" = bitcast i8* %"$_sender_4237" to [20 x i8]*
  call void @"$t17_4162"(%Uint128 %_amount, [20 x i8]* %"$_sender_4238")
  ret void
}

define internal void @"$t18_4239"(%Uint128 %_amount, [20 x i8]* %"$_sender_4240") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4240"
  %"$gasrem_4241" = load i64, i64* @_gasrem
  %"$gascmp_4242" = icmp ugt i64 1, %"$gasrem_4241"
  br i1 %"$gascmp_4242", label %"$out_of_gas_4243", label %"$have_gas_4244"

"$out_of_gas_4243":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4244"

"$have_gas_4244":                                 ; preds = %"$out_of_gas_4243", %entry
  %"$consume_4245" = sub i64 %"$gasrem_4241", 1
  store i64 %"$consume_4245", i64* @_gasrem
  %tname = alloca %String
  %"$gasrem_4246" = load i64, i64* @_gasrem
  %"$gascmp_4247" = icmp ugt i64 1, %"$gasrem_4246"
  br i1 %"$gascmp_4247", label %"$out_of_gas_4248", label %"$have_gas_4249"

"$out_of_gas_4248":                               ; preds = %"$have_gas_4244"
  call void @_out_of_gas()
  br label %"$have_gas_4249"

"$have_gas_4249":                                 ; preds = %"$out_of_gas_4248", %"$have_gas_4244"
  %"$consume_4250" = sub i64 %"$gasrem_4246", 1
  store i64 %"$consume_4250", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4251", i32 0, i32 0), i32 3 }, %String* %tname
  %"$gasrem_4252" = load i64, i64* @_gasrem
  %"$gascmp_4253" = icmp ugt i64 1, %"$gasrem_4252"
  br i1 %"$gascmp_4253", label %"$out_of_gas_4254", label %"$have_gas_4255"

"$out_of_gas_4254":                               ; preds = %"$have_gas_4249"
  call void @_out_of_gas()
  br label %"$have_gas_4255"

"$have_gas_4255":                                 ; preds = %"$out_of_gas_4254", %"$have_gas_4249"
  %"$consume_4256" = sub i64 %"$gasrem_4252", 1
  store i64 %"$consume_4256", i64* @_gasrem
  %key = alloca %String
  %"$gasrem_4257" = load i64, i64* @_gasrem
  %"$gascmp_4258" = icmp ugt i64 1, %"$gasrem_4257"
  br i1 %"$gascmp_4258", label %"$out_of_gas_4259", label %"$have_gas_4260"

"$out_of_gas_4259":                               ; preds = %"$have_gas_4255"
  call void @_out_of_gas()
  br label %"$have_gas_4260"

"$have_gas_4260":                                 ; preds = %"$out_of_gas_4259", %"$have_gas_4255"
  %"$consume_4261" = sub i64 %"$gasrem_4257", 1
  store i64 %"$consume_4261", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4262", i32 0, i32 0), i32 0 }, %String* %key
  %found = alloca %TName_Bool*
  %"$indices_buf_4263_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4263_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4263_salloc_load", i64 16)
  %"$indices_buf_4263_salloc" = bitcast i8* %"$indices_buf_4263_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4263" = bitcast [16 x i8]* %"$indices_buf_4263_salloc" to i8*
  %"$key_4264" = load %String, %String* %key
  %"$indices_gep_4265" = getelementptr i8, i8* %"$indices_buf_4263", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4265" to %String*
  store %String %"$key_4264", %String* %indices_cast
  %"$execptr_load_4266" = load i8*, i8** @_execptr
  %"$found_4268" = call i8* @_fetch_field(i8* %"$execptr_load_4266", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4267", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_4263", i32 0)
  %"$found_4269" = bitcast i8* %"$found_4268" to %TName_Bool*
  store %TName_Bool* %"$found_4269", %TName_Bool** %found
  %"$found_4270" = load %TName_Bool*, %TName_Bool** %found
  %"$$found_4270_4271" = bitcast %TName_Bool* %"$found_4270" to i8*
  %"$_literal_cost_call_4272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_68", i8* %"$$found_4270_4271")
  %"$gasadd_4273" = add i64 %"$_literal_cost_call_4272", 0
  %"$gasadd_4274" = add i64 %"$gasadd_4273", 1
  %"$gasrem_4275" = load i64, i64* @_gasrem
  %"$gascmp_4276" = icmp ugt i64 %"$gasadd_4274", %"$gasrem_4275"
  br i1 %"$gascmp_4276", label %"$out_of_gas_4277", label %"$have_gas_4278"

"$out_of_gas_4277":                               ; preds = %"$have_gas_4260"
  call void @_out_of_gas()
  br label %"$have_gas_4278"

"$have_gas_4278":                                 ; preds = %"$out_of_gas_4277", %"$have_gas_4260"
  %"$consume_4279" = sub i64 %"$gasrem_4275", %"$gasadd_4274"
  store i64 %"$consume_4279", i64* @_gasrem
  %"$gasrem_4280" = load i64, i64* @_gasrem
  %"$gascmp_4281" = icmp ugt i64 2, %"$gasrem_4280"
  br i1 %"$gascmp_4281", label %"$out_of_gas_4282", label %"$have_gas_4283"

"$out_of_gas_4282":                               ; preds = %"$have_gas_4278"
  call void @_out_of_gas()
  br label %"$have_gas_4283"

"$have_gas_4283":                                 ; preds = %"$out_of_gas_4282", %"$have_gas_4278"
  %"$consume_4284" = sub i64 %"$gasrem_4280", 2
  store i64 %"$consume_4284", i64* @_gasrem
  %"$found_4286" = load %TName_Bool*, %TName_Bool** %found
  %"$found_tag_4287" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4286", i32 0, i32 0
  %"$found_tag_4288" = load i8, i8* %"$found_tag_4287"
  switch i8 %"$found_tag_4288", label %"$empty_default_4289" [
    i8 0, label %"$True_4290"
    i8 1, label %"$False_4299"
  ]

"$True_4290":                                     ; preds = %"$have_gas_4283"
  %"$found_4291" = bitcast %TName_Bool* %"$found_4286" to %CName_True*
  %"$gasrem_4292" = load i64, i64* @_gasrem
  %"$gascmp_4293" = icmp ugt i64 1, %"$gasrem_4292"
  br i1 %"$gascmp_4293", label %"$out_of_gas_4294", label %"$have_gas_4295"

"$out_of_gas_4294":                               ; preds = %"$True_4290"
  call void @_out_of_gas()
  br label %"$have_gas_4295"

"$have_gas_4295":                                 ; preds = %"$out_of_gas_4294", %"$True_4290"
  %"$consume_4296" = sub i64 %"$gasrem_4292", 1
  store i64 %"$consume_4296", i64* @_gasrem
  %"$fail__sender_4297" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4297"
  %"$tname_4298" = load %String, %String* %tname
  call void @"$fail_228"(%Uint128 %_amount, [20 x i8]* %"$fail__sender_4297", %String %"$tname_4298")
  br label %"$matchsucc_4285"

"$False_4299":                                    ; preds = %"$have_gas_4283"
  %"$found_4300" = bitcast %TName_Bool* %"$found_4286" to %CName_False*
  br label %"$matchsucc_4285"

"$empty_default_4289":                            ; preds = %"$have_gas_4283"
  br label %"$matchsucc_4285"

"$matchsucc_4285":                                ; preds = %"$False_4299", %"$have_gas_4295", %"$empty_default_4289"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_4302" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4303" = bitcast i8* %"$_amount_4302" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4303"
  %"$_sender_4304" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4305" = bitcast i8* %"$_sender_4304" to [20 x i8]*
  call void @"$t18_4239"(%Uint128 %_amount, [20 x i8]* %"$_sender_4305")
  ret void
}
