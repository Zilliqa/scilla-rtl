

; gas_remaining: 4002000
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_32" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_64" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_63"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_63" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_65"**, %"$TyDescrTy_ADTTyp_64"* }
%"$TyDescrTy_ADTTyp_Constr_65" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_70" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_75" = type { i32, %"$TyDescr_AddrFieldTyp_74"* }
%"$TyDescr_AddrFieldTyp_74" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_4445" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_4446" = type { %ParamDescrString, i32, %"$ParamDescr_4445"* }
%"$$fundef_25_env_123" = type { %TName_Bool* }
%"$$fundef_23_env_124" = type {}
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
@"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(String)_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_95" to i8*) }
@"$TyDescr_ADT_Option_String_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_String_ADTTyp_Specl_104" to i8*) }
@"$TyDescr_ADT_Bool_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Bool_ADTTyp_Specl_116" to i8*) }
@"$TyDescr_Map_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_70"* @"$TyDescr_MapTyp_119" to i8*) }
@"$TyDescr_Map_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_70"* @"$TyDescr_MapTyp_120" to i8*) }
@"$TyDescr_Map_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_70"* @"$TyDescr_MapTyp_121" to i8*) }
@"$TyDescr_Addr_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_75"* @"$TyDescr_AddrFields_122" to i8*) }
@"$TyDescr_Option_ADTTyp_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_64" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_106", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_63"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_63"*], [3 x %"$TyDescrTy_ADTTyp_Specl_63"*]* @"$TyDescr_Option_ADTTyp_m_specls_105", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_78" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72"]
@"$TyDescr_ADT_Some_79" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_79", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_81" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_82" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_82", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_80", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_83"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_72"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_73"]
@"$TyDescr_ADT_Some_88" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_88", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_90" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_91" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_91", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_90", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_93" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_89", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_92"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_94" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_73"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_93", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_String_Constr_m_args_96" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_50"]
@"$TyDescr_ADT_Some_97" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_String_ADTTyp_Constr_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_97", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_String_Constr_m_args_96", i32 0, i32 0) }
@"$TyDescr_Option_None_String_Constr_m_args_99" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_100" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_String_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_100", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_String_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_102" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_Some_String_ADTTyp_Constr_98", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Option_None_String_ADTTyp_Constr_101"]
@"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_103" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_50"]
@"$TyDescr_Option_String_ADTTyp_Specl_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_103", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_102", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_ADTTyp_m_specls_105" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_63"*] [%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_86", %"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_95", %"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Option_String_ADTTyp_Specl_104"]
@"$TyDescr_ADT_Option_106" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_118", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_63"*], [1 x %"$TyDescrTy_ADTTyp_Specl_63"*]* @"$TyDescr_Bool_ADTTyp_m_specls_117", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_108" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_109" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_109", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_112" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_112", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_114" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Bool_True_ADTTyp_Constr_110", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Bool_False_ADTTyp_Constr_113"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_115" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_115", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_114", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Bool_ADTTyp_107" }
@"$TyDescr_Bool_ADTTyp_m_specls_117" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_63"*] [%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Bool_ADTTyp_Specl_116"]
@"$TyDescr_ADT_Bool_118" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_119" = unnamed_addr constant %"$TyDescr_MapTyp_70" { %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_Map_72" }
@"$TyDescr_MapTyp_120" = unnamed_addr constant %"$TyDescr_MapTyp_70" { %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_Map_73" }
@"$TyDescr_MapTyp_121" = unnamed_addr constant %"$TyDescr_MapTyp_70" { %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_String_50" }
@"$TyDescr_AddrFields_122" = unnamed_addr constant %"$TyDescr_AddrTyp_75" { i32 -1, %"$TyDescr_AddrFieldTyp_74"* null }
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_179" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_181" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_194" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_206" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_218" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_230" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_247" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_252" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_255" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_287" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_292" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_295" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_302" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_333" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_334" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_359" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_402" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_413" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_437" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_438" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_463" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_506" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_517" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_532" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_556" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_567" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_578" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_582" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_642" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_674" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_678" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_716" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_737" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_758" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_769" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_773" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_819" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_830" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_841" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_858" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_882" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_893" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_904" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_915" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_921" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_983" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_1031" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1042" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1069" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1080" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1102" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1116" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1139" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_1150" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1161" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1167" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1205" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1240" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1262" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1282" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1293" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1299" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1337" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1372" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_1394" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_1414" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1425" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_1431" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1469" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1504" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_1526" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_1545" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1566" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_1577" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1588" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1594" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1632" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1667" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1689" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1709" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1713" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1751" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_1773" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1784" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1790" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1828" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_1850" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1861" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_1867" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1905" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_1927" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1938" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1949" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_1966" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1990" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_2001" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2012" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_2018" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2056" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2091" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_2113" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_2133" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2144" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_2150" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2188" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_2223" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_2245" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_2277" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2300" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_2301" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2377" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2388" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_2414" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2437" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_2448" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_2449" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2502" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2537" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_2559" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_2578" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2599" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_2600" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_2688" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2711" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_2712" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2801" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_2815" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2838" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_2849" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_2853" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2933" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_2981" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_3042" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3065" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_3066" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_3154" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_3177" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_3178" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3246" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_3266" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3277" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3414" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_3436" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_3458" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_3480" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_3500" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3511" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3522" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3533" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3544" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3555" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_3566" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3577" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3588" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3599" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_3770" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3793" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_3804" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3815" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3826" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3837" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3848" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3859" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3870" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3881" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_3887" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_3906" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_3925" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_3944" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3968" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3979" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3990" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_4001" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_4238" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_4249" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_4283" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4306" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_4317" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4321" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_4366" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4387" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_4398" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4402" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [23 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_67", %_TyDescrTy_Typ* @"$TyDescr_Event_56", %_TyDescrTy_Typ* @"$TyDescr_Int64_38", %_TyDescrTy_Typ* @"$TyDescr_Addr_76", %_TyDescrTy_Typ* @"$TyDescr_Map_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_62", %_TyDescrTy_Typ* @"$TyDescr_Uint256_48", %_TyDescrTy_Typ* @"$TyDescr_Uint32_36", %_TyDescrTy_Typ* @"$TyDescr_Map_72", %_TyDescrTy_Typ* @"$TyDescr_Uint64_40", %_TyDescrTy_Typ* @"$TyDescr_Bnum_52", %_TyDescrTy_Typ* @"$TyDescr_Uint128_44", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_66", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", %_TyDescrTy_Typ* @"$TyDescr_Int256_46", %_TyDescrTy_Typ* @"$TyDescr_Int128_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr_60", %_TyDescrTy_Typ* @"$TyDescr_Message_54", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@_tydescr_table_length = constant i32 23
@"$pname__scilla_version_4447" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_4448" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_4449" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_4447", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_36" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_4448", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_62" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_4449", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_52" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_4450" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4451" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4452" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t1_4453" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4450", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4451", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4452", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t1_4454" = unnamed_addr constant [2 x i8] c"t1"
@"$tpname__amount_4455" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4456" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4457" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t2_4458" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4455", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4456", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4457", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t2_4459" = unnamed_addr constant [2 x i8] c"t2"
@"$tpname__amount_4460" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4461" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4462" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t3_4463" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4460", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4461", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4462", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t3_4464" = unnamed_addr constant [2 x i8] c"t3"
@"$tpname__amount_4465" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4466" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4467" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t4_4468" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4465", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4466", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4467", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t4_4469" = unnamed_addr constant [2 x i8] c"t4"
@"$tpname__amount_4470" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4471" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4472" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t5_4473" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4470", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4471", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4472", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t5_4474" = unnamed_addr constant [2 x i8] c"t5"
@"$tpname__amount_4475" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4476" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4477" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t6_4478" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4475", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4476", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4477", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t6_4479" = unnamed_addr constant [2 x i8] c"t6"
@"$tpname__amount_4480" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4481" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4482" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t7_4483" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4480", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4481", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4482", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t7_4484" = unnamed_addr constant [2 x i8] c"t7"
@"$tpname__amount_4485" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4486" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4487" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t8_4488" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4485", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4486", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4487", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t8_4489" = unnamed_addr constant [2 x i8] c"t8"
@"$tpname__amount_4490" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4491" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4492" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t9_4493" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4490", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4491", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4492", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t9_4494" = unnamed_addr constant [2 x i8] c"t9"
@"$tpname__amount_4495" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4496" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4497" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t10_4498" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4495", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4496", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4497", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t10_4499" = unnamed_addr constant [3 x i8] c"t10"
@"$tpname__amount_4500" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4501" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4502" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t11_4503" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4500", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4501", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4502", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t11_4504" = unnamed_addr constant [3 x i8] c"t11"
@"$tpname__amount_4505" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4506" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4507" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t12_4508" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4505", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4506", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4507", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t12_4509" = unnamed_addr constant [3 x i8] c"t12"
@"$tpname__amount_4510" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4511" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4512" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t13_4513" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4510", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4511", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4512", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t13_4514" = unnamed_addr constant [3 x i8] c"t13"
@"$tpname__amount_4515" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4516" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4517" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t14_4518" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4515", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4516", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4517", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t14_4519" = unnamed_addr constant [3 x i8] c"t14"
@"$tpname__amount_4520" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4521" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4522" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t15_4523" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4520", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4521", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4522", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t15_4524" = unnamed_addr constant [3 x i8] c"t15"
@"$tpname__amount_4525" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4526" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4527" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t16_4528" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4525", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4526", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4527", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t16_4529" = unnamed_addr constant [3 x i8] c"t16"
@"$tpname__amount_4530" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4531" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4532" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t17_4533" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4530", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4531", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4532", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t17_4534" = unnamed_addr constant [3 x i8] c"t17"
@"$tpname__amount_4535" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4536" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4537" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t18_4538" = unnamed_addr constant [3 x %"$ParamDescr_4445"] [%"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4535", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_44" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4536", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_4445" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4537", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_t18_4539" = unnamed_addr constant [3 x i8] c"t18"
@_transition_parameters = constant [18 x %"$TransDescr_4446"] [%"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_4454", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t1_4453", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t2_4459", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t2_4458", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t3_4464", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t3_4463", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t4_4469", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t4_4468", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t5_4474", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t5_4473", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t6_4479", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t6_4478", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t7_4484", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t7_4483", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t8_4489", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t8_4488", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t9_4494", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t9_4493", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t10_4499", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t10_4498", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t11_4504", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t11_4503", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t12_4509", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t12_4508", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t13_4514", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t13_4513", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t14_4519", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t14_4518", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t15_4524", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t15_4523", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t16_4529", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t16_4528", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t17_4534", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t17_4533", i32 0, i32 0) }, %"$TransDescr_4446" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t18_4539", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4445"* getelementptr inbounds ([3 x %"$ParamDescr_4445"], [3 x %"$ParamDescr_4445"]* @"$tparams_t18_4538", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 18

define internal %TName_Bool* @"$fundef_25"(%"$$fundef_25_env_123"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_25_env_b_136" = getelementptr inbounds %"$$fundef_25_env_123", %"$$fundef_25_env_123"* %0, i32 0, i32 0
  %"$b_envload_137" = load %TName_Bool*, %TName_Bool** %"$$fundef_25_env_b_136", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_137", %TName_Bool** %b, align 8
  %"$retval_26" = alloca %TName_Bool*, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 2, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %entry
  %"$consume_142" = sub i64 %"$gasrem_138", 2
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$b_144" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_145" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_144", i32 0, i32 0
  %"$b_tag_146" = load i8, i8* %"$b_tag_145", align 1
  switch i8 %"$b_tag_146", label %"$empty_default_147" [
    i8 1, label %"$False_148"
    i8 0, label %"$True_158"
  ]

"$False_148":                                     ; preds = %"$have_gas_141"
  %"$b_149" = bitcast %TName_Bool* %"$b_144" to %CName_False*
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$False_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$False_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$adtval_155_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_155_salloc" = call i8* @_salloc(i8* %"$adtval_155_load", i64 1)
  %"$adtval_155" = bitcast i8* %"$adtval_155_salloc" to %CName_False*
  %"$adtgep_156" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_155", i32 0, i32 0
  store i8 1, i8* %"$adtgep_156", align 1
  %"$adtptr_157" = bitcast %CName_False* %"$adtval_155" to %TName_Bool*
  store %TName_Bool* %"$adtptr_157", %TName_Bool** %"$retval_26", align 8
  br label %"$matchsucc_143"

"$True_158":                                      ; preds = %"$have_gas_141"
  %"$b_159" = bitcast %TName_Bool* %"$b_144" to %CName_True*
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$True_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$True_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_26", align 8
  br label %"$matchsucc_143"

"$empty_default_147":                             ; preds = %"$have_gas_141"
  br label %"$matchsucc_143"

"$matchsucc_143":                                 ; preds = %"$have_gas_163", %"$have_gas_153", %"$empty_default_147"
  %"$$retval_26_165" = load %TName_Bool*, %TName_Bool** %"$retval_26", align 8
  ret %TName_Bool* %"$$retval_26_165"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_124"* %0, %TName_Bool* %1) {
entry:
  %"$retval_24" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %entry
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$$fundef_25_envp_130_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_130_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_130_load", i64 8)
  %"$$fundef_25_envp_130" = bitcast i8* %"$$fundef_25_envp_130_salloc" to %"$$fundef_25_env_123"*
  %"$$fundef_25_env_voidp_132" = bitcast %"$$fundef_25_env_123"* %"$$fundef_25_envp_130" to i8*
  %"$$fundef_25_cloval_133" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_25_env_123"*, %TName_Bool*)* @"$fundef_25" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_132", 1
  %"$$fundef_25_env_b_134" = getelementptr inbounds %"$$fundef_25_env_123", %"$$fundef_25_env_123"* %"$$fundef_25_envp_130", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_25_env_b_134", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_25_cloval_133", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  %"$$retval_24_135" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_24_135"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_23_env_124"*, %TName_Bool*)* @"$fundef_23" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$f_s1_27" = alloca %String, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_179", i32 0, i32 0), i32 3 }, %String* %"$f_s1_27", align 8
  %"$execptr_load_180" = load i8*, i8** @_execptr, align 8
  %"$$f_s1_27_182" = load %String, %String* %"$f_s1_27", align 8
  %"$update_value_183" = alloca %String, align 8
  store %String %"$$f_s1_27_182", %String* %"$update_value_183", align 8
  %"$update_value_184" = bitcast %String* %"$update_value_183" to i8*
  call void @_update_field(i8* %"$execptr_load_180", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_181", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i8* %"$update_value_184")
  %"$f_m1_28" = alloca %Map_String_String*, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_177"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_191" = call i8* @_new_empty_map(i8* %"$execptr_load_190")
  %"$_new_empty_map_192" = bitcast i8* %"$_new_empty_map_call_191" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_192", %Map_String_String** %"$f_m1_28", align 8
  %"$execptr_load_193" = load i8*, i8** @_execptr, align 8
  %"$$f_m1_28_195" = load %Map_String_String*, %Map_String_String** %"$f_m1_28", align 8
  %"$update_value_196" = bitcast %Map_String_String* %"$$f_m1_28_195" to i8*
  call void @_update_field(i8* %"$execptr_load_193", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_194", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_196")
  %"$f_m2_29" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_188"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_203" = call i8* @_new_empty_map(i8* %"$execptr_load_202")
  %"$_new_empty_map_204" = bitcast i8* %"$_new_empty_map_call_203" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_204", %"Map_String_Map_(String)_(String)"** %"$f_m2_29", align 8
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  %"$$f_m2_29_207" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_29", align 8
  %"$update_value_208" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_29_207" to i8*
  call void @_update_field(i8* %"$execptr_load_205", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_206", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_208")
  %"$f_m3_30" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
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
  %"$_new_empty_map_216" = bitcast i8* %"$_new_empty_map_call_215" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_216", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_30", align 8
  %"$execptr_load_217" = load i8*, i8** @_execptr, align 8
  %"$$f_m3_30_219" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_30", align 8
  %"$update_value_220" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_30_219" to i8*
  call void @_update_field(i8* %"$execptr_load_217", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_218", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_220")
  %"$f_m_31" = alloca %"Map_String_Map_(String)_(String)"*, align 8
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
  %"$_new_empty_map_228" = bitcast i8* %"$_new_empty_map_call_227" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_228", %"Map_String_Map_(String)_(String)"** %"$f_m_31", align 8
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$$f_m_31_231" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_31", align 8
  %"$update_value_232" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_31_231" to i8*
  call void @_update_field(i8* %"$execptr_load_229", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_232")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$_origin_234", [20 x i8]* %"$_sender_235", %String %tname) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_234", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_235", align 1
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %entry
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$msgobj_246_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_246_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_246_salloc_load", i64 81)
  %"$msgobj_246_salloc" = bitcast i8* %"$msgobj_246_salloc_salloc" to [81 x i8]*
  %"$msgobj_246" = bitcast [81 x i8]* %"$msgobj_246_salloc" to i8*
  store i8 2, i8* %"$msgobj_246", align 1
  %"$msgobj_fname_248" = getelementptr i8, i8* %"$msgobj_246", i32 1
  %"$msgobj_fname_249" = bitcast i8* %"$msgobj_fname_248" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_247", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_249", align 8
  %"$msgobj_td_250" = getelementptr i8, i8* %"$msgobj_246", i32 17
  %"$msgobj_td_251" = bitcast i8* %"$msgobj_td_250" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_251", align 8
  %"$msgobj_v_253" = getelementptr i8, i8* %"$msgobj_246", i32 25
  %"$msgobj_v_254" = bitcast i8* %"$msgobj_v_253" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_252", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_254", align 8
  %"$msgobj_fname_256" = getelementptr i8, i8* %"$msgobj_246", i32 41
  %"$msgobj_fname_257" = bitcast i8* %"$msgobj_fname_256" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_255", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_257", align 8
  %"$msgobj_td_258" = getelementptr i8, i8* %"$msgobj_246", i32 57
  %"$msgobj_td_259" = bitcast i8* %"$msgobj_td_258" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_259", align 8
  %"$msgobj_v_260" = getelementptr i8, i8* %"$msgobj_246", i32 65
  %"$msgobj_v_261" = bitcast i8* %"$msgobj_v_260" to %String*
  store %String %tname, %String* %"$msgobj_v_261", align 8
  store i8* %"$msgobj_246", i8** %e, align 8
  %"$e_263" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_265" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_263")
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 %"$_literal_cost_call_265", %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_244"
  %"$consume_270" = sub i64 %"$gasrem_266", %"$_literal_cost_call_265"
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$execptr_load_271" = load i8*, i8** @_execptr, align 8
  %"$e_272" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_271", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_272")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$_origin_274", [20 x i8]* %"$_sender_275", %String %tname, %String %msg) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_274", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_275", align 1
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %entry
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$msgobj_286_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_286_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_286_salloc_load", i64 121)
  %"$msgobj_286_salloc" = bitcast i8* %"$msgobj_286_salloc_salloc" to [121 x i8]*
  %"$msgobj_286" = bitcast [121 x i8]* %"$msgobj_286_salloc" to i8*
  store i8 3, i8* %"$msgobj_286", align 1
  %"$msgobj_fname_288" = getelementptr i8, i8* %"$msgobj_286", i32 1
  %"$msgobj_fname_289" = bitcast i8* %"$msgobj_fname_288" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_287", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_289", align 8
  %"$msgobj_td_290" = getelementptr i8, i8* %"$msgobj_286", i32 17
  %"$msgobj_td_291" = bitcast i8* %"$msgobj_td_290" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_291", align 8
  %"$msgobj_v_293" = getelementptr i8, i8* %"$msgobj_286", i32 25
  %"$msgobj_v_294" = bitcast i8* %"$msgobj_v_293" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_292", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_294", align 8
  %"$msgobj_fname_296" = getelementptr i8, i8* %"$msgobj_286", i32 41
  %"$msgobj_fname_297" = bitcast i8* %"$msgobj_fname_296" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_295", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_297", align 8
  %"$msgobj_td_298" = getelementptr i8, i8* %"$msgobj_286", i32 57
  %"$msgobj_td_299" = bitcast i8* %"$msgobj_td_298" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_299", align 8
  %"$msgobj_v_300" = getelementptr i8, i8* %"$msgobj_286", i32 65
  %"$msgobj_v_301" = bitcast i8* %"$msgobj_v_300" to %String*
  store %String %tname, %String* %"$msgobj_v_301", align 8
  %"$msgobj_fname_303" = getelementptr i8, i8* %"$msgobj_286", i32 81
  %"$msgobj_fname_304" = bitcast i8* %"$msgobj_fname_303" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_302", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_304", align 8
  %"$msgobj_td_305" = getelementptr i8, i8* %"$msgobj_286", i32 97
  %"$msgobj_td_306" = bitcast i8* %"$msgobj_td_305" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ** %"$msgobj_td_306", align 8
  %"$msgobj_v_307" = getelementptr i8, i8* %"$msgobj_286", i32 105
  %"$msgobj_v_308" = bitcast i8* %"$msgobj_v_307" to %String*
  store %String %msg, %String* %"$msgobj_v_308", align 8
  store i8* %"$msgobj_286", i8** %e, align 8
  %"$e_310" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_312" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_310")
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 %"$_literal_cost_call_312", %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_284"
  %"$consume_317" = sub i64 %"$gasrem_313", %"$_literal_cost_call_312"
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  %"$e_319" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_318", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", i8* %"$e_319")
  ret void
}

define internal void @"$t1_320"(%Uint128 %_amount, [20 x i8]* %"$_origin_321", [20 x i8]* %"$_sender_322") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_321", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_322", align 1
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %entry
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_333", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$f_call_336" = call i8* @_fetch_field(i8* %"$execptr_load_335", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_334", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i32 1)
  %"$f_337" = bitcast i8* %"$f_call_336" to %String*
  %"$f_338" = load %String, %String* %"$f_337", align 8
  store %String %"$f_338", %String* %f, align 8
  %"$_literal_cost_f_339" = alloca %String, align 8
  %"$f_340" = load %String, %String* %f, align 8
  store %String %"$f_340", %String* %"$_literal_cost_f_339", align 8
  %"$$_literal_cost_f_339_341" = bitcast %String* %"$_literal_cost_f_339" to i8*
  %"$_literal_cost_call_342" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_50", i8* %"$$_literal_cost_f_339_341")
  %"$gasadd_343" = add i64 %"$_literal_cost_call_342", 0
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 %"$gasadd_343", %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_331"
  %"$consume_348" = sub i64 %"$gasrem_344", %"$gasadd_343"
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_359", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_357"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$execptr_load_365" = load i8*, i8** @_execptr, align 8
  %"$f_366" = load %String, %String* %f, align 8
  %"$s_367" = load %String, %String* %s, align 8
  %"$eq_call_368" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_365", %String %"$f_366", %String %"$s_367")
  store %TName_Bool* %"$eq_call_368", %TName_Bool** %t, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 2, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_363"
  %"$consume_374" = sub i64 %"$gasrem_370", 2
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$t_376" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_377" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_376", i32 0, i32 0
  %"$t_tag_378" = load i8, i8* %"$t_tag_377", align 1
  switch i8 %"$t_tag_378", label %"$empty_default_379" [
    i8 1, label %"$False_380"
    i8 0, label %"$True_390"
  ]

"$False_380":                                     ; preds = %"$have_gas_373"
  %"$t_381" = bitcast %TName_Bool* %"$t_376" to %CName_False*
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$False_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$False_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$fail__origin_387" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_387", align 1
  %"$fail__sender_388" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_388", align 1
  %"$tname_389" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_387", [20 x i8]* %"$fail__sender_388", %String %"$tname_389")
  br label %"$matchsucc_375"

"$True_390":                                      ; preds = %"$have_gas_373"
  %"$t_391" = bitcast %TName_Bool* %"$t_376" to %CName_True*
  br label %"$matchsucc_375"

"$empty_default_379":                             ; preds = %"$have_gas_373"
  br label %"$matchsucc_375"

"$matchsucc_375":                                 ; preds = %"$True_390", %"$have_gas_385", %"$empty_default_379"
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$matchsucc_375"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$matchsucc_375"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_402", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$_literal_cost_s2_403" = alloca %String, align 8
  %"$s2_404" = load %String, %String* %s2, align 8
  store %String %"$s2_404", %String* %"$_literal_cost_s2_403", align 8
  %"$$_literal_cost_s2_403_405" = bitcast %String* %"$_literal_cost_s2_403" to i8*
  %"$_literal_cost_call_406" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_50", i8* %"$$_literal_cost_s2_403_405")
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 %"$_literal_cost_call_406", %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_400"
  %"$consume_411" = sub i64 %"$gasrem_407", %"$_literal_cost_call_406"
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$execptr_load_412" = load i8*, i8** @_execptr, align 8
  %"$s2_414" = load %String, %String* %s2, align 8
  %"$update_value_415" = alloca %String, align 8
  store %String %"$s2_414", %String* %"$update_value_415", align 8
  %"$update_value_416" = bitcast %String* %"$update_value_415" to i8*
  call void @_update_field(i8* %"$execptr_load_412", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_413", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i8* %"$update_value_416")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) {
entry:
  %"$_amount_418" = getelementptr i8, i8* %0, i32 0
  %"$_amount_419" = bitcast i8* %"$_amount_418" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_419", align 8
  %"$_origin_420" = getelementptr i8, i8* %0, i32 16
  %"$_origin_421" = bitcast i8* %"$_origin_420" to [20 x i8]*
  %"$_sender_422" = getelementptr i8, i8* %0, i32 36
  %"$_sender_423" = bitcast i8* %"$_sender_422" to [20 x i8]*
  call void @"$t1_320"(%Uint128 %_amount, [20 x i8]* %"$_origin_421", [20 x i8]* %"$_sender_423")
  ret void
}

define internal void @"$t2_424"(%Uint128 %_amount, [20 x i8]* %"$_origin_425", [20 x i8]* %"$_sender_426") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_425", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_426", align 1
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %entry
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 1, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 1
  store i64 %"$consume_436", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_437", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_439" = load i8*, i8** @_execptr, align 8
  %"$f_call_440" = call i8* @_fetch_field(i8* %"$execptr_load_439", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_438", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_50", i32 0, i8* null, i32 1)
  %"$f_441" = bitcast i8* %"$f_call_440" to %String*
  %"$f_442" = load %String, %String* %"$f_441", align 8
  store %String %"$f_442", %String* %f, align 8
  %"$_literal_cost_f_443" = alloca %String, align 8
  %"$f_444" = load %String, %String* %f, align 8
  store %String %"$f_444", %String* %"$_literal_cost_f_443", align 8
  %"$$_literal_cost_f_443_445" = bitcast %String* %"$_literal_cost_f_443" to i8*
  %"$_literal_cost_call_446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_50", i8* %"$$_literal_cost_f_443_445")
  %"$gasadd_447" = add i64 %"$_literal_cost_call_446", 0
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 %"$gasadd_447", %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_435"
  %"$consume_452" = sub i64 %"$gasrem_448", %"$gasadd_447"
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_463", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_461"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$execptr_load_469" = load i8*, i8** @_execptr, align 8
  %"$f_470" = load %String, %String* %f, align 8
  %"$s_471" = load %String, %String* %s, align 8
  %"$eq_call_472" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_469", %String %"$f_470", %String %"$s_471")
  store %TName_Bool* %"$eq_call_472", %TName_Bool** %t, align 8
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 2, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_467"
  %"$consume_478" = sub i64 %"$gasrem_474", 2
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %"$t_480" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_481" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_480", i32 0, i32 0
  %"$t_tag_482" = load i8, i8* %"$t_tag_481", align 1
  switch i8 %"$t_tag_482", label %"$empty_default_483" [
    i8 1, label %"$False_484"
    i8 0, label %"$True_494"
  ]

"$False_484":                                     ; preds = %"$have_gas_477"
  %"$t_485" = bitcast %TName_Bool* %"$t_480" to %CName_False*
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$False_484"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$False_484"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$fail__origin_491" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_491", align 1
  %"$fail__sender_492" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_492", align 1
  %"$tname_493" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_491", [20 x i8]* %"$fail__sender_492", %String %"$tname_493")
  br label %"$matchsucc_479"

"$True_494":                                      ; preds = %"$have_gas_477"
  %"$t_495" = bitcast %TName_Bool* %"$t_480" to %CName_True*
  br label %"$matchsucc_479"

"$empty_default_483":                             ; preds = %"$have_gas_477"
  br label %"$matchsucc_479"

"$matchsucc_479":                                 ; preds = %"$True_494", %"$have_gas_489", %"$empty_default_483"
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$matchsucc_479"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$matchsucc_479"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_499"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_506", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_504"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %val1 = alloca %String, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_517", i32 0, i32 0), i32 3 }, %String* %val1, align 8
  %"$_literal_cost_val1_518" = alloca %String, align 8
  %"$val1_519" = load %String, %String* %val1, align 8
  store %String %"$val1_519", %String* %"$_literal_cost_val1_518", align 8
  %"$$_literal_cost_val1_518_520" = bitcast %String* %"$_literal_cost_val1_518" to i8*
  %"$_literal_cost_call_521" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_50", i8* %"$$_literal_cost_val1_518_520")
  %"$gasadd_522" = add i64 %"$_literal_cost_call_521", 1
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 %"$gasadd_522", %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_515"
  %"$consume_527" = sub i64 %"$gasrem_523", %"$gasadd_522"
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$indices_buf_528_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_528_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_528_salloc_load", i64 16)
  %"$indices_buf_528_salloc" = bitcast i8* %"$indices_buf_528_salloc_salloc" to [16 x i8]*
  %"$indices_buf_528" = bitcast [16 x i8]* %"$indices_buf_528_salloc" to i8*
  %"$key1_529" = load %String, %String* %key1, align 8
  %"$indices_gep_530" = getelementptr i8, i8* %"$indices_buf_528", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_530" to %String*
  store %String %"$key1_529", %String* %indices_cast, align 8
  %"$execptr_load_531" = load i8*, i8** @_execptr, align 8
  %"$val1_533" = load %String, %String* %val1, align 8
  %"$update_value_534" = alloca %String, align 8
  store %String %"$val1_533", %String* %"$update_value_534", align 8
  %"$update_value_535" = bitcast %String* %"$update_value_534" to i8*
  call void @_update_field(i8* %"$execptr_load_531", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_532", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_528", i8* %"$update_value_535")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_537" = getelementptr i8, i8* %0, i32 0
  %"$_amount_538" = bitcast i8* %"$_amount_537" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_538", align 8
  %"$_origin_539" = getelementptr i8, i8* %0, i32 16
  %"$_origin_540" = bitcast i8* %"$_origin_539" to [20 x i8]*
  %"$_sender_541" = getelementptr i8, i8* %0, i32 36
  %"$_sender_542" = bitcast i8* %"$_sender_541" to [20 x i8]*
  call void @"$t2_424"(%Uint128 %_amount, [20 x i8]* %"$_origin_540", [20 x i8]* %"$_sender_542")
  ret void
}

define internal void @"$t3_543"(%Uint128 %_amount, [20 x i8]* %"$_origin_544", [20 x i8]* %"$_sender_545") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_544", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_545", align 1
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %entry
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_549"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_556", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_554"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_567", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_565"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_578", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %val1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_579_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_579_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_579_salloc_load", i64 16)
  %"$indices_buf_579_salloc" = bitcast i8* %"$indices_buf_579_salloc_salloc" to [16 x i8]*
  %"$indices_buf_579" = bitcast [16 x i8]* %"$indices_buf_579_salloc" to i8*
  %"$key1_580" = load %String, %String* %key1, align 8
  %"$indices_gep_581" = getelementptr i8, i8* %"$indices_buf_579", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_581" to %String*
  store %String %"$key1_580", %String* %indices_cast, align 8
  %"$execptr_load_583" = load i8*, i8** @_execptr, align 8
  %"$val1_call_584" = call i8* @_fetch_field(i8* %"$execptr_load_583", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_582", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_579", i32 1)
  %"$val1_585" = bitcast i8* %"$val1_call_584" to %TName_Option_String*
  store %TName_Option_String* %"$val1_585", %TName_Option_String** %val1, align 8
  %"$val1_586" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$$val1_586_587" = bitcast %TName_Option_String* %"$val1_586" to i8*
  %"$_literal_cost_call_588" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$val1_586_587")
  %"$gasadd_589" = add i64 %"$_literal_cost_call_588", 0
  %"$gasadd_590" = add i64 %"$gasadd_589", 1
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 %"$gasadd_590", %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_576"
  %"$consume_595" = sub i64 %"$gasrem_591", %"$gasadd_590"
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 2, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 2
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$val1_602" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$val1_tag_603" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_602", i32 0, i32 0
  %"$val1_tag_604" = load i8, i8* %"$val1_tag_603", align 1
  switch i8 %"$val1_tag_604", label %"$empty_default_605" [
    i8 0, label %"$Some_606"
    i8 1, label %"$None_654"
  ]

"$Some_606":                                      ; preds = %"$have_gas_599"
  %"$val1_607" = bitcast %TName_Option_String* %"$val1_602" to %CName_Some_String*
  %"$val_gep_608" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_607", i32 0, i32 1
  %"$val_load_609" = load %String, %String* %"$val_gep_608", align 8
  %val = alloca %String, align 8
  store %String %"$val_load_609", %String* %val, align 8
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$Some_606"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$Some_606"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$execptr_load_615" = load i8*, i8** @_execptr, align 8
  %"$val_616" = load %String, %String* %val, align 8
  %"$s_617" = load %String, %String* %s, align 8
  %"$eq_call_618" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_615", %String %"$val_616", %String %"$s_617")
  store %TName_Bool* %"$eq_call_618", %TName_Bool** %t, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 2, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_613"
  %"$consume_624" = sub i64 %"$gasrem_620", 2
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$t_626" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_627" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_626", i32 0, i32 0
  %"$t_tag_628" = load i8, i8* %"$t_tag_627", align 1
  switch i8 %"$t_tag_628", label %"$empty_default_629" [
    i8 1, label %"$False_630"
    i8 0, label %"$True_652"
  ]

"$False_630":                                     ; preds = %"$have_gas_623"
  %"$t_631" = bitcast %TName_Bool* %"$t_626" to %CName_False*
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$False_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$False_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_642", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 1, %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %"$have_gas_640"
  %"$consume_647" = sub i64 %"$gasrem_643", 1
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %"$fail_msg__origin_648" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_648", align 1
  %"$fail_msg__sender_649" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_649", align 1
  %"$tname_650" = load %String, %String* %tname, align 8
  %"$m_651" = load %String, %String* %m, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_648", [20 x i8]* %"$fail_msg__sender_649", %String %"$tname_650", %String %"$m_651")
  br label %"$matchsucc_625"

"$True_652":                                      ; preds = %"$have_gas_623"
  %"$t_653" = bitcast %TName_Bool* %"$t_626" to %CName_True*
  br label %"$matchsucc_625"

"$empty_default_629":                             ; preds = %"$have_gas_623"
  br label %"$matchsucc_625"

"$matchsucc_625":                                 ; preds = %"$True_652", %"$have_gas_646", %"$empty_default_629"
  br label %"$matchsucc_601"

"$None_654":                                      ; preds = %"$have_gas_599"
  %"$val1_655" = bitcast %TName_Option_String* %"$val1_602" to %CName_None_String*
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$None_654"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$None_654"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %"$fail__origin_661" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_661", align 1
  %"$fail__sender_662" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_662", align 1
  %"$tname_663" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_661", [20 x i8]* %"$fail__sender_662", %String %"$tname_663")
  br label %"$matchsucc_601"

"$empty_default_605":                             ; preds = %"$have_gas_599"
  br label %"$matchsucc_601"

"$matchsucc_601":                                 ; preds = %"$have_gas_659", %"$matchsucc_625", %"$empty_default_605"
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$matchsucc_601"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$matchsucc_601"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %key2 = alloca %String, align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_674", i32 0, i32 0), i32 4 }, %String* %key2, align 8
  %val2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_675_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_675_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_675_salloc_load", i64 16)
  %"$indices_buf_675_salloc" = bitcast i8* %"$indices_buf_675_salloc_salloc" to [16 x i8]*
  %"$indices_buf_675" = bitcast [16 x i8]* %"$indices_buf_675_salloc" to i8*
  %"$key2_676" = load %String, %String* %key2, align 8
  %"$indices_gep_677" = getelementptr i8, i8* %"$indices_buf_675", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_677" to %String*
  store %String %"$key2_676", %String* %indices_cast1, align 8
  %"$execptr_load_679" = load i8*, i8** @_execptr, align 8
  %"$val2_call_680" = call i8* @_fetch_field(i8* %"$execptr_load_679", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_678", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_675", i32 1)
  %"$val2_681" = bitcast i8* %"$val2_call_680" to %TName_Option_String*
  store %TName_Option_String* %"$val2_681", %TName_Option_String** %val2, align 8
  %"$val2_682" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$$val2_682_683" = bitcast %TName_Option_String* %"$val2_682" to i8*
  %"$_literal_cost_call_684" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$val2_682_683")
  %"$gasadd_685" = add i64 %"$_literal_cost_call_684", 0
  %"$gasadd_686" = add i64 %"$gasadd_685", 1
  %"$gasrem_687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_688" = icmp ugt i64 %"$gasadd_686", %"$gasrem_687"
  br i1 %"$gascmp_688", label %"$out_of_gas_689", label %"$have_gas_690"

"$out_of_gas_689":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_690"

"$have_gas_690":                                  ; preds = %"$out_of_gas_689", %"$have_gas_672"
  %"$consume_691" = sub i64 %"$gasrem_687", %"$gasadd_686"
  store i64 %"$consume_691", i64* @_gasrem, align 8
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 2, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %"$have_gas_690"
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %"$have_gas_690"
  %"$consume_696" = sub i64 %"$gasrem_692", 2
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %"$val2_698" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$val2_tag_699" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_698", i32 0, i32 0
  %"$val2_tag_700" = load i8, i8* %"$val2_tag_699", align 1
  switch i8 %"$val2_tag_700", label %"$empty_default_701" [
    i8 0, label %"$Some_702"
    i8 1, label %"$None_726"
  ]

"$Some_702":                                      ; preds = %"$have_gas_695"
  %"$val2_703" = bitcast %TName_Option_String* %"$val2_698" to %CName_Some_String*
  %"$$val2_13_gep_704" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_703", i32 0, i32 1
  %"$$val2_13_load_705" = load %String, %String* %"$$val2_13_gep_704", align 8
  %"$val2_13" = alloca %String, align 8
  store %String %"$$val2_13_load_705", %String* %"$val2_13", align 8
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$Some_702"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$Some_702"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 1, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 1
  store i64 %"$consume_715", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_716", i32 0, i32 0), i32 25 }, %String* %m2, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_714"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$fail_msg__origin_722" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_722", align 1
  %"$fail_msg__sender_723" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_723", align 1
  %"$tname_724" = load %String, %String* %tname, align 8
  %"$m_725" = load %String, %String* %m2, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_722", [20 x i8]* %"$fail_msg__sender_723", %String %"$tname_724", %String %"$m_725")
  br label %"$matchsucc_697"

"$None_726":                                      ; preds = %"$have_gas_695"
  %"$val2_727" = bitcast %TName_Option_String* %"$val2_698" to %CName_None_String*
  br label %"$matchsucc_697"

"$empty_default_701":                             ; preds = %"$have_gas_695"
  br label %"$matchsucc_697"

"$matchsucc_697":                                 ; preds = %"$None_726", %"$have_gas_720", %"$empty_default_701"
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$matchsucc_697"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$matchsucc_697"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$indices_buf_733_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_733_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_733_salloc_load", i64 16)
  %"$indices_buf_733_salloc" = bitcast i8* %"$indices_buf_733_salloc_salloc" to [16 x i8]*
  %"$indices_buf_733" = bitcast [16 x i8]* %"$indices_buf_733_salloc" to i8*
  %"$key1_734" = load %String, %String* %key1, align 8
  %"$indices_gep_735" = getelementptr i8, i8* %"$indices_buf_733", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_735" to %String*
  store %String %"$key1_734", %String* %indices_cast3, align 8
  %"$execptr_load_736" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_736", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_737", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_733", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_739" = getelementptr i8, i8* %0, i32 0
  %"$_amount_740" = bitcast i8* %"$_amount_739" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_740", align 8
  %"$_origin_741" = getelementptr i8, i8* %0, i32 16
  %"$_origin_742" = bitcast i8* %"$_origin_741" to [20 x i8]*
  %"$_sender_743" = getelementptr i8, i8* %0, i32 36
  %"$_sender_744" = bitcast i8* %"$_sender_743" to [20 x i8]*
  call void @"$t3_543"(%Uint128 %_amount, [20 x i8]* %"$_origin_742", [20 x i8]* %"$_sender_744")
  ret void
}

define internal void @"$t4_745"(%Uint128 %_amount, [20 x i8]* %"$_origin_746", [20 x i8]* %"$_sender_747") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_746", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_747", align 1
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %entry
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_751"
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_758", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 1, %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %"$have_gas_756"
  %"$consume_763" = sub i64 %"$gasrem_759", 1
  store i64 %"$consume_763", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_762"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_769", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %key1_found = alloca %TName_Bool*, align 8
  %"$indices_buf_770_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_770_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_770_salloc_load", i64 16)
  %"$indices_buf_770_salloc" = bitcast i8* %"$indices_buf_770_salloc_salloc" to [16 x i8]*
  %"$indices_buf_770" = bitcast [16 x i8]* %"$indices_buf_770_salloc" to i8*
  %"$key1_771" = load %String, %String* %key1, align 8
  %"$indices_gep_772" = getelementptr i8, i8* %"$indices_buf_770", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_772" to %String*
  store %String %"$key1_771", %String* %indices_cast, align 8
  %"$execptr_load_774" = load i8*, i8** @_execptr, align 8
  %"$key1_found_call_775" = call i8* @_fetch_field(i8* %"$execptr_load_774", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_773", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_770", i32 0)
  %"$key1_found_776" = bitcast i8* %"$key1_found_call_775" to %TName_Bool*
  store %TName_Bool* %"$key1_found_776", %TName_Bool** %key1_found, align 8
  %"$key1_found_777" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$$key1_found_777_778" = bitcast %TName_Bool* %"$key1_found_777" to i8*
  %"$_literal_cost_call_779" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_69", i8* %"$$key1_found_777_778")
  %"$gasadd_780" = add i64 %"$_literal_cost_call_779", 0
  %"$gasadd_781" = add i64 %"$gasadd_780", 1
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 %"$gasadd_781", %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_767"
  %"$consume_786" = sub i64 %"$gasrem_782", %"$gasadd_781"
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 2, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$have_gas_785"
  %"$consume_791" = sub i64 %"$gasrem_787", 2
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %"$key1_found_793" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$key1_found_tag_794" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_793", i32 0, i32 0
  %"$key1_found_tag_795" = load i8, i8* %"$key1_found_tag_794", align 1
  switch i8 %"$key1_found_tag_795", label %"$empty_default_796" [
    i8 0, label %"$True_797"
    i8 1, label %"$False_807"
  ]

"$True_797":                                      ; preds = %"$have_gas_790"
  %"$key1_found_798" = bitcast %TName_Bool* %"$key1_found_793" to %CName_True*
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$True_797"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$True_797"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$fail__origin_804" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_804", align 1
  %"$fail__sender_805" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_805", align 1
  %"$tname_806" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_804", [20 x i8]* %"$fail__sender_805", %String %"$tname_806")
  br label %"$matchsucc_792"

"$False_807":                                     ; preds = %"$have_gas_790"
  %"$key1_found_808" = bitcast %TName_Bool* %"$key1_found_793" to %CName_False*
  br label %"$matchsucc_792"

"$empty_default_796":                             ; preds = %"$have_gas_790"
  br label %"$matchsucc_792"

"$matchsucc_792":                                 ; preds = %"$False_807", %"$have_gas_802", %"$empty_default_796"
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$matchsucc_792"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$matchsucc_792"
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_819", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %"$have_gas_817"
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_826" = icmp ugt i64 1, %"$gasrem_825"
  br i1 %"$gascmp_826", label %"$out_of_gas_827", label %"$have_gas_828"

"$out_of_gas_827":                                ; preds = %"$have_gas_823"
  call void @_out_of_gas()
  br label %"$have_gas_828"

"$have_gas_828":                                  ; preds = %"$out_of_gas_827", %"$have_gas_823"
  %"$consume_829" = sub i64 %"$gasrem_825", 1
  store i64 %"$consume_829", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_830", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_828"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_828"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_841", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_842" = alloca %String, align 8
  %"$s_843" = load %String, %String* %s, align 8
  store %String %"$s_843", %String* %"$_literal_cost_s_842", align 8
  %"$$_literal_cost_s_842_844" = bitcast %String* %"$_literal_cost_s_842" to i8*
  %"$_literal_cost_call_845" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_50", i8* %"$$_literal_cost_s_842_844")
  %"$gasadd_846" = add i64 %"$_literal_cost_call_845", 2
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 %"$gasadd_846", %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_839"
  %"$consume_851" = sub i64 %"$gasrem_847", %"$gasadd_846"
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %"$indices_buf_852_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_852_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_852_salloc_load", i64 32)
  %"$indices_buf_852_salloc" = bitcast i8* %"$indices_buf_852_salloc_salloc" to [32 x i8]*
  %"$indices_buf_852" = bitcast [32 x i8]* %"$indices_buf_852_salloc" to i8*
  %"$key1a_853" = load %String, %String* %key1a, align 8
  %"$indices_gep_854" = getelementptr i8, i8* %"$indices_buf_852", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_854" to %String*
  store %String %"$key1a_853", %String* %indices_cast1, align 8
  %"$key2a_855" = load %String, %String* %key2a, align 8
  %"$indices_gep_856" = getelementptr i8, i8* %"$indices_buf_852", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_856" to %String*
  store %String %"$key2a_855", %String* %indices_cast2, align 8
  %"$execptr_load_857" = load i8*, i8** @_execptr, align 8
  %"$s_859" = load %String, %String* %s, align 8
  %"$update_value_860" = alloca %String, align 8
  store %String %"$s_859", %String* %"$update_value_860", align 8
  %"$update_value_861" = bitcast %String* %"$update_value_860" to i8*
  call void @_update_field(i8* %"$execptr_load_857", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_858", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_852", i8* %"$update_value_861")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_863" = getelementptr i8, i8* %0, i32 0
  %"$_amount_864" = bitcast i8* %"$_amount_863" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_864", align 8
  %"$_origin_865" = getelementptr i8, i8* %0, i32 16
  %"$_origin_866" = bitcast i8* %"$_origin_865" to [20 x i8]*
  %"$_sender_867" = getelementptr i8, i8* %0, i32 36
  %"$_sender_868" = bitcast i8* %"$_sender_867" to [20 x i8]*
  call void @"$t4_745"(%Uint128 %_amount, [20 x i8]* %"$_origin_866", [20 x i8]* %"$_sender_868")
  ret void
}

define internal void @"$t5_869"(%Uint128 %_amount, [20 x i8]* %"$_origin_870", [20 x i8]* %"$_sender_871") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_870", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_871", align 1
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %entry
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 1, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_875"
  %"$consume_881" = sub i64 %"$gasrem_877", 1
  store i64 %"$consume_881", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_882", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_880"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_886"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_893", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_891"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_904", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_902"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_908"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_908"
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_915", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %val = alloca %TName_Option_String*, align 8
  %"$indices_buf_916_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_916_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_916_salloc_load", i64 32)
  %"$indices_buf_916_salloc" = bitcast i8* %"$indices_buf_916_salloc_salloc" to [32 x i8]*
  %"$indices_buf_916" = bitcast [32 x i8]* %"$indices_buf_916_salloc" to i8*
  %"$key1a_917" = load %String, %String* %key1a, align 8
  %"$indices_gep_918" = getelementptr i8, i8* %"$indices_buf_916", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_918" to %String*
  store %String %"$key1a_917", %String* %indices_cast, align 8
  %"$key2a_919" = load %String, %String* %key2a, align 8
  %"$indices_gep_920" = getelementptr i8, i8* %"$indices_buf_916", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_920" to %String*
  store %String %"$key2a_919", %String* %indices_cast1, align 8
  %"$execptr_load_922" = load i8*, i8** @_execptr, align 8
  %"$val_call_923" = call i8* @_fetch_field(i8* %"$execptr_load_922", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_921", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_916", i32 1)
  %"$val_924" = bitcast i8* %"$val_call_923" to %TName_Option_String*
  store %TName_Option_String* %"$val_924", %TName_Option_String** %val, align 8
  %"$val_925" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$$val_925_926" = bitcast %TName_Option_String* %"$val_925" to i8*
  %"$_literal_cost_call_927" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$val_925_926")
  %"$gasadd_928" = add i64 %"$_literal_cost_call_927", 0
  %"$gasadd_929" = add i64 %"$gasadd_928", 2
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 %"$gasadd_929", %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_913"
  %"$consume_934" = sub i64 %"$gasrem_930", %"$gasadd_929"
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 2, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %"$have_gas_933"
  %"$consume_939" = sub i64 %"$gasrem_935", 2
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %"$val_941" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$val_tag_942" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_941", i32 0, i32 0
  %"$val_tag_943" = load i8, i8* %"$val_tag_942", align 1
  switch i8 %"$val_tag_943", label %"$empty_default_944" [
    i8 0, label %"$Some_945"
    i8 1, label %"$None_993"
  ]

"$Some_945":                                      ; preds = %"$have_gas_938"
  %"$val_946" = bitcast %TName_Option_String* %"$val_941" to %CName_Some_String*
  %"$v_gep_947" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_946", i32 0, i32 1
  %"$v_load_948" = load %String, %String* %"$v_gep_947", align 8
  %v = alloca %String, align 8
  store %String %"$v_load_948", %String* %v, align 8
  %"$gasrem_949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_950" = icmp ugt i64 1, %"$gasrem_949"
  br i1 %"$gascmp_950", label %"$out_of_gas_951", label %"$have_gas_952"

"$out_of_gas_951":                                ; preds = %"$Some_945"
  call void @_out_of_gas()
  br label %"$have_gas_952"

"$have_gas_952":                                  ; preds = %"$out_of_gas_951", %"$Some_945"
  %"$consume_953" = sub i64 %"$gasrem_949", 1
  store i64 %"$consume_953", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$execptr_load_954" = load i8*, i8** @_execptr, align 8
  %"$v_955" = load %String, %String* %v, align 8
  %"$s_956" = load %String, %String* %s, align 8
  %"$eq_call_957" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_954", %String %"$v_955", %String %"$s_956")
  store %TName_Bool* %"$eq_call_957", %TName_Bool** %t, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 2, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_952"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_952"
  %"$consume_963" = sub i64 %"$gasrem_959", 2
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %"$t_965" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_966" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_965", i32 0, i32 0
  %"$t_tag_967" = load i8, i8* %"$t_tag_966", align 1
  switch i8 %"$t_tag_967", label %"$empty_default_968" [
    i8 0, label %"$True_969"
    i8 1, label %"$False_971"
  ]

"$True_969":                                      ; preds = %"$have_gas_962"
  %"$t_970" = bitcast %TName_Bool* %"$t_965" to %CName_True*
  br label %"$matchsucc_964"

"$False_971":                                     ; preds = %"$have_gas_962"
  %"$t_972" = bitcast %TName_Bool* %"$t_965" to %CName_False*
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$False_971"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$False_971"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_979" = icmp ugt i64 1, %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_976"
  %"$consume_982" = sub i64 %"$gasrem_978", 1
  store i64 %"$consume_982", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_983", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 1, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_981"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_981"
  %"$consume_988" = sub i64 %"$gasrem_984", 1
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %"$fail_msg__origin_989" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_989", align 1
  %"$fail_msg__sender_990" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_990", align 1
  %"$tname_991" = load %String, %String* %tname, align 8
  %"$m_992" = load %String, %String* %m, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_989", [20 x i8]* %"$fail_msg__sender_990", %String %"$tname_991", %String %"$m_992")
  br label %"$matchsucc_964"

"$empty_default_968":                             ; preds = %"$have_gas_962"
  br label %"$matchsucc_964"

"$matchsucc_964":                                 ; preds = %"$have_gas_987", %"$True_969", %"$empty_default_968"
  br label %"$matchsucc_940"

"$None_993":                                      ; preds = %"$have_gas_938"
  %"$val_994" = bitcast %TName_Option_String* %"$val_941" to %CName_None_String*
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$None_993"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$None_993"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$fail__origin_1000" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_1000", align 1
  %"$fail__sender_1001" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1001", align 1
  %"$tname_1002" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_1000", [20 x i8]* %"$fail__sender_1001", %String %"$tname_1002")
  br label %"$matchsucc_940"

"$empty_default_944":                             ; preds = %"$have_gas_938"
  br label %"$matchsucc_940"

"$matchsucc_940":                                 ; preds = %"$have_gas_998", %"$matchsucc_964", %"$empty_default_944"
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$matchsucc_940"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$matchsucc_940"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %l_m2 = alloca %Map_String_String*, align 8
  %"$gasrem_1008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1009" = icmp ugt i64 1, %"$gasrem_1008"
  br i1 %"$gascmp_1009", label %"$out_of_gas_1010", label %"$have_gas_1011"

"$out_of_gas_1010":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1011"

"$have_gas_1011":                                 ; preds = %"$out_of_gas_1010", %"$have_gas_1006"
  %"$consume_1012" = sub i64 %"$gasrem_1008", 1
  store i64 %"$consume_1012", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1011"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %"$execptr_load_1018" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1019" = call i8* @_new_empty_map(i8* %"$execptr_load_1018")
  %"$_new_empty_map_1020" = bitcast i8* %"$_new_empty_map_call_1019" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_1020", %Map_String_String** %e, align 8
  %"$gasrem_1021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1022" = icmp ugt i64 1, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %"$have_gas_1016"
  %"$consume_1025" = sub i64 %"$gasrem_1021", 1
  store i64 %"$consume_1025", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1024"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1031", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1029"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_1037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1038" = icmp ugt i64 1, %"$gasrem_1037"
  br i1 %"$gascmp_1038", label %"$out_of_gas_1039", label %"$have_gas_1040"

"$out_of_gas_1039":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1040"

"$have_gas_1040":                                 ; preds = %"$out_of_gas_1039", %"$have_gas_1035"
  %"$consume_1041" = sub i64 %"$gasrem_1037", 1
  store i64 %"$consume_1041", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1042", i32 0, i32 0), i32 3 }, %String* %s1, align 8
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1040"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1040"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_1048" = load i8*, i8** @_execptr, align 8
  %"$e_1049" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1049_1050" = bitcast %Map_String_String* %"$e_1049" to i8*
  %"$put_key2b_1051" = alloca %String, align 8
  %"$key2b_1052" = load %String, %String* %key2b, align 8
  store %String %"$key2b_1052", %String* %"$put_key2b_1051", align 8
  %"$$put_key2b_1051_1053" = bitcast %String* %"$put_key2b_1051" to i8*
  %"$put_s1_1054" = alloca %String, align 8
  %"$s1_1055" = load %String, %String* %s1, align 8
  store %String %"$s1_1055", %String* %"$put_s1_1054", align 8
  %"$$put_s1_1054_1056" = bitcast %String* %"$put_s1_1054" to i8*
  %"$put_call_1057" = call i8* @_put(i8* %"$execptr_load_1048", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e_1049_1050", i8* %"$$put_key2b_1051_1053", i8* %"$$put_s1_1054_1056")
  %"$put_1058" = bitcast i8* %"$put_call_1057" to %Map_String_String*
  store %Map_String_String* %"$put_1058", %Map_String_String** %m1, align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1046"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1062"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1069", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1067"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1073"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1080", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$execptr_load_1081" = load i8*, i8** @_execptr, align 8
  %"$m1_1082" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1082_1083" = bitcast %Map_String_String* %"$m1_1082" to i8*
  %"$put_key2c_1084" = alloca %String, align 8
  %"$key2c_1085" = load %String, %String* %key2c, align 8
  store %String %"$key2c_1085", %String* %"$put_key2c_1084", align 8
  %"$$put_key2c_1084_1086" = bitcast %String* %"$put_key2c_1084" to i8*
  %"$put_s2_1087" = alloca %String, align 8
  %"$s2_1088" = load %String, %String* %s2, align 8
  store %String %"$s2_1088", %String* %"$put_s2_1087", align 8
  %"$$put_s2_1087_1089" = bitcast %String* %"$put_s2_1087" to i8*
  %"$put_call_1090" = call i8* @_put(i8* %"$execptr_load_1081", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_1082_1083", i8* %"$$put_key2c_1084_1086", i8* %"$$put_s2_1087_1089")
  %"$put_1091" = bitcast i8* %"$put_call_1090" to %Map_String_String*
  store %Map_String_String* %"$put_1091", %Map_String_String** %l_m2, align 8
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1078"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1095"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1102", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$l_m2_1103" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$$l_m2_1103_1104" = bitcast %Map_String_String* %"$l_m2_1103" to i8*
  %"$_literal_cost_call_1105" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$l_m2_1103_1104")
  %"$gasadd_1106" = add i64 %"$_literal_cost_call_1105", 1
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 %"$gasadd_1106", %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1100"
  %"$consume_1111" = sub i64 %"$gasrem_1107", %"$gasadd_1106"
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  %"$indices_buf_1112_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1112_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1112_salloc_load", i64 16)
  %"$indices_buf_1112_salloc" = bitcast i8* %"$indices_buf_1112_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1112" = bitcast [16 x i8]* %"$indices_buf_1112_salloc" to i8*
  %"$key1b_1113" = load %String, %String* %key1b, align 8
  %"$indices_gep_1114" = getelementptr i8, i8* %"$indices_buf_1112", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1114" to %String*
  store %String %"$key1b_1113", %String* %indices_cast2, align 8
  %"$execptr_load_1115" = load i8*, i8** @_execptr, align 8
  %"$l_m2_1117" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$update_value_1118" = bitcast %Map_String_String* %"$l_m2_1117" to i8*
  call void @_update_field(i8* %"$execptr_load_1115", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1112", i8* %"$update_value_1118")
  ret void
}

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_1120" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1121" = bitcast i8* %"$_amount_1120" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1121", align 8
  %"$_origin_1122" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1123" = bitcast i8* %"$_origin_1122" to [20 x i8]*
  %"$_sender_1124" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1125" = bitcast i8* %"$_sender_1124" to [20 x i8]*
  call void @"$t5_869"(%Uint128 %_amount, [20 x i8]* %"$_origin_1123", [20 x i8]* %"$_sender_1125")
  ret void
}

define internal void @"$t6_1126"(%Uint128 %_amount, [20 x i8]* %"$_origin_1127", [20 x i8]* %"$_sender_1128") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1127", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1128", align 1
  %"$gasrem_1129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1130" = icmp ugt i64 1, %"$gasrem_1129"
  br i1 %"$gascmp_1130", label %"$out_of_gas_1131", label %"$have_gas_1132"

"$out_of_gas_1131":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1132"

"$have_gas_1132":                                 ; preds = %"$out_of_gas_1131", %entry
  %"$consume_1133" = sub i64 %"$gasrem_1129", 1
  store i64 %"$consume_1133", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1135" = icmp ugt i64 1, %"$gasrem_1134"
  br i1 %"$gascmp_1135", label %"$out_of_gas_1136", label %"$have_gas_1137"

"$out_of_gas_1136":                               ; preds = %"$have_gas_1132"
  call void @_out_of_gas()
  br label %"$have_gas_1137"

"$have_gas_1137":                                 ; preds = %"$out_of_gas_1136", %"$have_gas_1132"
  %"$consume_1138" = sub i64 %"$gasrem_1134", 1
  store i64 %"$consume_1138", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1139", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1141" = icmp ugt i64 1, %"$gasrem_1140"
  br i1 %"$gascmp_1141", label %"$out_of_gas_1142", label %"$have_gas_1143"

"$out_of_gas_1142":                               ; preds = %"$have_gas_1137"
  call void @_out_of_gas()
  br label %"$have_gas_1143"

"$have_gas_1143":                                 ; preds = %"$out_of_gas_1142", %"$have_gas_1137"
  %"$consume_1144" = sub i64 %"$gasrem_1140", 1
  store i64 %"$consume_1144", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1143"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1143"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1150", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1152" = icmp ugt i64 1, %"$gasrem_1151"
  br i1 %"$gascmp_1152", label %"$out_of_gas_1153", label %"$have_gas_1154"

"$out_of_gas_1153":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1154"

"$have_gas_1154":                                 ; preds = %"$out_of_gas_1153", %"$have_gas_1148"
  %"$consume_1155" = sub i64 %"$gasrem_1151", 1
  store i64 %"$consume_1155", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1157" = icmp ugt i64 1, %"$gasrem_1156"
  br i1 %"$gascmp_1157", label %"$out_of_gas_1158", label %"$have_gas_1159"

"$out_of_gas_1158":                               ; preds = %"$have_gas_1154"
  call void @_out_of_gas()
  br label %"$have_gas_1159"

"$have_gas_1159":                                 ; preds = %"$out_of_gas_1158", %"$have_gas_1154"
  %"$consume_1160" = sub i64 %"$gasrem_1156", 1
  store i64 %"$consume_1160", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1161", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1162_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1162_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1162_salloc_load", i64 32)
  %"$indices_buf_1162_salloc" = bitcast i8* %"$indices_buf_1162_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1162" = bitcast [32 x i8]* %"$indices_buf_1162_salloc" to i8*
  %"$key1a_1163" = load %String, %String* %key1a, align 8
  %"$indices_gep_1164" = getelementptr i8, i8* %"$indices_buf_1162", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1164" to %String*
  store %String %"$key1a_1163", %String* %indices_cast, align 8
  %"$key2a_1165" = load %String, %String* %key2a, align 8
  %"$indices_gep_1166" = getelementptr i8, i8* %"$indices_buf_1162", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1166" to %String*
  store %String %"$key2a_1165", %String* %indices_cast1, align 8
  %"$execptr_load_1168" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1169" = call i8* @_fetch_field(i8* %"$execptr_load_1168", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1167", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1162", i32 1)
  %"$c1_1170" = bitcast i8* %"$c1_call_1169" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1170", %TName_Option_String** %c1, align 8
  %"$c1_1171" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1171_1172" = bitcast %TName_Option_String* %"$c1_1171" to i8*
  %"$_literal_cost_call_1173" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$c1_1171_1172")
  %"$gasadd_1174" = add i64 %"$_literal_cost_call_1173", 0
  %"$gasadd_1175" = add i64 %"$gasadd_1174", 2
  %"$gasrem_1176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1177" = icmp ugt i64 %"$gasadd_1175", %"$gasrem_1176"
  br i1 %"$gascmp_1177", label %"$out_of_gas_1178", label %"$have_gas_1179"

"$out_of_gas_1178":                               ; preds = %"$have_gas_1159"
  call void @_out_of_gas()
  br label %"$have_gas_1179"

"$have_gas_1179":                                 ; preds = %"$out_of_gas_1178", %"$have_gas_1159"
  %"$consume_1180" = sub i64 %"$gasrem_1176", %"$gasadd_1175"
  store i64 %"$consume_1180", i64* @_gasrem, align 8
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 2, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1179"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1179"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 2
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$c1_1187" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1188" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1187", i32 0, i32 0
  %"$c1_tag_1189" = load i8, i8* %"$c1_tag_1188", align 1
  switch i8 %"$c1_tag_1189", label %"$empty_default_1190" [
    i8 0, label %"$Some_1191"
    i8 1, label %"$None_1250"
  ]

"$Some_1191":                                     ; preds = %"$have_gas_1184"
  %"$c1_1192" = bitcast %TName_Option_String* %"$c1_1187" to %CName_Some_String*
  %"$c_gep_1193" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1192", i32 0, i32 1
  %"$c_load_1194" = load %String, %String* %"$c_gep_1193", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1194", %String* %c, align 8
  %"$gasrem_1195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1196" = icmp ugt i64 1, %"$gasrem_1195"
  br i1 %"$gascmp_1196", label %"$out_of_gas_1197", label %"$have_gas_1198"

"$out_of_gas_1197":                               ; preds = %"$Some_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1198"

"$have_gas_1198":                                 ; preds = %"$out_of_gas_1197", %"$Some_1191"
  %"$consume_1199" = sub i64 %"$gasrem_1195", 1
  store i64 %"$consume_1199", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1198"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1198"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1205", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1203"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1203"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$execptr_load_1211" = load i8*, i8** @_execptr, align 8
  %"$c_1212" = load %String, %String* %c, align 8
  %"$v_1213" = load %String, %String* %v, align 8
  %"$eq_call_1214" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1211", %String %"$c_1212", %String %"$v_1213")
  store %TName_Bool* %"$eq_call_1214", %TName_Bool** %eq, align 8
  %"$gasrem_1216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1217" = icmp ugt i64 2, %"$gasrem_1216"
  br i1 %"$gascmp_1217", label %"$out_of_gas_1218", label %"$have_gas_1219"

"$out_of_gas_1218":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1219"

"$have_gas_1219":                                 ; preds = %"$out_of_gas_1218", %"$have_gas_1209"
  %"$consume_1220" = sub i64 %"$gasrem_1216", 2
  store i64 %"$consume_1220", i64* @_gasrem, align 8
  %"$eq_1222" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1223" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1222", i32 0, i32 0
  %"$eq_tag_1224" = load i8, i8* %"$eq_tag_1223", align 1
  switch i8 %"$eq_tag_1224", label %"$empty_default_1225" [
    i8 0, label %"$True_1226"
    i8 1, label %"$False_1228"
  ]

"$True_1226":                                     ; preds = %"$have_gas_1219"
  %"$eq_1227" = bitcast %TName_Bool* %"$eq_1222" to %CName_True*
  br label %"$matchsucc_1221"

"$False_1228":                                    ; preds = %"$have_gas_1219"
  %"$eq_1229" = bitcast %TName_Bool* %"$eq_1222" to %CName_False*
  %"$gasrem_1230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1231" = icmp ugt i64 1, %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$False_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$False_1228"
  %"$consume_1234" = sub i64 %"$gasrem_1230", 1
  store i64 %"$consume_1234", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 1, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1233"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 1
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1240", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1238"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %"$fail_msg__origin_1246" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1246", align 1
  %"$fail_msg__sender_1247" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1247", align 1
  %"$tname_1248" = load %String, %String* %tname, align 8
  %"$m_1249" = load %String, %String* %m, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1246", [20 x i8]* %"$fail_msg__sender_1247", %String %"$tname_1248", %String %"$m_1249")
  br label %"$matchsucc_1221"

"$empty_default_1225":                            ; preds = %"$have_gas_1219"
  br label %"$matchsucc_1221"

"$matchsucc_1221":                                ; preds = %"$have_gas_1244", %"$True_1226", %"$empty_default_1225"
  br label %"$matchsucc_1186"

"$None_1250":                                     ; preds = %"$have_gas_1184"
  %"$c1_1251" = bitcast %TName_Option_String* %"$c1_1187" to %CName_None_String*
  %"$gasrem_1252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1253" = icmp ugt i64 1, %"$gasrem_1252"
  br i1 %"$gascmp_1253", label %"$out_of_gas_1254", label %"$have_gas_1255"

"$out_of_gas_1254":                               ; preds = %"$None_1250"
  call void @_out_of_gas()
  br label %"$have_gas_1255"

"$have_gas_1255":                                 ; preds = %"$out_of_gas_1254", %"$None_1250"
  %"$consume_1256" = sub i64 %"$gasrem_1252", 1
  store i64 %"$consume_1256", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1258" = icmp ugt i64 1, %"$gasrem_1257"
  br i1 %"$gascmp_1258", label %"$out_of_gas_1259", label %"$have_gas_1260"

"$out_of_gas_1259":                               ; preds = %"$have_gas_1255"
  call void @_out_of_gas()
  br label %"$have_gas_1260"

"$have_gas_1260":                                 ; preds = %"$out_of_gas_1259", %"$have_gas_1255"
  %"$consume_1261" = sub i64 %"$gasrem_1257", 1
  store i64 %"$consume_1261", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1262", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1264" = icmp ugt i64 1, %"$gasrem_1263"
  br i1 %"$gascmp_1264", label %"$out_of_gas_1265", label %"$have_gas_1266"

"$out_of_gas_1265":                               ; preds = %"$have_gas_1260"
  call void @_out_of_gas()
  br label %"$have_gas_1266"

"$have_gas_1266":                                 ; preds = %"$out_of_gas_1265", %"$have_gas_1260"
  %"$consume_1267" = sub i64 %"$gasrem_1263", 1
  store i64 %"$consume_1267", i64* @_gasrem, align 8
  %"$fail_msg__origin_1268" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1268", align 1
  %"$fail_msg__sender_1269" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1269", align 1
  %"$tname_1270" = load %String, %String* %tname, align 8
  %"$m_1271" = load %String, %String* %m2, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1268", [20 x i8]* %"$fail_msg__sender_1269", %String %"$tname_1270", %String %"$m_1271")
  br label %"$matchsucc_1186"

"$empty_default_1190":                            ; preds = %"$have_gas_1184"
  br label %"$matchsucc_1186"

"$matchsucc_1186":                                ; preds = %"$have_gas_1266", %"$matchsucc_1221", %"$empty_default_1190"
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$matchsucc_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$matchsucc_1186"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1278" = icmp ugt i64 1, %"$gasrem_1277"
  br i1 %"$gascmp_1278", label %"$out_of_gas_1279", label %"$have_gas_1280"

"$out_of_gas_1279":                               ; preds = %"$have_gas_1275"
  call void @_out_of_gas()
  br label %"$have_gas_1280"

"$have_gas_1280":                                 ; preds = %"$out_of_gas_1279", %"$have_gas_1275"
  %"$consume_1281" = sub i64 %"$gasrem_1277", 1
  store i64 %"$consume_1281", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1282", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1280"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1280"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1286"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1286"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1293", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_0" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1294_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1294_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1294_salloc_load", i64 32)
  %"$indices_buf_1294_salloc" = bitcast i8* %"$indices_buf_1294_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1294" = bitcast [32 x i8]* %"$indices_buf_1294_salloc" to i8*
  %"$key1b_1295" = load %String, %String* %key1b, align 8
  %"$indices_gep_1296" = getelementptr i8, i8* %"$indices_buf_1294", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1296" to %String*
  store %String %"$key1b_1295", %String* %indices_cast3, align 8
  %"$key2b_1297" = load %String, %String* %key2b, align 8
  %"$indices_gep_1298" = getelementptr i8, i8* %"$indices_buf_1294", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_1298" to %String*
  store %String %"$key2b_1297", %String* %indices_cast4, align 8
  %"$execptr_load_1300" = load i8*, i8** @_execptr, align 8
  %"$$c1_0_call_1301" = call i8* @_fetch_field(i8* %"$execptr_load_1300", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1299", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1294", i32 1)
  %"$$c1_0_1302" = bitcast i8* %"$$c1_0_call_1301" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_0_1302", %TName_Option_String** %"$c1_0", align 8
  %"$$c1_0_1303" = load %TName_Option_String*, %TName_Option_String** %"$c1_0", align 8
  %"$$$c1_0_1303_1304" = bitcast %TName_Option_String* %"$$c1_0_1303" to i8*
  %"$_literal_cost_call_1305" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$$c1_0_1303_1304")
  %"$gasadd_1306" = add i64 %"$_literal_cost_call_1305", 0
  %"$gasadd_1307" = add i64 %"$gasadd_1306", 2
  %"$gasrem_1308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1309" = icmp ugt i64 %"$gasadd_1307", %"$gasrem_1308"
  br i1 %"$gascmp_1309", label %"$out_of_gas_1310", label %"$have_gas_1311"

"$out_of_gas_1310":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1311"

"$have_gas_1311":                                 ; preds = %"$out_of_gas_1310", %"$have_gas_1291"
  %"$consume_1312" = sub i64 %"$gasrem_1308", %"$gasadd_1307"
  store i64 %"$consume_1312", i64* @_gasrem, align 8
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 2, %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$have_gas_1311"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$have_gas_1311"
  %"$consume_1317" = sub i64 %"$gasrem_1313", 2
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %"$$c1_0_1319" = load %TName_Option_String*, %TName_Option_String** %"$c1_0", align 8
  %"$$c1_0_tag_1320" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_0_1319", i32 0, i32 0
  %"$$c1_0_tag_1321" = load i8, i8* %"$$c1_0_tag_1320", align 1
  switch i8 %"$$c1_0_tag_1321", label %"$empty_default_1322" [
    i8 0, label %"$Some_1323"
    i8 1, label %"$None_1382"
  ]

"$Some_1323":                                     ; preds = %"$have_gas_1316"
  %"$$c1_0_1324" = bitcast %TName_Option_String* %"$$c1_0_1319" to %CName_Some_String*
  %"$c_gep_1325" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_0_1324", i32 0, i32 1
  %"$c_load_1326" = load %String, %String* %"$c_gep_1325", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_1326", %String* %c5, align 8
  %"$gasrem_1327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1328" = icmp ugt i64 1, %"$gasrem_1327"
  br i1 %"$gascmp_1328", label %"$out_of_gas_1329", label %"$have_gas_1330"

"$out_of_gas_1329":                               ; preds = %"$Some_1323"
  call void @_out_of_gas()
  br label %"$have_gas_1330"

"$have_gas_1330":                                 ; preds = %"$out_of_gas_1329", %"$Some_1323"
  %"$consume_1331" = sub i64 %"$gasrem_1327", 1
  store i64 %"$consume_1331", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$have_gas_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$have_gas_1330"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1337", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_1338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1339" = icmp ugt i64 1, %"$gasrem_1338"
  br i1 %"$gascmp_1339", label %"$out_of_gas_1340", label %"$have_gas_1341"

"$out_of_gas_1340":                               ; preds = %"$have_gas_1335"
  call void @_out_of_gas()
  br label %"$have_gas_1341"

"$have_gas_1341":                                 ; preds = %"$out_of_gas_1340", %"$have_gas_1335"
  %"$consume_1342" = sub i64 %"$gasrem_1338", 1
  store i64 %"$consume_1342", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$execptr_load_1343" = load i8*, i8** @_execptr, align 8
  %"$c_1344" = load %String, %String* %c5, align 8
  %"$v_1345" = load %String, %String* %v6, align 8
  %"$eq_call_1346" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1343", %String %"$c_1344", %String %"$v_1345")
  store %TName_Bool* %"$eq_call_1346", %TName_Bool** %eq7, align 8
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 2, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1341"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1341"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 2
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %"$eq_1354" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_1355" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1354", i32 0, i32 0
  %"$eq_tag_1356" = load i8, i8* %"$eq_tag_1355", align 1
  switch i8 %"$eq_tag_1356", label %"$empty_default_1357" [
    i8 0, label %"$True_1358"
    i8 1, label %"$False_1360"
  ]

"$True_1358":                                     ; preds = %"$have_gas_1351"
  %"$eq_1359" = bitcast %TName_Bool* %"$eq_1354" to %CName_True*
  br label %"$matchsucc_1353"

"$False_1360":                                    ; preds = %"$have_gas_1351"
  %"$eq_1361" = bitcast %TName_Bool* %"$eq_1354" to %CName_False*
  %"$gasrem_1362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1363" = icmp ugt i64 1, %"$gasrem_1362"
  br i1 %"$gascmp_1363", label %"$out_of_gas_1364", label %"$have_gas_1365"

"$out_of_gas_1364":                               ; preds = %"$False_1360"
  call void @_out_of_gas()
  br label %"$have_gas_1365"

"$have_gas_1365":                                 ; preds = %"$out_of_gas_1364", %"$False_1360"
  %"$consume_1366" = sub i64 %"$gasrem_1362", 1
  store i64 %"$consume_1366", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_1367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1368" = icmp ugt i64 1, %"$gasrem_1367"
  br i1 %"$gascmp_1368", label %"$out_of_gas_1369", label %"$have_gas_1370"

"$out_of_gas_1369":                               ; preds = %"$have_gas_1365"
  call void @_out_of_gas()
  br label %"$have_gas_1370"

"$have_gas_1370":                                 ; preds = %"$out_of_gas_1369", %"$have_gas_1365"
  %"$consume_1371" = sub i64 %"$gasrem_1367", 1
  store i64 %"$consume_1371", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1372", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_1373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1374" = icmp ugt i64 1, %"$gasrem_1373"
  br i1 %"$gascmp_1374", label %"$out_of_gas_1375", label %"$have_gas_1376"

"$out_of_gas_1375":                               ; preds = %"$have_gas_1370"
  call void @_out_of_gas()
  br label %"$have_gas_1376"

"$have_gas_1376":                                 ; preds = %"$out_of_gas_1375", %"$have_gas_1370"
  %"$consume_1377" = sub i64 %"$gasrem_1373", 1
  store i64 %"$consume_1377", i64* @_gasrem, align 8
  %"$fail_msg__origin_1378" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1378", align 1
  %"$fail_msg__sender_1379" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1379", align 1
  %"$tname_1380" = load %String, %String* %tname, align 8
  %"$m_1381" = load %String, %String* %m8, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1378", [20 x i8]* %"$fail_msg__sender_1379", %String %"$tname_1380", %String %"$m_1381")
  br label %"$matchsucc_1353"

"$empty_default_1357":                            ; preds = %"$have_gas_1351"
  br label %"$matchsucc_1353"

"$matchsucc_1353":                                ; preds = %"$have_gas_1376", %"$True_1358", %"$empty_default_1357"
  br label %"$matchsucc_1318"

"$None_1382":                                     ; preds = %"$have_gas_1316"
  %"$$c1_0_1383" = bitcast %TName_Option_String* %"$$c1_0_1319" to %CName_None_String*
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$None_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$None_1382"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_1389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1390" = icmp ugt i64 1, %"$gasrem_1389"
  br i1 %"$gascmp_1390", label %"$out_of_gas_1391", label %"$have_gas_1392"

"$out_of_gas_1391":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1392"

"$have_gas_1392":                                 ; preds = %"$out_of_gas_1391", %"$have_gas_1387"
  %"$consume_1393" = sub i64 %"$gasrem_1389", 1
  store i64 %"$consume_1393", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1394", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_1395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1396" = icmp ugt i64 1, %"$gasrem_1395"
  br i1 %"$gascmp_1396", label %"$out_of_gas_1397", label %"$have_gas_1398"

"$out_of_gas_1397":                               ; preds = %"$have_gas_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1398"

"$have_gas_1398":                                 ; preds = %"$out_of_gas_1397", %"$have_gas_1392"
  %"$consume_1399" = sub i64 %"$gasrem_1395", 1
  store i64 %"$consume_1399", i64* @_gasrem, align 8
  %"$fail_msg__origin_1400" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1400", align 1
  %"$fail_msg__sender_1401" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1401", align 1
  %"$tname_1402" = load %String, %String* %tname, align 8
  %"$m_1403" = load %String, %String* %m9, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1400", [20 x i8]* %"$fail_msg__sender_1401", %String %"$tname_1402", %String %"$m_1403")
  br label %"$matchsucc_1318"

"$empty_default_1322":                            ; preds = %"$have_gas_1316"
  br label %"$matchsucc_1318"

"$matchsucc_1318":                                ; preds = %"$have_gas_1398", %"$matchsucc_1353", %"$empty_default_1322"
  %"$gasrem_1404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1405" = icmp ugt i64 1, %"$gasrem_1404"
  br i1 %"$gascmp_1405", label %"$out_of_gas_1406", label %"$have_gas_1407"

"$out_of_gas_1406":                               ; preds = %"$matchsucc_1318"
  call void @_out_of_gas()
  br label %"$have_gas_1407"

"$have_gas_1407":                                 ; preds = %"$out_of_gas_1406", %"$matchsucc_1318"
  %"$consume_1408" = sub i64 %"$gasrem_1404", 1
  store i64 %"$consume_1408", i64* @_gasrem, align 8
  %"$key1b_1" = alloca %String, align 8
  %"$gasrem_1409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1410" = icmp ugt i64 1, %"$gasrem_1409"
  br i1 %"$gascmp_1410", label %"$out_of_gas_1411", label %"$have_gas_1412"

"$out_of_gas_1411":                               ; preds = %"$have_gas_1407"
  call void @_out_of_gas()
  br label %"$have_gas_1412"

"$have_gas_1412":                                 ; preds = %"$out_of_gas_1411", %"$have_gas_1407"
  %"$consume_1413" = sub i64 %"$gasrem_1409", 1
  store i64 %"$consume_1413", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1414", i32 0, i32 0), i32 5 }, %String* %"$key1b_1", align 8
  %"$gasrem_1415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1416" = icmp ugt i64 1, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1412"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1412"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 1
  store i64 %"$consume_1419", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1421" = icmp ugt i64 1, %"$gasrem_1420"
  br i1 %"$gascmp_1421", label %"$out_of_gas_1422", label %"$have_gas_1423"

"$out_of_gas_1422":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1423"

"$have_gas_1423":                                 ; preds = %"$out_of_gas_1422", %"$have_gas_1418"
  %"$consume_1424" = sub i64 %"$gasrem_1420", 1
  store i64 %"$consume_1424", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1425", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_2" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1426_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1426_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1426_salloc_load", i64 32)
  %"$indices_buf_1426_salloc" = bitcast i8* %"$indices_buf_1426_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1426" = bitcast [32 x i8]* %"$indices_buf_1426_salloc" to i8*
  %"$$key1b_1_1427" = load %String, %String* %"$key1b_1", align 8
  %"$indices_gep_1428" = getelementptr i8, i8* %"$indices_buf_1426", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_1428" to %String*
  store %String %"$$key1b_1_1427", %String* %indices_cast10, align 8
  %"$key2c_1429" = load %String, %String* %key2c, align 8
  %"$indices_gep_1430" = getelementptr i8, i8* %"$indices_buf_1426", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_1430" to %String*
  store %String %"$key2c_1429", %String* %indices_cast11, align 8
  %"$execptr_load_1432" = load i8*, i8** @_execptr, align 8
  %"$$c1_2_call_1433" = call i8* @_fetch_field(i8* %"$execptr_load_1432", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1431", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1426", i32 1)
  %"$$c1_2_1434" = bitcast i8* %"$$c1_2_call_1433" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_1434", %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_1435" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$$c1_2_1435_1436" = bitcast %TName_Option_String* %"$$c1_2_1435" to i8*
  %"$_literal_cost_call_1437" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$$c1_2_1435_1436")
  %"$gasadd_1438" = add i64 %"$_literal_cost_call_1437", 0
  %"$gasadd_1439" = add i64 %"$gasadd_1438", 2
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 %"$gasadd_1439", %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1423"
  %"$consume_1444" = sub i64 %"$gasrem_1440", %"$gasadd_1439"
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 2, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1443"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 2
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %"$$c1_2_1451" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_tag_1452" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_1451", i32 0, i32 0
  %"$$c1_2_tag_1453" = load i8, i8* %"$$c1_2_tag_1452", align 1
  switch i8 %"$$c1_2_tag_1453", label %"$empty_default_1454" [
    i8 0, label %"$Some_1455"
    i8 1, label %"$None_1514"
  ]

"$Some_1455":                                     ; preds = %"$have_gas_1448"
  %"$$c1_2_1456" = bitcast %TName_Option_String* %"$$c1_2_1451" to %CName_Some_String*
  %"$c_gep_1457" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_1456", i32 0, i32 1
  %"$c_load_1458" = load %String, %String* %"$c_gep_1457", align 8
  %c12 = alloca %String, align 8
  store %String %"$c_load_1458", %String* %c12, align 8
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$Some_1455"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$Some_1455"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  %v13 = alloca %String, align 8
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1462"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1469", i32 0, i32 0), i32 3 }, %String* %v13, align 8
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 1, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1467"
  %"$consume_1474" = sub i64 %"$gasrem_1470", 1
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %eq14 = alloca %TName_Bool*, align 8
  %"$execptr_load_1475" = load i8*, i8** @_execptr, align 8
  %"$c_1476" = load %String, %String* %c12, align 8
  %"$v_1477" = load %String, %String* %v13, align 8
  %"$eq_call_1478" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1475", %String %"$c_1476", %String %"$v_1477")
  store %TName_Bool* %"$eq_call_1478", %TName_Bool** %eq14, align 8
  %"$gasrem_1480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1481" = icmp ugt i64 2, %"$gasrem_1480"
  br i1 %"$gascmp_1481", label %"$out_of_gas_1482", label %"$have_gas_1483"

"$out_of_gas_1482":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1483"

"$have_gas_1483":                                 ; preds = %"$out_of_gas_1482", %"$have_gas_1473"
  %"$consume_1484" = sub i64 %"$gasrem_1480", 2
  store i64 %"$consume_1484", i64* @_gasrem, align 8
  %"$eq_1486" = load %TName_Bool*, %TName_Bool** %eq14, align 8
  %"$eq_tag_1487" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1486", i32 0, i32 0
  %"$eq_tag_1488" = load i8, i8* %"$eq_tag_1487", align 1
  switch i8 %"$eq_tag_1488", label %"$empty_default_1489" [
    i8 0, label %"$True_1490"
    i8 1, label %"$False_1492"
  ]

"$True_1490":                                     ; preds = %"$have_gas_1483"
  %"$eq_1491" = bitcast %TName_Bool* %"$eq_1486" to %CName_True*
  br label %"$matchsucc_1485"

"$False_1492":                                    ; preds = %"$have_gas_1483"
  %"$eq_1493" = bitcast %TName_Bool* %"$eq_1486" to %CName_False*
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 1, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %"$False_1492"
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %"$False_1492"
  %"$consume_1498" = sub i64 %"$gasrem_1494", 1
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %m15 = alloca %String, align 8
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1497"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1504", i32 0, i32 0), i32 31 }, %String* %m15, align 8
  %"$gasrem_1505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1506" = icmp ugt i64 1, %"$gasrem_1505"
  br i1 %"$gascmp_1506", label %"$out_of_gas_1507", label %"$have_gas_1508"

"$out_of_gas_1507":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1508"

"$have_gas_1508":                                 ; preds = %"$out_of_gas_1507", %"$have_gas_1502"
  %"$consume_1509" = sub i64 %"$gasrem_1505", 1
  store i64 %"$consume_1509", i64* @_gasrem, align 8
  %"$fail_msg__origin_1510" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1510", align 1
  %"$fail_msg__sender_1511" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1511", align 1
  %"$tname_1512" = load %String, %String* %tname, align 8
  %"$m_1513" = load %String, %String* %m15, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1510", [20 x i8]* %"$fail_msg__sender_1511", %String %"$tname_1512", %String %"$m_1513")
  br label %"$matchsucc_1485"

"$empty_default_1489":                            ; preds = %"$have_gas_1483"
  br label %"$matchsucc_1485"

"$matchsucc_1485":                                ; preds = %"$have_gas_1508", %"$True_1490", %"$empty_default_1489"
  br label %"$matchsucc_1450"

"$None_1514":                                     ; preds = %"$have_gas_1448"
  %"$$c1_2_1515" = bitcast %TName_Option_String* %"$$c1_2_1451" to %CName_None_String*
  %"$gasrem_1516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1517" = icmp ugt i64 1, %"$gasrem_1516"
  br i1 %"$gascmp_1517", label %"$out_of_gas_1518", label %"$have_gas_1519"

"$out_of_gas_1518":                               ; preds = %"$None_1514"
  call void @_out_of_gas()
  br label %"$have_gas_1519"

"$have_gas_1519":                                 ; preds = %"$out_of_gas_1518", %"$None_1514"
  %"$consume_1520" = sub i64 %"$gasrem_1516", 1
  store i64 %"$consume_1520", i64* @_gasrem, align 8
  %m16 = alloca %String, align 8
  %"$gasrem_1521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1522" = icmp ugt i64 1, %"$gasrem_1521"
  br i1 %"$gascmp_1522", label %"$out_of_gas_1523", label %"$have_gas_1524"

"$out_of_gas_1523":                               ; preds = %"$have_gas_1519"
  call void @_out_of_gas()
  br label %"$have_gas_1524"

"$have_gas_1524":                                 ; preds = %"$out_of_gas_1523", %"$have_gas_1519"
  %"$consume_1525" = sub i64 %"$gasrem_1521", 1
  store i64 %"$consume_1525", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1526", i32 0, i32 0), i32 21 }, %String* %m16, align 8
  %"$gasrem_1527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1528" = icmp ugt i64 1, %"$gasrem_1527"
  br i1 %"$gascmp_1528", label %"$out_of_gas_1529", label %"$have_gas_1530"

"$out_of_gas_1529":                               ; preds = %"$have_gas_1524"
  call void @_out_of_gas()
  br label %"$have_gas_1530"

"$have_gas_1530":                                 ; preds = %"$out_of_gas_1529", %"$have_gas_1524"
  %"$consume_1531" = sub i64 %"$gasrem_1527", 1
  store i64 %"$consume_1531", i64* @_gasrem, align 8
  %"$fail_msg__origin_1532" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1532", align 1
  %"$fail_msg__sender_1533" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1533", align 1
  %"$tname_1534" = load %String, %String* %tname, align 8
  %"$m_1535" = load %String, %String* %m16, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1532", [20 x i8]* %"$fail_msg__sender_1533", %String %"$tname_1534", %String %"$m_1535")
  br label %"$matchsucc_1450"

"$empty_default_1454":                            ; preds = %"$have_gas_1448"
  br label %"$matchsucc_1450"

"$matchsucc_1450":                                ; preds = %"$have_gas_1530", %"$matchsucc_1485", %"$empty_default_1454"
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 1, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$matchsucc_1450"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$matchsucc_1450"
  %"$consume_1540" = sub i64 %"$gasrem_1536", 1
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %"$indices_buf_1541_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1541_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1541_salloc_load", i64 16)
  %"$indices_buf_1541_salloc" = bitcast i8* %"$indices_buf_1541_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1541" = bitcast [16 x i8]* %"$indices_buf_1541_salloc" to i8*
  %"$$key1b_1_1542" = load %String, %String* %"$key1b_1", align 8
  %"$indices_gep_1543" = getelementptr i8, i8* %"$indices_buf_1541", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_1543" to %String*
  store %String %"$$key1b_1_1542", %String* %indices_cast17, align 8
  %"$execptr_load_1544" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_1544", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1545", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1541", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_1547" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1548" = bitcast i8* %"$_amount_1547" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1548", align 8
  %"$_origin_1549" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1550" = bitcast i8* %"$_origin_1549" to [20 x i8]*
  %"$_sender_1551" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1552" = bitcast i8* %"$_sender_1551" to [20 x i8]*
  call void @"$t6_1126"(%Uint128 %_amount, [20 x i8]* %"$_origin_1550", [20 x i8]* %"$_sender_1552")
  ret void
}

define internal void @"$t7_1553"(%Uint128 %_amount, [20 x i8]* %"$_origin_1554", [20 x i8]* %"$_sender_1555") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1554", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1555", align 1
  %"$gasrem_1556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1557" = icmp ugt i64 1, %"$gasrem_1556"
  br i1 %"$gascmp_1557", label %"$out_of_gas_1558", label %"$have_gas_1559"

"$out_of_gas_1558":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1559"

"$have_gas_1559":                                 ; preds = %"$out_of_gas_1558", %entry
  %"$consume_1560" = sub i64 %"$gasrem_1556", 1
  store i64 %"$consume_1560", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1562" = icmp ugt i64 1, %"$gasrem_1561"
  br i1 %"$gascmp_1562", label %"$out_of_gas_1563", label %"$have_gas_1564"

"$out_of_gas_1563":                               ; preds = %"$have_gas_1559"
  call void @_out_of_gas()
  br label %"$have_gas_1564"

"$have_gas_1564":                                 ; preds = %"$out_of_gas_1563", %"$have_gas_1559"
  %"$consume_1565" = sub i64 %"$gasrem_1561", 1
  store i64 %"$consume_1565", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1566", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1568" = icmp ugt i64 1, %"$gasrem_1567"
  br i1 %"$gascmp_1568", label %"$out_of_gas_1569", label %"$have_gas_1570"

"$out_of_gas_1569":                               ; preds = %"$have_gas_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1570"

"$have_gas_1570":                                 ; preds = %"$out_of_gas_1569", %"$have_gas_1564"
  %"$consume_1571" = sub i64 %"$gasrem_1567", 1
  store i64 %"$consume_1571", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1573" = icmp ugt i64 1, %"$gasrem_1572"
  br i1 %"$gascmp_1573", label %"$out_of_gas_1574", label %"$have_gas_1575"

"$out_of_gas_1574":                               ; preds = %"$have_gas_1570"
  call void @_out_of_gas()
  br label %"$have_gas_1575"

"$have_gas_1575":                                 ; preds = %"$out_of_gas_1574", %"$have_gas_1570"
  %"$consume_1576" = sub i64 %"$gasrem_1572", 1
  store i64 %"$consume_1576", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1577", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1575"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1575"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1584" = icmp ugt i64 1, %"$gasrem_1583"
  br i1 %"$gascmp_1584", label %"$out_of_gas_1585", label %"$have_gas_1586"

"$out_of_gas_1585":                               ; preds = %"$have_gas_1581"
  call void @_out_of_gas()
  br label %"$have_gas_1586"

"$have_gas_1586":                                 ; preds = %"$out_of_gas_1585", %"$have_gas_1581"
  %"$consume_1587" = sub i64 %"$gasrem_1583", 1
  store i64 %"$consume_1587", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1588", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1589_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1589_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1589_salloc_load", i64 32)
  %"$indices_buf_1589_salloc" = bitcast i8* %"$indices_buf_1589_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1589" = bitcast [32 x i8]* %"$indices_buf_1589_salloc" to i8*
  %"$key1a_1590" = load %String, %String* %key1a, align 8
  %"$indices_gep_1591" = getelementptr i8, i8* %"$indices_buf_1589", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1591" to %String*
  store %String %"$key1a_1590", %String* %indices_cast, align 8
  %"$key2a_1592" = load %String, %String* %key2a, align 8
  %"$indices_gep_1593" = getelementptr i8, i8* %"$indices_buf_1589", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1593" to %String*
  store %String %"$key2a_1592", %String* %indices_cast1, align 8
  %"$execptr_load_1595" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1596" = call i8* @_fetch_field(i8* %"$execptr_load_1595", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1594", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1589", i32 1)
  %"$c1_1597" = bitcast i8* %"$c1_call_1596" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1597", %TName_Option_String** %c1, align 8
  %"$c1_1598" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1598_1599" = bitcast %TName_Option_String* %"$c1_1598" to i8*
  %"$_literal_cost_call_1600" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$c1_1598_1599")
  %"$gasadd_1601" = add i64 %"$_literal_cost_call_1600", 0
  %"$gasadd_1602" = add i64 %"$gasadd_1601", 2
  %"$gasrem_1603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1604" = icmp ugt i64 %"$gasadd_1602", %"$gasrem_1603"
  br i1 %"$gascmp_1604", label %"$out_of_gas_1605", label %"$have_gas_1606"

"$out_of_gas_1605":                               ; preds = %"$have_gas_1586"
  call void @_out_of_gas()
  br label %"$have_gas_1606"

"$have_gas_1606":                                 ; preds = %"$out_of_gas_1605", %"$have_gas_1586"
  %"$consume_1607" = sub i64 %"$gasrem_1603", %"$gasadd_1602"
  store i64 %"$consume_1607", i64* @_gasrem, align 8
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 2, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1606"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1606"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 2
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %"$c1_1614" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1615" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1614", i32 0, i32 0
  %"$c1_tag_1616" = load i8, i8* %"$c1_tag_1615", align 1
  switch i8 %"$c1_tag_1616", label %"$empty_default_1617" [
    i8 0, label %"$Some_1618"
    i8 1, label %"$None_1677"
  ]

"$Some_1618":                                     ; preds = %"$have_gas_1611"
  %"$c1_1619" = bitcast %TName_Option_String* %"$c1_1614" to %CName_Some_String*
  %"$c_gep_1620" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1619", i32 0, i32 1
  %"$c_load_1621" = load %String, %String* %"$c_gep_1620", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1621", %String* %c, align 8
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$Some_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$Some_1618"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 1, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %"$have_gas_1625"
  %"$consume_1631" = sub i64 %"$gasrem_1627", 1
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1632", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1634" = icmp ugt i64 1, %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$have_gas_1630"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$have_gas_1630"
  %"$consume_1637" = sub i64 %"$gasrem_1633", 1
  store i64 %"$consume_1637", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$execptr_load_1638" = load i8*, i8** @_execptr, align 8
  %"$c_1639" = load %String, %String* %c, align 8
  %"$v_1640" = load %String, %String* %v, align 8
  %"$eq_call_1641" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1638", %String %"$c_1639", %String %"$v_1640")
  store %TName_Bool* %"$eq_call_1641", %TName_Bool** %eq, align 8
  %"$gasrem_1643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1644" = icmp ugt i64 2, %"$gasrem_1643"
  br i1 %"$gascmp_1644", label %"$out_of_gas_1645", label %"$have_gas_1646"

"$out_of_gas_1645":                               ; preds = %"$have_gas_1636"
  call void @_out_of_gas()
  br label %"$have_gas_1646"

"$have_gas_1646":                                 ; preds = %"$out_of_gas_1645", %"$have_gas_1636"
  %"$consume_1647" = sub i64 %"$gasrem_1643", 2
  store i64 %"$consume_1647", i64* @_gasrem, align 8
  %"$eq_1649" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1650" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1649", i32 0, i32 0
  %"$eq_tag_1651" = load i8, i8* %"$eq_tag_1650", align 1
  switch i8 %"$eq_tag_1651", label %"$empty_default_1652" [
    i8 0, label %"$True_1653"
    i8 1, label %"$False_1655"
  ]

"$True_1653":                                     ; preds = %"$have_gas_1646"
  %"$eq_1654" = bitcast %TName_Bool* %"$eq_1649" to %CName_True*
  br label %"$matchsucc_1648"

"$False_1655":                                    ; preds = %"$have_gas_1646"
  %"$eq_1656" = bitcast %TName_Bool* %"$eq_1649" to %CName_False*
  %"$gasrem_1657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1658" = icmp ugt i64 1, %"$gasrem_1657"
  br i1 %"$gascmp_1658", label %"$out_of_gas_1659", label %"$have_gas_1660"

"$out_of_gas_1659":                               ; preds = %"$False_1655"
  call void @_out_of_gas()
  br label %"$have_gas_1660"

"$have_gas_1660":                                 ; preds = %"$out_of_gas_1659", %"$False_1655"
  %"$consume_1661" = sub i64 %"$gasrem_1657", 1
  store i64 %"$consume_1661", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1663" = icmp ugt i64 1, %"$gasrem_1662"
  br i1 %"$gascmp_1663", label %"$out_of_gas_1664", label %"$have_gas_1665"

"$out_of_gas_1664":                               ; preds = %"$have_gas_1660"
  call void @_out_of_gas()
  br label %"$have_gas_1665"

"$have_gas_1665":                                 ; preds = %"$out_of_gas_1664", %"$have_gas_1660"
  %"$consume_1666" = sub i64 %"$gasrem_1662", 1
  store i64 %"$consume_1666", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1667", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1669" = icmp ugt i64 1, %"$gasrem_1668"
  br i1 %"$gascmp_1669", label %"$out_of_gas_1670", label %"$have_gas_1671"

"$out_of_gas_1670":                               ; preds = %"$have_gas_1665"
  call void @_out_of_gas()
  br label %"$have_gas_1671"

"$have_gas_1671":                                 ; preds = %"$out_of_gas_1670", %"$have_gas_1665"
  %"$consume_1672" = sub i64 %"$gasrem_1668", 1
  store i64 %"$consume_1672", i64* @_gasrem, align 8
  %"$fail_msg__origin_1673" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1673", align 1
  %"$fail_msg__sender_1674" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1674", align 1
  %"$tname_1675" = load %String, %String* %tname, align 8
  %"$m_1676" = load %String, %String* %m, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1673", [20 x i8]* %"$fail_msg__sender_1674", %String %"$tname_1675", %String %"$m_1676")
  br label %"$matchsucc_1648"

"$empty_default_1652":                            ; preds = %"$have_gas_1646"
  br label %"$matchsucc_1648"

"$matchsucc_1648":                                ; preds = %"$have_gas_1671", %"$True_1653", %"$empty_default_1652"
  br label %"$matchsucc_1613"

"$None_1677":                                     ; preds = %"$have_gas_1611"
  %"$c1_1678" = bitcast %TName_Option_String* %"$c1_1614" to %CName_None_String*
  %"$gasrem_1679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1680" = icmp ugt i64 1, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$None_1677"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$None_1677"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 1
  store i64 %"$consume_1683", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1685" = icmp ugt i64 1, %"$gasrem_1684"
  br i1 %"$gascmp_1685", label %"$out_of_gas_1686", label %"$have_gas_1687"

"$out_of_gas_1686":                               ; preds = %"$have_gas_1682"
  call void @_out_of_gas()
  br label %"$have_gas_1687"

"$have_gas_1687":                                 ; preds = %"$out_of_gas_1686", %"$have_gas_1682"
  %"$consume_1688" = sub i64 %"$gasrem_1684", 1
  store i64 %"$consume_1688", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1689", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1691" = icmp ugt i64 1, %"$gasrem_1690"
  br i1 %"$gascmp_1691", label %"$out_of_gas_1692", label %"$have_gas_1693"

"$out_of_gas_1692":                               ; preds = %"$have_gas_1687"
  call void @_out_of_gas()
  br label %"$have_gas_1693"

"$have_gas_1693":                                 ; preds = %"$out_of_gas_1692", %"$have_gas_1687"
  %"$consume_1694" = sub i64 %"$gasrem_1690", 1
  store i64 %"$consume_1694", i64* @_gasrem, align 8
  %"$fail_msg__origin_1695" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1695", align 1
  %"$fail_msg__sender_1696" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1696", align 1
  %"$tname_1697" = load %String, %String* %tname, align 8
  %"$m_1698" = load %String, %String* %m2, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1695", [20 x i8]* %"$fail_msg__sender_1696", %String %"$tname_1697", %String %"$m_1698")
  br label %"$matchsucc_1613"

"$empty_default_1617":                            ; preds = %"$have_gas_1611"
  br label %"$matchsucc_1613"

"$matchsucc_1613":                                ; preds = %"$have_gas_1693", %"$matchsucc_1648", %"$empty_default_1617"
  %"$gasrem_1699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1700" = icmp ugt i64 1, %"$gasrem_1699"
  br i1 %"$gascmp_1700", label %"$out_of_gas_1701", label %"$have_gas_1702"

"$out_of_gas_1701":                               ; preds = %"$matchsucc_1613"
  call void @_out_of_gas()
  br label %"$have_gas_1702"

"$have_gas_1702":                                 ; preds = %"$out_of_gas_1701", %"$matchsucc_1613"
  %"$consume_1703" = sub i64 %"$gasrem_1699", 1
  store i64 %"$consume_1703", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1705" = icmp ugt i64 1, %"$gasrem_1704"
  br i1 %"$gascmp_1705", label %"$out_of_gas_1706", label %"$have_gas_1707"

"$out_of_gas_1706":                               ; preds = %"$have_gas_1702"
  call void @_out_of_gas()
  br label %"$have_gas_1707"

"$have_gas_1707":                                 ; preds = %"$out_of_gas_1706", %"$have_gas_1702"
  %"$consume_1708" = sub i64 %"$gasrem_1704", 1
  store i64 %"$consume_1708", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1709", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$c1_3" = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_1710_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1710_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1710_salloc_load", i64 16)
  %"$indices_buf_1710_salloc" = bitcast i8* %"$indices_buf_1710_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1710" = bitcast [16 x i8]* %"$indices_buf_1710_salloc" to i8*
  %"$key1b_1711" = load %String, %String* %key1b, align 8
  %"$indices_gep_1712" = getelementptr i8, i8* %"$indices_buf_1710", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1712" to %String*
  store %String %"$key1b_1711", %String* %indices_cast3, align 8
  %"$execptr_load_1714" = load i8*, i8** @_execptr, align 8
  %"$$c1_3_call_1715" = call i8* @_fetch_field(i8* %"$execptr_load_1714", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1713", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_1710", i32 1)
  %"$$c1_3_1716" = bitcast i8* %"$$c1_3_call_1715" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1716", %"TName_Option_Map_(String)_(String)"** %"$c1_3", align 8
  %"$$c1_3_1717" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3", align 8
  %"$$$c1_3_1717_1718" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1717" to i8*
  %"$_literal_cost_call_1719" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_67", i8* %"$$$c1_3_1717_1718")
  %"$gasadd_1720" = add i64 %"$_literal_cost_call_1719", 0
  %"$gasadd_1721" = add i64 %"$gasadd_1720", 1
  %"$gasrem_1722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1723" = icmp ugt i64 %"$gasadd_1721", %"$gasrem_1722"
  br i1 %"$gascmp_1723", label %"$out_of_gas_1724", label %"$have_gas_1725"

"$out_of_gas_1724":                               ; preds = %"$have_gas_1707"
  call void @_out_of_gas()
  br label %"$have_gas_1725"

"$have_gas_1725":                                 ; preds = %"$out_of_gas_1724", %"$have_gas_1707"
  %"$consume_1726" = sub i64 %"$gasrem_1722", %"$gasadd_1721"
  store i64 %"$consume_1726", i64* @_gasrem, align 8
  %"$gasrem_1727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1728" = icmp ugt i64 2, %"$gasrem_1727"
  br i1 %"$gascmp_1728", label %"$out_of_gas_1729", label %"$have_gas_1730"

"$out_of_gas_1729":                               ; preds = %"$have_gas_1725"
  call void @_out_of_gas()
  br label %"$have_gas_1730"

"$have_gas_1730":                                 ; preds = %"$out_of_gas_1729", %"$have_gas_1725"
  %"$consume_1731" = sub i64 %"$gasrem_1727", 2
  store i64 %"$consume_1731", i64* @_gasrem, align 8
  %"$$c1_3_1733" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3", align 8
  %"$$c1_3_tag_1734" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1733", i32 0, i32 0
  %"$$c1_3_tag_1735" = load i8, i8* %"$$c1_3_tag_1734", align 1
  switch i8 %"$$c1_3_tag_1735", label %"$empty_default_1736" [
    i8 0, label %"$Some_1737"
    i8 1, label %"$None_1761"
  ]

"$Some_1737":                                     ; preds = %"$have_gas_1730"
  %"$$c1_3_1738" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1733" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_3_16_gep_1739" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_3_1738", i32 0, i32 1
  %"$$$c1_3_16_load_1740" = load %Map_String_String*, %Map_String_String** %"$$$c1_3_16_gep_1739", align 8
  %"$$c1_3_16" = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$$$c1_3_16_load_1740", %Map_String_String** %"$$c1_3_16", align 8
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$Some_1737"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$Some_1737"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %m4 = alloca %String, align 8
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1744"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1744"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1751", i32 0, i32 0), i32 36 }, %String* %m4, align 8
  %"$gasrem_1752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1753" = icmp ugt i64 1, %"$gasrem_1752"
  br i1 %"$gascmp_1753", label %"$out_of_gas_1754", label %"$have_gas_1755"

"$out_of_gas_1754":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1755"

"$have_gas_1755":                                 ; preds = %"$out_of_gas_1754", %"$have_gas_1749"
  %"$consume_1756" = sub i64 %"$gasrem_1752", 1
  store i64 %"$consume_1756", i64* @_gasrem, align 8
  %"$fail_msg__origin_1757" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1757", align 1
  %"$fail_msg__sender_1758" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1758", align 1
  %"$tname_1759" = load %String, %String* %tname, align 8
  %"$m_1760" = load %String, %String* %m4, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1757", [20 x i8]* %"$fail_msg__sender_1758", %String %"$tname_1759", %String %"$m_1760")
  br label %"$matchsucc_1732"

"$None_1761":                                     ; preds = %"$have_gas_1730"
  %"$$c1_3_1762" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1733" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_1732"

"$empty_default_1736":                            ; preds = %"$have_gas_1730"
  br label %"$matchsucc_1732"

"$matchsucc_1732":                                ; preds = %"$None_1761", %"$have_gas_1755", %"$empty_default_1736"
  %"$gasrem_1763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1764" = icmp ugt i64 1, %"$gasrem_1763"
  br i1 %"$gascmp_1764", label %"$out_of_gas_1765", label %"$have_gas_1766"

"$out_of_gas_1765":                               ; preds = %"$matchsucc_1732"
  call void @_out_of_gas()
  br label %"$have_gas_1766"

"$have_gas_1766":                                 ; preds = %"$out_of_gas_1765", %"$matchsucc_1732"
  %"$consume_1767" = sub i64 %"$gasrem_1763", 1
  store i64 %"$consume_1767", i64* @_gasrem, align 8
  %"$key1b_4" = alloca %String, align 8
  %"$gasrem_1768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1769" = icmp ugt i64 1, %"$gasrem_1768"
  br i1 %"$gascmp_1769", label %"$out_of_gas_1770", label %"$have_gas_1771"

"$out_of_gas_1770":                               ; preds = %"$have_gas_1766"
  call void @_out_of_gas()
  br label %"$have_gas_1771"

"$have_gas_1771":                                 ; preds = %"$out_of_gas_1770", %"$have_gas_1766"
  %"$consume_1772" = sub i64 %"$gasrem_1768", 1
  store i64 %"$consume_1772", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1773", i32 0, i32 0), i32 5 }, %String* %"$key1b_4", align 8
  %"$gasrem_1774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1775" = icmp ugt i64 1, %"$gasrem_1774"
  br i1 %"$gascmp_1775", label %"$out_of_gas_1776", label %"$have_gas_1777"

"$out_of_gas_1776":                               ; preds = %"$have_gas_1771"
  call void @_out_of_gas()
  br label %"$have_gas_1777"

"$have_gas_1777":                                 ; preds = %"$out_of_gas_1776", %"$have_gas_1771"
  %"$consume_1778" = sub i64 %"$gasrem_1774", 1
  store i64 %"$consume_1778", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1780" = icmp ugt i64 1, %"$gasrem_1779"
  br i1 %"$gascmp_1780", label %"$out_of_gas_1781", label %"$have_gas_1782"

"$out_of_gas_1781":                               ; preds = %"$have_gas_1777"
  call void @_out_of_gas()
  br label %"$have_gas_1782"

"$have_gas_1782":                                 ; preds = %"$out_of_gas_1781", %"$have_gas_1777"
  %"$consume_1783" = sub i64 %"$gasrem_1779", 1
  store i64 %"$consume_1783", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1784", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_5" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1785_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1785_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1785_salloc_load", i64 32)
  %"$indices_buf_1785_salloc" = bitcast i8* %"$indices_buf_1785_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1785" = bitcast [32 x i8]* %"$indices_buf_1785_salloc" to i8*
  %"$$key1b_4_1786" = load %String, %String* %"$key1b_4", align 8
  %"$indices_gep_1787" = getelementptr i8, i8* %"$indices_buf_1785", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_1787" to %String*
  store %String %"$$key1b_4_1786", %String* %indices_cast5, align 8
  %"$key2b_1788" = load %String, %String* %key2b, align 8
  %"$indices_gep_1789" = getelementptr i8, i8* %"$indices_buf_1785", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_1789" to %String*
  store %String %"$key2b_1788", %String* %indices_cast6, align 8
  %"$execptr_load_1791" = load i8*, i8** @_execptr, align 8
  %"$$c1_5_call_1792" = call i8* @_fetch_field(i8* %"$execptr_load_1791", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1790", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1785", i32 1)
  %"$$c1_5_1793" = bitcast i8* %"$$c1_5_call_1792" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_5_1793", %TName_Option_String** %"$c1_5", align 8
  %"$$c1_5_1794" = load %TName_Option_String*, %TName_Option_String** %"$c1_5", align 8
  %"$$$c1_5_1794_1795" = bitcast %TName_Option_String* %"$$c1_5_1794" to i8*
  %"$_literal_cost_call_1796" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$$c1_5_1794_1795")
  %"$gasadd_1797" = add i64 %"$_literal_cost_call_1796", 0
  %"$gasadd_1798" = add i64 %"$gasadd_1797", 2
  %"$gasrem_1799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1800" = icmp ugt i64 %"$gasadd_1798", %"$gasrem_1799"
  br i1 %"$gascmp_1800", label %"$out_of_gas_1801", label %"$have_gas_1802"

"$out_of_gas_1801":                               ; preds = %"$have_gas_1782"
  call void @_out_of_gas()
  br label %"$have_gas_1802"

"$have_gas_1802":                                 ; preds = %"$out_of_gas_1801", %"$have_gas_1782"
  %"$consume_1803" = sub i64 %"$gasrem_1799", %"$gasadd_1798"
  store i64 %"$consume_1803", i64* @_gasrem, align 8
  %"$gasrem_1804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1805" = icmp ugt i64 2, %"$gasrem_1804"
  br i1 %"$gascmp_1805", label %"$out_of_gas_1806", label %"$have_gas_1807"

"$out_of_gas_1806":                               ; preds = %"$have_gas_1802"
  call void @_out_of_gas()
  br label %"$have_gas_1807"

"$have_gas_1807":                                 ; preds = %"$out_of_gas_1806", %"$have_gas_1802"
  %"$consume_1808" = sub i64 %"$gasrem_1804", 2
  store i64 %"$consume_1808", i64* @_gasrem, align 8
  %"$$c1_5_1810" = load %TName_Option_String*, %TName_Option_String** %"$c1_5", align 8
  %"$$c1_5_tag_1811" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_5_1810", i32 0, i32 0
  %"$$c1_5_tag_1812" = load i8, i8* %"$$c1_5_tag_1811", align 1
  switch i8 %"$$c1_5_tag_1812", label %"$empty_default_1813" [
    i8 0, label %"$Some_1814"
    i8 1, label %"$None_1838"
  ]

"$Some_1814":                                     ; preds = %"$have_gas_1807"
  %"$$c1_5_1815" = bitcast %TName_Option_String* %"$$c1_5_1810" to %CName_Some_String*
  %"$$$c1_5_15_gep_1816" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_5_1815", i32 0, i32 1
  %"$$$c1_5_15_load_1817" = load %String, %String* %"$$$c1_5_15_gep_1816", align 8
  %"$$c1_5_15" = alloca %String, align 8
  store %String %"$$$c1_5_15_load_1817", %String* %"$$c1_5_15", align 8
  %"$gasrem_1818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1819" = icmp ugt i64 1, %"$gasrem_1818"
  br i1 %"$gascmp_1819", label %"$out_of_gas_1820", label %"$have_gas_1821"

"$out_of_gas_1820":                               ; preds = %"$Some_1814"
  call void @_out_of_gas()
  br label %"$have_gas_1821"

"$have_gas_1821":                                 ; preds = %"$out_of_gas_1820", %"$Some_1814"
  %"$consume_1822" = sub i64 %"$gasrem_1818", 1
  store i64 %"$consume_1822", i64* @_gasrem, align 8
  %m7 = alloca %String, align 8
  %"$gasrem_1823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1824" = icmp ugt i64 1, %"$gasrem_1823"
  br i1 %"$gascmp_1824", label %"$out_of_gas_1825", label %"$have_gas_1826"

"$out_of_gas_1825":                               ; preds = %"$have_gas_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1826"

"$have_gas_1826":                                 ; preds = %"$out_of_gas_1825", %"$have_gas_1821"
  %"$consume_1827" = sub i64 %"$gasrem_1823", 1
  store i64 %"$consume_1827", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1828", i32 0, i32 0), i32 42 }, %String* %m7, align 8
  %"$gasrem_1829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1830" = icmp ugt i64 1, %"$gasrem_1829"
  br i1 %"$gascmp_1830", label %"$out_of_gas_1831", label %"$have_gas_1832"

"$out_of_gas_1831":                               ; preds = %"$have_gas_1826"
  call void @_out_of_gas()
  br label %"$have_gas_1832"

"$have_gas_1832":                                 ; preds = %"$out_of_gas_1831", %"$have_gas_1826"
  %"$consume_1833" = sub i64 %"$gasrem_1829", 1
  store i64 %"$consume_1833", i64* @_gasrem, align 8
  %"$fail_msg__origin_1834" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1834", align 1
  %"$fail_msg__sender_1835" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1835", align 1
  %"$tname_1836" = load %String, %String* %tname, align 8
  %"$m_1837" = load %String, %String* %m7, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1834", [20 x i8]* %"$fail_msg__sender_1835", %String %"$tname_1836", %String %"$m_1837")
  br label %"$matchsucc_1809"

"$None_1838":                                     ; preds = %"$have_gas_1807"
  %"$$c1_5_1839" = bitcast %TName_Option_String* %"$$c1_5_1810" to %CName_None_String*
  br label %"$matchsucc_1809"

"$empty_default_1813":                            ; preds = %"$have_gas_1807"
  br label %"$matchsucc_1809"

"$matchsucc_1809":                                ; preds = %"$None_1838", %"$have_gas_1832", %"$empty_default_1813"
  %"$gasrem_1840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1841" = icmp ugt i64 1, %"$gasrem_1840"
  br i1 %"$gascmp_1841", label %"$out_of_gas_1842", label %"$have_gas_1843"

"$out_of_gas_1842":                               ; preds = %"$matchsucc_1809"
  call void @_out_of_gas()
  br label %"$have_gas_1843"

"$have_gas_1843":                                 ; preds = %"$out_of_gas_1842", %"$matchsucc_1809"
  %"$consume_1844" = sub i64 %"$gasrem_1840", 1
  store i64 %"$consume_1844", i64* @_gasrem, align 8
  %"$key1b_6" = alloca %String, align 8
  %"$gasrem_1845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1846" = icmp ugt i64 1, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %"$have_gas_1843"
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %"$have_gas_1843"
  %"$consume_1849" = sub i64 %"$gasrem_1845", 1
  store i64 %"$consume_1849", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1850", i32 0, i32 0), i32 5 }, %String* %"$key1b_6", align 8
  %"$gasrem_1851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1852" = icmp ugt i64 1, %"$gasrem_1851"
  br i1 %"$gascmp_1852", label %"$out_of_gas_1853", label %"$have_gas_1854"

"$out_of_gas_1853":                               ; preds = %"$have_gas_1848"
  call void @_out_of_gas()
  br label %"$have_gas_1854"

"$have_gas_1854":                                 ; preds = %"$out_of_gas_1853", %"$have_gas_1848"
  %"$consume_1855" = sub i64 %"$gasrem_1851", 1
  store i64 %"$consume_1855", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_1856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1857" = icmp ugt i64 1, %"$gasrem_1856"
  br i1 %"$gascmp_1857", label %"$out_of_gas_1858", label %"$have_gas_1859"

"$out_of_gas_1858":                               ; preds = %"$have_gas_1854"
  call void @_out_of_gas()
  br label %"$have_gas_1859"

"$have_gas_1859":                                 ; preds = %"$out_of_gas_1858", %"$have_gas_1854"
  %"$consume_1860" = sub i64 %"$gasrem_1856", 1
  store i64 %"$consume_1860", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1861", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$c1_7" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1862_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1862_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1862_salloc_load", i64 32)
  %"$indices_buf_1862_salloc" = bitcast i8* %"$indices_buf_1862_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1862" = bitcast [32 x i8]* %"$indices_buf_1862_salloc" to i8*
  %"$$key1b_6_1863" = load %String, %String* %"$key1b_6", align 8
  %"$indices_gep_1864" = getelementptr i8, i8* %"$indices_buf_1862", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_1864" to %String*
  store %String %"$$key1b_6_1863", %String* %indices_cast8, align 8
  %"$key2d_1865" = load %String, %String* %key2d, align 8
  %"$indices_gep_1866" = getelementptr i8, i8* %"$indices_buf_1862", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_1866" to %String*
  store %String %"$key2d_1865", %String* %indices_cast9, align 8
  %"$execptr_load_1868" = load i8*, i8** @_execptr, align 8
  %"$$c1_7_call_1869" = call i8* @_fetch_field(i8* %"$execptr_load_1868", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1867", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1862", i32 1)
  %"$$c1_7_1870" = bitcast i8* %"$$c1_7_call_1869" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_1870", %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_1871" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$$c1_7_1871_1872" = bitcast %TName_Option_String* %"$$c1_7_1871" to i8*
  %"$_literal_cost_call_1873" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$$c1_7_1871_1872")
  %"$gasadd_1874" = add i64 %"$_literal_cost_call_1873", 0
  %"$gasadd_1875" = add i64 %"$gasadd_1874", 2
  %"$gasrem_1876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1877" = icmp ugt i64 %"$gasadd_1875", %"$gasrem_1876"
  br i1 %"$gascmp_1877", label %"$out_of_gas_1878", label %"$have_gas_1879"

"$out_of_gas_1878":                               ; preds = %"$have_gas_1859"
  call void @_out_of_gas()
  br label %"$have_gas_1879"

"$have_gas_1879":                                 ; preds = %"$out_of_gas_1878", %"$have_gas_1859"
  %"$consume_1880" = sub i64 %"$gasrem_1876", %"$gasadd_1875"
  store i64 %"$consume_1880", i64* @_gasrem, align 8
  %"$gasrem_1881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1882" = icmp ugt i64 2, %"$gasrem_1881"
  br i1 %"$gascmp_1882", label %"$out_of_gas_1883", label %"$have_gas_1884"

"$out_of_gas_1883":                               ; preds = %"$have_gas_1879"
  call void @_out_of_gas()
  br label %"$have_gas_1884"

"$have_gas_1884":                                 ; preds = %"$out_of_gas_1883", %"$have_gas_1879"
  %"$consume_1885" = sub i64 %"$gasrem_1881", 2
  store i64 %"$consume_1885", i64* @_gasrem, align 8
  %"$$c1_7_1887" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_tag_1888" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_1887", i32 0, i32 0
  %"$$c1_7_tag_1889" = load i8, i8* %"$$c1_7_tag_1888", align 1
  switch i8 %"$$c1_7_tag_1889", label %"$empty_default_1890" [
    i8 0, label %"$Some_1891"
    i8 1, label %"$None_1915"
  ]

"$Some_1891":                                     ; preds = %"$have_gas_1884"
  %"$$c1_7_1892" = bitcast %TName_Option_String* %"$$c1_7_1887" to %CName_Some_String*
  %"$$$c1_7_14_gep_1893" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_1892", i32 0, i32 1
  %"$$$c1_7_14_load_1894" = load %String, %String* %"$$$c1_7_14_gep_1893", align 8
  %"$$c1_7_14" = alloca %String, align 8
  store %String %"$$$c1_7_14_load_1894", %String* %"$$c1_7_14", align 8
  %"$gasrem_1895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1896" = icmp ugt i64 1, %"$gasrem_1895"
  br i1 %"$gascmp_1896", label %"$out_of_gas_1897", label %"$have_gas_1898"

"$out_of_gas_1897":                               ; preds = %"$Some_1891"
  call void @_out_of_gas()
  br label %"$have_gas_1898"

"$have_gas_1898":                                 ; preds = %"$out_of_gas_1897", %"$Some_1891"
  %"$consume_1899" = sub i64 %"$gasrem_1895", 1
  store i64 %"$consume_1899", i64* @_gasrem, align 8
  %m10 = alloca %String, align 8
  %"$gasrem_1900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1901" = icmp ugt i64 1, %"$gasrem_1900"
  br i1 %"$gascmp_1901", label %"$out_of_gas_1902", label %"$have_gas_1903"

"$out_of_gas_1902":                               ; preds = %"$have_gas_1898"
  call void @_out_of_gas()
  br label %"$have_gas_1903"

"$have_gas_1903":                                 ; preds = %"$out_of_gas_1902", %"$have_gas_1898"
  %"$consume_1904" = sub i64 %"$gasrem_1900", 1
  store i64 %"$consume_1904", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1905", i32 0, i32 0), i32 42 }, %String* %m10, align 8
  %"$gasrem_1906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1907" = icmp ugt i64 1, %"$gasrem_1906"
  br i1 %"$gascmp_1907", label %"$out_of_gas_1908", label %"$have_gas_1909"

"$out_of_gas_1908":                               ; preds = %"$have_gas_1903"
  call void @_out_of_gas()
  br label %"$have_gas_1909"

"$have_gas_1909":                                 ; preds = %"$out_of_gas_1908", %"$have_gas_1903"
  %"$consume_1910" = sub i64 %"$gasrem_1906", 1
  store i64 %"$consume_1910", i64* @_gasrem, align 8
  %"$fail_msg__origin_1911" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1911", align 1
  %"$fail_msg__sender_1912" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1912", align 1
  %"$tname_1913" = load %String, %String* %tname, align 8
  %"$m_1914" = load %String, %String* %m10, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1911", [20 x i8]* %"$fail_msg__sender_1912", %String %"$tname_1913", %String %"$m_1914")
  br label %"$matchsucc_1886"

"$None_1915":                                     ; preds = %"$have_gas_1884"
  %"$$c1_7_1916" = bitcast %TName_Option_String* %"$$c1_7_1887" to %CName_None_String*
  br label %"$matchsucc_1886"

"$empty_default_1890":                            ; preds = %"$have_gas_1884"
  br label %"$matchsucc_1886"

"$matchsucc_1886":                                ; preds = %"$None_1915", %"$have_gas_1909", %"$empty_default_1890"
  %"$gasrem_1917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1918" = icmp ugt i64 1, %"$gasrem_1917"
  br i1 %"$gascmp_1918", label %"$out_of_gas_1919", label %"$have_gas_1920"

"$out_of_gas_1919":                               ; preds = %"$matchsucc_1886"
  call void @_out_of_gas()
  br label %"$have_gas_1920"

"$have_gas_1920":                                 ; preds = %"$out_of_gas_1919", %"$matchsucc_1886"
  %"$consume_1921" = sub i64 %"$gasrem_1917", 1
  store i64 %"$consume_1921", i64* @_gasrem, align 8
  %"$key1b_8" = alloca %String, align 8
  %"$gasrem_1922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1923" = icmp ugt i64 1, %"$gasrem_1922"
  br i1 %"$gascmp_1923", label %"$out_of_gas_1924", label %"$have_gas_1925"

"$out_of_gas_1924":                               ; preds = %"$have_gas_1920"
  call void @_out_of_gas()
  br label %"$have_gas_1925"

"$have_gas_1925":                                 ; preds = %"$out_of_gas_1924", %"$have_gas_1920"
  %"$consume_1926" = sub i64 %"$gasrem_1922", 1
  store i64 %"$consume_1926", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1927", i32 0, i32 0), i32 5 }, %String* %"$key1b_8", align 8
  %"$gasrem_1928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1929" = icmp ugt i64 1, %"$gasrem_1928"
  br i1 %"$gascmp_1929", label %"$out_of_gas_1930", label %"$have_gas_1931"

"$out_of_gas_1930":                               ; preds = %"$have_gas_1925"
  call void @_out_of_gas()
  br label %"$have_gas_1931"

"$have_gas_1931":                                 ; preds = %"$out_of_gas_1930", %"$have_gas_1925"
  %"$consume_1932" = sub i64 %"$gasrem_1928", 1
  store i64 %"$consume_1932", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1934" = icmp ugt i64 1, %"$gasrem_1933"
  br i1 %"$gascmp_1934", label %"$out_of_gas_1935", label %"$have_gas_1936"

"$out_of_gas_1935":                               ; preds = %"$have_gas_1931"
  call void @_out_of_gas()
  br label %"$have_gas_1936"

"$have_gas_1936":                                 ; preds = %"$out_of_gas_1935", %"$have_gas_1931"
  %"$consume_1937" = sub i64 %"$gasrem_1933", 1
  store i64 %"$consume_1937", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1938", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_1939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1940" = icmp ugt i64 1, %"$gasrem_1939"
  br i1 %"$gascmp_1940", label %"$out_of_gas_1941", label %"$have_gas_1942"

"$out_of_gas_1941":                               ; preds = %"$have_gas_1936"
  call void @_out_of_gas()
  br label %"$have_gas_1942"

"$have_gas_1942":                                 ; preds = %"$out_of_gas_1941", %"$have_gas_1936"
  %"$consume_1943" = sub i64 %"$gasrem_1939", 1
  store i64 %"$consume_1943", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$have_gas_1942"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$have_gas_1942"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1949", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_1950" = alloca %String, align 8
  %"$s_1951" = load %String, %String* %s, align 8
  store %String %"$s_1951", %String* %"$_literal_cost_s_1950", align 8
  %"$$_literal_cost_s_1950_1952" = bitcast %String* %"$_literal_cost_s_1950" to i8*
  %"$_literal_cost_call_1953" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_50", i8* %"$$_literal_cost_s_1950_1952")
  %"$gasadd_1954" = add i64 %"$_literal_cost_call_1953", 2
  %"$gasrem_1955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1956" = icmp ugt i64 %"$gasadd_1954", %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1947"
  %"$consume_1959" = sub i64 %"$gasrem_1955", %"$gasadd_1954"
  store i64 %"$consume_1959", i64* @_gasrem, align 8
  %"$indices_buf_1960_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1960_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1960_salloc_load", i64 32)
  %"$indices_buf_1960_salloc" = bitcast i8* %"$indices_buf_1960_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1960" = bitcast [32 x i8]* %"$indices_buf_1960_salloc" to i8*
  %"$$key1b_8_1961" = load %String, %String* %"$key1b_8", align 8
  %"$indices_gep_1962" = getelementptr i8, i8* %"$indices_buf_1960", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_1962" to %String*
  store %String %"$$key1b_8_1961", %String* %indices_cast11, align 8
  %"$key2c_1963" = load %String, %String* %key2c, align 8
  %"$indices_gep_1964" = getelementptr i8, i8* %"$indices_buf_1960", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_1964" to %String*
  store %String %"$key2c_1963", %String* %indices_cast12, align 8
  %"$execptr_load_1965" = load i8*, i8** @_execptr, align 8
  %"$s_1967" = load %String, %String* %s, align 8
  %"$update_value_1968" = alloca %String, align 8
  store %String %"$s_1967", %String* %"$update_value_1968", align 8
  %"$update_value_1969" = bitcast %String* %"$update_value_1968" to i8*
  call void @_update_field(i8* %"$execptr_load_1965", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1966", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_1960", i8* %"$update_value_1969")
  ret void
}

define void @t7(i8* %0) {
entry:
  %"$_amount_1971" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1972" = bitcast i8* %"$_amount_1971" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1972", align 8
  %"$_origin_1973" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1974" = bitcast i8* %"$_origin_1973" to [20 x i8]*
  %"$_sender_1975" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1976" = bitcast i8* %"$_sender_1975" to [20 x i8]*
  call void @"$t7_1553"(%Uint128 %_amount, [20 x i8]* %"$_origin_1974", [20 x i8]* %"$_sender_1976")
  ret void
}

define internal void @"$t8_1977"(%Uint128 %_amount, [20 x i8]* %"$_origin_1978", [20 x i8]* %"$_sender_1979") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1978", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1979", align 1
  %"$gasrem_1980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1981" = icmp ugt i64 1, %"$gasrem_1980"
  br i1 %"$gascmp_1981", label %"$out_of_gas_1982", label %"$have_gas_1983"

"$out_of_gas_1982":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1983"

"$have_gas_1983":                                 ; preds = %"$out_of_gas_1982", %entry
  %"$consume_1984" = sub i64 %"$gasrem_1980", 1
  store i64 %"$consume_1984", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$have_gas_1983"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$have_gas_1983"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1990", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1992" = icmp ugt i64 1, %"$gasrem_1991"
  br i1 %"$gascmp_1992", label %"$out_of_gas_1993", label %"$have_gas_1994"

"$out_of_gas_1993":                               ; preds = %"$have_gas_1988"
  call void @_out_of_gas()
  br label %"$have_gas_1994"

"$have_gas_1994":                                 ; preds = %"$out_of_gas_1993", %"$have_gas_1988"
  %"$consume_1995" = sub i64 %"$gasrem_1991", 1
  store i64 %"$consume_1995", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1997" = icmp ugt i64 1, %"$gasrem_1996"
  br i1 %"$gascmp_1997", label %"$out_of_gas_1998", label %"$have_gas_1999"

"$out_of_gas_1998":                               ; preds = %"$have_gas_1994"
  call void @_out_of_gas()
  br label %"$have_gas_1999"

"$have_gas_1999":                                 ; preds = %"$out_of_gas_1998", %"$have_gas_1994"
  %"$consume_2000" = sub i64 %"$gasrem_1996", 1
  store i64 %"$consume_2000", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2001", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2003" = icmp ugt i64 1, %"$gasrem_2002"
  br i1 %"$gascmp_2003", label %"$out_of_gas_2004", label %"$have_gas_2005"

"$out_of_gas_2004":                               ; preds = %"$have_gas_1999"
  call void @_out_of_gas()
  br label %"$have_gas_2005"

"$have_gas_2005":                                 ; preds = %"$out_of_gas_2004", %"$have_gas_1999"
  %"$consume_2006" = sub i64 %"$gasrem_2002", 1
  store i64 %"$consume_2006", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_2007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2008" = icmp ugt i64 1, %"$gasrem_2007"
  br i1 %"$gascmp_2008", label %"$out_of_gas_2009", label %"$have_gas_2010"

"$out_of_gas_2009":                               ; preds = %"$have_gas_2005"
  call void @_out_of_gas()
  br label %"$have_gas_2010"

"$have_gas_2010":                                 ; preds = %"$out_of_gas_2009", %"$have_gas_2005"
  %"$consume_2011" = sub i64 %"$gasrem_2007", 1
  store i64 %"$consume_2011", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2012", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_2013_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2013_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2013_salloc_load", i64 32)
  %"$indices_buf_2013_salloc" = bitcast i8* %"$indices_buf_2013_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2013" = bitcast [32 x i8]* %"$indices_buf_2013_salloc" to i8*
  %"$key1a_2014" = load %String, %String* %key1a, align 8
  %"$indices_gep_2015" = getelementptr i8, i8* %"$indices_buf_2013", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2015" to %String*
  store %String %"$key1a_2014", %String* %indices_cast, align 8
  %"$key2a_2016" = load %String, %String* %key2a, align 8
  %"$indices_gep_2017" = getelementptr i8, i8* %"$indices_buf_2013", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_2017" to %String*
  store %String %"$key2a_2016", %String* %indices_cast1, align 8
  %"$execptr_load_2019" = load i8*, i8** @_execptr, align 8
  %"$c1_call_2020" = call i8* @_fetch_field(i8* %"$execptr_load_2019", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2018", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_2013", i32 1)
  %"$c1_2021" = bitcast i8* %"$c1_call_2020" to %TName_Option_String*
  store %TName_Option_String* %"$c1_2021", %TName_Option_String** %c1, align 8
  %"$c1_2022" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_2022_2023" = bitcast %TName_Option_String* %"$c1_2022" to i8*
  %"$_literal_cost_call_2024" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$c1_2022_2023")
  %"$gasadd_2025" = add i64 %"$_literal_cost_call_2024", 0
  %"$gasadd_2026" = add i64 %"$gasadd_2025", 2
  %"$gasrem_2027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2028" = icmp ugt i64 %"$gasadd_2026", %"$gasrem_2027"
  br i1 %"$gascmp_2028", label %"$out_of_gas_2029", label %"$have_gas_2030"

"$out_of_gas_2029":                               ; preds = %"$have_gas_2010"
  call void @_out_of_gas()
  br label %"$have_gas_2030"

"$have_gas_2030":                                 ; preds = %"$out_of_gas_2029", %"$have_gas_2010"
  %"$consume_2031" = sub i64 %"$gasrem_2027", %"$gasadd_2026"
  store i64 %"$consume_2031", i64* @_gasrem, align 8
  %"$gasrem_2032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2033" = icmp ugt i64 2, %"$gasrem_2032"
  br i1 %"$gascmp_2033", label %"$out_of_gas_2034", label %"$have_gas_2035"

"$out_of_gas_2034":                               ; preds = %"$have_gas_2030"
  call void @_out_of_gas()
  br label %"$have_gas_2035"

"$have_gas_2035":                                 ; preds = %"$out_of_gas_2034", %"$have_gas_2030"
  %"$consume_2036" = sub i64 %"$gasrem_2032", 2
  store i64 %"$consume_2036", i64* @_gasrem, align 8
  %"$c1_2038" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2039" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2038", i32 0, i32 0
  %"$c1_tag_2040" = load i8, i8* %"$c1_tag_2039", align 1
  switch i8 %"$c1_tag_2040", label %"$empty_default_2041" [
    i8 0, label %"$Some_2042"
    i8 1, label %"$None_2101"
  ]

"$Some_2042":                                     ; preds = %"$have_gas_2035"
  %"$c1_2043" = bitcast %TName_Option_String* %"$c1_2038" to %CName_Some_String*
  %"$c_gep_2044" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2043", i32 0, i32 1
  %"$c_load_2045" = load %String, %String* %"$c_gep_2044", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2045", %String* %c, align 8
  %"$gasrem_2046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2047" = icmp ugt i64 1, %"$gasrem_2046"
  br i1 %"$gascmp_2047", label %"$out_of_gas_2048", label %"$have_gas_2049"

"$out_of_gas_2048":                               ; preds = %"$Some_2042"
  call void @_out_of_gas()
  br label %"$have_gas_2049"

"$have_gas_2049":                                 ; preds = %"$out_of_gas_2048", %"$Some_2042"
  %"$consume_2050" = sub i64 %"$gasrem_2046", 1
  store i64 %"$consume_2050", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2052" = icmp ugt i64 1, %"$gasrem_2051"
  br i1 %"$gascmp_2052", label %"$out_of_gas_2053", label %"$have_gas_2054"

"$out_of_gas_2053":                               ; preds = %"$have_gas_2049"
  call void @_out_of_gas()
  br label %"$have_gas_2054"

"$have_gas_2054":                                 ; preds = %"$out_of_gas_2053", %"$have_gas_2049"
  %"$consume_2055" = sub i64 %"$gasrem_2051", 1
  store i64 %"$consume_2055", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2056", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2058" = icmp ugt i64 1, %"$gasrem_2057"
  br i1 %"$gascmp_2058", label %"$out_of_gas_2059", label %"$have_gas_2060"

"$out_of_gas_2059":                               ; preds = %"$have_gas_2054"
  call void @_out_of_gas()
  br label %"$have_gas_2060"

"$have_gas_2060":                                 ; preds = %"$out_of_gas_2059", %"$have_gas_2054"
  %"$consume_2061" = sub i64 %"$gasrem_2057", 1
  store i64 %"$consume_2061", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$execptr_load_2062" = load i8*, i8** @_execptr, align 8
  %"$c_2063" = load %String, %String* %c, align 8
  %"$v_2064" = load %String, %String* %v, align 8
  %"$eq_call_2065" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2062", %String %"$c_2063", %String %"$v_2064")
  store %TName_Bool* %"$eq_call_2065", %TName_Bool** %eq, align 8
  %"$gasrem_2067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2068" = icmp ugt i64 2, %"$gasrem_2067"
  br i1 %"$gascmp_2068", label %"$out_of_gas_2069", label %"$have_gas_2070"

"$out_of_gas_2069":                               ; preds = %"$have_gas_2060"
  call void @_out_of_gas()
  br label %"$have_gas_2070"

"$have_gas_2070":                                 ; preds = %"$out_of_gas_2069", %"$have_gas_2060"
  %"$consume_2071" = sub i64 %"$gasrem_2067", 2
  store i64 %"$consume_2071", i64* @_gasrem, align 8
  %"$eq_2073" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2074" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2073", i32 0, i32 0
  %"$eq_tag_2075" = load i8, i8* %"$eq_tag_2074", align 1
  switch i8 %"$eq_tag_2075", label %"$empty_default_2076" [
    i8 0, label %"$True_2077"
    i8 1, label %"$False_2079"
  ]

"$True_2077":                                     ; preds = %"$have_gas_2070"
  %"$eq_2078" = bitcast %TName_Bool* %"$eq_2073" to %CName_True*
  br label %"$matchsucc_2072"

"$False_2079":                                    ; preds = %"$have_gas_2070"
  %"$eq_2080" = bitcast %TName_Bool* %"$eq_2073" to %CName_False*
  %"$gasrem_2081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2082" = icmp ugt i64 1, %"$gasrem_2081"
  br i1 %"$gascmp_2082", label %"$out_of_gas_2083", label %"$have_gas_2084"

"$out_of_gas_2083":                               ; preds = %"$False_2079"
  call void @_out_of_gas()
  br label %"$have_gas_2084"

"$have_gas_2084":                                 ; preds = %"$out_of_gas_2083", %"$False_2079"
  %"$consume_2085" = sub i64 %"$gasrem_2081", 1
  store i64 %"$consume_2085", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2087" = icmp ugt i64 1, %"$gasrem_2086"
  br i1 %"$gascmp_2087", label %"$out_of_gas_2088", label %"$have_gas_2089"

"$out_of_gas_2088":                               ; preds = %"$have_gas_2084"
  call void @_out_of_gas()
  br label %"$have_gas_2089"

"$have_gas_2089":                                 ; preds = %"$out_of_gas_2088", %"$have_gas_2084"
  %"$consume_2090" = sub i64 %"$gasrem_2086", 1
  store i64 %"$consume_2090", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2091", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_2092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2093" = icmp ugt i64 1, %"$gasrem_2092"
  br i1 %"$gascmp_2093", label %"$out_of_gas_2094", label %"$have_gas_2095"

"$out_of_gas_2094":                               ; preds = %"$have_gas_2089"
  call void @_out_of_gas()
  br label %"$have_gas_2095"

"$have_gas_2095":                                 ; preds = %"$out_of_gas_2094", %"$have_gas_2089"
  %"$consume_2096" = sub i64 %"$gasrem_2092", 1
  store i64 %"$consume_2096", i64* @_gasrem, align 8
  %"$fail_msg__origin_2097" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2097", align 1
  %"$fail_msg__sender_2098" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2098", align 1
  %"$tname_2099" = load %String, %String* %tname, align 8
  %"$m_2100" = load %String, %String* %m, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2097", [20 x i8]* %"$fail_msg__sender_2098", %String %"$tname_2099", %String %"$m_2100")
  br label %"$matchsucc_2072"

"$empty_default_2076":                            ; preds = %"$have_gas_2070"
  br label %"$matchsucc_2072"

"$matchsucc_2072":                                ; preds = %"$have_gas_2095", %"$True_2077", %"$empty_default_2076"
  br label %"$matchsucc_2037"

"$None_2101":                                     ; preds = %"$have_gas_2035"
  %"$c1_2102" = bitcast %TName_Option_String* %"$c1_2038" to %CName_None_String*
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$None_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$None_2101"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2109" = icmp ugt i64 1, %"$gasrem_2108"
  br i1 %"$gascmp_2109", label %"$out_of_gas_2110", label %"$have_gas_2111"

"$out_of_gas_2110":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2111"

"$have_gas_2111":                                 ; preds = %"$out_of_gas_2110", %"$have_gas_2106"
  %"$consume_2112" = sub i64 %"$gasrem_2108", 1
  store i64 %"$consume_2112", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2113", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_2114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2111"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2111"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem, align 8
  %"$fail_msg__origin_2119" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2119", align 1
  %"$fail_msg__sender_2120" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2120", align 1
  %"$tname_2121" = load %String, %String* %tname, align 8
  %"$m_2122" = load %String, %String* %m2, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2119", [20 x i8]* %"$fail_msg__sender_2120", %String %"$tname_2121", %String %"$m_2122")
  br label %"$matchsucc_2037"

"$empty_default_2041":                            ; preds = %"$have_gas_2035"
  br label %"$matchsucc_2037"

"$matchsucc_2037":                                ; preds = %"$have_gas_2117", %"$matchsucc_2072", %"$empty_default_2041"
  %"$gasrem_2123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2124" = icmp ugt i64 1, %"$gasrem_2123"
  br i1 %"$gascmp_2124", label %"$out_of_gas_2125", label %"$have_gas_2126"

"$out_of_gas_2125":                               ; preds = %"$matchsucc_2037"
  call void @_out_of_gas()
  br label %"$have_gas_2126"

"$have_gas_2126":                                 ; preds = %"$out_of_gas_2125", %"$matchsucc_2037"
  %"$consume_2127" = sub i64 %"$gasrem_2123", 1
  store i64 %"$consume_2127", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_2128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2129" = icmp ugt i64 1, %"$gasrem_2128"
  br i1 %"$gascmp_2129", label %"$out_of_gas_2130", label %"$have_gas_2131"

"$out_of_gas_2130":                               ; preds = %"$have_gas_2126"
  call void @_out_of_gas()
  br label %"$have_gas_2131"

"$have_gas_2131":                                 ; preds = %"$out_of_gas_2130", %"$have_gas_2126"
  %"$consume_2132" = sub i64 %"$gasrem_2128", 1
  store i64 %"$consume_2132", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2133", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_2134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2135" = icmp ugt i64 1, %"$gasrem_2134"
  br i1 %"$gascmp_2135", label %"$out_of_gas_2136", label %"$have_gas_2137"

"$out_of_gas_2136":                               ; preds = %"$have_gas_2131"
  call void @_out_of_gas()
  br label %"$have_gas_2137"

"$have_gas_2137":                                 ; preds = %"$out_of_gas_2136", %"$have_gas_2131"
  %"$consume_2138" = sub i64 %"$gasrem_2134", 1
  store i64 %"$consume_2138", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2140" = icmp ugt i64 1, %"$gasrem_2139"
  br i1 %"$gascmp_2140", label %"$out_of_gas_2141", label %"$have_gas_2142"

"$out_of_gas_2141":                               ; preds = %"$have_gas_2137"
  call void @_out_of_gas()
  br label %"$have_gas_2142"

"$have_gas_2142":                                 ; preds = %"$out_of_gas_2141", %"$have_gas_2137"
  %"$consume_2143" = sub i64 %"$gasrem_2139", 1
  store i64 %"$consume_2143", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2144", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_9" = alloca %TName_Option_String*, align 8
  %"$indices_buf_2145_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2145_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2145_salloc_load", i64 32)
  %"$indices_buf_2145_salloc" = bitcast i8* %"$indices_buf_2145_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2145" = bitcast [32 x i8]* %"$indices_buf_2145_salloc" to i8*
  %"$key1b_2146" = load %String, %String* %key1b, align 8
  %"$indices_gep_2147" = getelementptr i8, i8* %"$indices_buf_2145", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_2147" to %String*
  store %String %"$key1b_2146", %String* %indices_cast3, align 8
  %"$key2c_2148" = load %String, %String* %key2c, align 8
  %"$indices_gep_2149" = getelementptr i8, i8* %"$indices_buf_2145", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_2149" to %String*
  store %String %"$key2c_2148", %String* %indices_cast4, align 8
  %"$execptr_load_2151" = load i8*, i8** @_execptr, align 8
  %"$$c1_9_call_2152" = call i8* @_fetch_field(i8* %"$execptr_load_2151", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2150", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_2145", i32 1)
  %"$$c1_9_2153" = bitcast i8* %"$$c1_9_call_2152" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_2153", %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_2154" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$$c1_9_2154_2155" = bitcast %TName_Option_String* %"$$c1_9_2154" to i8*
  %"$_literal_cost_call_2156" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$$c1_9_2154_2155")
  %"$gasadd_2157" = add i64 %"$_literal_cost_call_2156", 0
  %"$gasadd_2158" = add i64 %"$gasadd_2157", 2
  %"$gasrem_2159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2160" = icmp ugt i64 %"$gasadd_2158", %"$gasrem_2159"
  br i1 %"$gascmp_2160", label %"$out_of_gas_2161", label %"$have_gas_2162"

"$out_of_gas_2161":                               ; preds = %"$have_gas_2142"
  call void @_out_of_gas()
  br label %"$have_gas_2162"

"$have_gas_2162":                                 ; preds = %"$out_of_gas_2161", %"$have_gas_2142"
  %"$consume_2163" = sub i64 %"$gasrem_2159", %"$gasadd_2158"
  store i64 %"$consume_2163", i64* @_gasrem, align 8
  %"$gasrem_2164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2165" = icmp ugt i64 2, %"$gasrem_2164"
  br i1 %"$gascmp_2165", label %"$out_of_gas_2166", label %"$have_gas_2167"

"$out_of_gas_2166":                               ; preds = %"$have_gas_2162"
  call void @_out_of_gas()
  br label %"$have_gas_2167"

"$have_gas_2167":                                 ; preds = %"$out_of_gas_2166", %"$have_gas_2162"
  %"$consume_2168" = sub i64 %"$gasrem_2164", 2
  store i64 %"$consume_2168", i64* @_gasrem, align 8
  %"$$c1_9_2170" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_tag_2171" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_2170", i32 0, i32 0
  %"$$c1_9_tag_2172" = load i8, i8* %"$$c1_9_tag_2171", align 1
  switch i8 %"$$c1_9_tag_2172", label %"$empty_default_2173" [
    i8 0, label %"$Some_2174"
    i8 1, label %"$None_2233"
  ]

"$Some_2174":                                     ; preds = %"$have_gas_2167"
  %"$$c1_9_2175" = bitcast %TName_Option_String* %"$$c1_9_2170" to %CName_Some_String*
  %"$c_gep_2176" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_2175", i32 0, i32 1
  %"$c_load_2177" = load %String, %String* %"$c_gep_2176", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_2177", %String* %c5, align 8
  %"$gasrem_2178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2179" = icmp ugt i64 1, %"$gasrem_2178"
  br i1 %"$gascmp_2179", label %"$out_of_gas_2180", label %"$have_gas_2181"

"$out_of_gas_2180":                               ; preds = %"$Some_2174"
  call void @_out_of_gas()
  br label %"$have_gas_2181"

"$have_gas_2181":                                 ; preds = %"$out_of_gas_2180", %"$Some_2174"
  %"$consume_2182" = sub i64 %"$gasrem_2178", 1
  store i64 %"$consume_2182", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_2183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2184" = icmp ugt i64 1, %"$gasrem_2183"
  br i1 %"$gascmp_2184", label %"$out_of_gas_2185", label %"$have_gas_2186"

"$out_of_gas_2185":                               ; preds = %"$have_gas_2181"
  call void @_out_of_gas()
  br label %"$have_gas_2186"

"$have_gas_2186":                                 ; preds = %"$out_of_gas_2185", %"$have_gas_2181"
  %"$consume_2187" = sub i64 %"$gasrem_2183", 1
  store i64 %"$consume_2187", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2188", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_2189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2190" = icmp ugt i64 1, %"$gasrem_2189"
  br i1 %"$gascmp_2190", label %"$out_of_gas_2191", label %"$have_gas_2192"

"$out_of_gas_2191":                               ; preds = %"$have_gas_2186"
  call void @_out_of_gas()
  br label %"$have_gas_2192"

"$have_gas_2192":                                 ; preds = %"$out_of_gas_2191", %"$have_gas_2186"
  %"$consume_2193" = sub i64 %"$gasrem_2189", 1
  store i64 %"$consume_2193", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$execptr_load_2194" = load i8*, i8** @_execptr, align 8
  %"$c_2195" = load %String, %String* %c5, align 8
  %"$v_2196" = load %String, %String* %v6, align 8
  %"$eq_call_2197" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2194", %String %"$c_2195", %String %"$v_2196")
  store %TName_Bool* %"$eq_call_2197", %TName_Bool** %eq7, align 8
  %"$gasrem_2199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2200" = icmp ugt i64 2, %"$gasrem_2199"
  br i1 %"$gascmp_2200", label %"$out_of_gas_2201", label %"$have_gas_2202"

"$out_of_gas_2201":                               ; preds = %"$have_gas_2192"
  call void @_out_of_gas()
  br label %"$have_gas_2202"

"$have_gas_2202":                                 ; preds = %"$out_of_gas_2201", %"$have_gas_2192"
  %"$consume_2203" = sub i64 %"$gasrem_2199", 2
  store i64 %"$consume_2203", i64* @_gasrem, align 8
  %"$eq_2205" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_2206" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2205", i32 0, i32 0
  %"$eq_tag_2207" = load i8, i8* %"$eq_tag_2206", align 1
  switch i8 %"$eq_tag_2207", label %"$empty_default_2208" [
    i8 0, label %"$True_2209"
    i8 1, label %"$False_2211"
  ]

"$True_2209":                                     ; preds = %"$have_gas_2202"
  %"$eq_2210" = bitcast %TName_Bool* %"$eq_2205" to %CName_True*
  br label %"$matchsucc_2204"

"$False_2211":                                    ; preds = %"$have_gas_2202"
  %"$eq_2212" = bitcast %TName_Bool* %"$eq_2205" to %CName_False*
  %"$gasrem_2213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2214" = icmp ugt i64 1, %"$gasrem_2213"
  br i1 %"$gascmp_2214", label %"$out_of_gas_2215", label %"$have_gas_2216"

"$out_of_gas_2215":                               ; preds = %"$False_2211"
  call void @_out_of_gas()
  br label %"$have_gas_2216"

"$have_gas_2216":                                 ; preds = %"$out_of_gas_2215", %"$False_2211"
  %"$consume_2217" = sub i64 %"$gasrem_2213", 1
  store i64 %"$consume_2217", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_2218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2219" = icmp ugt i64 1, %"$gasrem_2218"
  br i1 %"$gascmp_2219", label %"$out_of_gas_2220", label %"$have_gas_2221"

"$out_of_gas_2220":                               ; preds = %"$have_gas_2216"
  call void @_out_of_gas()
  br label %"$have_gas_2221"

"$have_gas_2221":                                 ; preds = %"$out_of_gas_2220", %"$have_gas_2216"
  %"$consume_2222" = sub i64 %"$gasrem_2218", 1
  store i64 %"$consume_2222", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2223", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_2224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2225" = icmp ugt i64 1, %"$gasrem_2224"
  br i1 %"$gascmp_2225", label %"$out_of_gas_2226", label %"$have_gas_2227"

"$out_of_gas_2226":                               ; preds = %"$have_gas_2221"
  call void @_out_of_gas()
  br label %"$have_gas_2227"

"$have_gas_2227":                                 ; preds = %"$out_of_gas_2226", %"$have_gas_2221"
  %"$consume_2228" = sub i64 %"$gasrem_2224", 1
  store i64 %"$consume_2228", i64* @_gasrem, align 8
  %"$fail_msg__origin_2229" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2229", align 1
  %"$fail_msg__sender_2230" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2230", align 1
  %"$tname_2231" = load %String, %String* %tname, align 8
  %"$m_2232" = load %String, %String* %m8, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2229", [20 x i8]* %"$fail_msg__sender_2230", %String %"$tname_2231", %String %"$m_2232")
  br label %"$matchsucc_2204"

"$empty_default_2208":                            ; preds = %"$have_gas_2202"
  br label %"$matchsucc_2204"

"$matchsucc_2204":                                ; preds = %"$have_gas_2227", %"$True_2209", %"$empty_default_2208"
  br label %"$matchsucc_2169"

"$None_2233":                                     ; preds = %"$have_gas_2167"
  %"$$c1_9_2234" = bitcast %TName_Option_String* %"$$c1_9_2170" to %CName_None_String*
  %"$gasrem_2235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2236" = icmp ugt i64 1, %"$gasrem_2235"
  br i1 %"$gascmp_2236", label %"$out_of_gas_2237", label %"$have_gas_2238"

"$out_of_gas_2237":                               ; preds = %"$None_2233"
  call void @_out_of_gas()
  br label %"$have_gas_2238"

"$have_gas_2238":                                 ; preds = %"$out_of_gas_2237", %"$None_2233"
  %"$consume_2239" = sub i64 %"$gasrem_2235", 1
  store i64 %"$consume_2239", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_2240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2241" = icmp ugt i64 1, %"$gasrem_2240"
  br i1 %"$gascmp_2241", label %"$out_of_gas_2242", label %"$have_gas_2243"

"$out_of_gas_2242":                               ; preds = %"$have_gas_2238"
  call void @_out_of_gas()
  br label %"$have_gas_2243"

"$have_gas_2243":                                 ; preds = %"$out_of_gas_2242", %"$have_gas_2238"
  %"$consume_2244" = sub i64 %"$gasrem_2240", 1
  store i64 %"$consume_2244", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2245", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_2246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2247" = icmp ugt i64 1, %"$gasrem_2246"
  br i1 %"$gascmp_2247", label %"$out_of_gas_2248", label %"$have_gas_2249"

"$out_of_gas_2248":                               ; preds = %"$have_gas_2243"
  call void @_out_of_gas()
  br label %"$have_gas_2249"

"$have_gas_2249":                                 ; preds = %"$out_of_gas_2248", %"$have_gas_2243"
  %"$consume_2250" = sub i64 %"$gasrem_2246", 1
  store i64 %"$consume_2250", i64* @_gasrem, align 8
  %"$fail_msg__origin_2251" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2251", align 1
  %"$fail_msg__sender_2252" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2252", align 1
  %"$tname_2253" = load %String, %String* %tname, align 8
  %"$m_2254" = load %String, %String* %m9, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2251", [20 x i8]* %"$fail_msg__sender_2252", %String %"$tname_2253", %String %"$m_2254")
  br label %"$matchsucc_2169"

"$empty_default_2173":                            ; preds = %"$have_gas_2167"
  br label %"$matchsucc_2169"

"$matchsucc_2169":                                ; preds = %"$have_gas_2249", %"$matchsucc_2204", %"$empty_default_2173"
  %"$gasrem_2255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2256" = icmp ugt i64 1, %"$gasrem_2255"
  br i1 %"$gascmp_2256", label %"$out_of_gas_2257", label %"$have_gas_2258"

"$out_of_gas_2257":                               ; preds = %"$matchsucc_2169"
  call void @_out_of_gas()
  br label %"$have_gas_2258"

"$have_gas_2258":                                 ; preds = %"$out_of_gas_2257", %"$matchsucc_2169"
  %"$consume_2259" = sub i64 %"$gasrem_2255", 1
  store i64 %"$consume_2259", i64* @_gasrem, align 8
  %em = alloca %Map_String_String*, align 8
  %"$gasrem_2260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2261" = icmp ugt i64 1, %"$gasrem_2260"
  br i1 %"$gascmp_2261", label %"$out_of_gas_2262", label %"$have_gas_2263"

"$out_of_gas_2262":                               ; preds = %"$have_gas_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2263"

"$have_gas_2263":                                 ; preds = %"$out_of_gas_2262", %"$have_gas_2258"
  %"$consume_2264" = sub i64 %"$gasrem_2260", 1
  store i64 %"$consume_2264", i64* @_gasrem, align 8
  %"$execptr_load_2265" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2266" = call i8* @_new_empty_map(i8* %"$execptr_load_2265")
  %"$_new_empty_map_2267" = bitcast i8* %"$_new_empty_map_call_2266" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2267", %Map_String_String** %em, align 8
  %"$em_2268" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$$em_2268_2269" = bitcast %Map_String_String* %"$em_2268" to i8*
  %"$_literal_cost_call_2270" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$em_2268_2269")
  %"$gasrem_2271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2272" = icmp ugt i64 %"$_literal_cost_call_2270", %"$gasrem_2271"
  br i1 %"$gascmp_2272", label %"$out_of_gas_2273", label %"$have_gas_2274"

"$out_of_gas_2273":                               ; preds = %"$have_gas_2263"
  call void @_out_of_gas()
  br label %"$have_gas_2274"

"$have_gas_2274":                                 ; preds = %"$out_of_gas_2273", %"$have_gas_2263"
  %"$consume_2275" = sub i64 %"$gasrem_2271", %"$_literal_cost_call_2270"
  store i64 %"$consume_2275", i64* @_gasrem, align 8
  %"$execptr_load_2276" = load i8*, i8** @_execptr, align 8
  %"$em_2278" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$update_value_2279" = bitcast %Map_String_String* %"$em_2278" to i8*
  call void @_update_field(i8* %"$execptr_load_2276", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2277", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_2279")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_2281" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2282" = bitcast i8* %"$_amount_2281" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2282", align 8
  %"$_origin_2283" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2284" = bitcast i8* %"$_origin_2283" to [20 x i8]*
  %"$_sender_2285" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2286" = bitcast i8* %"$_sender_2285" to [20 x i8]*
  call void @"$t8_1977"(%Uint128 %_amount, [20 x i8]* %"$_origin_2284", [20 x i8]* %"$_sender_2286")
  ret void
}

define internal void @"$t9_2287"(%Uint128 %_amount, [20 x i8]* %"$_origin_2288", [20 x i8]* %"$_sender_2289") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2288", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2289", align 1
  %"$gasrem_2290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2291" = icmp ugt i64 1, %"$gasrem_2290"
  br i1 %"$gascmp_2291", label %"$out_of_gas_2292", label %"$have_gas_2293"

"$out_of_gas_2292":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2293"

"$have_gas_2293":                                 ; preds = %"$out_of_gas_2292", %entry
  %"$consume_2294" = sub i64 %"$gasrem_2290", 1
  store i64 %"$consume_2294", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2296" = icmp ugt i64 1, %"$gasrem_2295"
  br i1 %"$gascmp_2296", label %"$out_of_gas_2297", label %"$have_gas_2298"

"$out_of_gas_2297":                               ; preds = %"$have_gas_2293"
  call void @_out_of_gas()
  br label %"$have_gas_2298"

"$have_gas_2298":                                 ; preds = %"$out_of_gas_2297", %"$have_gas_2293"
  %"$consume_2299" = sub i64 %"$gasrem_2295", 1
  store i64 %"$consume_2299", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2300", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2302" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2303" = call i8* @_fetch_field(i8* %"$execptr_load_2302", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2301", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_2304" = bitcast i8* %"$m1_call_2303" to %Map_String_String*
  store %Map_String_String* %"$m1_2304", %Map_String_String** %m1, align 8
  %"$m1_2305" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2305_2306" = bitcast %Map_String_String* %"$m1_2305" to i8*
  %"$_literal_cost_call_2307" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_2305_2306")
  %"$m1_2308" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2308_2309" = bitcast %Map_String_String* %"$m1_2308" to i8*
  %"$_mapsortcost_call_2310" = call i64 @_mapsortcost(i8* %"$$m1_2308_2309")
  %"$gasadd_2311" = add i64 %"$_literal_cost_call_2307", %"$_mapsortcost_call_2310"
  %"$gasrem_2312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2313" = icmp ugt i64 %"$gasadd_2311", %"$gasrem_2312"
  br i1 %"$gascmp_2313", label %"$out_of_gas_2314", label %"$have_gas_2315"

"$out_of_gas_2314":                               ; preds = %"$have_gas_2298"
  call void @_out_of_gas()
  br label %"$have_gas_2315"

"$have_gas_2315":                                 ; preds = %"$out_of_gas_2314", %"$have_gas_2298"
  %"$consume_2316" = sub i64 %"$gasrem_2312", %"$gasadd_2311"
  store i64 %"$consume_2316", i64* @_gasrem, align 8
  %"$gasrem_2317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2318" = icmp ugt i64 1, %"$gasrem_2317"
  br i1 %"$gascmp_2318", label %"$out_of_gas_2319", label %"$have_gas_2320"

"$out_of_gas_2319":                               ; preds = %"$have_gas_2315"
  call void @_out_of_gas()
  br label %"$have_gas_2320"

"$have_gas_2320":                                 ; preds = %"$out_of_gas_2319", %"$have_gas_2315"
  %"$consume_2321" = sub i64 %"$gasrem_2317", 1
  store i64 %"$consume_2321", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$m1_2322" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2322_2323" = bitcast %Map_String_String* %"$m1_2322" to i8*
  %"$size_call_2324" = call %Uint32 @_size(i8* %"$$m1_2322_2323")
  store %Uint32 %"$size_call_2324", %Uint32* %m1_size, align 4
  %"$gasrem_2325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2326" = icmp ugt i64 1, %"$gasrem_2325"
  br i1 %"$gascmp_2326", label %"$out_of_gas_2327", label %"$have_gas_2328"

"$out_of_gas_2327":                               ; preds = %"$have_gas_2320"
  call void @_out_of_gas()
  br label %"$have_gas_2328"

"$have_gas_2328":                                 ; preds = %"$out_of_gas_2327", %"$have_gas_2320"
  %"$consume_2329" = sub i64 %"$gasrem_2325", 1
  store i64 %"$consume_2329", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2331" = icmp ugt i64 1, %"$gasrem_2330"
  br i1 %"$gascmp_2331", label %"$out_of_gas_2332", label %"$have_gas_2333"

"$out_of_gas_2332":                               ; preds = %"$have_gas_2328"
  call void @_out_of_gas()
  br label %"$have_gas_2333"

"$have_gas_2333":                                 ; preds = %"$out_of_gas_2332", %"$have_gas_2328"
  %"$consume_2334" = sub i64 %"$gasrem_2330", 1
  store i64 %"$consume_2334", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2336" = icmp ugt i64 1, %"$gasrem_2335"
  br i1 %"$gascmp_2336", label %"$out_of_gas_2337", label %"$have_gas_2338"

"$out_of_gas_2337":                               ; preds = %"$have_gas_2333"
  call void @_out_of_gas()
  br label %"$have_gas_2338"

"$have_gas_2338":                                 ; preds = %"$out_of_gas_2337", %"$have_gas_2333"
  %"$consume_2339" = sub i64 %"$gasrem_2335", 1
  store i64 %"$consume_2339", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$execptr_load_2340" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2341" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2342" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2343" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2340", %Uint32 %"$m1_size_2341", %Uint32 %"$zero_2342")
  store %TName_Bool* %"$eq_call_2343", %TName_Bool** %is_empty, align 8
  %"$gasrem_2345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2346" = icmp ugt i64 2, %"$gasrem_2345"
  br i1 %"$gascmp_2346", label %"$out_of_gas_2347", label %"$have_gas_2348"

"$out_of_gas_2347":                               ; preds = %"$have_gas_2338"
  call void @_out_of_gas()
  br label %"$have_gas_2348"

"$have_gas_2348":                                 ; preds = %"$out_of_gas_2347", %"$have_gas_2338"
  %"$consume_2349" = sub i64 %"$gasrem_2345", 2
  store i64 %"$consume_2349", i64* @_gasrem, align 8
  %"$is_empty_2351" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2352" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2351", i32 0, i32 0
  %"$is_empty_tag_2353" = load i8, i8* %"$is_empty_tag_2352", align 1
  switch i8 %"$is_empty_tag_2353", label %"$empty_default_2354" [
    i8 0, label %"$True_2355"
    i8 1, label %"$False_2357"
  ]

"$True_2355":                                     ; preds = %"$have_gas_2348"
  %"$is_empty_2356" = bitcast %TName_Bool* %"$is_empty_2351" to %CName_True*
  br label %"$matchsucc_2350"

"$False_2357":                                    ; preds = %"$have_gas_2348"
  %"$is_empty_2358" = bitcast %TName_Bool* %"$is_empty_2351" to %CName_False*
  %"$gasrem_2359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2360" = icmp ugt i64 1, %"$gasrem_2359"
  br i1 %"$gascmp_2360", label %"$out_of_gas_2361", label %"$have_gas_2362"

"$out_of_gas_2361":                               ; preds = %"$False_2357"
  call void @_out_of_gas()
  br label %"$have_gas_2362"

"$have_gas_2362":                                 ; preds = %"$out_of_gas_2361", %"$False_2357"
  %"$consume_2363" = sub i64 %"$gasrem_2359", 1
  store i64 %"$consume_2363", i64* @_gasrem, align 8
  %"$fail__origin_2364" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2364", align 1
  %"$fail__sender_2365" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2365", align 1
  %"$tname_2366" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2364", [20 x i8]* %"$fail__sender_2365", %String %"$tname_2366")
  br label %"$matchsucc_2350"

"$empty_default_2354":                            ; preds = %"$have_gas_2348"
  br label %"$matchsucc_2350"

"$matchsucc_2350":                                ; preds = %"$have_gas_2362", %"$True_2355", %"$empty_default_2354"
  %"$gasrem_2367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2368" = icmp ugt i64 1, %"$gasrem_2367"
  br i1 %"$gascmp_2368", label %"$out_of_gas_2369", label %"$have_gas_2370"

"$out_of_gas_2369":                               ; preds = %"$matchsucc_2350"
  call void @_out_of_gas()
  br label %"$have_gas_2370"

"$have_gas_2370":                                 ; preds = %"$out_of_gas_2369", %"$matchsucc_2350"
  %"$consume_2371" = sub i64 %"$gasrem_2367", 1
  store i64 %"$consume_2371", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2373" = icmp ugt i64 1, %"$gasrem_2372"
  br i1 %"$gascmp_2373", label %"$out_of_gas_2374", label %"$have_gas_2375"

"$out_of_gas_2374":                               ; preds = %"$have_gas_2370"
  call void @_out_of_gas()
  br label %"$have_gas_2375"

"$have_gas_2375":                                 ; preds = %"$out_of_gas_2374", %"$have_gas_2370"
  %"$consume_2376" = sub i64 %"$gasrem_2372", 1
  store i64 %"$consume_2376", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2377", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2379" = icmp ugt i64 1, %"$gasrem_2378"
  br i1 %"$gascmp_2379", label %"$out_of_gas_2380", label %"$have_gas_2381"

"$out_of_gas_2380":                               ; preds = %"$have_gas_2375"
  call void @_out_of_gas()
  br label %"$have_gas_2381"

"$have_gas_2381":                                 ; preds = %"$out_of_gas_2380", %"$have_gas_2375"
  %"$consume_2382" = sub i64 %"$gasrem_2378", 1
  store i64 %"$consume_2382", i64* @_gasrem, align 8
  %val = alloca %String, align 8
  %"$gasrem_2383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2384" = icmp ugt i64 1, %"$gasrem_2383"
  br i1 %"$gascmp_2384", label %"$out_of_gas_2385", label %"$have_gas_2386"

"$out_of_gas_2385":                               ; preds = %"$have_gas_2381"
  call void @_out_of_gas()
  br label %"$have_gas_2386"

"$have_gas_2386":                                 ; preds = %"$out_of_gas_2385", %"$have_gas_2381"
  %"$consume_2387" = sub i64 %"$gasrem_2383", 1
  store i64 %"$consume_2387", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2388", i32 0, i32 0), i32 3 }, %String* %val, align 8
  %"$gasrem_2389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2390" = icmp ugt i64 1, %"$gasrem_2389"
  br i1 %"$gascmp_2390", label %"$out_of_gas_2391", label %"$have_gas_2392"

"$out_of_gas_2391":                               ; preds = %"$have_gas_2386"
  call void @_out_of_gas()
  br label %"$have_gas_2392"

"$have_gas_2392":                                 ; preds = %"$out_of_gas_2391", %"$have_gas_2386"
  %"$consume_2393" = sub i64 %"$gasrem_2389", 1
  store i64 %"$consume_2393", i64* @_gasrem, align 8
  %"$m1_10" = alloca %Map_String_String*, align 8
  %"$execptr_load_2394" = load i8*, i8** @_execptr, align 8
  %"$m1_2395" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2395_2396" = bitcast %Map_String_String* %"$m1_2395" to i8*
  %"$put_key1a_2397" = alloca %String, align 8
  %"$key1a_2398" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2398", %String* %"$put_key1a_2397", align 8
  %"$$put_key1a_2397_2399" = bitcast %String* %"$put_key1a_2397" to i8*
  %"$put_val_2400" = alloca %String, align 8
  %"$val_2401" = load %String, %String* %val, align 8
  store %String %"$val_2401", %String* %"$put_val_2400", align 8
  %"$$put_val_2400_2402" = bitcast %String* %"$put_val_2400" to i8*
  %"$put_call_2403" = call i8* @_put(i8* %"$execptr_load_2394", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_2395_2396", i8* %"$$put_key1a_2397_2399", i8* %"$$put_val_2400_2402")
  %"$put_2404" = bitcast i8* %"$put_call_2403" to %Map_String_String*
  store %Map_String_String* %"$put_2404", %Map_String_String** %"$m1_10", align 8
  %"$$m1_10_2405" = load %Map_String_String*, %Map_String_String** %"$m1_10", align 8
  %"$$$m1_10_2405_2406" = bitcast %Map_String_String* %"$$m1_10_2405" to i8*
  %"$_literal_cost_call_2407" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$$m1_10_2405_2406")
  %"$gasrem_2408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2409" = icmp ugt i64 %"$_literal_cost_call_2407", %"$gasrem_2408"
  br i1 %"$gascmp_2409", label %"$out_of_gas_2410", label %"$have_gas_2411"

"$out_of_gas_2410":                               ; preds = %"$have_gas_2392"
  call void @_out_of_gas()
  br label %"$have_gas_2411"

"$have_gas_2411":                                 ; preds = %"$out_of_gas_2410", %"$have_gas_2392"
  %"$consume_2412" = sub i64 %"$gasrem_2408", %"$_literal_cost_call_2407"
  store i64 %"$consume_2412", i64* @_gasrem, align 8
  %"$execptr_load_2413" = load i8*, i8** @_execptr, align 8
  %"$$m1_10_2415" = load %Map_String_String*, %Map_String_String** %"$m1_10", align 8
  %"$update_value_2416" = bitcast %Map_String_String* %"$$m1_10_2415" to i8*
  call void @_update_field(i8* %"$execptr_load_2413", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2414", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_2416")
  ret void
}

declare i64 @_mapsortcost(i8*)

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_2418" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2419" = bitcast i8* %"$_amount_2418" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2419", align 8
  %"$_origin_2420" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2421" = bitcast i8* %"$_origin_2420" to [20 x i8]*
  %"$_sender_2422" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2423" = bitcast i8* %"$_sender_2422" to [20 x i8]*
  call void @"$t9_2287"(%Uint128 %_amount, [20 x i8]* %"$_origin_2421", [20 x i8]* %"$_sender_2423")
  ret void
}

define internal void @"$t10_2424"(%Uint128 %_amount, [20 x i8]* %"$_origin_2425", [20 x i8]* %"$_sender_2426") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2425", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2426", align 1
  %"$gasrem_2427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2428" = icmp ugt i64 1, %"$gasrem_2427"
  br i1 %"$gascmp_2428", label %"$out_of_gas_2429", label %"$have_gas_2430"

"$out_of_gas_2429":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2430"

"$have_gas_2430":                                 ; preds = %"$out_of_gas_2429", %entry
  %"$consume_2431" = sub i64 %"$gasrem_2427", 1
  store i64 %"$consume_2431", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2433" = icmp ugt i64 1, %"$gasrem_2432"
  br i1 %"$gascmp_2433", label %"$out_of_gas_2434", label %"$have_gas_2435"

"$out_of_gas_2434":                               ; preds = %"$have_gas_2430"
  call void @_out_of_gas()
  br label %"$have_gas_2435"

"$have_gas_2435":                                 ; preds = %"$out_of_gas_2434", %"$have_gas_2430"
  %"$consume_2436" = sub i64 %"$gasrem_2432", 1
  store i64 %"$consume_2436", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2437", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_2438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2439" = icmp ugt i64 1, %"$gasrem_2438"
  br i1 %"$gascmp_2439", label %"$out_of_gas_2440", label %"$have_gas_2441"

"$out_of_gas_2440":                               ; preds = %"$have_gas_2435"
  call void @_out_of_gas()
  br label %"$have_gas_2441"

"$have_gas_2441":                                 ; preds = %"$out_of_gas_2440", %"$have_gas_2435"
  %"$consume_2442" = sub i64 %"$gasrem_2438", 1
  store i64 %"$consume_2442", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2444" = icmp ugt i64 1, %"$gasrem_2443"
  br i1 %"$gascmp_2444", label %"$out_of_gas_2445", label %"$have_gas_2446"

"$out_of_gas_2445":                               ; preds = %"$have_gas_2441"
  call void @_out_of_gas()
  br label %"$have_gas_2446"

"$have_gas_2446":                                 ; preds = %"$out_of_gas_2445", %"$have_gas_2441"
  %"$consume_2447" = sub i64 %"$gasrem_2443", 1
  store i64 %"$consume_2447", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2448", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2450" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2451" = call i8* @_fetch_field(i8* %"$execptr_load_2450", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2449", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_2452" = bitcast i8* %"$m1_call_2451" to %Map_String_String*
  store %Map_String_String* %"$m1_2452", %Map_String_String** %m1, align 8
  %"$m1_2453" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2453_2454" = bitcast %Map_String_String* %"$m1_2453" to i8*
  %"$_literal_cost_call_2455" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_2453_2454")
  %"$m1_2456" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2456_2457" = bitcast %Map_String_String* %"$m1_2456" to i8*
  %"$_mapsortcost_call_2458" = call i64 @_mapsortcost(i8* %"$$m1_2456_2457")
  %"$gasadd_2459" = add i64 %"$_literal_cost_call_2455", %"$_mapsortcost_call_2458"
  %"$gasrem_2460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2461" = icmp ugt i64 %"$gasadd_2459", %"$gasrem_2460"
  br i1 %"$gascmp_2461", label %"$out_of_gas_2462", label %"$have_gas_2463"

"$out_of_gas_2462":                               ; preds = %"$have_gas_2446"
  call void @_out_of_gas()
  br label %"$have_gas_2463"

"$have_gas_2463":                                 ; preds = %"$out_of_gas_2462", %"$have_gas_2446"
  %"$consume_2464" = sub i64 %"$gasrem_2460", %"$gasadd_2459"
  store i64 %"$consume_2464", i64* @_gasrem, align 8
  %"$gasrem_2465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2466" = icmp ugt i64 1, %"$gasrem_2465"
  br i1 %"$gascmp_2466", label %"$out_of_gas_2467", label %"$have_gas_2468"

"$out_of_gas_2467":                               ; preds = %"$have_gas_2463"
  call void @_out_of_gas()
  br label %"$have_gas_2468"

"$have_gas_2468":                                 ; preds = %"$out_of_gas_2467", %"$have_gas_2463"
  %"$consume_2469" = sub i64 %"$gasrem_2465", 1
  store i64 %"$consume_2469", i64* @_gasrem, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$execptr_load_2470" = load i8*, i8** @_execptr, align 8
  %"$m1_2471" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2471_2472" = bitcast %Map_String_String* %"$m1_2471" to i8*
  %"$get_key1a_2473" = alloca %String, align 8
  %"$key1a_2474" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2474", %String* %"$get_key1a_2473", align 8
  %"$$get_key1a_2473_2475" = bitcast %String* %"$get_key1a_2473" to i8*
  %"$get_call_2476" = call i8* @_get(i8* %"$execptr_load_2470", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_2471_2472", i8* %"$$get_key1a_2473_2475")
  %"$get_2477" = bitcast i8* %"$get_call_2476" to %TName_Option_String*
  store %TName_Option_String* %"$get_2477", %TName_Option_String** %c1, align 8
  %"$gasrem_2478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2479" = icmp ugt i64 2, %"$gasrem_2478"
  br i1 %"$gascmp_2479", label %"$out_of_gas_2480", label %"$have_gas_2481"

"$out_of_gas_2480":                               ; preds = %"$have_gas_2468"
  call void @_out_of_gas()
  br label %"$have_gas_2481"

"$have_gas_2481":                                 ; preds = %"$out_of_gas_2480", %"$have_gas_2468"
  %"$consume_2482" = sub i64 %"$gasrem_2478", 2
  store i64 %"$consume_2482", i64* @_gasrem, align 8
  %"$c1_2484" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2485" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2484", i32 0, i32 0
  %"$c1_tag_2486" = load i8, i8* %"$c1_tag_2485", align 1
  switch i8 %"$c1_tag_2486", label %"$empty_default_2487" [
    i8 0, label %"$Some_2488"
    i8 1, label %"$None_2547"
  ]

"$Some_2488":                                     ; preds = %"$have_gas_2481"
  %"$c1_2489" = bitcast %TName_Option_String* %"$c1_2484" to %CName_Some_String*
  %"$c_gep_2490" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2489", i32 0, i32 1
  %"$c_load_2491" = load %String, %String* %"$c_gep_2490", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2491", %String* %c, align 8
  %"$gasrem_2492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2493" = icmp ugt i64 1, %"$gasrem_2492"
  br i1 %"$gascmp_2493", label %"$out_of_gas_2494", label %"$have_gas_2495"

"$out_of_gas_2494":                               ; preds = %"$Some_2488"
  call void @_out_of_gas()
  br label %"$have_gas_2495"

"$have_gas_2495":                                 ; preds = %"$out_of_gas_2494", %"$Some_2488"
  %"$consume_2496" = sub i64 %"$gasrem_2492", 1
  store i64 %"$consume_2496", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2498" = icmp ugt i64 1, %"$gasrem_2497"
  br i1 %"$gascmp_2498", label %"$out_of_gas_2499", label %"$have_gas_2500"

"$out_of_gas_2499":                               ; preds = %"$have_gas_2495"
  call void @_out_of_gas()
  br label %"$have_gas_2500"

"$have_gas_2500":                                 ; preds = %"$out_of_gas_2499", %"$have_gas_2495"
  %"$consume_2501" = sub i64 %"$gasrem_2497", 1
  store i64 %"$consume_2501", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2502", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2504" = icmp ugt i64 1, %"$gasrem_2503"
  br i1 %"$gascmp_2504", label %"$out_of_gas_2505", label %"$have_gas_2506"

"$out_of_gas_2505":                               ; preds = %"$have_gas_2500"
  call void @_out_of_gas()
  br label %"$have_gas_2506"

"$have_gas_2506":                                 ; preds = %"$out_of_gas_2505", %"$have_gas_2500"
  %"$consume_2507" = sub i64 %"$gasrem_2503", 1
  store i64 %"$consume_2507", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$execptr_load_2508" = load i8*, i8** @_execptr, align 8
  %"$c_2509" = load %String, %String* %c, align 8
  %"$v_2510" = load %String, %String* %v, align 8
  %"$eq_call_2511" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2508", %String %"$c_2509", %String %"$v_2510")
  store %TName_Bool* %"$eq_call_2511", %TName_Bool** %eq, align 8
  %"$gasrem_2513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2514" = icmp ugt i64 2, %"$gasrem_2513"
  br i1 %"$gascmp_2514", label %"$out_of_gas_2515", label %"$have_gas_2516"

"$out_of_gas_2515":                               ; preds = %"$have_gas_2506"
  call void @_out_of_gas()
  br label %"$have_gas_2516"

"$have_gas_2516":                                 ; preds = %"$out_of_gas_2515", %"$have_gas_2506"
  %"$consume_2517" = sub i64 %"$gasrem_2513", 2
  store i64 %"$consume_2517", i64* @_gasrem, align 8
  %"$eq_2519" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2520" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2519", i32 0, i32 0
  %"$eq_tag_2521" = load i8, i8* %"$eq_tag_2520", align 1
  switch i8 %"$eq_tag_2521", label %"$empty_default_2522" [
    i8 0, label %"$True_2523"
    i8 1, label %"$False_2525"
  ]

"$True_2523":                                     ; preds = %"$have_gas_2516"
  %"$eq_2524" = bitcast %TName_Bool* %"$eq_2519" to %CName_True*
  br label %"$matchsucc_2518"

"$False_2525":                                    ; preds = %"$have_gas_2516"
  %"$eq_2526" = bitcast %TName_Bool* %"$eq_2519" to %CName_False*
  %"$gasrem_2527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2528" = icmp ugt i64 1, %"$gasrem_2527"
  br i1 %"$gascmp_2528", label %"$out_of_gas_2529", label %"$have_gas_2530"

"$out_of_gas_2529":                               ; preds = %"$False_2525"
  call void @_out_of_gas()
  br label %"$have_gas_2530"

"$have_gas_2530":                                 ; preds = %"$out_of_gas_2529", %"$False_2525"
  %"$consume_2531" = sub i64 %"$gasrem_2527", 1
  store i64 %"$consume_2531", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2533" = icmp ugt i64 1, %"$gasrem_2532"
  br i1 %"$gascmp_2533", label %"$out_of_gas_2534", label %"$have_gas_2535"

"$out_of_gas_2534":                               ; preds = %"$have_gas_2530"
  call void @_out_of_gas()
  br label %"$have_gas_2535"

"$have_gas_2535":                                 ; preds = %"$out_of_gas_2534", %"$have_gas_2530"
  %"$consume_2536" = sub i64 %"$gasrem_2532", 1
  store i64 %"$consume_2536", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_2537", i32 0, i32 0), i32 25 }, %String* %m, align 8
  %"$gasrem_2538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2539" = icmp ugt i64 1, %"$gasrem_2538"
  br i1 %"$gascmp_2539", label %"$out_of_gas_2540", label %"$have_gas_2541"

"$out_of_gas_2540":                               ; preds = %"$have_gas_2535"
  call void @_out_of_gas()
  br label %"$have_gas_2541"

"$have_gas_2541":                                 ; preds = %"$out_of_gas_2540", %"$have_gas_2535"
  %"$consume_2542" = sub i64 %"$gasrem_2538", 1
  store i64 %"$consume_2542", i64* @_gasrem, align 8
  %"$fail_msg__origin_2543" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2543", align 1
  %"$fail_msg__sender_2544" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2544", align 1
  %"$tname_2545" = load %String, %String* %tname, align 8
  %"$m_2546" = load %String, %String* %m, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2543", [20 x i8]* %"$fail_msg__sender_2544", %String %"$tname_2545", %String %"$m_2546")
  br label %"$matchsucc_2518"

"$empty_default_2522":                            ; preds = %"$have_gas_2516"
  br label %"$matchsucc_2518"

"$matchsucc_2518":                                ; preds = %"$have_gas_2541", %"$True_2523", %"$empty_default_2522"
  br label %"$matchsucc_2483"

"$None_2547":                                     ; preds = %"$have_gas_2481"
  %"$c1_2548" = bitcast %TName_Option_String* %"$c1_2484" to %CName_None_String*
  %"$gasrem_2549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2550" = icmp ugt i64 1, %"$gasrem_2549"
  br i1 %"$gascmp_2550", label %"$out_of_gas_2551", label %"$have_gas_2552"

"$out_of_gas_2551":                               ; preds = %"$None_2547"
  call void @_out_of_gas()
  br label %"$have_gas_2552"

"$have_gas_2552":                                 ; preds = %"$out_of_gas_2551", %"$None_2547"
  %"$consume_2553" = sub i64 %"$gasrem_2549", 1
  store i64 %"$consume_2553", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2555" = icmp ugt i64 1, %"$gasrem_2554"
  br i1 %"$gascmp_2555", label %"$out_of_gas_2556", label %"$have_gas_2557"

"$out_of_gas_2556":                               ; preds = %"$have_gas_2552"
  call void @_out_of_gas()
  br label %"$have_gas_2557"

"$have_gas_2557":                                 ; preds = %"$out_of_gas_2556", %"$have_gas_2552"
  %"$consume_2558" = sub i64 %"$gasrem_2554", 1
  store i64 %"$consume_2558", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_2559", i32 0, i32 0), i32 15 }, %String* %m2, align 8
  %"$gasrem_2560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2561" = icmp ugt i64 1, %"$gasrem_2560"
  br i1 %"$gascmp_2561", label %"$out_of_gas_2562", label %"$have_gas_2563"

"$out_of_gas_2562":                               ; preds = %"$have_gas_2557"
  call void @_out_of_gas()
  br label %"$have_gas_2563"

"$have_gas_2563":                                 ; preds = %"$out_of_gas_2562", %"$have_gas_2557"
  %"$consume_2564" = sub i64 %"$gasrem_2560", 1
  store i64 %"$consume_2564", i64* @_gasrem, align 8
  %"$fail_msg__origin_2565" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2565", align 1
  %"$fail_msg__sender_2566" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2566", align 1
  %"$tname_2567" = load %String, %String* %tname, align 8
  %"$m_2568" = load %String, %String* %m2, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2565", [20 x i8]* %"$fail_msg__sender_2566", %String %"$tname_2567", %String %"$m_2568")
  br label %"$matchsucc_2483"

"$empty_default_2487":                            ; preds = %"$have_gas_2481"
  br label %"$matchsucc_2483"

"$matchsucc_2483":                                ; preds = %"$have_gas_2563", %"$matchsucc_2518", %"$empty_default_2487"
  %"$gasrem_2569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2570" = icmp ugt i64 1, %"$gasrem_2569"
  br i1 %"$gascmp_2570", label %"$out_of_gas_2571", label %"$have_gas_2572"

"$out_of_gas_2571":                               ; preds = %"$matchsucc_2483"
  call void @_out_of_gas()
  br label %"$have_gas_2572"

"$have_gas_2572":                                 ; preds = %"$out_of_gas_2571", %"$matchsucc_2483"
  %"$consume_2573" = sub i64 %"$gasrem_2569", 1
  store i64 %"$consume_2573", i64* @_gasrem, align 8
  %"$indices_buf_2574_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2574_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2574_salloc_load", i64 16)
  %"$indices_buf_2574_salloc" = bitcast i8* %"$indices_buf_2574_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2574" = bitcast [16 x i8]* %"$indices_buf_2574_salloc" to i8*
  %"$key1a_2575" = load %String, %String* %key1a, align 8
  %"$indices_gep_2576" = getelementptr i8, i8* %"$indices_buf_2574", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2576" to %String*
  store %String %"$key1a_2575", %String* %indices_cast, align 8
  %"$execptr_load_2577" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_2577", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2578", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_2574", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_2580" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2581" = bitcast i8* %"$_amount_2580" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2581", align 8
  %"$_origin_2582" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2583" = bitcast i8* %"$_origin_2582" to [20 x i8]*
  %"$_sender_2584" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2585" = bitcast i8* %"$_sender_2584" to [20 x i8]*
  call void @"$t10_2424"(%Uint128 %_amount, [20 x i8]* %"$_origin_2583", [20 x i8]* %"$_sender_2585")
  ret void
}

define internal void @"$t11_2586"(%Uint128 %_amount, [20 x i8]* %"$_origin_2587", [20 x i8]* %"$_sender_2588") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2587", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2588", align 1
  %"$gasrem_2589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2590" = icmp ugt i64 1, %"$gasrem_2589"
  br i1 %"$gascmp_2590", label %"$out_of_gas_2591", label %"$have_gas_2592"

"$out_of_gas_2591":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2592"

"$have_gas_2592":                                 ; preds = %"$out_of_gas_2591", %entry
  %"$consume_2593" = sub i64 %"$gasrem_2589", 1
  store i64 %"$consume_2593", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2595" = icmp ugt i64 1, %"$gasrem_2594"
  br i1 %"$gascmp_2595", label %"$out_of_gas_2596", label %"$have_gas_2597"

"$out_of_gas_2596":                               ; preds = %"$have_gas_2592"
  call void @_out_of_gas()
  br label %"$have_gas_2597"

"$have_gas_2597":                                 ; preds = %"$out_of_gas_2596", %"$have_gas_2592"
  %"$consume_2598" = sub i64 %"$gasrem_2594", 1
  store i64 %"$consume_2598", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2599", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2601" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2602" = call i8* @_fetch_field(i8* %"$execptr_load_2601", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2600", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i32 1)
  %"$m1_2603" = bitcast i8* %"$m1_call_2602" to %Map_String_String*
  store %Map_String_String* %"$m1_2603", %Map_String_String** %m1, align 8
  %"$m1_2604" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2604_2605" = bitcast %Map_String_String* %"$m1_2604" to i8*
  %"$_literal_cost_call_2606" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_2604_2605")
  %"$m1_2607" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2607_2608" = bitcast %Map_String_String* %"$m1_2607" to i8*
  %"$_mapsortcost_call_2609" = call i64 @_mapsortcost(i8* %"$$m1_2607_2608")
  %"$gasadd_2610" = add i64 %"$_literal_cost_call_2606", %"$_mapsortcost_call_2609"
  %"$gasrem_2611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2612" = icmp ugt i64 %"$gasadd_2610", %"$gasrem_2611"
  br i1 %"$gascmp_2612", label %"$out_of_gas_2613", label %"$have_gas_2614"

"$out_of_gas_2613":                               ; preds = %"$have_gas_2597"
  call void @_out_of_gas()
  br label %"$have_gas_2614"

"$have_gas_2614":                                 ; preds = %"$out_of_gas_2613", %"$have_gas_2597"
  %"$consume_2615" = sub i64 %"$gasrem_2611", %"$gasadd_2610"
  store i64 %"$consume_2615", i64* @_gasrem, align 8
  %"$gasrem_2616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2617" = icmp ugt i64 1, %"$gasrem_2616"
  br i1 %"$gascmp_2617", label %"$out_of_gas_2618", label %"$have_gas_2619"

"$out_of_gas_2618":                               ; preds = %"$have_gas_2614"
  call void @_out_of_gas()
  br label %"$have_gas_2619"

"$have_gas_2619":                                 ; preds = %"$out_of_gas_2618", %"$have_gas_2614"
  %"$consume_2620" = sub i64 %"$gasrem_2616", 1
  store i64 %"$consume_2620", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$m1_2621" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2621_2622" = bitcast %Map_String_String* %"$m1_2621" to i8*
  %"$size_call_2623" = call %Uint32 @_size(i8* %"$$m1_2621_2622")
  store %Uint32 %"$size_call_2623", %Uint32* %m1_size, align 4
  %"$gasrem_2624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2625" = icmp ugt i64 1, %"$gasrem_2624"
  br i1 %"$gascmp_2625", label %"$out_of_gas_2626", label %"$have_gas_2627"

"$out_of_gas_2626":                               ; preds = %"$have_gas_2619"
  call void @_out_of_gas()
  br label %"$have_gas_2627"

"$have_gas_2627":                                 ; preds = %"$out_of_gas_2626", %"$have_gas_2619"
  %"$consume_2628" = sub i64 %"$gasrem_2624", 1
  store i64 %"$consume_2628", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2630" = icmp ugt i64 1, %"$gasrem_2629"
  br i1 %"$gascmp_2630", label %"$out_of_gas_2631", label %"$have_gas_2632"

"$out_of_gas_2631":                               ; preds = %"$have_gas_2627"
  call void @_out_of_gas()
  br label %"$have_gas_2632"

"$have_gas_2632":                                 ; preds = %"$out_of_gas_2631", %"$have_gas_2627"
  %"$consume_2633" = sub i64 %"$gasrem_2629", 1
  store i64 %"$consume_2633", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2635" = icmp ugt i64 1, %"$gasrem_2634"
  br i1 %"$gascmp_2635", label %"$out_of_gas_2636", label %"$have_gas_2637"

"$out_of_gas_2636":                               ; preds = %"$have_gas_2632"
  call void @_out_of_gas()
  br label %"$have_gas_2637"

"$have_gas_2637":                                 ; preds = %"$out_of_gas_2636", %"$have_gas_2632"
  %"$consume_2638" = sub i64 %"$gasrem_2634", 1
  store i64 %"$consume_2638", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$execptr_load_2639" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2640" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2641" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2642" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2639", %Uint32 %"$m1_size_2640", %Uint32 %"$zero_2641")
  store %TName_Bool* %"$eq_call_2642", %TName_Bool** %is_empty, align 8
  %"$gasrem_2644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2645" = icmp ugt i64 2, %"$gasrem_2644"
  br i1 %"$gascmp_2645", label %"$out_of_gas_2646", label %"$have_gas_2647"

"$out_of_gas_2646":                               ; preds = %"$have_gas_2637"
  call void @_out_of_gas()
  br label %"$have_gas_2647"

"$have_gas_2647":                                 ; preds = %"$out_of_gas_2646", %"$have_gas_2637"
  %"$consume_2648" = sub i64 %"$gasrem_2644", 2
  store i64 %"$consume_2648", i64* @_gasrem, align 8
  %"$is_empty_2650" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2651" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2650", i32 0, i32 0
  %"$is_empty_tag_2652" = load i8, i8* %"$is_empty_tag_2651", align 1
  switch i8 %"$is_empty_tag_2652", label %"$empty_default_2653" [
    i8 0, label %"$True_2654"
    i8 1, label %"$False_2656"
  ]

"$True_2654":                                     ; preds = %"$have_gas_2647"
  %"$is_empty_2655" = bitcast %TName_Bool* %"$is_empty_2650" to %CName_True*
  br label %"$matchsucc_2649"

"$False_2656":                                    ; preds = %"$have_gas_2647"
  %"$is_empty_2657" = bitcast %TName_Bool* %"$is_empty_2650" to %CName_False*
  %"$gasrem_2658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2659" = icmp ugt i64 1, %"$gasrem_2658"
  br i1 %"$gascmp_2659", label %"$out_of_gas_2660", label %"$have_gas_2661"

"$out_of_gas_2660":                               ; preds = %"$False_2656"
  call void @_out_of_gas()
  br label %"$have_gas_2661"

"$have_gas_2661":                                 ; preds = %"$out_of_gas_2660", %"$False_2656"
  %"$consume_2662" = sub i64 %"$gasrem_2658", 1
  store i64 %"$consume_2662", i64* @_gasrem, align 8
  %"$fail__origin_2663" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2663", align 1
  %"$fail__sender_2664" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2664", align 1
  %"$tname_2665" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2663", [20 x i8]* %"$fail__sender_2664", %String %"$tname_2665")
  br label %"$matchsucc_2649"

"$empty_default_2653":                            ; preds = %"$have_gas_2647"
  br label %"$matchsucc_2649"

"$matchsucc_2649":                                ; preds = %"$have_gas_2661", %"$True_2654", %"$empty_default_2653"
  %"$gasrem_2666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2667" = icmp ugt i64 1, %"$gasrem_2666"
  br i1 %"$gascmp_2667", label %"$out_of_gas_2668", label %"$have_gas_2669"

"$out_of_gas_2668":                               ; preds = %"$matchsucc_2649"
  call void @_out_of_gas()
  br label %"$have_gas_2669"

"$have_gas_2669":                                 ; preds = %"$out_of_gas_2668", %"$matchsucc_2649"
  %"$consume_2670" = sub i64 %"$gasrem_2666", 1
  store i64 %"$consume_2670", i64* @_gasrem, align 8
  %e2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_2671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2672" = icmp ugt i64 1, %"$gasrem_2671"
  br i1 %"$gascmp_2672", label %"$out_of_gas_2673", label %"$have_gas_2674"

"$out_of_gas_2673":                               ; preds = %"$have_gas_2669"
  call void @_out_of_gas()
  br label %"$have_gas_2674"

"$have_gas_2674":                                 ; preds = %"$out_of_gas_2673", %"$have_gas_2669"
  %"$consume_2675" = sub i64 %"$gasrem_2671", 1
  store i64 %"$consume_2675", i64* @_gasrem, align 8
  %"$execptr_load_2676" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2677" = call i8* @_new_empty_map(i8* %"$execptr_load_2676")
  %"$_new_empty_map_2678" = bitcast i8* %"$_new_empty_map_call_2677" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_2678", %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$e2_2679" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$$e2_2679_2680" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2679" to i8*
  %"$_literal_cost_call_2681" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e2_2679_2680")
  %"$gasrem_2682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2683" = icmp ugt i64 %"$_literal_cost_call_2681", %"$gasrem_2682"
  br i1 %"$gascmp_2683", label %"$out_of_gas_2684", label %"$have_gas_2685"

"$out_of_gas_2684":                               ; preds = %"$have_gas_2674"
  call void @_out_of_gas()
  br label %"$have_gas_2685"

"$have_gas_2685":                                 ; preds = %"$out_of_gas_2684", %"$have_gas_2674"
  %"$consume_2686" = sub i64 %"$gasrem_2682", %"$_literal_cost_call_2681"
  store i64 %"$consume_2686", i64* @_gasrem, align 8
  %"$execptr_load_2687" = load i8*, i8** @_execptr, align 8
  %"$e2_2689" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$update_value_2690" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2689" to i8*
  call void @_update_field(i8* %"$execptr_load_2687", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2688", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_2690")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_2692" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2693" = bitcast i8* %"$_amount_2692" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2693", align 8
  %"$_origin_2694" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2695" = bitcast i8* %"$_origin_2694" to [20 x i8]*
  %"$_sender_2696" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2697" = bitcast i8* %"$_sender_2696" to [20 x i8]*
  call void @"$t11_2586"(%Uint128 %_amount, [20 x i8]* %"$_origin_2695", [20 x i8]* %"$_sender_2697")
  ret void
}

define internal void @"$t12_2698"(%Uint128 %_amount, [20 x i8]* %"$_origin_2699", [20 x i8]* %"$_sender_2700") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2699", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2700", align 1
  %"$gasrem_2701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2702" = icmp ugt i64 1, %"$gasrem_2701"
  br i1 %"$gascmp_2702", label %"$out_of_gas_2703", label %"$have_gas_2704"

"$out_of_gas_2703":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2704"

"$have_gas_2704":                                 ; preds = %"$out_of_gas_2703", %entry
  %"$consume_2705" = sub i64 %"$gasrem_2701", 1
  store i64 %"$consume_2705", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2707" = icmp ugt i64 1, %"$gasrem_2706"
  br i1 %"$gascmp_2707", label %"$out_of_gas_2708", label %"$have_gas_2709"

"$out_of_gas_2708":                               ; preds = %"$have_gas_2704"
  call void @_out_of_gas()
  br label %"$have_gas_2709"

"$have_gas_2709":                                 ; preds = %"$out_of_gas_2708", %"$have_gas_2704"
  %"$consume_2710" = sub i64 %"$gasrem_2706", 1
  store i64 %"$consume_2710", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2711", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_2713" = load i8*, i8** @_execptr, align 8
  %"$m2_call_2714" = call i8* @_fetch_field(i8* %"$execptr_load_2713", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2712", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i32 1)
  %"$m2_2715" = bitcast i8* %"$m2_call_2714" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_2715", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$m2_2716" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2716_2717" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2716" to i8*
  %"$_literal_cost_call_2718" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_2716_2717")
  %"$m2_2719" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2719_2720" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2719" to i8*
  %"$_mapsortcost_call_2721" = call i64 @_mapsortcost(i8* %"$$m2_2719_2720")
  %"$gasadd_2722" = add i64 %"$_literal_cost_call_2718", %"$_mapsortcost_call_2721"
  %"$gasrem_2723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2724" = icmp ugt i64 %"$gasadd_2722", %"$gasrem_2723"
  br i1 %"$gascmp_2724", label %"$out_of_gas_2725", label %"$have_gas_2726"

"$out_of_gas_2725":                               ; preds = %"$have_gas_2709"
  call void @_out_of_gas()
  br label %"$have_gas_2726"

"$have_gas_2726":                                 ; preds = %"$out_of_gas_2725", %"$have_gas_2709"
  %"$consume_2727" = sub i64 %"$gasrem_2723", %"$gasadd_2722"
  store i64 %"$consume_2727", i64* @_gasrem, align 8
  %"$gasrem_2728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2729" = icmp ugt i64 1, %"$gasrem_2728"
  br i1 %"$gascmp_2729", label %"$out_of_gas_2730", label %"$have_gas_2731"

"$out_of_gas_2730":                               ; preds = %"$have_gas_2726"
  call void @_out_of_gas()
  br label %"$have_gas_2731"

"$have_gas_2731":                                 ; preds = %"$out_of_gas_2730", %"$have_gas_2726"
  %"$consume_2732" = sub i64 %"$gasrem_2728", 1
  store i64 %"$consume_2732", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$m2_2733" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2733_2734" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2733" to i8*
  %"$size_call_2735" = call %Uint32 @_size(i8* %"$$m2_2733_2734")
  store %Uint32 %"$size_call_2735", %Uint32* %m2_size, align 4
  %"$gasrem_2736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2737" = icmp ugt i64 1, %"$gasrem_2736"
  br i1 %"$gascmp_2737", label %"$out_of_gas_2738", label %"$have_gas_2739"

"$out_of_gas_2738":                               ; preds = %"$have_gas_2731"
  call void @_out_of_gas()
  br label %"$have_gas_2739"

"$have_gas_2739":                                 ; preds = %"$out_of_gas_2738", %"$have_gas_2731"
  %"$consume_2740" = sub i64 %"$gasrem_2736", 1
  store i64 %"$consume_2740", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2742" = icmp ugt i64 1, %"$gasrem_2741"
  br i1 %"$gascmp_2742", label %"$out_of_gas_2743", label %"$have_gas_2744"

"$out_of_gas_2743":                               ; preds = %"$have_gas_2739"
  call void @_out_of_gas()
  br label %"$have_gas_2744"

"$have_gas_2744":                                 ; preds = %"$out_of_gas_2743", %"$have_gas_2739"
  %"$consume_2745" = sub i64 %"$gasrem_2741", 1
  store i64 %"$consume_2745", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2747" = icmp ugt i64 1, %"$gasrem_2746"
  br i1 %"$gascmp_2747", label %"$out_of_gas_2748", label %"$have_gas_2749"

"$out_of_gas_2748":                               ; preds = %"$have_gas_2744"
  call void @_out_of_gas()
  br label %"$have_gas_2749"

"$have_gas_2749":                                 ; preds = %"$out_of_gas_2748", %"$have_gas_2744"
  %"$consume_2750" = sub i64 %"$gasrem_2746", 1
  store i64 %"$consume_2750", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$execptr_load_2751" = load i8*, i8** @_execptr, align 8
  %"$m2_size_2752" = load %Uint32, %Uint32* %m2_size, align 4
  %"$zero_2753" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2754" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2751", %Uint32 %"$m2_size_2752", %Uint32 %"$zero_2753")
  store %TName_Bool* %"$eq_call_2754", %TName_Bool** %is_empty, align 8
  %"$gasrem_2756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2757" = icmp ugt i64 2, %"$gasrem_2756"
  br i1 %"$gascmp_2757", label %"$out_of_gas_2758", label %"$have_gas_2759"

"$out_of_gas_2758":                               ; preds = %"$have_gas_2749"
  call void @_out_of_gas()
  br label %"$have_gas_2759"

"$have_gas_2759":                                 ; preds = %"$out_of_gas_2758", %"$have_gas_2749"
  %"$consume_2760" = sub i64 %"$gasrem_2756", 2
  store i64 %"$consume_2760", i64* @_gasrem, align 8
  %"$is_empty_2762" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2763" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2762", i32 0, i32 0
  %"$is_empty_tag_2764" = load i8, i8* %"$is_empty_tag_2763", align 1
  switch i8 %"$is_empty_tag_2764", label %"$empty_default_2765" [
    i8 0, label %"$True_2766"
    i8 1, label %"$False_2768"
  ]

"$True_2766":                                     ; preds = %"$have_gas_2759"
  %"$is_empty_2767" = bitcast %TName_Bool* %"$is_empty_2762" to %CName_True*
  br label %"$matchsucc_2761"

"$False_2768":                                    ; preds = %"$have_gas_2759"
  %"$is_empty_2769" = bitcast %TName_Bool* %"$is_empty_2762" to %CName_False*
  %"$gasrem_2770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2771" = icmp ugt i64 1, %"$gasrem_2770"
  br i1 %"$gascmp_2771", label %"$out_of_gas_2772", label %"$have_gas_2773"

"$out_of_gas_2772":                               ; preds = %"$False_2768"
  call void @_out_of_gas()
  br label %"$have_gas_2773"

"$have_gas_2773":                                 ; preds = %"$out_of_gas_2772", %"$False_2768"
  %"$consume_2774" = sub i64 %"$gasrem_2770", 1
  store i64 %"$consume_2774", i64* @_gasrem, align 8
  %"$fail__origin_2775" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2775", align 1
  %"$fail__sender_2776" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2776", align 1
  %"$tname_2777" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2775", [20 x i8]* %"$fail__sender_2776", %String %"$tname_2777")
  br label %"$matchsucc_2761"

"$empty_default_2765":                            ; preds = %"$have_gas_2759"
  br label %"$matchsucc_2761"

"$matchsucc_2761":                                ; preds = %"$have_gas_2773", %"$True_2766", %"$empty_default_2765"
  %"$gasrem_2778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2779" = icmp ugt i64 1, %"$gasrem_2778"
  br i1 %"$gascmp_2779", label %"$out_of_gas_2780", label %"$have_gas_2781"

"$out_of_gas_2780":                               ; preds = %"$matchsucc_2761"
  call void @_out_of_gas()
  br label %"$have_gas_2781"

"$have_gas_2781":                                 ; preds = %"$out_of_gas_2780", %"$matchsucc_2761"
  %"$consume_2782" = sub i64 %"$gasrem_2778", 1
  store i64 %"$consume_2782", i64* @_gasrem, align 8
  %e1 = alloca %Map_String_String*, align 8
  %"$gasrem_2783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2784" = icmp ugt i64 1, %"$gasrem_2783"
  br i1 %"$gascmp_2784", label %"$out_of_gas_2785", label %"$have_gas_2786"

"$out_of_gas_2785":                               ; preds = %"$have_gas_2781"
  call void @_out_of_gas()
  br label %"$have_gas_2786"

"$have_gas_2786":                                 ; preds = %"$out_of_gas_2785", %"$have_gas_2781"
  %"$consume_2787" = sub i64 %"$gasrem_2783", 1
  store i64 %"$consume_2787", i64* @_gasrem, align 8
  %"$execptr_load_2788" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2789" = call i8* @_new_empty_map(i8* %"$execptr_load_2788")
  %"$_new_empty_map_2790" = bitcast i8* %"$_new_empty_map_call_2789" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2790", %Map_String_String** %e1, align 8
  %"$gasrem_2791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2792" = icmp ugt i64 1, %"$gasrem_2791"
  br i1 %"$gascmp_2792", label %"$out_of_gas_2793", label %"$have_gas_2794"

"$out_of_gas_2793":                               ; preds = %"$have_gas_2786"
  call void @_out_of_gas()
  br label %"$have_gas_2794"

"$have_gas_2794":                                 ; preds = %"$out_of_gas_2793", %"$have_gas_2786"
  %"$consume_2795" = sub i64 %"$gasrem_2791", 1
  store i64 %"$consume_2795", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2797" = icmp ugt i64 1, %"$gasrem_2796"
  br i1 %"$gascmp_2797", label %"$out_of_gas_2798", label %"$have_gas_2799"

"$out_of_gas_2798":                               ; preds = %"$have_gas_2794"
  call void @_out_of_gas()
  br label %"$have_gas_2799"

"$have_gas_2799":                                 ; preds = %"$out_of_gas_2798", %"$have_gas_2794"
  %"$consume_2800" = sub i64 %"$gasrem_2796", 1
  store i64 %"$consume_2800", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2801", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$e1_2802" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$$e1_2802_2803" = bitcast %Map_String_String* %"$e1_2802" to i8*
  %"$_literal_cost_call_2804" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e1_2802_2803")
  %"$gasadd_2805" = add i64 %"$_literal_cost_call_2804", 1
  %"$gasrem_2806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2807" = icmp ugt i64 %"$gasadd_2805", %"$gasrem_2806"
  br i1 %"$gascmp_2807", label %"$out_of_gas_2808", label %"$have_gas_2809"

"$out_of_gas_2808":                               ; preds = %"$have_gas_2799"
  call void @_out_of_gas()
  br label %"$have_gas_2809"

"$have_gas_2809":                                 ; preds = %"$out_of_gas_2808", %"$have_gas_2799"
  %"$consume_2810" = sub i64 %"$gasrem_2806", %"$gasadd_2805"
  store i64 %"$consume_2810", i64* @_gasrem, align 8
  %"$indices_buf_2811_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2811_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2811_salloc_load", i64 16)
  %"$indices_buf_2811_salloc" = bitcast i8* %"$indices_buf_2811_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2811" = bitcast [16 x i8]* %"$indices_buf_2811_salloc" to i8*
  %"$key1a_2812" = load %String, %String* %key1a, align 8
  %"$indices_gep_2813" = getelementptr i8, i8* %"$indices_buf_2811", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2813" to %String*
  store %String %"$key1a_2812", %String* %indices_cast, align 8
  %"$execptr_load_2814" = load i8*, i8** @_execptr, align 8
  %"$e1_2816" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$update_value_2817" = bitcast %Map_String_String* %"$e1_2816" to i8*
  call void @_update_field(i8* %"$execptr_load_2814", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2815", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_2811", i8* %"$update_value_2817")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_2819" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2820" = bitcast i8* %"$_amount_2819" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2820", align 8
  %"$_origin_2821" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2822" = bitcast i8* %"$_origin_2821" to [20 x i8]*
  %"$_sender_2823" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2824" = bitcast i8* %"$_sender_2823" to [20 x i8]*
  call void @"$t12_2698"(%Uint128 %_amount, [20 x i8]* %"$_origin_2822", [20 x i8]* %"$_sender_2824")
  ret void
}

define internal void @"$t13_2825"(%Uint128 %_amount, [20 x i8]* %"$_origin_2826", [20 x i8]* %"$_sender_2827") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2826", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2827", align 1
  %"$gasrem_2828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2829" = icmp ugt i64 1, %"$gasrem_2828"
  br i1 %"$gascmp_2829", label %"$out_of_gas_2830", label %"$have_gas_2831"

"$out_of_gas_2830":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2831"

"$have_gas_2831":                                 ; preds = %"$out_of_gas_2830", %entry
  %"$consume_2832" = sub i64 %"$gasrem_2828", 1
  store i64 %"$consume_2832", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2834" = icmp ugt i64 1, %"$gasrem_2833"
  br i1 %"$gascmp_2834", label %"$out_of_gas_2835", label %"$have_gas_2836"

"$out_of_gas_2835":                               ; preds = %"$have_gas_2831"
  call void @_out_of_gas()
  br label %"$have_gas_2836"

"$have_gas_2836":                                 ; preds = %"$out_of_gas_2835", %"$have_gas_2831"
  %"$consume_2837" = sub i64 %"$gasrem_2833", 1
  store i64 %"$consume_2837", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2838", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_2839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2840" = icmp ugt i64 1, %"$gasrem_2839"
  br i1 %"$gascmp_2840", label %"$out_of_gas_2841", label %"$have_gas_2842"

"$out_of_gas_2841":                               ; preds = %"$have_gas_2836"
  call void @_out_of_gas()
  br label %"$have_gas_2842"

"$have_gas_2842":                                 ; preds = %"$out_of_gas_2841", %"$have_gas_2836"
  %"$consume_2843" = sub i64 %"$gasrem_2839", 1
  store i64 %"$consume_2843", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2845" = icmp ugt i64 1, %"$gasrem_2844"
  br i1 %"$gascmp_2845", label %"$out_of_gas_2846", label %"$have_gas_2847"

"$out_of_gas_2846":                               ; preds = %"$have_gas_2842"
  call void @_out_of_gas()
  br label %"$have_gas_2847"

"$have_gas_2847":                                 ; preds = %"$out_of_gas_2846", %"$have_gas_2842"
  %"$consume_2848" = sub i64 %"$gasrem_2844", 1
  store i64 %"$consume_2848", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2849", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %mo = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_2850_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2850_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2850_salloc_load", i64 16)
  %"$indices_buf_2850_salloc" = bitcast i8* %"$indices_buf_2850_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2850" = bitcast [16 x i8]* %"$indices_buf_2850_salloc" to i8*
  %"$key1a_2851" = load %String, %String* %key1a, align 8
  %"$indices_gep_2852" = getelementptr i8, i8* %"$indices_buf_2850", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2852" to %String*
  store %String %"$key1a_2851", %String* %indices_cast, align 8
  %"$execptr_load_2854" = load i8*, i8** @_execptr, align 8
  %"$mo_call_2855" = call i8* @_fetch_field(i8* %"$execptr_load_2854", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2853", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 1, i8* %"$indices_buf_2850", i32 1)
  %"$mo_2856" = bitcast i8* %"$mo_call_2855" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_2856", %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_2857" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_2857_2858" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_2857" to i8*
  %"$_literal_cost_call_2859" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_67", i8* %"$$mo_2857_2858")
  %"$gasadd_2860" = add i64 %"$_literal_cost_call_2859", 0
  %"$gasadd_2861" = add i64 %"$gasadd_2860", 1
  %"$gasrem_2862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2863" = icmp ugt i64 %"$gasadd_2861", %"$gasrem_2862"
  br i1 %"$gascmp_2863", label %"$out_of_gas_2864", label %"$have_gas_2865"

"$out_of_gas_2864":                               ; preds = %"$have_gas_2847"
  call void @_out_of_gas()
  br label %"$have_gas_2865"

"$have_gas_2865":                                 ; preds = %"$out_of_gas_2864", %"$have_gas_2847"
  %"$consume_2866" = sub i64 %"$gasrem_2862", %"$gasadd_2861"
  store i64 %"$consume_2866", i64* @_gasrem, align 8
  %"$gasrem_2867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2868" = icmp ugt i64 2, %"$gasrem_2867"
  br i1 %"$gascmp_2868", label %"$out_of_gas_2869", label %"$have_gas_2870"

"$out_of_gas_2869":                               ; preds = %"$have_gas_2865"
  call void @_out_of_gas()
  br label %"$have_gas_2870"

"$have_gas_2870":                                 ; preds = %"$out_of_gas_2869", %"$have_gas_2865"
  %"$consume_2871" = sub i64 %"$gasrem_2867", 2
  store i64 %"$consume_2871", i64* @_gasrem, align 8
  %"$mo_2873" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_tag_2874" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_2873", i32 0, i32 0
  %"$mo_tag_2875" = load i8, i8* %"$mo_tag_2874", align 1
  switch i8 %"$mo_tag_2875", label %"$empty_default_2876" [
    i8 0, label %"$Some_2877"
    i8 1, label %"$None_2943"
  ]

"$Some_2877":                                     ; preds = %"$have_gas_2870"
  %"$mo_2878" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_2873" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_2879" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_2878", i32 0, i32 1
  %"$m_load_2880" = load %Map_String_String*, %Map_String_String** %"$m_gep_2879", align 8
  %m = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m_load_2880", %Map_String_String** %m, align 8
  %"$gasrem_2881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2882" = icmp ugt i64 1, %"$gasrem_2881"
  br i1 %"$gascmp_2882", label %"$out_of_gas_2883", label %"$have_gas_2884"

"$out_of_gas_2883":                               ; preds = %"$Some_2877"
  call void @_out_of_gas()
  br label %"$have_gas_2884"

"$have_gas_2884":                                 ; preds = %"$out_of_gas_2883", %"$Some_2877"
  %"$consume_2885" = sub i64 %"$gasrem_2881", 1
  store i64 %"$consume_2885", i64* @_gasrem, align 8
  %m_size = alloca %Uint32, align 8
  %"$m_2886" = load %Map_String_String*, %Map_String_String** %m, align 8
  %"$$m_2886_2887" = bitcast %Map_String_String* %"$m_2886" to i8*
  %"$size_call_2888" = call %Uint32 @_size(i8* %"$$m_2886_2887")
  store %Uint32 %"$size_call_2888", %Uint32* %m_size, align 4
  %"$gasrem_2889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2890" = icmp ugt i64 1, %"$gasrem_2889"
  br i1 %"$gascmp_2890", label %"$out_of_gas_2891", label %"$have_gas_2892"

"$out_of_gas_2891":                               ; preds = %"$have_gas_2884"
  call void @_out_of_gas()
  br label %"$have_gas_2892"

"$have_gas_2892":                                 ; preds = %"$out_of_gas_2891", %"$have_gas_2884"
  %"$consume_2893" = sub i64 %"$gasrem_2889", 1
  store i64 %"$consume_2893", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2895" = icmp ugt i64 1, %"$gasrem_2894"
  br i1 %"$gascmp_2895", label %"$out_of_gas_2896", label %"$have_gas_2897"

"$out_of_gas_2896":                               ; preds = %"$have_gas_2892"
  call void @_out_of_gas()
  br label %"$have_gas_2897"

"$have_gas_2897":                                 ; preds = %"$out_of_gas_2896", %"$have_gas_2892"
  %"$consume_2898" = sub i64 %"$gasrem_2894", 1
  store i64 %"$consume_2898", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2900" = icmp ugt i64 1, %"$gasrem_2899"
  br i1 %"$gascmp_2900", label %"$out_of_gas_2901", label %"$have_gas_2902"

"$out_of_gas_2901":                               ; preds = %"$have_gas_2897"
  call void @_out_of_gas()
  br label %"$have_gas_2902"

"$have_gas_2902":                                 ; preds = %"$out_of_gas_2901", %"$have_gas_2897"
  %"$consume_2903" = sub i64 %"$gasrem_2899", 1
  store i64 %"$consume_2903", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$execptr_load_2904" = load i8*, i8** @_execptr, align 8
  %"$m_size_2905" = load %Uint32, %Uint32* %m_size, align 4
  %"$zero_2906" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2907" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2904", %Uint32 %"$m_size_2905", %Uint32 %"$zero_2906")
  store %TName_Bool* %"$eq_call_2907", %TName_Bool** %is_empty, align 8
  %"$gasrem_2909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2910" = icmp ugt i64 2, %"$gasrem_2909"
  br i1 %"$gascmp_2910", label %"$out_of_gas_2911", label %"$have_gas_2912"

"$out_of_gas_2911":                               ; preds = %"$have_gas_2902"
  call void @_out_of_gas()
  br label %"$have_gas_2912"

"$have_gas_2912":                                 ; preds = %"$out_of_gas_2911", %"$have_gas_2902"
  %"$consume_2913" = sub i64 %"$gasrem_2909", 2
  store i64 %"$consume_2913", i64* @_gasrem, align 8
  %"$is_empty_2915" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2916" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2915", i32 0, i32 0
  %"$is_empty_tag_2917" = load i8, i8* %"$is_empty_tag_2916", align 1
  switch i8 %"$is_empty_tag_2917", label %"$empty_default_2918" [
    i8 0, label %"$True_2919"
    i8 1, label %"$False_2921"
  ]

"$True_2919":                                     ; preds = %"$have_gas_2912"
  %"$is_empty_2920" = bitcast %TName_Bool* %"$is_empty_2915" to %CName_True*
  br label %"$matchsucc_2914"

"$False_2921":                                    ; preds = %"$have_gas_2912"
  %"$is_empty_2922" = bitcast %TName_Bool* %"$is_empty_2915" to %CName_False*
  %"$gasrem_2923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2924" = icmp ugt i64 1, %"$gasrem_2923"
  br i1 %"$gascmp_2924", label %"$out_of_gas_2925", label %"$have_gas_2926"

"$out_of_gas_2925":                               ; preds = %"$False_2921"
  call void @_out_of_gas()
  br label %"$have_gas_2926"

"$have_gas_2926":                                 ; preds = %"$out_of_gas_2925", %"$False_2921"
  %"$consume_2927" = sub i64 %"$gasrem_2923", 1
  store i64 %"$consume_2927", i64* @_gasrem, align 8
  %msg = alloca %String, align 8
  %"$gasrem_2928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2929" = icmp ugt i64 1, %"$gasrem_2928"
  br i1 %"$gascmp_2929", label %"$out_of_gas_2930", label %"$have_gas_2931"

"$out_of_gas_2930":                               ; preds = %"$have_gas_2926"
  call void @_out_of_gas()
  br label %"$have_gas_2931"

"$have_gas_2931":                                 ; preds = %"$out_of_gas_2930", %"$have_gas_2926"
  %"$consume_2932" = sub i64 %"$gasrem_2928", 1
  store i64 %"$consume_2932", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_2933", i32 0, i32 0), i32 29 }, %String* %msg, align 8
  %"$gasrem_2934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2935" = icmp ugt i64 1, %"$gasrem_2934"
  br i1 %"$gascmp_2935", label %"$out_of_gas_2936", label %"$have_gas_2937"

"$out_of_gas_2936":                               ; preds = %"$have_gas_2931"
  call void @_out_of_gas()
  br label %"$have_gas_2937"

"$have_gas_2937":                                 ; preds = %"$out_of_gas_2936", %"$have_gas_2931"
  %"$consume_2938" = sub i64 %"$gasrem_2934", 1
  store i64 %"$consume_2938", i64* @_gasrem, align 8
  %"$fail_msg__origin_2939" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2939", align 1
  %"$fail_msg__sender_2940" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2940", align 1
  %"$tname_2941" = load %String, %String* %tname, align 8
  %"$msg_2942" = load %String, %String* %msg, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2939", [20 x i8]* %"$fail_msg__sender_2940", %String %"$tname_2941", %String %"$msg_2942")
  br label %"$matchsucc_2914"

"$empty_default_2918":                            ; preds = %"$have_gas_2912"
  br label %"$matchsucc_2914"

"$matchsucc_2914":                                ; preds = %"$have_gas_2937", %"$True_2919", %"$empty_default_2918"
  br label %"$matchsucc_2872"

"$None_2943":                                     ; preds = %"$have_gas_2870"
  %"$mo_2944" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_2873" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_2945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2946" = icmp ugt i64 1, %"$gasrem_2945"
  br i1 %"$gascmp_2946", label %"$out_of_gas_2947", label %"$have_gas_2948"

"$out_of_gas_2947":                               ; preds = %"$None_2943"
  call void @_out_of_gas()
  br label %"$have_gas_2948"

"$have_gas_2948":                                 ; preds = %"$out_of_gas_2947", %"$None_2943"
  %"$consume_2949" = sub i64 %"$gasrem_2945", 1
  store i64 %"$consume_2949", i64* @_gasrem, align 8
  %"$fail__origin_2950" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2950", align 1
  %"$fail__sender_2951" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2951", align 1
  %"$tname_2952" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2950", [20 x i8]* %"$fail__sender_2951", %String %"$tname_2952")
  br label %"$matchsucc_2872"

"$empty_default_2876":                            ; preds = %"$have_gas_2870"
  br label %"$matchsucc_2872"

"$matchsucc_2872":                                ; preds = %"$have_gas_2948", %"$matchsucc_2914", %"$empty_default_2876"
  %"$gasrem_2953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2954" = icmp ugt i64 1, %"$gasrem_2953"
  br i1 %"$gascmp_2954", label %"$out_of_gas_2955", label %"$have_gas_2956"

"$out_of_gas_2955":                               ; preds = %"$matchsucc_2872"
  call void @_out_of_gas()
  br label %"$have_gas_2956"

"$have_gas_2956":                                 ; preds = %"$out_of_gas_2955", %"$matchsucc_2872"
  %"$consume_2957" = sub i64 %"$gasrem_2953", 1
  store i64 %"$consume_2957", i64* @_gasrem, align 8
  %m3 = alloca %Map_String_String*, align 8
  %"$gasrem_2958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2959" = icmp ugt i64 1, %"$gasrem_2958"
  br i1 %"$gascmp_2959", label %"$out_of_gas_2960", label %"$have_gas_2961"

"$out_of_gas_2960":                               ; preds = %"$have_gas_2956"
  call void @_out_of_gas()
  br label %"$have_gas_2961"

"$have_gas_2961":                                 ; preds = %"$out_of_gas_2960", %"$have_gas_2956"
  %"$consume_2962" = sub i64 %"$gasrem_2958", 1
  store i64 %"$consume_2962", i64* @_gasrem, align 8
  %"$execptr_load_2963" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2964" = call i8* @_new_empty_map(i8* %"$execptr_load_2963")
  %"$_new_empty_map_2965" = bitcast i8* %"$_new_empty_map_call_2964" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2965", %Map_String_String** %m3, align 8
  %"$gasrem_2966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2967" = icmp ugt i64 1, %"$gasrem_2966"
  br i1 %"$gascmp_2967", label %"$out_of_gas_2968", label %"$have_gas_2969"

"$out_of_gas_2968":                               ; preds = %"$have_gas_2961"
  call void @_out_of_gas()
  br label %"$have_gas_2969"

"$have_gas_2969":                                 ; preds = %"$out_of_gas_2968", %"$have_gas_2961"
  %"$consume_2970" = sub i64 %"$gasrem_2966", 1
  store i64 %"$consume_2970", i64* @_gasrem, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_2971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2972" = icmp ugt i64 1, %"$gasrem_2971"
  br i1 %"$gascmp_2972", label %"$out_of_gas_2973", label %"$have_gas_2974"

"$out_of_gas_2973":                               ; preds = %"$have_gas_2969"
  call void @_out_of_gas()
  br label %"$have_gas_2974"

"$have_gas_2974":                                 ; preds = %"$out_of_gas_2973", %"$have_gas_2969"
  %"$consume_2975" = sub i64 %"$gasrem_2971", 1
  store i64 %"$consume_2975", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_2976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2977" = icmp ugt i64 1, %"$gasrem_2976"
  br i1 %"$gascmp_2977", label %"$out_of_gas_2978", label %"$have_gas_2979"

"$out_of_gas_2978":                               ; preds = %"$have_gas_2974"
  call void @_out_of_gas()
  br label %"$have_gas_2979"

"$have_gas_2979":                                 ; preds = %"$out_of_gas_2978", %"$have_gas_2974"
  %"$consume_2980" = sub i64 %"$gasrem_2976", 1
  store i64 %"$consume_2980", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2981", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_2982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2983" = icmp ugt i64 1, %"$gasrem_2982"
  br i1 %"$gascmp_2983", label %"$out_of_gas_2984", label %"$have_gas_2985"

"$out_of_gas_2984":                               ; preds = %"$have_gas_2979"
  call void @_out_of_gas()
  br label %"$have_gas_2985"

"$have_gas_2985":                                 ; preds = %"$out_of_gas_2984", %"$have_gas_2979"
  %"$consume_2986" = sub i64 %"$gasrem_2982", 1
  store i64 %"$consume_2986", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_2987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2988" = icmp ugt i64 1, %"$gasrem_2987"
  br i1 %"$gascmp_2988", label %"$out_of_gas_2989", label %"$have_gas_2990"

"$out_of_gas_2989":                               ; preds = %"$have_gas_2985"
  call void @_out_of_gas()
  br label %"$have_gas_2990"

"$have_gas_2990":                                 ; preds = %"$out_of_gas_2989", %"$have_gas_2985"
  %"$consume_2991" = sub i64 %"$gasrem_2987", 1
  store i64 %"$consume_2991", i64* @_gasrem, align 8
  %"$execptr_load_2992" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2993" = call i8* @_new_empty_map(i8* %"$execptr_load_2992")
  %"$_new_empty_map_2994" = bitcast i8* %"$_new_empty_map_call_2993" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_2994", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$execptr_load_2995" = load i8*, i8** @_execptr, align 8
  %"$e_2996" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_2996_2997" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_2996" to i8*
  %"$put_key2a_2998" = alloca %String, align 8
  %"$key2a_2999" = load %String, %String* %key2a, align 8
  store %String %"$key2a_2999", %String* %"$put_key2a_2998", align 8
  %"$$put_key2a_2998_3000" = bitcast %String* %"$put_key2a_2998" to i8*
  %"$m3_3001" = load %Map_String_String*, %Map_String_String** %m3, align 8
  %"$$m3_3001_3002" = bitcast %Map_String_String* %"$m3_3001" to i8*
  %"$put_call_3003" = call i8* @_put(i8* %"$execptr_load_2995", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e_2996_2997", i8* %"$$put_key2a_2998_3000", i8* %"$$m3_3001_3002")
  %"$put_3004" = bitcast i8* %"$put_call_3003" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3004", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3006" = icmp ugt i64 1, %"$gasrem_3005"
  br i1 %"$gascmp_3006", label %"$out_of_gas_3007", label %"$have_gas_3008"

"$out_of_gas_3007":                               ; preds = %"$have_gas_2990"
  call void @_out_of_gas()
  br label %"$have_gas_3008"

"$have_gas_3008":                                 ; preds = %"$out_of_gas_3007", %"$have_gas_2990"
  %"$consume_3009" = sub i64 %"$gasrem_3005", 1
  store i64 %"$consume_3009", i64* @_gasrem, align 8
  %"$m3_12" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3011" = icmp ugt i64 1, %"$gasrem_3010"
  br i1 %"$gascmp_3011", label %"$out_of_gas_3012", label %"$have_gas_3013"

"$out_of_gas_3012":                               ; preds = %"$have_gas_3008"
  call void @_out_of_gas()
  br label %"$have_gas_3013"

"$have_gas_3013":                                 ; preds = %"$out_of_gas_3012", %"$have_gas_3008"
  %"$consume_3014" = sub i64 %"$gasrem_3010", 1
  store i64 %"$consume_3014", i64* @_gasrem, align 8
  %"$e_11" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3016" = icmp ugt i64 1, %"$gasrem_3015"
  br i1 %"$gascmp_3016", label %"$out_of_gas_3017", label %"$have_gas_3018"

"$out_of_gas_3017":                               ; preds = %"$have_gas_3013"
  call void @_out_of_gas()
  br label %"$have_gas_3018"

"$have_gas_3018":                                 ; preds = %"$out_of_gas_3017", %"$have_gas_3013"
  %"$consume_3019" = sub i64 %"$gasrem_3015", 1
  store i64 %"$consume_3019", i64* @_gasrem, align 8
  %"$execptr_load_3020" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3021" = call i8* @_new_empty_map(i8* %"$execptr_load_3020")
  %"$_new_empty_map_3022" = bitcast i8* %"$_new_empty_map_call_3021" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_3022", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11", align 8
  %"$execptr_load_3023" = load i8*, i8** @_execptr, align 8
  %"$$e_11_3024" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11", align 8
  %"$$$e_11_3024_3025" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_11_3024" to i8*
  %"$put_key1a_3026" = alloca %String, align 8
  %"$key1a_3027" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3027", %String* %"$put_key1a_3026", align 8
  %"$$put_key1a_3026_3028" = bitcast %String* %"$put_key1a_3026" to i8*
  %"$m2_3029" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3029_3030" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3029" to i8*
  %"$put_call_3031" = call i8* @_put(i8* %"$execptr_load_3023", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$$e_11_3024_3025", i8* %"$$put_key1a_3026_3028", i8* %"$$m2_3029_3030")
  %"$put_3032" = bitcast i8* %"$put_call_3031" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$put_3032", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12", align 8
  %"$$m3_12_3033" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12", align 8
  %"$$$m3_12_3033_3034" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_12_3033" to i8*
  %"$_literal_cost_call_3035" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$$m3_12_3033_3034")
  %"$gasrem_3036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3037" = icmp ugt i64 %"$_literal_cost_call_3035", %"$gasrem_3036"
  br i1 %"$gascmp_3037", label %"$out_of_gas_3038", label %"$have_gas_3039"

"$out_of_gas_3038":                               ; preds = %"$have_gas_3018"
  call void @_out_of_gas()
  br label %"$have_gas_3039"

"$have_gas_3039":                                 ; preds = %"$out_of_gas_3038", %"$have_gas_3018"
  %"$consume_3040" = sub i64 %"$gasrem_3036", %"$_literal_cost_call_3035"
  store i64 %"$consume_3040", i64* @_gasrem, align 8
  %"$execptr_load_3041" = load i8*, i8** @_execptr, align 8
  %"$$m3_12_3043" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12", align 8
  %"$update_value_3044" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_12_3043" to i8*
  call void @_update_field(i8* %"$execptr_load_3041", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3042", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i8* %"$update_value_3044")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_3046" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3047" = bitcast i8* %"$_amount_3046" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3047", align 8
  %"$_origin_3048" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3049" = bitcast i8* %"$_origin_3048" to [20 x i8]*
  %"$_sender_3050" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3051" = bitcast i8* %"$_sender_3050" to [20 x i8]*
  call void @"$t13_2825"(%Uint128 %_amount, [20 x i8]* %"$_origin_3049", [20 x i8]* %"$_sender_3051")
  ret void
}

define internal void @"$t14_3052"(%Uint128 %_amount, [20 x i8]* %"$_origin_3053", [20 x i8]* %"$_sender_3054") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3053", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3054", align 1
  %"$gasrem_3055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3056" = icmp ugt i64 1, %"$gasrem_3055"
  br i1 %"$gascmp_3056", label %"$out_of_gas_3057", label %"$have_gas_3058"

"$out_of_gas_3057":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3058"

"$have_gas_3058":                                 ; preds = %"$out_of_gas_3057", %entry
  %"$consume_3059" = sub i64 %"$gasrem_3055", 1
  store i64 %"$consume_3059", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3061" = icmp ugt i64 1, %"$gasrem_3060"
  br i1 %"$gascmp_3061", label %"$out_of_gas_3062", label %"$have_gas_3063"

"$out_of_gas_3062":                               ; preds = %"$have_gas_3058"
  call void @_out_of_gas()
  br label %"$have_gas_3063"

"$have_gas_3063":                                 ; preds = %"$out_of_gas_3062", %"$have_gas_3058"
  %"$consume_3064" = sub i64 %"$gasrem_3060", 1
  store i64 %"$consume_3064", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3065", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3067" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3068" = call i8* @_fetch_field(i8* %"$execptr_load_3067", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3066", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m3_3069" = bitcast i8* %"$m3_call_3068" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3069", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3070" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3070_3071" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3070" to i8*
  %"$_literal_cost_call_3072" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m3_3070_3071")
  %"$m3_3073" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3073_3074" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3073" to i8*
  %"$_mapsortcost_call_3075" = call i64 @_mapsortcost(i8* %"$$m3_3073_3074")
  %"$gasadd_3076" = add i64 %"$_literal_cost_call_3072", %"$_mapsortcost_call_3075"
  %"$gasrem_3077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3078" = icmp ugt i64 %"$gasadd_3076", %"$gasrem_3077"
  br i1 %"$gascmp_3078", label %"$out_of_gas_3079", label %"$have_gas_3080"

"$out_of_gas_3079":                               ; preds = %"$have_gas_3063"
  call void @_out_of_gas()
  br label %"$have_gas_3080"

"$have_gas_3080":                                 ; preds = %"$out_of_gas_3079", %"$have_gas_3063"
  %"$consume_3081" = sub i64 %"$gasrem_3077", %"$gasadd_3076"
  store i64 %"$consume_3081", i64* @_gasrem, align 8
  %"$gasrem_3082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3083" = icmp ugt i64 1, %"$gasrem_3082"
  br i1 %"$gascmp_3083", label %"$out_of_gas_3084", label %"$have_gas_3085"

"$out_of_gas_3084":                               ; preds = %"$have_gas_3080"
  call void @_out_of_gas()
  br label %"$have_gas_3085"

"$have_gas_3085":                                 ; preds = %"$out_of_gas_3084", %"$have_gas_3080"
  %"$consume_3086" = sub i64 %"$gasrem_3082", 1
  store i64 %"$consume_3086", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$m3_3087" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3087_3088" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3087" to i8*
  %"$size_call_3089" = call %Uint32 @_size(i8* %"$$m3_3087_3088")
  store %Uint32 %"$size_call_3089", %Uint32* %m3_size, align 4
  %"$gasrem_3090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3091" = icmp ugt i64 1, %"$gasrem_3090"
  br i1 %"$gascmp_3091", label %"$out_of_gas_3092", label %"$have_gas_3093"

"$out_of_gas_3092":                               ; preds = %"$have_gas_3085"
  call void @_out_of_gas()
  br label %"$have_gas_3093"

"$have_gas_3093":                                 ; preds = %"$out_of_gas_3092", %"$have_gas_3085"
  %"$consume_3094" = sub i64 %"$gasrem_3090", 1
  store i64 %"$consume_3094", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3096" = icmp ugt i64 1, %"$gasrem_3095"
  br i1 %"$gascmp_3096", label %"$out_of_gas_3097", label %"$have_gas_3098"

"$out_of_gas_3097":                               ; preds = %"$have_gas_3093"
  call void @_out_of_gas()
  br label %"$have_gas_3098"

"$have_gas_3098":                                 ; preds = %"$out_of_gas_3097", %"$have_gas_3093"
  %"$consume_3099" = sub i64 %"$gasrem_3095", 1
  store i64 %"$consume_3099", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3101" = icmp ugt i64 1, %"$gasrem_3100"
  br i1 %"$gascmp_3101", label %"$out_of_gas_3102", label %"$have_gas_3103"

"$out_of_gas_3102":                               ; preds = %"$have_gas_3098"
  call void @_out_of_gas()
  br label %"$have_gas_3103"

"$have_gas_3103":                                 ; preds = %"$out_of_gas_3102", %"$have_gas_3098"
  %"$consume_3104" = sub i64 %"$gasrem_3100", 1
  store i64 %"$consume_3104", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$execptr_load_3105" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3106" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3107" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3108" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3105", %Uint32 %"$m3_size_3106", %Uint32 %"$one_3107")
  store %TName_Bool* %"$eq_call_3108", %TName_Bool** %is_empty, align 8
  %"$gasrem_3110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3111" = icmp ugt i64 2, %"$gasrem_3110"
  br i1 %"$gascmp_3111", label %"$out_of_gas_3112", label %"$have_gas_3113"

"$out_of_gas_3112":                               ; preds = %"$have_gas_3103"
  call void @_out_of_gas()
  br label %"$have_gas_3113"

"$have_gas_3113":                                 ; preds = %"$out_of_gas_3112", %"$have_gas_3103"
  %"$consume_3114" = sub i64 %"$gasrem_3110", 2
  store i64 %"$consume_3114", i64* @_gasrem, align 8
  %"$is_empty_3116" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3117" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3116", i32 0, i32 0
  %"$is_empty_tag_3118" = load i8, i8* %"$is_empty_tag_3117", align 1
  switch i8 %"$is_empty_tag_3118", label %"$empty_default_3119" [
    i8 0, label %"$True_3120"
    i8 1, label %"$False_3122"
  ]

"$True_3120":                                     ; preds = %"$have_gas_3113"
  %"$is_empty_3121" = bitcast %TName_Bool* %"$is_empty_3116" to %CName_True*
  br label %"$matchsucc_3115"

"$False_3122":                                    ; preds = %"$have_gas_3113"
  %"$is_empty_3123" = bitcast %TName_Bool* %"$is_empty_3116" to %CName_False*
  %"$gasrem_3124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3125" = icmp ugt i64 1, %"$gasrem_3124"
  br i1 %"$gascmp_3125", label %"$out_of_gas_3126", label %"$have_gas_3127"

"$out_of_gas_3126":                               ; preds = %"$False_3122"
  call void @_out_of_gas()
  br label %"$have_gas_3127"

"$have_gas_3127":                                 ; preds = %"$out_of_gas_3126", %"$False_3122"
  %"$consume_3128" = sub i64 %"$gasrem_3124", 1
  store i64 %"$consume_3128", i64* @_gasrem, align 8
  %"$fail__origin_3129" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3129", align 1
  %"$fail__sender_3130" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3130", align 1
  %"$tname_3131" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3129", [20 x i8]* %"$fail__sender_3130", %String %"$tname_3131")
  br label %"$matchsucc_3115"

"$empty_default_3119":                            ; preds = %"$have_gas_3113"
  br label %"$matchsucc_3115"

"$matchsucc_3115":                                ; preds = %"$have_gas_3127", %"$True_3120", %"$empty_default_3119"
  %"$gasrem_3132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3133" = icmp ugt i64 1, %"$gasrem_3132"
  br i1 %"$gascmp_3133", label %"$out_of_gas_3134", label %"$have_gas_3135"

"$out_of_gas_3134":                               ; preds = %"$matchsucc_3115"
  call void @_out_of_gas()
  br label %"$have_gas_3135"

"$have_gas_3135":                                 ; preds = %"$out_of_gas_3134", %"$matchsucc_3115"
  %"$consume_3136" = sub i64 %"$gasrem_3132", 1
  store i64 %"$consume_3136", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3138" = icmp ugt i64 1, %"$gasrem_3137"
  br i1 %"$gascmp_3138", label %"$out_of_gas_3139", label %"$have_gas_3140"

"$out_of_gas_3139":                               ; preds = %"$have_gas_3135"
  call void @_out_of_gas()
  br label %"$have_gas_3140"

"$have_gas_3140":                                 ; preds = %"$out_of_gas_3139", %"$have_gas_3135"
  %"$consume_3141" = sub i64 %"$gasrem_3137", 1
  store i64 %"$consume_3141", i64* @_gasrem, align 8
  %"$execptr_load_3142" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3143" = call i8* @_new_empty_map(i8* %"$execptr_load_3142")
  %"$_new_empty_map_3144" = bitcast i8* %"$_new_empty_map_call_3143" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3144", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3145" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3145_3146" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3145" to i8*
  %"$_literal_cost_call_3147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$e_3145_3146")
  %"$gasrem_3148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3149" = icmp ugt i64 %"$_literal_cost_call_3147", %"$gasrem_3148"
  br i1 %"$gascmp_3149", label %"$out_of_gas_3150", label %"$have_gas_3151"

"$out_of_gas_3150":                               ; preds = %"$have_gas_3140"
  call void @_out_of_gas()
  br label %"$have_gas_3151"

"$have_gas_3151":                                 ; preds = %"$out_of_gas_3150", %"$have_gas_3140"
  %"$consume_3152" = sub i64 %"$gasrem_3148", %"$_literal_cost_call_3147"
  store i64 %"$consume_3152", i64* @_gasrem, align 8
  %"$execptr_load_3153" = load i8*, i8** @_execptr, align 8
  %"$e_3155" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$update_value_3156" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3155" to i8*
  call void @_update_field(i8* %"$execptr_load_3153", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_3154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_3156")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_3158" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3159" = bitcast i8* %"$_amount_3158" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3159", align 8
  %"$_origin_3160" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3161" = bitcast i8* %"$_origin_3160" to [20 x i8]*
  %"$_sender_3162" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3163" = bitcast i8* %"$_sender_3162" to [20 x i8]*
  call void @"$t14_3052"(%Uint128 %_amount, [20 x i8]* %"$_origin_3161", [20 x i8]* %"$_sender_3163")
  ret void
}

define internal void @"$t15_3164"(%Uint128 %_amount, [20 x i8]* %"$_origin_3165", [20 x i8]* %"$_sender_3166") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3165", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3166", align 1
  %"$gasrem_3167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3168" = icmp ugt i64 1, %"$gasrem_3167"
  br i1 %"$gascmp_3168", label %"$out_of_gas_3169", label %"$have_gas_3170"

"$out_of_gas_3169":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3170"

"$have_gas_3170":                                 ; preds = %"$out_of_gas_3169", %entry
  %"$consume_3171" = sub i64 %"$gasrem_3167", 1
  store i64 %"$consume_3171", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3173" = icmp ugt i64 1, %"$gasrem_3172"
  br i1 %"$gascmp_3173", label %"$out_of_gas_3174", label %"$have_gas_3175"

"$out_of_gas_3174":                               ; preds = %"$have_gas_3170"
  call void @_out_of_gas()
  br label %"$have_gas_3175"

"$have_gas_3175":                                 ; preds = %"$out_of_gas_3174", %"$have_gas_3170"
  %"$consume_3176" = sub i64 %"$gasrem_3172", 1
  store i64 %"$consume_3176", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3177", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3179" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3180" = call i8* @_fetch_field(i8* %"$execptr_load_3179", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3178", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_71", i32 0, i8* null, i32 1)
  %"$m3_3181" = bitcast i8* %"$m3_call_3180" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3181", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3182" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3182_3183" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3182" to i8*
  %"$_literal_cost_call_3184" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m3_3182_3183")
  %"$m3_3185" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3185_3186" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3185" to i8*
  %"$_mapsortcost_call_3187" = call i64 @_mapsortcost(i8* %"$$m3_3185_3186")
  %"$gasadd_3188" = add i64 %"$_literal_cost_call_3184", %"$_mapsortcost_call_3187"
  %"$gasrem_3189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3190" = icmp ugt i64 %"$gasadd_3188", %"$gasrem_3189"
  br i1 %"$gascmp_3190", label %"$out_of_gas_3191", label %"$have_gas_3192"

"$out_of_gas_3191":                               ; preds = %"$have_gas_3175"
  call void @_out_of_gas()
  br label %"$have_gas_3192"

"$have_gas_3192":                                 ; preds = %"$out_of_gas_3191", %"$have_gas_3175"
  %"$consume_3193" = sub i64 %"$gasrem_3189", %"$gasadd_3188"
  store i64 %"$consume_3193", i64* @_gasrem, align 8
  %"$gasrem_3194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3195" = icmp ugt i64 1, %"$gasrem_3194"
  br i1 %"$gascmp_3195", label %"$out_of_gas_3196", label %"$have_gas_3197"

"$out_of_gas_3196":                               ; preds = %"$have_gas_3192"
  call void @_out_of_gas()
  br label %"$have_gas_3197"

"$have_gas_3197":                                 ; preds = %"$out_of_gas_3196", %"$have_gas_3192"
  %"$consume_3198" = sub i64 %"$gasrem_3194", 1
  store i64 %"$consume_3198", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$m3_3199" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3199_3200" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3199" to i8*
  %"$size_call_3201" = call %Uint32 @_size(i8* %"$$m3_3199_3200")
  store %Uint32 %"$size_call_3201", %Uint32* %m3_size, align 4
  %"$gasrem_3202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3203" = icmp ugt i64 1, %"$gasrem_3202"
  br i1 %"$gascmp_3203", label %"$out_of_gas_3204", label %"$have_gas_3205"

"$out_of_gas_3204":                               ; preds = %"$have_gas_3197"
  call void @_out_of_gas()
  br label %"$have_gas_3205"

"$have_gas_3205":                                 ; preds = %"$out_of_gas_3204", %"$have_gas_3197"
  %"$consume_3206" = sub i64 %"$gasrem_3202", 1
  store i64 %"$consume_3206", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3208" = icmp ugt i64 1, %"$gasrem_3207"
  br i1 %"$gascmp_3208", label %"$out_of_gas_3209", label %"$have_gas_3210"

"$out_of_gas_3209":                               ; preds = %"$have_gas_3205"
  call void @_out_of_gas()
  br label %"$have_gas_3210"

"$have_gas_3210":                                 ; preds = %"$out_of_gas_3209", %"$have_gas_3205"
  %"$consume_3211" = sub i64 %"$gasrem_3207", 1
  store i64 %"$consume_3211", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3213" = icmp ugt i64 1, %"$gasrem_3212"
  br i1 %"$gascmp_3213", label %"$out_of_gas_3214", label %"$have_gas_3215"

"$out_of_gas_3214":                               ; preds = %"$have_gas_3210"
  call void @_out_of_gas()
  br label %"$have_gas_3215"

"$have_gas_3215":                                 ; preds = %"$out_of_gas_3214", %"$have_gas_3210"
  %"$consume_3216" = sub i64 %"$gasrem_3212", 1
  store i64 %"$consume_3216", i64* @_gasrem, align 8
  %is_one = alloca %TName_Bool*, align 8
  %"$execptr_load_3217" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3218" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3219" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3220" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3217", %Uint32 %"$m3_size_3218", %Uint32 %"$one_3219")
  store %TName_Bool* %"$eq_call_3220", %TName_Bool** %is_one, align 8
  %"$gasrem_3222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3223" = icmp ugt i64 2, %"$gasrem_3222"
  br i1 %"$gascmp_3223", label %"$out_of_gas_3224", label %"$have_gas_3225"

"$out_of_gas_3224":                               ; preds = %"$have_gas_3215"
  call void @_out_of_gas()
  br label %"$have_gas_3225"

"$have_gas_3225":                                 ; preds = %"$out_of_gas_3224", %"$have_gas_3215"
  %"$consume_3226" = sub i64 %"$gasrem_3222", 2
  store i64 %"$consume_3226", i64* @_gasrem, align 8
  %"$is_one_3228" = load %TName_Bool*, %TName_Bool** %is_one, align 8
  %"$is_one_tag_3229" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_3228", i32 0, i32 0
  %"$is_one_tag_3230" = load i8, i8* %"$is_one_tag_3229", align 1
  switch i8 %"$is_one_tag_3230", label %"$empty_default_3231" [
    i8 0, label %"$True_3232"
    i8 1, label %"$False_3234"
  ]

"$True_3232":                                     ; preds = %"$have_gas_3225"
  %"$is_one_3233" = bitcast %TName_Bool* %"$is_one_3228" to %CName_True*
  br label %"$matchsucc_3227"

"$False_3234":                                    ; preds = %"$have_gas_3225"
  %"$is_one_3235" = bitcast %TName_Bool* %"$is_one_3228" to %CName_False*
  %"$gasrem_3236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3237" = icmp ugt i64 1, %"$gasrem_3236"
  br i1 %"$gascmp_3237", label %"$out_of_gas_3238", label %"$have_gas_3239"

"$out_of_gas_3238":                               ; preds = %"$False_3234"
  call void @_out_of_gas()
  br label %"$have_gas_3239"

"$have_gas_3239":                                 ; preds = %"$out_of_gas_3238", %"$False_3234"
  %"$consume_3240" = sub i64 %"$gasrem_3236", 1
  store i64 %"$consume_3240", i64* @_gasrem, align 8
  %err = alloca %String, align 8
  %"$gasrem_3241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3242" = icmp ugt i64 1, %"$gasrem_3241"
  br i1 %"$gascmp_3242", label %"$out_of_gas_3243", label %"$have_gas_3244"

"$out_of_gas_3243":                               ; preds = %"$have_gas_3239"
  call void @_out_of_gas()
  br label %"$have_gas_3244"

"$have_gas_3244":                                 ; preds = %"$out_of_gas_3243", %"$have_gas_3239"
  %"$consume_3245" = sub i64 %"$gasrem_3241", 1
  store i64 %"$consume_3245", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_3246", i32 0, i32 0), i32 22 }, %String* %err, align 8
  %"$gasrem_3247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3248" = icmp ugt i64 1, %"$gasrem_3247"
  br i1 %"$gascmp_3248", label %"$out_of_gas_3249", label %"$have_gas_3250"

"$out_of_gas_3249":                               ; preds = %"$have_gas_3244"
  call void @_out_of_gas()
  br label %"$have_gas_3250"

"$have_gas_3250":                                 ; preds = %"$out_of_gas_3249", %"$have_gas_3244"
  %"$consume_3251" = sub i64 %"$gasrem_3247", 1
  store i64 %"$consume_3251", i64* @_gasrem, align 8
  %"$fail_msg__origin_3252" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3252", align 1
  %"$fail_msg__sender_3253" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3253", align 1
  %"$tname_3254" = load %String, %String* %tname, align 8
  %"$err_3255" = load %String, %String* %err, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3252", [20 x i8]* %"$fail_msg__sender_3253", %String %"$tname_3254", %String %"$err_3255")
  br label %"$matchsucc_3227"

"$empty_default_3231":                            ; preds = %"$have_gas_3225"
  br label %"$matchsucc_3227"

"$matchsucc_3227":                                ; preds = %"$have_gas_3250", %"$True_3232", %"$empty_default_3231"
  %"$gasrem_3256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3257" = icmp ugt i64 1, %"$gasrem_3256"
  br i1 %"$gascmp_3257", label %"$out_of_gas_3258", label %"$have_gas_3259"

"$out_of_gas_3258":                               ; preds = %"$matchsucc_3227"
  call void @_out_of_gas()
  br label %"$have_gas_3259"

"$have_gas_3259":                                 ; preds = %"$out_of_gas_3258", %"$matchsucc_3227"
  %"$consume_3260" = sub i64 %"$gasrem_3256", 1
  store i64 %"$consume_3260", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3262" = icmp ugt i64 1, %"$gasrem_3261"
  br i1 %"$gascmp_3262", label %"$out_of_gas_3263", label %"$have_gas_3264"

"$out_of_gas_3263":                               ; preds = %"$have_gas_3259"
  call void @_out_of_gas()
  br label %"$have_gas_3264"

"$have_gas_3264":                                 ; preds = %"$out_of_gas_3263", %"$have_gas_3259"
  %"$consume_3265" = sub i64 %"$gasrem_3261", 1
  store i64 %"$consume_3265", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3266", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_3267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3268" = icmp ugt i64 1, %"$gasrem_3267"
  br i1 %"$gascmp_3268", label %"$out_of_gas_3269", label %"$have_gas_3270"

"$out_of_gas_3269":                               ; preds = %"$have_gas_3264"
  call void @_out_of_gas()
  br label %"$have_gas_3270"

"$have_gas_3270":                                 ; preds = %"$out_of_gas_3269", %"$have_gas_3264"
  %"$consume_3271" = sub i64 %"$gasrem_3267", 1
  store i64 %"$consume_3271", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3273" = icmp ugt i64 1, %"$gasrem_3272"
  br i1 %"$gascmp_3273", label %"$out_of_gas_3274", label %"$have_gas_3275"

"$out_of_gas_3274":                               ; preds = %"$have_gas_3270"
  call void @_out_of_gas()
  br label %"$have_gas_3275"

"$have_gas_3275":                                 ; preds = %"$out_of_gas_3274", %"$have_gas_3270"
  %"$consume_3276" = sub i64 %"$gasrem_3272", 1
  store i64 %"$consume_3276", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3277", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3279" = icmp ugt i64 1, %"$gasrem_3278"
  br i1 %"$gascmp_3279", label %"$out_of_gas_3280", label %"$have_gas_3281"

"$out_of_gas_3280":                               ; preds = %"$have_gas_3275"
  call void @_out_of_gas()
  br label %"$have_gas_3281"

"$have_gas_3281":                                 ; preds = %"$out_of_gas_3280", %"$have_gas_3275"
  %"$consume_3282" = sub i64 %"$gasrem_3278", 1
  store i64 %"$consume_3282", i64* @_gasrem, align 8
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3283" = load i8*, i8** @_execptr, align 8
  %"$m3_3284" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3284_3285" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3284" to i8*
  %"$get_key1a_3286" = alloca %String, align 8
  %"$key1a_3287" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3287", %String* %"$get_key1a_3286", align 8
  %"$$get_key1a_3286_3288" = bitcast %String* %"$get_key1a_3286" to i8*
  %"$get_call_3289" = call i8* @_get(i8* %"$execptr_load_3283", %_TyDescrTy_Typ* @"$TyDescr_Map_71", i8* %"$$m3_3284_3285", i8* %"$$get_key1a_3286_3288")
  %"$get_3290" = bitcast i8* %"$get_call_3289" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$get_3290", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$gasrem_3291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3292" = icmp ugt i64 2, %"$gasrem_3291"
  br i1 %"$gascmp_3292", label %"$out_of_gas_3293", label %"$have_gas_3294"

"$out_of_gas_3293":                               ; preds = %"$have_gas_3281"
  call void @_out_of_gas()
  br label %"$have_gas_3294"

"$have_gas_3294":                                 ; preds = %"$out_of_gas_3293", %"$have_gas_3281"
  %"$consume_3295" = sub i64 %"$gasrem_3291", 2
  store i64 %"$consume_3295", i64* @_gasrem, align 8
  %"$m2o_3297" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$m2o_tag_3298" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3297", i32 0, i32 0
  %"$m2o_tag_3299" = load i8, i8* %"$m2o_tag_3298", align 1
  switch i8 %"$m2o_tag_3299", label %"$empty_default_3300" [
    i8 0, label %"$Some_3301"
    i8 1, label %"$None_3468"
  ]

"$Some_3301":                                     ; preds = %"$have_gas_3294"
  %"$m2o_3302" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3297" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_3303" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_3302", i32 0, i32 1
  %"$m2_load_3304" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_3303", align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_3304", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3306" = icmp ugt i64 1, %"$gasrem_3305"
  br i1 %"$gascmp_3306", label %"$out_of_gas_3307", label %"$have_gas_3308"

"$out_of_gas_3307":                               ; preds = %"$Some_3301"
  call void @_out_of_gas()
  br label %"$have_gas_3308"

"$have_gas_3308":                                 ; preds = %"$out_of_gas_3307", %"$Some_3301"
  %"$consume_3309" = sub i64 %"$gasrem_3305", 1
  store i64 %"$consume_3309", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$m2_3310" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3310_3311" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3310" to i8*
  %"$size_call_3312" = call %Uint32 @_size(i8* %"$$m2_3310_3311")
  store %Uint32 %"$size_call_3312", %Uint32* %m2_size, align 4
  %"$gasrem_3313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3314" = icmp ugt i64 1, %"$gasrem_3313"
  br i1 %"$gascmp_3314", label %"$out_of_gas_3315", label %"$have_gas_3316"

"$out_of_gas_3315":                               ; preds = %"$have_gas_3308"
  call void @_out_of_gas()
  br label %"$have_gas_3316"

"$have_gas_3316":                                 ; preds = %"$out_of_gas_3315", %"$have_gas_3308"
  %"$consume_3317" = sub i64 %"$gasrem_3313", 1
  store i64 %"$consume_3317", i64* @_gasrem, align 8
  %is_one_1 = alloca %TName_Bool*, align 8
  %"$execptr_load_3318" = load i8*, i8** @_execptr, align 8
  %"$m2_size_3319" = load %Uint32, %Uint32* %m2_size, align 4
  %"$one_3320" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3321" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3318", %Uint32 %"$m2_size_3319", %Uint32 %"$one_3320")
  store %TName_Bool* %"$eq_call_3321", %TName_Bool** %is_one_1, align 8
  %"$gasrem_3323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3324" = icmp ugt i64 2, %"$gasrem_3323"
  br i1 %"$gascmp_3324", label %"$out_of_gas_3325", label %"$have_gas_3326"

"$out_of_gas_3325":                               ; preds = %"$have_gas_3316"
  call void @_out_of_gas()
  br label %"$have_gas_3326"

"$have_gas_3326":                                 ; preds = %"$out_of_gas_3325", %"$have_gas_3316"
  %"$consume_3327" = sub i64 %"$gasrem_3323", 2
  store i64 %"$consume_3327", i64* @_gasrem, align 8
  %"$is_one_1_3329" = load %TName_Bool*, %TName_Bool** %is_one_1, align 8
  %"$is_one_1_tag_3330" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_3329", i32 0, i32 0
  %"$is_one_1_tag_3331" = load i8, i8* %"$is_one_1_tag_3330", align 1
  switch i8 %"$is_one_1_tag_3331", label %"$empty_default_3332" [
    i8 0, label %"$True_3333"
    i8 1, label %"$False_3446"
  ]

"$True_3333":                                     ; preds = %"$have_gas_3326"
  %"$is_one_1_3334" = bitcast %TName_Bool* %"$is_one_1_3329" to %CName_True*
  %"$gasrem_3335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3336" = icmp ugt i64 1, %"$gasrem_3335"
  br i1 %"$gascmp_3336", label %"$out_of_gas_3337", label %"$have_gas_3338"

"$out_of_gas_3337":                               ; preds = %"$True_3333"
  call void @_out_of_gas()
  br label %"$have_gas_3338"

"$have_gas_3338":                                 ; preds = %"$out_of_gas_3337", %"$True_3333"
  %"$consume_3339" = sub i64 %"$gasrem_3335", 1
  store i64 %"$consume_3339", i64* @_gasrem, align 8
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$execptr_load_3340" = load i8*, i8** @_execptr, align 8
  %"$m2_3341" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3341_3342" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3341" to i8*
  %"$get_key2a_3343" = alloca %String, align 8
  %"$key2a_3344" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3344", %String* %"$get_key2a_3343", align 8
  %"$$get_key2a_3343_3345" = bitcast %String* %"$get_key2a_3343" to i8*
  %"$get_call_3346" = call i8* @_get(i8* %"$execptr_load_3340", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_3341_3342", i8* %"$$get_key2a_3343_3345")
  %"$get_3347" = bitcast i8* %"$get_call_3346" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$get_3347", %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$gasrem_3348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3349" = icmp ugt i64 2, %"$gasrem_3348"
  br i1 %"$gascmp_3349", label %"$out_of_gas_3350", label %"$have_gas_3351"

"$out_of_gas_3350":                               ; preds = %"$have_gas_3338"
  call void @_out_of_gas()
  br label %"$have_gas_3351"

"$have_gas_3351":                                 ; preds = %"$out_of_gas_3350", %"$have_gas_3338"
  %"$consume_3352" = sub i64 %"$gasrem_3348", 2
  store i64 %"$consume_3352", i64* @_gasrem, align 8
  %"$m1o_3354" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$m1o_tag_3355" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_3354", i32 0, i32 0
  %"$m1o_tag_3356" = load i8, i8* %"$m1o_tag_3355", align 1
  switch i8 %"$m1o_tag_3356", label %"$empty_default_3357" [
    i8 0, label %"$Some_3358"
    i8 1, label %"$None_3424"
  ]

"$Some_3358":                                     ; preds = %"$have_gas_3351"
  %"$m1o_3359" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3354" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_3360" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_3359", i32 0, i32 1
  %"$m1_load_3361" = load %Map_String_String*, %Map_String_String** %"$m1_gep_3360", align 8
  %m1 = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m1_load_3361", %Map_String_String** %m1, align 8
  %"$gasrem_3362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3363" = icmp ugt i64 1, %"$gasrem_3362"
  br i1 %"$gascmp_3363", label %"$out_of_gas_3364", label %"$have_gas_3365"

"$out_of_gas_3364":                               ; preds = %"$Some_3358"
  call void @_out_of_gas()
  br label %"$have_gas_3365"

"$have_gas_3365":                                 ; preds = %"$out_of_gas_3364", %"$Some_3358"
  %"$consume_3366" = sub i64 %"$gasrem_3362", 1
  store i64 %"$consume_3366", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$m1_3367" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_3367_3368" = bitcast %Map_String_String* %"$m1_3367" to i8*
  %"$size_call_3369" = call %Uint32 @_size(i8* %"$$m1_3367_3368")
  store %Uint32 %"$size_call_3369", %Uint32* %m1_size, align 4
  %"$gasrem_3370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3371" = icmp ugt i64 1, %"$gasrem_3370"
  br i1 %"$gascmp_3371", label %"$out_of_gas_3372", label %"$have_gas_3373"

"$out_of_gas_3372":                               ; preds = %"$have_gas_3365"
  call void @_out_of_gas()
  br label %"$have_gas_3373"

"$have_gas_3373":                                 ; preds = %"$out_of_gas_3372", %"$have_gas_3365"
  %"$consume_3374" = sub i64 %"$gasrem_3370", 1
  store i64 %"$consume_3374", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3376" = icmp ugt i64 1, %"$gasrem_3375"
  br i1 %"$gascmp_3376", label %"$out_of_gas_3377", label %"$have_gas_3378"

"$out_of_gas_3377":                               ; preds = %"$have_gas_3373"
  call void @_out_of_gas()
  br label %"$have_gas_3378"

"$have_gas_3378":                                 ; preds = %"$out_of_gas_3377", %"$have_gas_3373"
  %"$consume_3379" = sub i64 %"$gasrem_3375", 1
  store i64 %"$consume_3379", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3381" = icmp ugt i64 1, %"$gasrem_3380"
  br i1 %"$gascmp_3381", label %"$out_of_gas_3382", label %"$have_gas_3383"

"$out_of_gas_3382":                               ; preds = %"$have_gas_3378"
  call void @_out_of_gas()
  br label %"$have_gas_3383"

"$have_gas_3383":                                 ; preds = %"$out_of_gas_3382", %"$have_gas_3378"
  %"$consume_3384" = sub i64 %"$gasrem_3380", 1
  store i64 %"$consume_3384", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$execptr_load_3385" = load i8*, i8** @_execptr, align 8
  %"$m1_size_3386" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_3387" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3388" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3385", %Uint32 %"$m1_size_3386", %Uint32 %"$zero_3387")
  store %TName_Bool* %"$eq_call_3388", %TName_Bool** %is_empty, align 8
  %"$gasrem_3390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3391" = icmp ugt i64 2, %"$gasrem_3390"
  br i1 %"$gascmp_3391", label %"$out_of_gas_3392", label %"$have_gas_3393"

"$out_of_gas_3392":                               ; preds = %"$have_gas_3383"
  call void @_out_of_gas()
  br label %"$have_gas_3393"

"$have_gas_3393":                                 ; preds = %"$out_of_gas_3392", %"$have_gas_3383"
  %"$consume_3394" = sub i64 %"$gasrem_3390", 2
  store i64 %"$consume_3394", i64* @_gasrem, align 8
  %"$is_empty_3396" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3397" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3396", i32 0, i32 0
  %"$is_empty_tag_3398" = load i8, i8* %"$is_empty_tag_3397", align 1
  switch i8 %"$is_empty_tag_3398", label %"$empty_default_3399" [
    i8 0, label %"$True_3400"
    i8 1, label %"$False_3402"
  ]

"$True_3400":                                     ; preds = %"$have_gas_3393"
  %"$is_empty_3401" = bitcast %TName_Bool* %"$is_empty_3396" to %CName_True*
  br label %"$matchsucc_3395"

"$False_3402":                                    ; preds = %"$have_gas_3393"
  %"$is_empty_3403" = bitcast %TName_Bool* %"$is_empty_3396" to %CName_False*
  %"$gasrem_3404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3405" = icmp ugt i64 1, %"$gasrem_3404"
  br i1 %"$gascmp_3405", label %"$out_of_gas_3406", label %"$have_gas_3407"

"$out_of_gas_3406":                               ; preds = %"$False_3402"
  call void @_out_of_gas()
  br label %"$have_gas_3407"

"$have_gas_3407":                                 ; preds = %"$out_of_gas_3406", %"$False_3402"
  %"$consume_3408" = sub i64 %"$gasrem_3404", 1
  store i64 %"$consume_3408", i64* @_gasrem, align 8
  %err1 = alloca %String, align 8
  %"$gasrem_3409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3410" = icmp ugt i64 1, %"$gasrem_3409"
  br i1 %"$gascmp_3410", label %"$out_of_gas_3411", label %"$have_gas_3412"

"$out_of_gas_3411":                               ; preds = %"$have_gas_3407"
  call void @_out_of_gas()
  br label %"$have_gas_3412"

"$have_gas_3412":                                 ; preds = %"$out_of_gas_3411", %"$have_gas_3407"
  %"$consume_3413" = sub i64 %"$gasrem_3409", 1
  store i64 %"$consume_3413", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_3414", i32 0, i32 0), i32 36 }, %String* %err1, align 8
  %"$gasrem_3415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3416" = icmp ugt i64 1, %"$gasrem_3415"
  br i1 %"$gascmp_3416", label %"$out_of_gas_3417", label %"$have_gas_3418"

"$out_of_gas_3417":                               ; preds = %"$have_gas_3412"
  call void @_out_of_gas()
  br label %"$have_gas_3418"

"$have_gas_3418":                                 ; preds = %"$out_of_gas_3417", %"$have_gas_3412"
  %"$consume_3419" = sub i64 %"$gasrem_3415", 1
  store i64 %"$consume_3419", i64* @_gasrem, align 8
  %"$fail_msg__origin_3420" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3420", align 1
  %"$fail_msg__sender_3421" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3421", align 1
  %"$tname_3422" = load %String, %String* %tname, align 8
  %"$err_3423" = load %String, %String* %err1, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3420", [20 x i8]* %"$fail_msg__sender_3421", %String %"$tname_3422", %String %"$err_3423")
  br label %"$matchsucc_3395"

"$empty_default_3399":                            ; preds = %"$have_gas_3393"
  br label %"$matchsucc_3395"

"$matchsucc_3395":                                ; preds = %"$have_gas_3418", %"$True_3400", %"$empty_default_3399"
  br label %"$matchsucc_3353"

"$None_3424":                                     ; preds = %"$have_gas_3351"
  %"$m1o_3425" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3354" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3427" = icmp ugt i64 1, %"$gasrem_3426"
  br i1 %"$gascmp_3427", label %"$out_of_gas_3428", label %"$have_gas_3429"

"$out_of_gas_3428":                               ; preds = %"$None_3424"
  call void @_out_of_gas()
  br label %"$have_gas_3429"

"$have_gas_3429":                                 ; preds = %"$out_of_gas_3428", %"$None_3424"
  %"$consume_3430" = sub i64 %"$gasrem_3426", 1
  store i64 %"$consume_3430", i64* @_gasrem, align 8
  %err2 = alloca %String, align 8
  %"$gasrem_3431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3432" = icmp ugt i64 1, %"$gasrem_3431"
  br i1 %"$gascmp_3432", label %"$out_of_gas_3433", label %"$have_gas_3434"

"$out_of_gas_3433":                               ; preds = %"$have_gas_3429"
  call void @_out_of_gas()
  br label %"$have_gas_3434"

"$have_gas_3434":                                 ; preds = %"$out_of_gas_3433", %"$have_gas_3429"
  %"$consume_3435" = sub i64 %"$gasrem_3431", 1
  store i64 %"$consume_3435", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3436", i32 0, i32 0), i32 19 }, %String* %err2, align 8
  %"$gasrem_3437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3438" = icmp ugt i64 1, %"$gasrem_3437"
  br i1 %"$gascmp_3438", label %"$out_of_gas_3439", label %"$have_gas_3440"

"$out_of_gas_3439":                               ; preds = %"$have_gas_3434"
  call void @_out_of_gas()
  br label %"$have_gas_3440"

"$have_gas_3440":                                 ; preds = %"$out_of_gas_3439", %"$have_gas_3434"
  %"$consume_3441" = sub i64 %"$gasrem_3437", 1
  store i64 %"$consume_3441", i64* @_gasrem, align 8
  %"$fail_msg__origin_3442" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3442", align 1
  %"$fail_msg__sender_3443" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3443", align 1
  %"$tname_3444" = load %String, %String* %tname, align 8
  %"$err_3445" = load %String, %String* %err2, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3442", [20 x i8]* %"$fail_msg__sender_3443", %String %"$tname_3444", %String %"$err_3445")
  br label %"$matchsucc_3353"

"$empty_default_3357":                            ; preds = %"$have_gas_3351"
  br label %"$matchsucc_3353"

"$matchsucc_3353":                                ; preds = %"$have_gas_3440", %"$matchsucc_3395", %"$empty_default_3357"
  br label %"$matchsucc_3328"

"$False_3446":                                    ; preds = %"$have_gas_3326"
  %"$is_one_1_3447" = bitcast %TName_Bool* %"$is_one_1_3329" to %CName_False*
  %"$gasrem_3448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3449" = icmp ugt i64 1, %"$gasrem_3448"
  br i1 %"$gascmp_3449", label %"$out_of_gas_3450", label %"$have_gas_3451"

"$out_of_gas_3450":                               ; preds = %"$False_3446"
  call void @_out_of_gas()
  br label %"$have_gas_3451"

"$have_gas_3451":                                 ; preds = %"$out_of_gas_3450", %"$False_3446"
  %"$consume_3452" = sub i64 %"$gasrem_3448", 1
  store i64 %"$consume_3452", i64* @_gasrem, align 8
  %err3 = alloca %String, align 8
  %"$gasrem_3453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3454" = icmp ugt i64 1, %"$gasrem_3453"
  br i1 %"$gascmp_3454", label %"$out_of_gas_3455", label %"$have_gas_3456"

"$out_of_gas_3455":                               ; preds = %"$have_gas_3451"
  call void @_out_of_gas()
  br label %"$have_gas_3456"

"$have_gas_3456":                                 ; preds = %"$out_of_gas_3455", %"$have_gas_3451"
  %"$consume_3457" = sub i64 %"$gasrem_3453", 1
  store i64 %"$consume_3457", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_3458", i32 0, i32 0), i32 28 }, %String* %err3, align 8
  %"$gasrem_3459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3460" = icmp ugt i64 1, %"$gasrem_3459"
  br i1 %"$gascmp_3460", label %"$out_of_gas_3461", label %"$have_gas_3462"

"$out_of_gas_3461":                               ; preds = %"$have_gas_3456"
  call void @_out_of_gas()
  br label %"$have_gas_3462"

"$have_gas_3462":                                 ; preds = %"$out_of_gas_3461", %"$have_gas_3456"
  %"$consume_3463" = sub i64 %"$gasrem_3459", 1
  store i64 %"$consume_3463", i64* @_gasrem, align 8
  %"$fail_msg__origin_3464" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3464", align 1
  %"$fail_msg__sender_3465" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3465", align 1
  %"$tname_3466" = load %String, %String* %tname, align 8
  %"$err_3467" = load %String, %String* %err3, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3464", [20 x i8]* %"$fail_msg__sender_3465", %String %"$tname_3466", %String %"$err_3467")
  br label %"$matchsucc_3328"

"$empty_default_3332":                            ; preds = %"$have_gas_3326"
  br label %"$matchsucc_3328"

"$matchsucc_3328":                                ; preds = %"$have_gas_3462", %"$matchsucc_3353", %"$empty_default_3332"
  br label %"$matchsucc_3296"

"$None_3468":                                     ; preds = %"$have_gas_3294"
  %"$m2o_3469" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3297" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_3470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3471" = icmp ugt i64 1, %"$gasrem_3470"
  br i1 %"$gascmp_3471", label %"$out_of_gas_3472", label %"$have_gas_3473"

"$out_of_gas_3472":                               ; preds = %"$None_3468"
  call void @_out_of_gas()
  br label %"$have_gas_3473"

"$have_gas_3473":                                 ; preds = %"$out_of_gas_3472", %"$None_3468"
  %"$consume_3474" = sub i64 %"$gasrem_3470", 1
  store i64 %"$consume_3474", i64* @_gasrem, align 8
  %err4 = alloca %String, align 8
  %"$gasrem_3475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3476" = icmp ugt i64 1, %"$gasrem_3475"
  br i1 %"$gascmp_3476", label %"$out_of_gas_3477", label %"$have_gas_3478"

"$out_of_gas_3477":                               ; preds = %"$have_gas_3473"
  call void @_out_of_gas()
  br label %"$have_gas_3478"

"$have_gas_3478":                                 ; preds = %"$out_of_gas_3477", %"$have_gas_3473"
  %"$consume_3479" = sub i64 %"$gasrem_3475", 1
  store i64 %"$consume_3479", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3480", i32 0, i32 0), i32 19 }, %String* %err4, align 8
  %"$gasrem_3481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3482" = icmp ugt i64 1, %"$gasrem_3481"
  br i1 %"$gascmp_3482", label %"$out_of_gas_3483", label %"$have_gas_3484"

"$out_of_gas_3483":                               ; preds = %"$have_gas_3478"
  call void @_out_of_gas()
  br label %"$have_gas_3484"

"$have_gas_3484":                                 ; preds = %"$out_of_gas_3483", %"$have_gas_3478"
  %"$consume_3485" = sub i64 %"$gasrem_3481", 1
  store i64 %"$consume_3485", i64* @_gasrem, align 8
  %"$fail_msg__origin_3486" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3486", align 1
  %"$fail_msg__sender_3487" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3487", align 1
  %"$tname_3488" = load %String, %String* %tname, align 8
  %"$err_3489" = load %String, %String* %err4, align 8
  call void @"$fail_msg_273"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3486", [20 x i8]* %"$fail_msg__sender_3487", %String %"$tname_3488", %String %"$err_3489")
  br label %"$matchsucc_3296"

"$empty_default_3300":                            ; preds = %"$have_gas_3294"
  br label %"$matchsucc_3296"

"$matchsucc_3296":                                ; preds = %"$have_gas_3484", %"$matchsucc_3328", %"$empty_default_3300"
  %"$gasrem_3490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3491" = icmp ugt i64 1, %"$gasrem_3490"
  br i1 %"$gascmp_3491", label %"$out_of_gas_3492", label %"$have_gas_3493"

"$out_of_gas_3492":                               ; preds = %"$matchsucc_3296"
  call void @_out_of_gas()
  br label %"$have_gas_3493"

"$have_gas_3493":                                 ; preds = %"$out_of_gas_3492", %"$matchsucc_3296"
  %"$consume_3494" = sub i64 %"$gasrem_3490", 1
  store i64 %"$consume_3494", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_3495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3496" = icmp ugt i64 1, %"$gasrem_3495"
  br i1 %"$gascmp_3496", label %"$out_of_gas_3497", label %"$have_gas_3498"

"$out_of_gas_3497":                               ; preds = %"$have_gas_3493"
  call void @_out_of_gas()
  br label %"$have_gas_3498"

"$have_gas_3498":                                 ; preds = %"$out_of_gas_3497", %"$have_gas_3493"
  %"$consume_3499" = sub i64 %"$gasrem_3495", 1
  store i64 %"$consume_3499", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3500", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_3501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3502" = icmp ugt i64 1, %"$gasrem_3501"
  br i1 %"$gascmp_3502", label %"$out_of_gas_3503", label %"$have_gas_3504"

"$out_of_gas_3503":                               ; preds = %"$have_gas_3498"
  call void @_out_of_gas()
  br label %"$have_gas_3504"

"$have_gas_3504":                                 ; preds = %"$out_of_gas_3503", %"$have_gas_3498"
  %"$consume_3505" = sub i64 %"$gasrem_3501", 1
  store i64 %"$consume_3505", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_3506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3507" = icmp ugt i64 1, %"$gasrem_3506"
  br i1 %"$gascmp_3507", label %"$out_of_gas_3508", label %"$have_gas_3509"

"$out_of_gas_3508":                               ; preds = %"$have_gas_3504"
  call void @_out_of_gas()
  br label %"$have_gas_3509"

"$have_gas_3509":                                 ; preds = %"$out_of_gas_3508", %"$have_gas_3504"
  %"$consume_3510" = sub i64 %"$gasrem_3506", 1
  store i64 %"$consume_3510", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3511", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_3512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3513" = icmp ugt i64 1, %"$gasrem_3512"
  br i1 %"$gascmp_3513", label %"$out_of_gas_3514", label %"$have_gas_3515"

"$out_of_gas_3514":                               ; preds = %"$have_gas_3509"
  call void @_out_of_gas()
  br label %"$have_gas_3515"

"$have_gas_3515":                                 ; preds = %"$out_of_gas_3514", %"$have_gas_3509"
  %"$consume_3516" = sub i64 %"$gasrem_3512", 1
  store i64 %"$consume_3516", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_3517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3518" = icmp ugt i64 1, %"$gasrem_3517"
  br i1 %"$gascmp_3518", label %"$out_of_gas_3519", label %"$have_gas_3520"

"$out_of_gas_3519":                               ; preds = %"$have_gas_3515"
  call void @_out_of_gas()
  br label %"$have_gas_3520"

"$have_gas_3520":                                 ; preds = %"$out_of_gas_3519", %"$have_gas_3515"
  %"$consume_3521" = sub i64 %"$gasrem_3517", 1
  store i64 %"$consume_3521", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3522", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_3523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3524" = icmp ugt i64 1, %"$gasrem_3523"
  br i1 %"$gascmp_3524", label %"$out_of_gas_3525", label %"$have_gas_3526"

"$out_of_gas_3525":                               ; preds = %"$have_gas_3520"
  call void @_out_of_gas()
  br label %"$have_gas_3526"

"$have_gas_3526":                                 ; preds = %"$out_of_gas_3525", %"$have_gas_3520"
  %"$consume_3527" = sub i64 %"$gasrem_3523", 1
  store i64 %"$consume_3527", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_3528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3529" = icmp ugt i64 1, %"$gasrem_3528"
  br i1 %"$gascmp_3529", label %"$out_of_gas_3530", label %"$have_gas_3531"

"$out_of_gas_3530":                               ; preds = %"$have_gas_3526"
  call void @_out_of_gas()
  br label %"$have_gas_3531"

"$have_gas_3531":                                 ; preds = %"$out_of_gas_3530", %"$have_gas_3526"
  %"$consume_3532" = sub i64 %"$gasrem_3528", 1
  store i64 %"$consume_3532", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3533", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_3534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3535" = icmp ugt i64 1, %"$gasrem_3534"
  br i1 %"$gascmp_3535", label %"$out_of_gas_3536", label %"$have_gas_3537"

"$out_of_gas_3536":                               ; preds = %"$have_gas_3531"
  call void @_out_of_gas()
  br label %"$have_gas_3537"

"$have_gas_3537":                                 ; preds = %"$out_of_gas_3536", %"$have_gas_3531"
  %"$consume_3538" = sub i64 %"$gasrem_3534", 1
  store i64 %"$consume_3538", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_3539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3540" = icmp ugt i64 1, %"$gasrem_3539"
  br i1 %"$gascmp_3540", label %"$out_of_gas_3541", label %"$have_gas_3542"

"$out_of_gas_3541":                               ; preds = %"$have_gas_3537"
  call void @_out_of_gas()
  br label %"$have_gas_3542"

"$have_gas_3542":                                 ; preds = %"$out_of_gas_3541", %"$have_gas_3537"
  %"$consume_3543" = sub i64 %"$gasrem_3539", 1
  store i64 %"$consume_3543", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3544", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_3545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3546" = icmp ugt i64 1, %"$gasrem_3545"
  br i1 %"$gascmp_3546", label %"$out_of_gas_3547", label %"$have_gas_3548"

"$out_of_gas_3547":                               ; preds = %"$have_gas_3542"
  call void @_out_of_gas()
  br label %"$have_gas_3548"

"$have_gas_3548":                                 ; preds = %"$out_of_gas_3547", %"$have_gas_3542"
  %"$consume_3549" = sub i64 %"$gasrem_3545", 1
  store i64 %"$consume_3549", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_3550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3551" = icmp ugt i64 1, %"$gasrem_3550"
  br i1 %"$gascmp_3551", label %"$out_of_gas_3552", label %"$have_gas_3553"

"$out_of_gas_3552":                               ; preds = %"$have_gas_3548"
  call void @_out_of_gas()
  br label %"$have_gas_3553"

"$have_gas_3553":                                 ; preds = %"$out_of_gas_3552", %"$have_gas_3548"
  %"$consume_3554" = sub i64 %"$gasrem_3550", 1
  store i64 %"$consume_3554", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3555", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$gasrem_3556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3557" = icmp ugt i64 1, %"$gasrem_3556"
  br i1 %"$gascmp_3557", label %"$out_of_gas_3558", label %"$have_gas_3559"

"$out_of_gas_3558":                               ; preds = %"$have_gas_3553"
  call void @_out_of_gas()
  br label %"$have_gas_3559"

"$have_gas_3559":                                 ; preds = %"$out_of_gas_3558", %"$have_gas_3553"
  %"$consume_3560" = sub i64 %"$gasrem_3556", 1
  store i64 %"$consume_3560", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_3561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3562" = icmp ugt i64 1, %"$gasrem_3561"
  br i1 %"$gascmp_3562", label %"$out_of_gas_3563", label %"$have_gas_3564"

"$out_of_gas_3563":                               ; preds = %"$have_gas_3559"
  call void @_out_of_gas()
  br label %"$have_gas_3564"

"$have_gas_3564":                                 ; preds = %"$out_of_gas_3563", %"$have_gas_3559"
  %"$consume_3565" = sub i64 %"$gasrem_3561", 1
  store i64 %"$consume_3565", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3566", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_3567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3568" = icmp ugt i64 1, %"$gasrem_3567"
  br i1 %"$gascmp_3568", label %"$out_of_gas_3569", label %"$have_gas_3570"

"$out_of_gas_3569":                               ; preds = %"$have_gas_3564"
  call void @_out_of_gas()
  br label %"$have_gas_3570"

"$have_gas_3570":                                 ; preds = %"$out_of_gas_3569", %"$have_gas_3564"
  %"$consume_3571" = sub i64 %"$gasrem_3567", 1
  store i64 %"$consume_3571", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_3572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3573" = icmp ugt i64 1, %"$gasrem_3572"
  br i1 %"$gascmp_3573", label %"$out_of_gas_3574", label %"$have_gas_3575"

"$out_of_gas_3574":                               ; preds = %"$have_gas_3570"
  call void @_out_of_gas()
  br label %"$have_gas_3575"

"$have_gas_3575":                                 ; preds = %"$out_of_gas_3574", %"$have_gas_3570"
  %"$consume_3576" = sub i64 %"$gasrem_3572", 1
  store i64 %"$consume_3576", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3577", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_3578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3579" = icmp ugt i64 1, %"$gasrem_3578"
  br i1 %"$gascmp_3579", label %"$out_of_gas_3580", label %"$have_gas_3581"

"$out_of_gas_3580":                               ; preds = %"$have_gas_3575"
  call void @_out_of_gas()
  br label %"$have_gas_3581"

"$have_gas_3581":                                 ; preds = %"$out_of_gas_3580", %"$have_gas_3575"
  %"$consume_3582" = sub i64 %"$gasrem_3578", 1
  store i64 %"$consume_3582", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_3583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3584" = icmp ugt i64 1, %"$gasrem_3583"
  br i1 %"$gascmp_3584", label %"$out_of_gas_3585", label %"$have_gas_3586"

"$out_of_gas_3585":                               ; preds = %"$have_gas_3581"
  call void @_out_of_gas()
  br label %"$have_gas_3586"

"$have_gas_3586":                                 ; preds = %"$out_of_gas_3585", %"$have_gas_3581"
  %"$consume_3587" = sub i64 %"$gasrem_3583", 1
  store i64 %"$consume_3587", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3588", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_3589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3590" = icmp ugt i64 1, %"$gasrem_3589"
  br i1 %"$gascmp_3590", label %"$out_of_gas_3591", label %"$have_gas_3592"

"$out_of_gas_3591":                               ; preds = %"$have_gas_3586"
  call void @_out_of_gas()
  br label %"$have_gas_3592"

"$have_gas_3592":                                 ; preds = %"$out_of_gas_3591", %"$have_gas_3586"
  %"$consume_3593" = sub i64 %"$gasrem_3589", 1
  store i64 %"$consume_3593", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_3594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3595" = icmp ugt i64 1, %"$gasrem_3594"
  br i1 %"$gascmp_3595", label %"$out_of_gas_3596", label %"$have_gas_3597"

"$out_of_gas_3596":                               ; preds = %"$have_gas_3592"
  call void @_out_of_gas()
  br label %"$have_gas_3597"

"$have_gas_3597":                                 ; preds = %"$out_of_gas_3596", %"$have_gas_3592"
  %"$consume_3598" = sub i64 %"$gasrem_3594", 1
  store i64 %"$consume_3598", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3599", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_3600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3601" = icmp ugt i64 1, %"$gasrem_3600"
  br i1 %"$gascmp_3601", label %"$out_of_gas_3602", label %"$have_gas_3603"

"$out_of_gas_3602":                               ; preds = %"$have_gas_3597"
  call void @_out_of_gas()
  br label %"$have_gas_3603"

"$have_gas_3603":                                 ; preds = %"$out_of_gas_3602", %"$have_gas_3597"
  %"$consume_3604" = sub i64 %"$gasrem_3600", 1
  store i64 %"$consume_3604", i64* @_gasrem, align 8
  %m25 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3606" = icmp ugt i64 1, %"$gasrem_3605"
  br i1 %"$gascmp_3606", label %"$out_of_gas_3607", label %"$have_gas_3608"

"$out_of_gas_3607":                               ; preds = %"$have_gas_3603"
  call void @_out_of_gas()
  br label %"$have_gas_3608"

"$have_gas_3608":                                 ; preds = %"$out_of_gas_3607", %"$have_gas_3603"
  %"$consume_3609" = sub i64 %"$gasrem_3605", 1
  store i64 %"$consume_3609", i64* @_gasrem, align 8
  %"$execptr_load_3610" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3611" = call i8* @_new_empty_map(i8* %"$execptr_load_3610")
  %"$_new_empty_map_3612" = bitcast i8* %"$_new_empty_map_call_3611" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3612", %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$gasrem_3613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3614" = icmp ugt i64 1, %"$gasrem_3613"
  br i1 %"$gascmp_3614", label %"$out_of_gas_3615", label %"$have_gas_3616"

"$out_of_gas_3615":                               ; preds = %"$have_gas_3608"
  call void @_out_of_gas()
  br label %"$have_gas_3616"

"$have_gas_3616":                                 ; preds = %"$out_of_gas_3615", %"$have_gas_3608"
  %"$consume_3617" = sub i64 %"$gasrem_3613", 1
  store i64 %"$consume_3617", i64* @_gasrem, align 8
  %m16 = alloca %Map_String_String*, align 8
  %"$gasrem_3618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3619" = icmp ugt i64 1, %"$gasrem_3618"
  br i1 %"$gascmp_3619", label %"$out_of_gas_3620", label %"$have_gas_3621"

"$out_of_gas_3620":                               ; preds = %"$have_gas_3616"
  call void @_out_of_gas()
  br label %"$have_gas_3621"

"$have_gas_3621":                                 ; preds = %"$out_of_gas_3620", %"$have_gas_3616"
  %"$consume_3622" = sub i64 %"$gasrem_3618", 1
  store i64 %"$consume_3622", i64* @_gasrem, align 8
  %"$execptr_load_3623" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3624" = call i8* @_new_empty_map(i8* %"$execptr_load_3623")
  %"$_new_empty_map_3625" = bitcast i8* %"$_new_empty_map_call_3624" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3625", %Map_String_String** %m16, align 8
  %"$gasrem_3626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3627" = icmp ugt i64 1, %"$gasrem_3626"
  br i1 %"$gascmp_3627", label %"$out_of_gas_3628", label %"$have_gas_3629"

"$out_of_gas_3628":                               ; preds = %"$have_gas_3621"
  call void @_out_of_gas()
  br label %"$have_gas_3629"

"$have_gas_3629":                                 ; preds = %"$out_of_gas_3628", %"$have_gas_3621"
  %"$consume_3630" = sub i64 %"$gasrem_3626", 1
  store i64 %"$consume_3630", i64* @_gasrem, align 8
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3632" = icmp ugt i64 1, %"$gasrem_3631"
  br i1 %"$gascmp_3632", label %"$out_of_gas_3633", label %"$have_gas_3634"

"$out_of_gas_3633":                               ; preds = %"$have_gas_3629"
  call void @_out_of_gas()
  br label %"$have_gas_3634"

"$have_gas_3634":                                 ; preds = %"$out_of_gas_3633", %"$have_gas_3629"
  %"$consume_3635" = sub i64 %"$gasrem_3631", 1
  store i64 %"$consume_3635", i64* @_gasrem, align 8
  %m21 = alloca %Map_String_String*, align 8
  %"$execptr_load_3636" = load i8*, i8** @_execptr, align 8
  %"$m1_3637" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3637_3638" = bitcast %Map_String_String* %"$m1_3637" to i8*
  %"$put_key2a_3639" = alloca %String, align 8
  %"$key2a_3640" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3640", %String* %"$put_key2a_3639", align 8
  %"$$put_key2a_3639_3641" = bitcast %String* %"$put_key2a_3639" to i8*
  %"$put_v1_3642" = alloca %String, align 8
  %"$v1_3643" = load %String, %String* %v1, align 8
  store %String %"$v1_3643", %String* %"$put_v1_3642", align 8
  %"$$put_v1_3642_3644" = bitcast %String* %"$put_v1_3642" to i8*
  %"$put_call_3645" = call i8* @_put(i8* %"$execptr_load_3636", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_3637_3638", i8* %"$$put_key2a_3639_3641", i8* %"$$put_v1_3642_3644")
  %"$put_3646" = bitcast i8* %"$put_call_3645" to %Map_String_String*
  store %Map_String_String* %"$put_3646", %Map_String_String** %m21, align 8
  %"$gasrem_3647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3648" = icmp ugt i64 1, %"$gasrem_3647"
  br i1 %"$gascmp_3648", label %"$out_of_gas_3649", label %"$have_gas_3650"

"$out_of_gas_3649":                               ; preds = %"$have_gas_3634"
  call void @_out_of_gas()
  br label %"$have_gas_3650"

"$have_gas_3650":                                 ; preds = %"$out_of_gas_3649", %"$have_gas_3634"
  %"$consume_3651" = sub i64 %"$gasrem_3647", 1
  store i64 %"$consume_3651", i64* @_gasrem, align 8
  %m22 = alloca %Map_String_String*, align 8
  %"$execptr_load_3652" = load i8*, i8** @_execptr, align 8
  %"$m1_3653" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3653_3654" = bitcast %Map_String_String* %"$m1_3653" to i8*
  %"$put_key2b_3655" = alloca %String, align 8
  %"$key2b_3656" = load %String, %String* %key2b, align 8
  store %String %"$key2b_3656", %String* %"$put_key2b_3655", align 8
  %"$$put_key2b_3655_3657" = bitcast %String* %"$put_key2b_3655" to i8*
  %"$put_v2_3658" = alloca %String, align 8
  %"$v2_3659" = load %String, %String* %v2, align 8
  store %String %"$v2_3659", %String* %"$put_v2_3658", align 8
  %"$$put_v2_3658_3660" = bitcast %String* %"$put_v2_3658" to i8*
  %"$put_call_3661" = call i8* @_put(i8* %"$execptr_load_3652", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_3653_3654", i8* %"$$put_key2b_3655_3657", i8* %"$$put_v2_3658_3660")
  %"$put_3662" = bitcast i8* %"$put_call_3661" to %Map_String_String*
  store %Map_String_String* %"$put_3662", %Map_String_String** %m22, align 8
  %"$gasrem_3663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3664" = icmp ugt i64 1, %"$gasrem_3663"
  br i1 %"$gascmp_3664", label %"$out_of_gas_3665", label %"$have_gas_3666"

"$out_of_gas_3665":                               ; preds = %"$have_gas_3650"
  call void @_out_of_gas()
  br label %"$have_gas_3666"

"$have_gas_3666":                                 ; preds = %"$out_of_gas_3665", %"$have_gas_3650"
  %"$consume_3667" = sub i64 %"$gasrem_3663", 1
  store i64 %"$consume_3667", i64* @_gasrem, align 8
  %m23 = alloca %Map_String_String*, align 8
  %"$execptr_load_3668" = load i8*, i8** @_execptr, align 8
  %"$m1_3669" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3669_3670" = bitcast %Map_String_String* %"$m1_3669" to i8*
  %"$put_key2c_3671" = alloca %String, align 8
  %"$key2c_3672" = load %String, %String* %key2c, align 8
  store %String %"$key2c_3672", %String* %"$put_key2c_3671", align 8
  %"$$put_key2c_3671_3673" = bitcast %String* %"$put_key2c_3671" to i8*
  %"$put_v3_3674" = alloca %String, align 8
  %"$v3_3675" = load %String, %String* %v3, align 8
  store %String %"$v3_3675", %String* %"$put_v3_3674", align 8
  %"$$put_v3_3674_3676" = bitcast %String* %"$put_v3_3674" to i8*
  %"$put_call_3677" = call i8* @_put(i8* %"$execptr_load_3668", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_3669_3670", i8* %"$$put_key2c_3671_3673", i8* %"$$put_v3_3674_3676")
  %"$put_3678" = bitcast i8* %"$put_call_3677" to %Map_String_String*
  store %Map_String_String* %"$put_3678", %Map_String_String** %m23, align 8
  %"$gasrem_3679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3680" = icmp ugt i64 1, %"$gasrem_3679"
  br i1 %"$gascmp_3680", label %"$out_of_gas_3681", label %"$have_gas_3682"

"$out_of_gas_3681":                               ; preds = %"$have_gas_3666"
  call void @_out_of_gas()
  br label %"$have_gas_3682"

"$have_gas_3682":                                 ; preds = %"$out_of_gas_3681", %"$have_gas_3666"
  %"$consume_3683" = sub i64 %"$gasrem_3679", 1
  store i64 %"$consume_3683", i64* @_gasrem, align 8
  %m24 = alloca %Map_String_String*, align 8
  %"$execptr_load_3684" = load i8*, i8** @_execptr, align 8
  %"$m1_3685" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3685_3686" = bitcast %Map_String_String* %"$m1_3685" to i8*
  %"$put_key2d_3687" = alloca %String, align 8
  %"$key2d_3688" = load %String, %String* %key2d, align 8
  store %String %"$key2d_3688", %String* %"$put_key2d_3687", align 8
  %"$$put_key2d_3687_3689" = bitcast %String* %"$put_key2d_3687" to i8*
  %"$put_v4_3690" = alloca %String, align 8
  %"$v4_3691" = load %String, %String* %v4, align 8
  store %String %"$v4_3691", %String* %"$put_v4_3690", align 8
  %"$$put_v4_3690_3692" = bitcast %String* %"$put_v4_3690" to i8*
  %"$put_call_3693" = call i8* @_put(i8* %"$execptr_load_3684", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_3685_3686", i8* %"$$put_key2d_3687_3689", i8* %"$$put_v4_3690_3692")
  %"$put_3694" = bitcast i8* %"$put_call_3693" to %Map_String_String*
  store %Map_String_String* %"$put_3694", %Map_String_String** %m24, align 8
  %"$gasrem_3695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3696" = icmp ugt i64 1, %"$gasrem_3695"
  br i1 %"$gascmp_3696", label %"$out_of_gas_3697", label %"$have_gas_3698"

"$out_of_gas_3697":                               ; preds = %"$have_gas_3682"
  call void @_out_of_gas()
  br label %"$have_gas_3698"

"$have_gas_3698":                                 ; preds = %"$out_of_gas_3697", %"$have_gas_3682"
  %"$consume_3699" = sub i64 %"$gasrem_3695", 1
  store i64 %"$consume_3699", i64* @_gasrem, align 8
  %m11 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_3700" = load i8*, i8** @_execptr, align 8
  %"$m2_3701" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_3701_3702" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3701" to i8*
  %"$put_key1a_3703" = alloca %String, align 8
  %"$key1a_3704" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3704", %String* %"$put_key1a_3703", align 8
  %"$$put_key1a_3703_3705" = bitcast %String* %"$put_key1a_3703" to i8*
  %"$m21_3706" = load %Map_String_String*, %Map_String_String** %m21, align 8
  %"$$m21_3706_3707" = bitcast %Map_String_String* %"$m21_3706" to i8*
  %"$put_call_3708" = call i8* @_put(i8* %"$execptr_load_3700", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_3701_3702", i8* %"$$put_key1a_3703_3705", i8* %"$$m21_3706_3707")
  %"$put_3709" = bitcast i8* %"$put_call_3708" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3709", %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$gasrem_3710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3711" = icmp ugt i64 1, %"$gasrem_3710"
  br i1 %"$gascmp_3711", label %"$out_of_gas_3712", label %"$have_gas_3713"

"$out_of_gas_3712":                               ; preds = %"$have_gas_3698"
  call void @_out_of_gas()
  br label %"$have_gas_3713"

"$have_gas_3713":                                 ; preds = %"$out_of_gas_3712", %"$have_gas_3698"
  %"$consume_3714" = sub i64 %"$gasrem_3710", 1
  store i64 %"$consume_3714", i64* @_gasrem, align 8
  %m12 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_3715" = load i8*, i8** @_execptr, align 8
  %"$m11_3716" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_3716_3717" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_3716" to i8*
  %"$put_key1b_3718" = alloca %String, align 8
  %"$key1b_3719" = load %String, %String* %key1b, align 8
  store %String %"$key1b_3719", %String* %"$put_key1b_3718", align 8
  %"$$put_key1b_3718_3720" = bitcast %String* %"$put_key1b_3718" to i8*
  %"$m22_3721" = load %Map_String_String*, %Map_String_String** %m22, align 8
  %"$$m22_3721_3722" = bitcast %Map_String_String* %"$m22_3721" to i8*
  %"$put_call_3723" = call i8* @_put(i8* %"$execptr_load_3715", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m11_3716_3717", i8* %"$$put_key1b_3718_3720", i8* %"$$m22_3721_3722")
  %"$put_3724" = bitcast i8* %"$put_call_3723" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3724", %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$gasrem_3725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3726" = icmp ugt i64 1, %"$gasrem_3725"
  br i1 %"$gascmp_3726", label %"$out_of_gas_3727", label %"$have_gas_3728"

"$out_of_gas_3727":                               ; preds = %"$have_gas_3713"
  call void @_out_of_gas()
  br label %"$have_gas_3728"

"$have_gas_3728":                                 ; preds = %"$out_of_gas_3727", %"$have_gas_3713"
  %"$consume_3729" = sub i64 %"$gasrem_3725", 1
  store i64 %"$consume_3729", i64* @_gasrem, align 8
  %m13 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_3730" = load i8*, i8** @_execptr, align 8
  %"$m12_3731" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_3731_3732" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_3731" to i8*
  %"$put_key1c_3733" = alloca %String, align 8
  %"$key1c_3734" = load %String, %String* %key1c, align 8
  store %String %"$key1c_3734", %String* %"$put_key1c_3733", align 8
  %"$$put_key1c_3733_3735" = bitcast %String* %"$put_key1c_3733" to i8*
  %"$m23_3736" = load %Map_String_String*, %Map_String_String** %m23, align 8
  %"$$m23_3736_3737" = bitcast %Map_String_String* %"$m23_3736" to i8*
  %"$put_call_3738" = call i8* @_put(i8* %"$execptr_load_3730", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m12_3731_3732", i8* %"$$put_key1c_3733_3735", i8* %"$$m23_3736_3737")
  %"$put_3739" = bitcast i8* %"$put_call_3738" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3739", %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$gasrem_3740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3741" = icmp ugt i64 1, %"$gasrem_3740"
  br i1 %"$gascmp_3741", label %"$out_of_gas_3742", label %"$have_gas_3743"

"$out_of_gas_3742":                               ; preds = %"$have_gas_3728"
  call void @_out_of_gas()
  br label %"$have_gas_3743"

"$have_gas_3743":                                 ; preds = %"$out_of_gas_3742", %"$have_gas_3728"
  %"$consume_3744" = sub i64 %"$gasrem_3740", 1
  store i64 %"$consume_3744", i64* @_gasrem, align 8
  %m14 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_3745" = load i8*, i8** @_execptr, align 8
  %"$m13_3746" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_3746_3747" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_3746" to i8*
  %"$put_key1d_3748" = alloca %String, align 8
  %"$key1d_3749" = load %String, %String* %key1d, align 8
  store %String %"$key1d_3749", %String* %"$put_key1d_3748", align 8
  %"$$put_key1d_3748_3750" = bitcast %String* %"$put_key1d_3748" to i8*
  %"$m24_3751" = load %Map_String_String*, %Map_String_String** %m24, align 8
  %"$$m24_3751_3752" = bitcast %Map_String_String* %"$m24_3751" to i8*
  %"$put_call_3753" = call i8* @_put(i8* %"$execptr_load_3745", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m13_3746_3747", i8* %"$$put_key1d_3748_3750", i8* %"$$m24_3751_3752")
  %"$put_3754" = bitcast i8* %"$put_call_3753" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3754", %"Map_String_Map_(String)_(String)"** %m14, align 8
  %"$gasrem_3755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3756" = icmp ugt i64 1, %"$gasrem_3755"
  br i1 %"$gascmp_3756", label %"$out_of_gas_3757", label %"$have_gas_3758"

"$out_of_gas_3757":                               ; preds = %"$have_gas_3743"
  call void @_out_of_gas()
  br label %"$have_gas_3758"

"$have_gas_3758":                                 ; preds = %"$out_of_gas_3757", %"$have_gas_3743"
  %"$consume_3759" = sub i64 %"$gasrem_3755", 1
  store i64 %"$consume_3759", i64* @_gasrem, align 8
  %"$m14_3760" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m14_3760", %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$m2_full_3761" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$$m2_full_3761_3762" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_3761" to i8*
  %"$_literal_cost_call_3763" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$m2_full_3761_3762")
  %"$gasrem_3764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3765" = icmp ugt i64 %"$_literal_cost_call_3763", %"$gasrem_3764"
  br i1 %"$gascmp_3765", label %"$out_of_gas_3766", label %"$have_gas_3767"

"$out_of_gas_3766":                               ; preds = %"$have_gas_3758"
  call void @_out_of_gas()
  br label %"$have_gas_3767"

"$have_gas_3767":                                 ; preds = %"$out_of_gas_3766", %"$have_gas_3758"
  %"$consume_3768" = sub i64 %"$gasrem_3764", %"$_literal_cost_call_3763"
  store i64 %"$consume_3768", i64* @_gasrem, align 8
  %"$execptr_load_3769" = load i8*, i8** @_execptr, align 8
  %"$m2_full_3771" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$update_value_3772" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_3771" to i8*
  call void @_update_field(i8* %"$execptr_load_3769", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3770", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 0, i8* null, i8* %"$update_value_3772")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_3774" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3775" = bitcast i8* %"$_amount_3774" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3775", align 8
  %"$_origin_3776" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3777" = bitcast i8* %"$_origin_3776" to [20 x i8]*
  %"$_sender_3778" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3779" = bitcast i8* %"$_sender_3778" to [20 x i8]*
  call void @"$t15_3164"(%Uint128 %_amount, [20 x i8]* %"$_origin_3777", [20 x i8]* %"$_sender_3779")
  ret void
}

define internal void @"$t16_3780"(%Uint128 %_amount, [20 x i8]* %"$_origin_3781", [20 x i8]* %"$_sender_3782") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3781", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3782", align 1
  %"$gasrem_3783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3784" = icmp ugt i64 1, %"$gasrem_3783"
  br i1 %"$gascmp_3784", label %"$out_of_gas_3785", label %"$have_gas_3786"

"$out_of_gas_3785":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3786"

"$have_gas_3786":                                 ; preds = %"$out_of_gas_3785", %entry
  %"$consume_3787" = sub i64 %"$gasrem_3783", 1
  store i64 %"$consume_3787", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3789" = icmp ugt i64 1, %"$gasrem_3788"
  br i1 %"$gascmp_3789", label %"$out_of_gas_3790", label %"$have_gas_3791"

"$out_of_gas_3790":                               ; preds = %"$have_gas_3786"
  call void @_out_of_gas()
  br label %"$have_gas_3791"

"$have_gas_3791":                                 ; preds = %"$out_of_gas_3790", %"$have_gas_3786"
  %"$consume_3792" = sub i64 %"$gasrem_3788", 1
  store i64 %"$consume_3792", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3793", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_3794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3795" = icmp ugt i64 1, %"$gasrem_3794"
  br i1 %"$gascmp_3795", label %"$out_of_gas_3796", label %"$have_gas_3797"

"$out_of_gas_3796":                               ; preds = %"$have_gas_3791"
  call void @_out_of_gas()
  br label %"$have_gas_3797"

"$have_gas_3797":                                 ; preds = %"$out_of_gas_3796", %"$have_gas_3791"
  %"$consume_3798" = sub i64 %"$gasrem_3794", 1
  store i64 %"$consume_3798", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3800" = icmp ugt i64 1, %"$gasrem_3799"
  br i1 %"$gascmp_3800", label %"$out_of_gas_3801", label %"$have_gas_3802"

"$out_of_gas_3801":                               ; preds = %"$have_gas_3797"
  call void @_out_of_gas()
  br label %"$have_gas_3802"

"$have_gas_3802":                                 ; preds = %"$out_of_gas_3801", %"$have_gas_3797"
  %"$consume_3803" = sub i64 %"$gasrem_3799", 1
  store i64 %"$consume_3803", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3804", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_3805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3806" = icmp ugt i64 1, %"$gasrem_3805"
  br i1 %"$gascmp_3806", label %"$out_of_gas_3807", label %"$have_gas_3808"

"$out_of_gas_3807":                               ; preds = %"$have_gas_3802"
  call void @_out_of_gas()
  br label %"$have_gas_3808"

"$have_gas_3808":                                 ; preds = %"$out_of_gas_3807", %"$have_gas_3802"
  %"$consume_3809" = sub i64 %"$gasrem_3805", 1
  store i64 %"$consume_3809", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3811" = icmp ugt i64 1, %"$gasrem_3810"
  br i1 %"$gascmp_3811", label %"$out_of_gas_3812", label %"$have_gas_3813"

"$out_of_gas_3812":                               ; preds = %"$have_gas_3808"
  call void @_out_of_gas()
  br label %"$have_gas_3813"

"$have_gas_3813":                                 ; preds = %"$out_of_gas_3812", %"$have_gas_3808"
  %"$consume_3814" = sub i64 %"$gasrem_3810", 1
  store i64 %"$consume_3814", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3815", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3817" = icmp ugt i64 1, %"$gasrem_3816"
  br i1 %"$gascmp_3817", label %"$out_of_gas_3818", label %"$have_gas_3819"

"$out_of_gas_3818":                               ; preds = %"$have_gas_3813"
  call void @_out_of_gas()
  br label %"$have_gas_3819"

"$have_gas_3819":                                 ; preds = %"$out_of_gas_3818", %"$have_gas_3813"
  %"$consume_3820" = sub i64 %"$gasrem_3816", 1
  store i64 %"$consume_3820", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_3821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3822" = icmp ugt i64 1, %"$gasrem_3821"
  br i1 %"$gascmp_3822", label %"$out_of_gas_3823", label %"$have_gas_3824"

"$out_of_gas_3823":                               ; preds = %"$have_gas_3819"
  call void @_out_of_gas()
  br label %"$have_gas_3824"

"$have_gas_3824":                                 ; preds = %"$out_of_gas_3823", %"$have_gas_3819"
  %"$consume_3825" = sub i64 %"$gasrem_3821", 1
  store i64 %"$consume_3825", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3826", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_3827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3828" = icmp ugt i64 1, %"$gasrem_3827"
  br i1 %"$gascmp_3828", label %"$out_of_gas_3829", label %"$have_gas_3830"

"$out_of_gas_3829":                               ; preds = %"$have_gas_3824"
  call void @_out_of_gas()
  br label %"$have_gas_3830"

"$have_gas_3830":                                 ; preds = %"$out_of_gas_3829", %"$have_gas_3824"
  %"$consume_3831" = sub i64 %"$gasrem_3827", 1
  store i64 %"$consume_3831", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_3832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3833" = icmp ugt i64 1, %"$gasrem_3832"
  br i1 %"$gascmp_3833", label %"$out_of_gas_3834", label %"$have_gas_3835"

"$out_of_gas_3834":                               ; preds = %"$have_gas_3830"
  call void @_out_of_gas()
  br label %"$have_gas_3835"

"$have_gas_3835":                                 ; preds = %"$out_of_gas_3834", %"$have_gas_3830"
  %"$consume_3836" = sub i64 %"$gasrem_3832", 1
  store i64 %"$consume_3836", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3837", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_3838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3839" = icmp ugt i64 1, %"$gasrem_3838"
  br i1 %"$gascmp_3839", label %"$out_of_gas_3840", label %"$have_gas_3841"

"$out_of_gas_3840":                               ; preds = %"$have_gas_3835"
  call void @_out_of_gas()
  br label %"$have_gas_3841"

"$have_gas_3841":                                 ; preds = %"$out_of_gas_3840", %"$have_gas_3835"
  %"$consume_3842" = sub i64 %"$gasrem_3838", 1
  store i64 %"$consume_3842", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_3843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3844" = icmp ugt i64 1, %"$gasrem_3843"
  br i1 %"$gascmp_3844", label %"$out_of_gas_3845", label %"$have_gas_3846"

"$out_of_gas_3845":                               ; preds = %"$have_gas_3841"
  call void @_out_of_gas()
  br label %"$have_gas_3846"

"$have_gas_3846":                                 ; preds = %"$out_of_gas_3845", %"$have_gas_3841"
  %"$consume_3847" = sub i64 %"$gasrem_3843", 1
  store i64 %"$consume_3847", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3848", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_3849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3850" = icmp ugt i64 1, %"$gasrem_3849"
  br i1 %"$gascmp_3850", label %"$out_of_gas_3851", label %"$have_gas_3852"

"$out_of_gas_3851":                               ; preds = %"$have_gas_3846"
  call void @_out_of_gas()
  br label %"$have_gas_3852"

"$have_gas_3852":                                 ; preds = %"$out_of_gas_3851", %"$have_gas_3846"
  %"$consume_3853" = sub i64 %"$gasrem_3849", 1
  store i64 %"$consume_3853", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_3854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3855" = icmp ugt i64 1, %"$gasrem_3854"
  br i1 %"$gascmp_3855", label %"$out_of_gas_3856", label %"$have_gas_3857"

"$out_of_gas_3856":                               ; preds = %"$have_gas_3852"
  call void @_out_of_gas()
  br label %"$have_gas_3857"

"$have_gas_3857":                                 ; preds = %"$out_of_gas_3856", %"$have_gas_3852"
  %"$consume_3858" = sub i64 %"$gasrem_3854", 1
  store i64 %"$consume_3858", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3859", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_3860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3861" = icmp ugt i64 1, %"$gasrem_3860"
  br i1 %"$gascmp_3861", label %"$out_of_gas_3862", label %"$have_gas_3863"

"$out_of_gas_3862":                               ; preds = %"$have_gas_3857"
  call void @_out_of_gas()
  br label %"$have_gas_3863"

"$have_gas_3863":                                 ; preds = %"$out_of_gas_3862", %"$have_gas_3857"
  %"$consume_3864" = sub i64 %"$gasrem_3860", 1
  store i64 %"$consume_3864", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_3865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3866" = icmp ugt i64 1, %"$gasrem_3865"
  br i1 %"$gascmp_3866", label %"$out_of_gas_3867", label %"$have_gas_3868"

"$out_of_gas_3867":                               ; preds = %"$have_gas_3863"
  call void @_out_of_gas()
  br label %"$have_gas_3868"

"$have_gas_3868":                                 ; preds = %"$out_of_gas_3867", %"$have_gas_3863"
  %"$consume_3869" = sub i64 %"$gasrem_3865", 1
  store i64 %"$consume_3869", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3870", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_3871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3872" = icmp ugt i64 1, %"$gasrem_3871"
  br i1 %"$gascmp_3872", label %"$out_of_gas_3873", label %"$have_gas_3874"

"$out_of_gas_3873":                               ; preds = %"$have_gas_3868"
  call void @_out_of_gas()
  br label %"$have_gas_3874"

"$have_gas_3874":                                 ; preds = %"$out_of_gas_3873", %"$have_gas_3868"
  %"$consume_3875" = sub i64 %"$gasrem_3871", 1
  store i64 %"$consume_3875", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_3876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3877" = icmp ugt i64 1, %"$gasrem_3876"
  br i1 %"$gascmp_3877", label %"$out_of_gas_3878", label %"$have_gas_3879"

"$out_of_gas_3878":                               ; preds = %"$have_gas_3874"
  call void @_out_of_gas()
  br label %"$have_gas_3879"

"$have_gas_3879":                                 ; preds = %"$out_of_gas_3878", %"$have_gas_3874"
  %"$consume_3880" = sub i64 %"$gasrem_3876", 1
  store i64 %"$consume_3880", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3881", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %t1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_3882_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3882_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3882_salloc_load", i64 32)
  %"$indices_buf_3882_salloc" = bitcast i8* %"$indices_buf_3882_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3882" = bitcast [32 x i8]* %"$indices_buf_3882_salloc" to i8*
  %"$key1a_3883" = load %String, %String* %key1a, align 8
  %"$indices_gep_3884" = getelementptr i8, i8* %"$indices_buf_3882", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3884" to %String*
  store %String %"$key1a_3883", %String* %indices_cast, align 8
  %"$key2a_3885" = load %String, %String* %key2a, align 8
  %"$indices_gep_3886" = getelementptr i8, i8* %"$indices_buf_3882", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_3886" to %String*
  store %String %"$key2a_3885", %String* %indices_cast1, align 8
  %"$execptr_load_3888" = load i8*, i8** @_execptr, align 8
  %"$t1_call_3889" = call i8* @_fetch_field(i8* %"$execptr_load_3888", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3887", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_3882", i32 1)
  %"$t1_3890" = bitcast i8* %"$t1_call_3889" to %TName_Option_String*
  store %TName_Option_String* %"$t1_3890", %TName_Option_String** %t1, align 8
  %"$t1_3891" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$$t1_3891_3892" = bitcast %TName_Option_String* %"$t1_3891" to i8*
  %"$_literal_cost_call_3893" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$t1_3891_3892")
  %"$gasadd_3894" = add i64 %"$_literal_cost_call_3893", 0
  %"$gasadd_3895" = add i64 %"$gasadd_3894", 2
  %"$gasrem_3896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3897" = icmp ugt i64 %"$gasadd_3895", %"$gasrem_3896"
  br i1 %"$gascmp_3897", label %"$out_of_gas_3898", label %"$have_gas_3899"

"$out_of_gas_3898":                               ; preds = %"$have_gas_3879"
  call void @_out_of_gas()
  br label %"$have_gas_3899"

"$have_gas_3899":                                 ; preds = %"$out_of_gas_3898", %"$have_gas_3879"
  %"$consume_3900" = sub i64 %"$gasrem_3896", %"$gasadd_3895"
  store i64 %"$consume_3900", i64* @_gasrem, align 8
  %t2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_3901_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3901_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3901_salloc_load", i64 32)
  %"$indices_buf_3901_salloc" = bitcast i8* %"$indices_buf_3901_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3901" = bitcast [32 x i8]* %"$indices_buf_3901_salloc" to i8*
  %"$key1b_3902" = load %String, %String* %key1b, align 8
  %"$indices_gep_3903" = getelementptr i8, i8* %"$indices_buf_3901", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3903" to %String*
  store %String %"$key1b_3902", %String* %indices_cast2, align 8
  %"$key2b_3904" = load %String, %String* %key2b, align 8
  %"$indices_gep_3905" = getelementptr i8, i8* %"$indices_buf_3901", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_3905" to %String*
  store %String %"$key2b_3904", %String* %indices_cast3, align 8
  %"$execptr_load_3907" = load i8*, i8** @_execptr, align 8
  %"$t2_call_3908" = call i8* @_fetch_field(i8* %"$execptr_load_3907", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3906", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_3901", i32 1)
  %"$t2_3909" = bitcast i8* %"$t2_call_3908" to %TName_Option_String*
  store %TName_Option_String* %"$t2_3909", %TName_Option_String** %t2, align 8
  %"$t2_3910" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$$t2_3910_3911" = bitcast %TName_Option_String* %"$t2_3910" to i8*
  %"$_literal_cost_call_3912" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$t2_3910_3911")
  %"$gasadd_3913" = add i64 %"$_literal_cost_call_3912", 0
  %"$gasadd_3914" = add i64 %"$gasadd_3913", 2
  %"$gasrem_3915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3916" = icmp ugt i64 %"$gasadd_3914", %"$gasrem_3915"
  br i1 %"$gascmp_3916", label %"$out_of_gas_3917", label %"$have_gas_3918"

"$out_of_gas_3917":                               ; preds = %"$have_gas_3899"
  call void @_out_of_gas()
  br label %"$have_gas_3918"

"$have_gas_3918":                                 ; preds = %"$out_of_gas_3917", %"$have_gas_3899"
  %"$consume_3919" = sub i64 %"$gasrem_3915", %"$gasadd_3914"
  store i64 %"$consume_3919", i64* @_gasrem, align 8
  %t3 = alloca %TName_Option_String*, align 8
  %"$indices_buf_3920_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3920_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3920_salloc_load", i64 32)
  %"$indices_buf_3920_salloc" = bitcast i8* %"$indices_buf_3920_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3920" = bitcast [32 x i8]* %"$indices_buf_3920_salloc" to i8*
  %"$key1c_3921" = load %String, %String* %key1c, align 8
  %"$indices_gep_3922" = getelementptr i8, i8* %"$indices_buf_3920", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_3922" to %String*
  store %String %"$key1c_3921", %String* %indices_cast4, align 8
  %"$key2c_3923" = load %String, %String* %key2c, align 8
  %"$indices_gep_3924" = getelementptr i8, i8* %"$indices_buf_3920", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_3924" to %String*
  store %String %"$key2c_3923", %String* %indices_cast5, align 8
  %"$execptr_load_3926" = load i8*, i8** @_execptr, align 8
  %"$t3_call_3927" = call i8* @_fetch_field(i8* %"$execptr_load_3926", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3925", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_3920", i32 1)
  %"$t3_3928" = bitcast i8* %"$t3_call_3927" to %TName_Option_String*
  store %TName_Option_String* %"$t3_3928", %TName_Option_String** %t3, align 8
  %"$t3_3929" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$$t3_3929_3930" = bitcast %TName_Option_String* %"$t3_3929" to i8*
  %"$_literal_cost_call_3931" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$t3_3929_3930")
  %"$gasadd_3932" = add i64 %"$_literal_cost_call_3931", 0
  %"$gasadd_3933" = add i64 %"$gasadd_3932", 2
  %"$gasrem_3934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3935" = icmp ugt i64 %"$gasadd_3933", %"$gasrem_3934"
  br i1 %"$gascmp_3935", label %"$out_of_gas_3936", label %"$have_gas_3937"

"$out_of_gas_3936":                               ; preds = %"$have_gas_3918"
  call void @_out_of_gas()
  br label %"$have_gas_3937"

"$have_gas_3937":                                 ; preds = %"$out_of_gas_3936", %"$have_gas_3918"
  %"$consume_3938" = sub i64 %"$gasrem_3934", %"$gasadd_3933"
  store i64 %"$consume_3938", i64* @_gasrem, align 8
  %t4 = alloca %TName_Option_String*, align 8
  %"$indices_buf_3939_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3939_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3939_salloc_load", i64 32)
  %"$indices_buf_3939_salloc" = bitcast i8* %"$indices_buf_3939_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3939" = bitcast [32 x i8]* %"$indices_buf_3939_salloc" to i8*
  %"$key1d_3940" = load %String, %String* %key1d, align 8
  %"$indices_gep_3941" = getelementptr i8, i8* %"$indices_buf_3939", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_3941" to %String*
  store %String %"$key1d_3940", %String* %indices_cast6, align 8
  %"$key2d_3942" = load %String, %String* %key2d, align 8
  %"$indices_gep_3943" = getelementptr i8, i8* %"$indices_buf_3939", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_3943" to %String*
  store %String %"$key2d_3942", %String* %indices_cast7, align 8
  %"$execptr_load_3945" = load i8*, i8** @_execptr, align 8
  %"$t4_call_3946" = call i8* @_fetch_field(i8* %"$execptr_load_3945", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3944", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_72", i32 2, i8* %"$indices_buf_3939", i32 1)
  %"$t4_3947" = bitcast i8* %"$t4_call_3946" to %TName_Option_String*
  store %TName_Option_String* %"$t4_3947", %TName_Option_String** %t4, align 8
  %"$t4_3948" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$$t4_3948_3949" = bitcast %TName_Option_String* %"$t4_3948" to i8*
  %"$_literal_cost_call_3950" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_68", i8* %"$$t4_3948_3949")
  %"$gasadd_3951" = add i64 %"$_literal_cost_call_3950", 0
  %"$gasadd_3952" = add i64 %"$gasadd_3951", 2
  %"$gasrem_3953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3954" = icmp ugt i64 %"$gasadd_3952", %"$gasrem_3953"
  br i1 %"$gascmp_3954", label %"$out_of_gas_3955", label %"$have_gas_3956"

"$out_of_gas_3955":                               ; preds = %"$have_gas_3937"
  call void @_out_of_gas()
  br label %"$have_gas_3956"

"$have_gas_3956":                                 ; preds = %"$out_of_gas_3955", %"$have_gas_3937"
  %"$consume_3957" = sub i64 %"$gasrem_3953", %"$gasadd_3952"
  store i64 %"$consume_3957", i64* @_gasrem, align 8
  %"$gasrem_3958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3959" = icmp ugt i64 1, %"$gasrem_3958"
  br i1 %"$gascmp_3959", label %"$out_of_gas_3960", label %"$have_gas_3961"

"$out_of_gas_3960":                               ; preds = %"$have_gas_3956"
  call void @_out_of_gas()
  br label %"$have_gas_3961"

"$have_gas_3961":                                 ; preds = %"$out_of_gas_3960", %"$have_gas_3956"
  %"$consume_3962" = sub i64 %"$gasrem_3958", 1
  store i64 %"$consume_3962", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_3963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3964" = icmp ugt i64 1, %"$gasrem_3963"
  br i1 %"$gascmp_3964", label %"$out_of_gas_3965", label %"$have_gas_3966"

"$out_of_gas_3965":                               ; preds = %"$have_gas_3961"
  call void @_out_of_gas()
  br label %"$have_gas_3966"

"$have_gas_3966":                                 ; preds = %"$out_of_gas_3965", %"$have_gas_3961"
  %"$consume_3967" = sub i64 %"$gasrem_3963", 1
  store i64 %"$consume_3967", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3968", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_3969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3970" = icmp ugt i64 1, %"$gasrem_3969"
  br i1 %"$gascmp_3970", label %"$out_of_gas_3971", label %"$have_gas_3972"

"$out_of_gas_3971":                               ; preds = %"$have_gas_3966"
  call void @_out_of_gas()
  br label %"$have_gas_3972"

"$have_gas_3972":                                 ; preds = %"$out_of_gas_3971", %"$have_gas_3966"
  %"$consume_3973" = sub i64 %"$gasrem_3969", 1
  store i64 %"$consume_3973", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_3974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3975" = icmp ugt i64 1, %"$gasrem_3974"
  br i1 %"$gascmp_3975", label %"$out_of_gas_3976", label %"$have_gas_3977"

"$out_of_gas_3976":                               ; preds = %"$have_gas_3972"
  call void @_out_of_gas()
  br label %"$have_gas_3977"

"$have_gas_3977":                                 ; preds = %"$out_of_gas_3976", %"$have_gas_3972"
  %"$consume_3978" = sub i64 %"$gasrem_3974", 1
  store i64 %"$consume_3978", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3979", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_3980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3981" = icmp ugt i64 1, %"$gasrem_3980"
  br i1 %"$gascmp_3981", label %"$out_of_gas_3982", label %"$have_gas_3983"

"$out_of_gas_3982":                               ; preds = %"$have_gas_3977"
  call void @_out_of_gas()
  br label %"$have_gas_3983"

"$have_gas_3983":                                 ; preds = %"$out_of_gas_3982", %"$have_gas_3977"
  %"$consume_3984" = sub i64 %"$gasrem_3980", 1
  store i64 %"$consume_3984", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_3985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3986" = icmp ugt i64 1, %"$gasrem_3985"
  br i1 %"$gascmp_3986", label %"$out_of_gas_3987", label %"$have_gas_3988"

"$out_of_gas_3987":                               ; preds = %"$have_gas_3983"
  call void @_out_of_gas()
  br label %"$have_gas_3988"

"$have_gas_3988":                                 ; preds = %"$out_of_gas_3987", %"$have_gas_3983"
  %"$consume_3989" = sub i64 %"$gasrem_3985", 1
  store i64 %"$consume_3989", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3990", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_3991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3992" = icmp ugt i64 1, %"$gasrem_3991"
  br i1 %"$gascmp_3992", label %"$out_of_gas_3993", label %"$have_gas_3994"

"$out_of_gas_3993":                               ; preds = %"$have_gas_3988"
  call void @_out_of_gas()
  br label %"$have_gas_3994"

"$have_gas_3994":                                 ; preds = %"$out_of_gas_3993", %"$have_gas_3988"
  %"$consume_3995" = sub i64 %"$gasrem_3991", 1
  store i64 %"$consume_3995", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_3996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3997" = icmp ugt i64 1, %"$gasrem_3996"
  br i1 %"$gascmp_3997", label %"$out_of_gas_3998", label %"$have_gas_3999"

"$out_of_gas_3998":                               ; preds = %"$have_gas_3994"
  call void @_out_of_gas()
  br label %"$have_gas_3999"

"$have_gas_3999":                                 ; preds = %"$out_of_gas_3998", %"$have_gas_3994"
  %"$consume_4000" = sub i64 %"$gasrem_3996", 1
  store i64 %"$consume_4000", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4001", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_4002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4003" = icmp ugt i64 1, %"$gasrem_4002"
  br i1 %"$gascmp_4003", label %"$out_of_gas_4004", label %"$have_gas_4005"

"$out_of_gas_4004":                               ; preds = %"$have_gas_3999"
  call void @_out_of_gas()
  br label %"$have_gas_4005"

"$have_gas_4005":                                 ; preds = %"$out_of_gas_4004", %"$have_gas_3999"
  %"$consume_4006" = sub i64 %"$gasrem_4002", 1
  store i64 %"$consume_4006", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_4007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4008" = icmp ugt i64 2, %"$gasrem_4007"
  br i1 %"$gascmp_4008", label %"$out_of_gas_4009", label %"$have_gas_4010"

"$out_of_gas_4009":                               ; preds = %"$have_gas_4005"
  call void @_out_of_gas()
  br label %"$have_gas_4010"

"$have_gas_4010":                                 ; preds = %"$out_of_gas_4009", %"$have_gas_4005"
  %"$consume_4011" = sub i64 %"$gasrem_4007", 2
  store i64 %"$consume_4011", i64* @_gasrem, align 8
  %"$t1_4013" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$t1_tag_4014" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_4013", i32 0, i32 0
  %"$t1_tag_4015" = load i8, i8* %"$t1_tag_4014", align 1
  switch i8 %"$t1_tag_4015", label %"$empty_default_4016" [
    i8 0, label %"$Some_4017"
    i8 1, label %"$None_4026"
  ]

"$Some_4017":                                     ; preds = %"$have_gas_4010"
  %"$t1_4018" = bitcast %TName_Option_String* %"$t1_4013" to %CName_Some_String*
  %"$t1v_gep_4019" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_4018", i32 0, i32 1
  %"$t1v_load_4020" = load %String, %String* %"$t1v_gep_4019", align 8
  %t1v = alloca %String, align 8
  store %String %"$t1v_load_4020", %String* %t1v, align 8
  %"$execptr_load_4021" = load i8*, i8** @_execptr, align 8
  %"$t1v_4022" = load %String, %String* %t1v, align 8
  %"$v1_4023" = load %String, %String* %v1, align 8
  %"$eq_call_4024" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4021", %String %"$t1v_4022", %String %"$v1_4023")
  store %TName_Bool* %"$eq_call_4024", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4012"

"$None_4026":                                     ; preds = %"$have_gas_4010"
  %"$t1_4027" = bitcast %TName_Option_String* %"$t1_4013" to %CName_None_String*
  %"$gasrem_4028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4029" = icmp ugt i64 1, %"$gasrem_4028"
  br i1 %"$gascmp_4029", label %"$out_of_gas_4030", label %"$have_gas_4031"

"$out_of_gas_4030":                               ; preds = %"$None_4026"
  call void @_out_of_gas()
  br label %"$have_gas_4031"

"$have_gas_4031":                                 ; preds = %"$out_of_gas_4030", %"$None_4026"
  %"$consume_4032" = sub i64 %"$gasrem_4028", 1
  store i64 %"$consume_4032", i64* @_gasrem, align 8
  %"$adtval_4033_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4033_salloc" = call i8* @_salloc(i8* %"$adtval_4033_load", i64 1)
  %"$adtval_4033" = bitcast i8* %"$adtval_4033_salloc" to %CName_False*
  %"$adtgep_4034" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4033", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4034", align 1
  %"$adtptr_4035" = bitcast %CName_False* %"$adtval_4033" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4035", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4012"

"$empty_default_4016":                            ; preds = %"$have_gas_4010"
  br label %"$matchsucc_4012"

"$matchsucc_4012":                                ; preds = %"$have_gas_4031", %"$Some_4017", %"$empty_default_4016"
  %"$gasrem_4036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4037" = icmp ugt i64 1, %"$gasrem_4036"
  br i1 %"$gascmp_4037", label %"$out_of_gas_4038", label %"$have_gas_4039"

"$out_of_gas_4038":                               ; preds = %"$matchsucc_4012"
  call void @_out_of_gas()
  br label %"$have_gas_4039"

"$have_gas_4039":                                 ; preds = %"$out_of_gas_4038", %"$matchsucc_4012"
  %"$consume_4040" = sub i64 %"$gasrem_4036", 1
  store i64 %"$consume_4040", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  %"$gasrem_4041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4042" = icmp ugt i64 2, %"$gasrem_4041"
  br i1 %"$gascmp_4042", label %"$out_of_gas_4043", label %"$have_gas_4044"

"$out_of_gas_4043":                               ; preds = %"$have_gas_4039"
  call void @_out_of_gas()
  br label %"$have_gas_4044"

"$have_gas_4044":                                 ; preds = %"$out_of_gas_4043", %"$have_gas_4039"
  %"$consume_4045" = sub i64 %"$gasrem_4041", 2
  store i64 %"$consume_4045", i64* @_gasrem, align 8
  %"$t2_4047" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$t2_tag_4048" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_4047", i32 0, i32 0
  %"$t2_tag_4049" = load i8, i8* %"$t2_tag_4048", align 1
  switch i8 %"$t2_tag_4049", label %"$empty_default_4050" [
    i8 0, label %"$Some_4051"
    i8 1, label %"$None_4060"
  ]

"$Some_4051":                                     ; preds = %"$have_gas_4044"
  %"$t2_4052" = bitcast %TName_Option_String* %"$t2_4047" to %CName_Some_String*
  %"$t2v_gep_4053" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_4052", i32 0, i32 1
  %"$t2v_load_4054" = load %String, %String* %"$t2v_gep_4053", align 8
  %t2v = alloca %String, align 8
  store %String %"$t2v_load_4054", %String* %t2v, align 8
  %"$execptr_load_4055" = load i8*, i8** @_execptr, align 8
  %"$t2v_4056" = load %String, %String* %t2v, align 8
  %"$v2_4057" = load %String, %String* %v2, align 8
  %"$eq_call_4058" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4055", %String %"$t2v_4056", %String %"$v2_4057")
  store %TName_Bool* %"$eq_call_4058", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4046"

"$None_4060":                                     ; preds = %"$have_gas_4044"
  %"$t2_4061" = bitcast %TName_Option_String* %"$t2_4047" to %CName_None_String*
  %"$gasrem_4062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4063" = icmp ugt i64 1, %"$gasrem_4062"
  br i1 %"$gascmp_4063", label %"$out_of_gas_4064", label %"$have_gas_4065"

"$out_of_gas_4064":                               ; preds = %"$None_4060"
  call void @_out_of_gas()
  br label %"$have_gas_4065"

"$have_gas_4065":                                 ; preds = %"$out_of_gas_4064", %"$None_4060"
  %"$consume_4066" = sub i64 %"$gasrem_4062", 1
  store i64 %"$consume_4066", i64* @_gasrem, align 8
  %"$adtval_4067_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4067_salloc" = call i8* @_salloc(i8* %"$adtval_4067_load", i64 1)
  %"$adtval_4067" = bitcast i8* %"$adtval_4067_salloc" to %CName_False*
  %"$adtgep_4068" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4067", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4068", align 1
  %"$adtptr_4069" = bitcast %CName_False* %"$adtval_4067" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4069", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4046"

"$empty_default_4050":                            ; preds = %"$have_gas_4044"
  br label %"$matchsucc_4046"

"$matchsucc_4046":                                ; preds = %"$have_gas_4065", %"$Some_4051", %"$empty_default_4050"
  %"$gasrem_4070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4071" = icmp ugt i64 1, %"$gasrem_4070"
  br i1 %"$gascmp_4071", label %"$out_of_gas_4072", label %"$have_gas_4073"

"$out_of_gas_4072":                               ; preds = %"$matchsucc_4046"
  call void @_out_of_gas()
  br label %"$have_gas_4073"

"$have_gas_4073":                                 ; preds = %"$out_of_gas_4072", %"$matchsucc_4046"
  %"$consume_4074" = sub i64 %"$gasrem_4070", 1
  store i64 %"$consume_4074", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  %"$gasrem_4075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4076" = icmp ugt i64 2, %"$gasrem_4075"
  br i1 %"$gascmp_4076", label %"$out_of_gas_4077", label %"$have_gas_4078"

"$out_of_gas_4077":                               ; preds = %"$have_gas_4073"
  call void @_out_of_gas()
  br label %"$have_gas_4078"

"$have_gas_4078":                                 ; preds = %"$out_of_gas_4077", %"$have_gas_4073"
  %"$consume_4079" = sub i64 %"$gasrem_4075", 2
  store i64 %"$consume_4079", i64* @_gasrem, align 8
  %"$t3_4081" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$t3_tag_4082" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_4081", i32 0, i32 0
  %"$t3_tag_4083" = load i8, i8* %"$t3_tag_4082", align 1
  switch i8 %"$t3_tag_4083", label %"$empty_default_4084" [
    i8 0, label %"$Some_4085"
    i8 1, label %"$None_4094"
  ]

"$Some_4085":                                     ; preds = %"$have_gas_4078"
  %"$t3_4086" = bitcast %TName_Option_String* %"$t3_4081" to %CName_Some_String*
  %"$t3v_gep_4087" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_4086", i32 0, i32 1
  %"$t3v_load_4088" = load %String, %String* %"$t3v_gep_4087", align 8
  %t3v = alloca %String, align 8
  store %String %"$t3v_load_4088", %String* %t3v, align 8
  %"$execptr_load_4089" = load i8*, i8** @_execptr, align 8
  %"$t3v_4090" = load %String, %String* %t3v, align 8
  %"$v3_4091" = load %String, %String* %v3, align 8
  %"$eq_call_4092" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4089", %String %"$t3v_4090", %String %"$v3_4091")
  store %TName_Bool* %"$eq_call_4092", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4080"

"$None_4094":                                     ; preds = %"$have_gas_4078"
  %"$t3_4095" = bitcast %TName_Option_String* %"$t3_4081" to %CName_None_String*
  %"$gasrem_4096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4097" = icmp ugt i64 1, %"$gasrem_4096"
  br i1 %"$gascmp_4097", label %"$out_of_gas_4098", label %"$have_gas_4099"

"$out_of_gas_4098":                               ; preds = %"$None_4094"
  call void @_out_of_gas()
  br label %"$have_gas_4099"

"$have_gas_4099":                                 ; preds = %"$out_of_gas_4098", %"$None_4094"
  %"$consume_4100" = sub i64 %"$gasrem_4096", 1
  store i64 %"$consume_4100", i64* @_gasrem, align 8
  %"$adtval_4101_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4101_salloc" = call i8* @_salloc(i8* %"$adtval_4101_load", i64 1)
  %"$adtval_4101" = bitcast i8* %"$adtval_4101_salloc" to %CName_False*
  %"$adtgep_4102" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4101", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4102", align 1
  %"$adtptr_4103" = bitcast %CName_False* %"$adtval_4101" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4103", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4080"

"$empty_default_4084":                            ; preds = %"$have_gas_4078"
  br label %"$matchsucc_4080"

"$matchsucc_4080":                                ; preds = %"$have_gas_4099", %"$Some_4085", %"$empty_default_4084"
  %"$gasrem_4104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4105" = icmp ugt i64 1, %"$gasrem_4104"
  br i1 %"$gascmp_4105", label %"$out_of_gas_4106", label %"$have_gas_4107"

"$out_of_gas_4106":                               ; preds = %"$matchsucc_4080"
  call void @_out_of_gas()
  br label %"$have_gas_4107"

"$have_gas_4107":                                 ; preds = %"$out_of_gas_4106", %"$matchsucc_4080"
  %"$consume_4108" = sub i64 %"$gasrem_4104", 1
  store i64 %"$consume_4108", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  %"$gasrem_4109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4110" = icmp ugt i64 2, %"$gasrem_4109"
  br i1 %"$gascmp_4110", label %"$out_of_gas_4111", label %"$have_gas_4112"

"$out_of_gas_4111":                               ; preds = %"$have_gas_4107"
  call void @_out_of_gas()
  br label %"$have_gas_4112"

"$have_gas_4112":                                 ; preds = %"$out_of_gas_4111", %"$have_gas_4107"
  %"$consume_4113" = sub i64 %"$gasrem_4109", 2
  store i64 %"$consume_4113", i64* @_gasrem, align 8
  %"$t4_4115" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$t4_tag_4116" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_4115", i32 0, i32 0
  %"$t4_tag_4117" = load i8, i8* %"$t4_tag_4116", align 1
  switch i8 %"$t4_tag_4117", label %"$empty_default_4118" [
    i8 0, label %"$Some_4119"
    i8 1, label %"$None_4128"
  ]

"$Some_4119":                                     ; preds = %"$have_gas_4112"
  %"$t4_4120" = bitcast %TName_Option_String* %"$t4_4115" to %CName_Some_String*
  %"$t4v_gep_4121" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_4120", i32 0, i32 1
  %"$t4v_load_4122" = load %String, %String* %"$t4v_gep_4121", align 8
  %t4v = alloca %String, align 8
  store %String %"$t4v_load_4122", %String* %t4v, align 8
  %"$execptr_load_4123" = load i8*, i8** @_execptr, align 8
  %"$t4v_4124" = load %String, %String* %t4v, align 8
  %"$v4_4125" = load %String, %String* %v4, align 8
  %"$eq_call_4126" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4123", %String %"$t4v_4124", %String %"$v4_4125")
  store %TName_Bool* %"$eq_call_4126", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4114"

"$None_4128":                                     ; preds = %"$have_gas_4112"
  %"$t4_4129" = bitcast %TName_Option_String* %"$t4_4115" to %CName_None_String*
  %"$gasrem_4130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4131" = icmp ugt i64 1, %"$gasrem_4130"
  br i1 %"$gascmp_4131", label %"$out_of_gas_4132", label %"$have_gas_4133"

"$out_of_gas_4132":                               ; preds = %"$None_4128"
  call void @_out_of_gas()
  br label %"$have_gas_4133"

"$have_gas_4133":                                 ; preds = %"$out_of_gas_4132", %"$None_4128"
  %"$consume_4134" = sub i64 %"$gasrem_4130", 1
  store i64 %"$consume_4134", i64* @_gasrem, align 8
  %"$adtval_4135_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4135_salloc" = call i8* @_salloc(i8* %"$adtval_4135_load", i64 1)
  %"$adtval_4135" = bitcast i8* %"$adtval_4135_salloc" to %CName_False*
  %"$adtgep_4136" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4135", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4136", align 1
  %"$adtptr_4137" = bitcast %CName_False* %"$adtval_4135" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4137", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4114"

"$empty_default_4118":                            ; preds = %"$have_gas_4112"
  br label %"$matchsucc_4114"

"$matchsucc_4114":                                ; preds = %"$have_gas_4133", %"$Some_4119", %"$empty_default_4118"
  %"$gasrem_4138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4139" = icmp ugt i64 1, %"$gasrem_4138"
  br i1 %"$gascmp_4139", label %"$out_of_gas_4140", label %"$have_gas_4141"

"$out_of_gas_4140":                               ; preds = %"$matchsucc_4114"
  call void @_out_of_gas()
  br label %"$have_gas_4141"

"$have_gas_4141":                                 ; preds = %"$out_of_gas_4140", %"$matchsucc_4114"
  %"$consume_4142" = sub i64 %"$gasrem_4138", 1
  store i64 %"$consume_4142", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_4143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4144" = icmp ugt i64 1, %"$gasrem_4143"
  br i1 %"$gascmp_4144", label %"$out_of_gas_4145", label %"$have_gas_4146"

"$out_of_gas_4145":                               ; preds = %"$have_gas_4141"
  call void @_out_of_gas()
  br label %"$have_gas_4146"

"$have_gas_4146":                                 ; preds = %"$out_of_gas_4145", %"$have_gas_4141"
  %"$consume_4147" = sub i64 %"$gasrem_4143", 1
  store i64 %"$consume_4147", i64* @_gasrem, align 8
  %a1 = alloca %TName_Bool*, align 8
  %"$gasrem_4148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4149" = icmp ugt i64 1, %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4146"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4146"
  %"$consume_4152" = sub i64 %"$gasrem_4148", 1
  store i64 %"$consume_4152", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4153" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4154" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4153", 0
  %"$BoolUtils.andb_envptr_4155" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4153", 1
  %"$b1_4156" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_4157" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4154"(i8* %"$BoolUtils.andb_envptr_4155", %TName_Bool* %"$b1_4156")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4157", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_17_4158" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_4159" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_4158", 0
  %"$$BoolUtils.andb_17_envptr_4160" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_4158", 1
  %"$b2_4161" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_17_call_4162" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_4159"(i8* %"$$BoolUtils.andb_17_envptr_4160", %TName_Bool* %"$b2_4161")
  store %TName_Bool* %"$$BoolUtils.andb_17_call_4162", %TName_Bool** %"$BoolUtils.andb_18", align 8
  %"$$BoolUtils.andb_18_4163" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_4163", %TName_Bool** %a1, align 8
  %"$gasrem_4164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4165" = icmp ugt i64 1, %"$gasrem_4164"
  br i1 %"$gascmp_4165", label %"$out_of_gas_4166", label %"$have_gas_4167"

"$out_of_gas_4166":                               ; preds = %"$have_gas_4151"
  call void @_out_of_gas()
  br label %"$have_gas_4167"

"$have_gas_4167":                                 ; preds = %"$out_of_gas_4166", %"$have_gas_4151"
  %"$consume_4168" = sub i64 %"$gasrem_4164", 1
  store i64 %"$consume_4168", i64* @_gasrem, align 8
  %a2 = alloca %TName_Bool*, align 8
  %"$gasrem_4169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4170" = icmp ugt i64 1, %"$gasrem_4169"
  br i1 %"$gascmp_4170", label %"$out_of_gas_4171", label %"$have_gas_4172"

"$out_of_gas_4171":                               ; preds = %"$have_gas_4167"
  call void @_out_of_gas()
  br label %"$have_gas_4172"

"$have_gas_4172":                                 ; preds = %"$out_of_gas_4171", %"$have_gas_4167"
  %"$consume_4173" = sub i64 %"$gasrem_4169", 1
  store i64 %"$consume_4173", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4174" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4175" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4174", 0
  %"$BoolUtils.andb_envptr_4176" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4174", 1
  %"$b3_4177" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.andb_call_4178" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4175"(i8* %"$BoolUtils.andb_envptr_4176", %TName_Bool* %"$b3_4177")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4178", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_19_4179" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_4180" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4179", 0
  %"$$BoolUtils.andb_19_envptr_4181" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4179", 1
  %"$b4_4182" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.andb_19_call_4183" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_4180"(i8* %"$$BoolUtils.andb_19_envptr_4181", %TName_Bool* %"$b4_4182")
  store %TName_Bool* %"$$BoolUtils.andb_19_call_4183", %TName_Bool** %"$BoolUtils.andb_20", align 8
  %"$$BoolUtils.andb_20_4184" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_4184", %TName_Bool** %a2, align 8
  %"$gasrem_4185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4186" = icmp ugt i64 1, %"$gasrem_4185"
  br i1 %"$gascmp_4186", label %"$out_of_gas_4187", label %"$have_gas_4188"

"$out_of_gas_4187":                               ; preds = %"$have_gas_4172"
  call void @_out_of_gas()
  br label %"$have_gas_4188"

"$have_gas_4188":                                 ; preds = %"$out_of_gas_4187", %"$have_gas_4172"
  %"$consume_4189" = sub i64 %"$gasrem_4185", 1
  store i64 %"$consume_4189", i64* @_gasrem, align 8
  %"$BoolUtils.andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4190" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4191" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4190", 0
  %"$BoolUtils.andb_envptr_4192" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4190", 1
  %"$a1_4193" = load %TName_Bool*, %TName_Bool** %a1, align 8
  %"$BoolUtils.andb_call_4194" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4191"(i8* %"$BoolUtils.andb_envptr_4192", %TName_Bool* %"$a1_4193")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4194", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$BoolUtils.andb_22" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_21_4195" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$$BoolUtils.andb_21_fptr_4196" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4195", 0
  %"$$BoolUtils.andb_21_envptr_4197" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4195", 1
  %"$a2_4198" = load %TName_Bool*, %TName_Bool** %a2, align 8
  %"$$BoolUtils.andb_21_call_4199" = call %TName_Bool* %"$$BoolUtils.andb_21_fptr_4196"(i8* %"$$BoolUtils.andb_21_envptr_4197", %TName_Bool* %"$a2_4198")
  store %TName_Bool* %"$$BoolUtils.andb_21_call_4199", %TName_Bool** %"$BoolUtils.andb_22", align 8
  %"$$BoolUtils.andb_22_4200" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_22", align 8
  store %TName_Bool* %"$$BoolUtils.andb_22_4200", %TName_Bool** %b, align 8
  %"$gasrem_4201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4202" = icmp ugt i64 2, %"$gasrem_4201"
  br i1 %"$gascmp_4202", label %"$out_of_gas_4203", label %"$have_gas_4204"

"$out_of_gas_4203":                               ; preds = %"$have_gas_4188"
  call void @_out_of_gas()
  br label %"$have_gas_4204"

"$have_gas_4204":                                 ; preds = %"$out_of_gas_4203", %"$have_gas_4188"
  %"$consume_4205" = sub i64 %"$gasrem_4201", 2
  store i64 %"$consume_4205", i64* @_gasrem, align 8
  %"$b_4207" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_4208" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_4207", i32 0, i32 0
  %"$b_tag_4209" = load i8, i8* %"$b_tag_4208", align 1
  switch i8 %"$b_tag_4209", label %"$empty_default_4210" [
    i8 0, label %"$True_4211"
    i8 1, label %"$False_4213"
  ]

"$True_4211":                                     ; preds = %"$have_gas_4204"
  %"$b_4212" = bitcast %TName_Bool* %"$b_4207" to %CName_True*
  br label %"$matchsucc_4206"

"$False_4213":                                    ; preds = %"$have_gas_4204"
  %"$b_4214" = bitcast %TName_Bool* %"$b_4207" to %CName_False*
  %"$gasrem_4215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4216" = icmp ugt i64 1, %"$gasrem_4215"
  br i1 %"$gascmp_4216", label %"$out_of_gas_4217", label %"$have_gas_4218"

"$out_of_gas_4217":                               ; preds = %"$False_4213"
  call void @_out_of_gas()
  br label %"$have_gas_4218"

"$have_gas_4218":                                 ; preds = %"$out_of_gas_4217", %"$False_4213"
  %"$consume_4219" = sub i64 %"$gasrem_4215", 1
  store i64 %"$consume_4219", i64* @_gasrem, align 8
  %"$fail__origin_4220" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4220", align 1
  %"$fail__sender_4221" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4221", align 1
  %"$tname_4222" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4220", [20 x i8]* %"$fail__sender_4221", %String %"$tname_4222")
  br label %"$matchsucc_4206"

"$empty_default_4210":                            ; preds = %"$have_gas_4204"
  br label %"$matchsucc_4206"

"$matchsucc_4206":                                ; preds = %"$have_gas_4218", %"$True_4211", %"$empty_default_4210"
  %"$gasrem_4223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4224" = icmp ugt i64 1, %"$gasrem_4223"
  br i1 %"$gascmp_4224", label %"$out_of_gas_4225", label %"$have_gas_4226"

"$out_of_gas_4225":                               ; preds = %"$matchsucc_4206"
  call void @_out_of_gas()
  br label %"$have_gas_4226"

"$have_gas_4226":                                 ; preds = %"$out_of_gas_4225", %"$matchsucc_4206"
  %"$consume_4227" = sub i64 %"$gasrem_4223", 1
  store i64 %"$consume_4227", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$gasrem_4228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4229" = icmp ugt i64 1, %"$gasrem_4228"
  br i1 %"$gascmp_4229", label %"$out_of_gas_4230", label %"$have_gas_4231"

"$out_of_gas_4230":                               ; preds = %"$have_gas_4226"
  call void @_out_of_gas()
  br label %"$have_gas_4231"

"$have_gas_4231":                                 ; preds = %"$out_of_gas_4230", %"$have_gas_4226"
  %"$consume_4232" = sub i64 %"$gasrem_4228", 1
  store i64 %"$consume_4232", i64* @_gasrem, align 8
  %k = alloca %String, align 8
  %"$gasrem_4233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4234" = icmp ugt i64 1, %"$gasrem_4233"
  br i1 %"$gascmp_4234", label %"$out_of_gas_4235", label %"$have_gas_4236"

"$out_of_gas_4235":                               ; preds = %"$have_gas_4231"
  call void @_out_of_gas()
  br label %"$have_gas_4236"

"$have_gas_4236":                                 ; preds = %"$out_of_gas_4235", %"$have_gas_4231"
  %"$consume_4237" = sub i64 %"$gasrem_4233", 1
  store i64 %"$consume_4237", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4238", i32 0, i32 0), i32 0 }, %String* %k, align 8
  %"$gasrem_4239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4240" = icmp ugt i64 1, %"$gasrem_4239"
  br i1 %"$gascmp_4240", label %"$out_of_gas_4241", label %"$have_gas_4242"

"$out_of_gas_4241":                               ; preds = %"$have_gas_4236"
  call void @_out_of_gas()
  br label %"$have_gas_4242"

"$have_gas_4242":                                 ; preds = %"$out_of_gas_4241", %"$have_gas_4236"
  %"$consume_4243" = sub i64 %"$gasrem_4239", 1
  store i64 %"$consume_4243", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_4244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4245" = icmp ugt i64 1, %"$gasrem_4244"
  br i1 %"$gascmp_4245", label %"$out_of_gas_4246", label %"$have_gas_4247"

"$out_of_gas_4246":                               ; preds = %"$have_gas_4242"
  call void @_out_of_gas()
  br label %"$have_gas_4247"

"$have_gas_4247":                                 ; preds = %"$out_of_gas_4246", %"$have_gas_4242"
  %"$consume_4248" = sub i64 %"$gasrem_4244", 1
  store i64 %"$consume_4248", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4249", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_4250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4251" = icmp ugt i64 1, %"$gasrem_4250"
  br i1 %"$gascmp_4251", label %"$out_of_gas_4252", label %"$have_gas_4253"

"$out_of_gas_4252":                               ; preds = %"$have_gas_4247"
  call void @_out_of_gas()
  br label %"$have_gas_4253"

"$have_gas_4253":                                 ; preds = %"$out_of_gas_4252", %"$have_gas_4247"
  %"$consume_4254" = sub i64 %"$gasrem_4250", 1
  store i64 %"$consume_4254", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_4255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4256" = icmp ugt i64 1, %"$gasrem_4255"
  br i1 %"$gascmp_4256", label %"$out_of_gas_4257", label %"$have_gas_4258"

"$out_of_gas_4257":                               ; preds = %"$have_gas_4253"
  call void @_out_of_gas()
  br label %"$have_gas_4258"

"$have_gas_4258":                                 ; preds = %"$out_of_gas_4257", %"$have_gas_4253"
  %"$consume_4259" = sub i64 %"$gasrem_4255", 1
  store i64 %"$consume_4259", i64* @_gasrem, align 8
  %"$execptr_load_4260" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_4261" = call i8* @_new_empty_map(i8* %"$execptr_load_4260")
  %"$_new_empty_map_4262" = bitcast i8* %"$_new_empty_map_call_4261" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_4262", %Map_String_String** %e, align 8
  %"$execptr_load_4263" = load i8*, i8** @_execptr, align 8
  %"$e_4264" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4264_4265" = bitcast %Map_String_String* %"$e_4264" to i8*
  %"$put_k_4266" = alloca %String, align 8
  %"$k_4267" = load %String, %String* %k, align 8
  store %String %"$k_4267", %String* %"$put_k_4266", align 8
  %"$$put_k_4266_4268" = bitcast %String* %"$put_k_4266" to i8*
  %"$put_v_4269" = alloca %String, align 8
  %"$v_4270" = load %String, %String* %v, align 8
  store %String %"$v_4270", %String* %"$put_v_4269", align 8
  %"$$put_v_4269_4271" = bitcast %String* %"$put_v_4269" to i8*
  %"$put_call_4272" = call i8* @_put(i8* %"$execptr_load_4263", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$e_4264_4265", i8* %"$$put_k_4266_4268", i8* %"$$put_v_4269_4271")
  %"$put_4273" = bitcast i8* %"$put_call_4272" to %Map_String_String*
  store %Map_String_String* %"$put_4273", %Map_String_String** %m1, align 8
  %"$m1_4274" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_4274_4275" = bitcast %Map_String_String* %"$m1_4274" to i8*
  %"$_literal_cost_call_4276" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$m1_4274_4275")
  %"$gasrem_4277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4278" = icmp ugt i64 %"$_literal_cost_call_4276", %"$gasrem_4277"
  br i1 %"$gascmp_4278", label %"$out_of_gas_4279", label %"$have_gas_4280"

"$out_of_gas_4279":                               ; preds = %"$have_gas_4258"
  call void @_out_of_gas()
  br label %"$have_gas_4280"

"$have_gas_4280":                                 ; preds = %"$out_of_gas_4279", %"$have_gas_4258"
  %"$consume_4281" = sub i64 %"$gasrem_4277", %"$_literal_cost_call_4276"
  store i64 %"$consume_4281", i64* @_gasrem, align 8
  %"$execptr_load_4282" = load i8*, i8** @_execptr, align 8
  %"$m1_4284" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$update_value_4285" = bitcast %Map_String_String* %"$m1_4284" to i8*
  call void @_update_field(i8* %"$execptr_load_4282", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4283", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_4285")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_4287" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4288" = bitcast i8* %"$_amount_4287" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4288", align 8
  %"$_origin_4289" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4290" = bitcast i8* %"$_origin_4289" to [20 x i8]*
  %"$_sender_4291" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4292" = bitcast i8* %"$_sender_4291" to [20 x i8]*
  call void @"$t16_3780"(%Uint128 %_amount, [20 x i8]* %"$_origin_4290", [20 x i8]* %"$_sender_4292")
  ret void
}

define internal void @"$t17_4293"(%Uint128 %_amount, [20 x i8]* %"$_origin_4294", [20 x i8]* %"$_sender_4295") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4294", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4295", align 1
  %"$gasrem_4296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4297" = icmp ugt i64 1, %"$gasrem_4296"
  br i1 %"$gascmp_4297", label %"$out_of_gas_4298", label %"$have_gas_4299"

"$out_of_gas_4298":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4299"

"$have_gas_4299":                                 ; preds = %"$out_of_gas_4298", %entry
  %"$consume_4300" = sub i64 %"$gasrem_4296", 1
  store i64 %"$consume_4300", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4302" = icmp ugt i64 1, %"$gasrem_4301"
  br i1 %"$gascmp_4302", label %"$out_of_gas_4303", label %"$have_gas_4304"

"$out_of_gas_4303":                               ; preds = %"$have_gas_4299"
  call void @_out_of_gas()
  br label %"$have_gas_4304"

"$have_gas_4304":                                 ; preds = %"$out_of_gas_4303", %"$have_gas_4299"
  %"$consume_4305" = sub i64 %"$gasrem_4301", 1
  store i64 %"$consume_4305", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4306", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4308" = icmp ugt i64 1, %"$gasrem_4307"
  br i1 %"$gascmp_4308", label %"$out_of_gas_4309", label %"$have_gas_4310"

"$out_of_gas_4309":                               ; preds = %"$have_gas_4304"
  call void @_out_of_gas()
  br label %"$have_gas_4310"

"$have_gas_4310":                                 ; preds = %"$out_of_gas_4309", %"$have_gas_4304"
  %"$consume_4311" = sub i64 %"$gasrem_4307", 1
  store i64 %"$consume_4311", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4313" = icmp ugt i64 1, %"$gasrem_4312"
  br i1 %"$gascmp_4313", label %"$out_of_gas_4314", label %"$have_gas_4315"

"$out_of_gas_4314":                               ; preds = %"$have_gas_4310"
  call void @_out_of_gas()
  br label %"$have_gas_4315"

"$have_gas_4315":                                 ; preds = %"$out_of_gas_4314", %"$have_gas_4310"
  %"$consume_4316" = sub i64 %"$gasrem_4312", 1
  store i64 %"$consume_4316", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4317", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4318_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4318_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4318_salloc_load", i64 16)
  %"$indices_buf_4318_salloc" = bitcast i8* %"$indices_buf_4318_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4318" = bitcast [16 x i8]* %"$indices_buf_4318_salloc" to i8*
  %"$key_4319" = load %String, %String* %key, align 8
  %"$indices_gep_4320" = getelementptr i8, i8* %"$indices_buf_4318", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4320" to %String*
  store %String %"$key_4319", %String* %indices_cast, align 8
  %"$execptr_load_4322" = load i8*, i8** @_execptr, align 8
  %"$found_call_4323" = call i8* @_fetch_field(i8* %"$execptr_load_4322", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_4318", i32 0)
  %"$found_4324" = bitcast i8* %"$found_call_4323" to %TName_Bool*
  store %TName_Bool* %"$found_4324", %TName_Bool** %found, align 8
  %"$found_4325" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4325_4326" = bitcast %TName_Bool* %"$found_4325" to i8*
  %"$_literal_cost_call_4327" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_69", i8* %"$$found_4325_4326")
  %"$gasadd_4328" = add i64 %"$_literal_cost_call_4327", 0
  %"$gasadd_4329" = add i64 %"$gasadd_4328", 1
  %"$gasrem_4330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4331" = icmp ugt i64 %"$gasadd_4329", %"$gasrem_4330"
  br i1 %"$gascmp_4331", label %"$out_of_gas_4332", label %"$have_gas_4333"

"$out_of_gas_4332":                               ; preds = %"$have_gas_4315"
  call void @_out_of_gas()
  br label %"$have_gas_4333"

"$have_gas_4333":                                 ; preds = %"$out_of_gas_4332", %"$have_gas_4315"
  %"$consume_4334" = sub i64 %"$gasrem_4330", %"$gasadd_4329"
  store i64 %"$consume_4334", i64* @_gasrem, align 8
  %"$gasrem_4335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4336" = icmp ugt i64 2, %"$gasrem_4335"
  br i1 %"$gascmp_4336", label %"$out_of_gas_4337", label %"$have_gas_4338"

"$out_of_gas_4337":                               ; preds = %"$have_gas_4333"
  call void @_out_of_gas()
  br label %"$have_gas_4338"

"$have_gas_4338":                                 ; preds = %"$out_of_gas_4337", %"$have_gas_4333"
  %"$consume_4339" = sub i64 %"$gasrem_4335", 2
  store i64 %"$consume_4339", i64* @_gasrem, align 8
  %"$found_4341" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4342" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4341", i32 0, i32 0
  %"$found_tag_4343" = load i8, i8* %"$found_tag_4342", align 1
  switch i8 %"$found_tag_4343", label %"$empty_default_4344" [
    i8 0, label %"$True_4345"
    i8 1, label %"$False_4347"
  ]

"$True_4345":                                     ; preds = %"$have_gas_4338"
  %"$found_4346" = bitcast %TName_Bool* %"$found_4341" to %CName_True*
  br label %"$matchsucc_4340"

"$False_4347":                                    ; preds = %"$have_gas_4338"
  %"$found_4348" = bitcast %TName_Bool* %"$found_4341" to %CName_False*
  %"$gasrem_4349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4350" = icmp ugt i64 1, %"$gasrem_4349"
  br i1 %"$gascmp_4350", label %"$out_of_gas_4351", label %"$have_gas_4352"

"$out_of_gas_4351":                               ; preds = %"$False_4347"
  call void @_out_of_gas()
  br label %"$have_gas_4352"

"$have_gas_4352":                                 ; preds = %"$out_of_gas_4351", %"$False_4347"
  %"$consume_4353" = sub i64 %"$gasrem_4349", 1
  store i64 %"$consume_4353", i64* @_gasrem, align 8
  %"$fail__origin_4354" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4354", align 1
  %"$fail__sender_4355" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4355", align 1
  %"$tname_4356" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4354", [20 x i8]* %"$fail__sender_4355", %String %"$tname_4356")
  br label %"$matchsucc_4340"

"$empty_default_4344":                            ; preds = %"$have_gas_4338"
  br label %"$matchsucc_4340"

"$matchsucc_4340":                                ; preds = %"$have_gas_4352", %"$True_4345", %"$empty_default_4344"
  %"$gasrem_4357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4358" = icmp ugt i64 1, %"$gasrem_4357"
  br i1 %"$gascmp_4358", label %"$out_of_gas_4359", label %"$have_gas_4360"

"$out_of_gas_4359":                               ; preds = %"$matchsucc_4340"
  call void @_out_of_gas()
  br label %"$have_gas_4360"

"$have_gas_4360":                                 ; preds = %"$out_of_gas_4359", %"$matchsucc_4340"
  %"$consume_4361" = sub i64 %"$gasrem_4357", 1
  store i64 %"$consume_4361", i64* @_gasrem, align 8
  %"$indices_buf_4362_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4362_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4362_salloc_load", i64 16)
  %"$indices_buf_4362_salloc" = bitcast i8* %"$indices_buf_4362_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4362" = bitcast [16 x i8]* %"$indices_buf_4362_salloc" to i8*
  %"$key_4363" = load %String, %String* %key, align 8
  %"$indices_gep_4364" = getelementptr i8, i8* %"$indices_buf_4362", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4364" to %String*
  store %String %"$key_4363", %String* %indices_cast1, align 8
  %"$execptr_load_4365" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4365", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4366", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_4362", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_4368" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4369" = bitcast i8* %"$_amount_4368" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4369", align 8
  %"$_origin_4370" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4371" = bitcast i8* %"$_origin_4370" to [20 x i8]*
  %"$_sender_4372" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4373" = bitcast i8* %"$_sender_4372" to [20 x i8]*
  call void @"$t17_4293"(%Uint128 %_amount, [20 x i8]* %"$_origin_4371", [20 x i8]* %"$_sender_4373")
  ret void
}

define internal void @"$t18_4374"(%Uint128 %_amount, [20 x i8]* %"$_origin_4375", [20 x i8]* %"$_sender_4376") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4375", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4376", align 1
  %"$gasrem_4377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4378" = icmp ugt i64 1, %"$gasrem_4377"
  br i1 %"$gascmp_4378", label %"$out_of_gas_4379", label %"$have_gas_4380"

"$out_of_gas_4379":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4380"

"$have_gas_4380":                                 ; preds = %"$out_of_gas_4379", %entry
  %"$consume_4381" = sub i64 %"$gasrem_4377", 1
  store i64 %"$consume_4381", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4383" = icmp ugt i64 1, %"$gasrem_4382"
  br i1 %"$gascmp_4383", label %"$out_of_gas_4384", label %"$have_gas_4385"

"$out_of_gas_4384":                               ; preds = %"$have_gas_4380"
  call void @_out_of_gas()
  br label %"$have_gas_4385"

"$have_gas_4385":                                 ; preds = %"$out_of_gas_4384", %"$have_gas_4380"
  %"$consume_4386" = sub i64 %"$gasrem_4382", 1
  store i64 %"$consume_4386", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4387", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4389" = icmp ugt i64 1, %"$gasrem_4388"
  br i1 %"$gascmp_4389", label %"$out_of_gas_4390", label %"$have_gas_4391"

"$out_of_gas_4390":                               ; preds = %"$have_gas_4385"
  call void @_out_of_gas()
  br label %"$have_gas_4391"

"$have_gas_4391":                                 ; preds = %"$out_of_gas_4390", %"$have_gas_4385"
  %"$consume_4392" = sub i64 %"$gasrem_4388", 1
  store i64 %"$consume_4392", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4394" = icmp ugt i64 1, %"$gasrem_4393"
  br i1 %"$gascmp_4394", label %"$out_of_gas_4395", label %"$have_gas_4396"

"$out_of_gas_4395":                               ; preds = %"$have_gas_4391"
  call void @_out_of_gas()
  br label %"$have_gas_4396"

"$have_gas_4396":                                 ; preds = %"$out_of_gas_4395", %"$have_gas_4391"
  %"$consume_4397" = sub i64 %"$gasrem_4393", 1
  store i64 %"$consume_4397", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4398", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4399_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4399_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4399_salloc_load", i64 16)
  %"$indices_buf_4399_salloc" = bitcast i8* %"$indices_buf_4399_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4399" = bitcast [16 x i8]* %"$indices_buf_4399_salloc" to i8*
  %"$key_4400" = load %String, %String* %key, align 8
  %"$indices_gep_4401" = getelementptr i8, i8* %"$indices_buf_4399", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4401" to %String*
  store %String %"$key_4400", %String* %indices_cast, align 8
  %"$execptr_load_4403" = load i8*, i8** @_execptr, align 8
  %"$found_call_4404" = call i8* @_fetch_field(i8* %"$execptr_load_4403", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 1, i8* %"$indices_buf_4399", i32 0)
  %"$found_4405" = bitcast i8* %"$found_call_4404" to %TName_Bool*
  store %TName_Bool* %"$found_4405", %TName_Bool** %found, align 8
  %"$found_4406" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4406_4407" = bitcast %TName_Bool* %"$found_4406" to i8*
  %"$_literal_cost_call_4408" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_69", i8* %"$$found_4406_4407")
  %"$gasadd_4409" = add i64 %"$_literal_cost_call_4408", 0
  %"$gasadd_4410" = add i64 %"$gasadd_4409", 1
  %"$gasrem_4411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4412" = icmp ugt i64 %"$gasadd_4410", %"$gasrem_4411"
  br i1 %"$gascmp_4412", label %"$out_of_gas_4413", label %"$have_gas_4414"

"$out_of_gas_4413":                               ; preds = %"$have_gas_4396"
  call void @_out_of_gas()
  br label %"$have_gas_4414"

"$have_gas_4414":                                 ; preds = %"$out_of_gas_4413", %"$have_gas_4396"
  %"$consume_4415" = sub i64 %"$gasrem_4411", %"$gasadd_4410"
  store i64 %"$consume_4415", i64* @_gasrem, align 8
  %"$gasrem_4416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4417" = icmp ugt i64 2, %"$gasrem_4416"
  br i1 %"$gascmp_4417", label %"$out_of_gas_4418", label %"$have_gas_4419"

"$out_of_gas_4418":                               ; preds = %"$have_gas_4414"
  call void @_out_of_gas()
  br label %"$have_gas_4419"

"$have_gas_4419":                                 ; preds = %"$out_of_gas_4418", %"$have_gas_4414"
  %"$consume_4420" = sub i64 %"$gasrem_4416", 2
  store i64 %"$consume_4420", i64* @_gasrem, align 8
  %"$found_4422" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4423" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4422", i32 0, i32 0
  %"$found_tag_4424" = load i8, i8* %"$found_tag_4423", align 1
  switch i8 %"$found_tag_4424", label %"$empty_default_4425" [
    i8 0, label %"$True_4426"
    i8 1, label %"$False_4436"
  ]

"$True_4426":                                     ; preds = %"$have_gas_4419"
  %"$found_4427" = bitcast %TName_Bool* %"$found_4422" to %CName_True*
  %"$gasrem_4428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4429" = icmp ugt i64 1, %"$gasrem_4428"
  br i1 %"$gascmp_4429", label %"$out_of_gas_4430", label %"$have_gas_4431"

"$out_of_gas_4430":                               ; preds = %"$True_4426"
  call void @_out_of_gas()
  br label %"$have_gas_4431"

"$have_gas_4431":                                 ; preds = %"$out_of_gas_4430", %"$True_4426"
  %"$consume_4432" = sub i64 %"$gasrem_4428", 1
  store i64 %"$consume_4432", i64* @_gasrem, align 8
  %"$fail__origin_4433" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4433", align 1
  %"$fail__sender_4434" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4434", align 1
  %"$tname_4435" = load %String, %String* %tname, align 8
  call void @"$fail_233"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4433", [20 x i8]* %"$fail__sender_4434", %String %"$tname_4435")
  br label %"$matchsucc_4421"

"$False_4436":                                    ; preds = %"$have_gas_4419"
  %"$found_4437" = bitcast %TName_Bool* %"$found_4422" to %CName_False*
  br label %"$matchsucc_4421"

"$empty_default_4425":                            ; preds = %"$have_gas_4419"
  br label %"$matchsucc_4421"

"$matchsucc_4421":                                ; preds = %"$False_4436", %"$have_gas_4431", %"$empty_default_4425"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_4439" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4440" = bitcast i8* %"$_amount_4439" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4440", align 8
  %"$_origin_4441" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4442" = bitcast i8* %"$_origin_4441" to [20 x i8]*
  %"$_sender_4443" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4444" = bitcast i8* %"$_sender_4443" to [20 x i8]*
  call void @"$t18_4374"(%Uint128 %_amount, [20 x i8]* %"$_origin_4442", [20 x i8]* %"$_sender_4444")
  ret void
}
